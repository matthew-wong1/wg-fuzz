struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: Struct_2,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_4,
    c: u32,
    d: Struct_2,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

var<private> global1: Struct_2 = Struct_2(0u, Struct_1(vec3<i32>(-1i, 32268i, -6872i), vec3<i32>(2147483647i, -11650i, -1i), vec2<u32>(36487u, 4294967295u), vec3<f32>(-486f, -318f, -517f), vec4<i32>(-1i, 63523i, 1i, 2147483647i)), 0u);

var<private> global2: array<bool, 30>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: u32) -> bool {
    global0 = select(select(vec3<bool>(global0.x, true, true), vec3<bool>(all(!vec3<bool>(false, global0.x, global0.x)), false, all(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 30u)], true, false))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~firstLeadingBit(global1.b.c), ~global1.b.c), 30u)]), !vec3<bool>(!(!global2[_wgslsmith_index_u32(49816u, 30u)]), global1.b.d.x == global1.b.d.x, true), vec3<bool>(any(select(select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, global0.x), false), global0.yx, !vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 30u)]))), all(vec2<bool>(true, true)), !global0.x));
    let var_0 = _wgslsmith_mod_i32(57806i, global1.b.a.x) < ~(-select(abs(global1.b.e.x), global1.b.e.x, !global2[_wgslsmith_index_u32(0u, 30u)]));
    global2 = array<bool, 30>();
    global1 = Struct_2(4294967295u, global1.b, _wgslsmith_mult_u32(~u_input.a, arg_0));
    global1 = Struct_2(u_input.a, global1.b, u_input.a);
    return var_0;
}

fn func_2(arg_0: vec4<f32>) -> Struct_2 {
    global0 = vec3<bool>(-99864i > -(i32(-1i) * -global1.b.a.x), global2[_wgslsmith_index_u32(0u, 30u)], func_3(~(~4294967295u)));
    var var_0 = min(vec4<i32>(_wgslsmith_add_i32(2147483647i, -2147483647i), reverseBits(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(global1.b.a, global1.b.e.yyw), vec3<i32>(global1.b.e.x, global1.b.e.x, -16414i) << (vec3<u32>(77393u, global1.c, global1.a) % vec3<u32>(32u)))), ~(-38500i), 1i), ~select(global1.b.e, min(global1.b.e, vec4<i32>(-1i, global1.b.b.x, global1.b.a.x, global1.b.e.x)), !(!vec4<bool>(global0.x, global0.x, global2[_wgslsmith_index_u32(global1.a, 30u)], global2[_wgslsmith_index_u32(84816u, 30u)]))));
    global0 = !select(!vec3<bool>(all(global0.xx), false && global0.x, global0.x), !select(!vec3<bool>(false, global2[_wgslsmith_index_u32(22980u, 30u)], false), select(vec3<bool>(false, global2[_wgslsmith_index_u32(0u, 30u)], global0.x), vec3<bool>(false, global2[_wgslsmith_index_u32(99355u, 30u)], global2[_wgslsmith_index_u32(25626u, 30u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(60471u, 30u)], global2[_wgslsmith_index_u32(global1.a, 30u)])), 4294967295u <= global1.b.c.x), global0.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(arg_0.yxw + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(arg_0.wzy)) + arg_0.wwx))), _wgslsmith_f_op_vec3_f32(round(global1.b.d)), !select(select(vec3<bool>(true, global2[_wgslsmith_index_u32(17751u, 30u)], global2[_wgslsmith_index_u32(33515u, 30u)]), vec3<bool>(global0.x, false, global2[_wgslsmith_index_u32(4294967295u, 30u)]), vec3<bool>(false, true, false)), !vec3<bool>(global2[_wgslsmith_index_u32(25528u, 30u)], global0.x, false), any(vec3<bool>(global0.x, global0.x, global2[_wgslsmith_index_u32(u_input.a, 30u)]))))));
    global1 = Struct_2(u_input.a, Struct_1(countOneBits(global1.b.a), reverseBits(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, global1.b.e.x, global1.b.e.x), global1.b.a), 1i, min(1i, global1.b.a.x))), ~select(vec2<u32>(4294967295u, 4294967295u), global1.b.c & vec2<u32>(global1.b.c.x, 1u), global0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_0.x, -171f), -1000f, _wgslsmith_f_op_f32(-1555f + 441f))), -vec4<i32>(var_0.x, -var_0.x, global1.b.e.x, global1.b.b.x)), 0u);
    return Struct_2(~29588u, global1.b, global1.a);
}

fn func_1() -> Struct_2 {
    let var_0 = func_2(vec4<f32>(-574f, _wgslsmith_div_f32(global1.b.d.x, 1191f), _wgslsmith_f_op_f32(-global1.b.d.x), global1.b.d.x));
    var var_1 = all(vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.b.c.x, 4294967295u, 34087u, global1.a) | vec4<u32>(4294967295u, 1u, var_0.c, var_0.c), vec4<u32>(u_input.a, 0u, global1.b.c.x, 48096u) & vec4<u32>(global1.c, var_0.c, u_input.a, var_0.c)), 30u)] && global0.x, !global0.x, any(select(vec4<bool>(global0.x, true, global2[_wgslsmith_index_u32(global1.a, 30u)], global2[_wgslsmith_index_u32(1u, 30u)]), !vec4<bool>(global2[_wgslsmith_index_u32(1u, 30u)], false, false, false), !vec4<bool>(global0.x, true, global2[_wgslsmith_index_u32(var_0.b.c.x, 30u)], global0.x)))));
    let var_2 = _wgslsmith_mult_vec4_i32(-(var_0.b.e & vec4<i32>(global1.b.e.x & var_0.b.e.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.a.x, 41237i, global1.b.b.x, var_0.b.e.x), vec4<i32>(global1.b.a.x, 2147483647i, var_0.b.b.x, var_0.b.e.x)), -18606i, _wgslsmith_dot_vec4_i32(var_0.b.e, vec4<i32>(global1.b.a.x, global1.b.a.x, -31226i, var_0.b.e.x)))), -(~_wgslsmith_clamp_vec4_i32(global1.b.e, var_0.b.e, var_0.b.e)));
    let var_3 = Struct_4(_wgslsmith_clamp_i32(-1i, _wgslsmith_mult_i32(abs(_wgslsmith_clamp_i32(var_2.x, 2147483647i, -691i)), global1.b.a.x), _wgslsmith_div_i32(_wgslsmith_add_i32(~var_2.x, i32(-1i) * -2147483647i), -16421i)), Struct_3(global1.b, select(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.d.x, var_0.b.d.x, global1.b.d.x, var_0.b.d.x))).b.e.xw, abs(global1.b.b.zy), !(!vec2<bool>(true, global2[_wgslsmith_index_u32(0u, 30u)]))), u_input.a <= (~u_input.a & abs(var_0.b.c.x)), Struct_2(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 8854u, global1.b.c.x), vec4<u32>(u_input.a, u_input.a, u_input.a, 35257u)), Struct_1(~global1.b.e.ywz, _wgslsmith_clamp_vec3_i32(vec3<i32>(global1.b.e.x, -1i, var_2.x), global1.b.a, vec3<i32>(-53241i, 1i, global1.b.e.x)), global1.b.c, _wgslsmith_f_op_vec3_f32(floor(global1.b.d)), abs(global1.b.e)), 1u), var_2.x), var_0);
    return Struct_2(global1.c, global1.b, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, u_input.a, global1.a, 16978u << (global1.a % 32u))), _wgslsmith_mult_vec4_u32(~vec4<u32>(69946u, global1.c, 0u, 19901u), countOneBits(firstTrailingBit(vec4<u32>(global1.c, 4294967295u, var_3.b.d.a, 1u))))));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec4<u32>, arg_3: i32) -> StorageBuffer {
    global1 = arg_0;
    global1 = Struct_2(0u, Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(global1.b.b.x, firstTrailingBit(-1i), func_2(vec4<f32>(arg_0.b.d.x, -1366f, -1055f, arg_0.b.d.x)).b.e.x), ~arg_0.b.a, vec3<i32>(func_1().b.a.x, func_1().b.b.x, -global1.b.e.x)), _wgslsmith_div_vec3_i32(select(vec3<i32>(arg_0.b.b.x, 1i, -1i), vec3<i32>(global1.b.a.x, -37688i, arg_0.b.e.x), vec3<bool>(global0.x, arg_1, arg_1)), -vec3<i32>(arg_0.b.a.x, 1i, global1.b.a.x)) ^ func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.d.x, global1.b.d.x, 707f, -200f) * vec4<f32>(global1.b.d.x, global1.b.d.x, global1.b.d.x, -564f))).b.a, ~firstTrailingBit(vec2<u32>(72112u, arg_2.x) << (global1.b.c % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.b.d.x, arg_0.b.d.x, 1000f))) + vec3<f32>(199f, _wgslsmith_f_op_f32(select(arg_0.b.d.x, arg_0.b.d.x, false)), _wgslsmith_f_op_f32(select(1942f, 1000f, true)))), func_1().b.e), ~_wgslsmith_dot_vec2_u32(countOneBits(firstTrailingBit(global1.b.c)), select(vec2<u32>(arg_0.b.c.x, 1u), vec2<u32>(arg_2.x, arg_2.x), !vec2<bool>(false, global0.x))));
    return StorageBuffer(~arg_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.b;
    let x = u_input.a;
    s_output = func_4(func_1(), global0.x, ~vec4<u32>(firstLeadingBit(global1.b.c.x), ~u_input.a, var_0.c.x, u_input.a) << ((select(min(vec4<u32>(var_0.c.x, var_0.c.x, 16651u, 1u), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)), vec4<u32>(1u, 0u, 9418u, 4294967295u), global0.x) ^ ((vec4<u32>(var_0.c.x, 4294967295u, 4294967295u, 1078u) & vec4<u32>(var_0.c.x, global1.b.c.x, 4294967295u, u_input.a)) ^ (vec4<u32>(var_0.c.x, 0u, var_0.c.x, 0u) ^ vec4<u32>(global1.a, var_0.c.x, global1.a, 0u)))) % vec4<u32>(32u)), -_wgslsmith_dot_vec2_i32(global1.b.a.yx | vec2<i32>(-51517i, var_0.a.x), vec2<i32>(-var_0.e.x, 2147483647i)));
}

