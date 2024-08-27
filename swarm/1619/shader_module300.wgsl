struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> bool {
    let var_0 = 8921u;
    let var_1 = arg_0;
    var var_2 = vec3<bool>(!any(select(!vec2<bool>(var_1.a, var_1.a), vec2<bool>(var_1.a, true), select(vec2<bool>(global0.a, false), vec2<bool>(false, false), var_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) >= arg_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1)))) >= 647f);
    var var_3 = Struct_1(all(var_2.yx), _wgslsmith_clamp_vec2_i32(min(arg_0.b, select(vec2<i32>(global0.b.x, -39270i), vec2<i32>(var_1.b.x, arg_0.b.x), var_2.yx)) & _wgslsmith_sub_vec2_i32(vec2<i32>(10052i, 43728i), -global0.b), arg_0.b, -(~var_1.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.c)) * vec3<f32>(-1206f, _wgslsmith_f_op_f32(-var_1.c.x), 500f)) * vec3<f32>(231f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.c.x))), -313f)));
    var var_4 = vec4<f32>(global0.c.x, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x - _wgslsmith_f_op_f32(-1472f * _wgslsmith_f_op_f32(416f * arg_1)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_3.c.x, var_1.c.x)))));
    return !(var_1.b.x == 6322i);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(global0.a & false, global0.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-237f, global0.c.x, 289f)));
    let var_1 = Struct_1(select(func_3(Struct_1(!global0.a, global0.b, vec3<f32>(var_0.c.x, -634f, global0.c.x)), _wgslsmith_f_op_f32(2506f - -1135f)), var_0.a, false), vec2<i32>(global0.b.x, var_0.b.x), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-196f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1078f))), var_0.a)), -239f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -485f) * _wgslsmith_f_op_f32(-1025f + _wgslsmith_f_op_f32(trunc(1519f))))));
    var var_2 = _wgslsmith_mod_vec2_u32(vec2<u32>(select(_wgslsmith_mod_u32(_wgslsmith_mult_u32(64737u, u_input.a), ~u_input.a), ~(u_input.a ^ 1u), true), u_input.a), firstTrailingBit(vec2<u32>(firstTrailingBit(reverseBits(0u)), u_input.a)));
    var var_3 = var_1;
    var_3 = var_1;
    return var_1;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = func_2();
    var_0 = func_2();
    var var_1 = func_2();
    var var_2 = arg_0;
    global0 = func_2();
    return vec3<bool>(true, var_2.a, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!global0.a, -(firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(global0.b.x, global0.b.x), global0.b)) << (vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(81682u, 14913u), vec2<u32>(u_input.a, 6014u)), _wgslsmith_mod_u32(u_input.a, 6187u)) % vec2<u32>(32u))), global0.c);
    var var_1 = !select(!select(vec3<bool>(global0.a, false, true), func_1(var_0, var_0, Struct_1(var_0.a, var_0.b, vec3<f32>(var_0.c.x, global0.c.x, global0.c.x)), var_0), false), !select(select(vec3<bool>(var_0.a, false, global0.a), vec3<bool>(true, false, false), var_0.a), vec3<bool>(global0.a, false, false), true), global0.a);
    let var_2 = Struct_1(!(!(!(!var_0.a))), firstTrailingBit(vec2<i32>(global0.b.x, ~global0.b.x)), var_0.c);
    var var_3 = vec2<f32>(-1084f, var_2.c.x);
    let var_4 = var_2.b.x;
    var var_5 = select(~(~vec2<u32>(~0u, _wgslsmith_mult_u32(u_input.a, 41611u))), vec2<u32>(_wgslsmith_div_u32(32396u, 1u), ~reverseBits(21537u)), !func_1(Struct_1(global0.a, abs(vec2<i32>(-23184i, var_2.b.x)), var_0.c), var_2, var_2, func_2()).xy);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1051i, var_4, max(firstTrailingBit(-12492i), i32(-1i) * -2147483647i), i32(-1i) * -global0.b.x), ~(-var_0.b.x));
}

