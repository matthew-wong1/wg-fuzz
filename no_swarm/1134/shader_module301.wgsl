struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_1 = Struct_1(vec3<f32>(-753f, -1000f, 716f), 2147483647i, 1u);

var<private> global2: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(7084i, vec3<f32>(-106f, -120f, 495f), 1u, true), Struct_2(-1629i, vec3<f32>(845f, -159f, 512f), 10027u, false), Struct_2(63304i, vec3<f32>(1014f, 1834f, 801f), 4294967295u, false), Struct_2(1i, vec3<f32>(-1000f, -1068f, -1514f), 0u, true), Struct_2(0i, vec3<f32>(1269f, 293f, 844f), 4294967295u, false), Struct_2(i32(-2147483648), vec3<f32>(-569f, -761f, -1000f), 1u, true), Struct_2(2147483647i, vec3<f32>(-1425f, 432f, -403f), 71012u, true), Struct_2(6548i, vec3<f32>(-1000f, 1865f, -299f), 15478u, false), Struct_2(-42670i, vec3<f32>(1000f, -947f, 1576f), 36015u, false), Struct_2(i32(-2147483648), vec3<f32>(-1153f, 357f, -404f), 4294967295u, true), Struct_2(-9238i, vec3<f32>(-611f, 802f, 402f), 0u, false), Struct_2(-14923i, vec3<f32>(1924f, 146f, -498f), 4997u, true), Struct_2(-33982i, vec3<f32>(-1879f, 1388f, 1200f), 51318u, true), Struct_2(-7574i, vec3<f32>(1454f, -375f, 1128f), 4294967295u, true), Struct_2(17706i, vec3<f32>(932f, -543f, 567f), 4294967295u, true), Struct_2(55190i, vec3<f32>(1493f, 294f, -846f), 4294967295u, false));

var<private> global3: vec3<bool>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec3<i32>) -> vec2<bool> {
    return select(vec2<bool>(all(!select(global0.yxx, global0.wzw, vec3<bool>(true, global3.x, global3.x))), false), select(global0.xy, vec2<bool>(global0.x, global3.x), true), global3.xx);
}

fn func_2() -> Struct_1 {
    var var_0 = vec4<bool>(!any(vec3<bool>(global3.x, false, true)), !global3.x, all(!func_3(-2147483647i, Struct_1(vec3<f32>(global1.a.x, -228f, 2658f), u_input.b, 32413u), vec3<i32>(u_input.b, -12632i, -2147483647i))), !(!global0.x));
    global3 = var_0.zyw;
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1074f, -891f))), global1.a)), _wgslsmith_mod_i32(-1i, ~(-4536i << (u_input.c % 32u))), max(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(~7234u, global1.c, ~29437u), 1u), global1.c));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2370f, global1.a.x, 448f, global1.a.x) + vec4<f32>(-1000f, global1.a.x, 2464f, global1.a.x))))) + vec4<f32>(_wgslsmith_f_op_f32(round(-459f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.x, 553f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x * 650f) - _wgslsmith_f_op_f32(trunc(global1.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.a.x))), _wgslsmith_f_op_f32(abs(-969f))));
    global3 = select(vec3<bool>(false, global0.x, !global3.x), select(!(!var_0.xyx), global0.wzy, global0.x), !any(select(!vec3<bool>(true, false, var_0.x), select(vec3<bool>(true, true, false), vec3<bool>(false, true, global0.x), global0.x), !global0.wzy)));
    return Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global1.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, -1783f)), true))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.a.x, -1000f, var_1.x))), var_1.xxw)), 2147483647i | ~global1.b, _wgslsmith_dot_vec4_u32(countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(34404u, 1u, 17474u, 6515u), abs(vec4<u32>(u_input.d, global1.c, u_input.d, global1.c)))), _wgslsmith_add_vec4_u32(min(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 47330u, global1.c, 21770u), vec4<u32>(u_input.c, 4294967295u, global1.c, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(global1.c, 22968u, 27504u, u_input.d), vec4<u32>(74218u, global1.c, 1u, u_input.c))), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, global1.c, global1.c, u_input.d), vec4<u32>(51831u, u_input.d, 4294967295u, 9306u)), reverseBits(vec4<u32>(global1.c, 1u, 49390u, u_input.d))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_2) -> f32 {
    let var_0 = arg_0.a.xx;
    var var_1 = abs(u_input.a);
    global3 = vec3<bool>(false, true, false);
    let var_2 = max(vec3<i32>(u_input.b | func_2().b, -2147483647i, reverseBits(_wgslsmith_add_i32(38644i, ~(-11657i)))), -(~(~(vec3<i32>(u_input.b, 1i, arg_2.a) ^ vec3<i32>(48711i, -1i, 19923i)))));
    var var_3 = global2[_wgslsmith_index_u32(global1.c, 16u)];
    return 189f;
}

fn func_1(arg_0: vec4<i32>, arg_1: f32) -> u32 {
    global1 = Struct_1(global1.a, arg_0.x, ~global1.c);
    let var_0 = _wgslsmith_f_op_f32(func_4(func_2(), vec2<bool>(false, any(vec3<bool>(true, true, false))), global2[_wgslsmith_index_u32(500u, 16u)]));
    let var_1 = arg_1;
    var var_2 = var_1;
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.x - 1450f), var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0)))) * global1.a), ~arg_0.x, ~(~(~18153u)));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(func_1(vec4<i32>(min((0i >> (global1.c % 32u)) | min(global1.b, global1.b), global1.b), global1.b, _wgslsmith_clamp_i32(_wgslsmith_add_i32(-u_input.b, u_input.a.x ^ u_input.a.x), -1i, ~(global1.b & 0i)), u_input.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1005f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.a.x * 431f), 369f)))))), 16u)];
    var var_1 = -466f;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - -592f)), 1f)) + 308f);
    let var_3 = !(!(!global0.wz));
    var var_4 = func_2();
    var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.b), _wgslsmith_sub_i32(38065i, 1i), 40886u);
    var var_5 = func_2();
    var_5 = Struct_1(vec3<f32>(-129f, -121f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-217f * _wgslsmith_f_op_f32(ceil(global1.a.x)))))), var_4.b ^ 2147483647i, min(47998u, ~15435u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.a.x, firstLeadingBit(global1.b), _wgslsmith_add_i32(0i, -2147483647i)), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(global1.b, 40606i, -2147483647i), ~select(vec3<i32>(u_input.a.x, 85535i, -2147483647i), vec3<i32>(-6390i, -1i, var_4.b), global0.ywx))), 2147483647i);
}

