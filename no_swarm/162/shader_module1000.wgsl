struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: vec3<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_1,
    d: vec2<i32>,
    e: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(16488u, 4294967295u);

var<private> global1: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global2: vec3<bool>;

var<private> global3: array<u32, 12>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: bool, arg_1: Struct_5, arg_2: Struct_2) -> i32 {
    global1 = !(!vec4<bool>(-2147483647i >= _wgslsmith_div_i32(0i, u_input.c), -24379i > (u_input.c >> (arg_2.b.x % 32u)), !any(vec3<bool>(false, true, global2.x)), false));
    global3 = array<u32, 12>();
    var var_0 = u_input.b;
    var var_1 = Struct_4(Struct_3(global2.x, arg_2, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(507f * -982f), _wgslsmith_f_op_f32(step(1044f, arg_2.c.x))), u_input.c, _wgslsmith_f_op_f32(arg_2.a.x + _wgslsmith_f_op_f32(f32(-1f) * -766f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(264f, 217f, arg_2.a.x)) - _wgslsmith_f_op_vec3_f32(select(arg_2.a, arg_2.a, vec3<bool>(global1.x, global2.x, arg_0)))), global1.ywy), arg_2, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.x, arg_2.a.x, arg_2.c.x, arg_2.c.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1135f, -1481f, -499f, 1528f))))), _wgslsmith_add_i32(u_input.c, -1i), Struct_1(-668f, _wgslsmith_dot_vec3_i32(select(vec3<i32>(-9737i, -2147483647i, u_input.c), vec3<i32>(u_input.c, u_input.c, u_input.c), !arg_0), -vec3<i32>(22053i, u_input.c, u_input.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.x) * _wgslsmith_f_op_f32(abs(arg_2.c.x))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(arg_2.c.x * -1028f), arg_2.c.x, _wgslsmith_f_op_f32(-arg_2.c.x)))), global1.xzz), ~select(vec2<i32>(~(-1i), -u_input.c), vec2<i32>(28176i, u_input.c >> (var_0.x % 32u)), !(u_input.b.x < 0u)), arg_2);
    var var_2 = var_1.d;
    return var_1.b;
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: Struct_3) -> i32 {
    global3 = array<u32, 12>();
    var var_0 = _wgslsmith_f_op_f32(-1327f * arg_2.b.a.x);
    global2 = vec3<bool>(false, global2.x, !any(vec2<bool>(false, any(vec4<bool>(global2.x, false, global1.x, false)))));
    global1 = !(!(!vec4<bool>(arg_2.c.e.x, true, all(global1.xz), true)));
    global3 = array<u32, 12>();
    return -firstLeadingBit(1i ^ ~func_2(true, Struct_5(arg_2.b.b), arg_2.d));
}

fn func_3(arg_0: i32, arg_1: i32) -> StorageBuffer {
    global0 = _wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(120653u >> (_wgslsmith_dot_vec2_u32(u_input.b.ww, vec2<u32>(global0.x, u_input.a)) % 32u), 4294967295u)), ~u_input.b.yy ^ u_input.b.wx);
    global0 = _wgslsmith_div_vec2_u32(u_input.b.wy, ~countOneBits(select(select(vec2<u32>(global0.x, 31188u), vec2<u32>(u_input.b.x, global0.x), vec2<bool>(false, true)), ~vec2<u32>(0u, 44758u), select(false, global1.x, false))));
    var var_0 = Struct_5(~(~u_input.b));
    global3 = array<u32, 12>();
    var_0 = Struct_5(var_0.a);
    return StorageBuffer(_wgslsmith_clamp_vec3_i32(-(~select(vec3<i32>(arg_0, arg_0, u_input.c), vec3<i32>(u_input.c, -2147483647i, -2147483647i), false)), select(vec3<i32>(~(-18106i), arg_0, -arg_1), reverseBits(vec3<i32>(u_input.c, arg_0, -72965i) >> (vec3<u32>(u_input.b.x, 1u, 1u) % vec3<u32>(32u))), global1.x), ~(~(~vec3<i32>(arg_0, -6716i, 2147483647i)))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2304f))), -1399f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(0i, u_input.c, -1i)), min(vec3<i32>(0i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(2977i, u_input.c)), vec2<i32>(u_input.c, -67215i)), u_input.c), firstLeadingBit(-_wgslsmith_add_vec3_i32(vec3<i32>(-11437i, -2147i, -1i), vec3<i32>(u_input.c, -31198i, u_input.c)))));
    global0 = vec2<u32>(~(~_wgslsmith_mod_u32(global0.x, global0.x)) & _wgslsmith_div_u32(4046u, ~(~global0.x)), 1u);
    var var_1 = any(select(vec2<bool>((global0.x << (61008u % 32u)) != (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 12u)], 12u)], 12u)] | u_input.b.x), false), vec2<bool>(false, global1.x == (true & global2.x)), select(global1.yx, select(select(global1.xy, vec2<bool>(true, global1.x), vec2<bool>(global1.x, global1.x)), vec2<bool>(global2.x, true), vec2<bool>(false, global1.x)), true)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1232f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1519f) * _wgslsmith_f_op_f32(f32(-1f) * -1360f)))) + _wgslsmith_f_op_f32(f32(-1f) * -712f)) - _wgslsmith_f_op_f32(abs(1045f)));
    global2 = global1.zyx;
    let x = u_input.a;
    s_output = func_3(_wgslsmith_div_i32(i32(-1i) * -var_0.x, func_1(global1.x, -var_0.x, Struct_3(true, Struct_2(vec3<f32>(124f, -791f, 1071f), u_input.b, vec2<f32>(-800f, 2134f), u_input.b.yw), Struct_1(688f, 37826i, 615f, vec3<f32>(-1238f, 1551f, 1207f), vec3<bool>(global2.x, false, global2.x)), Struct_2(vec3<f32>(1471f, -353f, 1279f), u_input.b, vec2<f32>(-303f, -231f), vec2<u32>(80519u, u_input.b.x)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(286f, 992f, -214f, 1000f), vec4<f32>(1409f, 690f, -1145f, -997f)))))), -10838i);
}

