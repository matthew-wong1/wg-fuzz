struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<i32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 8>;

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: bool;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> i32 {
    var var_0 = Struct_1(select(vec3<bool>(!global1.x | false, arg_0.a.x, any(!vec2<bool>(false, global1.x))), select(select(arg_0.a, arg_0.a, select(arg_0.a, arg_0.a, false)), select(arg_0.a, vec3<bool>(arg_0.a.x, global1.x, arg_0.a.x), true), _wgslsmith_f_op_f32(arg_0.b.x - arg_0.b.x) <= _wgslsmith_f_op_f32(-arg_0.b.x)), false), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-631f)), arg_0.b.x, _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(-457f * arg_0.b.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1229f, 916f, arg_0.b.x, _wgslsmith_f_op_f32(abs(-173f))))), vec3<u32>(~(~firstLeadingBit(u_input.c)), 4294967295u | _wgslsmith_div_u32(max(u_input.c, 4294967295u), _wgslsmith_sub_u32(arg_0.e, 20272u)), _wgslsmith_div_u32(4294967295u, ~1u)), vec3<u32>(_wgslsmith_mult_u32(u_input.b, _wgslsmith_div_u32(u_input.b, u_input.b)), ~countOneBits(arg_0.d.x), u_input.b) ^ ~arg_0.c, ~abs(17970u));
    var var_1 = arg_0.b.x;
    var_0 = arg_0;
    var_0 = arg_0;
    global2 = false;
    return _wgslsmith_dot_vec2_i32(~(select(abs(vec2<i32>(1i, 1i)), vec2<i32>(1i, 23116i), true) | ~select(vec2<i32>(-8572i, -1i), vec2<i32>(u_input.a, 0i), var_0.a.x)), select(vec2<i32>(-1i, 2147483647i), vec2<i32>(abs(~15453i), i32(-1i) * -u_input.a), !global1.x));
}

fn func_2() -> Struct_3 {
    let var_0 = -max(func_3(Struct_1(vec3<bool>(true, global1.x, false), vec4<f32>(930f, -2001f, -475f, 307f), vec3<u32>(4294967295u, u_input.c, 4110u) ^ vec3<u32>(u_input.c, u_input.b, u_input.b), ~vec3<u32>(u_input.b, u_input.c, u_input.b), 8882u), max(firstLeadingBit(u_input.a), 0i)), 25609i);
    let var_1 = 354f;
    var var_2 = Struct_3(var_1);
    global2 = false;
    let var_3 = Struct_3(-565f);
    return var_3;
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: Struct_4) -> StorageBuffer {
    let var_0 = func_2();
    global1 = !vec2<bool>(true, arg_0);
    var var_1 = u_input.a;
    let var_2 = 36327i;
    global2 = global1.x;
    return StorageBuffer(reverseBits(_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(-arg_2.a.ww, ~vec2<i32>(arg_2.a.x, 2147483647i), arg_2.a.zy << (vec2<u32>(1u, 0u) % vec2<u32>(32u))), ~reverseBits(arg_2.a.xx))), _wgslsmith_f_op_f32(var_0.a * var_0.a), vec2<i32>(~max(min(var_2, var_2), i32(-1i) * -68776i), 2147483647i), ~_wgslsmith_div_i32(var_2, u_input.a) & ~(-var_2), vec4<f32>(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.a), -198f))), 1401f, var_0.a, _wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(907f - -1177f), 1f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(false, _wgslsmith_clamp_u32(u_input.c, ~(~u_input.b), abs(~1u & ~u_input.b)), Struct_4(vec4<i32>(u_input.a, _wgslsmith_sub_i32(-u_input.a, reverseBits(u_input.a)), u_input.a, 1i)));
}

