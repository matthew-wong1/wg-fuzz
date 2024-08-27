struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_4 = Struct_4(vec2<bool>(false, false), vec2<i32>(i32(-2147483648), -1i));

var<private> global2: array<vec4<f32>, 28>;

var<private> global3: Struct_1 = Struct_1(41362u, vec3<i32>(-1i, -1i, 0i), 59823u, -1i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> i32 {
    let var_0 = Struct_2(_wgslsmith_clamp_vec3_u32(vec3<u32>(42376u, 39415u, 1u) << (_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1, u_input.a, 1u), ~vec3<u32>(global3.c, 8433u, u_input.a)) % vec3<u32>(32u)), reverseBits(~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.a, 20223u, arg_0.a), vec3<u32>(5540u, u_input.a, arg_1), vec3<u32>(arg_1, 80976u, arg_0.c))), _wgslsmith_div_vec3_u32(abs(~vec3<u32>(1u, 1u, 0u)), vec3<u32>(arg_1, _wgslsmith_div_u32(99329u, 26264u), 23237u))), Struct_1(abs(4294967295u), firstTrailingBit(~(-vec3<i32>(global3.d, global1.b.x, 0i))), ~(select(1u, 4294967295u, true) >> (~14140u % 32u)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(firstLeadingBit(arg_0.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, global1.b.x, 25155i), global3.b)), global3.b.x)), countOneBits(~(~arg_0.c)));
    global0 = -((_wgslsmith_mod_i32(~arg_0.d, var_0.b.d & 0i) & 1i) ^ _wgslsmith_div_i32(-1i, -17557i));
    let var_1 = global1.b.x;
    global1 = Struct_4(vec2<bool>(!any(global1.a), all(select(!global1.a, !vec2<bool>(global1.a.x, global1.a.x), global1.a.x))), _wgslsmith_div_vec2_i32(var_0.b.b.zx, -(_wgslsmith_sub_vec2_i32(vec2<i32>(global1.b.x, var_0.b.b.x), vec2<i32>(global3.d, arg_0.b.x)) | _wgslsmith_div_vec2_i32(vec2<i32>(global1.b.x, 2147483647i), vec2<i32>(global1.b.x, arg_0.d)))));
    let var_2 = !(!select(select(!vec4<bool>(false, false, global1.a.x, true), vec4<bool>(global1.a.x, global1.a.x, true, global1.a.x), select(vec4<bool>(global1.a.x, global1.a.x, global1.a.x, global1.a.x), vec4<bool>(true, global1.a.x, global1.a.x, false), vec4<bool>(false, global1.a.x, global1.a.x, global1.a.x))), vec4<bool>(global1.a.x, global1.a.x, false, 0u > u_input.a), !(!vec4<bool>(global1.a.x, true, false, false))));
    return _wgslsmith_dot_vec4_i32(vec4<i32>(0i, _wgslsmith_add_i32(_wgslsmith_mult_i32(-1i | global3.b.x, _wgslsmith_mult_i32(-20681i, 13349i)), 1i), firstTrailingBit(~global1.b.x) >> (reverseBits(4294967295u >> (arg_0.a % 32u)) % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(26401i, 1i), firstLeadingBit(-1473i), var_0.b.b.x, 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, var_0.b.d, global3.d, 0i), vec4<i32>(global3.b.x, 2147483647i, arg_0.d, arg_0.b.x)) & vec4<i32>(global1.b.x, global3.d, -2147483647i, var_0.b.b.x))), ~vec4<i32>(i32(-1i) * -1431i, 1i, -2147483647i, 1i) & -vec4<i32>(-global3.d, -var_0.b.d, global1.b.x, select(-1i, global3.d, var_2.x)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec2<bool>) -> u32 {
    let var_0 = Struct_3(3298u, _wgslsmith_sub_vec4_i32(-select(~vec4<i32>(-12765i, global1.b.x, -2147483647i, -2160i), vec4<i32>(34204i, -2147483647i, -1i, global1.b.x), select(arg_2.x, false, true)), vec4<i32>(arg_1.b.x, 0i, 2147483647i, -func_3(Struct_1(arg_1.a, global3.b, u_input.a, -1i), 33854u))));
    var var_1 = arg_2.x;
    let var_2 = i32(-1i) * -2147483647i;
    var var_3 = Struct_1(4294967295u, reverseBits(global3.b | -vec3<i32>(global3.b.x, var_2, -35468i)) | ~(vec3<i32>(var_0.b.x, global3.b.x, var_2) & -arg_1.b.zwz), 6274u, ~1i);
    global1 = Struct_4(select(select(select(arg_2, vec2<bool>(global1.a.x, global1.a.x), !arg_2), vec2<bool>(global1.a.x, true), global1.a), vec2<bool>(all(vec2<bool>(true, global1.a.x)), true), !global1.a), ~_wgslsmith_clamp_vec2_i32(global1.b, -vec2<i32>(-16459i, arg_0.x), arg_0));
    return ~4294967295u;
}

fn func_1(arg_0: Struct_4, arg_1: bool, arg_2: i32, arg_3: Struct_3) -> Struct_1 {
    let var_0 = vec3<bool>(all(global1.a), true, global1.a.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -180f), -1029f, -1000f)));
    let var_2 = false;
    global2 = array<vec4<f32>, 28>();
    global3 = Struct_1(arg_3.a << (arg_3.a % 32u), vec3<i32>(-1i, _wgslsmith_mod_i32(~(~1i), arg_2), arg_2 << (~func_2(global3.b.yz, arg_3, vec2<bool>(false, var_0.x)) % 32u)), 73627u, _wgslsmith_dot_vec4_i32(arg_3.b, arg_3.b) & _wgslsmith_dot_vec4_i32(vec4<i32>(-60272i, _wgslsmith_dot_vec4_i32(arg_3.b, vec4<i32>(global1.b.x, global3.b.x, 25827i, global1.b.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(-55510i, arg_0.b.x, arg_3.b.x, global3.b.x), vec4<i32>(34018i, global1.b.x, arg_3.b.x, 1205i)), abs(-28257i)), _wgslsmith_div_vec4_i32(arg_3.b, vec4<i32>(0i, arg_2, global1.b.x, 0i))));
    return Struct_1(max(0u, arg_3.a), vec3<i32>(global3.d, firstTrailingBit(global3.b.x), 1i ^ arg_3.b.x), arg_3.a, countOneBits(-1i));
}

fn func_4(arg_0: Struct_1) -> Struct_4 {
    var var_0 = true;
    let var_1 = Struct_2(~(~max(~vec3<u32>(1u, global3.a, u_input.a), _wgslsmith_add_vec3_u32(vec3<u32>(73654u, u_input.a, global3.a), vec3<u32>(93773u, arg_0.c, 9387u)))), arg_0, _wgslsmith_mod_u32(~1u, _wgslsmith_div_u32(~reverseBits(global3.c), 50776u)));
    var var_2 = select(global1.a, select(vec2<bool>(global1.a.x, !global1.a.x), select(global1.a, select(select(vec2<bool>(true, global1.a.x), global1.a, global1.a.x), vec2<bool>(true, global1.a.x), true), any(!vec2<bool>(global1.a.x, global1.a.x))), true), global1.a.x);
    var var_3 = var_1.a.yy;
    var var_4 = _wgslsmith_add_i32(~abs(-21930i), ~56209i);
    return Struct_4(select(global1.a, select(vec2<bool>(global1.a.x, global1.a.x), select(select(global1.a, vec2<bool>(var_2.x, false), false), vec2<bool>(global1.a.x, true), true), select(global1.a, !global1.a, select(vec2<bool>(var_2.x, false), global1.a, var_2.x))), var_2.x), _wgslsmith_clamp_vec2_i32(~vec2<i32>(~56470i, -var_1.b.d), -var_1.b.b.zx, global3.b.zz));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4, arg_2: f32, arg_3: vec2<bool>) -> i32 {
    global3 = Struct_1(_wgslsmith_add_u32(3244u, 61605u & (reverseBits(global3.c) | 7532u)), global3.b, _wgslsmith_dot_vec2_u32(vec2<u32>(min(global3.a, ~4294967295u), 76991u), ~abs(vec2<u32>(u_input.a, u_input.a)) ^ _wgslsmith_mod_vec2_u32(~vec2<u32>(global3.a, 37312u), max(vec2<u32>(global3.c, 0u), vec2<u32>(0u, global3.c)))), -3697i);
    global2 = array<vec4<f32>, 28>();
    let var_0 = Struct_4(vec2<bool>(false, func_4(func_1(arg_1, all(arg_0.a), global1.b.x, Struct_3(u_input.a, vec4<i32>(-2147483647i, arg_0.b.x, 9172i, arg_0.b.x)))).a.x), global1.b);
    var var_1 = var_0;
    var_1 = arg_0;
    return ~10726i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<f32>, 28>();
    global0 = -5898i;
    global3 = Struct_1(abs(~4294967295u), -global3.b, global3.c, min(global1.b.x, func_5(Struct_4(global1.a, _wgslsmith_sub_vec2_i32(global1.b, vec2<i32>(17256i, -1i))), func_4(func_1(Struct_4(vec2<bool>(global1.a.x, false), global1.b), global1.a.x, -1i, Struct_3(u_input.a, vec4<i32>(global3.d, 0i, global1.b.x, global1.b.x)))), 1f, func_4(Struct_1(58081u, vec3<i32>(global3.d, global1.b.x, -21798i), 30665u, -22463i)).a)));
    let var_0 = ~_wgslsmith_mult_i32(-1i, -45311i);
    var var_1 = vec3<i32>(-_wgslsmith_dot_vec2_i32(-(~vec2<i32>(var_0, 8096i)), global1.b), -global1.b.x, -34006i);
    global3 = Struct_1(_wgslsmith_mult_u32(~50542u, _wgslsmith_mult_u32(27367u, abs(~global3.c))), _wgslsmith_mult_vec3_i32(global3.b >> ((vec3<u32>(global3.c, u_input.a, 68309u) & vec3<u32>(u_input.a, global3.a, global3.c)) % vec3<u32>(32u)), func_1(Struct_4(func_4(Struct_1(u_input.a, vec3<i32>(var_0, 22133i, 0i), global3.c, var_0)).a, global1.b), global1.a.x, _wgslsmith_div_i32(_wgslsmith_div_i32(61544i, -2147483647i), ~var_1.x), Struct_3(u_input.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(global1.b.x, global1.b.x, var_0, 0i), vec4<i32>(var_0, var_1.x, -7576i, 1898i), vec4<i32>(var_1.x, -11119i, 0i, -2147483647i)))).b), global3.c, 0i);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(735f, 1200f)) * _wgslsmith_div_f32(-197f, 286f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(949f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-762f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1517f, -3096f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f * -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -882f) * -808f));
    var_1 = global3.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.xyx);
}

