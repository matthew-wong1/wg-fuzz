struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: Struct_3,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 0u, 37671u);

var<private> global1: array<i32, 5>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: bool, arg_3: f32) -> f32 {
    let var_0 = _wgslsmith_mult_u32(~u_input.d, _wgslsmith_div_u32(18564u, 48797u));
    let var_1 = u_input.d;
    let var_2 = Struct_4(u_input.a.x, ~81674u, Struct_3(_wgslsmith_f_op_vec3_f32(arg_1 - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1))), !all(vec4<bool>(arg_2, true, true, arg_2)) != all(vec3<bool>(false, true, arg_2)), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, -1000f, 901f))), _wgslsmith_clamp_u32(min(var_1, u_input.d), ~var_0, countOneBits(0u)), Struct_1(!arg_2), false, Struct_1(true)), Struct_1(true)), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1628f + arg_1.x))))), _wgslsmith_f_op_f32(-810f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1186f))), _wgslsmith_f_op_f32(max(-1429f, arg_3))), Struct_1(!any(select(vec4<bool>(arg_2, true, false, true), vec4<bool>(false, true, arg_2, arg_2), true))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.x))), -655f)) <= arg_1.x;
    let var_4 = abs(0u);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) + 1000f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1984f, -126f)))));
}

fn func_2() -> f32 {
    let var_0 = Struct_4(abs(~1i), min(0u, 31947u), Struct_3(vec3<f32>(_wgslsmith_f_op_f32(step(-585f, -485f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -450f) * _wgslsmith_div_f32(452f, 984f)), _wgslsmith_f_op_f32(-406f - -245f)), !(!all(vec2<bool>(false, true))), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(299f, -159f, -1105f, -444f), vec4<f32>(2181f, -773f, 126f, -465f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-960f, 687f, 859f, -321f))), u_input.d, Struct_1(false), true, Struct_1(false)), Struct_1(true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1411f, -919f, _wgslsmith_f_op_f32(f32(-1f) * -1007f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(631f, -908f, 1590f) + vec3<f32>(-624f, 2088f, -1352f)) + vec3<f32>(-1846f, 1683f, 786f))))), Struct_1(false));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 772f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x))), _wgslsmith_f_op_f32(var_0.c.a.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.a.x), -723f)), _wgslsmith_f_op_f32(func_3(var_0.d.xz, _wgslsmith_div_vec3_f32(vec3<f32>(var_0.d.x, 1081f, var_0.d.x), _wgslsmith_div_vec3_f32(var_0.d, vec3<f32>(1000f, -788f, var_0.d.x))), var_0.e.a, var_0.c.a.x))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-var_0.c.c.a), u_input.d, Struct_1(true), true, Struct_1(false));
    let var_3 = var_2.a.zyx;
    return _wgslsmith_f_op_f32(866f - _wgslsmith_f_op_f32(-var_3.x));
}

fn func_1(arg_0: f32, arg_1: vec2<f32>, arg_2: vec4<i32>) -> u32 {
    var var_0 = countOneBits(select(arg_2.yw, u_input.a.xx & (countOneBits(vec2<i32>(arg_2.x, 2147483647i)) >> (abs(global0.yz) % vec2<u32>(32u))), select(vec2<bool>(true, -511f <= arg_1.x), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec3<bool>(false, true, false))))));
    global1 = array<i32, 5>();
    var var_1 = firstTrailingBit(~_wgslsmith_sub_u32(~0u, u_input.d));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(arg_1.x, -1035f)), _wgslsmith_f_op_f32(func_2()), arg_1.x, 1649f) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1335f, arg_1.x, arg_0, 464f))))))), global0.x, Struct_1(true), any(!vec3<bool>(any(vec2<bool>(false, true)), true, true)), Struct_1(all(vec3<bool>(true, false, false)) & any(vec4<bool>(true, true, true, true))));
    let var_3 = _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(511f - -748f)) + _wgslsmith_f_op_f32(-arg_0)));
    return ~0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -u_input.a;
    let var_1 = Struct_4(i32(-1i) * -13767i, _wgslsmith_dot_vec4_u32((_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.d, u_input.d, 1u), vec4<u32>(4294967295u, global0.x, 4294967295u, u_input.d), vec4<u32>(global0.x, 0u, u_input.d, global0.x)) & (vec4<u32>(42601u, 23396u, 75917u, global0.x) & vec4<u32>(global0.x, 31314u, 42925u, 4294967295u))) | vec4<u32>(global0.x, ~1u, u_input.d, 0u), vec4<u32>(func_1(-1133f, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1369f, -1905f))), ~vec4<i32>(-47061i, global1[_wgslsmith_index_u32(33118u, 5u)], var_0.x, 21741i)), ~global0.x | _wgslsmith_div_u32(global0.x, global0.x), global0.x, global0.x)), Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1137f, _wgslsmith_f_op_f32(step(238f, -103f)), _wgslsmith_f_op_f32(-1573f * -1187f))), u_input.c.x == ~(-global1[_wgslsmith_index_u32(1u, 5u)]), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(select(1119f, 565f, true)), _wgslsmith_f_op_f32(ceil(-1514f)), _wgslsmith_f_op_f32(937f * 310f), _wgslsmith_f_op_f32(-1704f * -516f)), ~(~global0.x), Struct_1(true), true, Struct_1(select(true, true, false))), Struct_1(all(vec4<bool>(false, false, false, true)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-748f, 1336f, -1348f) - vec3<f32>(-1000f, 1688f, 1071f))), vec3<f32>(_wgslsmith_f_op_f32(min(-550f, -1048f)), -969f, _wgslsmith_f_op_f32(971f + 189f)))))), Struct_1(any(vec2<bool>(true, true))));
    var var_2 = !(!(!(!vec4<bool>(var_1.e.a, var_1.e.a, var_1.c.d.a, var_1.c.c.e.a))));
    global1 = array<i32, 5>();
    global1 = array<i32, 5>();
    global0 = vec3<u32>(1u, _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(abs(var_1.c.c.b), abs(1u)), min(80168u, reverseBits(global0.x))), 59119u), _wgslsmith_mult_u32(60187u, 1u));
    global0 = ~(~_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.d, u_input.d), vec3<u32>(var_1.b, 77257u, 35169u)), vec3<u32>(0u, var_1.b, global0.x)), ~(~vec3<u32>(4294967295u, 4549u, 25929u))));
    let var_3 = Struct_1(var_2.x);
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.c.c.a.xyx, vec3<f32>(var_1.c.c.a.x, var_1.d.x, var_1.c.c.a.x))), _wgslsmith_f_op_vec3_f32(round(var_1.d)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_1.c.c.a.x, var_1.c.a.x)), _wgslsmith_f_op_vec3_f32(var_1.d + var_1.d)))), _wgslsmith_f_op_vec3_f32(var_1.d - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_1.d)) * _wgslsmith_f_op_vec3_f32(var_1.d * vec3<f32>(524f, -588f, var_1.d.x)))), !select(var_2.yxw, var_2.wyx, select(var_2.wxx, var_2.zyx, vec3<bool>(false, var_2.x, var_3.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(2147483647i, u_input.a.x, 57239i, i32(-1i) * -var_0.x), select(vec2<i32>(-1i) * -u_input.c, u_input.a.xx << (~vec2<u32>(0u, u_input.d) % vec2<u32>(32u)), var_2.yz), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(u_input.d, u_input.d, global0.x, var_1.c.c.b) & vec4<u32>(var_1.b, u_input.d, 13483u, global0.x)), reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.c.c.b, 0u, 1u, global0.x), vec4<u32>(u_input.d, global0.x, 0u, 46822u)))) & ~vec4<u32>(0u & global0.x, reverseBits(0u), 29805u << (var_1.c.c.b % 32u), u_input.d));
}

