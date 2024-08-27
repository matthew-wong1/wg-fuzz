struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: bool,
    d: vec2<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: Struct_4,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1146f, 1605f, -870f, -570f);

var<private> global1: array<vec3<u32>, 26>;

var<private> global2: array<vec2<bool>, 24> = array<vec2<bool>, 24>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: Struct_5, arg_1: u32) -> bool {
    return !(!(arg_0.c.a.a.x && arg_0.d.c.b.x));
}

fn func_3(arg_0: u32, arg_1: bool) -> vec3<bool> {
    let var_0 = _wgslsmith_div_vec3_u32(countOneBits(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0, arg_0), _wgslsmith_mod_vec2_u32(vec2<u32>(13073u, 20040u), vec2<u32>(arg_0, 3512u))), ~_wgslsmith_mod_u32(arg_0, 4294967295u), ~(67673u ^ arg_0)), 26u)]), _wgslsmith_mod_vec3_u32(global1[_wgslsmith_index_u32(4294967295u ^ (59956u & _wgslsmith_mod_u32(4294967295u, arg_0)), 26u)], global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 4294967295u, ~1u), 26u)] ^ vec3<u32>(arg_0, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 131400u), vec2<u32>(arg_0, arg_0)), ~29535u)));
    let var_1 = 622f;
    global2 = array<vec2<bool>, 24>();
    let var_2 = Struct_4(Struct_3(!select(select(vec4<bool>(true, true, arg_1, arg_1), vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(arg_1, arg_1, arg_1, arg_1)), select(vec4<bool>(true, true, arg_1, arg_1), vec4<bool>(false, false, arg_1, arg_1), vec4<bool>(false, arg_1, arg_1, true)), arg_1 | false), _wgslsmith_div_u32(1u, max(1u, 1098u)) | ~(~arg_0), global0.x), Struct_1(vec3<i32>(u_input.a.x, -19676i, u_input.a.x), vec2<bool>(all(vec3<bool>(arg_1, false, arg_1)) && false, arg_1)), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.zw)));
    let var_3 = Struct_1(var_2.b.a, select(select(vec2<bool>(true, true), !select(vec2<bool>(arg_1, arg_1), vec2<bool>(var_2.a.a.x, true), global2[_wgslsmith_index_u32(arg_0, 24u)]), var_2.a.a.zx), var_2.b.b, var_2.b.b.x));
    return vec3<bool>(var_3.b.x, false, false);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_5, arg_2: Struct_2) -> u32 {
    global1 = array<vec3<u32>, 26>();
    let var_0 = ~countOneBits(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(20579u, arg_2.b), vec2<u32>(0u, 40759u))));
    var var_1 = select(-vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_1.b, 7400i, 2147483647i) | vec4<i32>(-21892i, 71329i, arg_1.c.b.a.x, 1i), firstTrailingBit(vec4<i32>(44488i, arg_1.b, arg_1.b, u_input.a.x))), (arg_2.c.a.x & -1i) | 57360i), u_input.a, !vec2<bool>(arg_2.c.b.x, any(vec2<bool>(arg_0.x, true))));
    var_1 = arg_2.c.a.xz | vec2<i32>(arg_1.c.b.a.x & u_input.a.x, _wgslsmith_mod_i32(min(_wgslsmith_mult_i32(u_input.a.x, 22844i), arg_1.d.c.a.x), -29089i));
    global2 = array<vec2<bool>, 24>();
    return _wgslsmith_mult_u32(28327u, ~_wgslsmith_div_u32(~select(arg_1.c.a.b, 31708u, true), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(var_0, vec2<u32>(1u, arg_1.c.a.b)), var_0)));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(-734f, func_4(func_3(51287u, select(true, true, all(vec3<bool>(true, false, true)))), Struct_5(Struct_3(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), false), 11135u << (1u % 32u), -282f), u_input.a.x, Struct_4(Struct_3(vec4<bool>(false, false, true, false), 77063u, global0.x), Struct_1(vec3<i32>(30878i, u_input.a.x, 49480i), vec2<bool>(false, true)), false, global0.zx), Struct_2(global0.x, ~4294967295u, Struct_1(vec3<i32>(2147483647i, 2147483647i, 1i), global2[_wgslsmith_index_u32(4294967295u, 24u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.x, 223f)) - _wgslsmith_f_op_f32(min(-529f, -363f)))), Struct_2(global0.x, 1u, Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, -45624i) | vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), global2[_wgslsmith_index_u32(86508u, 24u)]))), Struct_1(select(-_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -42636i), vec3<i32>(62941i, u_input.a.x, -1i)), vec3<i32>(2147483647i, u_input.a.x, u_input.a.x), func_3(1u, false)), !select(global2[_wgslsmith_index_u32(1u, 24u)], vec2<bool>(false, true), true)));
    let var_1 = Struct_5(Struct_3(!vec4<bool>(var_0.c.b.x, true, false, any(vec3<bool>(false, var_0.c.b.x, false))), var_0.b, 344f), -abs(u_input.a.x), Struct_4(Struct_3(vec4<bool>(false, true, all(vec3<bool>(false, var_0.c.b.x, false)), all(vec4<bool>(false, false, var_0.c.b.x, true))), _wgslsmith_div_u32(var_0.b, _wgslsmith_dot_vec2_u32(vec2<u32>(42152u, var_0.b), vec2<u32>(47075u, var_0.b))), _wgslsmith_f_op_f32(abs(-1774f))), Struct_1(-select(vec3<i32>(u_input.a.x, 2147483647i, var_0.c.a.x), vec3<i32>(var_0.c.a.x, -2147483647i, 36559i), vec3<bool>(var_0.c.b.x, false, var_0.c.b.x)), !var_0.c.b), all(vec2<bool>(var_0.c.b.x, all(vec4<bool>(var_0.c.b.x, var_0.c.b.x, var_0.c.b.x, var_0.c.b.x)))), _wgslsmith_f_op_vec2_f32(-global0.wy)), var_0, -1000f);
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.e, var_0.a, -2413f, 951f)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-859f, 699f, var_1.d.a, var_0.a)))), vec4<f32>(-1062f, _wgslsmith_f_op_f32(-1106f + var_0.a), _wgslsmith_f_op_f32(201f + var_1.d.a), _wgslsmith_div_f32(var_1.d.a, -1147f))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(196f, -1120f, 887f, var_1.e) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.a, global0.x, 338f, -373f))))))) * vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + var_1.c.d.x)))), var_0.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - var_1.d.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-215f))))), _wgslsmith_f_op_f32(trunc(var_1.d.a))));
    var var_2 = vec4<bool>(var_1.d.c.b.x, false, false, var_0.c.b.x);
    let var_3 = var_0.c;
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(525f, _wgslsmith_f_op_f32(-var_0.a))), select(reverseBits(var_1.c.a.b), firstTrailingBit(reverseBits(24064u)) >> (select(~var_1.d.b, ~14880u, var_2.x) % 32u), !(var_2.x == var_2.x)), Struct_1(var_3.a, var_1.c.a.a.zx));
}

fn func_5(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = !select(select(!(!vec3<bool>(arg_0.c.b.x, false, false)), vec3<bool>(!arg_0.c.b.x, true, true), vec3<bool>(any(vec4<bool>(arg_0.c.b.x, true, false, arg_0.c.b.x)), true, arg_0.c.b.x & arg_0.c.b.x)), func_3(_wgslsmith_clamp_u32(55089u, firstTrailingBit(4294967295u), 1u), (arg_0.c.b.x && true) || all(vec2<bool>(false, arg_0.c.b.x))), !(arg_0.c.b.x | true));
    var var_1 = arg_0.b;
    global1 = array<vec3<u32>, 26>();
    global2 = array<vec2<bool>, 24>();
    var var_2 = _wgslsmith_f_op_f32(-arg_0.a);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<i32>(2147483647i, 33717i, -10489i, u_input.a.x), select(vec4<i32>(firstLeadingBit(~10457i), select(u_input.a.x, _wgslsmith_add_i32(u_input.a.x, 2147483647i), func_1(Struct_5(Struct_3(vec4<bool>(true, true, true, true), 0u, -485f), u_input.a.x, Struct_4(Struct_3(vec4<bool>(true, true, true, false), 4294967295u, 216f), Struct_1(vec3<i32>(-1i, -2147483647i, -82001i), global2[_wgslsmith_index_u32(46776u, 24u)]), false, vec2<f32>(global0.x, 668f)), Struct_2(-568f, 1u, Struct_1(vec3<i32>(u_input.a.x, -23500i, u_input.a.x), global2[_wgslsmith_index_u32(109566u, 24u)])), 1689f), 31097u)), u_input.a.x, u_input.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -u_input.a.x, u_input.a.x, u_input.a.x), ~vec4<i32>(u_input.a.x, 2147483647i, 1i, u_input.a.x)), any(func_5(func_2()))), !select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true), vec4<bool>(func_3(27480u, false).x, global0.x < global0.x, true, true)));
    let var_1 = 1u <= (_wgslsmith_mult_u32(~1u, ~abs(4294967295u)) ^ _wgslsmith_add_u32(~min(1u, 4062u), firstTrailingBit(countOneBits(1u))));
    var var_2 = global0.x;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, 428f));
    var_2 = _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - global0.x) + _wgslsmith_f_op_f32(global0.x + global0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * 1710f))))));
    let var_3 = Struct_4(Struct_3(vec4<bool>(all(!vec3<bool>(var_1, var_1, var_1)), true, all(select(vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(true, true, true, var_1), var_1)), all(vec3<bool>(var_1, var_1, var_1))), min(27059u, 1u), global0.x), func_2().c, true, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-731f - _wgslsmith_f_op_f32(floor(504f)))), func_2().a));
    var var_4 = Struct_5(Struct_3(!var_3.a.a, var_3.a.b, global0.x), u_input.a.x, Struct_4(var_3.a, var_3.b, var_1, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 117f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, var_3.a.c)))))), func_2(), 609f);
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_3.b.a), _wgslsmith_f_op_vec3_f32(global0.xyy + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1410f, _wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_div_f32(-1079f, 1000f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1192f, 1413f, -1000f))) - vec3<f32>(-300f, var_4.c.d.x, 1207f)), var_4.c.a.a.zww))), select(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(var_0.wx, _wgslsmith_div_vec2_i32(var_4.c.b.a.yy, vec2<i32>(var_4.c.b.a.x, var_0.x))), _wgslsmith_add_vec2_i32(var_4.c.b.a.zz, _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, var_4.b), vec2<i32>(var_3.b.a.x, 8179i), u_input.a))), var_3.b.a.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_4.d.b, var_3.a.b, var_3.a.b), vec4<u32>(var_3.a.b, var_3.a.b, 50170u, 19872u)), ~509u, ~var_3.a.b) == var_4.d.b));
}

