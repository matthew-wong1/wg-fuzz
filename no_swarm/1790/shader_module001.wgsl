struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29> = array<bool, 29>(true, true, true, true, false, true, false, false, false, false, true, false, true, false, false, false, false, true, false, true, true, true, true, true, false, false, true, false, false);

var<private> global1: vec2<bool>;

var<private> global2: array<Struct_3, 3>;

var<private> global3: array<u32, 13>;

var<private> global4: array<vec4<f32>, 27> = array<vec4<f32>, 27>(vec4<f32>(-736f, -814f, -1167f, 502f), vec4<f32>(1757f, -341f, 176f, 1237f), vec4<f32>(794f, 1524f, 1436f, 364f), vec4<f32>(560f, 157f, 2304f, -1940f), vec4<f32>(-1075f, 1186f, 929f, -1789f), vec4<f32>(-961f, -358f, 849f, -1000f), vec4<f32>(-717f, -1000f, -523f, 391f), vec4<f32>(198f, 219f, 1320f, 1212f), vec4<f32>(800f, -896f, -1000f, -259f), vec4<f32>(-171f, -913f, 130f, 837f), vec4<f32>(874f, -166f, 199f, 444f), vec4<f32>(-1153f, 482f, -122f, 1542f), vec4<f32>(-706f, -1173f, -597f, -959f), vec4<f32>(-648f, 1000f, -1460f, 812f), vec4<f32>(-1249f, 248f, 2811f, 140f), vec4<f32>(-619f, -556f, 1055f, -2200f), vec4<f32>(378f, -1000f, -345f, 1516f), vec4<f32>(-571f, -135f, 1040f, -592f), vec4<f32>(-1454f, 690f, -383f, -997f), vec4<f32>(1871f, -1006f, -606f, 1203f), vec4<f32>(-738f, 854f, -660f, 466f), vec4<f32>(957f, 2214f, -1278f, -303f), vec4<f32>(188f, -2022f, -316f, -698f), vec4<f32>(-301f, -1113f, -962f, -2059f), vec4<f32>(1056f, 1587f, -1180f, -234f), vec4<f32>(1730f, -2004f, -1023f, 715f), vec4<f32>(1000f, -1213f, -738f, -1100f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -568f)), vec2<u32>(1u, _wgslsmith_mult_u32(select(~global3[_wgslsmith_index_u32(4294967295u, 13u)], u_input.b.x, !global1.x), ~global3[_wgslsmith_index_u32(u_input.a, 13u)] << (abs(0u) % 32u))), !(!select(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 29u)], true), vec2<bool>(true, true), vec2<bool>(global1.x, global0[_wgslsmith_index_u32(u_input.a, 29u)]))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1571f - -1184f) * var_0.a)), var_0.b, vec2<bool>(select(!global1.x, global0[_wgslsmith_index_u32(45386u, 29u)], all(vec2<bool>(global1.x, false))), var_0.c.x)), !vec4<bool>(global1.x, true, all(!var_0.c), !global0[_wgslsmith_index_u32(1u | u_input.a, 29u)]), 63288u, Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a))), u_input.b, select(var_0.c, vec2<bool>(false, true), global0[_wgslsmith_index_u32(~(~global3[_wgslsmith_index_u32(u_input.a, 13u)]), 29u)])));
    global3 = array<u32, 13>();
    let var_2 = global2[_wgslsmith_index_u32(4294967295u, 3u)];
    let var_3 = select(_wgslsmith_clamp_vec2_u32(abs(~u_input.b), ~u_input.b, ~(~vec2<u32>(38883u, var_0.b.x))) << (firstTrailingBit(var_0.b) % vec2<u32>(32u)), ~var_2.a.yy, any(var_0.c));
    return ~(var_2.a.x << (abs(~0u) % 32u));
}

fn func_2(arg_0: u32, arg_1: vec4<i32>) -> u32 {
    global3 = array<u32, 13>();
    var var_0 = ~countOneBits(func_3()) >> (u_input.a % 32u);
    global0 = array<bool, 29>();
    let var_1 = ~(-arg_1.x | max(arg_1.x, -1i)) << (1u % 32u);
    var var_2 = _wgslsmith_f_op_f32(135f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1771f)) * -317f));
    return 67917u;
}

fn func_1(arg_0: u32, arg_1: vec4<f32>) -> i32 {
    global4 = array<vec4<f32>, 27>();
    global2 = array<Struct_3, 3>();
    var var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 4294967295u) << (vec2<u32>(global3[_wgslsmith_index_u32(47733u, 13u)], arg_0) % vec2<u32>(32u)), ~vec2<u32>(arg_0, 0u)), reverseBits(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(1u, 13u)], arg_0)), abs(~arg_0), 4294967295u), vec4<u32>(max(global3[_wgslsmith_index_u32(~arg_0, 13u)], func_2(0u, vec4<i32>(0i, 1i, -2147483647i, -1582i))), _wgslsmith_dot_vec3_u32(max(vec3<u32>(arg_0, 0u, arg_0), vec3<u32>(global3[_wgslsmith_index_u32(arg_0, 13u)], 11204u, arg_0)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 24661u, global3[_wgslsmith_index_u32(u_input.a, 13u)]), vec3<u32>(u_input.b.x, 62349u, arg_0))), abs(global3[_wgslsmith_index_u32(~arg_0, 13u)]), _wgslsmith_sub_u32(1u, 1u))) & vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(~(~u_input.a), 13u)], 4294967295u, 86603u);
    let var_1 = true;
    global3 = array<u32, 13>();
    return -1i;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<i32>) -> Struct_1 {
    global2 = array<Struct_3, 3>();
    var var_0 = Struct_4(Struct_3(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -2357f), vec3<bool>(true, true, true)));
    global0 = array<bool, 29>();
    var var_1 = any(!(!var_0.a.c.yx));
    let var_2 = vec2<u32>(var_0.a.a.x, arg_0.x);
    return Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -526f), _wgslsmith_div_f32(-1276f, -143f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(997f)), var_0.a.b, true))))), vec2<u32>(38831u, 1u), var_0.a.c.zy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(reverseBits(~(~min(vec3<u32>(96394u, global3[_wgslsmith_index_u32(60034u, 13u)], 18081u), vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 13u)], 71243u, 0u)))), vec2<i32>(func_1(4294967295u, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -125f), _wgslsmith_div_f32(-1000f, -580f), 820f, _wgslsmith_f_op_f32(-339f * -1284f))), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(5728i, -25530i, 12577i, -1i), vec4<i32>(1i, 1i, 1i, 1i)), max(-26654i << (u_input.b.x % 32u), select(-2147483647i, -17252i, global1.x)))));
    global0 = array<bool, 29>();
    var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -492f)), var_0.a), _wgslsmith_mult_vec2_u32(vec2<u32>(~1u, reverseBits(~4294967295u)), _wgslsmith_mod_vec2_u32(~_wgslsmith_add_vec2_u32(u_input.b, u_input.b), ~u_input.b)), !var_0.c);
    let var_1 = var_0.a;
    global1 = vec2<bool>(any(select(!vec3<bool>(true, var_0.c.x, true), select(!vec3<bool>(global0[_wgslsmith_index_u32(var_0.b.x, 29u)], false, false), select(vec3<bool>(false, global1.x, global0[_wgslsmith_index_u32(36221u, 29u)]), vec3<bool>(false, true, true), vec3<bool>(global1.x, var_0.c.x, var_0.c.x)), !vec3<bool>(true, var_0.c.x, global0[_wgslsmith_index_u32(1u, 29u)])), true)), any(select(select(!var_0.c, func_4(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(33666u, 13u)], 13u)], 4294967295u, 4294967295u), vec2<i32>(1i, -1i)).c, var_0.c.x || false), var_0.c, select(true, all(vec4<bool>(true, false, global1.x, false)), false))));
    global4 = array<vec4<f32>, 27>();
    global0 = array<bool, 29>();
    let var_2 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~var_0.b.x), countOneBits(vec4<u32>(~var_0.b.x, 50088u | _wgslsmith_div_u32(var_0.b.x, global3[_wgslsmith_index_u32(var_0.b.x, 13u)]), 64768u, var_0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -720f), vec2<i32>(2147483647i, _wgslsmith_clamp_i32(i32(-1i) * -26265i, -6717i, ~9461i) ^ 0i));
}

