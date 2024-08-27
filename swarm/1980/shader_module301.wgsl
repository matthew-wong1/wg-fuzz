struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_2, 22>;

var<private> global3: array<vec3<i32>, 23> = array<vec3<i32>, 23>(vec3<i32>(1i, -1i, -1i), vec3<i32>(96654i, 22601i, i32(-2147483648)), vec3<i32>(2147483647i, 2147483647i, 40927i), vec3<i32>(-74073i, 0i, 32250i), vec3<i32>(i32(-2147483648), -35440i, 0i), vec3<i32>(2147483647i, -1i, 34289i), vec3<i32>(13246i, i32(-2147483648), 2147483647i), vec3<i32>(-62183i, -1i, -19695i), vec3<i32>(-77592i, -11981i, 28802i), vec3<i32>(-29229i, i32(-2147483648), -19754i), vec3<i32>(2147483647i, -1814i, 0i), vec3<i32>(-2603i, -26986i, -64293i), vec3<i32>(25774i, -52088i, 1i), vec3<i32>(0i, -65022i, -97894i), vec3<i32>(2147483647i, 29362i, 1i), vec3<i32>(-15494i, -21136i, 1i), vec3<i32>(i32(-2147483648), 2147483647i, -19263i), vec3<i32>(-26373i, -1i, 2147483647i), vec3<i32>(47455i, -16196i, -22253i), vec3<i32>(10051i, 18212i, 47092i), vec3<i32>(2147483647i, -8295i, -19194i), vec3<i32>(0i, -20870i, -1470i), vec3<i32>(-54327i, -13372i, 1i));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    global1 = reverseBits(select(select(vec3<u32>(global1.x, _wgslsmith_dot_vec2_u32(global1.xz, vec2<u32>(global1.x, global0.x)), ~global1.x), ~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, global0.x, 30248u), vec3<u32>(0u, global0.x, global0.x)), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)))), vec3<u32>(global0.x >> (1u % 32u), ~countOneBits(61767u), firstTrailingBit(19796u << (global1.x % 32u))), all(vec3<bool>(true, true, true)) && true));
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1557f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(2112f, 419f) - _wgslsmith_div_f32(1009f, -373f)))), _wgslsmith_f_op_f32(abs(-1029f)), -1129f);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-365f, var_0.x)))))));
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x)));
    let var_3 = vec3<i32>(u_input.a, 0i, select(u_input.b, 7303i, all(vec3<bool>(all(vec2<bool>(false, true)), true, true))));
    return global1.x;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_2) -> vec2<u32> {
    global2 = array<Struct_2, 22>();
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(abs(-1577f)), _wgslsmith_f_op_f32(min(690f, -1527f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(1262f, arg_0)), _wgslsmith_f_op_f32(abs(295f)))), arg_3.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 784f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1239f, arg_0) + vec2<f32>(-1000f, arg_0)) - vec2<f32>(arg_0, -709f)))));
    global2 = array<Struct_2, 22>();
    global0 = vec2<u32>(arg_3.e.b, 4294967295u) >> (reverseBits(vec2<u32>(arg_3.d.a.x, 1u)) % vec2<u32>(32u));
    let var_1 = 16746u;
    return ~(~global1.yz);
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-544f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f)))));
    let var_1 = 4294967295u;
    global0 = _wgslsmith_clamp_vec2_u32(func_4(var_0, arg_0, _wgslsmith_sub_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.x, 4294967295u, arg_0.a.x, global1.x), vec4<u32>(1u, global0.x, 0u, 53555u), vec4<u32>(1u, 31499u, arg_0.b, 10914u))), ~vec4<u32>(0u, var_1, var_1, 0u)), Struct_2(true, false, func_3(vec2<i32>(0i, u_input.a) << (vec2<u32>(var_1, global1.x) % vec2<u32>(32u))), Struct_1(vec3<u32>(var_1, arg_0.a.x, global0.x), arg_0.b), Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(14087u, 20987u, arg_0.a.x), vec3<u32>(arg_0.b, 1u, 1u), vec3<u32>(86273u, var_1, 4294967295u)), arg_0.b))), global1.yz, ~(~abs(vec2<u32>(1u, 10628u))));
    let var_2 = ~_wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(1u, global1.x, arg_0.b, arg_0.a.x))), select(~vec4<u32>(var_1, global1.x, global1.x, 20991u), vec4<u32>(var_1, global1.x, global0.x, var_1) ^ vec4<u32>(global1.x, 19671u, global1.x, 47565u), vec4<bool>(false, true, false, true)) << (_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, 57538u, 0u, var_1), vec4<u32>(arg_0.a.x, 0u, 105562u, 64244u)), ~vec4<u32>(arg_0.b, arg_0.b, 0u, var_1)) % vec4<u32>(32u)));
    var var_3 = arg_0.a;
    return _wgslsmith_f_op_f32(round(var_0));
}

fn func_1() -> vec3<u32> {
    var var_0 = vec4<f32>(650f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(vec3<u32>(global0.x, 51913u, 8064u), 527u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1f, 2540f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(622f)), _wgslsmith_f_op_f32(ceil(133f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1341f), _wgslsmith_f_op_f32(f32(-1f) * -671f)))), _wgslsmith_f_op_f32(-530f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-623f * 948f), -2120f, any(vec3<bool>(true, false, false))))))), 328f);
    var var_1 = Struct_1(vec3<u32>(abs(_wgslsmith_div_u32(global0.x, global1.x | 39556u)), global1.x, global1.x), ~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(global1.x, global0.x, 4294967295u, 0u), vec4<u32>(global0.x, 0u, global0.x, global1.x))));
    let var_2 = select(select(select(vec2<bool>(true, true), vec2<bool>(var_0.x <= 394f, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), !(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), false), vec2<bool>(true & (true && (global1.x > 54876u)), -u_input.a < u_input.b), vec2<bool>(true, true));
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0.x, min(abs(~_wgslsmith_sub_u32(global1.x, 29567u)), global0.x)), 22u)];
    var_1 = Struct_1(~(firstLeadingBit(var_1.a) >> ((var_3.e.a & var_3.d.a) % vec3<u32>(32u))), 33604u >> (_wgslsmith_dot_vec3_u32(~abs(vec3<u32>(40074u, var_1.a.x, 26349u)), ~(~vec3<u32>(var_1.a.x, 4294967295u, var_1.a.x))) % 32u));
    return vec3<u32>(_wgslsmith_add_u32(16572u, ~global0.x), var_1.a.x, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~(func_1() >> (~(~vec3<u32>(1u, 4294967295u, global0.x) & _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, global0.x, global0.x), vec3<u32>(5288u, global0.x, global0.x))) % vec3<u32>(32u)));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1244f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-113f, 317f)) - 2389f), !select(true, true, false))) * 1f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1815f), _wgslsmith_f_op_f32(abs(-588f))));
    var var_1 = !(!select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), true));
    var_1 = select(vec3<bool>(false, all(!vec2<bool>(var_1.x, var_1.x)), !var_1.x | any(vec2<bool>(false, var_1.x))), vec3<bool>(true, true, !(_wgslsmith_mult_u32(20302u, global0.x) < 4294967295u)), select(vec3<bool>(var_1.x, false, true), !(!(!vec3<bool>(false, var_1.x, var_1.x))), ~_wgslsmith_dot_vec3_i32(global3[_wgslsmith_index_u32(global1.x, 23u)], vec3<i32>(u_input.b, -15174i, u_input.b)) <= max(1i, u_input.b)));
    var var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.x, ~(~(global1.x | global0.x)), ~_wgslsmith_sub_u32(global1.x, global0.x), global0.x), abs(vec4<u32>(_wgslsmith_dot_vec2_u32(global1.yy, ~global1.zy), 9548u, countOneBits(max(69284u, 4294967295u)), ~min(8205u, 19320u))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(global1.x, global0.x, global0.x, 29076u), vec4<u32>(func_1().x, _wgslsmith_mult_u32(1u, 14909u), ~75143u, global0.x), vec4<u32>(_wgslsmith_div_u32(global1.x, global1.x), ~0u, global1.x, global1.x)) >> (~_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.x, 26042u, global1.x, global1.x), vec4<u32>(global1.x, global1.x, global0.x, 48943u), ~vec4<u32>(global1.x, 1563u, global0.x, 4294967295u)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(_wgslsmith_sub_u32(~1u, _wgslsmith_add_u32(global1.x, 7494u)), 31166u, ~global1.x, 45628u), ~var_2.wxy, countOneBits(~vec3<u32>(_wgslsmith_sub_u32(0u, var_2.x), ~0u, _wgslsmith_mult_u32(var_2.x, 14093u))), _wgslsmith_f_op_f32(ceil(-443f)), func_4(-632f, Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(var_2.x, global1.x, 75410u), vec3<u32>(global0.x, 8582u, global1.x)), func_3(_wgslsmith_div_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(u_input.b, u_input.b)))), vec4<u32>(global0.x, 0u, _wgslsmith_mult_u32(abs(4294967295u), firstTrailingBit(global1.x)), var_2.x), Struct_2(false, var_1.x, _wgslsmith_dot_vec2_u32(global1.xx, select(global1.yz, vec2<u32>(23718u, var_2.x), false)), Struct_1(abs(var_2.yzx), global0.x), Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(1u, var_2.x, var_2.x), vec3<u32>(global1.x, 4348u, 4294967295u)), _wgslsmith_add_u32(global0.x, 4294967295u)))));
}

