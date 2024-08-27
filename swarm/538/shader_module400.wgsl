struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: u32,
    d: vec4<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 9> = array<vec3<u32>, 9>(vec3<u32>(49213u, 4294967295u, 19287u), vec3<u32>(36074u, 0u, 4837u), vec3<u32>(42291u, 1u, 4179u), vec3<u32>(52643u, 43611u, 5329u), vec3<u32>(0u, 0u, 30272u), vec3<u32>(76027u, 4294967295u, 4294967295u), vec3<u32>(13663u, 6428u, 45503u), vec3<u32>(112093u, 1u, 74666u), vec3<u32>(72433u, 4294967295u, 33558u));

var<private> global1: array<f32, 26> = array<f32, 26>(-1283f, 930f, -167f, 1174f, -1408f, -456f, 876f, -113f, 2700f, 330f, -115f, -832f, 551f, 949f, 368f, 693f, -645f, 1701f, -2793f, 1030f, -633f, -1836f, -424f, -223f, 394f, 952f);

var<private> global2: vec2<f32>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec3<bool>) -> vec2<f32> {
    var var_0 = -1i;
    var var_1 = (~_wgslsmith_add_i32(-1i, -1i) | -_wgslsmith_div_i32(i32(-1i) * -10465i, select(-1i, -1i, arg_0.x))) ^ abs(max(~4430i, -3050i) >> (u_input.a.x % 32u));
    let var_2 = !arg_0;
    var var_3 = Struct_4(global2.x, true, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global1[_wgslsmith_index_u32(45079u, 26u)], global2.x, global1[_wgslsmith_index_u32(u_input.a.x, 26u)])))), var_2, _wgslsmith_div_u32(min(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), u_input.a.x), u_input.a.x), !(!vec4<bool>(false, arg_0.x, true, true)), firstTrailingBit(19349i)), select(select(arg_0.yy, vec2<bool>(false, true), arg_0.xx), var_2.xz, arg_0.yy));
    let var_4 = var_3.c;
    return vec2<f32>(global2.x, -1122f);
}

fn func_2(arg_0: f32) -> bool {
    var var_0 = _wgslsmith_div_vec2_u32(~firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), u_input.a.xy)), u_input.a.xx & ~u_input.a.yz);
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(arg_0, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(0u, 26u)], arg_0), true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-666f, -672f))), _wgslsmith_f_op_vec2_f32(func_3(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), true)))));
    let var_1 = select(~select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 83357u, u_input.a.x, 5294u), firstTrailingBit(vec4<u32>(u_input.a.x, 1u, var_0.x, 4294967295u))), 9u)], _wgslsmith_sub_vec3_u32(vec3<u32>(39751u, 20555u, 1u), global0[_wgslsmith_index_u32(u_input.a.x << (1u % 32u), 9u)]), vec3<bool>(true, false, true)), ~firstTrailingBit(vec3<u32>(~1u, var_0.x & u_input.a.x, 4294967295u ^ var_0.x)), !(all(vec4<bool>(true, true, true, true)) && (u_input.a.x <= 0u)));
    var var_2 = ~(~firstTrailingBit(firstTrailingBit(var_0.x << (32565u % 32u))));
    let var_3 = Struct_3(1620i);
    return ~_wgslsmith_dot_vec3_i32(vec3<i32>(1i & var_3.a, i32(-1i) * -2147483647i, var_3.a ^ 0i), _wgslsmith_mod_vec3_i32(~vec3<i32>(0i, var_3.a, 20158i), vec3<i32>(-1i, var_3.a, var_3.a))) > 22823i;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<bool>) -> bool {
    var var_0 = _wgslsmith_div_vec3_i32(~vec3<i32>(-1i, 1i, _wgslsmith_div_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(-1i, -2147483647i)))), vec3<i32>(~0i, reverseBits(11645i >> (0u % 32u)), ~_wgslsmith_add_i32(1i >> (u_input.a.x % 32u), _wgslsmith_sub_i32(0i, 1i))));
    var var_1 = Struct_2(vec4<bool>(any(arg_1.yx), true, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * global2.x))), any(!arg_1.xz)));
    let var_2 = select(!(!vec2<bool>(true || arg_0.x, arg_1.x && var_1.a.x)), !var_1.a.wy, select(select(vec2<bool>(arg_1.x && false, global2.x <= global1[_wgslsmith_index_u32(35043u, 26u)]), select(!vec2<bool>(arg_1.x, arg_1.x), arg_1.yx, vec2<bool>(arg_1.x, true)), select(vec2<bool>(arg_0.x, false), vec2<bool>(true, true), !vec2<bool>(var_1.a.x, true))), vec2<bool>(true, true), arg_0.yz));
    var var_3 = vec2<i32>(0i, _wgslsmith_div_i32(max(16955i, 31519i), ~(-70757i)));
    global0 = array<vec3<u32>, 9>();
    return var_1.a.x;
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: bool, arg_3: vec3<bool>) -> Struct_5 {
    global1 = array<f32, 26>();
    let var_0 = Struct_4(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(max(1u, u_input.a.x) << (_wgslsmith_add_u32(u_input.a.x, 1u) % 32u), 26u)] * 417f), (any(arg_0.a) || (-7411i >= (-6032i << (u_input.a.x % 32u)))) & any(arg_3), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1347f, 664f, global2.x, global2.x)))), select(select(!vec3<bool>(arg_0.a.x, arg_0.a.x, false), arg_0.a.xwy, select(vec3<bool>(true, false, arg_0.a.x), vec3<bool>(true, arg_0.a.x, arg_0.a.x), vec3<bool>(false, arg_3.x, arg_0.a.x))), select(!arg_3, vec3<bool>(true, false, arg_0.a.x), true), false), min(u_input.a.x, u_input.a.x), select(vec4<bool>(!arg_0.a.x, arg_1 < global1[_wgslsmith_index_u32(10454u, 26u)], arg_3.x, arg_3.x), !(!vec4<bool>(arg_0.a.x, false, true, true)), arg_0.a), -max(1i, -2147483647i)), select(select(vec2<bool>(true, true), vec2<bool>(all(arg_0.a), arg_2), select(select(arg_3.xz, vec2<bool>(true, arg_3.x), arg_0.a.x), vec2<bool>(false, arg_0.a.x), select(vec2<bool>(false, arg_2), vec2<bool>(arg_2, arg_2), arg_0.a.yx))), !select(!vec2<bool>(arg_2, false), !vec2<bool>(arg_2, true), arg_3.yy), any(vec3<bool>(true, arg_3.x, true)) | ((false & arg_2) & arg_3.x)));
    var var_1 = _wgslsmith_f_op_f32(max(1310f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-362f + global1[_wgslsmith_index_u32(1u, 26u)])))));
    var_1 = _wgslsmith_f_op_f32(max(-844f, _wgslsmith_f_op_f32(max(932f, 1063f))));
    var var_2 = Struct_1(var_0.c.a, !select(arg_0.a.yyw, select(vec3<bool>(true, var_0.b, true), arg_0.a.zwz, select(arg_0.a.ywz, vec3<bool>(true, var_0.b, true), var_0.c.d.zwy)), !arg_3), ~5757u, vec4<bool>(false, func_1(select(vec3<bool>(false, false, arg_2), vec3<bool>(true, var_0.d.x, arg_3.x), true), !vec3<bool>(true, arg_3.x, true)), !arg_3.x, !(arg_3.x || all(var_0.c.d.zz))), abs(~(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.e, var_0.c.e, var_0.c.e, 2147483647i), vec4<i32>(42888i, var_0.c.e, 3950i, 0i)))));
    return Struct_5(arg_0, vec2<bool>(!arg_0.a.x, arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(~u_input.a.zz);
    global0 = array<vec3<u32>, 9>();
    let var_1 = func_4(Struct_2(vec4<bool>(true, true, select(true, all(vec3<bool>(true, false, true)), true), all(vec3<bool>(true, true, true)))), 2254f, false, vec3<bool>(false, !func_1(vec3<bool>(true, true, true), vec3<bool>(true, false, false)), !(_wgslsmith_f_op_f32(1421f - global2.x) != -690f)));
    let var_2 = Struct_3(1i);
    let var_3 = _wgslsmith_div_f32(global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(firstTrailingBit(u_input.a.x), 72708u & var_0.x, 36723u) | 60829u, 26u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1035f)))), global2.x, !all(select(vec4<bool>(true, var_1.b.x, var_1.a.a.x, false), vec4<bool>(var_1.a.a.x, false, false, true), var_1.a.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(vec2<i32>(-var_2.a, _wgslsmith_div_i32(-25769i, -36464i)) << (min(u_input.a.xx, min(vec2<u32>(u_input.a.x, 101201u), u_input.a.yz)) % vec2<u32>(32u)), abs(~vec2<i32>(-1i, -2147483647i))), _wgslsmith_clamp_vec4_u32(countOneBits(select(min(vec4<u32>(4294967295u, var_0.x, 55697u, u_input.a.x), vec4<u32>(77213u, 4294967295u, 1u, 46830u)), countOneBits(vec4<u32>(u_input.a.x, 1u, 11013u, 17974u)), var_1.a.a)), _wgslsmith_mult_vec4_u32(~(vec4<u32>(var_0.x, 19812u, 3279u, u_input.a.x) ^ vec4<u32>(1u, var_0.x, 4294967295u, var_0.x)), min(select(vec4<u32>(var_0.x, 8872u, var_0.x, 58427u), vec4<u32>(var_0.x, var_0.x, var_0.x, 0u), vec4<bool>(var_1.b.x, var_1.a.a.x, var_1.b.x, var_1.a.a.x)), ~vec4<u32>(40714u, 0u, u_input.a.x, 7952u))), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, u_input.a.x, var_0.x, u_input.a.x) ^ vec4<u32>(var_0.x, u_input.a.x, u_input.a.x, var_0.x), vec4<u32>(u_input.a.x, 734u, 0u, 34513u) | vec4<u32>(35525u, u_input.a.x, u_input.a.x, u_input.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-125f)) - -1000f));
}

