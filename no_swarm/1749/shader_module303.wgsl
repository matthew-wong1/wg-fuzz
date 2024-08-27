struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 10> = array<vec2<bool>, 10>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true));

var<private> global1: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> u32 {
    let var_0 = false;
    global0 = array<vec2<bool>, 10>();
    var var_1 = Struct_1(all(vec2<bool>(true, ~u_input.c > ~1i)), all(select(!vec3<bool>(var_0, var_0, true), select(!vec3<bool>(global1.a, false, var_0), select(vec3<bool>(global1.c, global1.c, true), vec3<bool>(global1.b, var_0, false), var_0), any(global0[_wgslsmith_index_u32(global1.d, 10u)])), !(!vec3<bool>(var_0, var_0, global1.b)))), any(select(select(select(vec2<bool>(global1.b, var_0), vec2<bool>(global1.a, true), global0[_wgslsmith_index_u32(11867u, 10u)]), global0[_wgslsmith_index_u32(~0u, 10u)], true), select(select(global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(78706u, 10u)], true), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, global1.d, global1.d, 94537u), u_input.b), 10u)], all(vec3<bool>(var_0, true, false))), select(select(global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(0u, 10u)], false), global0[_wgslsmith_index_u32(u_input.e | u_input.a, 10u)], global0[_wgslsmith_index_u32(1u, 10u)]))), 4294967295u, 1045f);
    var var_2 = Struct_1(!(!var_0), all(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.d, 1u), reverseBits(vec2<u32>(4294967295u, 2548u))), var_1.d), 10u)]), true, _wgslsmith_mult_u32(reverseBits(~(~0u)), ~0u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(global1.e, var_1.e, var_1.a)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_1.e, 1000f)))))))));
    var var_3 = !(!vec4<bool>(false, all(global0[_wgslsmith_index_u32(var_1.d, 10u)]), !all(vec3<bool>(global1.b, var_1.c, true)), true));
    return _wgslsmith_sub_u32(global1.d, select(abs(var_1.d), ~abs(global1.d), !any(var_3.ywx)));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec3<i32>) -> bool {
    var var_0 = _wgslsmith_div_i32(abs(74392i), -1i);
    let var_1 = max(select(_wgslsmith_mult_u32(~abs(u_input.b.x), arg_0.d), 0u << (arg_0.d % 32u), !all(select(vec3<bool>(global1.c, true, true), vec3<bool>(true, arg_0.c, arg_0.c), vec3<bool>(arg_0.b, global1.a, arg_0.c)))), 33156u);
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e) + 111f)));
    global0 = array<vec2<bool>, 10>();
    var var_3 = 1i >> (global1.d % 32u);
    return all(select(!vec3<bool>(true, arg_0.d > 4294967295u, 2147483647i > arg_2.x), !select(!vec3<bool>(false, false, global1.a), select(vec3<bool>(global1.b, global1.b, global1.c), vec3<bool>(global1.a, false, global1.b), vec3<bool>(false, arg_0.a, arg_0.a)), global1.a | false), select(vec3<bool>(arg_0.a, true, true), select(vec3<bool>(false, true, arg_0.c), !vec3<bool>(false, true, global1.c), global1.a), vec3<bool>(all(vec3<bool>(global1.c, arg_0.a, false)), !arg_0.b, arg_2.x != arg_2.x))));
}

fn func_2() -> Struct_1 {
    global0 = array<vec2<bool>, 10>();
    var var_0 = Struct_1(global1.a, true, firstLeadingBit(firstTrailingBit(83533u & u_input.b.x)) < _wgslsmith_sub_u32(_wgslsmith_mult_u32(reverseBits(34367u), global1.d), ~44892u), 16650u, global1.e);
    var_0 = Struct_1(global1.b, 43762u > (~var_0.d << (var_0.d % 32u)), func_4(Struct_1(false, false, false, min(u_input.b.x, 25507u) & func_3(), var_0.e), max(reverseBits(_wgslsmith_div_i32(u_input.c, 34937i)), -2147483647i), _wgslsmith_div_vec3_i32(~max(vec3<i32>(-1i, u_input.c, 2147483647i), vec3<i32>(-9876i, 0i, u_input.c)), ~(vec3<i32>(-1i, -30305i, 53912i) ^ vec3<i32>(12708i, u_input.c, u_input.c)))), 1u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(trunc(var_0.e))))));
    var var_1 = ~(1u >> (0u % 32u));
    var_1 = 0u;
    return Struct_1(global1.c, global1.a, !(all(global0[_wgslsmith_index_u32(global1.d, 10u)]) && true) & any(!global0[_wgslsmith_index_u32(~1u, 10u)]), global1.d, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-833f - 359f))));
}

fn func_5(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(round(-410f));
    var var_1 = ~(-(max(vec2<i32>(u_input.c, 1i), vec2<i32>(u_input.c, -1i)) | select(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, -15034i), true)) & vec2<i32>(16677i, u_input.c));
    global1 = func_2();
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1283f), global1.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.e)), -698f));
    let var_3 = _wgslsmith_add_u32(min(u_input.a, 1u), 4294967295u);
    return abs(global1.d);
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> Struct_1 {
    var var_0 = u_input.b.zw ^ u_input.b.wz;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1698f, global1.e))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-2035f, -2008f) + vec2<f32>(-1962f, -315f))))));
    global1 = Struct_1(func_4(Struct_1(!arg_0.a, arg_1 >= 0u, global1.c, var_0.x, -186f), 2147483647i, select(~vec3<i32>(2147483647i, -1i, u_input.c), ~vec3<i32>(-2147483647i, u_input.c, -15114i), true)) && false, any(!vec2<bool>(true, arg_0.a)), !any(!(!vec3<bool>(global1.c, global1.c, global1.a))), _wgslsmith_sub_u32(var_0.x, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_2, arg_2, arg_0.a)))) + arg_2)));
    var var_2 = arg_0;
    var_0 = reverseBits(reverseBits(vec2<u32>(func_2().d, ~0u))) ^ ((_wgslsmith_div_vec2_u32(firstLeadingBit(u_input.b.zy), vec2<u32>(u_input.d, global1.d)) ^ vec2<u32>(var_2.d >> (arg_1 % 32u), global1.d)) >> ((u_input.b.xz | u_input.b.zy) % vec2<u32>(32u)));
    return func_2();
}

fn func_1() -> Struct_1 {
    global1 = func_6(Struct_1(false, !(false && global1.c), global1.a, func_5(vec3<f32>(-1000f, global1.e, 706f), ~u_input.e, func_2(), global1.e), -254f), u_input.a, global1.e);
    global0 = array<vec2<bool>, 10>();
    var var_0 = func_6(func_6(func_6(Struct_1(true, true, global1.a, _wgslsmith_dot_vec3_u32(vec3<u32>(26253u, global1.d, 4294967295u), u_input.b.yxy), _wgslsmith_f_op_f32(global1.e - global1.e)), _wgslsmith_dot_vec4_u32(firstTrailingBit(u_input.b), ~u_input.b), 2247f), u_input.e, global1.e), 27925u, -119f);
    let var_1 = func_6(Struct_1(!(_wgslsmith_sub_u32(36629u, u_input.b.x) <= 1u), !global1.b, false, func_5(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-646f, var_0.e, global1.e))))), firstTrailingBit(4294967295u), func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1443f) + _wgslsmith_f_op_f32(-global1.e))), global1.e), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(72855u, var_0.d & var_0.d, _wgslsmith_sub_u32(u_input.e, var_0.d), func_2().d)), vec4<u32>(~1u, _wgslsmith_add_u32(var_0.d, var_0.d), u_input.b.x, ~(~1u))), func_2().e);
    var var_2 = ~_wgslsmith_mod_vec2_i32(select(-vec2<i32>(u_input.c, -34787i), firstTrailingBit(-vec2<i32>(u_input.c, 1i)), false), vec2<i32>(~u_input.c, -2147483647i) & countOneBits(max(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, 1i))));
    return Struct_1(var_0.b, var_0.c, false & !var_1.a, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.b.x ^ 12573u, 0u << (var_1.d % 32u)), 1u), ~0u, var_0.d), _wgslsmith_f_op_f32(var_0.e - var_1.e));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 10>();
    let var_0 = 795f;
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-823f))))));
    var var_2 = u_input.b.xyz;
    global1 = func_1();
    let var_3 = global1.a;
    var var_4 = vec4<u32>(~_wgslsmith_mult_u32(~(~1u), u_input.d), 4294967295u, 1u, reverseBits(0u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1324f, -1000f, 365f, var_1) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.e, var_0, var_0, 1464f) * vec4<f32>(-1000f, var_1, var_1, -1539f)))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(min(global1.e, global1.e)), global1.e, _wgslsmith_f_op_f32(trunc(-979f)), var_0)))), ~_wgslsmith_mult_vec2_i32(vec2<i32>(3003i, u_input.c), reverseBits(vec2<i32>(u_input.c, u_input.c))) ^ vec2<i32>(u_input.c, min(0i, -u_input.c)));
}

