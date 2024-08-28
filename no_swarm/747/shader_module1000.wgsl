struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: Struct_3,
    d: vec2<f32>,
    e: bool,
}

struct Struct_5 {
    a: vec4<u32>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<bool> = vec4<bool>(true, true, true, true);

var<private> global2: array<Struct_2, 2>;

var<private> global3: array<i32, 16>;

var<private> global4: vec3<f32> = vec3<f32>(-1369f, 2217f, -474f);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: i32) -> u32 {
    var var_0 = global4.x;
    let var_1 = Struct_3(_wgslsmith_div_u32(4294967295u, 10627u), global4.yz, global2[_wgslsmith_index_u32(u_input.c.x, 2u)], Struct_1(_wgslsmith_add_vec3_u32(~u_input.a, ~vec3<u32>(54231u, 4294967295u, global0.a.x)) ^ global0.b, max(global0.b, _wgslsmith_mult_vec3_u32(global0.b << (global0.b % vec3<u32>(32u)), ~vec3<u32>(global0.b.x, 7727u, 13883u)))));
    var var_2 = true;
    let var_3 = _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(abs(vec2<u32>(0u, 62439u)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.a.x), var_1.d.a.yy)), min(u_input.a.yy, u_input.b.xx)), ~select(_wgslsmith_sub_u32(abs(13491u), ~4294967295u), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(20807u, 11267u, 51240u, var_1.a), vec4<u32>(13765u, 25354u, var_1.c.c, u_input.c.x)), ~vec4<u32>(u_input.b.x, global0.a.x, var_1.c.c, global0.b.x)), !var_1.c.b | true));
    global4 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global4.x), -1080f)))), var_1.b.x), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(372f, var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global4.x))))))));
    return 24494u;
}

fn func_2(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: i32) -> f32 {
    let var_0 = arg_2;
    var var_1 = ~_wgslsmith_clamp_u32(func_3(countOneBits(~arg_2.a.x), 2147483647i), 1u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, arg_2.c), 2332u), _wgslsmith_mod_u32(~arg_2.c, ~var_0.c)));
    var var_2 = Struct_4(822f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) + global4.x), false && all(vec2<bool>(arg_2.b || true, false)), Struct_3(arg_2.c, _wgslsmith_div_vec2_f32(global4.zx, vec2<f32>(global4.x, _wgslsmith_f_op_f32(trunc(1267f)))), Struct_2(vec2<i32>(arg_3 ^ 751i, 2691i), true, _wgslsmith_div_u32(u_input.c.x, arg_2.c) >> (firstLeadingBit(global0.b.x) % 32u)), Struct_1(global0.b << (select(vec3<u32>(global0.b.x, arg_2.c, arg_2.c), vec3<u32>(u_input.a.x, var_0.c, 0u), arg_1.x) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 27888u, 46947u), u_input.a), select(vec3<u32>(arg_2.c, 5179u, u_input.a.x), vec3<u32>(41942u, 0u, global0.a.x), true)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1345f + arg_0), arg_0)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0, -1414f), -885f, any(vec2<bool>(false, true)))))), any(!vec2<bool>(var_0.b, arg_2.b)));
    let var_3 = abs(u_input.d.x) < -1i;
    var var_4 = var_2.c.d;
    return global4.x;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_5 {
    let var_0 = global1.x | (~arg_1.a.x != (~(arg_1.b.x ^ u_input.b.x) << (~0u % 32u)));
    var var_1 = Struct_5(vec4<u32>(28433u, arg_1.b.x, ~_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(1u, 15404u, 4294967295u)), ~(min(global0.a.x, global0.a.x) & arg_1.a.x)), ~(-35769i), true);
    let var_2 = vec2<i32>(~firstLeadingBit(i32(-1i) * -51210i), var_1.b) & abs(vec2<i32>(-u_input.d.x, -17233i) ^ _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(u_input.d.zx, u_input.d.zx), _wgslsmith_clamp_vec2_i32(u_input.d.yy, u_input.d.zx, u_input.d.zz)));
    global3 = array<i32, 16>();
    global3 = array<i32, 16>();
    return Struct_5(~vec4<u32>(~global0.b.x, ~44900u, u_input.c.x, 52171u), -global3[_wgslsmith_index_u32(~(var_1.a.x >> (var_1.a.x % 32u)), 16u)], !(!any(global1.zy)) && (arg_0.x < _wgslsmith_f_op_f32(global4.x - _wgslsmith_f_op_f32(f32(-1f) * -1904f))));
}

fn func_1() -> Struct_2 {
    let var_0 = global1.x;
    var var_1 = func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(2041f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1071f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global4.x)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_2(global4.x, vec4<bool>(global1.x, true, global1.x, global1.x), global2[_wgslsmith_index_u32(global0.b.x, 2u)], 65466i)), -282f, 1173f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global4.x, -1000f, global4.x), vec3<f32>(-308f, global4.x, global4.x), true)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, global4.x, 1472f) - vec3<f32>(1028f, 1673f, global4.x))))), Struct_1(global0.a, ~(vec3<u32>(1u, u_input.b.x, global0.a.x) & ~vec3<u32>(global0.a.x, 48521u, u_input.c.x))));
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global4.x), -933f)), _wgslsmith_f_op_f32(func_2(-677f, vec4<bool>(true, var_1.c, global1.x, true), Struct_2(u_input.d.yz, false, var_1.a.x), ~global3[_wgslsmith_index_u32(47691u, 16u)]))))));
    global2 = array<Struct_2, 2>();
    global0 = Struct_1(vec3<u32>(u_input.c.x, _wgslsmith_mult_u32(~var_1.a.x, ~_wgslsmith_mult_u32(global0.b.x, global0.b.x)), 81467u), vec3<u32>(~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, var_1.a.x, u_input.a.x), var_1.a.zzx, global0.b), global0.a), ~_wgslsmith_mult_u32(_wgslsmith_add_u32(12611u, var_1.a.x), reverseBits(global0.b.x)), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1334f, var_2.x, -907f))), Struct_1(u_input.c | global0.a, vec3<u32>(0u, u_input.a.x, var_1.a.x))).a.x));
    return Struct_2(_wgslsmith_mult_vec2_i32(u_input.d.xx, u_input.d.zx), true, ~_wgslsmith_mult_u32(1u, ~var_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.b.x;
    global2 = array<Struct_2, 2>();
    var_0 = min(firstTrailingBit(~1u), ~23925u);
    var var_1 = !select(select(select(!vec4<bool>(true, true, global1.x, global1.x), select(vec4<bool>(true, false, false, global1.x), vec4<bool>(true, global1.x, global1.x, true), vec4<bool>(true, global1.x, global1.x, global1.x)), !vec4<bool>(true, true, global1.x, global1.x)), select(vec4<bool>(true, global1.x, false, false), vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(true, global1.x, true, true)), vec4<bool>(global1.x, global1.x, true, global3[_wgslsmith_index_u32(0u, 16u)] != -1i)), select(!vec4<bool>(global1.x, false, false, global1.x), !(!vec4<bool>(global1.x, global1.x, false, false)), !vec4<bool>(true, false, global1.x, global1.x)), u_input.d.x != ~global3[_wgslsmith_index_u32(~global0.b.x, 16u)]);
    var var_2 = func_1();
    global1 = vec4<bool>(global1.x, var_2.b, true, min(46587u, _wgslsmith_mult_u32(min(var_2.c, 4294967295u), abs(4294967295u))) >= firstLeadingBit(min(_wgslsmith_div_u32(1u, 4294967295u), _wgslsmith_mult_u32(global0.b.x, 27315u))));
    let x = u_input.a;
    s_output = StorageBuffer(~global0.a.x, _wgslsmith_dot_vec3_i32(reverseBits(min(u_input.d, vec3<i32>(var_2.a.x, u_input.d.x, global3[_wgslsmith_index_u32(0u, 16u)]))), u_input.d >> (~u_input.a % vec3<u32>(32u))) & _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, u_input.d.x), var_2.a), global3[_wgslsmith_index_u32(u_input.b.x, 16u)]), -314f, global0.a, ~0i);
}

