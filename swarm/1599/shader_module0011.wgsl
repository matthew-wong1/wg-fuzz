struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
    c: Struct_3,
    d: Struct_3,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(5758i, vec2<bool>(true, true), vec4<bool>(true, false, true, false));

var<private> global1: array<vec4<bool>, 21> = array<vec4<bool>, 21>(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_5, arg_1: Struct_1, arg_2: vec4<u32>) -> f32 {
    global1 = array<vec4<bool>, 21>();
    let var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(~(u_input.c ^ u_input.c) << (~(~arg_2.x) % 32u), 1u), vec2<u32>(3625u, min(_wgslsmith_mod_u32(u_input.c, 1u), ~arg_0.a.a) >> (~3165u % 32u)));
    let var_1 = Struct_1(global0.a, !global0.c.xz, arg_1.c);
    let var_2 = ((29493i | global0.a) >> (_wgslsmith_sub_u32(48112u, 28697u) % 32u)) ^ -61784i;
    var var_3 = any(arg_1.c);
    return arg_0.c.b.a;
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec4<bool>, arg_3: vec3<i32>) -> f32 {
    let var_0 = Struct_1(arg_0.a, arg_0.c.wx, vec4<bool>(any(arg_0.c), global0.b.x, all(vec4<bool>(!arg_0.b.x, !arg_1, !global0.c.x, global0.c.x)), any(select(global0.b, vec2<bool>(arg_0.b.x, true), true)) & (true || any(vec3<bool>(arg_0.b.x, true, arg_1)))));
    global1 = array<vec4<bool>, 21>();
    global1 = array<vec4<bool>, 21>();
    var var_1 = Struct_4(min(abs(~(32455u >> (0u % 32u))), max(~0u, firstTrailingBit(2646u | u_input.c))), vec3<u32>(21342u, ~_wgslsmith_mod_u32(0u, 98333u), min(88266u | u_input.c, ~0u)) ^ ~(~vec3<u32>(u_input.d, u_input.d, 0u)), _wgslsmith_mult_vec2_i32(vec2<i32>(~13182i ^ var_0.a, -max(u_input.a, arg_0.a)), countOneBits(vec2<i32>(0i, 1202i)) | (vec2<i32>(27896i, arg_0.a) ^ -vec2<i32>(global0.a, -4820i))), reverseBits(abs(countOneBits(vec4<i32>(u_input.a, u_input.b, var_0.a, u_input.b)))), vec4<u32>(4294967295u, _wgslsmith_sub_u32(_wgslsmith_add_u32(0u, _wgslsmith_div_u32(u_input.d, 51229u)), 69619u), ~1u, max(~reverseBits(u_input.c), reverseBits(_wgslsmith_mod_u32(39131u, 31553u)))));
    global1 = array<vec4<bool>, 21>();
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(279f, 788f), 983f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(1000f)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), 674f, arg_1))));
}

fn func_4(arg_0: f32, arg_1: vec4<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0, -1031f, arg_0), vec3<f32>(1077f, -1180f, arg_0))))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1216f, 1028f, arg_0) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-774f, -850f, 979f) - vec3<f32>(1191f, arg_0, arg_0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(907f, arg_0, -541f), vec3<f32>(210f, arg_0, arg_0))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, arg_0, -945f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0, -505f, -112f), vec3<f32>(arg_0, -688f, arg_0)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1059f, 494f, -1340f))))), arg_1.x));
    global0 = Struct_1(-2147483647i, select(vec2<bool>(false, all(arg_1)), !global0.b, any(vec2<bool>(all(vec3<bool>(true, arg_1.x, global0.b.x)), any(vec3<bool>(true, true, global0.c.x))))), select(vec4<bool>(true, arg_1.x, false, !global0.b.x && global0.c.x), vec4<bool>(true, global0.c.x, !(-53451i == u_input.a), true), !select(select(vec4<bool>(arg_1.x, true, global0.c.x, arg_1.x), global1[_wgslsmith_index_u32(u_input.c, 21u)], global1[_wgslsmith_index_u32(0u, 21u)]), !vec4<bool>(false, arg_1.x, false, global0.c.x), !global0.c.x)));
    let var_1 = vec4<bool>(false, arg_1.x, true, false);
    var var_2 = 156f;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x));
    return (arg_0 >= 1703f) & (_wgslsmith_mod_u32(1u, u_input.d) == 0u);
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = vec4<u32>(u_input.d, ~_wgslsmith_add_u32(u_input.d, ~(~u_input.d)), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 20338u, 4294967295u) & vec3<u32>(47298u, u_input.c, 0u), vec3<u32>(26842u | u_input.d, 102203u, _wgslsmith_add_u32(0u, 1u))), _wgslsmith_add_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, 41046u, 1u), vec3<u32>(u_input.c, 7266u, 4294967295u)), _wgslsmith_sub_vec3_u32(vec3<u32>(23657u, 4294967295u, u_input.d), vec3<u32>(u_input.c, 4294967295u, 37945u)) << (firstTrailingBit(vec3<u32>(49893u, 4294967295u, 0u)) % vec3<u32>(32u)))), firstLeadingBit(~(~u_input.c)));
    let var_1 = Struct_3(!global0.c.wx, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_5(Struct_4(4294967295u, var_0.yzx, vec2<i32>(global0.a, u_input.a), vec4<i32>(1i, u_input.b, global0.a, -2147483647i), vec4<u32>(1u, var_0.x, 10193u, var_0.x)), -32374i, Struct_3(global0.c.wy, Struct_2(arg_0.x, false)), Struct_3(global0.c.yx, Struct_2(arg_0.x, false)), vec3<i32>(u_input.a, global0.a, 1i)), Struct_1(u_input.a, vec2<bool>(global0.c.x, true), global1[_wgslsmith_index_u32(var_0.x, 21u)]), vec4<u32>(70695u, 34987u, 1u, var_0.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + arg_0.x) - _wgslsmith_f_op_f32(arg_0.x * arg_0.x))), func_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1792f, arg_0.x) * _wgslsmith_f_op_f32(func_3(Struct_1(u_input.a, global0.c.xy, global1[_wgslsmith_index_u32(4294967295u, 21u)]), false, vec4<bool>(false, false, true, global0.c.x), vec3<i32>(global0.a, -38457i, global0.a)))), vec4<bool>(false, any(global0.b), false, true))));
    var var_2 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_5(Struct_4(28290u, var_0.xyx, vec2<i32>(u_input.a, u_input.b), vec4<i32>(1i, 1i, 10937i, u_input.b), vec4<u32>(0u, var_0.x, 0u, u_input.c)), u_input.a, Struct_3(var_1.a, Struct_2(arg_0.x, global0.b.x)), Struct_3(vec2<bool>(true, var_1.b.b), Struct_2(arg_0.x, true)), vec3<i32>(1i, u_input.b, 19662i)), Struct_1(u_input.b, vec2<bool>(global0.c.x, global0.b.x), global0.c), vec4<u32>(u_input.d, var_0.x, u_input.d, 15076u))), var_1.b.a) - 2404f), _wgslsmith_f_op_f32(-arg_0.x)), global0.b.x);
    var var_3 = !vec3<bool>(true, var_1.a.x, true);
    var var_4 = Struct_3(var_3.xy, Struct_2(_wgslsmith_f_op_f32(abs(-622f)), true));
    return Struct_1(u_input.b, var_3.xx, vec4<bool>(true, any(global0.c.xzw), global0.a >= (~u_input.a & 2147483647i), var_1.b.a > var_1.b.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1383f) + _wgslsmith_f_op_f32(-582f - 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1701f + 843f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(312f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_5(Struct_4(u_input.d, vec3<u32>(u_input.c, u_input.d, 4294967295u), vec2<i32>(global0.a, -1i), vec4<i32>(u_input.a, 1i, u_input.b, global0.a), vec4<u32>(12892u, 32991u, 107643u, u_input.c)), u_input.b, Struct_3(vec2<bool>(global0.b.x, false), Struct_2(722f, global0.c.x)), Struct_3(global0.c.xx, Struct_2(1000f, global0.c.x)), vec3<i32>(global0.a, global0.a, 2147483647i)), Struct_1(1i, global0.b, vec4<bool>(true, global0.c.x, false, true)), vec4<u32>(u_input.c, u_input.d, u_input.d, u_input.d))) + _wgslsmith_f_op_f32(round(212f))))));
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(680f + -792f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(Struct_1(global0.a, vec2<bool>(global0.b.x, global0.b.x), vec4<bool>(global0.c.x, global0.b.x, global0.c.x, global0.b.x)), true, !global0.c, vec3<i32>(u_input.b, -11505i, global0.a))), 964f))), true);
    let var_1 = Struct_2(var_0.a, any(vec3<bool>(false, (global0.a | u_input.a) < 56413i, global0.c.x)));
    global0 = func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a - var_0.a) * _wgslsmith_f_op_f32(func_1(Struct_5(Struct_4(440u, vec3<u32>(1u, 42714u, 43288u), vec2<i32>(-1i, -136i), vec4<i32>(38861i, 1i, u_input.a, u_input.a), vec4<u32>(0u, 0u, 1u, u_input.c)), global0.a, Struct_3(global0.b, var_0), Struct_3(global0.c.yz, var_1), vec3<i32>(7529i, u_input.a, global0.a)), Struct_1(13847i, vec2<bool>(var_1.b, var_0.b), global0.c), vec4<u32>(4294967295u, 9362u, 31090u, 0u)))), _wgslsmith_f_op_f32(func_3(func_2(vec3<f32>(var_1.a, var_1.a, var_1.a)), true, !vec4<bool>(var_0.b, true, true, false), -vec3<i32>(global0.a, global0.a, -18689i))), _wgslsmith_div_f32(117f, _wgslsmith_f_op_f32(-var_1.a))) + vec3<f32>(165f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.a - -413f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.a)) + 1f))));
    var var_2 = Struct_3(global0.b, var_1);
    var var_3 = var_2.a;
    let var_4 = 19854i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.a)), _wgslsmith_f_op_f32(-var_2.b.a)), ((select(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(0u, u_input.d, u_input.d), var_3.x) << (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, 74207u, u_input.d), vec3<u32>(u_input.d, u_input.d, 34757u)) % vec3<u32>(32u))) << (vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(5420u, 0u, 4294967295u), vec3<u32>(1u, u_input.c, 74815u)), 1u, u_input.d) % vec3<u32>(32u))) << ((~select(vec3<u32>(u_input.c, u_input.d, 1u), vec3<u32>(u_input.d, u_input.d, 1u), global0.c.yyz) ^ abs(vec3<u32>(4294967295u, u_input.c, u_input.d) ^ vec3<u32>(4294967295u, 4294967295u, u_input.d))) % vec3<u32>(32u)), (1u ^ u_input.c) >> ((1u << ((u_input.c << (1u % 32u)) % 32u)) % 32u), u_input.c, -global0.a);
}

