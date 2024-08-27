struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<u32>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
    b: bool,
    c: Struct_2,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 6>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec3<i32> {
    let var_0 = true;
    global1 = array<f32, 6>();
    global0 = _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(~(~firstTrailingBit(u_input.a >> (u_input.d % 32u))), 6u)], _wgslsmith_f_op_f32(trunc(-1382f)), var_0));
    var var_1 = reverseBits(u_input.c.yx);
    let var_2 = Struct_1(1i > -((-1223i >> (var_1.x % 32u)) >> (~u_input.d % 32u)), min(1i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 14367u, 4294967295u) ^ vec4<u32>(0u, var_1.x, 4294967295u, u_input.c.x), firstLeadingBit(vec4<u32>(u_input.d, 4294967295u, var_1.x, var_1.x))) % 32u), -abs(45238i)), -1586f);
    return vec3<i32>(-14132i, abs(var_2.b), -1i);
}

fn func_2() -> Struct_1 {
    let var_0 = -func_3();
    global0 = global1[_wgslsmith_index_u32(reverseBits(u_input.c.x), 6u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1231f, _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(u_input.b.x, 6u)], global1[_wgslsmith_index_u32(u_input.d, 6u)])))), vec2<f32>(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(~u_input.b.x, 6u)], _wgslsmith_f_op_f32(-1520f + global1[_wgslsmith_index_u32(92855u, 6u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(u_input.c.x, 6u)])))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(330f, global1[_wgslsmith_index_u32(u_input.d, 6u)])) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-877f, global1[_wgslsmith_index_u32(u_input.d, 6u)]))))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_1))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -301f) * var_1) + vec2<f32>(global1[_wgslsmith_index_u32(43302u, 6u)], 1015f)))));
    let var_3 = false;
    return Struct_1(!var_3, 1i, -1308f);
}

fn func_4(arg_0: Struct_2) -> Struct_4 {
    var var_0 = (arg_0.c.x >> (u_input.d % 32u)) | ~51152u;
    let var_1 = arg_0.d;
    var var_2 = vec3<bool>(!arg_0.a.a, !(48331u > _wgslsmith_mult_u32(arg_0.b, arg_0.c.x & arg_0.e.x)), reverseBits(reverseBits(~u_input.c.x)) > 1u);
    let var_3 = ~(~vec3<u32>(1u, 1u, 1u));
    let var_4 = any(vec4<bool>(any(select(!vec3<bool>(true, true, arg_0.a.a), vec3<bool>(var_1, var_2.x, arg_0.d), select(vec3<bool>(var_2.x, false, arg_0.d), vec3<bool>(var_2.x, var_2.x, false), true))), func_2().a, true, ~1u > ~(0u << (var_3.x % 32u))));
    return Struct_4(func_2());
}

fn func_5(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: i32) -> Struct_2 {
    var var_0 = Struct_3(!(!(!select(vec4<bool>(true, arg_0.a.a, arg_2.a.a, arg_2.a.a), vec4<bool>(arg_0.a.a, arg_0.a.a, arg_2.a.a, arg_0.a.a), false))), select(vec3<bool>(all(vec2<bool>(arg_2.d, arg_2.a.a)), any(select(vec2<bool>(arg_0.a.a, false), vec2<bool>(true, arg_0.a.a), arg_2.d)), func_4(arg_2).a.a), !(!select(vec3<bool>(arg_0.a.a, true, arg_0.a.a), vec3<bool>(true, arg_2.a.a, true), false)), !select(!vec3<bool>(arg_0.a.a, arg_0.a.a, arg_0.a.a), select(vec3<bool>(true, arg_2.a.a, arg_0.a.a), vec3<bool>(arg_2.a.a, false, true), vec3<bool>(true, arg_0.a.a, true)), false)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(202f + 1000f), _wgslsmith_f_op_f32(-arg_1.x))) <= _wgslsmith_f_op_f32(f32(-1f) * -974f));
    var_0 = Struct_3(select(vec4<bool>(arg_0.a.a, !(-761f < arg_2.a.c), var_0.a.x, arg_2.a.a), !select(var_0.a, vec4<bool>(arg_2.a.a, var_0.c, arg_0.a.a, false), vec4<bool>(arg_0.a.a, arg_0.a.a, true, arg_2.a.a)), var_0.a), select(!vec3<bool>(var_0.b.x, all(vec2<bool>(true, true)), arg_1.x > arg_2.a.c), select(select(select(vec3<bool>(false, var_0.a.x, arg_2.d), vec3<bool>(true, false, var_0.b.x), var_0.b), select(var_0.a.wzx, var_0.a.xww, arg_2.d), arg_0.a.a), !var_0.a.wxw, arg_0.a.a), false), var_0.a.x);
    var var_1 = ~_wgslsmith_add_u32(4294967295u, u_input.d);
    let var_2 = arg_2.a.b ^ ~7540i;
    var_1 = (arg_2.c.x | max(firstLeadingBit(11672u), abs(52166u >> (0u % 32u)))) & u_input.b.x;
    return arg_2;
}

fn func_1() -> bool {
    var var_0 = func_5(func_4(Struct_2(func_2(), 1u, ~abs(vec4<u32>(u_input.b.x, u_input.a, 0u, 114726u)), false, u_input.c)), vec3<f32>(_wgslsmith_f_op_f32(ceil(1000f)), -627f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 6u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(u_input.c.x, 6u)]))))), Struct_2(func_4(Struct_2(Struct_1(false, -15346i, global1[_wgslsmith_index_u32(0u, 6u)]), u_input.c.x, _wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.b.x, 1u, 4180u), vec4<u32>(u_input.c.x, 0u, 33663u, 119499u)), func_4(Struct_2(Struct_1(false, -11639i, global1[_wgslsmith_index_u32(4294967295u, 6u)]), u_input.d, vec4<u32>(21567u, 13132u, u_input.d, u_input.a), true, u_input.c)).a.a, ~u_input.c)).a, max(u_input.e, ~(~u_input.c.x)), vec4<u32>(1u, u_input.b.x, _wgslsmith_div_u32(u_input.b.x, max(u_input.e, u_input.c.x)), 4302u), false, ~vec3<u32>(~u_input.e, countOneBits(u_input.b.x), u_input.c.x)), 0i);
    let var_1 = select(select(vec3<bool>(~var_0.a.b <= var_0.a.b, _wgslsmith_dot_vec4_u32(var_0.c, vec4<u32>(16228u, var_0.c.x, 4294967295u, 9554u)) == 1u, var_0.d), !(!(!vec3<bool>(false, false, var_0.a.a))), !select(!vec3<bool>(var_0.d, var_0.a.a, var_0.d), vec3<bool>(true, false, false), var_0.a.c <= -898f)), select(select(select(!vec3<bool>(true, var_0.a.a, true), select(vec3<bool>(false, var_0.a.a, false), vec3<bool>(false, var_0.a.a, false), vec3<bool>(false, var_0.a.a, var_0.a.a)), false), select(select(vec3<bool>(false, true, var_0.a.a), vec3<bool>(var_0.a.a, var_0.a.a, true), vec3<bool>(var_0.d, var_0.d, var_0.d)), vec3<bool>(false, var_0.d, true), vec3<bool>(var_0.a.a, false, var_0.a.a)), var_0.a.a), select(vec3<bool>(var_0.d, var_0.d, !var_0.d), select(!vec3<bool>(true, false, var_0.a.a), !vec3<bool>(var_0.a.a, var_0.a.a, var_0.d), !var_0.a.a), true), select(select(vec3<bool>(var_0.d, true, true), !vec3<bool>(var_0.a.a, var_0.d, var_0.d), false), !vec3<bool>(var_0.d, true, var_0.a.a), select(select(vec3<bool>(true, var_0.d, true), vec3<bool>(var_0.d, var_0.d, true), vec3<bool>(var_0.a.a, var_0.a.a, var_0.d)), !vec3<bool>(false, var_0.a.a, var_0.a.a), var_0.d))), select(vec3<bool>(!any(vec2<bool>(var_0.a.a, var_0.a.a)), func_2().a & var_0.a.a, (false == var_0.a.a) && !var_0.a.a), !select(!vec3<bool>(true, var_0.a.a, false), select(vec3<bool>(false, var_0.a.a, var_0.d), vec3<bool>(true, var_0.a.a, true), var_0.a.a), var_0.a.a), true));
    var_0 = Struct_2(var_0.a, abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 0u, var_0.c.x, 26797u), ~(~var_0.c))), ~reverseBits(firstLeadingBit(min(var_0.c, var_0.c))), select(false, var_0.a.a, true), abs(u_input.c) & vec3<u32>(u_input.e, var_0.e.x, ~_wgslsmith_sub_u32(var_0.c.x, u_input.a)));
    global1 = array<f32, 6>();
    var var_2 = Struct_3(select(!select(select(vec4<bool>(true, true, false, var_0.a.a), vec4<bool>(var_0.d, false, var_0.d, var_0.d), var_0.a.a), select(vec4<bool>(false, false, false, var_1.x), vec4<bool>(false, true, false, false), vec4<bool>(var_1.x, true, var_1.x, var_0.a.a)), func_4(Struct_2(var_0.a, u_input.c.x, vec4<u32>(u_input.b.x, u_input.b.x, 15688u, 3856u), var_1.x, u_input.c)).a.a), select(!(!vec4<bool>(false, var_0.d, var_1.x, false)), !(!vec4<bool>(false, true, true, var_1.x)), any(var_1.yx)), u_input.c.x <= _wgslsmith_mod_u32(~u_input.d, u_input.b.x & 13117u)), vec3<bool>(func_5(func_4(Struct_2(Struct_1(var_0.a.a, 2147483647i, global1[_wgslsmith_index_u32(12633u, 6u)]), 30504u, vec4<u32>(4294967295u, 4294967295u, u_input.c.x, 0u), var_0.d, vec3<u32>(u_input.d, 59399u, 78047u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.c, -1635f, -1000f) - vec3<f32>(global1[_wgslsmith_index_u32(18223u, 6u)], var_0.a.c, 1462f))), func_5(Struct_4(Struct_1(var_1.x, 0i, -1938f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1169f, -1123f, -939f) + vec3<f32>(-1000f, -2125f, 1082f)), func_5(Struct_4(Struct_1(var_0.d, var_0.a.b, -380f)), vec3<f32>(global1[_wgslsmith_index_u32(u_input.d, 6u)], var_0.a.c, 963f), Struct_2(Struct_1(var_1.x, 0i, 1000f), var_0.b, vec4<u32>(u_input.b.x, u_input.a, 7716u, 41592u), false, vec3<u32>(71442u, 18096u, 24444u)), var_0.a.b), 1i), -1i).d, var_0.d, func_5(Struct_4(var_0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.a.c, var_0.a.c, -1067f), vec3<f32>(-607f, global1[_wgslsmith_index_u32(135162u, 6u)], 1000f)))), func_5(Struct_4(var_0.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.c, 442f, 404f)), func_5(Struct_4(Struct_1(var_1.x, 0i, global1[_wgslsmith_index_u32(0u, 6u)])), vec3<f32>(-882f, -1698f, var_0.a.c), Struct_2(Struct_1(var_0.d, 18576i, -538f), 17326u, vec4<u32>(40350u, 1u, 51939u, var_0.b), var_1.x, vec3<u32>(1u, 4294967295u, 24065u)), var_0.a.b), 1i), 1i).a.a), var_1.x);
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 6>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-396f, global1[_wgslsmith_index_u32(~u_input.b.x, 6u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, abs(0u), u_input.a, 1u), vec4<u32>(u_input.d << (u_input.a % 32u), ~u_input.e, ~0u, u_input.a)), 6u)]));
    let var_1 = vec3<bool>(!(func_1() && true) || !(any(vec3<bool>(true, true, false)) | true), global1[_wgslsmith_index_u32(4294967295u >> (firstTrailingBit(4294967295u) % 32u), 6u)] <= _wgslsmith_f_op_f32(-func_4(Struct_2(Struct_1(false, -47814i, 989f), u_input.c.x, vec4<u32>(u_input.b.x, u_input.b.x, u_input.d, u_input.c.x), false, u_input.c)).a.c), func_1());
    var var_2 = Struct_1(var_1.x, firstLeadingBit(~1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), 433f))))));
    let var_3 = vec4<bool>(any(select(select(vec4<bool>(false, false, var_2.a, true), select(vec4<bool>(var_2.a, var_2.a, var_1.x, var_1.x), vec4<bool>(false, var_2.a, var_1.x, true), vec4<bool>(false, var_2.a, true, var_1.x)), var_1.x), vec4<bool>(any(vec2<bool>(false, var_2.a)), all(var_1.xz), all(vec3<bool>(var_2.a, false, true)), true), select(!vec4<bool>(var_2.a, var_1.x, var_1.x, false), select(vec4<bool>(var_1.x, false, var_2.a, false), vec4<bool>(var_1.x, false, false, var_2.a), var_1.x), var_1.x))), false, !var_1.x, var_1.x);
    var var_4 = var_1.xx;
    let x = u_input.a;
    s_output = StorageBuffer(min(u_input.e, 1u), -_wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_2.b, var_2.b), ~vec3<i32>(var_2.b, var_2.b, 8721i)) << (~max(~u_input.e, u_input.b.x) % 32u), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c, var_2.c, 773f, -2242f) - vec4<f32>(var_0.x, var_0.x, 1000f, 430f)) - vec4<f32>(1026f, global1[_wgslsmith_index_u32(u_input.e, 6u)], 861f, global1[_wgslsmith_index_u32(3123u, 6u)]))))));
}

