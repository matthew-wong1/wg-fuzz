struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18>;

var<private> global1: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(Struct_1(vec2<bool>(true, true))), Struct_2(Struct_1(vec2<bool>(true, true))), Struct_2(Struct_1(vec2<bool>(false, false))), Struct_2(Struct_1(vec2<bool>(true, true))), Struct_2(Struct_1(vec2<bool>(false, true))), Struct_2(Struct_1(vec2<bool>(false, true))), Struct_2(Struct_1(vec2<bool>(true, true))), Struct_2(Struct_1(vec2<bool>(true, false))), Struct_2(Struct_1(vec2<bool>(false, true))), Struct_2(Struct_1(vec2<bool>(true, true))), Struct_2(Struct_1(vec2<bool>(true, false))), Struct_2(Struct_1(vec2<bool>(true, true))), Struct_2(Struct_1(vec2<bool>(false, false))), Struct_2(Struct_1(vec2<bool>(true, true))), Struct_2(Struct_1(vec2<bool>(true, false))), Struct_2(Struct_1(vec2<bool>(false, false))), Struct_2(Struct_1(vec2<bool>(false, true))), Struct_2(Struct_1(vec2<bool>(false, false))), Struct_2(Struct_1(vec2<bool>(true, true))), Struct_2(Struct_1(vec2<bool>(true, true))), Struct_2(Struct_1(vec2<bool>(false, false))), Struct_2(Struct_1(vec2<bool>(false, true))), Struct_2(Struct_1(vec2<bool>(false, true))), Struct_2(Struct_1(vec2<bool>(true, true))), Struct_2(Struct_1(vec2<bool>(true, false))));

var<private> global2: array<vec4<u32>, 24> = array<vec4<u32>, 24>(vec4<u32>(70073u, 1u, 8704u, 18714u), vec4<u32>(152u, 17404u, 6883u, 38370u), vec4<u32>(1u, 62434u, 4294967295u, 3105u), vec4<u32>(58957u, 1u, 1u, 43153u), vec4<u32>(3216u, 30125u, 1u, 21466u), vec4<u32>(90256u, 46550u, 29966u, 0u), vec4<u32>(63555u, 25156u, 128931u, 120912u), vec4<u32>(29055u, 4294967295u, 22408u, 0u), vec4<u32>(4294967295u, 6943u, 120699u, 4012u), vec4<u32>(1u, 64858u, 5887u, 0u), vec4<u32>(4294967295u, 45680u, 4294967295u, 1u), vec4<u32>(27060u, 0u, 6416u, 39287u), vec4<u32>(0u, 96411u, 17109u, 1u), vec4<u32>(0u, 11229u, 0u, 6873u), vec4<u32>(54573u, 2213u, 31405u, 10428u), vec4<u32>(8899u, 16125u, 1u, 21555u), vec4<u32>(4294967295u, 1u, 1u, 50267u), vec4<u32>(4294967295u, 0u, 5757u, 4294967295u), vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(1u, 31590u, 18386u, 36413u), vec4<u32>(16994u, 21381u, 0u, 1u), vec4<u32>(1759u, 0u, 0u, 23035u), vec4<u32>(1u, 45170u, 4294967295u, 1u), vec4<u32>(0u, 0u, 1u, 5922u));

var<private> global3: array<Struct_1, 24>;

var<private> global4: Struct_2 = Struct_2(Struct_1(vec2<bool>(false, false)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: bool) -> f32 {
    var var_0 = u_input.a.zz;
    global1 = array<Struct_2, 25>();
    global3 = array<Struct_1, 24>();
    let var_1 = !select(!select(select(global4.a.a, vec2<bool>(arg_1, false), true), !vec2<bool>(arg_1, false), !global4.a.a), global4.a.a, !select(global4.a.a, global4.a.a, global4.a.a));
    var var_2 = global1[_wgslsmith_index_u32(1u, 25u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -442f) + _wgslsmith_f_op_f32(select(309f, _wgslsmith_f_op_f32(ceil(arg_0)), true))) + -1879f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))));
}

fn func_2(arg_0: vec4<u32>) -> vec2<bool> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1429f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -971f)))), _wgslsmith_f_op_f32(ceil(-100f)), _wgslsmith_f_op_f32(func_3(_wgslsmith_div_f32(-456f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -260f)), true | select(true, u_input.c != arg_0.x, global0[_wgslsmith_index_u32(reverseBits(4294967295u), 18u)]))));
    global1 = array<Struct_2, 25>();
    var var_1 = arg_0.yx;
    global4 = global1[_wgslsmith_index_u32(0u, 25u)];
    var var_2 = firstLeadingBit(_wgslsmith_mult_i32(u_input.d, _wgslsmith_sub_i32(2147483647i, u_input.a.x)));
    return !vec2<bool>(!(!global4.a.a.x), false);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = i32(-1i) * -1i;
    let var_1 = Struct_1(!(!select(!arg_2.a, func_2(vec4<u32>(10508u, u_input.e, u_input.c, arg_1.x)), true)));
    let var_2 = -1112f;
    let var_3 = vec2<bool>(global0[_wgslsmith_index_u32(8924u, 18u)], true);
    let var_4 = select(~firstLeadingBit(countOneBits(vec4<u32>(u_input.e, u_input.c, 0u, u_input.c))), select(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_1.x, arg_1.x), ~u_input.e), arg_1.x >> (arg_1.x % 32u), 1u, min(1u, 4294967295u)), global2[_wgslsmith_index_u32(46323u, 24u)], arg_0.a.a.x), !vec4<bool>(true, !arg_3.a.x, false, true));
    return _wgslsmith_f_op_f32(select(444f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-192f - var_2), var_2)), var_2)), any(vec2<bool>(true, !global0[_wgslsmith_index_u32(~var_4.x, 18u)]))));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: vec3<i32>, arg_3: vec4<f32>) -> StorageBuffer {
    let var_0 = any(global4.a.a);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(arg_3.yyy * vec3<f32>(736f, _wgslsmith_f_op_f32(max(-547f, -1196f)), _wgslsmith_f_op_f32(2102f + arg_3.x))))));
    global2 = array<vec4<u32>, 24>();
    global0 = array<bool, 18>();
    var var_2 = Struct_2(global4.a);
    return StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-942f - -1000f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - arg_3.x) - 1634f), arg_3.x)))), firstTrailingBit(-(~arg_2)), max(~(~(~vec2<u32>(0u, u_input.c))), ~vec2<u32>(u_input.c, 18475u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(-1i, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, ~u_input.e, 57167u), 18u)], -vec3<i32>(-28760i, _wgslsmith_mod_i32(52976i, -2147483647i), ~(u_input.a.x ^ 15566i)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(abs(u_input.e), 25u)], abs(vec4<u32>(u_input.e, 53750u, 1u, 16289u)), global4.a, global4.a)), 231f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-610f, -107f, true))), _wgslsmith_f_op_f32(-816f + _wgslsmith_f_op_f32(round(1000f)))))));
}

