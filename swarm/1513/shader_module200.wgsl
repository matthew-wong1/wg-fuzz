struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 3>;

var<private> global1: f32;

var<private> global2: Struct_2 = Struct_2(false, false, Struct_1(false, true, vec3<bool>(true, false, true)), Struct_1(false, false, vec3<bool>(false, false, true)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> i32 {
    global1 = 760f;
    let var_0 = max(countOneBits(u_input.a), -1049i | min(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.a, 292i) << (vec3<u32>(776u, 1u, 1u) % vec3<u32>(32u)), vec3<i32>(-17817i, u_input.a, u_input.a) | vec3<i32>(-4981i, 1i, u_input.a))));
    global0 = array<Struct_3, 3>();
    return ~(~u_input.a);
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_3, 3>();
    let var_0 = Struct_3(true || global2.a, Struct_2(global2.a, true, global2.d, global2.c), func_3());
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(957f, -243f) + _wgslsmith_f_op_f32(trunc(164f)))))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-269f, _wgslsmith_f_op_f32(trunc(1942f))))))));
    global2 = Struct_2(all(!vec4<bool>(true, global2.b, !var_0.a, !var_0.a)), !(!all(select(vec2<bool>(false, var_0.b.d.a), global2.d.c.zy, var_0.b.d.c.zx))), var_0.b.c, Struct_1(true, var_0.a, var_0.b.d.c));
    let var_1 = false;
    return var_0.b.c;
}

fn func_1() -> vec3<u32> {
    var var_0 = 1u;
    var var_1 = global2.c;
    let var_2 = Struct_2(true, !(reverseBits(reverseBits(u_input.a)) <= min(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -1i, 44963i), vec3<i32>(42777i, 14615i, u_input.a)))), func_2(), func_2());
    return _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(firstTrailingBit(1u), 16488u, 3294u), vec3<u32>(1u, 1u, 1u)), ~(~vec3<u32>(1u, _wgslsmith_add_u32(0u, 22110u), 1u)));
}

fn func_4(arg_0: vec3<u32>) -> Struct_3 {
    var var_0 = _wgslsmith_add_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(i32(-1i) * -1i, ~(-2147483647i), u_input.a, func_3()), vec4<i32>(firstLeadingBit(5932i), ~u_input.a, ~u_input.a, u_input.a)), -(~min(vec4<i32>(-77559i, 1i, -2147483647i, u_input.a), abs(vec4<i32>(1i, -56971i, 22765i, u_input.a)))));
    var_0 = -select(vec4<i32>(25971i, var_0.x, var_0.x, _wgslsmith_dot_vec2_i32(var_0.xw, _wgslsmith_div_vec2_i32(vec2<i32>(-17956i, u_input.a), vec2<i32>(u_input.a, -30650i)))), select(reverseBits(-vec4<i32>(var_0.x, 46049i, 2147483647i, 13360i)), vec4<i32>(_wgslsmith_mult_i32(var_0.x, 43399i), 0i, u_input.a, var_0.x), vec4<bool>(any(vec4<bool>(false, false, false, global2.c.b)), true, all(vec4<bool>(false, global2.a, false, false)), global2.d.a | global2.d.c.x)), firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 47862i, u_input.a, 1i), vec4<i32>(60653i, -8250i, -17896i, 4755i))) < 19319i);
    let var_1 = !global2.d.c;
    let var_2 = 89914u;
    var_0 = _wgslsmith_mod_vec4_i32(-reverseBits(vec4<i32>(~u_input.a, -28638i, 1i, var_0.x)), abs(vec4<i32>(2147483647i, u_input.a, 22364i, u_input.a) ^ -vec4<i32>(var_0.x, -83055i, var_0.x, -1i)) & vec4<i32>(var_0.x, u_input.a, _wgslsmith_div_i32(max(var_0.x, u_input.a), _wgslsmith_mult_i32(u_input.a, -2147483647i)), 0i));
    return Struct_3(true, Struct_2(global2.d.a, var_1.x, Struct_1(!global2.c.c.x, !select(global2.d.b, global2.d.a, true), var_1), Struct_1(all(!var_1), var_1.x, vec3<bool>(all(vec4<bool>(global2.a, var_1.x, global2.a, true)), true, !global2.b))), var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 3>();
    let var_0 = func_4(func_1());
    global0 = array<Struct_3, 3>();
    let var_1 = countOneBits(min(-vec3<i32>(_wgslsmith_mult_i32(-25388i, -1i), 1i, ~var_0.c), ~vec3<i32>(_wgslsmith_add_i32(u_input.a, 0i), reverseBits(1i), select(23397i, u_input.a, var_0.b.a))));
    global0 = array<Struct_3, 3>();
    var var_2 = all(func_2().c);
    var var_3 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-2630f, -746f), _wgslsmith_f_op_f32(f32(-1f) * -1639f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2200f)))), 1f, _wgslsmith_f_op_f32(-662f * -627f))));
    let var_4 = any(global2.c.c.xz) && (any(!select(vec4<bool>(var_0.a, var_0.a, global2.a, global2.c.b), vec4<bool>(global2.d.b, false, global2.c.a, false), vec4<bool>(true, false, false, true))) && select((i32(-1i) * -14923i) >= func_3(), false, any(!vec2<bool>(var_0.a, global2.a))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c, vec4<u32>(~(~firstTrailingBit(10561u)), 1u, _wgslsmith_div_u32(6427u, reverseBits(4294967295u)), _wgslsmith_mult_u32(reverseBits(0u) >> (_wgslsmith_clamp_u32(23797u, 66635u, 43004u) % 32u), _wgslsmith_mod_u32(max(44803u, 1818u), 1u))), (_wgslsmith_add_vec2_i32(var_1.yx, max(var_1.xy, var_1.yz)) << (min(_wgslsmith_add_vec2_u32(vec2<u32>(24661u, 32839u), vec2<u32>(1u, 0u)), vec2<u32>(2241u, 1u)) % vec2<u32>(32u))) & vec2<i32>(_wgslsmith_div_i32(var_1.x, u_input.a), var_1.x), _wgslsmith_sub_u32(select(~1u, 1u, true), ~1u), -295f);
}

