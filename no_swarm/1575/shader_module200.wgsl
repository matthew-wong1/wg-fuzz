struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1 = Struct_1(2147483647i, vec4<u32>(4294967295u, 0u, 29286u, 0u));

var<private> global2: vec4<i32>;

var<private> global3: array<vec3<bool>, 23>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = Struct_3(-30681i, Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-662f, 3701f)), vec2<f32>(1150f, 326f))), 18524u, firstTrailingBit(vec3<i32>(global1.a, -21028i, _wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(global1.a, -26047i, 0i)))), reverseBits(-global2.yw), Struct_1(global2.x, global1.b)), _wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_div_u32(0u, global1.b.x), global1.b.x ^ (global1.b.x << (1u % 32u))), global1.b.ww), Struct_1(u_input.a, max(vec4<u32>(4294967295u, 0u, 35892u, 18125u), global1.b) | vec4<u32>(3038u, ~global1.b.x, _wgslsmith_mult_u32(global1.b.x, 1u), 39871u)));
    var var_1 = global2.x;
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.a.x), _wgslsmith_f_op_f32(max(var_0.b.a.x, var_0.b.a.x))) * _wgslsmith_f_op_vec2_f32(var_0.b.a + vec2<f32>(var_0.b.a.x, _wgslsmith_f_op_f32(trunc(473f))))), select(0u, _wgslsmith_mod_u32(max(81420u, global1.b.x) << (min(var_0.d.b.x, global1.b.x) % 32u), 0u), any(vec2<bool>(any(vec3<bool>(true, arg_0, arg_0)), arg_0))), vec3<i32>(abs(-1i), 0i, _wgslsmith_clamp_i32(i32(-1i) * -var_0.d.a, min(global1.a, u_input.b.x) & 2147483647i, u_input.b.x)), u_input.b, var_0.b.e);
    let var_3 = ~(-(vec4<i32>(_wgslsmith_dot_vec3_i32(var_0.b.c, u_input.c), max(global2.x, -1i), global1.a, max(var_2.c.x, 59516i)) << (vec4<u32>(abs(var_0.b.e.b.x), var_0.b.b, firstTrailingBit(4294967295u), _wgslsmith_dot_vec2_u32(var_0.b.e.b.zy, vec2<u32>(41821u, var_2.b))) % vec4<u32>(32u))));
    let var_4 = all(!(!(!vec2<bool>(arg_0, arg_0)))) || any(!select(select(vec4<bool>(arg_0, false, false, false), vec4<bool>(arg_0, arg_0, false, arg_0), arg_0), vec4<bool>(true, true, true, true), !arg_0));
    return ~(firstTrailingBit(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(var_0.b.e.b.yyz, var_0.d.b.yxz), var_2.e.b.x, 84843u)) | var_0.b.e.b.x);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec4<bool>) -> i32 {
    let var_0 = -495f;
    let var_1 = Struct_3(0i, Struct_2(vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(ceil(477f))), abs(~_wgslsmith_dot_vec4_u32(global1.b, vec4<u32>(global1.b.x, arg_1.b.x, 45647u, global1.b.x))), global2.yyz, global2.yz | ~max(global2.xw, global2.zx), arg_1), 42731u, arg_1);
    let var_2 = var_1;
    let var_3 = select(35880i, (0i & abs(global2.x)) | _wgslsmith_add_i32(var_2.d.a, select(1i, -6884i, arg_3.x) >> (var_2.d.b.x % 32u)), arg_3.x);
    let var_4 = var_1.d;
    return _wgslsmith_dot_vec2_i32(firstTrailingBit(~u_input.b), vec2<i32>(-1i) * -reverseBits(~global2.yy));
}

fn func_2() -> Struct_1 {
    global0 = func_4(all(vec2<bool>((0u != global1.b.x) || false, true)), Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.a, -2147483647i, 47017i, -10620i), vec4<i32>(-1i, global2.x, global1.a, -42121i)) ^ (vec4<i32>(global2.x, -28266i, 1i, global1.a) ^ vec4<i32>(-2147483647i, global2.x, 0i, global2.x)), ~countOneBits(vec4<i32>(u_input.c.x, global2.x, global1.a, global1.a))), vec4<u32>(global1.b.x, ~8401u << (func_3(true) % 32u), ~(~global1.b.x), firstLeadingBit(0u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1420f, 1156f, 1057f), vec3<f32>(373f, -3006f, -585f))) * vec3<f32>(_wgslsmith_f_op_f32(round(664f)), -280f, _wgslsmith_f_op_f32(step(2221f, 478f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-442f, 602f, -1242f), vec3<f32>(-1176f, 1111f, 1000f)))), !(!select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), true)));
    let var_0 = Struct_1(_wgslsmith_sub_i32(26898i >> (global1.b.x % 32u), 41254i), reverseBits(global1.b));
    global1 = var_0;
    global0 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(max(_wgslsmith_clamp_i32(var_0.a, -var_0.a, var_0.a), min(_wgslsmith_div_i32(global2.x, -49824i), u_input.c.x)), firstLeadingBit(~(-31287i))), _wgslsmith_mod_i32(global2.x >> (select(var_0.b.x, abs(1u), true) % 32u), _wgslsmith_clamp_i32(-1i ^ (u_input.c.x << (17690u % 32u)), _wgslsmith_mult_i32(~4337i, min(-14921i, -52112i)), countOneBits(78138i))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1461f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-841f, _wgslsmith_div_f32(143f, 497f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-492f, 1560f), vec2<f32>(-591f, 1000f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-306f, -502f) + vec2<f32>(-322f, -1945f))), vec2<bool>(true, any(vec4<bool>(false, false, true, false))))))), global1.b.x, -_wgslsmith_add_vec3_i32(vec3<i32>(19518i, ~0i, _wgslsmith_mod_i32(global2.x, global1.a)), -u_input.c), vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(select(global2.xy, vec2<i32>(17166i, global2.x), true), global2.yw), vec2<i32>(global2.x, ~(-59498i))), ~(~global1.a)), Struct_1(-(-5918i << ((var_0.b.x ^ global1.b.x) % 32u)), ~(~_wgslsmith_add_vec4_u32(global1.b, vec4<u32>(var_0.b.x, global1.b.x, 11398u, var_0.b.x)))));
    return Struct_1(global2.x, ~var_1.e.b);
}

fn func_1(arg_0: bool, arg_1: f32) -> Struct_3 {
    let var_0 = func_2();
    let var_1 = Struct_2(vec2<f32>(arg_1, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -1000f)))), ~1u, ~vec3<i32>(func_2().a, 2147483647i, i32(-1i) * -16371i), vec2<i32>(0i, global1.a) << (global1.b.xw % vec2<u32>(32u)), var_0);
    var var_2 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-arg_1));
    var_2 = 983f;
    global1 = var_1.e;
    return Struct_3(_wgslsmith_div_i32(u_input.c.x >> (var_0.b.x % 32u), abs(_wgslsmith_sub_i32(-5250i, u_input.b.x))) ^ ~64094i, Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a)) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(var_1.a, var_1.a), _wgslsmith_div_vec2_f32(var_1.a, vec2<f32>(1377f, var_1.a.x))))), _wgslsmith_mult_u32(select(select(1u, var_1.b, arg_0), func_2().b.x, true), var_0.b.x), _wgslsmith_div_vec3_i32(reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(-1744i, -21896i, var_1.c.x), vec3<i32>(u_input.a, -6328i, -1i))), global2.zzw), abs(global2.wy), var_1.e), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(44730u, global1.b.x, 4294967295u, 64574u), var_1.e.b) << (reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.b, var_1.e.b.x, 9268u, 46291u), var_1.e.b, vec4<u32>(global1.b.x, 0u, 41126u, global1.b.x))) % vec4<u32>(32u)), var_1.e.b), func_2());
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3) -> u32 {
    return ~(select(30397u, ~0u, true) << (0u % 32u));
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_3) -> vec2<f32> {
    global1 = func_2();
    let var_0 = arg_1;
    var var_1 = -1200f;
    var var_2 = var_0.b.e;
    global3 = array<vec3<bool>, 23>();
    return arg_1.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<bool>, 23>();
    let var_0 = false;
    var var_1 = _wgslsmith_f_op_vec2_f32(func_6(global2.wzz, Struct_3(global1.a, Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1318f, 1996f) - vec2<f32>(-399f, -1533f))), func_5(func_1(true, 124f), func_1(true, 725f), Struct_3(global1.a, Struct_2(vec2<f32>(-240f, -1780f), 29039u, vec3<i32>(global1.a, 6706i, u_input.a), vec2<i32>(u_input.c.x, -51349i), Struct_1(-2147483647i, vec4<u32>(global1.b.x, global1.b.x, global1.b.x, global1.b.x))), 0u, Struct_1(u_input.a, vec4<u32>(13123u, global1.b.x, global1.b.x, global1.b.x)))), ~global2.wzz, vec2<i32>(global1.a, 2147483647i) >> (~vec2<u32>(39223u, 4294967295u) % vec2<u32>(32u)), Struct_1(abs(-44157i), countOneBits(vec4<u32>(1u, 10851u, 0u, global1.b.x)))), global1.b.x, Struct_1(_wgslsmith_clamp_i32(~0i, -13341i, global2.x), vec4<u32>(~global1.b.x, abs(16915u), _wgslsmith_mult_u32(global1.b.x, global1.b.x), 74527u)))));
    global0 = ~global1.a;
    let var_2 = _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-61128i, abs(u_input.b.x), 1i) ^ (-2147483647i & _wgslsmith_add_i32(u_input.a, u_input.a)), _wgslsmith_dot_vec3_i32(~global2.wzy, u_input.c >> (vec3<u32>(global1.b.x, global1.b.x, 39753u) % vec3<u32>(32u))) ^ global2.x) >> (global1.b.x % 32u);
    var var_3 = !vec2<bool>(var_1.x != var_1.x, select(var_0, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(14229i, vec2<i32>(firstTrailingBit(u_input.c.x), ~(-(1i | u_input.c.x))), _wgslsmith_mult_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(global1.b.x, global1.b.x), global1.b.zy), vec2<u32>(global1.b.x, ~global1.b.x)) | ~(~vec2<u32>(0u, global1.b.x)), global1.b.x, var_1.x);
}

