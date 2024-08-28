struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<vec2<bool>, 12>;

var<private> global1: vec2<f32>;

var<private> global2: array<vec2<f32>, 14>;

var<private> global3: vec3<i32> = vec3<i32>(-9685i, -36111i, -1i);

var<private> global4: Struct_3;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec4<u32>, arg_1: f32) -> Struct_4 {
    return Struct_4(vec2<u32>(4294967295u, arg_0.x >> (global4.b.b.a % 32u)));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: f32, arg_3: vec4<i32>) -> vec3<bool> {
    return vec3<bool>(true, true, true);
}

fn func_3(arg_0: Struct_4, arg_1: bool) -> Struct_5 {
    var var_0 = global4.d.x;
    var var_1 = reverseBits(~_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(global4.b.a, global4.b.a) ^ vec4<u32>(arg_0.a.x, 86925u, 0u, 42959u), global4.b.a, global4.b.a));
    let var_2 = Struct_1(1u, u_input.a);
    let var_3 = _wgslsmith_f_op_f32(select(global1.x, 276f, arg_1));
    var var_4 = _wgslsmith_mod_i32(0i << (~var_2.a % 32u), _wgslsmith_mult_i32(12749i, -global3.x));
    return Struct_5(arg_0);
}

fn func_4(arg_0: Struct_5) -> Struct_4 {
    let var_0 = select(!(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), true))), vec4<bool>(true, true, _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(max(-137f, global4.d.x))) == -876f, false), vec4<bool>(true, all(vec4<bool>(true, true, true, true)), any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), true && all(global0[_wgslsmith_index_u32(global4.c.x | arg_0.a.a.x, 12u)])));
    var var_1 = 1i;
    let var_2 = -1332f;
    let var_3 = Struct_2(vec4<u32>(29127u, 0u, global4.a.a, 0u), global4.b.b, _wgslsmith_f_op_f32(ceil(global1.x)));
    let var_4 = var_3.b;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec4<u32>(_wgslsmith_add_u32(58541u, 1u), ~(~4294967295u), global4.a.a, global4.b.a.x), -915f);
    var_0 = func_4(func_3(Struct_4(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, global4.b.b.a), ~vec2<u32>(4294967295u, var_0.a.x))), any(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.b.c, 371f) * vec2<f32>(global1.x, global4.b.c)), Struct_1(34829u, 2147483647i), -107f, vec4<i32>(global4.b.b.b, u_input.a, 2973i, global3.x) ^ vec4<i32>(-2147483647i, 21638i, u_input.a, global4.b.b.b)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(162f, 1f, -2499f) * vec3<f32>(738f, 114f, _wgslsmith_f_op_f32(ceil(-363f)))));
    let var_2 = any(!select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)))) && !select(any(global0[_wgslsmith_index_u32(global4.c.x & var_0.a.x, 12u)]), false, ~global4.c.x < ~59528u);
    global2 = array<vec2<f32>, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(-67667i);
}

