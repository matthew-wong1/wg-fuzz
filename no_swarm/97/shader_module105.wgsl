struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 21342i;

var<private> global1: array<vec3<u32>, 26> = array<vec3<u32>, 26>(vec3<u32>(4294967295u, 26367u, 1u), vec3<u32>(4294967295u, 38421u, 0u), vec3<u32>(1u, 24698u, 45800u), vec3<u32>(0u, 55729u, 4294967295u), vec3<u32>(4294967295u, 1u, 775u), vec3<u32>(32457u, 79340u, 4294967295u), vec3<u32>(8559u, 0u, 0u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(0u, 19996u, 1u), vec3<u32>(0u, 18768u, 1u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(0u, 140689u, 4294967295u), vec3<u32>(46581u, 4294967295u, 51331u), vec3<u32>(1u, 8435u, 4294967295u), vec3<u32>(0u, 4294967295u, 8344u), vec3<u32>(36049u, 67150u, 0u), vec3<u32>(0u, 1u, 20234u), vec3<u32>(19150u, 4294967295u, 42698u), vec3<u32>(13833u, 16387u, 6014u), vec3<u32>(1u, 28462u, 0u), vec3<u32>(0u, 0u, 1u), vec3<u32>(4294967295u, 4294967295u, 31612u), vec3<u32>(38790u, 70921u, 27911u), vec3<u32>(1u, 4294967295u, 62635u), vec3<u32>(9429u, 46196u, 4940u), vec3<u32>(29667u, 32700u, 26581u));

var<private> global2: array<i32, 26> = array<i32, 26>(i32(-2147483648), i32(-2147483648), 11558i, 0i, 1i, 0i, i32(-2147483648), -28499i, i32(-2147483648), 0i, i32(-2147483648), -1i, 2147483647i, i32(-2147483648), -2518i, -1i, 0i, 0i, 1i, -14526i, -28138i, 0i, 1i, 1i, -31651i, -1i);

var<private> global3: vec4<u32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(_wgslsmith_sub_i32(24282i, -2390i ^ _wgslsmith_clamp_i32(u_input.a.x >> (0u % 32u), -12241i, global2[_wgslsmith_index_u32(1u, 26u)])), !(92920u > global3.x), u_input.b.x);
    let var_1 = select(!(!select(vec4<bool>(true, false, var_0.b, true), !vec4<bool>(var_0.b, var_0.b, true, var_0.b), u_input.a.x <= var_0.a)), vec4<bool>(true, true || all(select(vec4<bool>(true, var_0.b, false, false), vec4<bool>(var_0.b, true, var_0.b, false), vec4<bool>(var_0.b, false, var_0.b, var_0.b))), !var_0.b, true), vec4<bool>((i32(-1i) * -global2[_wgslsmith_index_u32(global3.x, 26u)]) == 2147483647i, !var_0.b, all(select(select(vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b), vec4<bool>(false, var_0.b, true, var_0.b), vec4<bool>(var_0.b, var_0.b, var_0.b, false)), vec4<bool>(var_0.b, var_0.b, var_0.b, false), vec4<bool>(var_0.b, false, true, false))), _wgslsmith_dot_vec2_u32(countOneBits(global3.xz), ~vec2<u32>(47798u, 32348u)) != ~0u));
    let var_2 = select(vec2<bool>(var_1.x, true), select(vec2<bool>(false, ~global3.x >= (global3.x ^ 31799u)), !var_1.xw, vec2<bool>(!(var_0.b != var_0.b), true)), vec2<bool>(true, var_1.x));
    var var_3 = Struct_1(i32(-1i) * -global2[_wgslsmith_index_u32(~0u, 26u)], !all(vec4<bool>(any(var_1.wx), false, true, var_2.x)), u_input.b.x);
    let var_4 = global3.yw;
    return global3.x;
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: vec3<u32>) -> Struct_2 {
    global3 = firstLeadingBit(~vec4<u32>(37865u, ~0u, 3817u, 0u)) >> ((abs(~(vec4<u32>(5535u, arg_2.x, arg_2.x, global3.x) >> (vec4<u32>(arg_0, arg_2.x, 1u, 4294967295u) % vec4<u32>(32u)))) & _wgslsmith_add_vec4_u32((vec4<u32>(arg_2.x, arg_2.x, 4294967295u, 83175u) & vec4<u32>(14434u, 28325u, 0u, 4294967295u)) | abs(vec4<u32>(42649u, 97886u, 62039u, global3.x)), ~vec4<u32>(arg_2.x, arg_0, global3.x, 1u))) % vec4<u32>(32u));
    var var_0 = select(vec2<bool>(!any(vec3<bool>(true, true, true)), false), vec2<bool>(any(vec2<bool>(true, true)), !any(vec3<bool>(true, true, true))), !all(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false))));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.x, 217f, 975f))))) - arg_1), _wgslsmith_f_op_vec3_f32(-arg_1), 1u != max(func_3(), 92507u)));
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(477f, var_1.x))))), _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(-369f + _wgslsmith_f_op_f32(trunc(var_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(max(arg_1.x, arg_1.x))))));
    var var_2 = (_wgslsmith_add_u32(arg_0, arg_2.x) ^ _wgslsmith_div_u32(arg_2.x, arg_2.x)) | ~arg_0;
    return Struct_2(arg_1.x);
}

fn func_1() -> bool {
    let var_0 = func_2(_wgslsmith_mod_u32(_wgslsmith_mult_u32(global3.x, ~(~32603u)), global3.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1629f, 1000f, -802f) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-282f, -878f, -1572f))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(2178f, -153f, 3128f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-413f, -768f, -887f) - vec3<f32>(283f, 667f, -1000f)))))), max(~_wgslsmith_sub_vec3_u32(vec3<u32>(global3.x, global3.x, 29123u), global1[_wgslsmith_index_u32(global3.x, 26u)]), _wgslsmith_add_vec3_u32(~vec3<u32>(global3.x, 27661u, global3.x), vec3<u32>(0u, global3.x, global3.x))) | ~(vec3<u32>(global3.x, 4294967295u, 1u) & vec3<u32>(1u, 0u, 84334u)));
    let var_1 = ~58645u;
    global3 = vec4<u32>(9023u, ~33748u, 72106u, ~_wgslsmith_sub_u32(_wgslsmith_add_u32(global3.x, ~global3.x), 0u));
    var var_2 = _wgslsmith_f_op_f32(floor(var_0.a));
    var var_3 = func_2(38688u, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, 1000f, -311f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-761f, var_0.a, var_0.a)) - vec3<f32>(-418f, -1601f, 789f)), any(vec4<bool>(true, false, true, true)) | true)))), _wgslsmith_div_vec3_u32(global1[_wgslsmith_index_u32(var_1, 26u)], ~_wgslsmith_clamp_vec3_u32(vec3<u32>(53339u, var_1, var_1), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, global3.x, 36822u), vec3<u32>(var_1, 0u, var_1)), global3.wwy)));
    return any(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: u32) -> Struct_2 {
    let var_0 = ~(~_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(0u, 0u, arg_1, arg_1)), ~(~vec4<u32>(1u, 1u, global3.x, arg_1))));
    var var_1 = -1i;
    let var_2 = ~_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(~global3.yxy, _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4425u, 1u, arg_1), var_0.yyx), vec3<u32>(1u, var_0.x, 4294967295u))), var_0.zyw);
    var_1 = global2[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(~reverseBits(var_0), vec4<u32>(countOneBits(4294967295u), 30450u, ~global3.x, ~1u))), 26u)];
    var var_3 = select(select(vec2<bool>(true, any(!arg_0.xz)), !arg_0.yy, !arg_0.yx), !arg_0.xx, !vec2<bool>(all(arg_0) | all(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false)), !(arg_0.x && arg_0.x)));
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-526f))) + _wgslsmith_f_op_f32(step(func_2(reverseBits(0u), vec3<f32>(-186f, -2483f, 1000f), ~global3.yxw).a, _wgslsmith_f_op_f32(sign(-615f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_add_i32(-u_input.a.x ^ countOneBits(0i), _wgslsmith_sub_i32(countOneBits(countOneBits(u_input.a.x)), -3563i));
    let var_0 = vec4<f32>(100f, -1000f, _wgslsmith_div_f32(-857f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2523f)))), _wgslsmith_f_op_f32(-113f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1000f, 762f)))))));
    let var_1 = func_4(vec3<bool>(true && all(vec3<bool>(true, true, false)), global3.x >= max(7361u, ~1u), func_1()), (~48785u ^ _wgslsmith_add_u32(4294967295u, select(global3.x, 0u, true))) >> ((global3.x >> (~(~1u) % 32u)) % 32u));
    let var_2 = _wgslsmith_sub_i32(-48406i, _wgslsmith_mod_i32(u_input.a.x, _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.b.x, global2[_wgslsmith_index_u32(global3.x, 26u)]), 6063i)));
    global0 = 16261i;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * _wgslsmith_f_op_f32(-686f - var_1.a))))));
    let var_4 = true | any(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), true), vec4<bool>(false, false, false, false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~(vec3<i32>(2147483647i, -1i, 4903i) << (vec3<u32>(global3.x, 4294967295u, 4294967295u) % vec3<u32>(32u))) & u_input.a), global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec2_u32(global3.zx, vec2<u32>(38566u, 21118u)) ^ 1u, global3.x), 26u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a)), 558f, global3.x);
}

