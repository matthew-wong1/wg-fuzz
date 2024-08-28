struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
    d: bool,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec2<bool>,
    d: bool,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<bool, 7> = array<bool, 7>(true, false, false, true, true, true, false);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> vec2<bool> {
    var var_0 = vec4<i32>(-u_input.a.x, ~(u_input.a.x >> (_wgslsmith_clamp_u32(u_input.c.x, 60420u, 38398u) % 32u)), u_input.a.x, u_input.b.x);
    var var_1 = Struct_2(global1[_wgslsmith_index_u32(~10196u, 7u)]);
    var var_2 = Struct_1(-var_0.wx, 17870i, !(!(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 7u)], arg_0))), u_input.c.x);
    var var_3 = ~reverseBits(u_input.c.wwx) & u_input.c.www;
    let var_4 = Struct_1(vec2<i32>(reverseBits(-2147483647i << (var_2.d % 32u)), ~0i) | abs(vec2<i32>(u_input.d >> (4628u % 32u), 51284i)), abs(-min(reverseBits(u_input.b.x), min(u_input.a.x, 10633i))), vec2<bool>(true == (u_input.c.x == var_2.d), true), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(var_3.x, 0u, 0u, 47659u) << ((u_input.c ^ vec4<u32>(34423u, 56672u, 1u, var_2.d)) % vec4<u32>(32u))), 101076u));
    return !(!vec2<bool>(all(!vec3<bool>(true, var_4.c.x, false)), true));
}

fn func_2(arg_0: bool, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_4(Struct_1(u_input.b.yy, 1i, vec2<bool>(global1[_wgslsmith_index_u32(firstLeadingBit(countOneBits(0u)), 7u)], any(!vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.c.x, 7u)], false))), 95997u << (u_input.c.x % 32u)), true, func_3(all(vec2<bool>(true, true))), arg_0, Struct_3(Struct_2(arg_0), any(vec3<bool>(true, !arg_0, all(vec2<bool>(true, true)))), Struct_2(arg_1.x <= _wgslsmith_f_op_f32(trunc(arg_1.x))), false, !(!any(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 7u)])))));
    global0 = 1u;
    var var_1 = select(var_0.a.d, select(countOneBits(u_input.c.x), ~u_input.c.x, true || all(vec4<bool>(arg_0, false, true, var_0.e.e))) ^ reverseBits(_wgslsmith_div_u32(_wgslsmith_clamp_u32(var_0.a.d, u_input.c.x, u_input.c.x), 0u)), !(!all(select(vec4<bool>(false, true, true, true), vec4<bool>(var_0.a.c.x, global1[_wgslsmith_index_u32(u_input.c.x, 7u)], true, global1[_wgslsmith_index_u32(0u, 7u)]), global1[_wgslsmith_index_u32(var_0.a.d, 7u)]))));
    var var_2 = var_0.a.c;
    let var_3 = var_0.a;
    return var_3;
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> Struct_3 {
    var var_0 = vec2<i32>(~_wgslsmith_dot_vec4_i32(~select(vec4<i32>(arg_0, arg_0, -3067i, u_input.b.x), vec4<i32>(arg_0, 1i, arg_3.a.x, u_input.d), vec4<bool>(arg_3.c.x, false, arg_3.c.x, global1[_wgslsmith_index_u32(u_input.c.x, 7u)])), select(vec4<i32>(14856i, 41506i, -2663i, arg_0), vec4<i32>(u_input.b.x, -1i, arg_0, 0i), vec4<bool>(global1[_wgslsmith_index_u32(arg_3.d, 7u)], arg_3.c.x, arg_3.c.x, global1[_wgslsmith_index_u32(1u, 7u)])) ^ _wgslsmith_add_vec4_i32(vec4<i32>(-45788i, -2147483647i, arg_0, arg_3.a.x), vec4<i32>(-1i, 36231i, arg_3.b, -6681i))), countOneBits(0i << (_wgslsmith_mult_u32(28949u, _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(19047u, arg_3.d, arg_3.d, u_input.c.x))) % 32u)));
    global0 = 8689u;
    var_0 = vec2<i32>(var_0.x, arg_0);
    global0 = _wgslsmith_div_u32(select(_wgslsmith_sub_u32(arg_2, ~_wgslsmith_dot_vec2_u32(u_input.c.zy, u_input.c.yx)), arg_2, true), u_input.c.x);
    global1 = array<bool, 7>();
    return Struct_3(Struct_2(false), arg_3.c.x & (!(true & global1[_wgslsmith_index_u32(arg_3.d, 7u)]) && arg_3.c.x), Struct_2(arg_3.c.x), global1[_wgslsmith_index_u32(15760u, 7u)], true);
}

fn func_5(arg_0: u32, arg_1: Struct_3) -> Struct_2 {
    let var_0 = func_4(reverseBits(-abs(~(-43752i))), ~(~u_input.c.x), 42823u, func_2(global1[_wgslsmith_index_u32(115978u, 7u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1264f), _wgslsmith_f_op_f32(f32(-1f) * -100f)))));
    global0 = reverseBits(u_input.c.x);
    global1 = array<bool, 7>();
    let var_1 = !select(select(vec4<bool>(false, !global1[_wgslsmith_index_u32(36573u, 7u)], !global1[_wgslsmith_index_u32(1u, 7u)], !var_0.d), !vec4<bool>(var_0.c.a, false, true, false), func_2(false, vec2<f32>(-1240f, -1215f)).c.x), vec4<bool>(var_0.b, func_2(var_0.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(358f, -1548f))).c.x, true, !var_0.d), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(max(0u, min(0u, u_input.c.x)), _wgslsmith_dot_vec3_u32(u_input.c.xxw, vec3<u32>(u_input.c.x, 0u, 74127u)), ~72859u), 7u)]);
    let var_2 = Struct_4(Struct_1(firstLeadingBit(~(~u_input.b.zx)), u_input.a.x, vec2<bool>(true, true), ~abs(~arg_0)), !select(true, true, global1[_wgslsmith_index_u32(abs(30195u), 7u)]), var_1.wy, any(!(!select(var_1.zxx, var_1.zyw, var_1.ywx))), var_0);
    return func_4(1i, 1u, ~_wgslsmith_div_u32(u_input.c.x, abs(0u)), func_2(false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(732f, 1264f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1499f, -221f) - vec2<f32>(-133f, -1000f)))))).a;
}

fn func_6(arg_0: Struct_2, arg_1: i32) -> Struct_2 {
    var var_0 = !select(!select(!vec3<bool>(arg_0.a, global1[_wgslsmith_index_u32(u_input.c.x, 7u)], true), select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(75319u, 7u)], arg_0.a), vec3<bool>(false, true, global1[_wgslsmith_index_u32(0u, 7u)]), arg_0.a), !arg_0.a), vec3<bool>(19430u == abs(u_input.c.x), true, select(arg_0.a | true, false, func_4(u_input.a.x, 3600u, u_input.c.x, Struct_1(u_input.b.xz, -2147483647i, vec2<bool>(global1[_wgslsmith_index_u32(1112u, 7u)], true), 87221u)).b)), true);
    global1 = array<bool, 7>();
    var var_1 = _wgslsmith_clamp_i32(33903i, -_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-25155i, u_input.a.x, u_input.b.x, u_input.b.x) & vec4<i32>(u_input.b.x, u_input.d, u_input.d, -14379i)), abs(vec4<i32>(-1i, arg_1, 0i, -2147483647i)) & (vec4<i32>(arg_1, -2147483647i, arg_1, arg_1) << (u_input.c % vec4<u32>(32u)))), arg_1);
    let var_2 = firstTrailingBit(_wgslsmith_add_i32(arg_1, ~43237i >> (_wgslsmith_div_u32(u_input.c.x, 23133u) % 32u)));
    var_1 = var_2;
    return func_5(u_input.c.x, Struct_3(arg_0, true, func_5(0u, Struct_3(func_5(u_input.c.x, Struct_3(Struct_2(var_0.x), false, arg_0, true, var_0.x)), true, Struct_2(false), true, any(vec4<bool>(false, arg_0.a, false, global1[_wgslsmith_index_u32(42126u, 7u)])))), (all(vec4<bool>(false, false, false, true)) && !arg_0.a) | !(!arg_0.a), all(select(select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 7u)], global1[_wgslsmith_index_u32(4294967295u, 7u)], false, arg_0.a), vec4<bool>(true, true, arg_0.a, arg_0.a), global1[_wgslsmith_index_u32(u_input.c.x, 7u)]), select(vec4<bool>(var_0.x, false, var_0.x, global1[_wgslsmith_index_u32(u_input.c.x, 7u)]), vec4<bool>(var_0.x, true, false, arg_0.a), vec4<bool>(arg_0.a, global1[_wgslsmith_index_u32(u_input.c.x, 7u)], true, true)), vec4<bool>(var_0.x, arg_0.a, global1[_wgslsmith_index_u32(u_input.c.x, 7u)], false)))));
}

fn func_7(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_3 {
    let var_0 = firstTrailingBit(u_input.a);
    global1 = array<bool, 7>();
    let var_1 = _wgslsmith_f_op_f32(-682f + -498f);
    global0 = arg_0.x;
    global1 = array<bool, 7>();
    return Struct_3(Struct_2(!all(vec3<bool>(true, arg_2.a, global1[_wgslsmith_index_u32(8018u, 7u)]))), (_wgslsmith_clamp_i32(58400i, -var_0.x, reverseBits(var_0.x)) | 21752i) > _wgslsmith_sub_i32(_wgslsmith_sub_i32(~arg_1.x, 47727i), min(select(arg_1.x, var_0.x, global1[_wgslsmith_index_u32(39306u, 7u)]), -arg_1.x)), arg_2, global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(arg_0.x, u_input.c.x, 4294967295u & arg_0.x), _wgslsmith_mult_u32(~arg_0.x, select(1u, 0u, true))), 7u)], any(!select(!vec2<bool>(arg_2.a, global1[_wgslsmith_index_u32(arg_0.x, 7u)]), select(vec2<bool>(false, global1[_wgslsmith_index_u32(arg_0.x, 7u)]), vec2<bool>(true, true), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 7u)])), select(vec2<bool>(false, false), vec2<bool>(global1[_wgslsmith_index_u32(arg_0.x, 7u)], false), vec2<bool>(false, arg_2.a)))));
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = func_7(u_input.c, -vec4<i32>(-arg_0, _wgslsmith_dot_vec2_i32(u_input.b.yx, abs(vec2<i32>(u_input.a.x, u_input.d))), 2147483647i, 39992i), func_6(func_5(~0u, func_4(abs(arg_0), ~37657u, ~u_input.c.x, func_2(true, vec2<f32>(-139f, -723f)))), 2147483647i));
    let var_1 = u_input.c.x;
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f + -968f))))));
    var var_3 = var_0.c;
    var_3 = var_0.c;
    return Struct_2(true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(u_input.b.x), global1[_wgslsmith_index_u32(72780u, 7u)], func_1(_wgslsmith_mod_i32(1i, func_2(select(global1[_wgslsmith_index_u32(u_input.c.x, 7u)], global1[_wgslsmith_index_u32(u_input.c.x, 7u)], global1[_wgslsmith_index_u32(u_input.c.x, 7u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1118f, 341f))).b)), func_2(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(594f, -1028f)) + vec2<f32>(1f, 1f))).c.x & global1[_wgslsmith_index_u32(34150u, 7u)], select(-u_input.d, u_input.b.x, true) >= ~21393i);
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~7627u, _wgslsmith_div_u32(func_2(true, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1081f, 371f) - vec2<f32>(1000f, -1000f))))).d, ~u_input.c.x)), 7u)];
    var var_2 = var_0;
    let var_3 = vec4<bool>(_wgslsmith_f_op_f32(-1f) > _wgslsmith_f_op_f32(floor(-1189f)), func_2(var_2.e, _wgslsmith_f_op_vec2_f32(vec2<f32>(1776f, _wgslsmith_f_op_f32(max(324f, -956f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1959f, 2158f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-475f, -371f))))).c.x, false, 45520u <= ~_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, u_input.c.x), u_input.c.wx));
    let var_4 = select(select(vec3<bool>(true, true, global1[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(u_input.c.x, u_input.c.x)), 7u)]), vec3<bool>(true, true, true), (func_1(-2147483647i).a && true) & true), !(!select(vec3<bool>(var_3.x, true, var_3.x), !var_3.xzw, global1[_wgslsmith_index_u32(4294967295u, 7u)])), true && !var_3.x);
    global1 = array<bool, 7>();
    var var_5 = -343f;
    global1 = array<bool, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(1000f, -100f, _wgslsmith_mod_u32(104799u, u_input.c.x));
}

