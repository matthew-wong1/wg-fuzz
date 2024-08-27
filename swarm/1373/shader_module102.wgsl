struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: u32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-17330i, false, 1u, 33959u, vec4<f32>(1711f, -239f, -1610f, 1645f));

var<private> global1: array<Struct_1, 6>;

var<private> global2: array<vec2<i32>, 8>;

var<private> global3: array<Struct_1, 16>;

var<private> global4: array<vec2<bool>, 25> = array<vec2<bool>, 25>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec4<bool>) -> i32 {
    var var_0 = global3[_wgslsmith_index_u32(67182u, 16u)];
    let var_1 = var_0.e.x;
    var var_2 = var_0.e.x;
    var var_3 = _wgslsmith_f_op_f32(-global0.e.x);
    global1 = array<Struct_1, 6>();
    return ~firstTrailingBit(-u_input.d);
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: u32, arg_3: i32) -> u32 {
    var var_0 = !vec3<bool>(all(!vec4<bool>(true, true, global0.b, global0.b)), global0.b, true);
    global0 = global3[_wgslsmith_index_u32(arg_2, 16u)];
    return ~max(37519u, 0u);
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = !any(!vec4<bool>(false, global0.b, any(vec3<bool>(false, false, false)), !arg_0.b));
    global3 = array<Struct_1, 16>();
    let var_1 = Struct_1(1i, !(!any(select(vec4<bool>(true, arg_0.b, true, arg_0.b), vec4<bool>(var_0, var_0, false, global0.b), vec4<bool>(true, global0.b, arg_0.b, true)))), reverseBits(_wgslsmith_mod_u32(arg_0.d ^ global0.d, ~2919u)), select(~arg_0.d, ~18424u, ~_wgslsmith_clamp_u32(u_input.b, global0.d, 43708u) <= ~4294967295u), arg_0.e);
    var var_2 = -abs(-(countOneBits(2147483647i) ^ var_1.a));
    global4 = array<vec2<bool>, 25>();
    return _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, ~func_2(0u, 1i, 1u, -1905i) >> (~_wgslsmith_clamp_u32(26275u, u_input.c, u_input.a) % 32u)), vec2<u32>(countOneBits(_wgslsmith_clamp_u32(global0.c, u_input.e.x, global0.c)) << (1u % 32u), ~(~u_input.c) << (min(u_input.b ^ 1u, _wgslsmith_sub_u32(17140u, 15692u)) % 32u)));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = vec3<u32>(arg_0, arg_1.c, 4294967295u);
    global4 = array<vec2<bool>, 25>();
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1482f, global0.e.x, global0.e.x, 1786f) + global0.e), arg_1.e, !vec4<bool>(arg_1.b, false, true, global0.b))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(arg_1.e.x, -1859f), -552f, _wgslsmith_f_op_f32(global0.e.x - arg_1.e.x), _wgslsmith_f_op_f32(-global0.e.x)))))));
    global1 = array<Struct_1, 6>();
    global1 = array<Struct_1, 6>();
    return select(select(select(select(vec4<bool>(global0.b, arg_1.b, global0.b, arg_1.b), select(vec4<bool>(arg_1.b, arg_1.b, true, false), vec4<bool>(true, false, arg_1.b, global0.b), vec4<bool>(arg_1.b, false, false, false)), global0.b), select(select(vec4<bool>(arg_1.b, true, true, global0.b), vec4<bool>(arg_1.b, arg_1.b, true, true), global0.b), select(vec4<bool>(arg_1.b, arg_1.b, arg_1.b, true), vec4<bool>(arg_1.b, global0.b, global0.b, false), false), vec4<bool>(true, true, true, true)), false != !arg_1.b), vec4<bool>(_wgslsmith_sub_i32(arg_1.a, global0.a) < -arg_1.a, any(select(vec3<bool>(true, true, arg_1.b), vec3<bool>(global0.b, false, global0.b), false)), select(!arg_1.b, any(vec3<bool>(global0.b, global0.b, false)), false), arg_1.b), global0.b), select(!(!select(vec4<bool>(false, false, global0.b, arg_1.b), vec4<bool>(true, false, true, true), false)), vec4<bool>(true, 27606u != arg_1.c, any(vec3<bool>(global0.b, false, true)), arg_1.b), vec4<bool>(!all(vec4<bool>(false, global0.b, global0.b, global0.b)), global0.b, true, !(arg_1.a <= -83347i))), !global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a;
    var var_1 = global3[_wgslsmith_index_u32(~(~reverseBits(abs(global0.d))) | 11135u, 16u)];
    var var_2 = func_4(func_3(Struct_1(func_1(!vec4<bool>(var_1.b, global0.b, global0.b, true)), false || (43950u <= var_1.c), abs(1u ^ u_input.e.x), ~func_2(var_1.c, u_input.d, 4294967295u, global0.a), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-global0.e), global0.e)))), Struct_1(1i, all(select(select(vec2<bool>(global0.b, false), vec2<bool>(false, var_1.b), false), global4[_wgslsmith_index_u32(~global0.d, 25u)], var_1.b)), var_1.c, ~0u, _wgslsmith_div_vec4_f32(var_1.e, _wgslsmith_f_op_vec4_f32(select(var_1.e, var_1.e, select(vec4<bool>(true, false, true, false), vec4<bool>(true, var_1.b, global0.b, false), vec4<bool>(false, false, false, var_1.b)))))));
    var var_3 = var_1.c;
    let var_4 = ~(-1i);
    global0 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(global0.a, -9187i << (0u % 32u)), select(firstTrailingBit(global0.a), -u_input.d, false)), vec2<i32>(~global0.a, 2147483647i) ^ ~(-vec2<i32>(var_1.a, var_1.a))), func_4(50041u, Struct_1(firstTrailingBit(_wgslsmith_mult_i32(var_4, 0i)), true, abs(2851u), ~_wgslsmith_mod_u32(61352u, u_input.e.x), var_1.e)).x, ~u_input.e.x, _wgslsmith_clamp_u32(var_1.d, ~var_1.d, _wgslsmith_dot_vec3_u32(select(vec3<u32>(557u, 4294967295u, 33332u), vec3<u32>(4294967295u, 51095u, u_input.a), vec3<bool>(true, var_2.x, var_2.x)), vec3<u32>(4294967295u, 4294967295u, global0.d) >> (vec3<u32>(global0.c, 0u, 0u) % vec3<u32>(32u))) | 4294967295u), vec4<f32>(global0.e.x, _wgslsmith_f_op_f32(var_1.e.x + 1579f), global0.e.x, -399f));
    let var_5 = global0.e.x;
    global1 = array<Struct_1, 6>();
    var_1 = Struct_1(2147483647i, true, global0.c, _wgslsmith_div_u32(1u, _wgslsmith_sub_u32(var_1.c, var_1.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, var_1.e.x))), _wgslsmith_f_op_f32(-1536f + global0.e.x), _wgslsmith_f_op_f32(global0.e.x + global0.e.x), _wgslsmith_div_f32(global0.e.x, -683f))));
    let x = u_input.a;
    s_output = StorageBuffer((firstLeadingBit(min(u_input.e.yw, vec2<u32>(0u, 14632u))) & u_input.e.zz) & u_input.e.zy, _wgslsmith_add_i32(var_4, min(reverseBits(u_input.d), ~(~0i))), u_input.c, var_1.e, 1406f);
}

