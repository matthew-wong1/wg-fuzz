struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec2<u32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: vec4<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_2) -> vec3<bool> {
    let var_0 = Struct_2(!(all(select(vec4<bool>(false, true, true, arg_2.c), vec4<bool>(arg_2.b.b.x, arg_1.a, true, false), vec4<bool>(true, arg_2.a, true, false))) || all(select(vec4<bool>(false, arg_2.b.b.x, arg_1.a, true), vec4<bool>(arg_1.c, arg_1.b.b.x, true, false), vec4<bool>(arg_2.b.b.x, false, true, arg_1.a)))), arg_1.b, false);
    let var_1 = vec2<u32>(var_0.b.a.x, 27235u) ^ _wgslsmith_sub_vec2_u32(abs(arg_1.b.a), firstLeadingBit(~_wgslsmith_div_vec2_u32(arg_1.b.c, vec2<u32>(u_input.c, 4294967295u))));
    var var_2 = ~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 16885u, _wgslsmith_dot_vec2_u32(arg_2.b.a, select(var_0.b.a, vec2<u32>(43870u, u_input.c), var_0.b.b.zx))), select(vec3<u32>(max(1u, 47882u), _wgslsmith_sub_u32(u_input.c, var_1.x), arg_1.b.c.x), reverseBits(~vec3<u32>(816u, 25638u, arg_1.b.a.x)), select(!arg_1.b.b, vec3<bool>(arg_2.b.b.x, false, false), true)), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, arg_2.b.d, 4294967295u), vec3<u32>(49269u, var_0.b.a.x, 1u))));
    var var_3 = reverseBits(reverseBits(firstTrailingBit(1i)));
    var var_4 = select(vec4<bool>(arg_2.a, true && any(select(vec4<bool>(arg_1.b.b.x, true, false, true), vec4<bool>(arg_2.b.b.x, true, arg_2.a, arg_2.c), var_0.a)), all(arg_1.b.b), true), select(vec4<bool>(true, false && var_0.b.b.x, arg_1.c, !var_0.b.b.x), select(!select(vec4<bool>(var_0.c, arg_1.b.b.x, true, arg_1.a), vec4<bool>(false, true, var_0.b.b.x, false), vec4<bool>(arg_2.b.b.x, var_0.b.b.x, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, arg_2.c, arg_2.b.b.x, var_0.b.b.x), arg_1.b.e != -1381f), (4294967295u << (0u % 32u)) >= (var_2.x << (var_2.x % 32u))), select(!arg_2.c, u_input.a.x < u_input.a.x, arg_1.a)), arg_1.c);
    return !select(var_0.b.b, select(select(vec3<bool>(true, false, true), !var_4.yzy, vec3<bool>(arg_2.a, true, true)), vec3<bool>(true, !arg_1.a, any(var_0.b.b.zx)), var_0.a && true), 39842u <= (var_2.x >> (u_input.b.x % 32u)));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> bool {
    var var_0 = Struct_1(~(~(~(~arg_2.a))), func_3(arg_0.ww, Struct_2(true, arg_2, true), Struct_2(true, Struct_1(vec2<u32>(40276u, 1u) | vec2<u32>(arg_3.b.d, 0u), select(vec3<bool>(arg_3.c, false, false), arg_2.b, arg_3.c), ~vec2<u32>(1951u, arg_1.a.x), _wgslsmith_mult_u32(18136u, u_input.c), _wgslsmith_f_op_f32(-arg_2.e)), arg_1.b.x && all(arg_3.b.b.yx))), vec2<u32>(u_input.b.x, u_input.b.x), ~(~1u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_3.b.e)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(446f))))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_1.e, arg_2.e)), arg_3.b.e), _wgslsmith_f_op_f32(round(1f)), arg_2.e, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2498f + arg_2.e), _wgslsmith_f_op_f32(-arg_3.b.e), false))))));
    let var_2 = _wgslsmith_f_op_f32(min(var_0.e, 690f));
    var_0 = Struct_1(vec2<u32>(arg_2.c.x, arg_2.d), select(!(!vec3<bool>(true, var_0.b.x, false)), vec3<bool>(all(var_0.b), any(vec4<bool>(arg_3.c, arg_1.b.x, true, arg_1.b.x)), all(select(vec4<bool>(true, arg_3.c, var_0.b.x, var_0.b.x), vec4<bool>(var_0.b.x, var_0.b.x, true, true), vec4<bool>(true, arg_3.a, false, arg_1.b.x)))), !func_3(var_1.zx, Struct_2(true, Struct_1(vec2<u32>(var_0.a.x, arg_1.a.x), arg_1.b, vec2<u32>(arg_3.b.d, arg_1.a.x), 47840u, var_1.x), false), Struct_2(true, arg_3.b, false))), u_input.b, 14339u, arg_0.x);
    var var_3 = arg_2;
    return var_0.b.x;
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_2, arg_3: u32) -> f32 {
    var var_0 = vec4<u32>(firstTrailingBit(arg_0) ^ abs(~u_input.c), arg_2.b.d, firstLeadingBit(~abs(_wgslsmith_add_u32(12330u, 1u))), ~firstLeadingBit(_wgslsmith_clamp_u32(15055u, 4205u, 0u) & abs(u_input.b.x)));
    var_0 = firstLeadingBit(_wgslsmith_div_vec4_u32(~(~(~vec4<u32>(46889u, u_input.c, 4294967295u, arg_2.b.d))), vec4<u32>(arg_3, u_input.c, u_input.b.x, _wgslsmith_sub_u32(~1u, 3063u))));
    var var_1 = _wgslsmith_f_op_f32(-arg_2.b.e);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2.b.e)) - -1987f))) * arg_2.b.e));
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(~37282u, _wgslsmith_mult_i32(-u_input.a.x, abs(7758i)), Struct_2(any(vec4<bool>(true, true, false, true)), Struct_1(vec2<u32>(u_input.b.x, u_input.b.x), vec3<bool>(false, true, false), u_input.b, u_input.b.x, 1200f), func_2(vec4<f32>(752f, -177f, -1333f, 1000f), Struct_1(vec2<u32>(18966u, u_input.c), vec3<bool>(false, true, true), u_input.b, u_input.c, 1185f), Struct_1(u_input.b, vec3<bool>(false, true, true), vec2<u32>(u_input.c, u_input.c), 0u, 1788f), Struct_2(false, Struct_1(u_input.b, vec3<bool>(false, true, true), u_input.b, u_input.b.x, 1120f), true))), 57576u)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1427f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1940f, 430f)), -771f, 4294967295u < ~u_input.c)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1290f, -2998f)), 1f, all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true))))), -674f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2028f))) * 1263f) - _wgslsmith_f_op_f32(round(-1039f))));
    var var_1 = Struct_2(all(!vec2<bool>(select(false, false, true), true)), Struct_1(_wgslsmith_mod_vec2_u32(~u_input.b, countOneBits(abs(u_input.b))), vec3<bool>(true, true, select(all(vec3<bool>(true, false, true)), true, all(vec3<bool>(true, false, false)))), _wgslsmith_add_vec2_u32(abs(vec2<u32>(u_input.c, 4294967295u)) & abs(u_input.b), max(u_input.b, vec2<u32>(u_input.b.x, u_input.b.x))), u_input.b.x, _wgslsmith_f_op_f32(abs(var_0.x))), func_3(var_0.zx, Struct_2(true, Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, 1u), vec2<u32>(u_input.b.x, 1u)), vec3<bool>(true, false, true), vec2<u32>(42386u, 18459u), 13511u, _wgslsmith_f_op_f32(1000f + -405f)), true), Struct_2(!any(vec4<bool>(true, true, true, true)), Struct_1(u_input.b, select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec2<u32>(u_input.b.x, u_input.b.x), u_input.c, _wgslsmith_f_op_f32(-var_0.x)), false)).x);
    var_1 = Struct_2(func_3(_wgslsmith_f_op_vec2_f32(-var_0.yz), Struct_2(var_1.b.b.x, Struct_1(var_1.b.a, func_3(var_0.yw, Struct_2(false, var_1.b, false), Struct_2(false, var_1.b, false)), vec2<u32>(u_input.c, 1u), abs(u_input.c), var_1.b.e), all(var_1.b.b.yx)), Struct_2(var_1.b.b.x, Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(33091u, var_1.b.c.x), var_1.b.a), select(var_1.b.b, var_1.b.b, var_1.c), ~vec2<u32>(1u, u_input.b.x), 9660u, _wgslsmith_div_f32(-235f, var_0.x)), !func_2(vec4<f32>(-1659f, 901f, -1261f, 762f), Struct_1(u_input.b, var_1.b.b, var_1.b.c, 4294967295u, var_0.x), Struct_1(u_input.b, var_1.b.b, vec2<u32>(var_1.b.a.x, 28815u), u_input.c, var_0.x), Struct_2(var_1.b.b.x, var_1.b, var_1.c)))).x, Struct_1(~_wgslsmith_mult_vec2_u32(var_1.b.c, ~u_input.b), var_1.b.b, var_1.b.a, ~(~firstTrailingBit(5762u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(124f)))))), true);
    var var_2 = -6818i;
    var_1 = Struct_2(false, var_1.b, var_1.b.b.x);
    return Struct_1(abs(countOneBits(~vec2<u32>(var_1.b.c.x, 41992u))), !vec3<bool>(var_1.a != !var_1.b.b.x, true, true), u_input.b, 32606u, _wgslsmith_f_op_f32(floor(var_1.b.e)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(!(!(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false))));
    var var_1 = -_wgslsmith_add_vec2_i32(u_input.a.zy, vec2<i32>(_wgslsmith_div_i32(-u_input.a.x, u_input.a.x ^ u_input.a.x), u_input.a.x));
    let var_2 = func_1(vec3<i32>(25341i, _wgslsmith_dot_vec4_i32(~(-u_input.a), _wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.a.x, var_1.x, u_input.a.x, u_input.a.x), u_input.a ^ u_input.a)), u_input.a.x));
    let var_3 = _wgslsmith_f_op_f32(var_2.e - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.e + _wgslsmith_f_op_f32(-170f * _wgslsmith_f_op_f32(-var_2.e)))));
    let var_4 = var_2.e;
    var_1 = -(~(firstTrailingBit(vec2<i32>(-31816i, -7060i)) << (u_input.b % vec2<u32>(32u)))) & u_input.a.yw;
    var_1 = vec2<i32>(var_1.x, var_1.x);
    let var_5 = !vec4<bool>(true, var_2.b.x, true, var_0);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_2.a.x, u_input.c, 25885u), vec4<u32>(0u, var_2.a.x, u_input.b.x, 1u)), 29871u, ~firstTrailingBit(4294967295u), countOneBits(~79284u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_4, var_4))))) - var_4), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.c.x, u_input.c, var_2.c.x, 0u), abs(_wgslsmith_div_vec4_u32(vec4<u32>(38366u, u_input.c, 0u, var_2.c.x), vec4<u32>(0u, 1u, var_2.a.x, u_input.c)))), vec4<u32>(_wgslsmith_sub_u32(u_input.c, reverseBits(var_2.d >> (1u % 32u))), u_input.b.x, firstTrailingBit(u_input.b.x), var_2.a.x), vec2<u32>(var_2.c.x & u_input.c, 9557u));
}

