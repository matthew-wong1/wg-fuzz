struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<bool>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<i32>,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: Struct_3,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<i32>;

var<private> global2: Struct_3;

var<private> global3: Struct_2;

var<private> global4: array<vec4<u32>, 14> = array<vec4<u32>, 14>(vec4<u32>(4159u, 2930u, 25274u, 0u), vec4<u32>(1u, 15757u, 27640u, 102266u), vec4<u32>(18685u, 68370u, 4294967295u, 4205u), vec4<u32>(56637u, 15800u, 41400u, 45174u), vec4<u32>(36189u, 0u, 4294967295u, 53200u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u), vec4<u32>(1u, 1u, 15543u, 1u), vec4<u32>(63133u, 1u, 1u, 0u), vec4<u32>(91618u, 32064u, 85961u, 125521u), vec4<u32>(18411u, 0u, 4294967295u, 4294967295u), vec4<u32>(1u, 14581u, 1u, 31781u), vec4<u32>(9594u, 0u, 4294967295u, 82168u), vec4<u32>(84550u, 4294967295u, 0u, 0u), vec4<u32>(0u, 29635u, 0u, 23051u));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: Struct_4, arg_3: f32) -> vec3<i32> {
    global1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, reverseBits(global2.b.b), ~(_wgslsmith_div_i32(global3.d.d, 30564i) << (_wgslsmith_dot_vec4_u32(global3.e, vec4<u32>(global3.b, 4294967295u, global2.a, arg_2.b.d.a)) % 32u)), 1i), ~vec4<i32>(-_wgslsmith_mod_i32(2147483647i, 2147483647i), _wgslsmith_dot_vec3_i32(~global1.xyy, -vec3<i32>(arg_2.c.b.d, 5374i, global1.x)), arg_2.b.a.d, -9448i), _wgslsmith_clamp_vec4_i32(~(~(vec4<i32>(2147483647i, -2147483647i, 1i, -795i) << (arg_2.b.e % vec4<u32>(32u)))), vec4<i32>(_wgslsmith_dot_vec3_i32(~global1.xyw, abs(global1.yzw)), ~u_input.a.x << (reverseBits(4294967295u) % 32u), ~global1.x >> (_wgslsmith_add_u32(arg_2.c.a, 1u) % 32u), 2147483647i), -min(~vec4<i32>(-5247i, u_input.a.x, -1i, 37494i), _wgslsmith_clamp_vec4_i32(vec4<i32>(13329i, u_input.a.x, 0i, arg_2.b.a.d), vec4<i32>(global1.x, -56240i, global1.x, global2.b.d), vec4<i32>(12548i, u_input.a.x, -38641i, global2.b.b)))));
    global3 = Struct_2(global3.a, arg_0.x, arg_2.b.c, global3.d, vec4<u32>(arg_2.b.a.e, arg_2.c.b.a, 35649u & ~(~arg_0.x), reverseBits(firstTrailingBit(min(global3.b, 4294967295u)))));
    global3 = arg_2.b;
    return -(~global1.zyz);
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = global3.d;
    global3 = Struct_2(global2.b, global2.b.a, min(vec2<i32>(_wgslsmith_dot_vec3_i32(func_3(vec3<u32>(99299u, 0u, var_0.e), global3.d.c.zz, Struct_4(false, Struct_2(Struct_1(4294967295u, -1i, var_0.c, global3.c.x, 0u), 1u, global3.c, global3.a, vec4<u32>(45833u, arg_0, 17985u, 1u)), Struct_3(arg_0, global2.b), 33862u), -375f), countOneBits(vec3<i32>(-2147483647i, var_0.b, u_input.a.x))), 0i), -vec2<i32>(-1i, -1019i)), Struct_1(0u, u_input.a.x, vec3<bool>(true, any(select(global3.a.c, global2.b.c, vec3<bool>(true, true, false))), true), select(1i, 9951i, any(!vec4<bool>(false, global2.b.c.x, true, var_0.c.x))), max(0u, max(48206u, ~4294967295u))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, ~var_0.a, global2.b.e, _wgslsmith_mult_u32(39949u, global2.a)), ~global3.e));
    global1 = ~vec4<i32>(-17912i, -2147483647i, u_input.a.x, select(0i, 9952i, false) & _wgslsmith_add_i32(59556i, global2.b.b)) << (countOneBits(select(countOneBits(vec4<u32>(global2.b.a, arg_0, var_0.e, 1u)), vec4<u32>(1u, _wgslsmith_add_u32(0u, global3.a.e), 1u | global2.b.a, 1u), !select(vec4<bool>(global2.b.c.x, global2.b.c.x, false, true), vec4<bool>(global2.b.c.x, true, true, false), global2.b.c.x))) % vec4<u32>(32u));
    global2 = Struct_3(~abs(_wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, var_0.e), abs(49747u))), global2.b);
    let var_1 = var_0.c.x;
    return 71114u;
}

fn func_4(arg_0: u32) -> Struct_1 {
    var var_0 = countOneBits(global3.d.a);
    let var_1 = Struct_3(_wgslsmith_sub_u32(~min(~arg_0, global2.b.e), 0u), Struct_1(~_wgslsmith_div_u32(1u, 4653u), -(abs(global1.x) | firstLeadingBit(global3.c.x)), vec3<bool>(true, select(false, true, true), !global2.b.c.x), _wgslsmith_sub_i32(_wgslsmith_sub_i32(29234i, ~(-33433i)), firstTrailingBit(global3.d.b)), global2.b.a));
    let var_2 = select(true, global2.b.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1064f - 1452f) - _wgslsmith_f_op_f32(step(1133f, 389f))) - -1008f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(127f * 1013f) + _wgslsmith_f_op_f32(f32(-1f) * -550f)) + _wgslsmith_f_op_f32(min(254f, _wgslsmith_div_f32(-1848f, -1353f)))));
    global2 = Struct_3(max(var_1.b.e, ~(~(~global2.b.e))), Struct_1(_wgslsmith_add_u32(~global2.a, func_2(~1u)), -2147483647i, global3.d.c, _wgslsmith_add_i32(u_input.a.x, global2.b.b), global3.d.a));
    let var_3 = 14715u;
    return global3.d;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_add_vec3_u32(global3.e.wzx, vec3<u32>(0u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(reverseBits(global3.d.a), global2.b.a, ~53201u), min(~1u, 1u)), abs(~select(global3.a.e, global2.a, true))));
    let var_1 = _wgslsmith_mult_vec2_u32(global3.e.zx, (reverseBits(var_0.zy) | (_wgslsmith_mult_vec2_u32(var_0.yz, var_0.xz) ^ ~global3.e.zz)) & abs(global3.e.xx));
    var var_2 = Struct_2(func_4(func_2(~(~global3.b))), ~1u, global1.yw, Struct_1(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(global3.e.xzx, global3.e.wyx), var_1.x), global2.b.d, !(!(!vec3<bool>(global3.d.c.x, true, arg_0.c.x))), global1.x, ~1u), global3.e);
    let var_3 = (_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - arg_1.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.x))))) <= arg_1.x) || false;
    let var_4 = _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>((arg_0.b & -25359i) << (~global2.b.a % 32u), arg_0.b, 7950i)), vec3<i32>(_wgslsmith_mod_i32(global1.x, func_3(vec3<u32>(var_1.x, var_2.a.a, var_2.a.e), vec2<bool>(true, false), Struct_4(var_2.d.c.x, Struct_2(Struct_1(6499u, 1i, vec3<bool>(var_2.d.c.x, false, global2.b.c.x), var_2.c.x, 1u), var_1.x, global3.c, Struct_1(global2.a, arg_2.x, vec3<bool>(false, false, global3.d.c.x), global2.b.d, 1u), var_2.e), Struct_3(35241u, global3.a), global2.b.a), -1000f).x) ^ _wgslsmith_clamp_i32(global1.x, arg_0.d, _wgslsmith_add_i32(global1.x, 41618i)), ~(-49754i), ~min(global3.a.b, 0i) >> (_wgslsmith_sub_u32(48595u, 46146u) % 32u)));
    return Struct_1(4294967295u, _wgslsmith_mult_i32(var_4.x, 51250i) ^ 1i, func_4(abs(1u)).c, -1i, countOneBits(global2.b.e));
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = global1.zyy;
    global4 = array<vec4<u32>, 14>();
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(795f, -408f))), _wgslsmith_f_op_f32(-270f * -781f), _wgslsmith_f_op_f32(ceil(-754f)), _wgslsmith_div_f32(_wgslsmith_div_f32(135f, -718f), _wgslsmith_f_op_f32(trunc(-197f)))), vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1279f, -712f, -907f, 399f) * vec4<f32>(375f, 1000f, -416f, 1073f)))))))));
    var var_2 = ~_wgslsmith_sub_u32(func_2(45645u), _wgslsmith_div_u32(global3.a.a, max(_wgslsmith_mult_u32(arg_1.a, arg_1.e), max(27971u, arg_1.e))));
    return vec4<f32>(1f, _wgslsmith_f_op_f32(max(var_1.x, -726f)), -159f, var_1.x);
}

fn func_6(arg_0: bool, arg_1: vec4<f32>) -> Struct_3 {
    let var_0 = arg_1.ww;
    global3 = Struct_2(global2.b, global2.b.e, -vec2<i32>(~global3.c.x, -(global2.b.b & u_input.a.x)), func_1(Struct_1(4294967295u, -global3.a.b & _wgslsmith_mult_i32(-70549i, 20974i), vec3<bool>(true, true, arg_0), ~global3.d.d, func_4(1u).e), arg_1.xxw, u_input.a), ~(~(_wgslsmith_div_vec4_u32(global3.e, vec4<u32>(global3.b, global3.b, global3.b, global3.b)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(36644u, global2.b.a, 0u, 4294967295u), global4[_wgslsmith_index_u32(1u, 14u)]) % vec4<u32>(32u)))));
    let var_1 = true;
    var var_2 = 14598i;
    let var_3 = Struct_1(1u, 20478i, func_1(global2.b, _wgslsmith_f_op_vec3_f32(min(arg_1.xwy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(374f, 105f, -218f)))), -vec2<i32>(-1i, global1.x)).c, _wgslsmith_dot_vec3_i32(abs(countOneBits(abs(vec3<i32>(1i, global1.x, 6348i)))), ~global1.wxz), global3.b);
    return Struct_3(var_3.a, Struct_1(1u, func_3((vec3<u32>(var_3.a, 1u, 39192u) << (global3.e.ywx % vec3<u32>(32u))) | ~global3.e.zyy, global3.a.c.yx, Struct_4(var_0.x >= -637f, Struct_2(Struct_1(0u, 0i, vec3<bool>(var_3.c.x, arg_0, arg_0), -70275i, global3.e.x), 67018u, global3.c, global3.d, global4[_wgslsmith_index_u32(0u, 14u)]), Struct_3(global3.a.e, global2.b), 0u), arg_1.x).x, global3.a.c, var_3.d, func_2(var_3.e << (global3.a.a % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_6(global2.b.c.x, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_5(max(2147483647i, global1.x), func_1(Struct_1(global2.a, 0i, vec3<bool>(global3.d.c.x, global2.b.c.x, false), global3.c.x, global3.d.e), vec3<f32>(-1000f, -234f, -555f), global1.yw)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1569f, -338f, _wgslsmith_f_op_f32(sign(-559f)), _wgslsmith_f_op_f32(-215f + -521f))))));
    let var_0 = false;
    let var_1 = global3.e.wy;
    var var_2 = _wgslsmith_f_op_f32(min(-197f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-304f + _wgslsmith_f_op_f32(f32(-1f) * -284f))))));
    let var_3 = firstLeadingBit(abs(vec4<i32>(-1i) * -vec4<i32>(global2.b.d, global1.x, 2147483647i, -34812i)));
    var var_4 = Struct_3(1u, func_6(global3.a.c.x, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-853f, 1000f, 2049f, -1019f)))))).b);
    let var_5 = global1.x;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -954f));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, ~(~global2.b.e), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1586f + -245f), _wgslsmith_f_op_f32(350f - 569f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2163f, 649f) - vec2<f32>(792f, 682f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(345f, 438f) - vec2<f32>(-471f, -488f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(169f, 359f)))), global1.x);
}

