struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: bool,
    b: vec2<u32>,
    c: Struct_3,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: i32) -> u32 {
    var var_0 = select(vec2<i32>(1i, 16763i), vec2<i32>(1i, 1i), select(vec2<bool>(all(vec2<bool>(false, false)), true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true)), vec2<bool>(true, true))) & _wgslsmith_mult_vec2_i32(vec2<i32>(~(1i ^ arg_1), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_1, -7788i), vec3<i32>(u_input.a, 43019i, 145i)) | (arg_2 & arg_2)), select(select(vec2<i32>(arg_1, -1i), abs(vec2<i32>(arg_2, u_input.a)), vec2<bool>(true, true)), vec2<i32>(1i, 1i), vec2<bool>(true, true)));
    var_0 = vec2<i32>(arg_1, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(countOneBits(~vec4<i32>(66841i, u_input.a, arg_2, -10544i)), vec4<i32>(var_0.x | u_input.a, -43152i << (0u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(18354i, u_input.a, u_input.a), vec3<i32>(u_input.a, arg_2, 1i)), var_0.x)), vec4<i32>(~2687i, _wgslsmith_sub_i32(var_0.x, arg_1), ~arg_1, arg_1) ^ _wgslsmith_add_vec4_i32(~vec4<i32>(-66980i, 24720i, 1i, var_0.x), vec4<i32>(1i, 1i, -2147483647i, 0i))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -511f))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.x)) - _wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0.x + -1448f), arg_0.x, arg_0.x)));
    var var_2 = var_1;
    var_2 = var_1;
    return _wgslsmith_mod_u32(1u, ~25636u);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<bool>) -> f32 {
    let var_0 = ~firstTrailingBit(1u);
    let var_1 = vec2<u32>(func_3(vec4<f32>(-1369f, -151f, 516f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-825f + 1110f), -804f))), -1i, ~u_input.a), _wgslsmith_mult_u32(~_wgslsmith_div_u32(_wgslsmith_div_u32(1u, 40520u), var_0), _wgslsmith_mult_u32(~_wgslsmith_div_u32(var_0, var_0), var_0)));
    let var_2 = vec2<bool>(arg_0.x, true);
    var var_3 = u_input.a;
    var_3 = u_input.a;
    return _wgslsmith_f_op_f32(min(320f, -1000f));
}

fn func_4(arg_0: vec4<f32>) -> vec4<bool> {
    var var_0 = abs(_wgslsmith_mod_u32(select(~13540u, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(62918u, 15218u), min(34040u, 30197u), ~4294967295u), true & (1i <= u_input.a)), ~4294967295u));
    var var_1 = ~1u;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1218f)))));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1322f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) - _wgslsmith_div_f32(1658f, -1665f))));
    var_2 = var_3;
    return select(vec4<bool>(true, select(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(59877u, 1u, 0u)) <= ~35533u, true | (arg_0.x > -338f), true), any(vec2<bool>(true, any(vec2<bool>(true, true)))), !(!(var_3.a > 1000f))), !vec4<bool>(true & all(vec3<bool>(false, true, true)), false, any(vec4<bool>(true, true, true, true)), select(all(vec2<bool>(true, false)), true, true)), vec4<bool>(536f == _wgslsmith_f_op_f32(ceil(var_2.a)), all(vec3<bool>(true, true, true)), all(vec3<bool>(true, any(vec2<bool>(false, true)), true)), false));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec3<f32>) -> u32 {
    var var_0 = func_4(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - arg_2.x))), _wgslsmith_f_op_f32(f32(-1f) * -1061f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(vec2<bool>(false, false), vec4<bool>(true, true, false, false)))))), arg_2.x));
    let var_1 = Struct_4(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, _wgslsmith_f_op_f32(step(149f, arg_1)), _wgslsmith_f_op_f32(1011f * -382f), -857f) * vec4<f32>(_wgslsmith_f_op_f32(func_2(var_0.zy, vec4<bool>(var_0.x, true, var_0.x, var_0.x))), 1622f, arg_2.x, -263f))).x, vec2<u32>(1u, 1u), Struct_3(1140f), countOneBits(_wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(1u, 0u, 0u)), vec3<u32>(1u, 1u, 1u), select(vec3<u32>(49254u, 5398u, 45851u), vec3<u32>(4294967295u, 1u, 15167u), var_0.zyz))) >> (~countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 13946u, 51119u), vec3<u32>(3159u, 0u, 26934u))) % vec3<u32>(32u)));
    var_0 = select(func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-638f, 1041f, 537f, arg_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-597f, arg_2.x, 558f, 367f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-196f, var_1.c.a, 396f, var_1.c.a) * vec4<f32>(-1000f, -1254f, var_1.c.a, var_1.c.a))))), func_4(vec4<f32>(_wgslsmith_f_op_f32(round(-1666f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2.x, arg_2.x)) - arg_1), arg_2.x, var_1.c.a)), select(select(select(vec4<bool>(false, true, var_1.a, var_0.x), func_4(vec4<f32>(var_1.c.a, arg_2.x, 237f, arg_1)), select(vec4<bool>(false, var_1.a, true, true), vec4<bool>(true, var_1.a, var_1.a, false), vec4<bool>(var_0.x, var_0.x, true, true))), vec4<bool>(any(vec2<bool>(true, var_0.x)), true, arg_0 < 2147483647i, var_0.x), !vec4<bool>(true, var_1.a, true, var_1.a)), vec4<bool>(!all(vec4<bool>(false, var_0.x, false, var_1.a)), any(var_0.ywz) != true, all(!vec4<bool>(var_0.x, var_0.x, var_1.a, var_0.x)), min(u_input.a, -25581i) < -1i), var_0.x));
    var_0 = !select(!select(select(vec4<bool>(var_1.a, true, var_0.x, var_1.a), vec4<bool>(true, var_0.x, false, var_1.a), vec4<bool>(false, false, var_0.x, false)), !vec4<bool>(var_0.x, var_0.x, var_1.a, var_1.a), vec4<bool>(false, var_0.x, false, var_0.x)), vec4<bool>(all(!vec2<bool>(var_0.x, var_0.x)), any(func_4(vec4<f32>(641f, var_1.c.a, 719f, 283f)).yy), false, true), !(_wgslsmith_f_op_f32(f32(-1f) * -1616f) > _wgslsmith_f_op_f32(var_1.c.a - -2076f)));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(-1453f))), Struct_1(_wgslsmith_f_op_f32(abs(-1291f))), _wgslsmith_f_op_vec3_f32(-arg_2));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(firstLeadingBit(var_1.b.x)), 1u, ~1u, abs(~(0u ^ var_1.b.x))), abs(~(vec4<u32>(1u, var_1.b.x, 47156u, var_1.b.x) << (vec4<u32>(var_1.b.x, var_1.b.x, 0u, var_1.b.x) % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(~(~(~vec3<u32>(26609u, 6841u, 4294967295u)))) | vec3<u32>(16862u, 47418u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 54625u, 1u, 0u), vec4<u32>(38123u, 15405u, 103339u, 32996u)), select(vec4<u32>(1u, 13474u, 37701u, 71593u), vec4<u32>(20325u, 2457u, 3381u, 4294967295u), true)) << (_wgslsmith_mod_u32(func_1(2147483647i, 1867f, vec3<f32>(650f, -895f, 513f)), 24731u >> (1u % 32u)) % 32u));
    let var_1 = -countOneBits(-max(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 0i, u_input.a, -1i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), _wgslsmith_add_i32(0i, u_input.a)));
    var var_2 = Struct_1(868f);
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(select(957f, _wgslsmith_f_op_f32(floor(var_2.a)), any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-260f + _wgslsmith_f_op_f32(min(var_2.a, 1000f))) + 1538f)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_2.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.a)))), _wgslsmith_f_op_f32(abs(var_2.a))));
    var var_4 = vec4<i32>(i32(-1i) * -_wgslsmith_mod_i32(-2147483647i, 2147483647i), -_wgslsmith_clamp_i32(min(662i, -1i), 39927i, 0i), 0i, -64838i) ^ vec4<i32>(0i, -27179i, var_1, -63374i);
    var var_5 = var_3.a;
    let var_6 = ~var_0.x;
    var var_7 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, var_2.a))));
    var_3 = Struct_2(var_3.a, Struct_1(_wgslsmith_f_op_f32(select(var_2.a, -776f, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_3.c))) - var_3.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_7.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -976f), var_2.a), var_7.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.a + var_5.a)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(304f, _wgslsmith_f_op_f32(floor(-865f)), var_3.a.a, -998f) * vec4<f32>(var_5.a, _wgslsmith_div_f32(var_2.a, var_7.a), _wgslsmith_f_op_f32(sign(var_7.a)), -1068f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-1000f + 1099f), _wgslsmith_f_op_f32(f32(-1f) * -260f), _wgslsmith_f_op_f32(floor(var_2.a)), _wgslsmith_div_f32(var_5.a, 1000f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.a, 853f, 2127f, -218f))))))), min(~_wgslsmith_add_vec2_u32(vec2<u32>(120989u, 31126u), vec2<u32>(4294967295u, var_0.x)) ^ vec2<u32>(~var_0.x, abs(4294967295u)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.x, 1u), var_0), ~0u) ^ var_0.zx));
}

