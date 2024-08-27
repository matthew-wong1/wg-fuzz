struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 33483u;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec4<u32>, arg_3: vec2<u32>) -> i32 {
    global0 = ~53889u;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(f32(-1f) * -755f))) + _wgslsmith_f_op_f32(floor(-701f))));
    var_0 = 604f;
    var var_1 = _wgslsmith_add_vec4_u32(~arg_2 << (vec4<u32>(7569u, arg_2.x, 1u ^ _wgslsmith_mod_u32(arg_3.x, arg_2.x), 4294967295u) % vec4<u32>(32u)), arg_2);
    var var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(316f, 1504f, 408f), vec3<f32>(529f, 1000f, -811f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1074f, 1582f, -200f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-297f, 1000f, -282f), vec3<f32>(-117f, -870f, -1648f)))))));
    return _wgslsmith_div_i32(1i, (max(u_input.a.x, u_input.a.x ^ 0i) >> (~_wgslsmith_mult_u32(arg_3.x, var_1.x) % 32u)) >> (~(~79634u) % 32u));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: bool) -> f32 {
    global0 = 0u;
    var var_0 = arg_2;
    var var_1 = _wgslsmith_add_i32(u_input.a.x, 2147483647i);
    global0 = min(~1u, _wgslsmith_clamp_u32(~1568u, 12639u, 1u));
    var_0 = arg_2;
    return 327f;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = u_input.a;
    global0 = 0u;
    var var_1 = ~min(reverseBits(~107664u), 0u);
    var var_2 = vec3<bool>(all(select(arg_2.b.zy, select(vec2<bool>(false, arg_3.a.x), arg_2.a.xy, arg_1.a.zw), arg_1.b.xy)), !any(arg_2.b), false);
    global0 = ~_wgslsmith_mult_u32(1u, _wgslsmith_div_u32(~1u, ~firstTrailingBit(621u)));
    return Struct_1(!vec4<bool>(false, var_2.x, true, var_2.x), select(vec3<bool>(!(arg_2.a.x & false), arg_2.b.x, all(!vec2<bool>(var_2.x, var_2.x))), arg_2.b, vec3<bool>(true, true, true)), true);
}

fn func_1() -> vec3<f32> {
    global0 = ~select(abs(89677u), 1u, !(!all(vec2<bool>(false, true))));
    global0 = 1u;
    var var_0 = 0u;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2178f));
    var var_2 = func_4(vec3<i32>(-35805i, func_2(Struct_1(vec4<bool>(true, false, false, false), vec3<bool>(false, false, false), true), false, vec4<u32>(abs(0u), 1u, 1u, 1u), ~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 80675u), vec2<u32>(1975u, 5349u))), 0i), Struct_1(vec4<bool>(true, 643f <= _wgslsmith_f_op_f32(func_3(false, vec3<i32>(u_input.a.x, -11230i, u_input.a.x), Struct_1(vec4<bool>(false, true, false, false), vec3<bool>(true, false, false), false), true)), true, true), select(vec3<bool>(false, true, all(vec3<bool>(false, false, true))), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), true), false), Struct_1(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), false), true), select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), any(vec3<bool>(true, true, true))), vec3<bool>(true, true, all(vec2<bool>(false, true)))), all(vec4<bool>(true, true, false, true))), Struct_1(vec4<bool>(true, true, true, true), vec3<bool>(all(vec3<bool>(false, true, true)), any(vec4<bool>(true, false, false, true)), true), !(!all(vec2<bool>(false, true)))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-826f, -427f, -239f), vec3<f32>(-641f, 779f, -1047f))), vec3<f32>(-1000f, _wgslsmith_div_f32(-464f, 959f), _wgslsmith_div_f32(-383f, 1296f)), !select(vec3<bool>(var_2.a.x, var_2.b.x, true), var_2.b, var_2.b.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(389f, _wgslsmith_f_op_f32(f32(-1f) * -144f), _wgslsmith_f_op_f32(399f - 1238f)))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(835f, 508f, 970f))) + vec3<f32>(1f, 1f, 1f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1747f, -305f, -224f)), _wgslsmith_f_op_vec3_f32(func_1()))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1084f, -774f, -1000f), vec3<f32>(479f, -1221f, -1105f), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(107f, -136f, 626f)), false))) - vec3<f32>(_wgslsmith_f_op_f32(580f + _wgslsmith_div_f32(1622f, 835f)), _wgslsmith_f_op_f32(max(-1000f, -1000f)), -1646f)));
    var var_1 = Struct_1(!select(vec4<bool>(select(true, false, true), true, var_0.x < -813f, true), vec4<bool>(true, all(vec2<bool>(true, true)), func_4(u_input.a.zzx, Struct_1(vec4<bool>(true, true, false, true), vec3<bool>(false, true, true), false), Struct_1(vec4<bool>(true, true, false, false), vec3<bool>(true, true, true), false), Struct_1(vec4<bool>(true, true, true, false), vec3<bool>(true, false, true), true)).c, 1625f <= var_0.x), true & (var_0.x >= -2101f)), func_4(vec3<i32>(u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, u_input.a.x) | u_input.a.x, u_input.a.x), Struct_1(vec4<bool>(true, all(vec3<bool>(false, false, true)), true, all(vec2<bool>(true, true))), select(func_4(u_input.a.wzy, Struct_1(vec4<bool>(true, false, false, true), vec3<bool>(true, false, false), true), Struct_1(vec4<bool>(true, false, true, true), vec3<bool>(false, false, true), false), Struct_1(vec4<bool>(false, true, false, false), vec3<bool>(false, true, false), true)).a.yyx, vec3<bool>(true, true, true), vec3<bool>(false, false, false)), true), Struct_1(vec4<bool>(true, true, true, true), vec3<bool>(true, true, false), true), Struct_1(!func_4(u_input.a.yxy, Struct_1(vec4<bool>(true, false, false, true), vec3<bool>(true, true, true), true), Struct_1(vec4<bool>(true, false, true, false), vec3<bool>(true, true, true), false), Struct_1(vec4<bool>(true, true, true, true), vec3<bool>(false, false, true), true)).a, vec3<bool>(true, true, true), true)).b, true & ((any(vec2<bool>(false, true)) | any(vec4<bool>(false, true, false, false))) | (firstLeadingBit(u_input.a.x) <= u_input.a.x)));
    var var_2 = -(~(~firstTrailingBit(abs(56766i))));
    var_2 = -27384i;
    let var_3 = vec4<u32>(select(~(~(~28037u)), ~(~0u), !var_1.c & true), ~(~min(~35462u, ~18809u)), ~_wgslsmith_mult_u32(0u, 4294967295u), 77533u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(44634i | u_input.a.x, ~1i), u_input.a.x, _wgslsmith_mult_i32(u_input.a.x | u_input.a.x, u_input.a.x << (1u % 32u)), abs(-1i)), vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-26227i, u_input.a.x), vec2<i32>(21900i, 2147483647i)), vec2<i32>(13507i, u_input.a.x)), -1i, func_2(Struct_1(vec4<bool>(true, false, var_1.c, true), var_1.b, true), var_1.b.x, vec4<u32>(var_3.x, 29220u, 4294967295u, 1u), ~vec2<u32>(4294967295u, 55635u)), countOneBits(1i))), abs(vec4<u32>(abs(min(var_3.x, var_3.x)), _wgslsmith_dot_vec3_u32(var_3.yyy, var_3.yxx) & ~43713u, ~0u ^ ~var_3.x, ~_wgslsmith_mod_u32(var_3.x, var_3.x))), abs(1u), reverseBits(var_3.ywz));
}

