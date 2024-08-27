struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: u32,
    d: bool,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19> = array<i32, 19>(-55149i, 1i, i32(-2147483648), 0i, 28564i, -25578i, 2147483647i, 2147483647i, -23128i, 6206i, 0i, 5301i, 1i, 9445i, 0i, i32(-2147483648), 31218i, -20597i, 2147483647i);

var<private> global1: array<u32, 6>;

var<private> global2: array<bool, 12>;

var<private> global3: array<vec4<bool>, 21>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: vec2<bool>, arg_3: vec3<i32>) -> vec4<f32> {
    var var_0 = false;
    var var_1 = select(true, true, arg_2.x);
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, -767f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_div_f32(-660f, arg_0.x), -709f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1454f, arg_0.x, 275f, -603f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-443f, 595f, arg_0.x, 780f) * vec4<f32>(-297f, 478f, arg_0.x, arg_0.x)), !vec4<bool>(false, arg_2.x, false, true))), true)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x) + vec4<f32>(arg_0.x, -456f, 497f, arg_0.x))))), max(~(~(54139u & global1[_wgslsmith_index_u32(0u, 6u)])), firstLeadingBit(~0u)), !(all(vec2<bool>(arg_2.x, false)) | !(!global2[_wgslsmith_index_u32(25770u, 12u)])), vec2<i32>(arg_3.x & global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(577u), abs(22863u)), 19u)], u_input.a ^ ~_wgslsmith_sub_i32(arg_1.x, arg_3.x)));
    var var_3 = var_2.a.a.x;
    global2 = array<bool, 12>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.b));
}

fn func_2(arg_0: vec3<f32>) -> i32 {
    var var_0 = Struct_2(Struct_1(arg_0), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 1636f, -713f, -462f), vec4<f32>(-1330f, -1000f, -1000f, arg_0.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(435f, arg_0.x, 1794f, arg_0.x), vec4<f32>(-393f, arg_0.x, 942f, 474f))), _wgslsmith_f_op_vec4_f32(func_3(arg_0.xz, vec2<i32>(-16925i, -15756i), vec2<bool>(true, true), vec3<i32>(u_input.a, 1i, u_input.a)))))), 14345u, true || any(select(global3[_wgslsmith_index_u32(1u, 21u)], select(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 21u)], vec4<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(61325u, 6u)], 12u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 6u)], 12u)], true, global2[_wgslsmith_index_u32(0u, 12u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)], 6u)], 12u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 6u)], 12u)], global2[_wgslsmith_index_u32(21194u, 12u)])), select(vec4<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 6u)], 12u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 12u)], false, global2[_wgslsmith_index_u32(4496u, 12u)]), vec4<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(51603u, 6u)], 12u)], true, true, true), global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 6u)], 6u)], 21u)]))), vec2<i32>(countOneBits(-20371i), firstTrailingBit(-5565i)));
    return _wgslsmith_clamp_i32(~_wgslsmith_mult_i32(-global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, var_0.c), 19u)], u_input.a), u_input.a, -2147483647i);
}

fn func_1(arg_0: u32) -> u32 {
    global1 = array<u32, 6>();
    let var_0 = select(vec3<bool>(true, true, true), !vec3<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(arg_0, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(54094u, 6u)], 6u)], 6u)])) < 276u, u_input.a > _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(1u, 19u)], -1i), func_2(vec3<f32>(-1672f, -1879f, 716f)) == global0[_wgslsmith_index_u32(~5915u, 19u)]), vec3<bool>((~2147483647i | min(global0[_wgslsmith_index_u32(0u, 19u)], -1i)) < 0i, true, global2[_wgslsmith_index_u32(4294967295u, 12u)]));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-222f)) + _wgslsmith_f_op_f32(f32(-1f) * -492f)))) - 1788f), -447f, -1131f);
    global1 = array<u32, 6>();
    global3 = array<vec4<bool>, 21>();
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global2 = array<bool, 12>();
    let var_1 = vec3<bool>(global2[_wgslsmith_index_u32(func_1(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 6u)], 6u)]), 6u)], 6u)]), 12u)] && true, true, all(select(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(global1[_wgslsmith_index_u32(27810u, 6u)], 638u, global1[_wgslsmith_index_u32(0u, 6u)]), vec3<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(59323u, 6u)], 6u)], global1[_wgslsmith_index_u32(4294967295u, 6u)])), 21u)], !vec4<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 12u)], false, false), !vec4<bool>(global2[_wgslsmith_index_u32(38304u, 12u)], true, global2[_wgslsmith_index_u32(45188u, 12u)], var_0))));
    global2 = array<bool, 12>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-324f, 953f, 168f) - vec3<f32>(413f, 738f, -1063f)) - _wgslsmith_div_vec3_f32(vec3<f32>(1288f, 964f, -514f), vec3<f32>(-1000f, -1892f, -1228f)))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, -986f, -1132f, var_2.a.x) - vec4<f32>(-530f, var_2.a.x, var_2.a.x, 497f)), vec4<f32>(var_2.a.x, 1387f, -493f, var_2.a.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(456f, -262f, var_2.a.x, -1796f) * vec4<f32>(2193f, var_2.a.x, var_2.a.x, var_2.a.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.a.x, -220f, var_2.a.x, var_2.a.x), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-194f, var_2.a.x, 539f, var_2.a.x), vec4<f32>(-2231f, -1000f, 1210f, var_2.a.x))))))));
    let var_4 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(602f, -301f), _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(-665f, -1154f), var_2.a.zx)))), ~countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 0i), vec2<i32>(-2147483647i, 2147483647i))), select(var_1.xx, select(!vec2<bool>(false, var_0), select(var_1.zy, vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 12u)], var_0), var_1.zy), u_input.a >= 2147483647i), true), select(reverseBits(vec3<i32>(5424i, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1257u, 6u)], 6u)], 19u)], -1i)), reverseBits(vec3<i32>(41643i, 6459i, 8502i)), !vec3<bool>(var_1.x, false, var_0)) ^ (~vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 6u)], 6u)], 6u)], 6u)], 6u)], 6u)], 19u)], u_input.a) | ~vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(1u, 19u)], 10413i)))).zy));
    let var_5 = _wgslsmith_mult_vec4_u32(~(_wgslsmith_sub_vec4_u32(select(vec4<u32>(26491u, 37516u, 51982u, 29807u), vec4<u32>(4294967295u, 1u, global1[_wgslsmith_index_u32(62194u, 6u)], 1u), vec4<bool>(var_0, global2[_wgslsmith_index_u32(1u, 12u)], false, var_1.x)), ~vec4<u32>(global1[_wgslsmith_index_u32(1u, 6u)], 3433u, 0u, global1[_wgslsmith_index_u32(72432u, 6u)])) >> (~abs(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20979u, 6u)], 6u)], 6u)], 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 6u)], 6u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(24759u, 6u)], 6u)])) % vec4<u32>(32u))), reverseBits(vec4<u32>(firstLeadingBit(43456u & global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)], 6u)]), 1u >> (1u % 32u), _wgslsmith_add_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(6790u, 6u)], 6u)], ~4294967295u), 1u)));
    var var_6 = 117359u;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<u32>(_wgslsmith_mod_u32(max(21085u, 1u), global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(38026u, 6u)], 6u)]), _wgslsmith_add_u32(1u, _wgslsmith_mod_u32(var_5.x, 27252u)), 34161u), var_5.zxw, vec3<bool>(global2[_wgslsmith_index_u32(reverseBits(~global1[_wgslsmith_index_u32(var_5.x, 6u)]), 12u)], -414f < var_3.x, (i32(-1i) * -59548i) > -u_input.a)), -1294f);
}

