struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: i32,
    d: vec3<f32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: vec2<f32>,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19>;

var<private> global1: i32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<i32> {
    let var_0 = ~u_input.d.xyy;
    var var_1 = 80387u;
    global0 = array<Struct_2, 19>();
    var var_2 = Struct_3(1f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, -1000f)))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-297f, 1157f), vec2<f32>(173f, -1290f)), _wgslsmith_div_vec2_f32(vec2<f32>(-567f, 191f), vec2<f32>(1004f, 1531f))), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1689f + -995f)))), Struct_2(Struct_1(vec4<i32>(1i, 1i, 1i, 1i), any(vec3<bool>(true, true, true)), -abs(-5865i), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-369f, 1855f, 636f) * vec3<f32>(-810f, 125f, 426f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2366f, 1781f, -842f)))), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), 4294967295u, 1i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(153f, 459f), vec2<f32>(-266f, -397f))))) + vec2<f32>(615f, -1161f)), 1u));
    let var_3 = abs(-countOneBits(vec2<i32>(select(-42624i, 47010i, var_2.d.a.e.x), -2147483647i << (var_2.d.e % 32u))));
    return vec3<i32>(select(_wgslsmith_sub_i32(-var_3.x, reverseBits(var_3.x)), _wgslsmith_sub_i32(var_3.x, _wgslsmith_sub_i32(-2147483647i, var_3.x)), all(select(vec3<bool>(false, true, var_2.d.a.b), vec3<bool>(var_2.d.a.e.x, true, false), var_2.d.a.e.x))) ^ _wgslsmith_dot_vec4_i32(firstTrailingBit(var_2.d.a.a), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(2791i, var_3.x, var_3.x, -25594i), var_2.d.a.a), _wgslsmith_div_vec4_i32(vec4<i32>(var_3.x, var_3.x, var_3.x, var_2.d.a.c), vec4<i32>(var_2.d.a.a.x, var_3.x, var_2.d.c, var_3.x)))), var_2.d.c, -(~var_3.x));
}

fn func_2() -> Struct_2 {
    let var_0 = global0[_wgslsmith_index_u32(15913u, 19u)];
    var var_1 = countOneBits(-abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, var_0.a.c, 15912i) & vec3<i32>(var_0.a.c, 0i, var_0.c), func_3(), -var_0.a.a.wzw)));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-313f + _wgslsmith_f_op_f32(trunc(var_0.a.d.x))) + var_0.d.x), var_0.a.d.yx, 1918f, global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 19u)]);
    var var_3 = _wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~var_0.e, ~(~firstTrailingBit(var_0.e))), firstTrailingBit(_wgslsmith_mod_vec3_u32(reverseBits(u_input.c.wxz | u_input.d.xzz), abs(vec3<u32>(13784u, 4294967295u, 40753u)))));
    var var_4 = -1000f;
    return var_2.d;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>) -> Struct_2 {
    var var_0 = func_2();
    global1 = ~func_2().a.c;
    global1 = arg_0.c;
    global0 = array<Struct_2, 19>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(-430f)), _wgslsmith_f_op_f32(f32(-1f) * -775f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.d.x * _wgslsmith_f_op_f32(f32(-1f) * -1086f))), 1491f));
    return Struct_2(func_2().a, firstTrailingBit(_wgslsmith_clamp_u32(abs(~4294967295u), ~(1u >> (arg_1.x % 32u)), ~max(arg_1.x, var_0.e))), countOneBits(-var_0.a.c), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-217f, arg_0.d.x) + _wgslsmith_f_op_vec2_f32(-arg_0.a.d.zy)))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -386f), _wgslsmith_f_op_f32(-var_1.x))))), u_input.a.x << (select(select(~75949u, ~arg_0.e, select(true, true, var_0.a.e.x)), arg_1.x << (1u % 32u), arg_0.a.b) % 32u));
}

fn func_1() -> Struct_3 {
    global0 = array<Struct_2, 19>();
    let var_0 = global0[_wgslsmith_index_u32(u_input.b, 19u)];
    let var_1 = vec4<i32>(countOneBits(-24843i), firstTrailingBit(-1i), var_0.a.a.x, var_0.a.a.x);
    var var_2 = u_input.d;
    var var_3 = func_4(func_2(), vec2<u32>(u_input.b, 2583u));
    return Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))), vec2<f32>(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -201f)))), -199f), var_0.d.x, global0[_wgslsmith_index_u32((_wgslsmith_sub_u32(max(4294967295u, 0u), var_2.x >> (u_input.d.x % 32u)) << (64643u % 32u)) << (firstLeadingBit(~(~var_0.b)) % 32u), 19u)]);
}

fn func_5(arg_0: Struct_3) -> Struct_2 {
    let var_0 = func_1().d.a;
    var var_1 = func_4(func_2(), _wgslsmith_mod_vec2_u32(u_input.e, firstTrailingBit(vec2<u32>(arg_0.d.e, arg_0.d.e))) | ~(~(~vec2<u32>(u_input.c.x, 4294967295u))));
    global0 = array<Struct_2, 19>();
    let var_2 = ~reverseBits(vec2<u32>(arg_0.d.b, ~38769u));
    var var_3 = func_4(global0[_wgslsmith_index_u32(~(~(~58050u)), 19u)], max(vec2<u32>(~_wgslsmith_add_u32(4294967295u, var_1.b), _wgslsmith_mod_u32(13566u >> (0u % 32u), arg_0.d.e)), ~select(~u_input.c.xy, vec2<u32>(var_1.e, 0u) >> (vec2<u32>(64230u, 22926u) % vec2<u32>(32u)), var_0.e))).a;
    return arg_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 19>();
    let var_0 = global0[_wgslsmith_index_u32(~(~u_input.a.x), 19u)];
    var var_1 = var_0.a.a.xw;
    let var_2 = max(var_0.a.a, select(_wgslsmith_sub_vec4_i32(-vec4<i32>(-5998i, var_1.x, -2147483647i, 53514i) ^ (var_0.a.a >> (u_input.c % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, -2147483647i, 31045i, -1129i), -vec4<i32>(var_0.c, var_1.x, 75006i, var_0.a.c))), vec4<i32>(-var_0.a.a.x, countOneBits(var_1.x), _wgslsmith_dot_vec3_i32(var_0.a.a.yyy >> (u_input.d.yxy % vec3<u32>(32u)), vec3<i32>(var_1.x, 133427i, 2147483647i)), -(~var_0.a.c)), any(vec2<bool>(true, true))));
    let var_3 = func_5(func_1());
    var_1 = func_1().d.a.a.zy;
    var var_4 = countOneBits(-var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(max(4294967295u, 35907u), -(vec3<i32>(-1i) * -var_3.a.a.zzz), -var_2.x);
}

