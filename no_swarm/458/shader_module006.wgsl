struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec2<bool>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9> = array<u32, 9>(23349u, 4294967295u, 4294967295u, 29431u, 27490u, 0u, 18843u, 4294967295u, 0u);

var<private> global1: array<Struct_5, 17> = array<Struct_5, 17>(Struct_5(true, 18854u), Struct_5(true, 4294967295u), Struct_5(false, 16572u), Struct_5(false, 42555u), Struct_5(true, 3804u), Struct_5(false, 72328u), Struct_5(false, 5030u), Struct_5(true, 31102u), Struct_5(false, 0u), Struct_5(true, 16787u), Struct_5(false, 1u), Struct_5(true, 0u), Struct_5(false, 18115u), Struct_5(false, 4294967295u), Struct_5(false, 57623u), Struct_5(false, 57828u), Struct_5(false, 0u));

var<private> global2: u32;

var<private> global3: Struct_4;

var<private> global4: array<vec2<u32>, 7>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> f32 {
    let var_0 = ~abs(vec4<u32>(~countOneBits(4294967295u), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global3.a.x, 0u), 9u)], ~global3.a.x), _wgslsmith_mult_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(73073u, 9u)], 54653u), countOneBits(1u)), 4294967295u >> (global3.a.x % 32u)));
    global1 = array<Struct_5, 17>();
    var var_1 = true;
    var var_2 = vec4<bool>(true, any(vec4<bool>(true, true, true, true)), true, true);
    let var_3 = global3.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -632f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-657f)))))));
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_add_u32(global0[_wgslsmith_index_u32(~(~(~arg_0.d.x)), 9u)] >> (~(_wgslsmith_mod_u32(80611u, 33634u) ^ abs(arg_0.d.x)) % 32u), 156633u);
    let var_1 = arg_0.d;
    let var_2 = Struct_2(arg_0.a, vec4<bool>(!(!arg_0.b), arg_0.c.x, arg_0.b, !(!any(arg_0.c))), arg_0, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1060f, -219f))) + _wgslsmith_f_op_f32(func_3())) - 1355f));
    let var_3 = true;
    global3 = Struct_4(arg_0.d);
    return ~(~abs(1u) ^ var_2.d.d.x);
}

fn func_1(arg_0: vec4<u32>, arg_1: bool) -> i32 {
    global3 = Struct_4(vec2<u32>(arg_0.x, ~(~4294967295u)));
    let var_0 = arg_1;
    let var_1 = 0u;
    global0 = array<u32, 9>();
    global4 = array<vec2<u32>, 7>();
    return _wgslsmith_clamp_i32(-(u_input.a ^ -1i) << ((func_2(Struct_1(vec3<i32>(u_input.a, -39421i, -18581i), arg_1, vec2<bool>(var_0, true), vec2<u32>(global3.a.x, 13914u))) << (~(~21889u) % 32u)) % 32u), _wgslsmith_sub_i32(_wgslsmith_add_i32(~u_input.a >> (0u % 32u), ~(-1i) << ((var_1 << (27895u % 32u)) % 32u)), -u_input.a), -7060i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(all(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))), all(vec3<bool>(false, false, true)) && select(false, false, true));
    global4 = array<vec2<u32>, 7>();
    var_0 = vec2<bool>(true, true);
    let var_1 = _wgslsmith_mod_vec3_i32(select(~_wgslsmith_mod_vec3_i32(~vec3<i32>(-15121i, 5727i, u_input.a), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, -1i), vec3<i32>(u_input.a, u_input.a, 0i))), vec3<i32>(func_1(vec4<u32>(0u, global3.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(67314u, 9u)], 9u)], 0u), false), 1i, 0i) & ~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -36728i, -20029i), vec3<i32>(u_input.a, -2147483647i, 5019i)), 1f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(291f, 860f)) - _wgslsmith_f_op_f32(func_3()))), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 10826i), vec2<i32>(u_input.a, 1i))), 39591i), abs(abs(vec3<i32>(u_input.a, u_input.a, -1i))) & abs(firstTrailingBit(vec3<i32>(-1i, u_input.a, u_input.a)))));
    var var_2 = 45679u;
    let x = u_input.a;
    s_output = StorageBuffer(1u, 1000f);
}

