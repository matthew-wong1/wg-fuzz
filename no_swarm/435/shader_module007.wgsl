struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(66990i, 0i, 0i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    let var_0 = 1025f;
    global0 = vec3<i32>(global0.x, i32(-1i) * -2147483647i, global0.x);
    global0 = select(~select(vec3<i32>(-1i, -53298i, global0.x) >> (vec3<u32>(u_input.b.x, u_input.b.x, u_input.c.x) % vec3<u32>(32u)), vec3<i32>(global0.x, 60987i, global0.x) | vec3<i32>(global0.x, global0.x, -35061i), vec3<bool>(true, true, true)), -_wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(0i, -1i, u_input.d.x)), firstTrailingBit(vec3<i32>(0i, 1i, 422i))), false) | _wgslsmith_add_vec3_i32(abs(-(~vec3<i32>(u_input.d.x, -1i, 33656i))), select(abs(-vec3<i32>(global0.x, 16347i, global0.x)), min(vec3<i32>(u_input.d.x, 1i, u_input.d.x), vec3<i32>(-1i, global0.x, 1i)), vec3<bool>(true, true, true)));
    global0 = -vec3<i32>(~u_input.d.x, _wgslsmith_add_i32(min(-2147483647i, u_input.d.x), 21949i), 1i);
    let var_1 = Struct_1(3185i);
    return !(!(any(vec2<bool>(false, false)) || true) != !(any(vec4<bool>(true, false, true, false)) && true));
}

fn func_2(arg_0: vec2<u32>) -> vec3<i32> {
    let var_0 = 0u;
    let var_1 = Struct_1(u_input.d.x);
    var var_2 = Struct_1(var_1.a);
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1264f, 856f, -745f, 408f)), vec4<f32>(-1000f, 2085f, -1068f, 559f), true)) * vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -906f), 425f, _wgslsmith_div_f32(928f, -1000f), -467f) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(623f, 551f, 1323f, -451f))))))), vec4<bool>(func_3(), true, true, false)));
    let var_4 = _wgslsmith_mod_i32(var_2.a << (~8296u % 32u), -2147483647i) != -2147483647i;
    return firstTrailingBit(vec3<i32>(-1i) * -abs(~vec3<i32>(-7196i, 48183i, u_input.d.x)));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: vec3<f32>) -> bool {
    var var_0 = Struct_1(2147483647i);
    var_0 = arg_1;
    global0 = func_2(vec2<u32>(u_input.c.x, 0u ^ ~(~u_input.b.x)));
    var var_1 = ~vec4<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(10839u, 82111u) >> (u_input.b % vec2<u32>(32u)), u_input.c.zz), u_input.b.x | ~arg_0, 4294967295u);
    var var_2 = arg_1.a;
    return any(vec2<bool>(!(1i >= global0.x), arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(select(vec2<bool>(true, true), vec2<bool>(func_1(97149u, Struct_1(27597i), true, vec3<f32>(-282f, 1679f, 1869f)), false), true), select(select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, true)), vec2<bool>(true, true), all(vec3<bool>(true, false, true)) & true), vec2<bool>(true, all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false)))), select(vec2<bool>(!all(vec3<bool>(true, false, false)), any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)))), select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), all(vec4<bool>(true, false, true, false))), vec2<bool>(true, true), true), vec2<bool>(true, true)), select(select(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, any(vec3<bool>(false, true, true))), vec2<bool>(false, any(vec2<bool>(false, true)))), select(vec2<bool>(all(vec2<bool>(false, true)), true), vec2<bool>(true, false), true), select(!select(vec2<bool>(true, true), vec2<bool>(false, true), true), !select(vec2<bool>(true, false), vec2<bool>(true, false), true), func_1(~u_input.c.x, Struct_1(u_input.d.x), true, _wgslsmith_div_vec3_f32(vec3<f32>(535f, -1000f, -1000f), vec3<f32>(186f, 1144f, 514f))))));
    var var_1 = Struct_1(u_input.d.x);
    let var_2 = ~(~1u) | (u_input.a ^ ~(~_wgslsmith_mod_u32(1u, u_input.b.x)));
    var var_3 = !(!vec4<bool>(var_0.x, false, true, var_0.x));
    var_1 = Struct_1(~(-79344i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~(0u & var_2) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_2), _wgslsmith_mult_vec2_u32(u_input.b, vec2<u32>(u_input.a, var_2))), 12323u), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(ceil(-274f)), _wgslsmith_f_op_f32(474f - -982f), _wgslsmith_f_op_f32(-533f + 1061f)), vec3<f32>(-1574f, _wgslsmith_f_op_f32(min(1212f, -896f)), -2366f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(794f, 581f, -613f)))))), firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.x, ~var_1.a, var_1.a, -2147483647i), -vec4<i32>(var_1.a, 1i, u_input.d.x, u_input.d.x))));
}

