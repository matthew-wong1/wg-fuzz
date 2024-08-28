struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: f32,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<bool, 21>;

var<private> global2: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(Struct_1(true, 1u, 15831i, true, 370f), 4294967295u, Struct_1(true, 147178u, 0i, true, -792f), -668f, 38949u), Struct_3(Struct_1(false, 87572u, 1i, true, -237f), 48505u, Struct_1(false, 77771u, 1i, true, -790f), 538f, 1u));

var<private> global3: array<f32, 25> = array<f32, 25>(791f, -759f, -867f, 672f, 1003f, -1268f, -407f, -708f, 1000f, -618f, -1490f, -293f, -1003f, -337f, 1000f, -379f, -750f, 1000f, 2332f, -853f, -875f, 343f, 149f, 962f, -1000f);

var<private> global4: vec3<i32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: bool) -> vec2<u32> {
    return u_input.d;
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: i32, arg_3: Struct_3) -> vec2<f32> {
    var var_0 = _wgslsmith_clamp_u32(1u, 40597u, ~(~_wgslsmith_div_u32(1u, ~u_input.d.x)));
    var_0 = ~_wgslsmith_mult_u32(arg_3.c.b, 89419u);
    let var_1 = abs(~u_input.a.xy) ^ func_3(vec3<u32>(~abs(arg_3.e), 20636u, firstTrailingBit(889u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -162f))), !select(true, global3[_wgslsmith_index_u32(u_input.a.x, 25u)] < 653f, any(vec3<bool>(arg_3.c.a, global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(18053u, 21u)]))));
    global4 = vec3<i32>(firstTrailingBit(arg_2) ^ -firstLeadingBit(~81790i), _wgslsmith_clamp_i32(853i & (i32(-1i) * -arg_3.a.c), arg_2, -16132i), _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, 0i, countOneBits(arg_0), _wgslsmith_add_i32(0i, arg_3.a.c)), abs(select(vec4<i32>(-44167i, arg_0, -67596i, 1i), u_input.b, false) << (abs(vec4<u32>(4294967295u, 5365u, 1u, arg_3.b)) % vec4<u32>(32u)))));
    var var_2 = arg_3.a.a;
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 25u)]), _wgslsmith_f_op_f32(select(arg_3.c.e, 578f, true)), true)), _wgslsmith_f_op_f32(-arg_3.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(254f)) * -617f) * global3[_wgslsmith_index_u32(1u, 25u)]) - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1030f, _wgslsmith_f_op_f32(round(arg_1.x)))))));
}

fn func_1(arg_0: vec4<i32>) -> vec3<i32> {
    var var_0 = vec2<bool>(true, arg_0.x > ((u_input.c.x & _wgslsmith_div_i32(13677i, arg_0.x)) >> (u_input.a.x % 32u)));
    global4 = vec3<i32>(~u_input.c.x, _wgslsmith_sub_i32(u_input.b.x, ~u_input.c.x), ~(firstLeadingBit(-2147483647i) ^ u_input.b.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2((u_input.c.x | global4.x) | u_input.b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(0u, 25u)], global3[_wgslsmith_index_u32(u_input.a.x, 25u)], global3[_wgslsmith_index_u32(4294967295u, 25u)]) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1598f, global3[_wgslsmith_index_u32(u_input.d.x, 25u)], 1000f), vec3<f32>(global3[_wgslsmith_index_u32(u_input.d.x, 25u)], global3[_wgslsmith_index_u32(u_input.a.x, 25u)], global3[_wgslsmith_index_u32(u_input.d.x, 25u)])))) * vec3<f32>(1000f, _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(u_input.d.x, 25u)])), -569f)), 0i, global2[_wgslsmith_index_u32(4294967295u, 2u)])));
    global4 = arg_0.wwz << (min(reverseBits(vec3<u32>(u_input.d.x, 4294967295u, ~5516u)), u_input.a.yyw) % vec3<u32>(32u));
    let var_2 = Struct_2(567f, _wgslsmith_mult_i32(2147483647i, _wgslsmith_sub_i32(-arg_0.x, 2147483647i)) ^ arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(540f, -908f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(1u, 25u)], var_1.x, true))))), -34148i);
    return min(vec3<i32>(~(-(~u_input.b.x)), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(5208i, arg_0.x), 7547i, arg_0.x) | 23167i, countOneBits(global4.x)), max(arg_0.xwy, _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.x, -1345i, var_2.d), ~vec3<i32>(arg_0.x, global4.x, u_input.c.x)), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(1i, var_2.d, 2147483647i)), u_input.b.zzz))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(40077u, 25u)])), 1f)))), -1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(337f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a.x, 25u)]) - 248f))), -global4.x ^ _wgslsmith_dot_vec3_i32(abs(vec3<i32>(34633i, u_input.c.x, global4.x)), func_1(~vec4<i32>(global4.x, 0i, -28300i, u_input.b.x))));
    var var_1 = Struct_3(Struct_1(true, ~_wgslsmith_mod_u32(firstTrailingBit(u_input.a.x), u_input.a.x << (0u % 32u)), u_input.b.x, any(!vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 21u)], false)), 319f), 13924u, Struct_1((global1[_wgslsmith_index_u32(~0u, 21u)] || true) | (global1[_wgslsmith_index_u32(12744u, 21u)] && any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], false))), 1u, _wgslsmith_div_i32(2147483647i, 1i), (_wgslsmith_div_f32(-1180f, global3[_wgslsmith_index_u32(u_input.a.x, 25u)]) >= 566f) || any(vec3<bool>(true, true, false)), global3[_wgslsmith_index_u32(0u, 25u)]), -387f, ~(~11517u));
    global2 = array<Struct_3, 2>();
    let var_2 = vec2<i32>(-36783i, min(_wgslsmith_sub_i32(global4.x, 0i), ~global4.x) >> (0u % 32u)) >> (~vec2<u32>(_wgslsmith_mod_u32(4294967295u, var_1.b) >> (firstTrailingBit(var_1.a.b) % 32u), ~(~68022u)) % vec2<u32>(32u));
    var var_3 = vec4<bool>(true, !(!(!var_1.a.d)), any(vec3<bool>(!global1[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 21u)], var_1.c.a, !var_1.a.a)), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(u_input.a.x, 1u, u_input.b.x >= (global4.x | -25028i)), u_input.a.x), 21u)]);
    var var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-var_0.c), global3[_wgslsmith_index_u32(4294967295u, 25u)], global3[_wgslsmith_index_u32(4294967295u & var_1.b, 25u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(0u, 25u)], var_0.c)), _wgslsmith_f_op_f32(-549f * var_1.d))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-287f, -2650f), 318f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(76330u, 25u)]), -975f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, -950f, var_1.c.e, var_0.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d, global3[_wgslsmith_index_u32(u_input.a.x, 25u)], 707f, global3[_wgslsmith_index_u32(89989u, 25u)]) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(var_1.b, 25u)], global3[_wgslsmith_index_u32(var_1.c.b, 25u)], global3[_wgslsmith_index_u32(var_1.c.b, 25u)], var_1.d)))))), var_1.c.a && any(vec3<bool>(var_1.a.e <= -339f, var_2.x < u_input.b.x, !var_1.c.a))));
    global3 = array<f32, 25>();
    global1 = array<bool, 21>();
    global3 = array<f32, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(-12512i, ~(~(-24655i)), _wgslsmith_clamp_vec2_i32(var_2, _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(~u_input.b.xx, -vec2<i32>(var_2.x, global4.x)), vec2<i32>(~(-34202i), var_1.c.c)), ~(-firstTrailingBit(vec2<i32>(var_0.d, -1i)))), -1i, _wgslsmith_dot_vec2_u32(~(~u_input.a.xw), u_input.d | abs(vec2<u32>(u_input.d.x, 0u) >> (u_input.a.zw % vec2<u32>(32u)))));
}

