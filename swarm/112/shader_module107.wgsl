struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool) -> bool {
    var var_0 = ~4294967295u;
    var_0 = ~38560u;
    var var_1 = Struct_1(vec4<i32>(_wgslsmith_add_i32(-1i, abs(-2147483647i)), u_input.c, ~(~_wgslsmith_dot_vec2_i32(u_input.b.wy, u_input.d.yy)), max(1i, ~u_input.d.x)), !(u_input.a.x <= ~u_input.a.x));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-262f)), _wgslsmith_div_f32(1299f, 966f)))))));
    var var_3 = Struct_1(reverseBits(_wgslsmith_div_vec4_i32(~(~u_input.b), _wgslsmith_add_vec4_i32(vec4<i32>(6751i, u_input.b.x, -26286i, -7159i), u_input.d))), true);
    return all(select(vec3<bool>(true, !arg_0.x, all(!vec4<bool>(arg_0.x, var_1.b, false, true))), select(select(!vec3<bool>(var_1.b, var_1.b, var_3.b), vec3<bool>(false, true, var_3.b), !vec3<bool>(var_1.b, var_3.b, true)), vec3<bool>(true, true, true), arg_0.x), any(!arg_0)));
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = u_input.d.x;
    let var_1 = select(!select(vec2<bool>(arg_2.b, false), !(!vec2<bool>(arg_2.b, false)), true), vec2<bool>(!arg_2.b, any(arg_0.yx)), arg_1);
    var_0 = ~firstLeadingBit(arg_2.a.x);
    var var_2 = Struct_2(Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(u_input.c, 20241i, arg_2.a.x)), arg_2.a.zwy << (vec3<u32>(u_input.a.x, u_input.a.x, 1u) % vec3<u32>(32u))), select(abs(arg_2.a.x), 1i, all(arg_0.zx)), _wgslsmith_sub_i32(-u_input.b.x, -1i), ~u_input.c), (_wgslsmith_dot_vec2_i32(u_input.b.wy, vec2<i32>(34486i, 0i)) < _wgslsmith_dot_vec3_i32(arg_2.a.xwz, arg_2.a.yyw)) && func_3(select(arg_0.zy, arg_0.xy, vec2<bool>(arg_0.x, true)), all(vec2<bool>(true, arg_1)))), _wgslsmith_f_op_f32(step(-487f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -258f) * -492f) + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(835f, -1430f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(441f, 1129f, -705f, -204f) * vec4<f32>(-541f, -678f, 912f, -595f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(227f, -1000f, 1783f, 404f)))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-221f, 920f)), -943f, -796f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -319f) + -308f))), false);
    let var_3 = Struct_1(var_2.a.a, false);
    return ~vec4<i32>(min(var_3.a.x, u_input.c), -1i, 17701i, _wgslsmith_add_i32(i32(-1i) * -11089i, _wgslsmith_div_i32(-11240i, -1i))) ^ (vec4<i32>(28785i, countOneBits(-var_3.a.x), -u_input.c, _wgslsmith_dot_vec4_i32(min(vec4<i32>(33130i, arg_2.a.x, 1i, 2147483647i), vec4<i32>(2147483647i, arg_2.a.x, var_2.a.a.x, 1i)), vec4<i32>(-11840i, 0i, -24457i, 37473i))) | vec4<i32>(countOneBits(var_3.a.x) & (u_input.c >> (7361u % 32u)), abs(-1i), 37993i, firstTrailingBit(arg_2.a.x) << (u_input.a.x % 32u)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> vec3<u32> {
    let var_0 = all(select(!(!vec3<bool>(arg_1.d, arg_1.a.b, arg_0.b)), !select(vec3<bool>(arg_1.d, arg_0.b, arg_1.a.b), !vec3<bool>(arg_1.a.b, arg_1.a.b, true), select(vec3<bool>(arg_0.b, arg_1.d, true), vec3<bool>(arg_0.b, arg_1.a.b, true), arg_0.b)), true));
    var var_1 = Struct_1(_wgslsmith_div_vec4_i32(arg_0.a, reverseBits(arg_0.a)), any(select(vec2<bool>(true, arg_1.d), vec2<bool>(arg_1.b != 1753f, any(vec4<bool>(false, arg_0.b, true, true))), arg_1.d)));
    var var_2 = var_1.a.x;
    var_1 = arg_0;
    var var_3 = Struct_2(arg_0, _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_vec4_f32(-arg_1.c), !all(select(!vec2<bool>(var_0, true), select(vec2<bool>(false, var_1.b), vec2<bool>(true, var_1.b), vec2<bool>(false, true)), !var_0)));
    return select(_wgslsmith_sub_vec3_u32(abs(~vec3<u32>(u_input.a.x, 1u, u_input.a.x)), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) & vec3<u32>(4294967295u, u_input.a.x, 446u)), vec3<u32>(_wgslsmith_mult_u32(~u_input.a.x, ~u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), vec4<u32>(22932u, 0u, u_input.a.x, u_input.a.x)) ^ u_input.a.x, u_input.a.x), select(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, arg_0.b), vec3<bool>(false, true, arg_1.a.b)), vec3<bool>(true, all(vec4<bool>(false, arg_0.b, var_1.b, true)), any(vec2<bool>(var_3.d, false))), func_3(vec2<bool>(var_1.b, arg_0.b), var_0) || !arg_1.d)) ^ _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(0u, 0u, u_input.a.x), abs(vec3<u32>(67172u, 34102u, u_input.a.x))), max(~vec3<u32>(u_input.a.x, 50233u, u_input.a.x), vec3<u32>(36468u, u_input.a.x, u_input.a.x) >> (vec3<u32>(u_input.a.x, 0u, 0u) % vec3<u32>(32u)))), reverseBits(~vec3<u32>(67907u, 1u, u_input.a.x)), ~min(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) | firstTrailingBit(vec3<u32>(63601u, u_input.a.x, u_input.a.x) << (vec3<u32>(11167u, u_input.a.x, 4294967295u) % vec3<u32>(32u))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<i32>) -> u32 {
    let var_0 = Struct_1(~select(countOneBits(vec4<i32>(u_input.c, arg_1.x, 0i, arg_1.x)), firstTrailingBit(firstTrailingBit(vec4<i32>(arg_1.x, -2147483647i, arg_1.x, u_input.b.x))), all(select(vec2<bool>(true, false), vec2<bool>(true, false), false))), true);
    let var_1 = func_5(Struct_1(func_4(vec3<bool>(true, true, var_0.b), func_3(vec2<bool>(false, true), var_0.b), Struct_1(var_0.a, false)), any(select(vec2<bool>(false, false), vec2<bool>(var_0.b, false), vec2<bool>(true, var_0.b)))), Struct_2(Struct_1(~vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, u_input.b.x), var_0.b || var_0.b), _wgslsmith_f_op_f32(trunc(-745f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-3049f, -1234f, -253f, -1452f) * vec4<f32>(611f, -1217f, -2468f, 1709f))), var_0.b)) << (~abs(arg_0) % vec3<u32>(32u));
    let var_2 = _wgslsmith_mod_vec3_u32(arg_0, ~(~(~vec3<u32>(var_1.x, arg_0.x, u_input.a.x))));
    var var_3 = Struct_1(var_0.a << (_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(abs(vec4<u32>(var_1.x, 4334u, arg_0.x, u_input.a.x)), firstTrailingBit(vec4<u32>(40273u, var_1.x, arg_0.x, 17078u))), _wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, arg_0.x, 1u, 4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, arg_0.x, var_1.x, 6014u), vec4<u32>(11022u, var_2.x, 0u, 0u)))) % vec4<u32>(32u)), true);
    var_3 = Struct_1(var_0.a, var_0.b);
    return 4294967295u;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: f32) -> Struct_1 {
    var var_0 = _wgslsmith_mult_u32(func_2(vec3<u32>(~(~2626u), 4294967295u, ~firstLeadingBit(arg_1.x)), ~_wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(u_input.d.x, 77238i)), u_input.b.zy)), ~_wgslsmith_div_u32(~32980u, 115017u));
    var var_1 = _wgslsmith_f_op_f32(max(arg_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-304f + 1981f))))));
    var var_2 = Struct_2(Struct_1(vec4<i32>(u_input.c, abs(1i), 0i, i32(-1i) * -73777i), all(vec3<bool>(true, true, true))), 624f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, 1168f, -288f, -371f) * vec4<f32>(-1486f, 118f, 623f, arg_2))), vec4<f32>(arg_2, 1f, _wgslsmith_f_op_f32(min(arg_2, arg_2)), _wgslsmith_f_op_f32(-arg_2)))), -2147483647i != -(~_wgslsmith_dot_vec3_i32(u_input.d.yxx, u_input.b.xxx)));
    let var_3 = !vec3<bool>(true, var_2.a.b, !(!var_2.a.b & true));
    let var_4 = Struct_2(var_2.a, _wgslsmith_f_op_f32(round(var_2.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(977f, -612f, 427f, var_2.c.x), var_2.c))), !var_2.d || true);
    return var_4.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(vec4<i32>(~(-u_input.b.x), -2147483647i, u_input.c, 1i), u_input.b & -countOneBits(vec4<i32>(u_input.d.x, u_input.d.x, -48226i, 37099i)), true), false);
    var_0 = func_1(_wgslsmith_sub_vec3_u32(vec3<u32>(abs(4294967295u), u_input.a.x, ~u_input.a.x), reverseBits(vec3<u32>(0u, u_input.a.x, u_input.a.x))) ^ ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 20270u, 23701u) >> (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), ~vec3<u32>(6572u, 0u, u_input.a.x)), _wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)), _wgslsmith_div_vec3_u32(firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, 39609u))), countOneBits(~vec3<u32>(0u, 23060u, 1u)))), 617f);
    var_0 = Struct_1(vec4<i32>(_wgslsmith_dot_vec4_i32(~min(u_input.b, var_0.a), ~vec4<i32>(u_input.b.x, u_input.b.x, 0i, u_input.c) << (vec4<u32>(90270u, u_input.a.x, 4359u, 1u) % vec4<u32>(32u))), select(u_input.c, 1i, true), max(~23436i, -59362i), var_0.a.x), any(select(select(vec4<bool>(true, var_0.b, var_0.b, var_0.b), !vec4<bool>(false, var_0.b, var_0.b, var_0.b), vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b)), vec4<bool>(var_0.b, !var_0.b, any(vec3<bool>(true, var_0.b, false)), false), any(select(vec4<bool>(true, false, false, var_0.b), vec4<bool>(var_0.b, true, false, var_0.b), var_0.b)))));
    var var_1 = min(vec2<i32>(var_0.a.x, var_0.a.x), ~abs(func_4(vec3<bool>(false, var_0.b, true), true, Struct_1(vec4<i32>(-26428i, 625i, 2147483647i, 30327i), true)).yz & ~vec2<i32>(-2147483647i, var_0.a.x)));
    var_1 = vec2<i32>(10021i, func_1(abs(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.a.x), vec3<u32>(48822u, u_input.a.x, 1u))), ~(~(~vec3<u32>(53240u, u_input.a.x, u_input.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(min(1414f, -1812f))) + 162f)).a.x);
    let x = u_input.a;
    s_output = StorageBuffer(1f, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(707f, -644f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-267f, 587f) - vec2<f32>(817f, -401f))), true)), _wgslsmith_f_op_f32(max(1731f, 1161f)));
}

