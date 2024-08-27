struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global1: array<vec3<u32>, 24> = array<vec3<u32>, 24>(vec3<u32>(27077u, 14488u, 0u), vec3<u32>(0u, 12530u, 67973u), vec3<u32>(0u, 4294967295u, 80854u), vec3<u32>(1u, 16376u, 24417u), vec3<u32>(36077u, 1u, 0u), vec3<u32>(4294967295u, 128127u, 0u), vec3<u32>(1u, 4294967295u, 62533u), vec3<u32>(18076u, 44782u, 15861u), vec3<u32>(0u, 5601u, 24844u), vec3<u32>(35893u, 0u, 9864u), vec3<u32>(0u, 4294967295u, 83270u), vec3<u32>(0u, 25739u, 0u), vec3<u32>(1u, 38205u, 24589u), vec3<u32>(1u, 88195u, 45605u), vec3<u32>(24267u, 31797u, 4294967295u), vec3<u32>(27948u, 1u, 46768u), vec3<u32>(1u, 18719u, 0u), vec3<u32>(4294967295u, 4294967295u, 11212u), vec3<u32>(59579u, 50335u, 0u), vec3<u32>(24435u, 0u, 3870u), vec3<u32>(40342u, 58170u, 1u), vec3<u32>(0u, 41601u, 47122u), vec3<u32>(4294967295u, 1u, 510u), vec3<u32>(29925u, 35480u, 33923u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -58325i;
    global1 = array<vec3<u32>, 24>();
    global0 = !(!(!(!vec4<bool>(global0.x, true, global0.x, global0.x))));
    var var_1 = vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(17670i, i32(-1i) * -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(5650i, 29598i, 2147483647i, 48431i) << (u_input.a % vec4<u32>(32u)), abs(vec4<i32>(-2147483647i, -1i, 0i, -3798i)))), vec2<i32>(1i, 1i)), 2147483647i);
    let var_2 = Struct_2(Struct_1(1f, all(select(vec2<bool>(true, true), vec2<bool>(true, true), var_1.x <= var_1.x))));
    var var_3 = global0.x;
    var_3 = !any(!(!select(vec4<bool>(global0.x, true, false, false), vec4<bool>(false, true, global0.x, true), vec4<bool>(global0.x, global0.x, true, var_2.a.b))));
    let var_4 = Struct_3(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(select(-3270f, 650f, var_2.a.b))), _wgslsmith_f_op_f32(trunc(var_2.a.a))))), var_2.a.a, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.a, var_2.a.a, -1000f, 474f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1975f, -214f, var_2.a.a, var_2.a.a))))))));
    let x = u_input.a;
    s_output = StorageBuffer(-(vec3<i32>(~var_1.x, -37299i, -2147483647i) | select(-vec3<i32>(-2147483647i, -55084i, 1i), firstTrailingBit(vec3<i32>(var_1.x, var_1.x, -17070i)), false)), ~vec3<i32>(-26329i, -abs(var_1.x), 67423i), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-645f - var_4.b), _wgslsmith_f_op_f32(round(var_4.c.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_4.c.x, var_2.a.a))))), u_input.a.xyx);
}

