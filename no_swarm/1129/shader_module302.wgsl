struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(12418u, 16043i, true), Struct_1(45724u, 39100i, true), Struct_1(1u, -3034i, false), Struct_1(4294967295u, -1i, true), Struct_1(79706u, -20480i, false), Struct_1(1u, 0i, true), Struct_1(39534u, 18842i, false), Struct_1(66936u, i32(-2147483648), true), Struct_1(2795u, 1i, true), Struct_1(44754u, 28689i, false), Struct_1(85091u, 2607i, true), Struct_1(48267u, 1i, true), Struct_1(4294967295u, 51666i, false));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1() -> i32 {
    let var_0 = 0u;
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(430f, -784f, 1241f, -288f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-813f, 1000f, -218f, 795f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1124f, -336f, -112f, -409f) + vec4<f32>(362f, -1999f, 2031f, -186f))))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(-996f)), -1000f, -189f, _wgslsmith_f_op_f32(f32(-1f) * -2183f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(654f, -531f, -1170f, -163f))), true)))));
    let var_2 = vec3<bool>(true, true, true);
    let var_3 = vec4<u32>(1u, u_input.c.x, firstTrailingBit(select(~_wgslsmith_sub_u32(var_0, 20402u), ~min(0u, u_input.c.x), any(!vec4<bool>(var_2.x, true, var_2.x, false)))), ~firstLeadingBit(27982u));
    global0 = array<Struct_1, 13>();
    return -min(reverseBits(-1i), ~reverseBits(_wgslsmith_add_i32(u_input.b.x, 13134i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1) -> u32 {
    global0 = array<Struct_1, 13>();
    let var_0 = ~firstTrailingBit(min(_wgslsmith_dot_vec3_u32(u_input.c.xxx, vec3<u32>(0u, u_input.a.x, u_input.a.x)) << (reverseBits(3306u) % 32u), arg_2.a));
    global0 = array<Struct_1, 13>();
    var var_1 = Struct_1(~_wgslsmith_mod_u32(var_0, ~(~u_input.a.x)), -u_input.b.x, (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + arg_0.x) > arg_0.x) | !all(!vec3<bool>(arg_2.c, true, false)));
    var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(countOneBits(~(1u ^ var_1.a)), 9562u), 13u)];
    return select(_wgslsmith_div_u32(~(~0u), arg_2.a & var_1.a), arg_2.a, false);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = false;
    let var_1 = global0[_wgslsmith_index_u32(abs(~func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(779f, 1265f), vec2<f32>(534f, -991f), false))), true, Struct_1(~1u, abs(2147483647i), u_input.b.x >= u_input.b.x))), 13u)];
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -232f), 1f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1254f, 1372f) + vec2<f32>(-312f, 2740f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(847f, -1976f)))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(441f, -162f), vec2<f32>(-1000f, -596f))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(1000f, -1013f)), _wgslsmith_f_op_f32(f32(-1f) * -907f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1051f, -516f)))), vec2<bool>(var_1.c, var_1.c))));
    global0 = array<Struct_1, 13>();
    var var_3 = Struct_1(_wgslsmith_mult_u32(4294967295u, 1u), arg_1.x & -2427i, all(select(vec3<bool>(true, true, !var_1.c), select(vec3<bool>(var_1.c, true, false), !vec3<bool>(false, true, var_1.c), var_1.c), vec3<bool>(true, all(vec2<bool>(false, var_1.c)), true))));
    return global0[_wgslsmith_index_u32(18608u, 13u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = u_input.b.x;
    let var_2 = global0[_wgslsmith_index_u32(0u, 13u)];
    let var_3 = max(_wgslsmith_sub_vec2_i32(vec2<i32>(var_2.b, u_input.b.x ^ (u_input.b.x << (54320u % 32u))), _wgslsmith_div_vec2_i32(u_input.b.zy, vec2<i32>(2147483647i, -23097i))), vec2<i32>(-2147483647i, -var_2.b));
    var var_4 = ~var_2.a;
    var var_5 = _wgslsmith_sub_vec3_i32(u_input.b.zyw, vec3<i32>(func_1(), _wgslsmith_mult_i32(-17699i, -_wgslsmith_div_i32(-2147483647i, 2147483647i)), var_2.b));
    var var_6 = func_2(u_input.c.xz, ~vec3<i32>(_wgslsmith_sub_i32(var_3.x, -1i), func_1(), firstTrailingBit(21314i)) >> (vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(33113u, u_input.c.x, 60069u), u_input.c.xwz), abs(u_input.c.xxw)), ~1u, 1u) % vec3<u32>(32u)));
    var var_7 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_6.a, u_input.c.x, 10409u), (~firstLeadingBit(vec3<u32>(1318u, var_2.a, var_6.a)) << (_wgslsmith_mult_vec3_u32(u_input.c.xzz, u_input.c.wxx) % vec3<u32>(32u))) >> (firstTrailingBit(u_input.c.yzy) % vec3<u32>(32u))), 13u)];
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_u32(abs(31163u), 47248u, ~0u) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(13709u, var_2.a, var_6.a, var_2.a), reverseBits(vec4<u32>(6369u, 101924u, 17406u, 19886u))) % 32u), ~(vec4<i32>(var_2.b, _wgslsmith_mod_i32(var_3.x, -2436i), var_5.x >> (var_6.a % 32u), var_5.x) ^ u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1228f * _wgslsmith_f_op_f32(-383f + 675f)))), vec4<i32>(-reverseBits(~var_3.x), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(~var_3, vec2<i32>(-2147483647i, var_6.b)), var_6.b), _wgslsmith_sub_i32(countOneBits(~(-30111i)), (var_2.b & -25819i) | func_2(vec2<u32>(u_input.c.x, var_6.a), vec3<i32>(45532i, var_7.b, -15584i)).b), 1i));
}

