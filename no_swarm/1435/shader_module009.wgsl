struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec2<f32>,
    d: vec4<i32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: Struct_2,
    d: Struct_2,
    e: vec2<i32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 8>;

var<private> global1: vec4<bool> = vec4<bool>(false, false, false, true);

var<private> global2: array<vec2<u32>, 1> = array<vec2<u32>, 1>(vec2<u32>(4294967295u, 24045u));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> u32 {
    global1 = !vec4<bool>(true, true, global1.x, any(vec3<bool>(global1.x, true, true)));
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, 1f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(657f, -2199f)), _wgslsmith_f_op_f32(max(-571f, 322f))))));
    global2 = array<vec2<u32>, 1>();
    var var_1 = Struct_4(all(global1.xw), _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(-vec2<i32>(-31201i, u_input.e.x) & (vec2<i32>(-10844i, -1i) | vec2<i32>(u_input.e.x, 0i)), vec2<i32>(~u_input.b.x, u_input.b.x >> (11125u % 32u))), reverseBits(-abs(vec2<i32>(-85318i, 26699i))), firstLeadingBit(vec2<i32>(u_input.d | u_input.d, -31321i))));
    let var_2 = Struct_3(-_wgslsmith_add_vec2_i32(-(~vec2<i32>(-1i, var_1.b.x)), vec2<i32>(-21709i, var_1.b.x ^ -1i)), !var_1.a, Struct_2(countOneBits(-u_input.e.zz), ~(~25909u) <= u_input.a, vec3<u32>(u_input.a, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(43924u, u_input.c.x, u_input.c.x)), ~vec3<u32>(u_input.a, u_input.a, u_input.c.x)), 4294967295u), Struct_1(select(!vec3<bool>(true, false, var_1.a), global1.zyx, !global1.x), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(2912u, u_input.c.x, 69805u), vec3<u32>(u_input.c.x, u_input.a, 1u)), 4294967295u), 8u)], _wgslsmith_f_op_vec2_f32(trunc(var_0)), u_input.e, u_input.c.x >> (4294967295u % 32u))), Struct_2(u_input.b.yx, true | (_wgslsmith_mult_i32(9466i, var_1.b.x) >= u_input.e.x), min(firstTrailingBit(vec3<u32>(0u, 0u, 4294967295u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.c.x), vec3<u32>(u_input.a, u_input.a, 0u))) >> ((countOneBits(vec3<u32>(43692u, 4294967295u, u_input.c.x)) << (abs(vec3<u32>(1u, 1u, 0u)) % vec3<u32>(32u))) % vec3<u32>(32u)), Struct_1(global1.yyx, vec2<bool>(!var_1.a, var_1.a | global1.x), vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(floor(-1329f))), ~u_input.e, u_input.c.x)), _wgslsmith_add_vec2_i32(u_input.e.yx, vec2<i32>(var_1.b.x, u_input.d)));
    return 25858u;
}

fn func_2(arg_0: vec2<u32>, arg_1: f32, arg_2: u32, arg_3: u32) -> vec3<bool> {
    var var_0 = Struct_3(_wgslsmith_sub_vec2_i32(vec2<i32>(~2147483647i, u_input.d), u_input.b.zx) | u_input.e.wz, global1.x, Struct_2(~reverseBits(-vec2<i32>(u_input.b.x, u_input.d)), global1.x, vec3<u32>(~func_3(), ~(1u & arg_3), u_input.a), Struct_1(!(!vec3<bool>(global1.x, global1.x, global1.x)), vec2<bool>(all(global1.yyy), true), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1, arg_1), vec2<f32>(arg_1, 708f), global1.x)), u_input.e, ~_wgslsmith_mult_u32(45625u, 1u))), Struct_2(vec2<i32>(u_input.d, ~min(38735i, -22786i)), global1.x, (~vec3<u32>(arg_0.x, 1u, 0u) << (~vec3<u32>(arg_3, arg_0.x, 2879u) % vec3<u32>(32u))) >> (~firstTrailingBit(vec3<u32>(52509u, arg_2, u_input.c.x)) % vec3<u32>(32u)), Struct_1(vec3<bool>(false | global1.x, !global1.x, true), select(!vec2<bool>(global1.x, false), select(global1.wz, vec2<bool>(false, global1.x), global1.x), global1.zz), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-613f, arg_1) + vec2<f32>(272f, arg_1))), u_input.e, firstLeadingBit(1u))), u_input.e.yz);
    var_0 = Struct_3(var_0.c.a, false, var_0.c, Struct_2(-(vec2<i32>(-1i) * -var_0.d.a), !all(var_0.c.d.a), var_0.c.c, Struct_1(vec3<bool>(var_0.c.b, global1.x, false & global1.x), !global0[_wgslsmith_index_u32(arg_0.x & u_input.a, 8u)], var_0.d.d.c, _wgslsmith_div_vec4_i32(var_0.d.d.d, _wgslsmith_mod_vec4_i32(u_input.e, var_0.c.d.d)), u_input.c.x)), vec2<i32>(max(_wgslsmith_div_i32(-2147483647i, var_0.e.x), 53855i), abs(var_0.d.d.d.x) << (101709u % 32u)) | reverseBits(select(var_0.c.d.d.xy, _wgslsmith_clamp_vec2_i32(vec2<i32>(-18639i, u_input.b.x), vec2<i32>(var_0.a.x, var_0.a.x), vec2<i32>(2147483647i, 2147483647i)), !var_0.d.d.b)));
    global2 = array<vec2<u32>, 1>();
    var var_1 = 42580u == ~_wgslsmith_mod_u32(24477u, _wgslsmith_dot_vec3_u32(var_0.c.c & var_0.c.c, vec3<u32>(1u, arg_3, 75997u) ^ vec3<u32>(1u, arg_0.x, u_input.a)));
    global0 = array<vec2<bool>, 8>();
    return select(vec3<bool>(true, true, true), !select(select(select(var_0.c.d.a, vec3<bool>(var_0.d.d.a.x, global1.x, global1.x), true), select(global1.xxy, vec3<bool>(false, global1.x, false), var_0.d.d.a), global1.x), global1.xwz, !var_0.c.b), true);
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(2104f, -632f, arg_2.x, arg_2.x), vec4<f32>(arg_0, arg_0, 535f, -879f), true))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, arg_0, arg_2.x, -1538f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(-arg_0), arg_0, _wgslsmith_f_op_f32(min(arg_0, 930f))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, arg_0, 371f, arg_2.x), vec4<f32>(-839f, arg_0, 150f, arg_2.x))))));
    let var_1 = select(select(vec4<bool>(false, any(func_2(vec2<u32>(u_input.c.x, u_input.a), 198f, arg_1, arg_1)), any(vec4<bool>(global1.x, false, global1.x, false)), _wgslsmith_f_op_f32(465f - arg_0) <= var_0.x), select(vec4<bool>(any(vec4<bool>(true, false, true, global1.x)), global1.x, true | global1.x, true), vec4<bool>(arg_1 != u_input.a, all(global1.xy), global1.x, global1.x | false), any(!vec4<bool>(global1.x, true, false, false))), true), select(vec4<bool>(true, global1.x, !(!global1.x), false), vec4<bool>(all(vec3<bool>(false, true, true)), true, false, global1.x & true), select(vec4<bool>(global1.x, global1.x | global1.x, false, arg_0 > -586f), !(!vec4<bool>(global1.x, global1.x, false, global1.x)), global1.x)), select(vec4<bool>(true, true, false, -u_input.d < select(2147483647i, u_input.e.x, false)), select(select(!vec4<bool>(true, true, global1.x, global1.x), vec4<bool>(global1.x, true, global1.x, false), !vec4<bool>(global1.x, true, false, global1.x)), !vec4<bool>(true, global1.x, false, global1.x), _wgslsmith_clamp_i32(u_input.d, -890i, u_input.d) <= ~u_input.e.x), ~firstLeadingBit(arg_1) < arg_1));
    global0 = array<vec2<bool>, 8>();
    global0 = array<vec2<bool>, 8>();
    var var_2 = Struct_4(false, abs(u_input.b.zz));
    return Struct_1(var_1.wwy, global1.zw, var_0.wz, vec4<i32>(-45259i, var_2.b.x | 8264i, ~_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(10893i, -1i, 1i), u_input.e.wwz), vec3<i32>(u_input.e.x, 1i, 34032i) << (vec3<u32>(arg_1, u_input.c.x, 1u) % vec3<u32>(32u))), select(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(43293i, -65817i, -2147483647i), vec3<i32>(var_2.b.x, -33590i, -1i)) & (u_input.e.x | var_2.b.x), !var_1.x)), 64579u);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: f32) -> vec3<i32> {
    let var_0 = min(-(~(arg_1.d.x >> (~4294967295u % 32u))), _wgslsmith_mod_i32(~(~(-u_input.d)), abs(abs(-8656i))));
    global2 = array<vec2<u32>, 1>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -308f))));
    let var_2 = arg_1;
    let var_3 = var_2.c.x;
    return _wgslsmith_clamp_vec3_i32(min(u_input.b, ~(-u_input.b)) | vec3<i32>(u_input.e.x, arg_1.d.x, _wgslsmith_div_i32(max(arg_0.b.x, -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0, u_input.e.x, u_input.e.x, -1i), arg_1.d))), -(vec3<i32>(2147483647i, -arg_0.b.x, ~23219i) << (min(vec3<u32>(24677u, u_input.a, var_2.e), ~vec3<u32>(var_2.e, var_2.e, 226u)) % vec3<u32>(32u))), -u_input.e.zzy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(firstLeadingBit(u_input.c.x), 8u)];
    global2 = array<vec2<u32>, 1>();
    let var_1 = ~func_4(Struct_4(true, _wgslsmith_mult_vec2_i32(min(u_input.b.xz, u_input.e.zw), u_input.b.yx)), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1377f)) + _wgslsmith_f_op_f32(ceil(-1361f))), u_input.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(346f, 953f, 423f))), -265f);
    let var_2 = Struct_3(abs(func_1(-1183f, func_3(), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(480f, -1000f, -147f))) * vec3<f32>(371f, -1026f, -200f))).d.zx), !var_0.x, Struct_2(select(vec2<i32>(u_input.e.x, -8572i), vec2<i32>(var_1.x, 0i), !var_0.x) | select(vec2<i32>(var_1.x, 21004i), var_1.xy, global1.zy), true, vec3<u32>(u_input.a, _wgslsmith_mod_u32(~u_input.c.x, ~u_input.a), 43104u), Struct_1(global1.wzw, vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-412f, 1321f))), firstTrailingBit(-u_input.e), 65298u)), Struct_2(-select(abs(vec2<i32>(u_input.e.x, -1i)), var_1.yy, func_2(u_input.c, -398f, u_input.a, u_input.c.x).yy), true, vec3<u32>(84362u, u_input.c.x, 1u), Struct_1(!(!vec3<bool>(false, var_0.x, true)), vec2<bool>(!var_0.x, all(vec2<bool>(global1.x, global1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1990f, -340f), vec2<f32>(1629f, 798f)))), func_1(201f, 0u | u_input.a, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, -1963f, -228f)))).d, ~19991u)), _wgslsmith_add_vec2_i32(vec2<i32>(-60742i, min(_wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(u_input.e.x, u_input.b.x, u_input.b.x, u_input.d)), _wgslsmith_clamp_i32(-28260i, var_1.x, u_input.e.x))), max(u_input.e.zy, var_1.xx)));
    let var_3 = select(var_2.d.d.b, !select(!vec2<bool>(var_2.b, var_0.x), global0[_wgslsmith_index_u32(~(var_2.c.d.e | 74339u), 8u)], !var_2.d.d.b), func_2(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(~u_input.c, u_input.c), vec2<u32>(~1u, reverseBits(var_2.c.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_2.c.d.c.x, -421f), -914f, var_2.c.d.a.x))), ~(~var_2.c.d.e), abs(23492u)).yx);
    global0 = array<vec2<bool>, 8>();
    var var_4 = var_2.b;
    global0 = array<vec2<bool>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(39448u, var_1.x, 1f, ~(~(~(~34800u))), var_2.a.x);
}

