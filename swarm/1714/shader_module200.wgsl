struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: f32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<f32, 22> = array<f32, 22>(691f, 1919f, -432f, -536f, 1873f, 257f, 239f, -399f, -357f, 198f, -754f, -1036f, 907f, -409f, -1683f, -679f, -1479f, -933f, 1017f, 1988f, 1000f, 517f);

var<private> global2: Struct_1;

var<private> global3: array<vec4<i32>, 6>;

var<private> global4: f32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    var var_0 = true;
    var var_1 = false;
    var var_2 = global2.b.x;
    return _wgslsmith_add_u32(1u, ~50499u);
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> vec2<bool> {
    global3 = array<vec4<i32>, 6>();
    global4 = _wgslsmith_f_op_f32(-648f + -1060f);
    var var_0 = !arg_1.a;
    var var_1 = true;
    var var_2 = false;
    return vec2<bool>(_wgslsmith_mod_u32(4582u, u_input.c) > func_3(vec2<bool>(global2.a.x, global2.a.x)), !(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global2.b.x, global2.b.x), global2.b.x, any(global2.a))) <= global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(1u, u_input.a)), 22u)]));
}

fn func_1(arg_0: Struct_1) -> bool {
    var var_0 = Struct_1(select(func_2(arg_0.a.x, Struct_1(select(arg_0.a, global2.a, false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(254f, arg_0.b.x)))), vec2<bool>(true, all(vec3<bool>(global2.a.x, arg_0.a.x, true))), !global2.a.x), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1222f * -525f) + global2.b.x) - -911f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.b.x)) + 865f)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)), -1613f, global2.b.x, _wgslsmith_f_op_f32(step(global2.b.x, arg_0.b.x)));
    var_0 = Struct_1(global2.a, vec2<f32>(-882f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b.x * arg_0.b.x) + _wgslsmith_f_op_f32(abs(995f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(1u, 22u)], var_1.x)) - var_1.x), global2.a.x))));
    return any(vec4<bool>(true | (arg_0.b.x >= global2.b.x), !select(1371f <= arg_0.b.x, any(arg_0.a), all(vec3<bool>(true, arg_0.a.x, global2.a.x))), false, (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, u_input.c), vec3<u32>(u_input.a, 0u, u_input.c)) & ~u_input.a) > min(_wgslsmith_mod_u32(u_input.c, 4294967295u), u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!(!global2.a), _wgslsmith_f_op_vec2_f32(ceil(global2.b)));
    let var_1 = select(!vec3<bool>(_wgslsmith_div_i32(u_input.b, u_input.b) <= _wgslsmith_add_i32(u_input.b, u_input.b), false, global2.a.x), vec3<bool>(false, true, global2.a.x), !(!vec3<bool>(!var_0.a.x, func_1(Struct_1(var_0.a, vec2<f32>(1723f, var_0.b.x))), true)));
    global1 = array<f32, 22>();
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(-141f, 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(42896u, 22u)] + 190f) * 1335f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2053f)) * 1f) - global1[_wgslsmith_index_u32(reverseBits(firstLeadingBit(0u)), 22u)]), _wgslsmith_div_f32(-291f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 22u)] + _wgslsmith_div_f32(790f, 606f))))));
    var var_3 = ~(u_input.a ^ ~u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~abs(_wgslsmith_mult_u32(4294967295u, u_input.c)), select(99808u, _wgslsmith_sub_u32(~u_input.a, u_input.a >> (u_input.a % 32u)), all(var_1.xy))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1[_wgslsmith_index_u32(select(u_input.a, _wgslsmith_mult_u32(u_input.a, 0u), any(var_0.a)), 22u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 22u)]), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.b.x, global1[_wgslsmith_index_u32(u_input.c, 22u)]), _wgslsmith_div_f32(-497f, -669f), var_0.a.x | true)), _wgslsmith_f_op_f32(-global2.b.x)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1208f + global2.b.x), -499f, 1549f, _wgslsmith_f_op_f32(f32(-1f) * -909f)), vec4<f32>(1f, -275f, -779f, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.a), vec2<u32>(u_input.c, 0u)), 22u)])))), global2.b.x, ~func_3(var_1.zz), ~((~vec3<u32>(18403u, u_input.a, u_input.c) << ((vec3<u32>(u_input.c, u_input.c, u_input.c) >> (vec3<u32>(0u, 1u, u_input.c) % vec3<u32>(32u))) % vec3<u32>(32u))) | ~(~vec3<u32>(8005u, 4294967295u, u_input.a))));
}

