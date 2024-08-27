struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: i32,
    d: vec3<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13>;

var<private> global1: Struct_1 = Struct_1(false, 0i);

var<private> global2: Struct_3;

var<private> global3: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(false, i32(-2147483648)), Struct_1(false, 55842i), Struct_1(true, 31800i), Struct_1(true, 2147483647i), Struct_1(true, 1i), Struct_1(true, 2147483647i), Struct_1(false, 1i), Struct_1(true, -27514i), Struct_1(false, -1i), Struct_1(true, -107i), Struct_1(true, -15249i), Struct_1(false, -16876i), Struct_1(false, -48620i), Struct_1(true, i32(-2147483648)), Struct_1(false, 0i), Struct_1(false, 1i), Struct_1(true, 1i), Struct_1(false, 22581i), Struct_1(true, 25219i), Struct_1(false, 15800i), Struct_1(true, 0i), Struct_1(false, 2147483647i), Struct_1(true, i32(-2147483648)), Struct_1(false, 2147483647i), Struct_1(true, i32(-2147483648)), Struct_1(true, i32(-2147483648)), Struct_1(true, i32(-2147483648)), Struct_1(true, 11159i), Struct_1(true, -7659i), Struct_1(true, i32(-2147483648)), Struct_1(false, -25334i), Struct_1(true, 1i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = Struct_3(global2.b, global2.b, 0u, Struct_1(all(select(vec3<bool>(true, true, arg_0.c.a), select(vec3<bool>(true, global2.a.c.a, false), vec3<bool>(global2.b.c.a, global1.a, true), global2.a.c.a), true)), global2.a.c.b));
    var_0 = Struct_3(var_0.b, Struct_2(-countOneBits(max(vec4<i32>(-2307i, -54099i, 1i, 1i), arg_0.a)), true, Struct_1(any(!vec4<bool>(false, true, global2.d.a, true)), countOneBits(abs(1i))), vec2<u32>(~(~arg_0.d.x), u_input.a.x)), 0u & _wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(u_input.a.zz, arg_0.d), vec2<u32>(var_0.a.d.x & 6163u, 1u)), var_0.d);
    var var_1 = -2147483647i;
    var_1 = var_0.b.a.x;
    global2 = Struct_3(arg_0, var_0.a, arg_0.d.x, Struct_1(global2.b.b, global2.d.b));
    return ~(~reverseBits(43031i));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec2<i32>) -> Struct_3 {
    var var_0 = Struct_2(global2.a.a, global1.b > firstTrailingBit(~(global2.a.c.b ^ arg_2.x)), Struct_1(!global2.a.c.a, func_3(Struct_2(firstTrailingBit(global2.b.a), 41032u != global2.b.d.x, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_0, 0u, u_input.a.x), vec4<u32>(arg_0, u_input.a.x, arg_1, arg_1)), 32u)], vec2<u32>(arg_0, 10127u)))), vec2<u32>(firstTrailingBit(arg_0), arg_1));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-989f, -1081f) - vec2<f32>(2340f, -621f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -427f) + vec2<f32>(-599f, 977f)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1538f, 1246f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(374f, -259f))))))));
    var_0 = global2.a;
    global1 = var_0.c;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-800f + _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -831f)))) - -648f));
    return Struct_3(global2.a, global2.a, arg_1, Struct_1(true, ~global0[_wgslsmith_index_u32(~64184u, 13u)]));
}

fn func_1(arg_0: vec3<u32>) -> Struct_3 {
    global3 = array<Struct_1, 32>();
    global2 = func_2(~_wgslsmith_sub_u32(select(~0u, ~45984u, global1.a), firstLeadingBit(~27469u)), arg_0.x, _wgslsmith_mod_vec2_i32(global2.b.a.zz, global2.b.a.ww));
    let var_0 = vec4<i32>(global0[_wgslsmith_index_u32(728u, 13u)], abs(_wgslsmith_clamp_i32(~global1.b, -32989i, global2.a.c.b)) >> (0u % 32u), reverseBits(1i), -43683i);
    let var_1 = func_2(func_2((arg_0.x ^ global2.c) | 1u, func_2(1u, ~global2.c, var_0.xz).b.d.x, global2.a.a.wz).a.d.x << (_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 4294967295u, 84416u, 1u) | vec4<u32>(14373u, u_input.a.x, u_input.a.x, 13187u), ~vec4<u32>(15623u, u_input.a.x, 54058u, 2733u)), _wgslsmith_dot_vec3_u32(vec3<u32>(19517u, global2.a.d.x, global2.c), vec3<u32>(global2.b.d.x, 0u, u_input.a.x)) | ~55300u) % 32u), firstTrailingBit(countOneBits(global2.b.d.x)), vec2<i32>(func_3(global2.a), -_wgslsmith_mod_i32(global1.b, _wgslsmith_mod_i32(-1i, -38000i))));
    global1 = global3[_wgslsmith_index_u32(4294967295u, 32u)];
    return func_2(90585u, ~4027u, var_1.b.a.yw);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3) -> Struct_3 {
    global1 = func_1(max(_wgslsmith_div_vec3_u32(~vec3<u32>(0u, arg_1.c, arg_1.b.d.x), ~vec3<u32>(arg_1.a.d.x, global2.c, 56634u)) | vec3<u32>(~arg_1.a.d.x, _wgslsmith_div_u32(u_input.a.x, arg_1.a.d.x), _wgslsmith_clamp_u32(16233u, 0u, 4294967295u)), u_input.a)).b.c;
    global3 = array<Struct_1, 32>();
    let var_0 = Struct_1(global1.a, _wgslsmith_add_i32(-3143i, 23800i));
    global3 = array<Struct_1, 32>();
    let var_1 = vec3<i32>(-13750i, ~arg_1.a.c.b, var_0.b);
    return func_2(abs(~u_input.a.x), 114806u | global2.c, -abs(-firstLeadingBit(vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(1u, 13u)]))));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: Struct_3) -> Struct_1 {
    global0 = array<i32, 13>();
    global3 = array<Struct_1, 32>();
    let var_0 = arg_0;
    var var_1 = global2.b;
    global3 = array<Struct_1, 32>();
    return Struct_1(false, -1i);
}

fn func_6(arg_0: Struct_1, arg_1: vec3<u32>) -> vec4<u32> {
    var var_0 = arg_0.b;
    var_0 = _wgslsmith_div_i32(global1.b, 1i);
    let var_1 = -1128f;
    global2 = func_2(arg_1.x, _wgslsmith_clamp_u32(1u, arg_1.x, (_wgslsmith_div_u32(u_input.a.x, 14854u) << (_wgslsmith_dot_vec3_u32(arg_1, u_input.a) % 32u)) << (arg_1.x % 32u)), ~vec2<i32>(global2.b.c.b, _wgslsmith_mult_i32(global1.b, _wgslsmith_div_i32(global1.b, 2147483647i))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(1875f, _wgslsmith_f_op_f32(-var_1), global2.b.c.a || global2.d.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), 2271f) * vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1))), var_1)));
    return ~vec4<u32>(global2.b.d.x, _wgslsmith_mult_u32(0u, u_input.a.x), 32130u, ~2858u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_6(func_5(select(!vec4<bool>(true, false, false, global2.a.b), vec4<bool>(true, global2.d.a, global2.d.a, global2.a.b), vec4<bool>(true, global2.b.c.a, global2.d.a, false)), vec2<f32>(-1000f, _wgslsmith_f_op_f32(-1153f - -1742f)), func_4(-global2.b.a.wx, func_1(vec3<u32>(34932u, 0u, 0u)))), firstTrailingBit(countOneBits(vec3<u32>(37405u, u_input.a.x, global2.b.d.x))));
    let var_1 = global2.a;
    var var_2 = vec2<bool>(global1.a, false);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1001f, _wgslsmith_f_op_f32(abs(-1000f)), -172f, _wgslsmith_f_op_f32(803f * 200f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1447f, -846f, -1022f, -1161f)), vec4<f32>(541f, 1786f, -1498f, -2236f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1562f, 957f, 1100f, 1016f)), vec4<f32>(_wgslsmith_f_op_f32(927f * -196f), _wgslsmith_f_op_f32(464f + -897f), _wgslsmith_f_op_f32(ceil(-398f)), _wgslsmith_f_op_f32(sign(-1715f))), select(!vec4<bool>(global2.d.a, false, global1.a, global2.a.c.a), select(vec4<bool>(var_1.b, false, true, var_1.b), vec4<bool>(true, false, var_1.c.a, var_1.c.a), vec4<bool>(global1.a, var_2.x, true, false)), !vec4<bool>(var_1.c.a, true, true, true)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-291f, -179f, 1000f, -539f)) * vec4<f32>(154f, 438f, -1603f, -540f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(527f, 1291f, 162f, 1000f)))))));
    var var_4 = ~(~_wgslsmith_sub_vec2_u32(u_input.a.zz, global2.a.d) << (vec2<u32>(select(u_input.a.x, var_0.x, var_2.x), u_input.a.x) % vec2<u32>(32u))) << (u_input.a.xy % vec2<u32>(32u));
    let var_5 = func_4(global2.a.a.ww, Struct_3(Struct_2(-_wgslsmith_div_vec4_i32(var_1.a, var_1.a), !global2.b.b, Struct_1(select(true, global1.a, false), global1.b), vec2<u32>(1u, ~4294967295u)), func_1(vec3<u32>(_wgslsmith_mult_u32(global2.c, u_input.a.x), 0u, 15262u)).a, 4294967295u, global2.a.c));
    let x = u_input.a;
    s_output = StorageBuffer(-min(var_1.a, func_2(~21134u, ~var_4.x, ~var_1.a.yx).a.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_3.x, var_3.x, _wgslsmith_f_op_f32(102f + var_3.x)), _wgslsmith_f_op_vec3_f32(step(var_3.zyz, var_3.wyw)))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-819f, var_3.x, 695f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_3.x, -695f, -516f))))))), 11405i, ~((_wgslsmith_mult_vec3_i32(var_1.a.zwy, var_5.a.a.wzx) << (select(var_0.zwz, u_input.a, vec3<bool>(true, var_5.b.c.a, var_5.d.a)) % vec3<u32>(32u))) ^ var_1.a.wxw), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1906f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_3.x, 1000f))), var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-360f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, var_3.x, -796f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_3.x, var_3.x, var_3.x, 816f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, var_3.x, 1173f, -302f) - vec4<f32>(-816f, 333f, var_3.x, var_3.x)), !vec4<bool>(var_1.c.a, false, false, false)))), true)));
}

