struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: f32 = 1316f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2) -> vec3<u32> {
    var var_0 = vec2<i32>(abs(reverseBits(_wgslsmith_div_i32(_wgslsmith_clamp_i32(-65167i, arg_2.d, arg_0), arg_2.d))), -countOneBits(arg_2.d));
    let var_1 = _wgslsmith_sub_vec4_u32(reverseBits(u_input.a), ~_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.b, u_input.b.x, u_input.b.x), vec3<u32>(50059u, 0u, arg_2.b)), 25659u, 1u, _wgslsmith_dot_vec3_u32(u_input.a.wwy, u_input.a.zyw)), ~(u_input.a & u_input.a)));
    var var_2 = arg_2.a.a.x;
    var var_3 = vec3<bool>(!all(arg_2.e.b.zy), true, true);
    global1 = _wgslsmith_f_op_f32(min(arg_1.a.x, _wgslsmith_f_op_f32(round(-502f))));
    return firstTrailingBit(var_1.xyz);
}

fn func_2(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = all(select(arg_0.b, arg_0.b, arg_0.b.x));
    let var_1 = 1u;
    let var_2 = Struct_2(Struct_1(vec2<f32>(-247f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1574f) * _wgslsmith_f_op_f32(trunc(arg_0.a.x)))), !arg_0.b), countOneBits(83663u), 1000f, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i >> (_wgslsmith_div_u32(u_input.b.x, var_1) % 32u), 1i, ~1i), vec3<i32>(~(0i << (var_1 % 32u)), _wgslsmith_mod_i32(i32(-1i) * -1i, -4610i), ~1i)), arg_0);
    let var_3 = var_2.a.b.xx;
    var var_4 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-748f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.a.a.x))), 497f)));
    return countOneBits(~(u_input.a.zzx >> (func_3(35267i, Struct_1(vec2<f32>(-1428f, var_4.x), vec4<bool>(arg_0.b.x, false, var_3.x, var_2.a.b.x)), var_2) % vec3<u32>(32u))));
}

fn func_1() -> f32 {
    let var_0 = ~(-(~(vec3<i32>(14736i, 1i, 0i) << (func_2(Struct_1(vec2<f32>(296f, -153f), vec4<bool>(true, false, false, false))) % vec3<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 305f, -670f, _wgslsmith_f_op_f32(sign(-655f)))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(227f + -1115f)), _wgslsmith_f_op_f32(select(-911f, -1538f, true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1484f, 496f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), u_input.b.x < u_input.b.x)), -1573f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1007f, 778f, -590f, 1032f))))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(554f - -740f), _wgslsmith_f_op_f32(-522f - 1307f), 784f, _wgslsmith_f_op_f32(sign(751f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(576f, 285f, -1200f, 260f) + vec4<f32>(1000f, 1430f, -1252f, -328f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1571f, 855f, -1635f, -735f)))))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1062f, -291f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, var_1.x), var_1.zw, vec2<bool>(true, false))) * var_1.wx)), vec4<bool>(true, select(false, all(vec2<bool>(false, false)), true), (1u >= u_input.c.x) && true, any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true))))), u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1309f)) + _wgslsmith_f_op_f32(trunc(var_1.x))), 5622i, Struct_1(var_1.yw, select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), all(vec2<bool>(false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), all(vec2<bool>(true, false))), true)));
    var var_3 = var_2;
    let var_4 = var_2.e.a.x;
    return var_3.a.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(4294967295u, _wgslsmith_add_u32(~_wgslsmith_add_u32(u_input.a.x, u_input.b.x), u_input.b.x) | _wgslsmith_div_u32(max(u_input.b.x, _wgslsmith_add_u32(1u, u_input.c.x)), 0u), firstTrailingBit(_wgslsmith_mult_u32(u_input.b.x, ~(u_input.a.x | u_input.b.x))), ~u_input.c.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 292f) * -666f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1()))))), _wgslsmith_div_f32(531f, 1441f), -406f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1276f + 1000f) + _wgslsmith_f_op_f32(-1357f + -341f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -744f) - _wgslsmith_div_f32(-821f, 706f)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(2471f, var_1.x), 1392f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, var_1.x, true))) * -379f))));
    let var_3 = abs(vec4<i32>(reverseBits(0i >> (u_input.c.x % 32u)), 1i, _wgslsmith_sub_i32(select(2147483647i, 272i, false), -9893i), ~10085i)) ^ firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, -22550i, ~(-15557i), select(-4623i, 17624i, false))));
    global1 = -603f;
    var_2 = 1513f;
    global0 = 1i ^ _wgslsmith_mod_i32(reverseBits(var_3.x), -(i32(-1i) * -40720i) >> (~(~u_input.c.x) % 32u));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1()))))) * -1209f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(u_input.a.yzy, var_0.wxz), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.x, 121f))))) * vec2<f32>(_wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(-1620f * 2498f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -221f)), 12354i);
}

