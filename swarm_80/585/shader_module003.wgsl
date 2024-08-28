struct Struct_1 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

var<private> global1: array<bool, 31> = array<bool, 31>(true, true, true, true, false, false, true, true, true, true, false, true, true, true, true, true, false, false, false, false, true, true, false, true, true, false, true, true, false, false, false);

var<private> global2: array<Struct_1, 4>;

var<private> global3: array<vec3<i32>, 16>;

var<private> global4: array<Struct_1, 26>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f))) + 1114f);
    let var_1 = _wgslsmith_div_vec3_i32(global3[_wgslsmith_index_u32(firstLeadingBit(~1u), 16u)], _wgslsmith_add_vec3_i32(min(firstTrailingBit(vec3<i32>(u_input.a, -1i, u_input.a)), (global3[_wgslsmith_index_u32(4294967295u, 16u)] >> (vec3<u32>(4294967295u, 4294967295u, 0u) % vec3<u32>(32u))) ^ vec3<i32>(1i, arg_0.a, 2792i)), -_wgslsmith_clamp_vec3_i32(global3[_wgslsmith_index_u32(24168u, 16u)], vec3<i32>(0i, u_input.a, u_input.a), global3[_wgslsmith_index_u32(5393u, 16u)]) | global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(0u, 1u), 16u)]));
    global4 = array<Struct_1, 26>();
    global1 = array<bool, 31>();
    var var_2 = Struct_1(firstLeadingBit(var_1.x), reverseBits(47014i));
    return Struct_1(-abs(~1i), u_input.a);
}

fn func_3() -> Struct_1 {
    var var_0 = global4[_wgslsmith_index_u32(11052u, 26u)];
    var var_1 = global0[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(min(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(65431u, 17947u), vec2<u32>(1653u, 22054u)), max(54306u, 41886u)), max(max(0u, 68332u), 68715u)), 4294967295u)), 13u)];
    var var_2 = global2[_wgslsmith_index_u32(17992u, 4u)];
    let var_3 = select(vec4<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-430f, -1244f)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -828f)), true, 1i <= func_2(Struct_1(-6683i, 1i)).b, false), vec4<bool>(any(select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(37677u, 31u)], true), select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(0u, 31u)], false, global1[_wgslsmith_index_u32(7723u, 31u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 31u)], false, false), global1[_wgslsmith_index_u32(1u, 31u)]), vec4<bool>(global1[_wgslsmith_index_u32(87719u, 31u)], global1[_wgslsmith_index_u32(8850u, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(59686u, 31u)]))), true, false, false), select(!any(vec3<bool>(false, true, false)), all(select(vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 31u)], true, global1[_wgslsmith_index_u32(0u, 31u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(24646u, 31u)], false, true, false), vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(20395u, 31u)], true), vec4<bool>(global1[_wgslsmith_index_u32(17176u, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(9357u, 31u)], global1[_wgslsmith_index_u32(46857u, 31u)])), global1[_wgslsmith_index_u32(~50607u, 31u)])), true));
    let var_4 = vec4<u32>(1u << (firstLeadingBit(select(50080u, 2848u, true)) % 32u), select(~1u, _wgslsmith_add_u32(4294967295u, _wgslsmith_clamp_u32(47892u, 7590u, 4294967295u)) >> (1u % 32u), !var_3.x), _wgslsmith_sub_u32(1u, ~select(1u, reverseBits(10087u), false)), ~max(9615u, ~0u));
    return func_2(Struct_1(-2147483647i ^ u_input.a, ~(-2147483647i)));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec4<f32>) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(firstTrailingBit(reverseBits(1u)), 13u)];
    global0 = array<Struct_1, 13>();
    let var_1 = 42483i;
    var var_2 = func_2(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(firstLeadingBit(~vec3<u32>(821u, 1u, 0u)), ~(~vec3<u32>(0u, 1u, 1u))), 13u)]);
    var var_3 = func_3();
    return _wgslsmith_mod_u32(_wgslsmith_div_u32(firstTrailingBit(1u) >> (_wgslsmith_mult_u32(0u, 4294967295u) % 32u), 1u), ~1u) >> (abs(0u) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(func_1(_wgslsmith_f_op_f32(1f - -769f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1181f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1054f - -589f), -758f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(516f, 508f, -453f, 773f), vec4<f32>(936f, -494f, -1000f, -789f))) * vec4<f32>(-828f, 1000f, 673f, 200f)))), 0u, abs(1u));
    let var_1 = func_2(global0[_wgslsmith_index_u32(var_0.x, 13u)]);
    global3 = array<vec3<i32>, 16>();
    global0 = array<Struct_1, 13>();
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(min(min(countOneBits(4294967295u), 4294967295u), var_0.x), reverseBits(~_wgslsmith_add_u32(var_0.x, ~0u))), 13u)];
    global0 = array<Struct_1, 13>();
    global4 = array<Struct_1, 26>();
    let var_3 = func_3();
    let var_4 = vec2<i32>(firstLeadingBit(_wgslsmith_clamp_i32(~var_1.a & -1i, -1i, firstTrailingBit(-2147483647i))), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, var_3.a), vec2<i32>(-10798i, var_3.b)), vec2<i32>(0i, var_1.b)), 2147483647i, 37113i), firstLeadingBit(~abs(vec3<i32>(-2147483647i, -17500i, var_1.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(0i, _wgslsmith_div_i32(-(~(-2147483647i)), var_3.b)), var_4.x, vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u << (var_0.x % 32u), var_0.x ^ var_0.x, var_0.x), var_0), ~((var_0.x | 4294967295u) | (84627u | var_0.x)), 4294967295u), ~1i);
}

