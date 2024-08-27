struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 13>;

var<private> global1: array<vec4<f32>, 16>;

var<private> global2: array<Struct_1, 20>;

var<private> global3: array<vec3<bool>, 7>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2) -> i32 {
    let var_0 = Struct_1(arg_0.b.d.zz, _wgslsmith_f_op_f32(step(arg_1, 520f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-331f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(arg_2.b.c, arg_1))))), arg_1)), vec4<i32>(arg_0.b.a.x, -arg_2.b.a.x, _wgslsmith_sub_i32(arg_2.b.a.x, 1i), 0i), all(global3[_wgslsmith_index_u32(~(~0u), 7u)]));
    let var_1 = arg_2.b.e;
    var var_2 = Struct_2(arg_2.a, arg_2.a, _wgslsmith_f_op_vec3_f32(-arg_0.c));
    let var_3 = _wgslsmith_div_vec3_f32(arg_2.c, var_2.c);
    let var_4 = true;
    return _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(min(vec3<i32>(var_2.b.a.x, var_2.a.d.x, -10441i), vec3<i32>(-27692i, 1i, var_2.b.a.x)), var_2.b.d.xyw), -_wgslsmith_mult_i32(arg_0.b.d.x, arg_2.a.d.x)), -2147483647i), ~var_0.d.zx);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(Struct_1(vec2<i32>(-(24965i >> (u_input.a.x % 32u)), func_3(Struct_2(Struct_1(vec2<i32>(-1i, 2147483647i), -1879f, -189f, vec4<i32>(-21656i, -1i, -20040i, -2147483647i), false), Struct_1(vec2<i32>(-9723i, -1i), 2087f, 1448f, vec4<i32>(-2147483647i, 2147483647i, -36744i, 73322i), true), vec3<f32>(-616f, 562f, 1126f)), -664f, Struct_2(Struct_1(vec2<i32>(1i, -1i), 1032f, -1000f, vec4<i32>(0i, 1i, 1i, -29137i), true), global2[_wgslsmith_index_u32(u_input.a.x, 20u)], vec3<f32>(804f, -454f, -2357f)))), -510f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-139f - 1220f)) - _wgslsmith_f_op_f32(-704f * _wgslsmith_f_op_f32(ceil(687f)))), select(firstTrailingBit(vec4<i32>(-31671i, -2147483647i, -2147483647i, 5322i)) | vec4<i32>(-25562i, 1i, 9099i, -2147483647i), vec4<i32>(0i, -10149i, 1i, 1i), true), all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), 7478u == u_input.a.x))), Struct_1(~(~vec2<i32>(1i, 1i)), _wgslsmith_f_op_f32(-461f + _wgslsmith_f_op_f32(ceil(-880f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1165f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1219f * -305f))), vec4<i32>(-1i) * -(~vec4<i32>(-2147483647i, -1i, -2147483647i, -12838i)), false), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-102f, 339f, _wgslsmith_f_op_f32(1637f * 1000f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(669f, 736f, 316f))) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(143f, 1074f, 610f)))))))));
    let var_1 = var_0;
    var var_2 = Struct_4(vec4<bool>(var_1.b.e, -1i < firstTrailingBit(select(var_1.b.d.x, var_0.b.a.x, var_1.a.e)), var_1.a.e, var_0.b.e), Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(firstLeadingBit(11578i), var_1.b.a.x ^ -2147483647i), _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, -15795i), var_0.a.d.wx, vec2<i32>(1i, -1i)), var_0.b.d.zz)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-437f, -811f) - 775f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1954f * _wgslsmith_f_op_f32(var_1.c.x - -1086f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(751f, var_0.c.x))))), ~(-vec4<i32>(48817i, var_0.b.d.x, -36211i, var_1.a.a.x)), (firstLeadingBit(4294967295u) < ~u_input.a.x) | var_1.b.e));
    var var_3 = _wgslsmith_mod_vec3_i32(var_1.a.d.yxy, _wgslsmith_sub_vec3_i32(abs(vec3<i32>(0i, 2147483647i, var_0.a.d.x)), _wgslsmith_mod_vec3_i32(var_1.b.d.zzx, var_1.b.d.xyw)) ^ -_wgslsmith_sub_vec3_i32(vec3<i32>(var_2.b.d.x, -1i, var_0.a.d.x), var_1.a.d.yyx)) >> (~u_input.a.xwy % vec3<u32>(32u));
    let var_4 = var_2.a.zx;
    return var_2.b;
}

fn func_1(arg_0: bool, arg_1: vec3<bool>, arg_2: vec3<u32>) -> i32 {
    let var_0 = false;
    global2 = array<Struct_1, 20>();
    var var_1 = func_2();
    let var_2 = vec4<u32>(~u_input.a.x, 1u, u_input.a.x, arg_2.x) & ~u_input.a;
    let var_3 = vec4<u32>(~firstTrailingBit(53317u), arg_2.x, _wgslsmith_add_u32(~arg_2.x, _wgslsmith_mod_u32(arg_2.x, u_input.a.x)) | arg_2.x, _wgslsmith_sub_u32(var_2.x, var_2.x)) ^ vec4<u32>(~_wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.x, arg_2.x, u_input.a.x, var_2.x), vec4<u32>(14165u, arg_2.x, 19107u, 4294967295u) ^ vec4<u32>(var_2.x, var_2.x, 4294967295u, 59335u)), max(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(var_2, vec4<u32>(4294967295u, var_2.x, 59691u, var_2.x)), _wgslsmith_mod_u32(0u, 4294967295u)), var_2.x), _wgslsmith_dot_vec4_u32(abs(_wgslsmith_mult_vec4_u32(var_2, u_input.a)), var_2), ~arg_2.x);
    return _wgslsmith_mult_i32(1i, var_1.d.x);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = 1000f;
    let var_1 = abs(select(~firstLeadingBit(u_input.a.ywx), ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 24400u, u_input.a.x), u_input.a.zyx), func_2().e)) & countOneBits(~abs(~vec3<u32>(u_input.a.x, 1u, 4294967295u)));
    let var_2 = any(vec3<bool>(arg_1.e, arg_1.e, true));
    var var_3 = global2[_wgslsmith_index_u32(u_input.a.x, 20u)];
    var var_4 = arg_1.c >= arg_1.c;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(2147483647i, global2[_wgslsmith_index_u32(u_input.a.x, 20u)], (vec2<i32>(func_1(true, vec3<bool>(true, true, true), u_input.a.wzz), 39612i) | _wgslsmith_sub_vec2_i32(select(vec2<i32>(-53809i, 0i), vec2<i32>(-1i, 0i), vec2<bool>(false, false)), vec2<i32>(23187i, -1i))) | vec2<i32>(reverseBits(1i >> (u_input.a.x % 32u)), func_3(Struct_2(Struct_1(vec2<i32>(38027i, -41099i), 537f, -130f, vec4<i32>(27682i, -1i, 1i, -25266i), false), Struct_1(vec2<i32>(-28915i, -1i), -509f, 1539f, vec4<i32>(1i, -1i, -4453i, 0i), true), vec3<f32>(1076f, 1440f, -273f)), -374f, Struct_2(Struct_1(vec2<i32>(-1i, 0i), 104f, -162f, vec4<i32>(0i, 34957i, -35403i, 0i), false), global2[_wgslsmith_index_u32(u_input.a.x, 20u)], vec3<f32>(-236f, -369f, -687f))) | -2147483647i));
    global2 = array<Struct_1, 20>();
    let var_1 = Struct_3(Struct_2(global2[_wgslsmith_index_u32(min(1u, 1u), 20u)], Struct_1(firstLeadingBit(func_4(var_0.a.x, global2[_wgslsmith_index_u32(u_input.a.x, 20u)], var_0.d.xx).a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1468f, -508f)), var_0.b, vec4<i32>(-2147483647i, ~var_0.a.x, 13983i, -2147483647i << (u_input.a.x % 32u)), any(select(vec2<bool>(var_0.e, var_0.e), vec2<bool>(var_0.e, var_0.e), var_0.e))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.b * var_0.b))), 363f, var_0.b)));
    var var_2 = var_1.a.c.zx;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~vec2<u32>(u_input.a.x, 1u))), min(var_1.a.a.d.xx, -(var_1.a.a.a ^ var_0.a)), ~vec4<i32>(var_0.d.x, 2147483647i, 17856i, 36546i));
}

