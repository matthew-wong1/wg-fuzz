struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(2147483647i, 2147483647i, 1i);

var<private> global1: bool = false;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1() -> i32 {
    return ~_wgslsmith_div_i32(-_wgslsmith_clamp_i32(min(-22517i, u_input.a), 1i, ~2147483647i), _wgslsmith_div_i32(u_input.a, ~countOneBits(global0.x)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<f32>) -> vec2<u32> {
    var var_0 = !select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(arg_1.e.x, 222f)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(245f - arg_1.e.x)), !any(vec2<bool>(false, true)), select(~(-19876i) != global0.x, true, true));
    let var_1 = !(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), all(vec4<bool>(false, false, true, false))), true));
    let var_2 = arg_0.a;
    global0 = vec3<i32>(_wgslsmith_div_i32(-16016i >> (0u % 32u), var_2.b), (-_wgslsmith_sub_i32(-2147483647i, -1i) >> (u_input.b.x % 32u)) << (_wgslsmith_div_u32(reverseBits(~70019u), ~71227u << (_wgslsmith_sub_u32(55074u, var_2.c.x) % 32u)) % 32u), countOneBits(18083i));
    var var_3 = arg_1;
    return vec2<u32>(_wgslsmith_dot_vec4_u32(arg_1.c, arg_1.c), ~u_input.b.x);
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> StorageBuffer {
    var var_0 = Struct_2(Struct_1(arg_2.b, u_input.a, vec4<u32>(countOneBits(36210u), ~(~43316u), 18957u, ~(~1u)), vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(arg_2.d.zy, vec2<u32>(u_input.b.x, u_input.b.x)), func_3(Struct_2(arg_2, arg_2, vec3<i32>(global0.x, u_input.a, u_input.a)), arg_2, vec3<f32>(-1003f, 192f, 310f))), _wgslsmith_clamp_u32(0u, ~30229u, u_input.b.x & 0u), ~22231u, 31375u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_2.e))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_2.e.x)))), arg_2, vec3<i32>(_wgslsmith_dot_vec2_i32(global0.zy, vec2<i32>(u_input.a, global0.x)) & global0.x, ~(-_wgslsmith_dot_vec2_i32(global0.zx, global0.zz)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, arg_2.a, -36186i, countOneBits(u_input.a)), -_wgslsmith_sub_vec4_i32(vec4<i32>(-19753i, 6025i, global0.x, -48165i), vec4<i32>(-1i, -2147483647i, 0i, u_input.a)))));
    var var_1 = 4294967295u;
    var var_2 = u_input.a;
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_2.e.x * 1988f), _wgslsmith_f_op_f32(exp2(var_0.b.e.x)), _wgslsmith_f_op_f32(step(arg_2.e.x, arg_1)), _wgslsmith_f_op_f32(-426f - var_0.a.e.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(225f, arg_1, arg_2.e.x, arg_2.e.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(271f, arg_1, -960f, _wgslsmith_f_op_f32(var_0.a.e.x + arg_1))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_2(select(false, false, true), 1000f, Struct_1(u_input.a, _wgslsmith_add_i32(-43477i >> (0u % 32u), select(28378i, func_1(), all(vec2<bool>(false, true)))), firstTrailingBit(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x) >> (vec4<u32>(34445u, u_input.b.x, 1u, 8356u) % vec4<u32>(32u))), select(~(~vec4<u32>(u_input.b.x, 0u, 29195u, u_input.b.x)), vec4<u32>(firstTrailingBit(0u), ~u_input.b.x, ~4294967295u, u_input.b.x), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2126f, 1363f))))));
}

