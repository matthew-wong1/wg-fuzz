struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 17>;

var<private> global1: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(false, false, true, false));

var<private> global2: array<Struct_1, 7>;

var<private> global3: vec3<f32> = vec3<f32>(1247f, 775f, -572f);

var<private> global4: array<vec4<i32>, 17>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: f32) -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(f32(-1f) * -894f)), -393f, _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-global3.x)), 1749f)), vec2<bool>(true, false), ~(~(~0u)), u_input.b.yx, ~u_input.a.x);
    let var_1 = var_0;
    global1 = array<vec4<bool>, 1>();
    var var_2 = vec2<u32>(41209u, select(_wgslsmith_dot_vec3_u32(~u_input.a.xww, ~select(u_input.a.zzy, u_input.a.xwz, var_1.b.x)), 4294967295u, all(var_0.b)));
    let var_3 = var_1.d.x;
    return ~abs(u_input.a);
}

fn func_3() -> vec4<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-863f, global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1683f - global3.x) + global3.x), _wgslsmith_f_op_f32(trunc(645f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(502f, -1877f, 300f, 1158f) * vec4<f32>(250f, global3.x, -1577f, global3.x)))), vec2<bool>(true, true), u_input.a.x, u_input.b.zz, _wgslsmith_mult_u32(abs(_wgslsmith_sub_u32(73597u, firstLeadingBit(25335u))), u_input.a.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a.xx * _wgslsmith_div_vec2_f32(vec2<f32>(global3.x, -359f), var_0.a.xw)))))));
    let var_2 = var_0.b.x;
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(var_0.a)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, var_0.a.x, 2305f, var_0.a.x))))), var_0.b, 4294967295u, -var_0.d | _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(0i, 35069i), u_input.b.wy) ^ var_0.d, reverseBits(_wgslsmith_clamp_vec2_i32(var_0.d, vec2<i32>(1i, 1i), vec2<i32>(var_0.d.x, u_input.b.x)))), abs(abs(1u)));
    var var_4 = ~(~var_0.c) == u_input.a.x;
    return _wgslsmith_sub_vec4_u32(abs(~vec4<u32>(var_3.c, var_3.c, u_input.a.x, 0u)) >> (vec4<u32>(firstTrailingBit(110585u), firstTrailingBit(904u), _wgslsmith_dot_vec2_u32(u_input.a.yw, u_input.a.yy), _wgslsmith_mod_u32(var_3.c, 11875u)) % vec4<u32>(32u)), ~min(reverseBits(u_input.a), countOneBits(u_input.a))) | u_input.a;
}

fn func_1() -> vec2<f32> {
    global2 = array<Struct_1, 7>();
    var var_0 = _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(max(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.a.x, 17829u, u_input.a.x), u_input.a), vec4<u32>(u_input.a.x, u_input.a.x, 54274u, 1u) | func_2(global3.x)), u_input.a), ~func_3());
    let var_1 = global2[_wgslsmith_index_u32(50532u, 7u)];
    var_0 = abs(u_input.a);
    let var_2 = vec4<u32>(22655u, u_input.a.x, 16466u, 4294967295u);
    return vec2<f32>(-1633f, global3.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = ~arg_0.c;
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(-841f)), arg_3.a.x, 857f, arg_0.a.x), select(select(arg_3.b, vec2<bool>(true, !arg_3.b.x), !arg_3.b), !(!(!arg_3.b)), arg_3.b.x), ~_wgslsmith_dot_vec3_u32(u_input.a.wxw << (u_input.a.wyz % vec3<u32>(32u)), abs(vec3<u32>(34445u, 27467u, arg_3.c))) >> (arg_3.e % 32u), firstTrailingBit(_wgslsmith_sub_vec2_i32(select(arg_2.d, vec2<i32>(arg_2.d.x, u_input.b.x), arg_3.b) ^ firstTrailingBit(vec2<i32>(-1i, -42258i)), countOneBits(vec2<i32>(49223i, 39666i)))), _wgslsmith_dot_vec2_u32(reverseBits(u_input.a.yz), min(_wgslsmith_mod_vec2_u32(~vec2<u32>(arg_0.e, 83871u), u_input.a.yz), func_2(-236f).wy)));
    var var_2 = _wgslsmith_mult_vec3_i32(u_input.b.zyz, select(~abs(u_input.b.xxy), vec3<i32>(u_input.b.x, select(var_1.d.x, -1i, var_1.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.d.x, arg_3.d.x, -11396i, arg_0.d.x), vec4<i32>(arg_0.d.x, -1i, 1i, 8206i))), select(!vec3<bool>(arg_0.b.x, arg_3.b.x, true), !vec3<bool>(arg_2.b.x, arg_0.b.x, arg_0.b.x), select(vec3<bool>(arg_3.b.x, arg_0.b.x, arg_3.b.x), vec3<bool>(arg_0.b.x, true, false), var_1.b.x)))) >> (~(~_wgslsmith_clamp_vec3_u32(func_2(-1000f).zwy, vec3<u32>(0u, 0u, 52653u) >> (u_input.a.wwz % vec3<u32>(32u)), ~u_input.a.xxw)) % vec3<u32>(32u));
    let var_3 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1505f, _wgslsmith_f_op_f32(arg_1.x + -299f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))))));
    var var_4 = _wgslsmith_f_op_vec4_f32(round(var_1.a));
    return arg_2.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.zx;
    var var_1 = func_4(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(318f * var_0.x), var_0.x, -563f, global3.x))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, false)), select(false, true, true) == select(false, false, true)), u_input.a.x, u_input.b.yw, 9038u), _wgslsmith_f_op_vec2_f32(func_1()), Struct_1(vec4<f32>(-478f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), -927f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1210f, -153f, true)))), vec2<bool>(true, true), 10996u, -u_input.b.zx, _wgslsmith_dot_vec4_u32(min(~vec4<u32>(u_input.a.x, 4294967295u, 63295u, u_input.a.x), ~u_input.a), vec4<u32>(firstTrailingBit(4294967295u), u_input.a.x, ~u_input.a.x, 4294967295u))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, global3.x, var_0.x, global3.x)))), select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), false)), u_input.a.x, vec2<i32>(countOneBits(-17238i), (0i ^ u_input.c) >> (~12503u % 32u)), _wgslsmith_mod_u32(abs(u_input.a.x), ~1u)));
    let var_2 = ~_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(min(select(u_input.a.xx, u_input.a.zx, true), select(vec2<u32>(10958u, 4294967295u), u_input.a.xx, vec2<bool>(true, false))), _wgslsmith_add_vec2_u32(vec2<u32>(14642u, u_input.a.x) >> (u_input.a.wz % vec2<u32>(32u)), ~vec2<u32>(u_input.a.x, 15253u))), min(vec2<u32>(u_input.a.x, ~1u), u_input.a.yz));
    global4 = array<vec4<i32>, 17>();
    global4 = array<vec4<i32>, 17>();
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(func_2(global3.x).x, u_input.a.x), 7u)];
    var var_4 = _wgslsmith_div_u32(~var_3.c, var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.b, vec4<i32>(1i, u_input.b.x, -2147483647i, u_input.c)) << (u_input.a % vec4<u32>(32u)), vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 0i, -1i, var_3.d.x), u_input.b), u_input.b.x, -_wgslsmith_mod_i32(14714i, var_3.d.x), select(_wgslsmith_div_i32(var_3.d.x, var_3.d.x), -u_input.b.x, !var_3.b.x))), 26308i, vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.a.x, func_2(var_0.x).x, 4294967295u), ~vec3<u32>(var_3.c, u_input.a.x, 11859u)), reverseBits(_wgslsmith_div_u32(_wgslsmith_mod_u32(var_3.e, 0u), var_2.x)), ~abs(var_2.x << (var_2.x % 32u))), var_3.d);
}

