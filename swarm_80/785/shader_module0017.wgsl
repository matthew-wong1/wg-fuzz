struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 4>;

var<private> global1: array<vec2<bool>, 13> = array<vec2<bool>, 13>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false));

var<private> global2: Struct_3 = Struct_3(Struct_1(vec4<u32>(62339u, 5633u, 0u, 0u), -40275i, -25856i, 54394u), Struct_2(-619f));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_2, arg_2: u32) -> vec4<u32> {
    return abs(global2.a.a);
}

fn func_2(arg_0: Struct_5, arg_1: vec3<bool>) -> Struct_3 {
    global2 = Struct_3(Struct_1(~vec4<u32>(4294967295u, 7016u, 102229u, 28204u) | (global2.a.a >> (func_3(arg_0, global2.b, global2.a.a.x) % vec4<u32>(32u))), global2.a.c, u_input.a.x, arg_0.c), global2.b);
    let var_0 = global2.a.a.x;
    global0 = array<vec2<bool>, 4>();
    global0 = array<vec2<bool>, 4>();
    var var_1 = 1u >> (min(~(~global2.a.d), arg_0.c | arg_0.c) % 32u);
    return Struct_3(Struct_1(_wgslsmith_mult_vec4_u32(~(global2.a.a ^ global2.a.a), _wgslsmith_clamp_vec4_u32(~global2.a.a, ~global2.a.a, ~vec4<u32>(0u, arg_0.c, 0u, global2.a.a.x))), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(arg_0.b.zz, vec2<i32>(-1i, 9924i)), 1i), ~_wgslsmith_mult_i32(arg_0.b.x, u_input.b.x) ^ -(2147483647i | arg_0.b.x), arg_0.c), global2.b);
}

fn func_1(arg_0: i32) -> Struct_3 {
    return func_2(Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.b.a, 236f, false)))), countOneBits(-u_input.a.xzy), ~global2.a.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b.a, global2.b.a) * vec2<f32>(global2.b.a, global2.b.a))))), vec3<bool>(true, false, global2.b.a > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(-17158i);
    let var_0 = Struct_3(Struct_1(~(~vec4<u32>(43345u, global2.a.a.x, global2.a.a.x, global2.a.d)), ~global2.a.b, ~2147483647i, global2.a.a.x), global2.b);
    var var_1 = vec2<bool>(var_0.b.a != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(530f)), _wgslsmith_f_op_f32(-global2.b.a))), -2160f, any(vec4<bool>(true, true, false, false)))), false);
    global0 = array<vec2<bool>, 4>();
    var var_2 = select(vec4<i32>(28423i, countOneBits(_wgslsmith_mod_i32(i32(-1i) * -12930i, _wgslsmith_dot_vec2_i32(u_input.a.yx, u_input.a.yx))), ~u_input.a.x, ~2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(firstTrailingBit(0i), -5972i, -1i, var_0.a.b), u_input.a), !(!vec4<bool>(global2.b.a != var_0.b.a, !var_1.x, 0i < global2.a.b, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.b.a), _wgslsmith_div_f32(global2.b.a, _wgslsmith_f_op_f32(f32(-1f) * -206f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global2.b.a, -1000f)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.a, global2.b.a) + vec2<f32>(633f, -1077f)), vec2<f32>(-1084f, 2467f))))));
}

