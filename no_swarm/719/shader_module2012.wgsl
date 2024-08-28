struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11>;

var<private> global1: array<Struct_1, 8>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<f32>) -> i32 {
    var var_0 = global1[_wgslsmith_index_u32(~u_input.a.x, 8u)];
    return -1i;
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x)))), _wgslsmith_f_op_f32(max(590f, global0[_wgslsmith_index_u32(~(~1u), 11u)])), arg_1.x, -1969f);
    var var_1 = _wgslsmith_dot_vec2_i32(arg_2.wx, vec2<i32>(_wgslsmith_clamp_i32(u_input.e.x << (arg_0 % 32u), ~(-6099i), 8159i), reverseBits(min(-5842i, 0i)))) < func_3(~arg_2.xwx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1032f, global0[_wgslsmith_index_u32(u_input.a.x, 11u)]) + _wgslsmith_f_op_vec2_f32(-arg_1.yx)) - vec2<f32>(global0[_wgslsmith_index_u32(1u, 11u)], _wgslsmith_f_op_f32(min(1386f, -1587f)))));
    var var_2 = Struct_2(max(~(~(~u_input.c.x)), ~(~(~u_input.a.x))), _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.c.x, ~1u), min(~(~u_input.d), ~1u)), ~(-2147483647i));
    global1 = array<Struct_1, 8>();
    var var_3 = Struct_2(max(var_2.a, ~27224u), abs(_wgslsmith_sub_u32(48870u, 42995u)), 2147483647i);
    return Struct_2(4294967295u, u_input.d, var_2.c);
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec3<u32>, arg_3: vec2<u32>) -> vec4<i32> {
    var var_0 = Struct_1(firstLeadingBit(reverseBits(-11030i)));
    let var_1 = arg_2;
    let var_2 = !(!vec3<bool>(true, (u_input.b.x << (arg_3.x % 32u)) <= (-38554i >> (arg_2.x % 32u)), !(32282u == arg_2.x)));
    var var_3 = Struct_2(arg_3.x, firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_add_u32(34537u, countOneBits(arg_2.x)), max(u_input.a.x | 4294967295u, _wgslsmith_mod_u32(4294967295u, 4294967295u)))), ~countOneBits(3918i));
    var_3 = arg_0;
    return vec4<i32>(_wgslsmith_add_i32(abs(max(~arg_0.c, -26376i)), -21699i), 23410i, 2147483647i, 13025i);
}

fn func_1() -> Struct_1 {
    global0 = array<f32, 11>();
    var var_0 = func_4(func_2(0u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], -1294f, global0[_wgslsmith_index_u32(38766u, 11u)]))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(42871u, 11u)], global0[_wgslsmith_index_u32(39631u, 11u)]) + vec3<f32>(667f, global0[_wgslsmith_index_u32(21248u, 11u)], 2266f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.d, 11u)], -1050f, -1000f) - vec3<f32>(-1241f, -398f, global0[_wgslsmith_index_u32(1u, 11u)])))), _wgslsmith_mult_vec4_i32(select(reverseBits(vec4<i32>(u_input.e.x, 7427i, -1i, -13558i)), ~vec4<i32>(-2147483647i, -2147483647i, -1i, 0i), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true))), vec4<i32>(u_input.e.x, u_input.b.x, 1i, 29054i) << (abs(vec4<u32>(u_input.d, 4294967295u, u_input.c.x, 4294967295u)) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.c, u_input.a, vec3<u32>(u_input.d, 0u, 19688u)), abs(u_input.c), vec3<u32>(u_input.c.x, u_input.d, u_input.c.x)) >> (vec3<u32>(min(u_input.a.x, u_input.c.x), u_input.a.x, max(27945u, 9867u)) % vec3<u32>(32u)), min(u_input.a, vec3<u32>(1u, 61263u, u_input.c.x) & vec3<u32>(u_input.a.x, 4294967295u, u_input.d)), ~select(select(vec3<u32>(0u, 89272u, u_input.a.x), vec3<u32>(10376u, 24210u, u_input.c.x), false), u_input.a, true)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(u_input.c.x, 0u), select(u_input.a.x, u_input.c.x, true)), abs(~u_input.a.xz)), 78473u));
    var var_1 = _wgslsmith_sub_vec2_i32(select(~vec2<i32>(0i, ~var_0.x), vec2<i32>(_wgslsmith_clamp_i32(var_0.x, var_0.x, 15829i) | abs(2147483647i), -(~(-1i))), false), ~u_input.e);
    var_0 = vec4<i32>(-2147483647i & u_input.b.x, u_input.b.x, abs(17437i), ~firstTrailingBit(countOneBits(~var_0.x)));
    let var_2 = func_2(u_input.d, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], -142f, -1124f) * vec3<f32>(global0[_wgslsmith_index_u32(u_input.d, 11u)], -572f, -509f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(268f, -874f, 154f), vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(75990u, 11u)]), vec3<bool>(false, false, false))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(15454u, 11u)], -1000f, global0[_wgslsmith_index_u32(u_input.d, 11u)]) + vec3<f32>(global0[_wgslsmith_index_u32(79550u, 11u)], 1035f, global0[_wgslsmith_index_u32(4294967295u, 11u)])) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1755f, global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(40596u, 11u)]) + vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(0u, 11u)]))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-879f, global0[_wgslsmith_index_u32(67376u, 11u)], -833f), vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 11u)], global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(u_input.d, 11u)]))))), select(vec4<i32>(var_0.x, -(~u_input.e.x), ~u_input.b.x, firstTrailingBit(1i)), ~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 0i, u_input.b.x), u_input.b), 39669i | var_1.x, var_0.x, func_2(65891u, vec3<f32>(458f, global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(42005u, 11u)]), vec4<i32>(37525i, 49416i, -58360i, var_1.x)).c), true));
    return Struct_1(-24167i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = false;
    global0 = array<f32, 11>();
    global0 = array<f32, 11>();
    let var_2 = false;
    let var_3 = select(var_1, (_wgslsmith_dot_vec3_u32(vec3<u32>(36577u, 1u, 0u), u_input.a ^ vec3<u32>(51031u, 0u, u_input.c.x)) < _wgslsmith_dot_vec2_u32(u_input.a.xz ^ vec2<u32>(u_input.d, u_input.d), ~u_input.c.zz)) || var_1, true);
    global1 = array<Struct_1, 8>();
    global0 = array<f32, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(func_1().a, ~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 94323u, 4294967295u, 59980u), ~vec4<u32>(u_input.a.x, 37841u, 84587u, 2225u)), 28921u, ~firstTrailingBit(u_input.d)), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.c.x, ~1u), ~min(~67387u, _wgslsmith_mod_u32(99996u, u_input.d)), 4294967295u));
}

