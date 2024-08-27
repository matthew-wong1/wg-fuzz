struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: vec4<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec2<u32>,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> f32 {
    global0 = array<u32, 7>();
    var var_0 = Struct_2(arg_1.d.yxy, !(!vec2<bool>(all(vec2<bool>(true, false)), any(vec4<bool>(arg_1.c, arg_1.c, arg_1.c, false)))), _wgslsmith_clamp_vec2_u32(~(~(arg_1.d.yw | vec2<u32>(58401u, u_input.a))), ~(reverseBits(vec2<u32>(u_input.a, arg_1.d.x)) & (vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(0u, arg_0) % vec2<u32>(32u)))), ~firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(28586u, arg_1.d.x), vec2<u32>(4294967295u, 0u)))), false, 1610u);
    var var_1 = vec2<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(abs(-30160i), -7307i), u_input.b.x & _wgslsmith_clamp_i32(u_input.b.x, arg_1.a, 40613i)), abs(firstLeadingBit(-1i))), _wgslsmith_div_i32(21384i, -1i));
    let var_2 = any(select(vec4<bool>(false, !(!arg_1.c), true, any(select(vec3<bool>(true, arg_1.c, var_0.b.x), vec3<bool>(false, arg_1.c, true), vec3<bool>(var_0.b.x, arg_1.c, var_0.d)))), !vec4<bool>(false, arg_1.b != arg_1.b, var_0.d, !var_0.b.x), vec4<bool>(0i != u_input.c, var_0.b.x, true, !all(vec4<bool>(true, arg_1.c, var_0.b.x, arg_1.c)))));
    var_1 = ~vec2<i32>(1i, arg_1.a);
    return 813f;
}

fn func_2() -> Struct_3 {
    let var_0 = u_input.b.zy;
    global0 = array<u32, 7>();
    var var_1 = 1i;
    var var_2 = !any(select(select(vec2<bool>(true, true), vec2<bool>(false, false), u_input.c >= var_0.x), select(vec2<bool>(true, false), vec2<bool>(true, true), true), true));
    global0 = array<u32, 7>();
    return Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(671f)) + _wgslsmith_f_op_f32(573f * -729f)), _wgslsmith_f_op_f32(f32(-1f) * -853f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -834f) - _wgslsmith_f_op_f32(min(537f, 602f))), _wgslsmith_f_op_f32(func_3(~8909u, Struct_1(u_input.b.x, 733f, true, vec4<u32>(5799u, 0u, u_input.a, global0[_wgslsmith_index_u32(0u, 7u)]), u_input.b.x))))), true, vec4<bool>(true, false && (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 26209u), vec2<u32>(0u, global0[_wgslsmith_index_u32(u_input.a, 7u)])) > u_input.a), false, true));
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: i32) -> bool {
    let var_0 = func_2();
    let var_1 = Struct_3(var_0.a, true, select(!var_0.c, vec4<bool>(true, any(var_0.c) | all(vec2<bool>(var_0.c.x, var_0.c.x)), !any(var_0.c), all(select(var_0.c.xw, var_0.c.ww, var_0.c.zz))), true));
    var var_2 = Struct_2(vec3<u32>(0u, ~_wgslsmith_add_u32(arg_1.x, arg_1.x) << (4294967295u % 32u), ~(max(arg_1.x, arg_1.x) << ((0u ^ arg_1.x) % 32u))), select(var_1.c.xx, var_1.c.yw, any(vec4<bool>(true, all(vec2<bool>(true, true)), true, var_1.c.x))), ~reverseBits(arg_1.zx), true, arg_1.x);
    var_2 = Struct_2(~select(firstTrailingBit(~arg_1), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, arg_0, 1u), ~vec3<u32>(arg_1.x, 51415u, global0[_wgslsmith_index_u32(arg_0, 7u)])), vec3<bool>(any(var_0.c), false || var_0.b, any(vec3<bool>(var_2.b.x, true, true)))), !var_0.c.zx, arg_1.zx, var_0.b, 38957u);
    let var_3 = global0[_wgslsmith_index_u32(52321u, 7u)] <= (global0[_wgslsmith_index_u32(87016u, 7u)] ^ (arg_0 << (countOneBits(1u) % 32u)));
    return arg_0 >= u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(2176f, -241f))))), vec2<f32>(_wgslsmith_f_op_f32(-1401f + 1042f), _wgslsmith_f_op_f32(f32(-1f) * -929f)), true & func_1(0u, vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 7u)], 23382u, u_input.a), 0i)))));
    let var_1 = 1i;
    global0 = array<u32, 7>();
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(1146f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.a, Struct_1(-2147483647i, var_0.x, false, vec4<u32>(u_input.a, 29313u, 61679u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)]), var_1)))) + -752f))), _wgslsmith_f_op_f32(sign(-458f)));
    let var_2 = Struct_2(vec3<u32>(~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 76828u, u_input.a), ~vec4<u32>(0u, global0[_wgslsmith_index_u32(u_input.a, 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 7u)], 7u)], 7u)], 37460u)), ~min(~4294967295u, global0[_wgslsmith_index_u32(60347u, 7u)]), u_input.a), vec2<bool>(all(vec2<bool>(true, true)), !(!(26213i >= var_1))), countOneBits(~_wgslsmith_clamp_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(1u, 7u)]), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(global0[_wgslsmith_index_u32(2834u, 7u)], 6880u)), vec2<u32>(29045u, u_input.a))), true, _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(4294967295u, 113014u), firstLeadingBit(global0[_wgslsmith_index_u32(27250u, 7u)])), ~36428u << (0u % 32u)), u_input.a));
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(var_0.x * -239f)), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -106f)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 979f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-954f, 2563f, var_0.x)), vec3<f32>(-161f, -437f, 187f)))), var_2.d)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(u_input.c, ~(var_1 & 2147483647i), 2147483647i, -(~2147483647i)), vec2<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, 0u, ~8751u, ~24253u), ~countOneBits(vec4<u32>(var_2.e, 54702u, 6780u, 69041u)))), firstLeadingBit(var_2.c.x));
}

