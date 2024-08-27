struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
    c: Struct_2,
    d: vec2<f32>,
    e: i32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: array<vec4<bool>, 9>;

var<private> global2: i32 = i32(-2147483648);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> u32 {
    global1 = array<vec4<bool>, 9>();
    global1 = array<vec4<bool>, 9>();
    global2 = arg_1.e;
    var var_0 = arg_1.c.c.c;
    global2 = ~(-1i);
    return _wgslsmith_add_u32(1u, ~u_input.d);
}

fn func_2(arg_0: u32) -> vec2<i32> {
    var var_0 = Struct_2(Struct_1(vec3<u32>(_wgslsmith_sub_u32(arg_0, arg_0 | 1u), _wgslsmith_mult_u32(_wgslsmith_mult_u32(4294967295u, arg_0), select(u_input.d, arg_0, global0.x)), ~func_3(305f, Struct_3(vec2<i32>(2147483647i, 1i), 85735i, Struct_2(Struct_1(vec3<u32>(65160u, u_input.d, 10847u), vec3<f32>(1006f, 122f, 1134f), vec3<i32>(-2147483647i, 21387i, 0i)), false, Struct_1(vec3<u32>(4294967295u, 1u, u_input.d), vec3<f32>(1703f, 247f, 1278f), vec3<i32>(-8527i, -55778i, -11312i)), -811f, Struct_1(vec3<u32>(0u, arg_0, arg_0), vec3<f32>(-1182f, 808f, -1113f), vec3<i32>(2147483647i, -2147483647i, 18650i))), vec2<f32>(780f, 1451f), -7862i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-425f, 1308f, 1389f)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-326f, -285f, 456f), vec3<f32>(935f, 1000f, -1000f)))) * vec3<f32>(1113f, _wgslsmith_f_op_f32(select(1087f, -1034f, false)), 896f)), ~vec3<i32>(~1i, -59988i, firstTrailingBit(-1i))), global0.x, Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(~59422u, _wgslsmith_mod_u32(7227u, 29863u), 1u), vec3<u32>(arg_0, reverseBits(68435u), max(0u, u_input.b.x)), vec3<u32>(_wgslsmith_add_u32(4294967295u, u_input.c.x), u_input.b.x ^ 119310u, _wgslsmith_mult_u32(37282u, 81969u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(528f, _wgslsmith_f_op_f32(sign(-179f)), -1402f)), vec3<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(61942i, 2534i), vec2<i32>(31065i, -54430i)), -_wgslsmith_dot_vec4_i32(vec4<i32>(-11030i, 0i, 448i, -38675i), vec4<i32>(6166i, 1059i, -218i, 25891i)), firstTrailingBit(_wgslsmith_add_i32(-2147483647i, 31175i)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1136f, 1677f)))))), Struct_1(u_input.c.zxx << (u_input.b.yxx % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(580f, -676f, 605f)) + vec3<f32>(_wgslsmith_f_op_f32(-2172f * -1000f), _wgslsmith_f_op_f32(sign(714f)), _wgslsmith_f_op_f32(f32(-1f) * -226f))), _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_add_i32(0i, 0i), 2147483647i >> (arg_0 % 32u), max(25334i, 76563i)), vec3<i32>(1i, 1i, 1i))));
    var var_1 = 1i;
    return var_0.a.c.zz;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<u32>) -> i32 {
    let var_0 = !(!global0.x);
    var var_1 = Struct_3(func_2(~3745u), firstLeadingBit(-1i), Struct_2(Struct_1(~vec3<u32>(1u, u_input.b.x, arg_1.x) >> (~vec3<u32>(u_input.a, 0u, 54906u) % vec3<u32>(32u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0), _wgslsmith_f_op_vec3_f32(exp2(arg_0))), -_wgslsmith_mod_vec3_i32(vec3<i32>(5218i, 4247i, -5502i), vec3<i32>(1i, 2147483647i, -2147483647i))), false, Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(2092u, u_input.a, arg_1.x), vec3<u32>(arg_1.x, 4294967295u, arg_1.x)) << (_wgslsmith_mult_vec3_u32(u_input.b.xxw, u_input.b.yyw) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(select(arg_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, arg_0.x)), !vec3<bool>(var_0, global0.x, true))), ~(~vec3<i32>(1813i, 40850i, -1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(790f, arg_0.x)) + _wgslsmith_f_op_f32(-708f + arg_0.x)), Struct_1(vec3<u32>(120883u, u_input.c.x, abs(arg_1.x)), arg_0, max(-vec3<i32>(-40547i, 24394i, -2147483647i), vec3<i32>(2147483647i, 2147483647i, 2147483647i)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(arg_0.xz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.yz) * arg_0.xx), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(181f, arg_0.x))) - vec2<f32>(_wgslsmith_f_op_f32(abs(568f)), -317f)))), _wgslsmith_div_i32(_wgslsmith_sub_i32(~1i, 1i), min(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(1i, -38331i)), -1426i)) >> (4294967295u % 32u));
    global2 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(var_1.c.e.c.x, var_1.c.c.c.x, var_1.a.x), vec3<i32>(var_1.c.e.c.x, _wgslsmith_div_i32(1i, var_1.b), _wgslsmith_mult_i32(var_1.c.c.c.x, 0i))) ^ (vec3<i32>(~(-16802i), 1i, -var_1.c.c.c.x) << (var_1.c.c.a % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(-(~var_1.c.e.c), select(abs(var_1.c.c.c), -var_1.c.e.c, select(vec3<bool>(false, false, var_1.c.b), vec3<bool>(true, true, global0.x), false))), _wgslsmith_mod_vec3_i32(~(~var_1.c.e.c), reverseBits(var_1.c.e.c))));
    let var_2 = Struct_3(var_1.a, var_1.e, var_1.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_0.xz, vec2<f32>(arg_0.x, -256f), vec2<bool>(false, global0.x)))) - _wgslsmith_f_op_vec2_f32(select(arg_0.yx, _wgslsmith_f_op_vec2_f32(-var_1.d), vec2<bool>(false, global0.x)))) + arg_0.zx), _wgslsmith_mult_i32(-1i, -56173i));
    var var_3 = vec4<i32>(-2147483647i, var_1.b, 27766i, 1i << ((var_2.c.e.a.x >> (arg_1.x % 32u)) % 32u));
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(max(-(func_1(vec3<f32>(-2151f, -1374f, -1182f), vec2<u32>(u_input.c.x, 21225u)) << (~u_input.c.x % 32u)), ~max(2147483647i, 56294i)), -1i, ~firstLeadingBit(firstTrailingBit(0i)));
    var var_1 = _wgslsmith_dot_vec3_u32(u_input.c.xxw, _wgslsmith_clamp_vec3_u32(max(vec3<u32>(_wgslsmith_mod_u32(u_input.c.x, 1u), 83597u << (1u % 32u), _wgslsmith_dot_vec2_u32(u_input.b.zz, vec2<u32>(u_input.d, u_input.a))), u_input.c.xyw), _wgslsmith_mult_vec3_u32(~u_input.b.yzz, u_input.b.xyy), firstLeadingBit(u_input.c.xzy)));
    let var_2 = 1u;
    global1 = array<vec4<bool>, 9>();
    var var_3 = 1i | _wgslsmith_mod_i32(countOneBits(-var_0.x), _wgslsmith_sub_i32(_wgslsmith_sub_i32(var_0.x, var_0.x), -firstLeadingBit(-34369i)));
    var var_4 = -195f;
    let var_5 = Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), Struct_2(Struct_1(~select(u_input.c.xxy, u_input.c.yyz, true), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -778f), _wgslsmith_div_f32(-498f, 835f), _wgslsmith_f_op_f32(f32(-1f) * -256f)), ~firstLeadingBit(vec3<i32>(var_0.x, var_0.x, 0i))), all(vec3<bool>(false & global0.x, global0.x & true, !global0.x)), Struct_1(vec3<u32>(var_2, var_2, var_2) & vec3<u32>(7781u, u_input.a, u_input.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(645f, -178f, -1124f))), ~countOneBits(vec3<i32>(2147483647i, 1i, var_0.x))), -894f, Struct_1(vec3<u32>(0u << (var_2 % 32u), 0u, _wgslsmith_mult_u32(var_2, 4294967295u)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(808f, 645f, -1773f)))), -abs(vec3<i32>(-22234i, 18565i, var_0.x)))));
    let var_6 = reverseBits((46628u ^ ~(~u_input.d)) << (countOneBits(var_5.b.a.a.x) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(abs(21610u), abs(u_input.b.x), 0u), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.b.d) * _wgslsmith_div_f32(var_5.b.c.b.x, var_5.b.d)), var_5.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_5.a.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_5.b.c.b.x - 1046f) * _wgslsmith_f_op_f32(sign(var_5.a.x))) + var_5.b.a.b.x)));
}

