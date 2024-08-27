struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: f32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(false, true), Struct_1(false, true), Struct_1(true, true), Struct_1(false, false), Struct_1(false, true), Struct_1(false, false), Struct_1(false, false), Struct_1(true, true));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    var var_0 = select(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(24479i >> (1u % 32u), -2147483647i), select(vec2<i32>(u_input.a, 0i), ~u_input.b.yz, !global0.a.yz)), vec2<i32>(-_wgslsmith_clamp_i32(-67819i, u_input.a, u_input.b.x), 0i)), ~vec2<i32>(max(2147483647i & u_input.a, -2147483647i), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.b.x, -1i), u_input.a, -u_input.a)), !any(!vec3<bool>(true, global0.a.x, global0.a.x)));
    let var_1 = true != global0.a.x;
    return 966f;
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> u32 {
    let var_0 = vec4<i32>(_wgslsmith_mod_i32(reverseBits(26004i), abs(1i)), u_input.b.x, _wgslsmith_mod_i32(~_wgslsmith_mult_i32(u_input.a ^ arg_0, arg_0), -(-arg_0 & u_input.a)), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, _wgslsmith_mult_i32(19086i, 1i)), ~(vec2<i32>(u_input.b.x, 2147483647i) | ~vec2<i32>(u_input.a, arg_0))));
    let var_1 = -13389i;
    let var_2 = 64574u;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-252f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(276f, -667f))))));
    let var_4 = 278f;
    return 1u;
}

fn func_4(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_3) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(global0.a.x, all(!arg_2.a.yww)), Struct_1(1u < arg_1.x, arg_2.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(239f - _wgslsmith_f_op_f32(202f * _wgslsmith_f_op_f32(abs(733f)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1133f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * 672f), _wgslsmith_f_op_f32(f32(-1f) * -1176f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1125f - -1552f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(916f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-2188f, -286f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1837f))), 126f));
    let var_1 = ~(~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, 50661u, ~arg_1.x), ~1u));
    var var_2 = (~firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, 4294967295u), vec3<u32>(var_1, 4294967295u, var_1))) >> (~max(~vec3<u32>(63559u, arg_1.x, 1u), vec3<u32>(arg_1.x, arg_1.x, var_1)) % vec3<u32>(32u))) & (~_wgslsmith_mult_vec3_u32(abs(vec3<u32>(var_1, 20323u, arg_1.x)), vec3<u32>(26482u, 0u, var_1)) >> ((~vec3<u32>(var_1, 59138u, 1u) | firstTrailingBit(vec3<u32>(28674u, arg_1.x, var_1))) % vec3<u32>(32u)));
    let var_3 = arg_2;
    var var_4 = true;
    return Struct_1(61103u < var_1, true);
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_3 {
    let var_0 = arg_1;
    let var_1 = func_4(_wgslsmith_clamp_i32(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, -2034i, 45118i), u_input.b.wyx)), 1i, _wgslsmith_add_i32(var_0, -1i) << (~func_2(0i, Struct_1(true, global0.a.x)) % 32u)), ~(~_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 10247u), vec2<u32>(0u, 0u)), min(vec2<u32>(53824u, 9501u), vec2<u32>(4294967295u, 0u)))), Struct_3(vec4<bool>(global0.a.x, global0.a.x, -1000f <= _wgslsmith_f_op_f32(ceil(722f)), global0.a.x && true)));
    var var_2 = Struct_2(var_1, func_4(-arg_1, vec2<u32>(39676u, ~countOneBits(0u)), Struct_3(vec4<bool>(!global0.a.x, true, any(global0.a.zxx), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-923f)), _wgslsmith_f_op_f32(-146f * 1f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-956f, _wgslsmith_f_op_f32(-200f - -1413f)))) + 1811f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-244f, -849f, -1099f, 1102f)))))));
    let var_3 = Struct_1(true, var_2.a.b);
    global0 = Struct_3(!global0.a);
    return Struct_3(vec4<bool>(false, !var_2.b.b, all(global0.a), any(global0.a)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1) -> Struct_1 {
    global1 = array<Struct_1, 8>();
    let var_0 = arg_0;
    var var_1 = _wgslsmith_dot_vec3_i32(u_input.b.wyy, vec3<i32>(u_input.a, u_input.a, 2147483647i));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1006f, _wgslsmith_f_op_f32(floor(324f)), -1433f))))));
    var var_3 = u_input.a;
    return global1[_wgslsmith_index_u32(func_2(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(-13055i, u_input.a, -60844i)), -vec3<i32>(17840i, u_input.b.x, u_input.a) << (max(vec3<u32>(32129u, 44161u, 4294967295u), vec3<u32>(64965u, 4294967295u, 0u)) % vec3<u32>(32u))), u_input.b.yzx), func_4(_wgslsmith_div_i32(_wgslsmith_div_i32(firstLeadingBit(-17959i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.a), vec2<i32>(16337i, 1i))), u_input.b.x), vec2<u32>(4294967295u, firstTrailingBit(~62187u)), arg_0)), 8u)];
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> Struct_2 {
    var var_0 = vec3<i32>(firstLeadingBit(_wgslsmith_add_i32(firstTrailingBit(_wgslsmith_mult_i32(u_input.b.x, -9464i)), abs(reverseBits(u_input.b.x)))), arg_1 | 1i, arg_1);
    let var_1 = _wgslsmith_add_i32(u_input.a << (0u % 32u), _wgslsmith_mult_i32(_wgslsmith_mod_i32(~15713i, max(~arg_1, _wgslsmith_clamp_i32(var_0.x, 29140i, arg_1))), -14110i));
    var var_2 = select(func_1(-8432i, ~(~(-u_input.a))).a, !(!(!(!vec4<bool>(true, true, arg_0.b, arg_0.b)))), !vec4<bool>(any(global0.a), func_1(-1i, var_1).a.x | global0.a.x, !all(global0.a), true || (1u > arg_2)));
    var var_3 = global0.a.x;
    var_3 = global0.a.x;
    return Struct_2(arg_0, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1483f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2265f - 215f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(706f * 1000f), _wgslsmith_f_op_f32(f32(-1f) * -323f), any(vec3<bool>(global0.a.x, arg_0.a, global0.a.x)))) - -1008f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1173f, 771f, -240f, 203f)))), vec4<f32>(_wgslsmith_f_op_f32(abs(596f)), _wgslsmith_f_op_f32(select(-686f, 1059f, false)), 1451f, _wgslsmith_f_op_f32(664f + -440f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(793f, 541f, 1520f, 1978f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(448f, -236f, -1178f, 476f)), func_1(u_input.a, arg_1).a)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(646f, -918f, 287f, 931f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 1353f, 396f, -577f), vec4<f32>(840f, -421f, -713f, -1000f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(all(select(!vec4<bool>(true, global0.a.x, true, global0.a.x), !vec4<bool>(true, global0.a.x, true, global0.a.x), global0.a)), !(!global0.a.x), true, global0.a.x);
    var var_1 = ~(~(~(~(~10795u))));
    var var_2 = func_6(func_5(func_1(firstTrailingBit(reverseBits(3355i)), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(1i, -2147483647i, -8051i)), firstTrailingBit(u_input.b.zzx))), func_4(u_input.a, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1149u, 0u, 77241u), vec4<u32>(87566u, 1u, 4294967295u, 15832u)), 29767u), func_1(u_input.b.x, -u_input.a))), 1i, ~(~(~4294967295u)));
    var_1 = ~_wgslsmith_sub_u32(~_wgslsmith_clamp_u32(~4547u, min(1u, 32920u), _wgslsmith_mod_u32(4294967295u, 66100u)), ~(_wgslsmith_mod_u32(1u, 1u) << (_wgslsmith_mod_u32(0u, 18881u) % 32u)));
    global1 = array<Struct_1, 8>();
    let var_3 = Struct_2(var_2.b, var_2.a, _wgslsmith_f_op_f32(func_3()), var_2.c, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_2.c, 529f), 250f, _wgslsmith_f_op_f32(-var_2.e.x), _wgslsmith_f_op_f32(-var_2.d)) + var_2.e))));
    let var_4 = func_1(2147483647i, 2147483647i);
    let var_5 = min(countOneBits(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), ~u_input.b.yyz), ~vec3<i32>(u_input.a, -2147483647i, u_input.a))), u_input.b.wyy >> (vec3<u32>(_wgslsmith_sub_u32(~14040u, 1u), abs(~29208u), ~(~35969u)) % vec3<u32>(32u)));
    var var_6 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(1349f, ~var_5, 54156i, _wgslsmith_div_u32(1u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(countOneBits(0u), ~43756u), ~func_2(var_5.x, Struct_1(false, true)))), -(~(-2147483647i)));
}

