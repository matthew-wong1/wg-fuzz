struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec3<f32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = arg_0;
    let var_1 = u_input.e >> (vec3<u32>(0u, var_0.b.x, abs(reverseBits(reverseBits(var_0.b.x)))) % vec3<u32>(32u));
    var var_2 = vec3<bool>(arg_0.a, true, var_0.a);
    var var_3 = -u_input.b.x;
    var var_4 = Struct_1(var_0.a, firstLeadingBit(var_1.yy), vec3<f32>(var_0.d, _wgslsmith_f_op_f32(arg_0.c.x - _wgslsmith_f_op_f32(-arg_0.c.x)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0.d, _wgslsmith_f_op_f32(f32(-1f) * -545f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.d)) + -112f));
    return ~max(max(42607u ^ u_input.a, countOneBits(u_input.a)), firstLeadingBit(arg_0.b.x));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = arg_0.a;
    let var_1 = Struct_1(false, ~select(_wgslsmith_sub_vec2_u32(arg_2.b, vec2<u32>(1u, 1u)), vec2<u32>(0u, arg_0.b.x) << (vec2<u32>(47819u, u_input.a) % vec2<u32>(32u)), true) >> (vec2<u32>(max(func_3(arg_2), abs(arg_2.b.x)), 41728u) % vec2<u32>(32u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(arg_0.c)))), arg_0.c), -1000f);
    var var_2 = arg_0;
    var_2 = Struct_1(var_2.a, vec2<u32>(arg_0.b.x | 1u, arg_0.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d, arg_1, -1408f) * vec3<f32>(1426f, var_2.d, -272f)) - arg_2.c)) + _wgslsmith_f_op_vec3_f32(arg_2.c * var_2.c)), 372f);
    return !vec3<bool>(select(_wgslsmith_f_op_f32(select(var_1.c.x, 559f, var_0)) != -404f, (104668u & var_1.b.x) >= var_1.b.x, ~0u <= var_2.b.x), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), true);
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(265f))));
    let var_1 = vec4<f32>(1462f, var_0, var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(405f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))) - var_0));
    let var_2 = select(vec4<bool>(any(select(func_2(Struct_1(false, vec2<u32>(4294967295u, u_input.e.x), var_1.zwy, var_1.x), var_1.x, Struct_1(true, vec2<u32>(u_input.e.x, 11517u), var_1.wzz, var_0)), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true))), true, true, select(true, any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), -1i >= u_input.d)), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true), true), select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), false), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), false), var_1.x != var_1.x)), (true && any(func_2(Struct_1(false, u_input.e.xx, var_1.www, var_1.x), var_0, Struct_1(false, u_input.e.xx, vec3<f32>(var_0, var_1.x, -578f), 1060f)))) || !select(true, select(true, false, false), true));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.zz - vec2<f32>(_wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(trunc(1540f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.x, var_1.x), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0, 1000f))))) - vec2<f32>(_wgslsmith_f_op_f32(ceil(-251f)), -628f))));
    var var_4 = Struct_1(!var_2.x, vec2<u32>(~u_input.a, ~(~u_input.e.x)), vec3<f32>(608f, 774f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-307f))))), _wgslsmith_f_op_f32(f32(-1f) * -1030f));
    return Struct_1(!(!var_2.x), ~var_4.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_4.c - _wgslsmith_f_op_vec3_f32(floor(var_4.c)))) - var_4.c), 1015f);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = func_1();
    let var_1 = arg_1;
    let var_2 = arg_2.x <= -arg_2.x;
    var var_3 = arg_0.d;
    let var_4 = Struct_1(arg_0.a, reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(abs(556u), ~arg_0.b.x), vec2<u32>(~arg_1.b.x, func_3(Struct_1(var_1.a, var_1.b, arg_0.c, arg_0.d))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(560f, -1412f, 587f) + arg_1.c)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.d, var_1.d, 688f))), arg_0.a & false))), _wgslsmith_f_op_f32(-arg_0.d));
    return Struct_1(false, arg_0.b, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.c.x, 979f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.d + 179f))), var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1710f))))), var_0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(), Struct_1(true, vec2<u32>(abs(~u_input.a), u_input.e.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1021f, 881f, -1037f) - vec3<f32>(-302f, 449f, 735f)) * vec3<f32>(-110f, -642f, -1932f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 823f, 180f), vec3<f32>(438f, -454f, -1520f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1238f - 1000f)))), reverseBits(firstLeadingBit(vec2<i32>(_wgslsmith_mult_i32(-2147483647i, u_input.b.x), -1i))), firstLeadingBit(vec3<u32>(u_input.e.x | u_input.e.x, _wgslsmith_sub_u32(_wgslsmith_add_u32(39236u, u_input.e.x), 4294967295u), abs(_wgslsmith_clamp_u32(u_input.e.x, 53104u, u_input.e.x)))));
    var_0 = func_4(func_4(Struct_1(false, vec2<u32>(var_0.b.x, ~var_0.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c + var_0.c) - _wgslsmith_f_op_vec3_f32(-var_0.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d), var_0.d)), func_1(), -(_wgslsmith_mod_vec2_i32(u_input.c, u_input.c) | reverseBits(vec2<i32>(u_input.d, u_input.b.x))), vec3<u32>(1u & (u_input.a | u_input.e.x), ~11875u, ~4294967295u)), func_1(), _wgslsmith_add_vec2_i32(vec2<i32>(countOneBits(u_input.c.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.b.x, u_input.d), vec3<i32>(u_input.d, -1i, -2147483647i))) >> (var_0.b % vec2<u32>(32u)), vec2<i32>(_wgslsmith_dot_vec2_i32(max(u_input.b, u_input.b), u_input.b), -1i)), abs(~(u_input.e << (_wgslsmith_mod_vec3_u32(vec3<u32>(25942u, u_input.a, 1u), u_input.e) % vec3<u32>(32u)))));
    var var_1 = var_0.a;
    var_1 = var_0.a;
    var var_2 = vec2<i32>(-_wgslsmith_dot_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(10873i, -1i, u_input.b.x), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, 0i, 0i), vec3<i32>(u_input.d, u_input.b.x, 19764i))), u_input.d);
    let var_3 = Struct_1(false, _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(min(~vec2<u32>(u_input.e.x, u_input.e.x), ~var_0.b), ~u_input.e.yy), min(u_input.e.yy, ~firstLeadingBit(var_0.b))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-var_0.d)), _wgslsmith_f_op_f32(-2226f * _wgslsmith_div_f32(-876f, _wgslsmith_f_op_f32(sign(729f)))), -285f), _wgslsmith_f_op_f32(-var_0.d));
    let var_4 = select(_wgslsmith_mod_vec2_u32(vec2<u32>(func_1().b.x, ~1u), func_4(var_3, func_1(), vec2<i32>(2147483647i, _wgslsmith_mult_i32(var_2.x, var_2.x)), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.e, vec3<u32>(var_3.b.x, var_0.b.x, u_input.a)), vec3<u32>(0u, 73293u, 0u) | vec3<u32>(57648u, var_0.b.x, 1u))).b), min(_wgslsmith_div_vec2_u32(~select(vec2<u32>(var_0.b.x, u_input.e.x), vec2<u32>(u_input.a, var_0.b.x), vec2<bool>(var_0.a, false)), vec2<u32>(firstLeadingBit(4294967295u), func_1().b.x)), reverseBits(min(select(vec2<u32>(var_3.b.x, 8930u), vec2<u32>(u_input.e.x, var_3.b.x), false), ~vec2<u32>(u_input.e.x, var_0.b.x)))), true);
    var_0 = Struct_1(false, ~(~select(var_0.b, _wgslsmith_add_vec2_u32(u_input.e.yx, var_0.b), !vec2<bool>(var_3.a, var_3.a))), var_0.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_3.d)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(var_0.d))))), _wgslsmith_div_f32(var_0.c.x, func_1().d), all(vec3<bool>(true, true, true)) | var_0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_div_f32(var_3.c.x, -738f), var_3.d, 1188f, var_3.c.x));
}

