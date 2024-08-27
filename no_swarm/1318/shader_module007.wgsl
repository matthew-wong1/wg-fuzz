struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: u32,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32> = array<f32, 32>(2911f, -984f, -1137f, 1409f, 1775f, -1868f, 1000f, 447f, 410f, -384f, -550f, 342f, 340f, -2003f, -174f, 493f, -811f, -1003f, 146f, 450f, 1366f, -1330f, 1389f, -1534f, 1039f, -667f, -287f, 224f, -264f, -856f, -584f, -1174f);

var<private> global1: vec3<f32> = vec3<f32>(-702f, -1000f, -2545f);

var<private> global2: i32;

var<private> global3: i32 = 0i;

var<private> global4: array<f32, 21> = array<f32, 21>(-1315f, 418f, -641f, -203f, -1366f, 1094f, 1000f, -761f, 918f, 997f, 1483f, 1359f, -1672f, -763f, -727f, -331f, 531f, -1778f, -143f, 550f, 1228f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>) -> vec2<f32> {
    let var_0 = global0[_wgslsmith_index_u32(3958u, 32u)];
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(~0u & u_input.b.x, 32u)]))));
    let var_2 = _wgslsmith_add_u32(29970u, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(10957u, 2180u, 4294967295u), select(vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), vec3<u32>(u_input.b.x, 19096u, 0u), arg_1.wyx))));
    let var_3 = _wgslsmith_sub_i32(0i, 0i);
    var var_4 = vec4<u32>(~(~(~firstLeadingBit(11703u))), 4294967295u, 1u, u_input.b.x);
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(0u, 32u)]))) * global0[_wgslsmith_index_u32(1u, 32u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_2, 36995u), 32u)])))));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> u32 {
    let var_0 = -392f;
    var var_1 = _wgslsmith_f_op_vec2_f32(func_3(Struct_2(false, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(~4294967295u, 21u)])), !(!vec4<bool>(arg_1.b, false, true, -2147483647i <= arg_1.c))));
    global4 = array<f32, 21>();
    var var_2 = ~(~(_wgslsmith_sub_u32(24456u, u_input.b.x) << (~4294967295u % 32u)) >> (_wgslsmith_sub_u32(_wgslsmith_clamp_u32(0u, reverseBits(u_input.b.x), ~7843u), 4294967295u) % 32u));
    let var_3 = _wgslsmith_clamp_vec2_i32(countOneBits(_wgslsmith_mod_vec2_i32(abs(-vec2<i32>(u_input.a.x, u_input.a.x)), vec2<i32>(-15432i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, arg_1.c, 2147483647i), vec3<i32>(-1i, 0i, u_input.a.x))))), vec2<i32>(0i, ~_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.c, arg_1.c, arg_1.c, arg_1.a), vec4<i32>(1i, arg_1.a, -1i, -2147483647i)), vec4<i32>(-4522i, arg_1.c, -1i, arg_1.c))), vec2<i32>(_wgslsmith_mod_i32(0i, ~(-2147483647i)), ~(-2147483647i)));
    return abs(1u);
}

fn func_1(arg_0: i32, arg_1: u32) -> i32 {
    let var_0 = vec2<bool>(_wgslsmith_dot_vec4_i32(-(vec4<i32>(arg_0, 49013i, -65900i, u_input.c) >> (vec4<u32>(u_input.b.x, u_input.b.x, 36878u, arg_1) % vec4<u32>(32u))), ~abs(vec4<i32>(-2147483647i, 15171i, arg_0, arg_0))) > (-u_input.a.x | -27728i), true);
    global4 = array<f32, 21>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(func_2(global1.x, Struct_1(0i, false, 0i, vec4<f32>(global1.x, global0[_wgslsmith_index_u32(arg_1, 32u)], global1.x, -830f))), _wgslsmith_dot_vec2_u32(abs(u_input.b.zz), ~u_input.b.xz), select(~51521u, arg_1, any(vec3<bool>(false, var_0.x, false)))), 21u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(969f))) - global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), _wgslsmith_f_op_f32(min(-607f, global0[_wgslsmith_index_u32(~76948u, 32u)])), 1000f));
    var var_2 = _wgslsmith_f_op_f32(-527f - 1497f);
    global2 = 33210i;
    return ~_wgslsmith_div_i32(1978i, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 32>();
    var var_0 = Struct_1(u_input.a.x, true, _wgslsmith_sub_i32(-20576i & _wgslsmith_add_i32(firstTrailingBit(u_input.c), i32(-1i) * -2147483647i), ~select(1i, countOneBits(u_input.a.x), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(974f, global4[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(26553u, 32u)], 309f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(u_input.b.x, 21u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global4[_wgslsmith_index_u32(0u, 21u)])))));
    global0 = array<f32, 32>();
    global2 = _wgslsmith_add_i32(u_input.c, 43882i);
    global4 = array<f32, 21>();
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.d.yyw));
    global3 = -2725i;
    global3 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c << (4294967295u % 32u), u_input.a.x), u_input.a), var_0.c), ~func_1(-1i, u_input.b.x));
    var_0 = Struct_1(1i, select(any(select(vec2<bool>(true, true), vec2<bool>(var_0.b, var_0.b), select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(false, false), true))), false, !(_wgslsmith_f_op_f32(-global1.x) == _wgslsmith_f_op_f32(sign(var_0.d.x)))), min(2036i, ~var_0.a), var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(~(_wgslsmith_dot_vec2_u32(~u_input.b.yz, ~vec2<u32>(29498u, 1u)) ^ ~1u), 32u)], vec3<i32>(14554i, ~(i32(-1i) * -1i), var_0.a), vec3<i32>(-1i ^ _wgslsmith_mult_i32(i32(-1i) * -27189i, firstLeadingBit(u_input.a.x)), -2147483647i, _wgslsmith_sub_i32(~5949i, ~u_input.c | firstTrailingBit(var_0.a))));
}

