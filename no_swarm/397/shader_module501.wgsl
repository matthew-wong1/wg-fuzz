struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec3<i32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13>;

var<private> global1: Struct_2 = Struct_2(vec3<f32>(1348f, -1472f, 1625f), vec4<bool>(false, true, true, true), vec3<i32>(-31182i, 0i, -1i), Struct_1(-17809i, vec4<u32>(31103u, 30938u, 0u, 0u), -1461f), 41205i);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec3<f32>, arg_1: bool) -> i32 {
    var var_0 = global1.d.b;
    let var_1 = global1.b.x;
    var_0 = vec4<u32>(_wgslsmith_sub_u32(select(_wgslsmith_clamp_u32(~var_0.x, _wgslsmith_clamp_u32(4294967295u, var_0.x, 1u), 0u), var_0.x, false), 1u), 1u, abs(max(global1.d.b.x, _wgslsmith_mod_u32(var_0.x, _wgslsmith_sub_u32(var_0.x, var_0.x)))), 21339u);
    let var_2 = Struct_1(-30435i, global1.d.b, -2079f);
    return _wgslsmith_div_i32(global1.c.x, _wgslsmith_sub_i32(firstTrailingBit(u_input.b.x), -var_2.a));
}

fn func_3() -> vec4<u32> {
    global1 = global0[_wgslsmith_index_u32(abs(firstLeadingBit(~(~8882u >> (~global1.d.b.x % 32u)))), 13u)];
    let var_0 = !select(!select(vec3<bool>(false, true, global1.b.x), !vec3<bool>(global1.b.x, global1.b.x, false), global1.b.x), !(!vec3<bool>(global1.b.x, false, global1.b.x)), !(!(!global1.b.x)));
    global0 = array<Struct_2, 13>();
    global0 = array<Struct_2, 13>();
    var var_1 = vec3<bool>(true, true, var_0.x);
    return _wgslsmith_div_vec4_u32(select(global1.d.b, max(global1.d.b, countOneBits(global1.d.b) ^ vec4<u32>(global1.d.b.x, global1.d.b.x, global1.d.b.x, 1u)), true), ~(~(~global1.d.b)));
}

fn func_1(arg_0: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(step(global1.d.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1900f))) - global1.a.x))));
    let var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(0u, global1.d.b.x), ~(~(~abs(global1.d.b.yw))));
    var var_2 = Struct_1(select(global1.d.a, _wgslsmith_mod_i32(-func_2(vec3<f32>(1000f, global1.a.x, -460f), false), -_wgslsmith_add_i32(u_input.a.x, 2147483647i)), true), (vec4<u32>(max(var_1, global1.d.b.x), 37475u & global1.d.b.x, _wgslsmith_mod_u32(4294967295u, global1.d.b.x), 584u) << (~(~global1.d.b) % vec4<u32>(32u))) >> (func_3() % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, var_0) - global1.d.c), global1.a.x)));
    let var_3 = global0[_wgslsmith_index_u32(~(~(~_wgslsmith_add_u32(~9663u, ~global1.d.b.x))), 13u)];
    let var_4 = !(!(!all(global1.b.xxy))) | false;
    return ~func_2(global1.a, !(!arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_mod_i32(-_wgslsmith_dot_vec4_i32(select(vec4<i32>(2147483647i, global1.c.x, 0i, u_input.c), vec4<i32>(u_input.b.x, global1.e, u_input.c, 1i), vec4<bool>(false, global1.b.x, false, global1.b.x)), ~vec4<i32>(2147483647i, -2147483647i, u_input.c, 4851i)), -func_1(false) & u_input.b.x), ~vec4<u32>(~0u, 13467u, 1u, _wgslsmith_add_u32(global1.d.b.x, _wgslsmith_div_u32(global1.d.b.x, global1.d.b.x))), global1.a.x);
    global0 = array<Struct_2, 13>();
    var var_1 = true;
    var var_2 = 281f;
    global0 = array<Struct_2, 13>();
    var var_3 = _wgslsmith_f_op_f32(min(var_0.c, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -970f)), _wgslsmith_f_op_f32(-global1.d.c)))));
    var var_4 = var_0.b;
    let var_5 = all(!(!(!global1.b)));
    let var_6 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a | ((0i | ~global1.e) ^ -firstTrailingBit(u_input.a.x)));
}

