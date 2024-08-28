struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_5 {
    a: vec2<bool>,
    b: u32,
    c: Struct_4,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), 0i, 1i);

var<private> global1: array<u32, 25>;

var<private> global2: array<vec4<i32>, 2> = array<vec4<i32>, 2>(vec4<i32>(-14422i, -29648i, -31966i, 0i), vec4<i32>(-20218i, 0i, 2147483647i, -27829i));

var<private> global3: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(vec4<u32>(13554u, 85016u, 32294u, 4294967295u), vec3<bool>(false, false, false), i32(-2147483648)), Struct_3(vec4<u32>(1u, 50189u, 4294967295u, 0u), vec3<bool>(false, true, false), 0i), Struct_3(vec4<u32>(0u, 1u, 1u, 1u), vec3<bool>(false, false, false), -30299i), Struct_3(vec4<u32>(4294967295u, 69190u, 0u, 101222u), vec3<bool>(false, true, true), 40927i), Struct_3(vec4<u32>(1u, 63547u, 1u, 0u), vec3<bool>(true, false, false), -10101i), Struct_3(vec4<u32>(0u, 4294967295u, 0u, 4294967295u), vec3<bool>(false, true, false), -30752i), Struct_3(vec4<u32>(4294967295u, 0u, 0u, 0u), vec3<bool>(true, false, true), 9022i), Struct_3(vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u), vec3<bool>(false, false, false), 19033i), Struct_3(vec4<u32>(0u, 4294967295u, 1u, 62712u), vec3<bool>(true, false, false), 0i), Struct_3(vec4<u32>(0u, 34715u, 0u, 56393u), vec3<bool>(true, false, false), i32(-2147483648)), Struct_3(vec4<u32>(22570u, 32358u, 1418u, 1u), vec3<bool>(true, false, true), 79096i));

var<private> global4: i32 = -1i;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_5) -> i32 {
    var var_0 = arg_2.c;
    let var_1 = arg_1.b;
    let var_2 = Struct_4(arg_2.c.a, var_0.a.a);
    global1 = array<u32, 25>();
    var_0 = arg_2.c;
    return 0i;
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: Struct_3) -> Struct_5 {
    var var_0 = firstTrailingBit(u_input.b | vec2<i32>(func_3(arg_2, arg_2, Struct_5(arg_2.b.zy, 0u, Struct_4(Struct_2(Struct_1(arg_2.b.xy, arg_1, arg_2.a.x, vec3<u32>(u_input.a, arg_2.a.x, 1484u), -64692i), vec4<u32>(1u, 89127u, arg_2.a.x, u_input.a), Struct_1(arg_2.b.xx, 518f, 1u, arg_2.a.zwy, arg_0), Struct_1(vec2<bool>(true, arg_2.b.x), -783f, global1[_wgslsmith_index_u32(arg_2.a.x, 25u)], arg_2.a.yyw, arg_2.c), Struct_1(arg_2.b.yy, -619f, 1u, vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 25u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 25u)], 25u)], 25u)], u_input.a), u_input.c.x)), Struct_1(vec2<bool>(arg_2.b.x, true), -2156f, arg_2.a.x, vec3<u32>(global1[_wgslsmith_index_u32(0u, 25u)], 2553u, 4294967295u), 2147483647i)), false)), arg_0 & 0i));
    let var_1 = false;
    global1 = array<u32, 25>();
    var var_2 = ~(-select(-abs(var_0.x), arg_0, true));
    global2 = array<vec4<i32>, 2>();
    return Struct_5(select(vec2<bool>(!any(vec3<bool>(var_1, arg_2.b.x, var_1)), any(select(arg_2.b, vec3<bool>(true, var_1, arg_2.b.x), arg_2.b))), !select(arg_2.b.zy, vec2<bool>(arg_2.b.x, var_1), true), select(vec2<bool>(any(vec4<bool>(var_1, true, arg_2.b.x, true)), arg_2.b.x), arg_2.b.zy, select(vec2<bool>(var_1, true), select(arg_2.b.zy, arg_2.b.xy, vec2<bool>(false, true)), vec2<bool>(var_1, false)))), 0u & arg_2.a.x, Struct_4(Struct_2(Struct_1(!vec2<bool>(arg_2.b.x, arg_2.b.x), arg_1, ~46864u, arg_2.a.wyz, _wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(17528u, 2u)], vec4<i32>(20010i, -20336i, -36843i, var_0.x))), abs(~arg_2.a), Struct_1(arg_2.b.zz, 1188f, u_input.a, arg_2.a.zww, -1i), Struct_1(select(vec2<bool>(var_1, var_1), vec2<bool>(true, true), arg_2.b.zz), _wgslsmith_f_op_f32(step(-980f, -1482f)), _wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(arg_2.a.x, 25u)], u_input.a, 33578u, 0u), arg_2.a), ~arg_2.a.yxx, u_input.c.x), Struct_1(!arg_2.b.yy, arg_1, _wgslsmith_sub_u32(4294967295u, u_input.a), _wgslsmith_mod_vec3_u32(arg_2.a.yzy, vec3<u32>(5050u, 8748u, 61074u)), arg_2.c)), Struct_1(arg_2.b.xx, -764f, 0u, arg_2.a.wxy, 1i)), all(arg_2.b));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec3<u32>) -> u32 {
    global2 = array<vec4<i32>, 2>();
    var var_0 = 38427u;
    let var_1 = func_2(_wgslsmith_dot_vec4_i32(u_input.c, _wgslsmith_mod_vec4_i32(u_input.c, ~vec4<i32>(global0.x, arg_1.x, 0i, 0i))), 1002f, global3[_wgslsmith_index_u32(6649u, 11u)]);
    global3 = array<Struct_3, 11>();
    var var_2 = func_2(-2147483647i << (firstLeadingBit(func_2(u_input.c.x, -1632f, Struct_3(var_1.c.a.b, vec3<bool>(var_1.a.x, arg_0.x, var_1.a.x), -712i)).b) % 32u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_1.c.b.b)), -121f) - _wgslsmith_f_op_f32(-var_1.c.b.b)), Struct_3(~((var_1.c.a.b | vec4<u32>(arg_3.x, arg_2.d.x, arg_3.x, arg_3.x)) & vec4<u32>(4294967295u, 4294967295u, var_1.b, 35096u)), vec3<bool>(any(select(vec3<bool>(false, true, arg_0.x), vec3<bool>(var_1.c.b.a.x, arg_0.x, arg_0.x), true)), arg_0.x, true), reverseBits(global0.x)));
    return ~(~_wgslsmith_clamp_u32(var_1.b, countOneBits(4294967295u), var_1.b << (var_2.b % 32u)));
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_4) -> u32 {
    let var_0 = arg_0;
    var var_1 = vec2<i32>(global0.x, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-u_input.c.x, 0i), _wgslsmith_sub_vec2_i32(u_input.c.ww | global0.xz, vec2<i32>(arg_0, global0.x) << (vec2<u32>(0u, global1[_wgslsmith_index_u32(72366u, 25u)]) % vec2<u32>(32u)))), ~(-global0.yz)));
    var var_2 = arg_2.a.d.a;
    let var_3 = vec4<bool>(false, false, var_1.x < func_3(Struct_3(arg_2.a.b, !vec3<bool>(arg_2.b.a.x, var_2.x, arg_2.b.a.x), var_0 ^ u_input.c.x), Struct_3(~arg_2.a.b, !vec3<bool>(true, var_2.x, false), ~(-2147483647i)), Struct_5(vec2<bool>(true, true), ~u_input.a, Struct_4(Struct_2(Struct_1(vec2<bool>(arg_2.b.a.x, var_2.x), arg_2.a.e.b, arg_1, vec3<u32>(27113u, 9021u, 41678u), u_input.c.x), arg_2.a.b, arg_2.b, arg_2.a.c, arg_2.a.c), arg_2.a.c), !var_2.x)), false);
    var var_4 = arg_2.a.b;
    return var_4.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), true)), -780f, u_input.a, vec3<u32>(~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a, 67867u)), ~vec2<u32>(14724u, 0u)), _wgslsmith_clamp_u32(~abs(59892u), ~1u, _wgslsmith_div_u32(global1[_wgslsmith_index_u32(4294967295u, 25u)], min(global1[_wgslsmith_index_u32(u_input.a, 25u)], u_input.a))), ~(~25560u)), _wgslsmith_dot_vec4_i32(firstTrailingBit(u_input.c), vec4<i32>(-53918i, global0.x, min(~global0.x, _wgslsmith_sub_i32(u_input.b.x, -2684i)), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, -8630i, global0.x, global0.x), vec4<i32>(52463i, u_input.c.x, global0.x, global0.x) ^ u_input.c))));
    global1 = array<u32, 25>();
    var var_1 = true;
    var var_2 = vec3<u32>(func_4(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.c.x, 5735i), u_input.c.x, _wgslsmith_mod_i32(-1i, -26618i)), -63813i), ~(global1[_wgslsmith_index_u32(func_1(var_0.a, u_input.c.xwz, Struct_1(var_0.a, 796f, 79281u, var_0.d, -20108i), vec3<u32>(0u, var_0.c, u_input.a)), 25u)] ^ ~83723u), Struct_4(func_2(u_input.c.x, 2059f, Struct_3(vec4<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.c, 25u)], 25u)], global1[_wgslsmith_index_u32(u_input.a, 25u)], u_input.a), vec3<bool>(var_0.a.x, var_0.a.x, false), global0.x)).c.a, Struct_1(var_0.a, _wgslsmith_f_op_f32(sign(1429f)), var_0.c, vec3<u32>(u_input.a, 9646u, u_input.a), global0.x))), func_1(var_0.a, u_input.c.wzw, Struct_1(!var_0.a, -203f, countOneBits(~49637u), _wgslsmith_sub_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(var_0.c, 25u)], 50621u, 126u), var_0.d), ~var_0.e), var_0.d), global1[_wgslsmith_index_u32(~func_2(0i, _wgslsmith_f_op_f32(sign(var_0.b)), Struct_3(func_2(18586i, var_0.b, Struct_3(vec4<u32>(global1[_wgslsmith_index_u32(18553u, 25u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(59895u, 25u)], 25u)], u_input.a, 5106u), vec3<bool>(true, var_0.a.x, true), u_input.c.x)).c.a.b, select(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<bool>(true, false, var_0.a.x), vec3<bool>(false, false, var_0.a.x)), _wgslsmith_mod_i32(u_input.b.x, 34567i))).c.a.a.c, 25u)]);
    var var_3 = var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_mult_u32(0u & ~u_input.a, ~func_4(2147483647i, 60005u, Struct_4(Struct_2(Struct_1(vec2<bool>(var_0.a.x, false), -667f, 0u, vec3<u32>(var_0.d.x, var_0.c, 51346u), 2147483647i), vec4<u32>(93563u, 17953u, u_input.a, u_input.a), Struct_1(vec2<bool>(false, var_0.a.x), var_0.b, 11306u, vec3<u32>(4294967295u, var_2.x, 16889u), var_0.e), Struct_1(vec2<bool>(false, false), -707f, global1[_wgslsmith_index_u32(u_input.a, 25u)], vec3<u32>(var_0.d.x, 27098u, var_0.c), -1i), Struct_1(var_0.a, 1000f, global1[_wgslsmith_index_u32(var_2.x, 25u)], vec3<u32>(23270u, 34974u, var_0.c), u_input.b.x)), Struct_1(vec2<bool>(false, var_0.a.x), var_0.b, global1[_wgslsmith_index_u32(59032u, 25u)], var_0.d, var_0.e)))), _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a & 53382u, firstTrailingBit(6547u)), _wgslsmith_sub_u32(_wgslsmith_div_u32(var_0.d.x, var_2.x), min(1u, 0u)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(step(-434f, -716f)), _wgslsmith_f_op_f32(select(var_0.b, 1000f, false)), var_0.b))))), countOneBits(u_input.a), reverseBits(var_2.x));
}

