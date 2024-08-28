struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec3<f32>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 486f;

var<private> global1: u32 = 52644u;

var<private> global2: vec3<bool> = vec3<bool>(false, true, true);

var<private> global3: array<vec4<bool>, 23> = array<vec4<bool>, 23>(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(floor(-1251f));
    global2 = vec3<bool>(global2.x, global2.x, all(vec4<bool>(true | any(arg_0.b), true, true && all(arg_0.b.yx), firstLeadingBit(0i) < (u_input.a.x | u_input.c.x))));
    let var_1 = vec2<f32>(_wgslsmith_div_f32(var_0, var_0), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(623f)), 1193f)))));
    var var_2 = Struct_4(arg_0.b, u_input.b.x);
    var_2 = Struct_4(!vec3<bool>(any(global3[_wgslsmith_index_u32(var_2.b, 23u)]), arg_0.b.x, var_2.a.x), ~var_2.b);
    return select(select(var_2.a, var_2.a, select(select(!arg_0.b, !var_2.a, var_2.a), select(!vec3<bool>(true, true, arg_0.b.x), arg_0.b, arg_0.b), vec3<bool>(arg_0.b.x, all(vec2<bool>(false, false)), arg_0.b.x))), vec3<bool>(!any(global3[_wgslsmith_index_u32(arg_0.a, 23u)]), all(vec3<bool>(true, !var_2.a.x, global2.x)), true | arg_0.b.x), all(vec2<bool>(global2.x, any(global3[_wgslsmith_index_u32(4730u, 23u)]))));
}

fn func_2() -> u32 {
    let var_0 = abs(~(~u_input.b.x >> (0u % 32u))) >> (21367u % 32u);
    global2 = !select(vec3<bool>(false, global2.x, global2.x), vec3<bool>(any(vec4<bool>(false, false, global2.x, false)) || true, false, !global2.x), func_3(Struct_3(~1u, !vec3<bool>(global2.x, false, global2.x))));
    var var_1 = Struct_4(vec3<bool>(global2.x | !any(vec3<bool>(global2.x, global2.x, global2.x)), false, false), 57141u);
    let var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -reverseBits(0i)), vec2<i32>(-1i) * -max(~vec2<i32>(u_input.c.x, u_input.c.x), select(vec2<i32>(0i, -265i), u_input.c.wx, vec2<bool>(global2.x, false))));
    var_1 = Struct_4(var_1.a, _wgslsmith_sub_u32(min(~0u, _wgslsmith_mod_u32(var_0, var_1.b)), 11894u));
    return _wgslsmith_mult_u32(~var_1.b, var_1.b);
}

fn func_1() -> Struct_4 {
    let var_0 = _wgslsmith_add_i32(-select(u_input.a.x, _wgslsmith_div_i32(-u_input.d, -18661i), true), -56929i);
    var var_1 = _wgslsmith_sub_u32(u_input.b.x, _wgslsmith_div_u32(44380u, 77054u & u_input.b.x));
    let var_2 = countOneBits(var_0);
    var var_3 = u_input.c;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(681f + 266f))) * _wgslsmith_f_op_f32(select(-1715f, -520f, true))));
    return Struct_4(select(vec3<bool>(all(vec3<bool>(true, true, global2.x)), !global2.x, global2.x), vec3<bool>(true, global2.x, !(!global2.x)), global2.x && global2.x), func_2() >> (max(~u_input.b.x, u_input.b.x) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = ~4294967295u;
    let var_1 = !(!(!global2.yx));
    global3 = array<vec4<bool>, 23>();
    global3 = array<vec4<bool>, 23>();
    let var_2 = -1072f;
    let x = u_input.a;
    s_output = StorageBuffer(min(~13780u, ~4294967295u), firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, func_1().b), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.b, 4294967295u), u_input.b.yx), u_input.b.zy)));
}

