struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 96086u;

var<private> global1: Struct_2;

var<private> global2: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec2<bool>(false, false), vec4<bool>(true, true, true, true), -1i), Struct_1(vec2<bool>(true, true), vec4<bool>(true, false, false, true), -1i), Struct_1(vec2<bool>(true, false), vec4<bool>(true, false, true, true), -41063i), Struct_1(vec2<bool>(true, false), vec4<bool>(false, true, true, false), -15603i), Struct_1(vec2<bool>(false, true), vec4<bool>(false, false, true, true), 2147483647i), Struct_1(vec2<bool>(true, false), vec4<bool>(false, false, true, true), 17966i), Struct_1(vec2<bool>(true, true), vec4<bool>(true, true, true, true), 0i), Struct_1(vec2<bool>(true, false), vec4<bool>(true, true, false, true), -5703i), Struct_1(vec2<bool>(true, true), vec4<bool>(false, false, true, false), -49591i), Struct_1(vec2<bool>(true, true), vec4<bool>(false, false, true, true), 18891i), Struct_1(vec2<bool>(true, true), vec4<bool>(true, false, false, false), 1050i), Struct_1(vec2<bool>(true, false), vec4<bool>(true, false, false, false), 2147483647i), Struct_1(vec2<bool>(true, true), vec4<bool>(false, true, true, true), -21360i), Struct_1(vec2<bool>(false, false), vec4<bool>(false, false, true, true), 6920i), Struct_1(vec2<bool>(true, false), vec4<bool>(false, false, false, true), i32(-2147483648)), Struct_1(vec2<bool>(false, false), vec4<bool>(true, false, false, true), 7667i));

var<private> global3: vec3<u32>;

var<private> global4: u32 = 0u;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn func_1(arg_0: u32) -> u32 {
    return global3.x;
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: bool, arg_3: vec4<u32>) -> u32 {
    global1 = arg_1;
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1202f, arg_0) * vec2<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(635f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + arg_0), _wgslsmith_f_op_f32(abs(arg_0)))))));
    let var_1 = arg_1.b;
    global2 = array<Struct_1, 16>();
    global2 = array<Struct_1, 16>();
    return global1.a;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: vec4<u32>, arg_3: vec3<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(arg_1.yy));
    let var_1 = vec4<i32>(abs(_wgslsmith_mult_i32(u_input.c.x | global1.b.c, global1.b.c) | -1i), _wgslsmith_mult_i32(2147483647i, u_input.c.x), _wgslsmith_add_i32(global1.b.c, ~2147483647i), global1.b.c);
    let var_2 = vec2<u32>(~31290u, 1u);
    global3 = vec3<u32>(firstLeadingBit(_wgslsmith_mod_u32(func_3(1491f, Struct_2(var_2.x, global1.b, global1.c, vec2<u32>(8277u, u_input.b)), global1.b.b.x, vec4<u32>(17652u, 1u, global3.x, arg_2.x)), 0u)), ~(~(~1u)), _wgslsmith_add_u32(u_input.b, 0u));
    global1 = Struct_2(max(_wgslsmith_dot_vec2_u32(reverseBits(global3.xy), u_input.d), _wgslsmith_dot_vec2_u32(~var_2, vec2<u32>(func_1(arg_2.x), _wgslsmith_mod_u32(10022u, arg_2.x)))), global1.b, all(select(!vec3<bool>(false, arg_3.x, global1.b.b.x), select(select(vec3<bool>(false, true, false), arg_3, global1.b.b.zxw), global1.b.b.yyx, vec3<bool>(false, arg_3.x, global1.b.b.x)), select(vec3<bool>(global1.b.a.x, arg_3.x, global1.c), arg_3, false))), ~_wgslsmith_sub_vec2_u32(var_2 << ((vec2<u32>(1u, arg_2.x) ^ vec2<u32>(global3.x, 81374u)) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(select(u_input.d, arg_2.yw, global1.b.b.x), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, global3.x), vec2<u32>(24112u, arg_2.x)))));
    return Struct_2(0u, Struct_1(select(global1.b.b.wz, select(select(vec2<bool>(true, true), global1.b.b.xy, arg_3.yz), !arg_3.zz, vec2<bool>(false, true)), select(vec2<bool>(arg_3.x, false), arg_3.zx, vec2<bool>(false, true))), !select(vec4<bool>(false, arg_3.x, arg_3.x, arg_3.x), global1.b.b, vec4<bool>(arg_3.x, global1.b.b.x, true, true)), u_input.c.x), false, vec2<u32>(global3.x, global3.x));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: bool) -> vec3<u32> {
    let var_0 = _wgslsmith_mult_i32(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(63380i, u_input.c.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.b.c, u_input.c.x), _wgslsmith_div_vec2_i32(u_input.c.wy, vec2<i32>(1i, arg_0.b.c)), -u_input.c.yw))), ~reverseBits(5022i));
    var var_1 = Struct_1(arg_0.b.a, vec4<bool>(true, all(vec4<bool>(arg_0.b.c != -15663i, true, true, false)), !global1.c, true), global1.b.c);
    var var_2 = -795f;
    var var_3 = ~(~(_wgslsmith_mod_vec3_u32(min(vec3<u32>(0u, arg_0.a, 4294967295u), vec3<u32>(35903u, 4294967295u, arg_1.d.x)), vec3<u32>(1677u, 0u, arg_1.a) >> (vec3<u32>(global3.x, u_input.d.x, global1.d.x) % vec3<u32>(32u))) << (_wgslsmith_div_vec3_u32(select(vec3<u32>(arg_1.d.x, u_input.d.x, 1u), vec3<u32>(4294967295u, arg_0.a, arg_1.a), vec3<bool>(true, false, arg_2.x)), ~vec3<u32>(global1.d.x, arg_1.d.x, global1.d.x)) % vec3<u32>(32u))));
    let var_4 = func_2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1293f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1002f - -601f) - -491f), -107f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, 830f)))))), vec4<f32>(1f, 1f, 1f, 1f), vec4<u32>(arg_1.a, 0u, 5737u, abs(arg_0.d.x)), vec3<bool>(_wgslsmith_div_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.d.x, arg_0.d.x, 11057u), vec3<u32>(arg_1.d.x, var_3.x, arg_0.d.x))) <= 11545u, true, true));
    return ~vec3<u32>(global1.a, 4294967295u, _wgslsmith_sub_u32(arg_0.d.x, firstLeadingBit(~global3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    global0 = ~56418u;
    global4 = _wgslsmith_add_u32(countOneBits(5962u & func_1(global3.x)), ~(~abs(1u)));
    var var_1 = ~global3.x;
    var_1 = firstTrailingBit(min(global3.x, 25299u));
    global3 = select(_wgslsmith_div_vec3_u32(~(~select(vec3<u32>(global3.x, 86548u, 4294967295u), vec3<u32>(global3.x, global3.x, global3.x), false)), reverseBits(~vec3<u32>(u_input.d.x, 4294967295u, 44547u))), select(~_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.a, 4294967295u, global3.x), vec3<u32>(24210u, u_input.d.x, 100787u), ~vec3<u32>(0u, global3.x, 1u)), _wgslsmith_clamp_vec3_u32(func_4(Struct_2(1u, global2[_wgslsmith_index_u32(9016u, 16u)], global1.c, u_input.d), func_2(vec4<f32>(-201f, -824f, 828f, -1066f), vec4<f32>(1591f, -1341f, -987f, 303f), vec4<u32>(u_input.b, global1.d.x, global3.x, 17630u), global1.b.b.xxw), !global1.b.a, true), func_4(func_2(vec4<f32>(139f, -728f, -130f, 1288f), vec4<f32>(468f, -806f, -493f, -576f), vec4<u32>(global1.d.x, global3.x, 0u, u_input.b), vec3<bool>(global1.b.a.x, global1.b.b.x, global1.b.b.x)), func_2(vec4<f32>(1454f, 1466f, 1000f, -1700f), vec4<f32>(-224f, 1384f, -659f, -487f), vec4<u32>(4294967295u, u_input.d.x, global3.x, 1u), global1.b.b.xwx), global1.b.b.ww, !global1.b.a.x), min(firstLeadingBit(vec3<u32>(1u, global3.x, global3.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(global3.x, global3.x, 78458u), vec3<u32>(u_input.b, 10035u, global3.x), vec3<u32>(1u, 34487u, 1u)))), func_2(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-392f, 235f, 361f, -1000f) + vec4<f32>(786f, 525f, 260f, 1335f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-781f, -194f, 1204f, 872f)), vec4<bool>(global1.b.a.x, global1.c, global1.b.a.x, global1.c))), firstTrailingBit(vec4<u32>(global1.a, global1.d.x, u_input.b, 48912u)), select(func_2(vec4<f32>(-558f, 292f, 732f, 555f), vec4<f32>(704f, 1095f, -299f, 232f), vec4<u32>(8898u, 0u, u_input.d.x, global3.x), vec3<bool>(true, global1.c, true)).b.b.yzz, !global1.b.b.zyy, global1.b.b.zzy)).c), global1.b.a.x);
    global2 = array<Struct_1, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec3_u32(max(~vec3<u32>(global3.x, global3.x, 0u), ~vec3<u32>(global3.x, global1.a, global3.x)), ~vec3<u32>(1u, global3.x, global3.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-145f, 418f, 565f)));
}

