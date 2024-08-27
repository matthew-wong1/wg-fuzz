struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: vec2<i32>,
    d: vec3<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 83594u, 55253u, 1u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> u32 {
    global0 = _wgslsmith_mult_vec4_u32(~(~vec4<u32>(35664u, u_input.a.x, u_input.a.x | 61227u, ~0u)), u_input.a);
    let var_0 = Struct_1(vec4<bool>(true | any(vec3<bool>(true, false, true)), !all(vec4<bool>(true, true, true, true)), false, true), u_input.b, reverseBits(abs(-(vec3<i32>(-802i, u_input.b, u_input.b) >> (global0.yzy % vec3<u32>(32u))))), firstTrailingBit(vec3<u32>(u_input.a.x, abs(53222u << (global0.x % 32u)), 0u)));
    global0 = ~_wgslsmith_mod_vec4_u32(u_input.a, ~u_input.a) >> (vec4<u32>(_wgslsmith_div_u32(reverseBits(4294967295u), u_input.a.x), firstTrailingBit(~1u) & select(~global0.x, var_0.d.x, var_0.a.x), ~_wgslsmith_div_u32(0u, 22328u), 0u) % vec4<u32>(32u));
    var var_1 = Struct_1(var_0.a, -(_wgslsmith_div_i32(-3067i, var_0.c.x) & firstTrailingBit(_wgslsmith_mult_i32(0i, u_input.b))), vec3<i32>(var_0.b, ~max(36903i, _wgslsmith_add_i32(var_0.b, -1i)), reverseBits(~_wgslsmith_add_i32(-2147483647i, var_0.b))), select(vec3<u32>(814u, max(1u, 0u) ^ global0.x, abs(_wgslsmith_sub_u32(u_input.a.x, 2650u))), abs(vec3<u32>(u_input.a.x, 64101u & global0.x, countOneBits(65863u))), var_0.a.wyx));
    var var_2 = var_0.a.x;
    return 1u;
}

fn func_2() -> vec2<i32> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1000f)))) + _wgslsmith_f_op_f32(floor(554f))));
    let var_1 = vec4<u32>(_wgslsmith_mod_u32(firstTrailingBit(select(global0.x, ~129987u, false)), ~1u), 26781u, _wgslsmith_mult_u32(select(countOneBits(global0.x), global0.x, false) ^ _wgslsmith_mult_u32(global0.x, ~u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, func_3(), 29284u), ~global0.ywz)), ~(~4294967295u));
    let var_2 = Struct_3(true, abs(u_input.b) | -58990i, ~1u, Struct_2(vec3<i32>(countOneBits(-12958i), ~2147483647i, -_wgslsmith_mod_i32(-2147483647i, u_input.b)), vec2<bool>(true, true)));
    global0 = _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(var_1, vec4<u32>(u_input.a.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, global0.x), var_1.wy), max(u_input.a.x, 21124u)), global0.x, max(_wgslsmith_sub_u32(4294967295u, 28430u), var_1.x >> (0u % 32u)))), reverseBits(vec4<u32>(_wgslsmith_mod_u32(~var_2.c, firstTrailingBit(34264u)), 61635u, _wgslsmith_mult_u32(1u, func_3()), var_2.c)), vec4<u32>(4294967295u | u_input.a.x, ~(~u_input.a.x), 0u, _wgslsmith_dot_vec4_u32(u_input.a, ~_wgslsmith_add_vec4_u32(vec4<u32>(59838u, var_1.x, global0.x, global0.x), vec4<u32>(0u, 25564u, 4294967295u, 27370u)))));
    let var_3 = Struct_4(select(select(select(select(vec3<bool>(var_2.a, var_2.d.b.x, true), vec3<bool>(var_2.d.b.x, true, var_2.d.b.x), vec3<bool>(true, var_2.d.b.x, false)), !vec3<bool>(false, false, var_2.a), all(vec2<bool>(false, var_2.d.b.x))), select(select(vec3<bool>(false, false, true), vec3<bool>(var_2.a, var_2.a, var_2.d.b.x), vec3<bool>(var_2.d.b.x, true, false)), vec3<bool>(true, true, true), !vec3<bool>(var_2.d.b.x, true, false)), vec3<bool>(false, false, true)), select(vec3<bool>(false != var_2.a, all(vec4<bool>(var_2.d.b.x, false, var_2.a, var_2.d.b.x)), true), select(vec3<bool>(var_2.d.b.x, var_2.a, true), !vec3<bool>(false, var_2.a, var_2.d.b.x), all(vec3<bool>(var_2.a, var_2.a, var_2.d.b.x))), vec3<bool>(var_2.d.b.x, var_2.d.b.x, var_2.a)), select(vec3<bool>(var_2.c < global0.x, all(vec3<bool>(var_2.d.b.x, false, true)), true), select(vec3<bool>(true, var_2.a, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, var_2.a, false)), u_input.a.x != u_input.a.x), vec3<bool>(true, any(vec4<bool>(var_2.d.b.x, true, var_2.a, false)), all(vec3<bool>(var_2.a, false, true))))), Struct_3(false, -4757i, global0.x, Struct_2(vec3<i32>(_wgslsmith_dot_vec3_i32(var_2.d.a, vec3<i32>(-23607i, 6975i, 4483i)), _wgslsmith_sub_i32(0i, 1168i), u_input.b), vec2<bool>(!var_2.d.b.x, var_2.d.b.x))), var_2.d.a.zz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-800f, 851f), _wgslsmith_f_op_f32(f32(-1f) * -1697f), _wgslsmith_div_f32(534f, -1601f)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1431f, 482f, -1072f) - vec3<f32>(567f, -1007f, -1073f)), vec3<f32>(798f, -213f, -1772f), var_2.d.b.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1210f, 226f, -236f))))));
    return vec2<i32>(-(~(-50576i)), 0i);
}

fn func_4(arg_0: vec2<i32>, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> Struct_3 {
    var var_0 = Struct_5(Struct_4(vec3<bool>(arg_3.a.x, true, any(!arg_3.a.wxw)), Struct_3(true, _wgslsmith_sub_i32(-9495i, -6215i), ~arg_3.d.x, Struct_2(arg_3.c, vec2<bool>(arg_3.a.x, arg_3.a.x))), -_wgslsmith_mod_vec2_i32(min(arg_0, vec2<i32>(arg_1, 1i)), _wgslsmith_clamp_vec2_i32(arg_3.c.yz, arg_3.c.yx, vec2<i32>(2147483647i, arg_1))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-860f, -448f, arg_2) - vec3<f32>(322f, arg_2, -1285f)))))), _wgslsmith_clamp_vec3_i32(reverseBits(countOneBits(arg_3.c)), firstTrailingBit(arg_3.c), abs(-(~arg_3.c))), Struct_3(true | any(arg_3.a.ww), arg_1, 1u, Struct_2(arg_3.c, arg_3.a.zx)));
    let var_1 = arg_3;
    var var_2 = !select(select(select(select(vec3<bool>(var_1.a.x, true, false), var_0.a.a, vec3<bool>(var_0.a.b.d.b.x, arg_3.a.x, var_0.a.b.a)), vec3<bool>(arg_3.a.x, true, var_0.c.d.b.x), !vec3<bool>(var_0.c.a, var_1.a.x, var_0.c.a)), vec3<bool>(false, true, !arg_3.a.x), select(vec3<bool>(var_1.a.x, false, var_1.a.x), vec3<bool>(arg_3.a.x, var_0.a.a.x, true), var_0.a.a.x)), var_0.a.a, all(select(select(var_1.a.yw, var_1.a.yx, var_1.a.zz), var_0.c.d.b, var_0.c.d.b)));
    var var_3 = Struct_4(vec3<bool>(arg_3.a.x, !all(!var_1.a.zwy), true), Struct_3(any(select(vec4<bool>(true, false, true, false), arg_3.a, arg_3.a)), 7596i, func_3(), Struct_2(_wgslsmith_sub_vec3_i32(-var_1.c, ~vec3<i32>(-1i, arg_0.x, 15772i)), var_1.a.zw)), _wgslsmith_add_vec2_i32(~(-vec2<i32>(1058i, arg_0.x)), -abs(vec2<i32>(arg_0.x, arg_3.b))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_0.a.d))), var_0.a.d, true)), vec3<f32>(_wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(abs(744f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1236f))), _wgslsmith_f_op_f32(-arg_2)), true)));
    var var_4 = arg_3.b;
    return var_3.b;
}

fn func_1(arg_0: vec2<u32>) -> Struct_4 {
    global0 = _wgslsmith_mod_vec4_u32(u_input.a, u_input.a);
    var var_0 = func_4(select(abs(func_2() ^ -vec2<i32>(22730i, -2147483647i)), ~func_2(), true), _wgslsmith_div_i32(func_2().x, u_input.b), _wgslsmith_div_f32(-2200f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1320f), _wgslsmith_f_op_f32(step(-750f, -842f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1232f - 385f)))))), Struct_1(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true), true), -2147483647i, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, -1i, 32610i), vec4<i32>(-2147483647i, -15360i, u_input.b, u_input.b)), ~u_input.b, firstLeadingBit(u_input.b)) << (abs(global0.xzy << (global0.yyz % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(arg_0.x, select(~66925u, _wgslsmith_mult_u32(8599u, 0u), true), ~_wgslsmith_dot_vec3_u32(global0.wxy, vec3<u32>(global0.x, 42151u, arg_0.x)))));
    global0 = vec4<u32>(var_0.c, u_input.a.x, _wgslsmith_div_u32(~var_0.c, ~u_input.a.x), _wgslsmith_add_u32(4294967295u, func_4(_wgslsmith_mult_vec2_i32(var_0.d.a.yy, vec2<i32>(-10743i, 0i)), ~(-52112i), _wgslsmith_f_op_f32(f32(-1f) * -1805f), Struct_1(vec4<bool>(false, var_0.a, var_0.a, var_0.d.b.x), -7392i, var_0.d.a, vec3<u32>(38739u, global0.x, 7068u))).c) | _wgslsmith_sub_u32(u_input.a.x, var_0.c));
    let var_1 = Struct_2(-var_0.d.a, !(!vec2<bool>(0u > var_0.c, 2147483647i >= var_0.d.a.x)));
    let var_2 = arg_0.x;
    return Struct_4(vec3<bool>(((115938u << (u_input.a.x % 32u)) << (~arg_0.x % 32u)) < global0.x, true, all(var_1.b)), func_4(vec2<i32>(5659i, countOneBits(-15638i)), (var_0.b ^ 21385i) & _wgslsmith_mult_i32(var_0.b ^ 2147483647i, -2147483647i), -154f, Struct_1(select(!vec4<bool>(false, var_0.a, false, var_1.b.x), select(vec4<bool>(false, var_0.d.b.x, true, var_1.b.x), vec4<bool>(var_1.b.x, var_0.d.b.x, false, var_0.a), var_1.b.x), true), _wgslsmith_div_i32(~14465i, func_2().x), ~func_4(var_0.d.a.yx, 18006i, 2735f, Struct_1(vec4<bool>(false, false, false, false), 2147483647i, vec3<i32>(1i, var_1.a.x, -1i), global0.yyx)).d.a, ~u_input.a.ywy & vec3<u32>(17012u, 0u, u_input.a.x))), vec2<i32>(2147483647i, 2147483647i >> (1u % 32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1100f)) + _wgslsmith_f_op_f32(ceil(-738f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(475f * 1033f) + _wgslsmith_f_op_f32(-584f * -2549f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1784f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~u_input.a.yw & u_input.a.wz);
    var_0 = Struct_4(vec3<bool>(var_0.a.x, select(countOneBits(var_0.c.x), 29153i, true) > var_0.c.x, true), func_1(abs(vec2<u32>(_wgslsmith_sub_u32(var_0.b.c, global0.x), global0.x))).b, abs(var_0.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_0.d, _wgslsmith_f_op_vec3_f32(abs(func_1(global0.yz).d)), var_0.a))));
    var var_1 = Struct_5(func_1(~(~_wgslsmith_div_vec2_u32(vec2<u32>(global0.x, var_0.b.c), global0.zw))), vec3<i32>(var_0.c.x, -329i, u_input.b), var_0.b);
    var_1 = Struct_5(Struct_4(select(func_1(u_input.a.zx ^ vec2<u32>(0u, 43185u)).a, func_1(global0.wz).a, !(var_1.c.a && var_0.b.d.b.x)), var_0.b, _wgslsmith_sub_vec2_i32(-var_1.a.b.d.a.yz, func_2()), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(938f, -1000f, 1305f))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.a.d.x, var_0.d.x, var_1.a.d.x), var_1.a.d)))))), _wgslsmith_clamp_vec3_i32(var_1.a.b.d.a, ~(~(-vec3<i32>(u_input.b, var_0.b.b, var_1.b.x))), _wgslsmith_mod_vec3_i32(~var_0.b.d.a, vec3<i32>(var_0.c.x >> (4294967295u % 32u), u_input.b & u_input.b, i32(-1i) * -1i))), Struct_3(var_1.a.b.a, _wgslsmith_sub_i32(_wgslsmith_mod_i32(var_1.c.b, var_1.b.x) | func_2().x, ~1i), firstTrailingBit(~global0.x & abs(var_0.b.c)), func_1(u_input.a.xx).b.d));
    var var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1342f, _wgslsmith_f_op_f32(f32(-1f) * -404f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.d.x) - func_1(global0.yx).d.x), -1111f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-242f, var_1.a.d.x, var_1.a.d.x, var_0.d.x), vec4<f32>(511f, var_0.d.x, var_0.d.x, var_1.a.d.x)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.d.x, var_0.d.x, 484f, -1465f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1227f, -812f, var_1.a.d.x, -1302f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.d.x, var_0.d.x, var_1.a.d.x, var_1.a.d.x), vec4<f32>(var_1.a.d.x, var_1.a.d.x, var_1.a.d.x, 1793f), false)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(214f, var_1.a.d.x, _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(min(-586f, var_0.d.x))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-217f, -326f, -1411f, var_0.d.x))), !select(vec4<bool>(true, var_0.b.a, var_0.b.a, true), vec4<bool>(true, true, var_1.a.a.x, var_0.b.d.b.x), vec4<bool>(var_1.c.d.b.x, var_0.a.x, var_1.a.a.x, true)))))));
    var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-440f, _wgslsmith_f_op_f32(f32(-1f) * -350f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.x)) * -1554f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + var_2.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(u_input.a.yww, vec3<u32>(4294967295u, max(45475u, u_input.a.x), _wgslsmith_sub_u32(var_0.b.c, var_1.c.c ^ global0.x))), 0u, u_input.a.zxw);
}

