struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 28>;

var<private> global1: i32 = -1i;

var<private> global2: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec2<f32>(-830f, 597f), vec2<f32>(1124f, 1375f), vec2<i32>(-19385i, 12337i), 281f, false), Struct_1(vec2<f32>(1000f, -1509f), vec2<f32>(-347f, -1000f), vec2<i32>(7918i, -37049i), 686f, false));

var<private> global3: f32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<bool>) -> f32 {
    global2 = array<Struct_1, 2>();
    global1 = 28278i;
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(517f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c, _wgslsmith_f_op_f32(1668f * arg_0.c)) + _wgslsmith_f_op_f32(ceil(arg_1.b.x))))));
    let var_0 = !vec3<bool>((arg_2.x | arg_1.e) || arg_2.x, false, true);
    global1 = u_input.a.x;
    return _wgslsmith_div_f32(arg_1.b.x, arg_0.c);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> vec4<u32> {
    var var_0 = arg_3;
    let var_1 = ~min(arg_3.b.zw, arg_3.b.yx);
    global2 = array<Struct_1, 2>();
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(arg_3, arg_1, select(vec4<bool>(true, false, true, true), vec4<bool>(all(vec4<bool>(false, arg_1.e, arg_2.e, arg_2.e)), arg_1.e, arg_1.e || arg_2.e, any(vec3<bool>(arg_2.e, arg_1.e, false))), arg_1.e)))));
    global3 = arg_3.c;
    return vec4<u32>(_wgslsmith_mod_u32(arg_3.b.x, arg_3.b.x >> (~(~57034u) % 32u)), ~(~(_wgslsmith_sub_u32(arg_3.b.x, arg_3.b.x) ^ ~1u)), ~(~_wgslsmith_clamp_u32(arg_3.b.x, ~var_1.x, var_0.b.x ^ 4294967295u)), 4294967295u << (_wgslsmith_sub_u32(~_wgslsmith_add_u32(var_1.x, 1u), _wgslsmith_mult_u32(1u, ~arg_3.b.x)) % 32u));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: f32, arg_3: bool) -> Struct_2 {
    var var_0 = select(~(-_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, -46110i), arg_1.a.zz)) >> (~abs(arg_1.b.zz) % vec2<u32>(32u)), ~_wgslsmith_div_vec2_i32(arg_1.a.zw, _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-14637i, arg_1.d), vec2<i32>(-2147483647i, 0i)), abs(vec2<i32>(-1i, -29686i)))), !select(vec2<bool>(false, true), !(!vec2<bool>(false, arg_3)), vec2<bool>(arg_3, 4812u > arg_1.b.x)));
    global1 = u_input.a.x;
    var var_1 = arg_1.b;
    let var_2 = arg_1;
    let var_3 = var_1.zw;
    return arg_1;
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = 0u;
    var var_1 = Struct_2(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, countOneBits(_wgslsmith_mod_i32(0i, u_input.b.x)), 1i, firstTrailingBit(countOneBits(u_input.a.x))), vec4<i32>(~(-u_input.b.x), ~1i, reverseBits(i32(-1i) * -57400i), 0i)), vec4<u32>(7148u & select(abs(111743u), 38715u, false), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0, 0u), max(min(vec2<u32>(4294967295u, var_0), vec2<u32>(51020u, var_0)), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0, 1u), vec2<u32>(1u, 8910u)))), arg_0, ~66252u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -480f))) * 745f), _wgslsmith_dot_vec2_i32(~(-(~vec2<i32>(29827i, u_input.a.x))), _wgslsmith_add_vec2_i32(vec2<i32>(1i, -1i), global0[_wgslsmith_index_u32(countOneBits(arg_0), 28u)])));
    var var_2 = !(!(!(!select(vec2<bool>(false, false), vec2<bool>(false, true), false))));
    let var_3 = vec2<u32>(arg_0, 15091u);
    var var_4 = ~var_3.x;
    return func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(Struct_2(-var_1.a, var_1.b, _wgslsmith_f_op_f32(-var_1.c), _wgslsmith_sub_i32(0i, 0i)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(162f, var_1.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c, -227f) * vec2<f32>(var_1.c, -1000f)), firstLeadingBit(vec2<i32>(-20912i, -13986i)), _wgslsmith_f_op_f32(f32(-1f) * -363f), !var_2.x), !select(vec4<bool>(true, var_2.x, false, var_2.x), vec4<bool>(var_2.x, true, var_2.x, var_2.x), var_2.x))))), Struct_2(var_1.a, _wgslsmith_add_vec4_u32(func_3(var_1.a, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_1.b.yy, vec2<u32>(18727u, 44808u)), 2u)], global2[_wgslsmith_index_u32(min(0u, 2275u), 2u)], Struct_2(vec4<i32>(u_input.b.x, var_1.d, -2147483647i, 714i), vec4<u32>(47121u, var_1.b.x, 34843u, arg_0), 1000f, 21208i)), vec4<u32>(0u << (var_0 % 32u), var_3.x, arg_0, _wgslsmith_sub_u32(var_0, var_3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(534f, _wgslsmith_f_op_f32(948f - var_1.c))) * _wgslsmith_f_op_f32(-var_1.c)), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(var_1.a, vec4<i32>(var_1.a.x, u_input.b.x, u_input.a.x, u_input.b.x)), -vec4<i32>(u_input.b.x, var_1.a.x, -15732i, -2866i)) & (i32(-1i) * -3577i)), _wgslsmith_f_op_f32(var_1.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-741f + _wgslsmith_div_f32(var_1.c, var_1.c)))), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(16049u);
    var var_1 = countOneBits(~_wgslsmith_mod_i32(u_input.a.x, abs(-2147483647i))) < var_0.d;
    global3 = _wgslsmith_f_op_f32(-var_0.c);
    let var_2 = vec4<f32>(var_0.c, var_0.c, -1374f, 505f);
    let var_3 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(943f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.c - var_2.x), 335f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), func_4(_wgslsmith_f_op_f32(-var_2.x), func_1(var_0.b.x << (5234u % 32u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -397f))), false), _wgslsmith_f_op_f32(-var_0.c), false);
    let var_4 = u_input.b;
    global3 = _wgslsmith_f_op_f32(step(var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_2.x, 1930f), var_3.c))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b, func_4(-420f, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(var_0.a, var_0.b, 966f, -12210i), Struct_1(vec2<f32>(var_3.c, var_2.x), vec2<f32>(var_0.c, var_3.c), u_input.a, 467f, false), vec4<bool>(true, false, false, false)))), Struct_2(firstTrailingBit(vec4<i32>(var_4.x, u_input.b.x, 1i, -18676i)), ~var_0.b, _wgslsmith_f_op_f32(ceil(var_0.c)), 1i), -1325f, _wgslsmith_add_u32(var_0.b.x, var_3.b.x) != (var_0.b.x ^ 0u)), var_0.c, false).c);
}

