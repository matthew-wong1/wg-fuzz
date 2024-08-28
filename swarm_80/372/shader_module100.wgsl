struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec4<u32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<bool>,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<bool, 32>;

var<private> global2: Struct_5 = Struct_5(1331f, 9430u, vec3<f32>(200f, 1251f, -425f), vec2<f32>(-653f, -998f));

var<private> global3: array<vec4<u32>, 7> = array<vec4<u32>, 7>(vec4<u32>(4461u, 0u, 35078u, 1u), vec4<u32>(4232u, 4294967295u, 0u, 4294967295u), vec4<u32>(0u, 0u, 4531u, 14861u), vec4<u32>(4294967295u, 36729u, 28159u, 60136u), vec4<u32>(31255u, 14850u, 17948u, 0u), vec4<u32>(39963u, 4294967295u, 60529u, 62782u), vec4<u32>(1u, 1u, 47361u, 0u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> i32 {
    let var_0 = all(vec2<bool>(!select(325f != global0.c.c.x, any(vec2<bool>(false, false)), global1[_wgslsmith_index_u32(28117u, 32u)] | global1[_wgslsmith_index_u32(global2.b, 32u)]), true));
    let var_1 = global0.a;
    global2 = Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_mod_u32(~u_input.b.x, 1u), global2.c, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.c.x, global2.d.x) * global0.c.c.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(108f))))))));
    global1 = array<bool, 32>();
    return -15366i;
}

fn func_2() -> vec2<bool> {
    global0 = Struct_3(global0.a, -min(_wgslsmith_div_vec2_i32(u_input.c.xw, _wgslsmith_sub_vec2_i32(global0.b, vec2<i32>(u_input.a, u_input.c.x))), vec2<i32>(global0.c.e, -17161i) & vec2<i32>(-1i, 5105i)), global0.c);
    let var_0 = select(global2.b, 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.x - _wgslsmith_f_op_f32(937f * global0.c.c.x))) < -3145f);
    global1 = array<bool, 32>();
    let var_1 = Struct_1(vec4<u32>(_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(32458u, 7414u, 62444u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), ~vec3<u32>(21897u, 35993u, 18587u)), ~(~4294967295u), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(global0.a.a.xxw, vec3<u32>(var_0, 8755u, 56290u)), ~global0.c.b.x), var_0), global0.a.c, global0.a.b);
    global3 = array<vec4<u32>, 7>();
    return vec2<bool>(true, -22459i >= ~_wgslsmith_add_i32(func_3(), 1i));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<f32>) -> vec4<i32> {
    var var_0 = !(!func_2());
    let var_1 = arg_1.x;
    let var_2 = Struct_2(_wgslsmith_dot_vec2_i32(-_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, global0.a.b.x), vec2<i32>(-2147483647i, 0i)), abs(vec2<i32>(1i, ~0i))), global0.a.a, vec4<f32>(1351f, var_1, -717f, global2.a), reverseBits(~vec4<u32>(~arg_0.x, firstLeadingBit(0u), countOneBits(1u), u_input.b.x << (u_input.b.x % 32u))), 38899i);
    let var_3 = var_2.c.x;
    global3 = array<vec4<u32>, 7>();
    return _wgslsmith_add_vec4_i32(~vec4<i32>(global0.b.x, i32(-1i) * -global0.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-49833i, -1i) | u_input.c.wx, -global0.a.b.zw), u_input.a), vec4<i32>(0i, global0.b.x, ~u_input.a, _wgslsmith_dot_vec2_i32(min(-vec2<i32>(-1i, global0.a.c.x), countOneBits(vec2<i32>(-45190i, global0.b.x))), ~_wgslsmith_mod_vec2_i32(global0.a.b.xy, vec2<i32>(1i, 11162i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec4_i32(u_input.c, select(firstTrailingBit(_wgslsmith_mod_vec4_i32(~u_input.c, u_input.c)), vec4<i32>(45299i, _wgslsmith_dot_vec3_i32(-global0.a.b.xwx, global0.a.c.wxz & u_input.c.yxy), -(i32(-1i) * -17831i), _wgslsmith_mod_i32(i32(-1i) * -20091i, -8125i << (u_input.b.x % 32u))), true), firstLeadingBit(_wgslsmith_add_vec4_i32(~(-vec4<i32>(u_input.a, u_input.c.x, global0.a.b.x, u_input.a)), func_1(global0.c.d.ww, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.c.x, global0.c.c.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(~0i, -(~(abs(u_input.c.zw) << ((u_input.b.yx | global0.c.d.yw) % vec2<u32>(32u)))), global3[_wgslsmith_index_u32(~4294967295u, 7u)], global0.c.c.x, abs(~(~(global0.a.a.xy ^ vec2<u32>(global2.b, global2.b)))));
}

