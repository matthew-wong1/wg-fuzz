struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<bool>,
    d: vec4<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_2,
    d: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: f32,
}

struct Struct_5 {
    a: bool,
    b: vec2<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, true, false);

var<private> global1: vec2<u32> = vec2<u32>(72201u, 6579u);

var<private> global2: array<Struct_5, 18> = array<Struct_5, 18>(Struct_5(true, vec2<f32>(514f, -1318f), Struct_2(101467u)), Struct_5(false, vec2<f32>(1511f, 790f), Struct_2(4294967295u)), Struct_5(true, vec2<f32>(1350f, 506f), Struct_2(20654u)), Struct_5(true, vec2<f32>(-1000f, 169f), Struct_2(8718u)), Struct_5(false, vec2<f32>(-387f, -319f), Struct_2(28453u)), Struct_5(false, vec2<f32>(356f, -569f), Struct_2(4294967295u)), Struct_5(false, vec2<f32>(839f, 651f), Struct_2(69142u)), Struct_5(true, vec2<f32>(-215f, -999f), Struct_2(42479u)), Struct_5(false, vec2<f32>(-766f, -894f), Struct_2(0u)), Struct_5(false, vec2<f32>(-1329f, -1400f), Struct_2(1u)), Struct_5(true, vec2<f32>(-358f, -1036f), Struct_2(4294967295u)), Struct_5(false, vec2<f32>(1000f, -1449f), Struct_2(16203u)), Struct_5(false, vec2<f32>(-322f, 261f), Struct_2(4217u)), Struct_5(true, vec2<f32>(-1989f, 676f), Struct_2(14375u)), Struct_5(false, vec2<f32>(-2937f, -2445f), Struct_2(51080u)), Struct_5(false, vec2<f32>(-952f, 855f), Struct_2(4294967295u)), Struct_5(true, vec2<f32>(120f, -1151f), Struct_2(0u)), Struct_5(false, vec2<f32>(-1782f, -230f), Struct_2(43911u)));

var<private> global3: vec2<bool> = vec2<bool>(false, true);

var<private> global4: vec4<u32> = vec4<u32>(0u, 4294967295u, 0u, 1u);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_3 {
    let var_0 = 819f;
    global4 = ~u_input.c;
    var var_1 = global0.x;
    return arg_0;
}

fn func_3(arg_0: Struct_3) -> bool {
    var var_0 = firstLeadingBit(u_input.a.x);
    global0 = vec4<bool>(any(!select(!vec2<bool>(true, global3.x), vec2<bool>(arg_0.b.c.x, false), global0.x)), true, arg_0.b.d.x, false);
    var var_1 = vec4<u32>(1u << (~(1u & _wgslsmith_div_u32(global1.x, arg_0.c.a)) % 32u), ~4294967295u, ~1u, 43589u);
    var var_2 = _wgslsmith_mult_vec4_i32(~reverseBits(arg_0.b.e), arg_0.b.e);
    var_2 = (-vec4<i32>(u_input.b, _wgslsmith_mod_i32(arg_0.b.e.x, arg_0.b.e.x), -21155i, 1i) & vec4<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -74740i, u_input.d.x), _wgslsmith_div_vec3_i32(vec3<i32>(5222i, var_2.x, 20781i), arg_0.b.e.yyx)), 1i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(arg_0.b.e.zyy, arg_0.b.e.wyy), arg_0.b.e.zwz))) << (~reverseBits(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(6001u, var_1.x, u_input.c.x, global1.x), u_input.c), u_input.c)) % vec4<u32>(32u));
    return false;
}

fn func_1(arg_0: Struct_5) -> i32 {
    let var_0 = ~_wgslsmith_div_vec3_u32(vec3<u32>(global1.x, ~1u, global1.x), ~u_input.c.yzx);
    global0 = select(select(!vec4<bool>(global0.x && true, global3.x, true, true), !select(select(vec4<bool>(true, global3.x, global3.x, global3.x), vec4<bool>(true, false, global0.x, arg_0.a), true), vec4<bool>(global3.x, global3.x, global0.x, arg_0.a), false), func_3(func_2(Struct_3(vec2<u32>(34583u, 0u), Struct_1(global3.x, 0i, vec2<bool>(false, true), vec4<bool>(global0.x, true, arg_0.a, global3.x), vec4<i32>(44187i, u_input.b, -2147483647i, u_input.b)), Struct_2(0u), vec3<f32>(858f, -3449f, 1000f)), vec4<f32>(-416f, 1000f, 945f, arg_0.b.x), Struct_1(false, 0i, global0.ww, vec4<bool>(false, true, true, global3.x), vec4<i32>(u_input.b, u_input.b, 8131i, 1i)), vec3<bool>(arg_0.a, global0.x, global3.x))) & !(10316i != u_input.b)), !vec4<bool>(!any(vec3<bool>(global3.x, global3.x, true)), arg_0.a, arg_0.a, global3.x), true);
    global3 = select(vec2<bool>(!(!all(vec3<bool>(false, true, false))), global0.x), vec2<bool>(func_2(func_2(Struct_3(vec2<u32>(var_0.x, u_input.a.x), Struct_1(false, u_input.d.x, vec2<bool>(true, true), vec4<bool>(false, global3.x, true, global0.x), vec4<i32>(u_input.d.x, 0i, u_input.b, u_input.d.x)), Struct_2(global1.x), vec3<f32>(-1135f, arg_0.b.x, 1012f)), vec4<f32>(-1799f, 858f, -1748f, arg_0.b.x), Struct_1(arg_0.a, 0i, vec2<bool>(global0.x, global0.x), vec4<bool>(arg_0.a, true, global0.x, false), vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.b)), global0.zwx), _wgslsmith_div_vec4_f32(vec4<f32>(-727f, arg_0.b.x, 392f, -1000f), vec4<f32>(-1150f, -1456f, arg_0.b.x, -1504f)), Struct_1(true, u_input.b, vec2<bool>(false, arg_0.a), vec4<bool>(false, false, global0.x, true), vec4<i32>(u_input.b, -1i, 546i, -14477i)), !global0.xxx).b.d.x && true, true), global0.wx);
    global1 = ~(~(vec2<u32>(var_0.x, ~global4.x) >> (var_0.yy % vec2<u32>(32u))));
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)), arg_0.b.x, arg_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1451f))))));
    return _wgslsmith_add_i32(~(-41512i), -1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec4_i32(-(min(vec4<i32>(2147483647i, u_input.b, u_input.d.x, u_input.d.x) << (u_input.c % vec4<u32>(32u)), -vec4<i32>(u_input.b, -2147483647i, u_input.d.x, u_input.d.x)) & vec4<i32>(1i, _wgslsmith_sub_i32(u_input.b, -17337i), func_1(Struct_5(true, vec2<f32>(-410f, -697f), Struct_2(global1.x))), 55374i)), vec4<i32>(-1i, u_input.d.x, firstLeadingBit(u_input.b), _wgslsmith_mult_i32(1i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.d.x, -7410i, u_input.b), vec4<i32>(5179i, u_input.d.x, 2147483647i, 18735i)), -vec4<i32>(-13847i, u_input.d.x, u_input.d.x, -5015i)))));
    global3 = vec2<bool>(global0.x, true);
    global1 = countOneBits(u_input.a);
    let var_1 = select(func_2(func_2(Struct_3(min(u_input.a, u_input.c.zw), func_2(Struct_3(vec2<u32>(global4.x, global1.x), Struct_1(global3.x, 1i, global0.zy, vec4<bool>(true, true, global3.x, global0.x), vec4<i32>(-35616i, 1i, var_0.x, -2147483647i)), Struct_2(u_input.a.x), vec3<f32>(200f, 862f, 1000f)), vec4<f32>(-542f, -873f, 656f, 225f), Struct_1(false, -6950i, global0.yx, vec4<bool>(global3.x, true, true, global0.x), vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x)), global0.yxy).b, Struct_2(0u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1635f, 951f, 1006f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -727f), _wgslsmith_f_op_f32(max(-216f, 428f)), func_2(Struct_3(vec2<u32>(global1.x, u_input.a.x), Struct_1(global0.x, -1i, vec2<bool>(true, global3.x), vec4<bool>(true, global0.x, false, true), var_0), Struct_2(39254u), vec3<f32>(-704f, -252f, -715f)), vec4<f32>(-688f, -1358f, -183f, 1614f), Struct_1(false, u_input.b, vec2<bool>(false, false), vec4<bool>(true, true, global0.x, global3.x), var_0), vec3<bool>(false, global0.x, global0.x)).d.x, _wgslsmith_f_op_f32(f32(-1f) * -358f)), func_2(func_2(Struct_3(vec2<u32>(u_input.c.x, 21927u), Struct_1(false, 0i, vec2<bool>(true, false), vec4<bool>(global0.x, true, false, global0.x), vec4<i32>(1i, -1i, -19707i, u_input.b)), Struct_2(global1.x), vec3<f32>(-930f, 170f, 889f)), vec4<f32>(-782f, 495f, 1085f, 1662f), Struct_1(true, u_input.b, global0.wy, vec4<bool>(global0.x, global0.x, global0.x, global0.x), var_0), global0.xwx), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1624f, 2083f, -1522f, -279f)), Struct_1(global0.x, var_0.x, global0.zz, vec4<bool>(true, false, global3.x, global3.x), vec4<i32>(2147483647i, u_input.d.x, var_0.x, u_input.d.x)), func_2(Struct_3(vec2<u32>(global1.x, global4.x), Struct_1(global0.x, 0i, vec2<bool>(global3.x, global0.x), vec4<bool>(global3.x, true, false, true), vec4<i32>(u_input.b, u_input.b, 115467i, u_input.b)), Struct_2(global4.x), vec3<f32>(-982f, -911f, 966f)), vec4<f32>(1311f, 1396f, 880f, 249f), Struct_1(global3.x, -76968i, vec2<bool>(global0.x, global3.x), vec4<bool>(global3.x, global0.x, true, true), var_0), vec3<bool>(true, global0.x, false)).b.d.xxw).b, vec3<bool>(true, global0.x, false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(1263f, 538f, global3.x)), 509f, _wgslsmith_f_op_f32(step(-1252f, 1589f)), _wgslsmith_f_op_f32(1090f - 243f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-224f, -296f, 506f, -970f)))), Struct_1(all(!global0.wz), _wgslsmith_sub_i32(-37300i | var_0.x, u_input.d.x), select(global0.yx, func_2(Struct_3(vec2<u32>(global1.x, 40364u), Struct_1(false, var_0.x, vec2<bool>(false, global3.x), vec4<bool>(false, global0.x, global3.x, global3.x), vec4<i32>(var_0.x, -41600i, -2215i, var_0.x)), Struct_2(5215u), vec3<f32>(1042f, 559f, 2013f)), vec4<f32>(-814f, 1704f, -1483f, -379f), Struct_1(false, -12358i, global0.zy, vec4<bool>(global0.x, true, true, true), vec4<i32>(1i, u_input.d.x, var_0.x, 2147483647i)), vec3<bool>(global3.x, global0.x, false)).b.d.wz, global0.x), vec4<bool>(global3.x, true, true, true), var_0), vec3<bool>(!(-2147483647i != u_input.d.x), !(true | global3.x), !global3.x)).b.d.wzz, !global0.yxx, !vec3<bool>(true, (global3.x || global3.x) & global0.x, true));
    var var_2 = Struct_4(min(_wgslsmith_dot_vec3_u32(vec3<u32>(global4.x, 0u, 31456u), u_input.c.zyy) ^ global4.x, ~0u >> (~_wgslsmith_dot_vec4_u32(u_input.c, u_input.c) % 32u)), vec2<u32>(4294967295u, ~(~u_input.a.x & _wgslsmith_dot_vec3_u32(global4.zxw, global4.wzw))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(217f, 690f, -478f, _wgslsmith_f_op_f32(f32(-1f) * -159f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -100f), func_2(func_2(Struct_3(vec2<u32>(global4.x, global4.x), Struct_1(var_1.x, 37072i, global0.wz, vec4<bool>(global0.x, true, true, global0.x), vec4<i32>(-21611i, 29710i, u_input.d.x, 21053i)), Struct_2(global4.x), vec3<f32>(329f, -1563f, 1486f)), vec4<f32>(-580f, -273f, 1000f, -2630f), Struct_1(true, 1i, var_1.zy, vec4<bool>(false, true, true, false), var_0), vec3<bool>(false, true, global3.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(354f, 894f, 1066f, 566f)), Struct_1(global0.x, -49129i, var_1.yx, vec4<bool>(true, global0.x, false, false), var_0), var_1).d.x, _wgslsmith_f_op_f32(abs(-1197f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(724f - -630f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1809f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(136f * 1676f))) + 1f));
    global2 = array<Struct_5, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(max(global4.x, ~4294967295u), _wgslsmith_dot_vec2_u32(abs(global4.zz), _wgslsmith_mult_vec2_u32(vec2<u32>(44772u, u_input.a.x), var_2.b)), func_2(func_2(Struct_3(vec2<u32>(4294967295u, u_input.a.x), Struct_1(true, u_input.b, var_1.xx, vec4<bool>(global0.x, false, global3.x, true), vec4<i32>(1i, 0i, var_0.x, 2147483647i)), Struct_2(u_input.c.x), vec3<f32>(-1888f, var_2.c.x, -508f)), var_2.c, Struct_1(global3.x, 6508i, vec2<bool>(true, false), vec4<bool>(false, false, false, global0.x), vec4<i32>(var_0.x, 9815i, u_input.d.x, u_input.d.x)), vec3<bool>(var_1.x, true, true)), vec4<f32>(var_2.d, var_2.c.x, var_2.c.x, var_2.d), Struct_1(var_1.x, var_0.x, vec2<bool>(global3.x, false), vec4<bool>(var_1.x, var_1.x, global0.x, true), vec4<i32>(u_input.d.x, var_0.x, 77021i, var_0.x)), var_1).a.x >> (reverseBits(abs(88784u)) % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_2.c.wwz, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.d, var_2.d, -170f) + vec3<f32>(301f, -690f, 403f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_2.c.yzy, var_2.c.ywy, vec3<bool>(true, true, var_1.x)))))), 86102u);
}

