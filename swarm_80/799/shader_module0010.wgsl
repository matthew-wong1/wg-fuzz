struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: i32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false));

var<private> global1: Struct_2;

var<private> global2: vec3<i32>;

var<private> global3: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(false, false), Struct_2(false, true), Struct_2(true, false), Struct_2(false, true), Struct_2(false, true), Struct_2(false, true), Struct_2(true, false), Struct_2(true, false), Struct_2(false, true), Struct_2(true, true), Struct_2(false, false));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> bool {
    var var_0 = !(!global1.a);
    global3 = array<Struct_2, 11>();
    global1 = Struct_2(all(vec2<bool>(global1.b, all(select(vec4<bool>(global1.a, global1.b, false, true), vec4<bool>(global1.b, global1.a, true, global1.b), global1.b)))), false);
    var var_1 = Struct_3(-1356f, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), 11u)]);
    var var_2 = u_input.b;
    return global1.b && all(vec3<bool>(!select(false, true, var_1.b.b), var_1.b.a, false));
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -236f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1199f, -1155f, global1.b)))) * -1629f), Struct_2(0u <= select(u_input.b, _wgslsmith_div_u32(u_input.b, 0u), all(vec2<bool>(true, true))), global1.a));
    global0 = array<Struct_1, 13>();
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-350f, _wgslsmith_f_op_f32(-var_0.a))));
    var var_2 = Struct_4(~(~(~vec2<u32>(u_input.b, u_input.a.x))), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-arg_0.x, global2.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 94677i), vec2<i32>(-58149i, global2.x)), 2147483647i & global2.x), vec4<i32>(2147483647i, -2147483647i, arg_0.x, ~(-9469i))), firstLeadingBit(_wgslsmith_div_vec4_i32(~vec4<i32>(0i, global2.x, global2.x, arg_0.x), abs(vec4<i32>(-2034i, -2147483647i, arg_0.x, 1i))))), select(vec2<bool>(true, !var_0.b.a), !select(vec2<bool>(true, true), select(vec2<bool>(var_0.b.a, false), vec2<bool>(false, var_0.b.b), true), global1.b), vec2<bool>(false, func_3())));
    global0 = array<Struct_1, 13>();
    return Struct_2(all(!(!vec4<bool>(var_2.c.x, global1.b, false, var_0.b.a))), true);
}

fn func_1() -> Struct_3 {
    global0 = array<Struct_1, 13>();
    var var_0 = func_2(max(_wgslsmith_mod_vec2_i32(~global2.zx, vec2<i32>(_wgslsmith_add_i32(-9188i, 1i), countOneBits(global2.x))), abs(global2.xx)));
    var var_1 = 1u;
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-904f, 825f, 1160f, 446f) + vec4<f32>(1000f, 320f, -272f, -1383f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-341f, -868f, -392f, -773f))), global1.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-2646f, 440f, 2077f, -217f)))) + vec4<f32>(_wgslsmith_f_op_f32(step(-550f, 1434f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-349f * -249f), _wgslsmith_div_f32(1129f, 545f))))));
    var var_3 = ~(~0u) > firstLeadingBit(~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.a.x, 4294967295u, 6832u, u_input.b)), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)));
    return Struct_3(var_2.x, global3[_wgslsmith_index_u32(~countOneBits(107076u ^ min(19374u, u_input.a.x)), 11u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_div_u32(1u >> (u_input.a.x % 32u), u_input.b), u_input.b), 11u)];
    let var_0 = 1i;
    var var_1 = Struct_3(_wgslsmith_div_f32(669f, -910f), global3[_wgslsmith_index_u32(2773u, 11u)]);
    var var_2 = func_1();
    global0 = array<Struct_1, 13>();
    let var_3 = _wgslsmith_div_vec2_i32(global2.yy, global2.yz);
    let var_4 = _wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -select(_wgslsmith_mod_vec3_i32(vec3<i32>(global2.x, global2.x, global2.x), vec3<i32>(var_3.x, -1i, 2147483647i)), ~vec3<i32>(var_0, -2147483647i, global2.x), vec3<bool>(var_1.b.a, true, global1.b)), vec3<i32>(i32(-1i) * -1i, var_3.x, max(14176i, var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(0i, _wgslsmith_dot_vec2_i32(~var_4.zz, ~vec2<i32>(-1i, var_4.x)), abs(~(-2147483647i)), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(-1i, 20334i)), _wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, var_4.x, var_3.x), var_4))));
}

