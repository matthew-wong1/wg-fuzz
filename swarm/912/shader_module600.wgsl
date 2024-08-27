struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<f32> = vec3<f32>(-1083f, -1000f, 882f);

var<private> global2: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec3<f32>(1712f, 756f, 1274f), vec4<u32>(0u, 1u, 47313u, 1u)), Struct_1(vec3<f32>(404f, 604f, -866f), vec4<u32>(26193u, 4294967295u, 4294967295u, 27382u)), Struct_1(vec3<f32>(-557f, -1000f, -1429f), vec4<u32>(4294967295u, 0u, 69201u, 0u)), Struct_1(vec3<f32>(1628f, -128f, 1312f), vec4<u32>(1u, 1u, 198u, 0u)), Struct_1(vec3<f32>(825f, -1000f, 565f), vec4<u32>(19735u, 0u, 60213u, 1u)), Struct_1(vec3<f32>(184f, -902f, 1561f), vec4<u32>(0u, 4294967295u, 27542u, 32115u)), Struct_1(vec3<f32>(786f, -589f, 726f), vec4<u32>(20243u, 88574u, 4294967295u, 4294967295u)), Struct_1(vec3<f32>(-1093f, 884f, -572f), vec4<u32>(0u, 1u, 21037u, 95273u)), Struct_1(vec3<f32>(-353f, 354f, 1105f), vec4<u32>(28859u, 4294967295u, 30549u, 4294967295u)), Struct_1(vec3<f32>(-1000f, -301f, -240f), vec4<u32>(2858u, 52259u, 47715u, 1831u)), Struct_1(vec3<f32>(967f, -816f, -1637f), vec4<u32>(20350u, 42197u, 71577u, 1u)), Struct_1(vec3<f32>(-551f, -158f, 756f), vec4<u32>(1u, 18798u, 1u, 1u)), Struct_1(vec3<f32>(361f, -1000f, -501f), vec4<u32>(0u, 1u, 38866u, 37561u)), Struct_1(vec3<f32>(831f, 1000f, 260f), vec4<u32>(4294967295u, 19797u, 4294967295u, 4294967295u)), Struct_1(vec3<f32>(-1000f, 389f, 955f), vec4<u32>(3413u, 28244u, 15575u, 4294967295u)), Struct_1(vec3<f32>(966f, 2170f, -1189f), vec4<u32>(65893u, 0u, 4294967295u, 91068u)), Struct_1(vec3<f32>(594f, 655f, -426f), vec4<u32>(1u, 0u, 24257u, 0u)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2) -> f32 {
    let var_0 = vec2<bool>(all(select(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true))), any(vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, false), true)), any(vec4<bool>(true, true, true, true)))));
    var var_1 = abs(arg_1.b.b.x ^ 70609u);
    var var_2 = min(_wgslsmith_clamp_vec4_u32(abs(select(arg_0.a.b.b, vec4<u32>(arg_0.a.b.b.x, 20073u, arg_0.a.b.b.x, arg_1.b.b.x), var_0.x || false)), arg_0.a.b.b, vec4<u32>(~arg_1.b.b.x, 4294967295u, ~arg_1.b.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.b.b.x, arg_0.a.b.b.x, 11422u), arg_0.a.b.b.yzw)) ^ countOneBits(max(vec4<u32>(1u, 0u, arg_1.b.b.x, u_input.a), arg_0.a.b.b))), min(~(vec4<u32>(arg_0.a.b.b.x, 35100u, 4294967295u, arg_1.b.b.x) | vec4<u32>(25660u, 1u, arg_1.b.b.x, arg_1.b.b.x)) << (vec4<u32>(u_input.a, ~4294967295u, ~38252u, arg_0.a.b.b.x) % vec4<u32>(32u)), arg_1.b.b));
    var var_3 = vec2<i32>(arg_0.a.a.x, -2384i) & ((_wgslsmith_mult_vec2_i32(arg_1.a.wy << (vec2<u32>(var_2.x, 4294967295u) % vec2<u32>(32u)), arg_1.a.xy) | arg_1.a.xy) << (_wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(14411u, var_2.x) << (vec2<u32>(27329u, 62032u) % vec2<u32>(32u))), ~(~arg_1.b.b.xy), vec2<u32>(_wgslsmith_div_u32(var_2.x, 1u), ~arg_0.a.b.b.x)) % vec2<u32>(32u)));
    var var_4 = vec2<i32>(arg_0.a.a.x ^ _wgslsmith_mult_i32(max(var_3.x ^ arg_1.a.x, _wgslsmith_mod_i32(1i, -1i)), countOneBits(abs(2147483647i))), arg_0.a.a.x);
    return _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1321f, arg_0.a.b.a.x), -450f));
}

fn func_2() -> vec3<f32> {
    global1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 235f, 809f) * vec3<f32>(global1.x, -874f, -751f)) * vec3<f32>(-399f, 934f, global1.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, -1000f)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 709f, -1385f)), vec3<f32>(-766f, _wgslsmith_f_op_f32(max(global1.x, -878f)), _wgslsmith_f_op_f32(func_3(Struct_4(Struct_2(vec4<i32>(-24640i, 2147483647i, 9008i, -94069i), global2[_wgslsmith_index_u32(1u, 17u)], vec4<f32>(338f, 719f, global1.x, -624f))), Struct_2(vec4<i32>(56578i, 0i, -15766i, -3423i), global2[_wgslsmith_index_u32(26001u, 17u)], vec4<f32>(-1747f, global1.x, -105f, global1.x))))), vec3<bool>(true, global1.x < global1.x, true)))), 47792u >= _wgslsmith_dot_vec2_u32(~vec2<u32>(65101u, 1u), ~vec2<u32>(3687u, 7627u) | abs(vec2<u32>(u_input.a, u_input.a)))));
    let var_0 = vec2<i32>(-(2147483647i << (u_input.a % 32u)), ~9809i);
    let var_1 = !select(select(vec4<bool>(all(vec2<bool>(false, true)), true, all(vec4<bool>(false, false, true, false)), true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), true)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), any(vec2<bool>(false, true)))), !vec4<bool>(true, all(vec4<bool>(true, true, true, true)), any(vec3<bool>(true, true, false)), all(vec2<bool>(true, true))), all(vec4<bool>(true, true, true, true)));
    var var_2 = var_1.x;
    var var_3 = Struct_4(Struct_2(vec4<i32>(-reverseBits(-1i), _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, var_0.x, var_0.x, 0i), -vec4<i32>(12241i, var_0.x, var_0.x, 1i)), -13128i, var_0.x), global2[_wgslsmith_index_u32(u_input.a, 17u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(global1.x)), 1000f, _wgslsmith_div_f32(-1765f, 940f), _wgslsmith_div_f32(-928f, global1.x)))));
    return var_3.a.c.xwy;
}

fn func_1(arg_0: vec2<f32>, arg_1: u32) -> Struct_1 {
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_2()))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 1213f, 940f) + vec3<f32>(-1181f, -1022f, global1.x)))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, 1052f) - vec3<f32>(1229f, 900f, arg_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1117f, 287f, global1.x) * vec3<f32>(-1429f, 1445f, -390f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2174f, 143f, 335f), vec3<f32>(global1.x, 166f, 999f), false)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(851f, 500f, 185f)))), _wgslsmith_f_op_f32(-281f + _wgslsmith_f_op_f32(step(arg_0.x, 619f))) > _wgslsmith_f_op_f32(sign(-305f)))));
    global0 = 1000f;
    var var_0 = Struct_3(min(abs(arg_1) & 4294967295u, ~abs(0u ^ u_input.a)), true, true);
    var var_1 = var_0.c;
    global2 = array<Struct_1, 17>();
    return Struct_1(vec3<f32>(arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-731f + global1.x), _wgslsmith_f_op_f32(floor(466f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, global1.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.x)))))), vec4<u32>(1u, _wgslsmith_sub_u32(max(4294967295u, 4294967295u), ~countOneBits(1u)), 44947u, 4294967295u));
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -719f)), 1194f, _wgslsmith_div_f32(arg_2.a.x, global1.x)) * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(global1.x - arg_2.a.x)), _wgslsmith_f_op_f32(max(arg_2.a.x, arg_2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2189f)))), arg_2.a));
    global2 = array<Struct_1, 17>();
    var var_1 = !arg_1;
    global2 = array<Struct_1, 17>();
    var var_2 = _wgslsmith_f_op_f32(sign(437f));
    return Struct_2(abs(-abs(vec4<i32>(-2147483647i, arg_0, -1i, arg_0))), Struct_1(arg_2.a, _wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.b.x, ~4294967295u, reverseBits(arg_2.b.x), countOneBits(arg_2.b.x)), firstLeadingBit(arg_2.b))), vec4<f32>(527f, -1303f, _wgslsmith_f_op_f32(f32(-1f) * -437f), -1000f));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: f32, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = select(arg_1.xwx, !arg_1.zzy, !(!arg_1.x));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-273f - _wgslsmith_f_op_f32(f32(-1f) * -1589f))))), 1112f, _wgslsmith_div_f32(arg_0.c.x, global1.x));
    var var_1 = !(~u_input.a < ~_wgslsmith_div_u32(~arg_0.b.b.x, u_input.a));
    var var_2 = any(arg_1);
    var_1 = var_0.x;
    return func_4(6738i, select(vec3<bool>(all(select(arg_1.xzz, vec3<bool>(arg_1.x, true, false), vec3<bool>(arg_1.x, false, var_0.x))), false, any(select(arg_1.yx, var_0.zz, false))), arg_1.yyw, arg_1.x), Struct_1(arg_0.b.a, ~(~vec4<u32>(1u, arg_0.b.b.x, u_input.a, u_input.a) >> (_wgslsmith_mult_vec4_u32(arg_0.b.b, vec4<u32>(u_input.a, u_input.a, 0u, 48718u)) % vec4<u32>(32u))))).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(66041u, u_input.a >> (_wgslsmith_mult_u32(u_input.a, firstLeadingBit(1u) >> (~u_input.a % 32u)) % 32u)), 17u)];
    let var_1 = var_0.b.zw;
    var_0 = func_5(func_4(-(i32(-1i) * -2147483647i), !vec3<bool>(true, all(vec4<bool>(true, true, true, false)), true), func_1(vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(191f * 846f)), ~firstLeadingBit(28818u))), !select(vec4<bool>(true, any(vec3<bool>(false, false, false)), true, var_0.b.x <= 1u), vec4<bool>(all(vec2<bool>(true, false)), any(vec3<bool>(false, true, false)), 1u < var_1.x, true), vec4<bool>(all(vec3<bool>(false, true, true)), true, true, true)), _wgslsmith_f_op_vec3_f32(func_2()).x, -_wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(0i, -63210i)), _wgslsmith_div_vec2_i32(vec2<i32>(10886i, -6823i), vec2<i32>(1i, -28553i))) ^ abs(func_4(16113i, vec3<bool>(false, false, false), func_1(vec2<f32>(1000f, 2169f), 34328u)).a.xz));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-func_1(var_0.a.zx, var_1.x).a), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(~var_0.b & min(var_0.b, vec4<u32>(80421u, 94783u, 4294967295u, 1u)), vec4<u32>(abs(var_1.x), _wgslsmith_mult_u32(var_1.x, var_0.b.x), 16174u, 1u)), _wgslsmith_div_vec4_u32(~var_0.b, countOneBits(vec4<u32>(4294967295u, 41492u, u_input.a, 38u)))));
    let var_3 = func_4(firstLeadingBit(reverseBits(-42097i)) << (var_2.b.x % 32u), select(vec3<bool>(true, true, true), !select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))) || true), global2[_wgslsmith_index_u32(0u, 17u)]);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec2_u32(var_2.b.wz, vec2<u32>(1u, 5368u)), ~(~vec3<u32>(abs(var_1.x), var_2.b.x, var_3.b.b.x << (var_0.b.x % 32u))), var_2.b.x);
}

