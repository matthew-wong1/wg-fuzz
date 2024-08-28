struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: vec3<u32> = vec3<u32>(44157u, 9616u, 43842u);

var<private> global2: array<vec3<u32>, 30>;

var<private> global3: f32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    let var_0 = Struct_4(max(_wgslsmith_clamp_i32(u_input.b.x, -u_input.a.x | u_input.b.x, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(2147483647i, 16905i, u_input.a.x), -2147483647i)), ~select(u_input.a.x, u_input.a.x, true)));
    return _wgslsmith_clamp_u32(min(u_input.d.x, ~u_input.e.x), 4294967295u, 4294967295u);
}

fn func_2() -> vec3<u32> {
    global2 = array<vec3<u32>, 30>();
    return _wgslsmith_mod_vec3_u32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~select(func_3(), u_input.c.x, any(vec2<bool>(false, global0.x))), _wgslsmith_sub_u32(_wgslsmith_sub_u32(~4294967295u, countOneBits(global1.x)), 1u)), 30u)], ~global2[_wgslsmith_index_u32(4294967295u, 30u)]);
}

fn func_1() -> Struct_4 {
    global2 = array<vec3<u32>, 30>();
    global2 = array<vec3<u32>, 30>();
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-748f, 1176f))))) + -1006f);
    let var_0 = ~func_2();
    global2 = array<vec3<u32>, 30>();
    return Struct_4(-2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<u32>, 30>();
    let var_0 = func_1();
    let var_1 = var_0.a;
    let var_2 = func_3();
    global0 = vec2<bool>(global0.x, all(vec2<bool>(global0.x, any(vec4<bool>(global0.x, false, global0.x, false)) || false)));
    global3 = 1f;
    let var_3 = all(select(select(!(!vec4<bool>(true, false, true, global0.x)), !vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(global0.x & false, any(vec4<bool>(global0.x, true, global0.x, true)), true, global0.x)), !vec4<bool>(global0.x, global0.x, any(vec3<bool>(global0.x, global0.x, false)), global0.x), false));
    global1 = _wgslsmith_clamp_vec3_u32(global2[_wgslsmith_index_u32(0u, 30u)], countOneBits(func_2()), countOneBits(u_input.c.wxw));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(194f, -572f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(627f, 234f)))), firstLeadingBit(abs(vec2<i32>(u_input.a.x, 39770i)) >> (vec2<u32>(_wgslsmith_div_u32(var_2, 37364u), _wgslsmith_add_u32(u_input.c.x, var_2)) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-181f, -1979f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1345f, -982f)))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1955f + 757f))), _wgslsmith_f_op_f32(f32(-1f) * -392f)), select(vec2<bool>(any(vec3<bool>(false, false, false)), true), vec2<bool>(true, all(vec4<bool>(global0.x, true, var_3, true))), global0.x))));
}

