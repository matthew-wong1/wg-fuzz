struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(121180u, false, 16800i);

var<private> global1: vec2<f32>;

var<private> global2: vec2<u32> = vec2<u32>(4294967295u, 0u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = Struct_1(abs(~_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.a, 841u, 43387u), vec3<u32>(global2.x, arg_1.a, 63362u))), _wgslsmith_div_i32(-9887i, -2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c)));
    let var_1 = Struct_2(0u, true, _wgslsmith_sub_i32(-arg_1.b, abs(10059i)) ^ 47054i);
    let var_2 = -1109f;
    let var_3 = min(~(~vec2<i32>(-30760i, arg_0.c)), vec2<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, 306i, 54715i), vec3<i32>(u_input.b.x, -2147483647i, global0.c)), abs(global0.c)), _wgslsmith_mult_i32(u_input.b.x, -1i)));
    global0 = Struct_2(_wgslsmith_sub_u32(var_1.a, 47111u), all(!(!select(vec3<bool>(var_1.b, true, false), vec3<bool>(true, false, global0.b), vec3<bool>(arg_0.b, false, var_1.b)))), u_input.a);
    return abs(_wgslsmith_mult_vec4_i32(-min(vec4<i32>(-106515i, u_input.a, -1i, global0.c), _wgslsmith_div_vec4_i32(vec4<i32>(33150i, 7853i, var_1.c, arg_0.c), vec4<i32>(var_0.b, -21085i, -2147483647i, 27437i))), vec4<i32>(_wgslsmith_sub_i32(~(-21822i), arg_1.b ^ -1i), -arg_1.b, -33787i, var_3.x)));
}

fn func_2() -> Struct_1 {
    var var_0 = vec2<i32>(max(-22363i, select(u_input.b.x, ~1i, all(!vec3<bool>(true, false, global0.b)))), _wgslsmith_dot_vec4_i32(vec4<i32>(-global0.c, 19178i, _wgslsmith_mult_i32(~global0.c, firstTrailingBit(global0.c)), -19010i), func_3(Struct_2(global0.a ^ 4294967295u, true, 49458i), Struct_1(~global2.x, ~(-26224i), _wgslsmith_f_op_f32(global1.x * global1.x)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.x, global1.x))) * vec2<f32>(1364f, -1000f)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.x, global1.x)))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -374f)) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1609f, 849f)))), vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(global1.x * global1.x)), true)), any(vec3<bool>(global0.b, global0.a >= global2.x, all(vec4<bool>(global0.b, global0.b, true, global0.b)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(global1.x, -195f)), 663f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.x, -500f), vec2<f32>(global1.x, 996f)))))));
    var var_2 = _wgslsmith_sub_i32(~global0.c, func_3(Struct_2(reverseBits(1u), true, -76016i), Struct_1(global2.x, ~(-global0.c), global1.x)).x);
    var var_3 = abs(select(vec4<i32>(global0.c, 1i, var_0.x, global0.c), -min(vec4<i32>(var_0.x, -1i, -2147483647i, u_input.a), vec4<i32>(var_0.x, -57321i, u_input.b.x, u_input.b.x)), false) & -vec4<i32>(global0.c, global0.c, u_input.b.x, ~(-22617i)));
    var var_4 = abs(abs(~max(vec4<u32>(global0.a, 24871u, 3656u, 35801u), vec4<u32>(0u, 1u, global0.a, 0u)) >> (~(~vec4<u32>(14301u, 0u, 4057u, 0u)) % vec4<u32>(32u))));
    return Struct_1(505u, -(i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, u_input.b.x, 60946i, -1i), vec4<i32>(-33085i, -39896i, 1i, global0.c))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(var_1.x)))));
}

fn func_1() -> Struct_1 {
    var var_0 = false;
    var var_1 = func_2();
    global0 = Struct_2(~0u, true, u_input.b.x);
    var var_2 = func_2();
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.x, var_1.c))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c, 1528f) + vec2<f32>(-1072f, var_2.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(982f, var_2.c))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1875f, var_1.c) - vec2<f32>(1063f, global1.x)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.c, 313f), vec2<f32>(-629f, global1.x), vec2<bool>(true, global0.b)))))));
    return Struct_1(40252u, func_3(Struct_2(22480u, func_2().a <= ~global2.x, 2147483647i), Struct_1(countOneBits(var_2.a) & global0.a, _wgslsmith_mod_i32(u_input.a << (7352u % 32u), 1i), global1.x)).x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(893f, var_2.c, global0.b))), -331f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-678f - var_1.c)) - -861f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = Struct_2(var_0.a, all(select(!(!vec2<bool>(true, global0.b)), select(!vec2<bool>(true, global0.b), !vec2<bool>(global0.b, global0.b), select(vec2<bool>(false, false), vec2<bool>(false, global0.b), vec2<bool>(global0.b, true))), select(vec2<bool>(false, global0.b), select(vec2<bool>(global0.b, global0.b), vec2<bool>(false, global0.b), global0.b), vec2<bool>(false, global0.b)))), var_0.b);
    var var_1 = func_2();
    var_1 = var_0;
    var var_2 = Struct_2(var_0.a, global0.b, -21090i);
    let var_3 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.c, _wgslsmith_f_op_f32(round(var_0.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-(i32(-1i) * -var_1.b), u_input.a, var_1.b));
}

