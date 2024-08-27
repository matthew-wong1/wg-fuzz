struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 29>;

var<private> global1: bool;

var<private> global2: array<bool, 17>;

var<private> global3: f32 = -2702f;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_2) -> vec3<bool> {
    let var_0 = u_input.e;
    let var_1 = -1107f;
    let var_2 = arg_2;
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(var_1, var_1), -754f, _wgslsmith_f_op_f32(f32(-1f) * -1110f), -1652f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, var_1, arg_1.x)), _wgslsmith_div_vec4_f32(vec4<f32>(846f, -875f, arg_1.x, arg_1.x), vec4<f32>(1519f, arg_1.x, arg_1.x, var_1))))))));
    let var_4 = all(select(vec4<bool>(any(select(arg_2.a.yy, vec2<bool>(arg_0.d, false), false)), !var_2.a.x, true, true), select(vec4<bool>(true, all(vec2<bool>(arg_2.a.x, true)), any(vec2<bool>(var_2.a.x, arg_0.c.a.x)), false), vec4<bool>(global2[_wgslsmith_index_u32(18524u, 17u)] | arg_2.a.x, false, arg_0.c.a.x, true), vec4<bool>(false, arg_2.a.x, true, select(arg_0.d, var_2.a.x, false))), vec4<bool>(all(vec2<bool>(false, false)), true, !(!var_2.a.x), false | global2[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.b.a.x, 10506u), 17u)])));
    return select(arg_2.a, vec3<bool>(true, all(select(vec4<bool>(false, true, arg_2.a.x, var_4), vec4<bool>(true, arg_0.c.a.x, global2[_wgslsmith_index_u32(1u, 17u)], arg_0.c.a.x), true)), all(!arg_2.a.xz) | any(vec2<bool>(false, false))), _wgslsmith_f_op_f32(-1000f + 1293f) > var_1);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: vec3<f32>) -> bool {
    global1 = global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(4997u, 96473u), 22255u >> (~(u_input.d & arg_1.x) % 32u)), 17u)];
    let var_0 = Struct_2(func_3(Struct_3(14523u, Struct_1(~arg_1), Struct_2(vec3<bool>(global2[_wgslsmith_index_u32(1u, 17u)], global2[_wgslsmith_index_u32(arg_1.x, 17u)], false)), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2 + _wgslsmith_f_op_vec3_f32(-arg_0)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1546f, 591f, arg_2.x), vec3<f32>(arg_2.x, arg_2.x, arg_0.x)))), Struct_2(select(select(vec3<bool>(global2[_wgslsmith_index_u32(arg_1.x, 17u)], global2[_wgslsmith_index_u32(182u, 17u)], false), vec3<bool>(true, true, false), vec3<bool>(global2[_wgslsmith_index_u32(0u, 17u)], false, true)), vec3<bool>(global2[_wgslsmith_index_u32(arg_1.x, 17u)], global2[_wgslsmith_index_u32(1u, 17u)], global2[_wgslsmith_index_u32(1u, 17u)]), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(73378u, u_input.c.x), u_input.e.xy), 17u)]))));
    global2 = array<bool, 17>();
    let var_1 = global0[_wgslsmith_index_u32(abs(u_input.c.x) >> (~(arg_1.x >> (~(~u_input.d) % 32u)) % 32u), 29u)];
    var var_2 = var_0;
    return false;
}

fn func_1(arg_0: vec4<i32>, arg_1: bool, arg_2: u32, arg_3: i32) -> vec2<bool> {
    global1 = arg_1;
    let var_0 = arg_1;
    global1 = any(select(vec3<bool>(!(u_input.c.x >= 64148u), !var_0, arg_1), vec3<bool>(func_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1093f, 226f, 706f))), vec3<u32>(0u, u_input.c.x, arg_2), vec3<f32>(730f, 114f, -1165f)), func_2(vec3<f32>(-448f, 454f, -343f), u_input.e, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1000f, -716f))), false), global2[_wgslsmith_index_u32(4294967295u, 17u)]));
    global2 = array<bool, 17>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2116f)));
    return vec2<bool>(var_0, func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1359f, 548f, _wgslsmith_f_op_f32(-var_1))), ~_wgslsmith_sub_vec3_u32(min(vec3<u32>(0u, u_input.c.x, u_input.e.x), vec3<u32>(arg_2, arg_2, arg_2)), vec3<u32>(32201u, u_input.c.x, 32336u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-897f, var_1, var_1)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-312f, 482f, var_1))) + vec3<f32>(_wgslsmith_f_op_f32(ceil(var_1)), _wgslsmith_f_op_f32(f32(-1f) * -555f), _wgslsmith_f_op_f32(var_1 - var_1)))));
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_2(arg_2);
    var var_1 = -360i;
    let var_2 = 25472u;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-513f, _wgslsmith_f_op_f32(f32(-1f) * -2458f)));
    var var_4 = ~firstTrailingBit(-vec3<i32>(_wgslsmith_mod_i32(0i, -14890i), firstTrailingBit(-29588i), reverseBits(u_input.b)));
    return Struct_2(arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(false, select(!vec2<bool>(true, global2[_wgslsmith_index_u32(27194u >> (u_input.d % 32u), 17u)]), vec2<bool>(global2[_wgslsmith_index_u32(68578u, 17u)], all(func_1(vec4<i32>(0i, 0i, -1i, 11429i), global2[_wgslsmith_index_u32(u_input.e.x, 17u)], 4294967295u, 0i))), true), vec3<bool>(any(select(func_3(Struct_3(19405u, Struct_1(vec3<u32>(u_input.c.x, 0u, u_input.e.x)), Struct_2(vec3<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 17u)], false)), false), vec3<f32>(1344f, -1000f, -378f), Struct_2(vec3<bool>(false, true, true))).xy, !vec2<bool>(global2[_wgslsmith_index_u32(u_input.d, 17u)], true), all(vec4<bool>(false, true, global2[_wgslsmith_index_u32(97272u, 17u)], false)))), true | !any(vec4<bool>(true, true, global2[_wgslsmith_index_u32(39512u, 17u)], global2[_wgslsmith_index_u32(0u, 17u)])), !(!(!global2[_wgslsmith_index_u32(u_input.e.x, 17u)]))));
    var var_1 = _wgslsmith_dot_vec3_u32(~select(select(u_input.e, max(u_input.e, vec3<u32>(u_input.d, 12098u, u_input.e.x)), !var_0.a), u_input.e, true), vec3<u32>(_wgslsmith_dot_vec4_u32(abs(abs(vec4<u32>(98489u, 0u, u_input.e.x, u_input.c.x))), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.e.x, 1u, u_input.e.x, u_input.d) >> (vec4<u32>(1u, 9925u, u_input.e.x, 14216u) % vec4<u32>(32u)), ~vec4<u32>(u_input.d, 1u, 4294967295u, u_input.c.x))), u_input.e.x, reverseBits(_wgslsmith_add_u32(min(28790u, 981u), firstLeadingBit(1u)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(100f)), -1876f)))));
    let var_3 = Struct_3(u_input.e.x, Struct_1(countOneBits(~(vec3<u32>(u_input.d, 11653u, 1615u) << (u_input.e % vec3<u32>(32u))))), Struct_2(!select(func_3(Struct_3(u_input.c.x, Struct_1(u_input.e), Struct_2(vec3<bool>(false, var_0.a.x, var_0.a.x)), false), vec3<f32>(var_2.x, 2927f, var_2.x), Struct_2(var_0.a)), vec3<bool>(false, var_0.a.x, var_0.a.x), !var_0.a)), (false | (true | var_0.a.x)) & (func_4(global2[_wgslsmith_index_u32(~4294967295u, 17u)], vec2<bool>(var_0.a.x, var_0.a.x), var_0.a).a.x | !any(var_0.a.xx)));
    var_0 = var_3.c;
    let var_4 = _wgslsmith_f_op_f32(abs(var_2.x));
    var var_5 = vec2<bool>(!(!global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_3.a, _wgslsmith_mod_u32(u_input.c.x, var_3.b.a.x), var_3.b.a.x), 17u)]), false);
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(firstLeadingBit(select(~1u, _wgslsmith_mult_u32(1u, ~44048u), true)), 29u)], var_3.b.a.yz, var_3.b.a, _wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.b, ~_wgslsmith_add_i32(-2147483647i, 12348i)), countOneBits(firstLeadingBit(u_input.b << (var_3.b.a.x % 32u)))));
}

