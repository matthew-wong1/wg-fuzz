struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec3<u32>,
    d: vec4<f32>,
    e: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 26>;

var<private> global1: array<f32, 30> = array<f32, 30>(126f, -640f, -483f, -752f, 427f, 362f, 906f, -1000f, -1418f, -2215f, 315f, 572f, -137f, -694f, -1284f, -1388f, -1000f, 775f, 387f, 680f, 374f, -1273f, 2076f, 117f, 168f, 1213f, 268f, -676f, 798f, 1766f);

var<private> global2: Struct_5;

var<private> global3: vec2<u32>;

var<private> global4: array<u32, 1> = array<u32, 1>(80430u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_4) -> bool {
    global4 = array<u32, 1>();
    global0 = array<vec3<i32>, 26>();
    global0 = array<vec3<i32>, 26>();
    let var_0 = vec3<i32>((68637i << (_wgslsmith_mod_u32(~global2.a.x, ~0u) % 32u)) | (arg_2.c.x << (~global3.x % 32u)), max(arg_2.c.x, -21714i) ^ max(arg_0.x, 0i), firstTrailingBit(-1i));
    var var_1 = vec4<i32>(global2.b.c.x, 2147483647i, _wgslsmith_mod_i32(~global2.c.c.x, min(-1i, -26607i)), arg_3.b.a.a.c.x);
    return true;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec4<bool>) -> vec2<i32> {
    let var_0 = arg_0 & 0i;
    let var_1 = Struct_3(Struct_2(global2.c));
    var var_2 = _wgslsmith_div_vec2_i32(var_1.a.a.c.zx, countOneBits(global2.b.c.xz));
    let var_3 = Struct_4(arg_2.x, var_1, vec3<u32>(1u, global4[_wgslsmith_index_u32(u_input.a, 1u)], global4[_wgslsmith_index_u32(~(~(~global4[_wgslsmith_index_u32(0u, 1u)])), 1u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.b.d.x, arg_1.a.b, arg_1.a.e, 527f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(global3.x, 30u)], global1[_wgslsmith_index_u32(global3.x, 30u)], 283f, -161f), vec4<f32>(-1000f, var_1.a.a.b, var_1.a.a.a, global2.b.a), vec4<bool>(arg_2.x, false, true, arg_2.x)))))), var_1);
    global4 = array<u32, 1>();
    return var_3.e.a.a.c.yx;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: vec3<bool>, arg_3: vec3<i32>) -> Struct_5 {
    global4 = array<u32, 1>();
    let var_0 = _wgslsmith_f_op_f32(round(1578f));
    global1 = array<f32, 30>();
    let var_1 = func_4(-_wgslsmith_div_i32(arg_3.x, 1i), Struct_2(Struct_1(global2.c.b, -1045f, global2.c.c & vec3<i32>(13147i, arg_0.x, global2.b.c.x), _wgslsmith_f_op_vec3_f32(step(arg_1, vec3<f32>(-485f, 313f, 1090f))), _wgslsmith_f_op_f32(min(arg_1.x, arg_1.x)))), vec4<bool>(!func_3(vec2<i32>(arg_0.x, global2.c.c.x), global2.c.d, Struct_1(981f, arg_1.x, global2.b.c, arg_1, global2.c.b), Struct_4(arg_2.x, Struct_3(Struct_2(Struct_1(global2.b.e, -533f, vec3<i32>(global2.b.c.x, 7346i, -3062i), arg_1, global1[_wgslsmith_index_u32(4294967295u, 30u)]))), global2.a, vec4<f32>(var_0, global2.b.d.x, var_0, -1000f), Struct_3(Struct_2(Struct_1(-2171f, 799f, vec3<i32>(global2.b.c.x, global2.c.c.x, global2.c.c.x), global2.c.d, 542f))))), false, false, false)) | vec2<i32>(arg_3.x, countOneBits(-2147483647i));
    var var_2 = global2.c.e;
    return Struct_5(min(~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.a, 1u) >> (vec3<u32>(16596u, 61329u, 4294967295u) % vec3<u32>(32u)), reverseBits(vec3<u32>(1u, 1u, global3.x)), global2.a | global2.a), global2.a), global2.b, global2.c);
}

fn func_1() -> Struct_2 {
    global2 = func_2(_wgslsmith_div_vec2_i32(-global2.b.c.xz, global2.c.c.zy), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.c.d + _wgslsmith_f_op_vec3_f32(global2.b.d * global2.b.d)) * _wgslsmith_f_op_vec3_f32(-global2.b.d)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(38343u, 30u)], global2.c.e, global2.b.e) * _wgslsmith_f_op_vec3_f32(global2.c.d * global2.c.d)), _wgslsmith_f_op_vec3_f32(floor(global2.c.d))))), !(!vec3<bool>(any(vec4<bool>(true, true, true, true)), true, select(true, false, false))), global0[_wgslsmith_index_u32(~1u, 26u)]);
    var var_0 = global2.b.d.zz;
    var var_1 = ~global2.a;
    let var_2 = -_wgslsmith_clamp_i32(_wgslsmith_add_i32(22382i >> (global3.x % 32u), global2.c.c.x) << (~(~global4[_wgslsmith_index_u32(u_input.a, 1u)]) % 32u), 1i, _wgslsmith_mult_i32(global2.c.c.x, global2.c.c.x));
    global0 = array<vec3<i32>, 26>();
    return Struct_2(global2.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(false, ~global4[_wgslsmith_index_u32(~u_input.a << (~global4[_wgslsmith_index_u32(1u, 1u)] % 32u), 1u)] < ~68232u, abs(_wgslsmith_dot_vec3_u32(global2.a, ~global2.a)) < _wgslsmith_mod_u32(~_wgslsmith_add_u32(global3.x, global4[_wgslsmith_index_u32(4294967295u, 1u)]), reverseBits(global4[_wgslsmith_index_u32(select(1u, global2.a.x, true), 1u)])), false);
    global4 = array<u32, 1>();
    global0 = array<vec3<i32>, 26>();
    global4 = array<u32, 1>();
    var var_1 = Struct_3(func_1());
    var var_2 = _wgslsmith_f_op_vec3_f32(step(func_1().a.d, vec3<f32>(global2.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 30u)]) + _wgslsmith_f_op_f32(-var_1.a.a.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.b.d.x), _wgslsmith_f_op_f32(2628f + global2.c.e))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~92163u)));
}

