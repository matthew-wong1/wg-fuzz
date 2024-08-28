struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 6>;

var<private> global1: bool = false;

var<private> global2: vec4<i32>;

var<private> global3: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global4: vec3<i32> = vec3<i32>(i32(-2147483648), -34402i, 26532i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec3<i32>) -> f32 {
    let var_0 = vec4<i32>(global4.x, global4.x, -1036i, -69690i) | _wgslsmith_add_vec4_i32(vec4<i32>(0i, global2.x, global4.x, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 2147483647i, 57i), global2.wxx) | 1i), abs(_wgslsmith_mod_vec4_i32(-vec4<i32>(global4.x, global2.x, 14774i, u_input.c), reverseBits(vec4<i32>(global4.x, 2147483647i, arg_3.x, global2.x)))));
    global3 = vec4<bool>(!any(arg_2.a), all(global0[_wgslsmith_index_u32(49915u, 6u)]), true, true);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, _wgslsmith_f_op_f32(-779f - arg_2.b), _wgslsmith_div_f32(-1375f, arg_0.b), 1f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.b, 315f, arg_0.b, arg_2.b), vec4<f32>(-1500f, arg_0.b, 950f, arg_2.b))) - vec4<f32>(156f, arg_0.b, arg_0.b, -855f)))));
    var var_2 = arg_2.b;
    var var_3 = arg_2;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(sign(arg_0.b)), true && !any(arg_2.a.xz)))));
}

fn func_2() -> u32 {
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -1474f) < _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec3<bool>(global3.x, true, false), -378f), u_input.b.xyz, Struct_1(vec3<bool>(true, true, true), -1075f), global2.yww))), _wgslsmith_f_op_f32(-497f * 378f))));
    global3 = global0[_wgslsmith_index_u32(select(u_input.b.x, u_input.b.x, global3.x), 6u)];
    var var_0 = Struct_1(global3.xww, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2384f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1418f + -1467f)))) * -803f));
    global2 = ~(~vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(11089i, global2.x), max(global4.x, u_input.c)), u_input.c, global4.x, global4.x));
    global4 = -global2.xxx;
    return ~39331u;
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(38244u, arg_0), vec2<u32>(9523u, u_input.b.x)), _wgslsmith_sub_u32(arg_0, ~83110u)), func_2()), arg_0, ~arg_0, select(~(8343u << (reverseBits(arg_0) % 32u)), arg_0, global3.x));
    global4 = _wgslsmith_clamp_vec3_i32(vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -39420i, 0i, -21977i), vec4<i32>(2147483647i, 2147483647i, global4.x, 1i)), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(~(-2147483647i), 1i, ~2147483647i), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, -21728i, global2.x), vec4<i32>(global2.x, 0i, global2.x, 2147483647i)))), _wgslsmith_div_i32(global4.x, -15978i) ^ ~select(u_input.a, global4.x, false)), select(vec3<i32>(2147483647i, 0i, _wgslsmith_mult_i32(1i, select(2147483647i, u_input.a, false))), -global2.wyw, global3.yxy), global2.wzw);
    global0 = array<vec4<bool>, 6>();
    var var_1 = !global0[_wgslsmith_index_u32(4294967295u, 6u)];
    var var_2 = all(select(select(global0[_wgslsmith_index_u32(~1u << (_wgslsmith_div_u32(89704u, arg_0) % 32u), 6u)], select(global0[_wgslsmith_index_u32(arg_0, 6u)], select(global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(5370u, 6u)], vec4<bool>(true, false, global3.x, false)), global3.x), var_1.x), global0[_wgslsmith_index_u32(81294u, 6u)], select(vec4<bool>(var_1.x, all(global3.xyw), var_1.x, false), !vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), global0[_wgslsmith_index_u32(~(~9986u), 6u)])));
    return Struct_2(max(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a, 15922i), global2.ywx) << ((var_0.x & 1u) % 32u)), _wgslsmith_div_i32(2147483647i, -(2147483647i ^ global4.x))), ~var_0.wwz, _wgslsmith_dot_vec2_u32(u_input.b.xy, ~vec2<u32>(0u, arg_0)), Struct_1(select(vec3<bool>(true, var_1.x, global3.x), var_1.zwz, all(vec2<bool>(var_1.x, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -525f) - _wgslsmith_div_f32(1425f, -154f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_dot_vec3_u32(vec3<u32>(20601u, ~_wgslsmith_mod_u32(u_input.b.x, 42137u), u_input.b.x), firstTrailingBit(u_input.b.ywx)));
    let var_1 = vec2<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(firstTrailingBit(0i), -global4.x, _wgslsmith_dot_vec4_i32(vec4<i32>(4489i, 2147483647i, 4210i, u_input.a), vec4<i32>(-10693i, 68794i, 42663i, var_0.a)), max(-22068i, var_0.a))), vec4<i32>(-1i) * -(~vec4<i32>(-2147483647i, 2147483647i, var_0.a, u_input.c))), u_input.a);
    global4 = global2.wyw;
    global4 = vec3<i32>(-1i, var_0.a, max(1i, ~var_0.a));
    global1 = var_0.d.b == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(!vec3<bool>(global3.x, var_0.d.a.x, false), 1143f), vec3<u32>(1u, u_input.b.x, 41294u), Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-1734f + var_0.d.b)), vec3<i32>(var_0.a, i32(-1i) * -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_1.x, u_input.a, 0i), vec4<i32>(-1697i, global2.x, var_1.x, u_input.a))))));
    global2 = select(vec4<i32>(max(-var_1.x, u_input.c), u_input.a, 1i, -2147483647i), ~(~vec4<i32>(_wgslsmith_clamp_i32(-16178i, -3324i, var_1.x), 17357i >> (0u % 32u), _wgslsmith_div_i32(34813i, 2147483647i), var_1.x)), !global0[_wgslsmith_index_u32(8403u, 6u)]);
    let var_2 = ~(u_input.b.x ^ var_0.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.yz, u_input.b, func_1(_wgslsmith_sub_u32(~abs(u_input.b.x), ~_wgslsmith_add_u32(u_input.b.x, var_0.b.x))).d.b);
}

