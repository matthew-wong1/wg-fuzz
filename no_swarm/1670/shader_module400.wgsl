struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: vec2<u32>,
    d: bool,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: vec3<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -13408i;

var<private> global1: f32;

var<private> global2: vec3<bool>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: Struct_4, arg_3: u32) -> vec2<u32> {
    var var_0 = select(vec2<bool>(true, true), global2.zy, true);
    let var_1 = Struct_1(_wgslsmith_div_vec4_f32(arg_1.c.c, arg_1.c.a.a));
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.c.a.a.x - arg_1.c.b.a.x)));
    var_0 = global2.zx;
    var var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(1f - var_1.a.x), 1028f, -1000f, -2143f));
    return u_input.c.xx;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3) -> i32 {
    return (((1i & _wgslsmith_clamp_i32(55139i, 1i, 1i)) ^ firstLeadingBit(30776i << (u_input.a.x % 32u))) & abs(_wgslsmith_mult_i32(_wgslsmith_mod_i32(-18256i, -26692i), ~1i))) & _wgslsmith_div_i32(25398i, abs(-24353i));
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: i32, arg_3: bool) -> i32 {
    var var_0 = arg_1;
    var_0 = arg_1;
    global2 = var_0.a.wzz;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-2087f + 1145f), -1142f, _wgslsmith_f_op_f32(-885f * -821f), _wgslsmith_f_op_f32(step(1229f, 1647f))) + vec4<f32>(1f, _wgslsmith_f_op_f32(1887f * 1000f), _wgslsmith_f_op_f32(668f + -483f), _wgslsmith_f_op_f32(f32(-1f) * -1648f)))));
    var var_2 = 0u;
    return func_4(func_3(4294967295u, Struct_4(!all(vec3<bool>(false, arg_1.b, false)), false, Struct_2(Struct_1(vec4<f32>(1000f, -530f, var_1.a.x, var_1.a.x)), Struct_1(var_1.a), var_1.a)), Struct_4(all(var_0.a.wwx), false, Struct_2(Struct_1(var_1.a), Struct_1(vec4<f32>(var_1.a.x, var_1.a.x, 593f, 313f)), var_1.a)), (u_input.d >> (~arg_1.c.x % 32u)) | 38760u), arg_1);
}

fn func_1(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: vec2<i32>) -> Struct_4 {
    let var_0 = arg_2.c.b;
    global2 = arg_1.zzz;
    var var_1 = 0u;
    global2 = select(vec3<bool>(1i >= _wgslsmith_mod_i32(func_2(-2981i, Struct_3(arg_1, arg_1.x, u_input.a.zy, false), arg_3.x, global2.x), arg_3.x >> (u_input.d % 32u)), false, arg_2.b), select(arg_1.zwy, vec3<bool>(global2.x, arg_2.b, false), arg_2.a), arg_1.wzx);
    let var_2 = all(arg_1.wx);
    return arg_2;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_mult_u32(u_input.b, ~4294967295u);
    var var_1 = _wgslsmith_dot_vec2_i32(arg_2.yz, _wgslsmith_div_vec2_i32(vec2<i32>(9024i, 0i), vec2<i32>(~1i, ~arg_0.x)));
    var var_2 = Struct_1(arg_1.c.a.a);
    var var_3 = arg_1.c;
    let var_4 = Struct_4(false, false, func_1(select(~arg_2.x, _wgslsmith_clamp_i32(67339i, -2147483647i, -1i), !arg_1.a) ^ _wgslsmith_add_i32(5682i, arg_2.x), select(select(select(vec4<bool>(global2.x, global2.x, arg_1.b, global2.x), vec4<bool>(arg_1.b, false, global2.x, global2.x), true), select(vec4<bool>(arg_1.a, false, true, true), vec4<bool>(global2.x, true, arg_1.b, global2.x), vec4<bool>(false, global2.x, false, arg_1.a)), vec4<bool>(true, arg_1.b, true, arg_1.b)), select(select(vec4<bool>(false, global2.x, false, arg_1.b), vec4<bool>(false, true, arg_1.a, false), vec4<bool>(global2.x, arg_1.b, arg_1.a, global2.x)), vec4<bool>(arg_1.a, global2.x, true, global2.x), true), ~2147483647i > arg_2.x), arg_1, _wgslsmith_clamp_vec2_i32(-vec2<i32>(arg_2.x, 64020i), _wgslsmith_mod_vec2_i32(-arg_2.zz, vec2<i32>(0i, arg_0.x)), -min(arg_0.zz, arg_2.xz))).c);
    return Struct_1(func_1(-1911i & (_wgslsmith_clamp_i32(0i, 38199i, -1i) & arg_0.x), !select(!vec4<bool>(var_4.b, true, true, var_4.b), vec4<bool>(global2.x, false, var_4.b, true), !vec4<bool>(false, arg_1.a, false, false)), func_1(-2147483647i, select(select(vec4<bool>(false, global2.x, arg_1.a, global2.x), vec4<bool>(var_4.a, global2.x, global2.x, global2.x), true), select(vec4<bool>(global2.x, var_4.b, true, var_4.b), vec4<bool>(global2.x, true, true, true), var_4.a), vec4<bool>(var_4.b, true, false, false)), Struct_4(true, 2147483647i <= arg_0.x, arg_1.c), (vec2<i32>(1i, -1i) << (vec2<u32>(u_input.a.x, u_input.c.x) % vec2<u32>(32u))) | ~arg_0.xz), firstTrailingBit(~_wgslsmith_mult_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(arg_0.x, -9494i)))).c.b.a);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec4<f32>) -> i32 {
    let var_0 = vec4<i32>(~func_2(2562i, Struct_3(vec4<bool>(false, false, global2.x, global2.x), global2.x, vec2<u32>(u_input.d, 4294967295u), global2.x), -12708i, global2.x), func_2(-_wgslsmith_dot_vec3_i32(vec3<i32>(-22301i, 2147483647i, 58517i), vec3<i32>(0i, 1i, 28113i)), Struct_3(select(vec4<bool>(true, global2.x, global2.x, global2.x), vec4<bool>(global2.x, global2.x, true, false), vec4<bool>(global2.x, global2.x, false, global2.x)), u_input.c.x <= 0u, vec2<u32>(u_input.c.x, u_input.d) << (vec2<u32>(u_input.a.x, 0u) % vec2<u32>(32u)), global2.x), reverseBits(1i), global2.x), ~(-37550i), 1i) >> (reverseBits(firstLeadingBit(abs(abs(vec4<u32>(76877u, 14147u, u_input.d, 1u))))) % vec4<u32>(32u));
    global0 = -_wgslsmith_mod_i32(var_0.x, _wgslsmith_clamp_i32(8223i, min(-98749i, -var_0.x), max(var_0.x, -43597i) ^ var_0.x));
    var var_1 = Struct_3(select(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(global2.x, global2.x, true, false)), !vec4<bool>(global2.x, true, true, true), !global2.x), !select(select(vec4<bool>(false, false, true, true), vec4<bool>(global2.x, false, global2.x, global2.x), vec4<bool>(false, global2.x, false, false)), !vec4<bool>(global2.x, true, false, false), !vec4<bool>(global2.x, false, global2.x, global2.x)), !(!vec4<bool>(false, true, global2.x, global2.x))), select(false, false, !(arg_2.x < _wgslsmith_f_op_f32(arg_3.x + -360f))), vec2<u32>(_wgslsmith_sub_u32(3466u & u_input.c.x, ~1u), u_input.d ^ u_input.c.x), true);
    global1 = _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_3.x, arg_1.c.x)))));
    let var_2 = abs(vec3<u32>(25784u, u_input.c.x, 4294967295u));
    return _wgslsmith_div_i32(var_0.x, var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~func_6(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1471f, 291f, -1000f, -229f) + vec4<f32>(1675f, -951f, 1739f, 3313f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(713f, -451f, 1000f, 1152f)))), Struct_2(Struct_1(vec4<f32>(594f, -1000f, -567f, -1259f)), func_5(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 42406i, -18642i), vec3<i32>(-30825i, -2147483647i, -1i)), func_1(-2147483647i, vec4<bool>(true, global2.x, false, global2.x), Struct_4(global2.x, false, Struct_2(Struct_1(vec4<f32>(1210f, -954f, -1485f, 2515f)), Struct_1(vec4<f32>(1000f, -1613f, -957f, 418f)), vec4<f32>(-747f, -431f, -451f, 830f))), vec2<i32>(-2147483647i, 1i)), firstTrailingBit(vec3<i32>(29065i, 39587i, 1i))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-750f, 467f, -613f, 756f))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(369f, 435f) - vec2<f32>(-1256f, -477f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(2246f, 266f) + vec2<f32>(-1565f, 581f)), select(global2.zx, vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, global2.x)))))), func_5(vec3<i32>(1i, 1656i, ~(-2147483647i)), Struct_4(global2.x, global2.x, func_1(-15834i, vec4<bool>(global2.x, true, global2.x, global2.x), Struct_4(global2.x, global2.x, Struct_2(Struct_1(vec4<f32>(-1199f, -2343f, -498f, -2217f)), Struct_1(vec4<f32>(-1787f, 1058f, 329f, -1303f)), vec4<f32>(-1298f, -707f, 745f, -1145f))), vec2<i32>(-73812i, -1i)).c), min(max(vec3<i32>(-2147483647i, -2147483647i, -2147483647i), vec3<i32>(958i, -30644i, -1i)), ~vec3<i32>(3099i, -4785i, -2147483647i))).a);
    var var_0 = -2147483647i;
    global0 = i32(-1i) * -2147483647i;
    let var_1 = 0i;
    var var_2 = var_1;
    var var_3 = Struct_4(any(select(!global2.zx, global2.xy, func_1(~0i, !vec4<bool>(false, global2.x, true, false), func_1(800i, vec4<bool>(global2.x, true, global2.x, true), Struct_4(global2.x, true, Struct_2(Struct_1(vec4<f32>(995f, 2567f, 493f, 655f)), Struct_1(vec4<f32>(-817f, -1733f, 749f, -1000f)), vec4<f32>(883f, -1000f, -452f, -1289f))), vec2<i32>(32063i, var_1)), vec2<i32>(2147483647i, var_1)).b)), global2.x, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(569f, -1000f, 474f, 1373f)))), Struct_1(vec4<f32>(-571f, _wgslsmith_div_f32(1464f, -716f), -1489f, -497f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-571f, 159f, 913f, 664f))))));
    let var_4 = var_3.c;
    let x = u_input.a;
    s_output = StorageBuffer(func_5(reverseBits(vec3<i32>(1i, var_1, var_1)), Struct_4(false, all(vec4<bool>(true, global2.x, global2.x, var_3.a)), func_1(var_1, !vec4<bool>(global2.x, true, true, var_3.a), func_1(-32904i, vec4<bool>(var_3.b, true, global2.x, true), Struct_4(false, true, Struct_2(var_3.c.a, var_3.c.a, vec4<f32>(var_3.c.a.a.x, var_4.c.x, 322f, var_4.c.x))), vec2<i32>(2147483647i, var_1)), vec2<i32>(-2147483647i, 9389i)).c), abs(-reverseBits(vec3<i32>(87770i, var_1, 45934i)))).a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(470f, 1000f, 1547f))))), firstTrailingBit(1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_3.c.a.a.x), func_5(vec3<i32>(var_1, var_1, 0i), Struct_4(var_3.b, false, Struct_2(var_4.a, Struct_1(var_4.a.a), var_4.b.a)), vec3<i32>(-11095i, 63417i, var_1)).a.x, _wgslsmith_f_op_f32(-983f + var_4.a.a.x)))), countOneBits(vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(var_1, var_1), var_1, func_6(var_3.c.a, Struct_2(var_3.c.a, var_3.c.a, vec4<f32>(var_3.c.a.a.x, 131f, 223f, var_4.c.x)), vec2<f32>(-1813f, 612f), var_3.c.c)), 2147483647i, ~35323i)));
}

