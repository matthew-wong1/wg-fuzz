struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 27> = array<vec3<i32>, 27>(vec3<i32>(-1i, -1i, -11846i), vec3<i32>(-1i, 1i, 61140i), vec3<i32>(-1i, 2147483647i, 191i), vec3<i32>(i32(-2147483648), 1i, -11965i), vec3<i32>(2147483647i, 1939i, i32(-2147483648)), vec3<i32>(-31191i, i32(-2147483648), 14697i), vec3<i32>(i32(-2147483648), 0i, 11068i), vec3<i32>(i32(-2147483648), 16524i, 0i), vec3<i32>(-11820i, -11470i, i32(-2147483648)), vec3<i32>(-1i, 47480i, 0i), vec3<i32>(-55240i, -33303i, 0i), vec3<i32>(2147483647i, -1i, 1i), vec3<i32>(2147483647i, 0i, 29950i), vec3<i32>(2147483647i, -5407i, -20247i), vec3<i32>(-1i, -66833i, -24128i), vec3<i32>(-31530i, -19259i, -1i), vec3<i32>(-28862i, -20295i, 51716i), vec3<i32>(i32(-2147483648), -1i, 46723i), vec3<i32>(0i, 18984i, 0i), vec3<i32>(0i, 2147483647i, 8372i), vec3<i32>(i32(-2147483648), -21431i, i32(-2147483648)), vec3<i32>(0i, 27151i, 20219i), vec3<i32>(2147483647i, 1i, -75052i), vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), vec3<i32>(4664i, -1i, i32(-2147483648)), vec3<i32>(6508i, i32(-2147483648), i32(-2147483648)), vec3<i32>(1i, 5001i, i32(-2147483648)));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> bool {
    return 326u >= ~((_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(21558u, u_input.a)) << (u_input.a % 32u)) << (4294967295u % 32u));
}

fn func_2(arg_0: i32, arg_1: u32) -> Struct_2 {
    return Struct_2(!select(vec2<bool>(any(vec4<bool>(false, false, false, true)), func_3(true)), select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false)), select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), true)));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: vec3<bool>) -> i32 {
    let var_0 = Struct_3(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.c.yy, u_input.c.zx), vec2<i32>(1i, 22463i)), func_2((_wgslsmith_mult_i32(u_input.c.x, u_input.c.x) | arg_2.a.x) << (reverseBits(~u_input.a) % 32u), 9059u), Struct_2(select(vec2<bool>(func_3(arg_0.x), false == arg_2.b.a.x), arg_2.b.a, false)));
    var var_1 = all(select(select(arg_3, arg_3, !select(vec3<bool>(arg_2.b.a.x, arg_2.b.a.x, true), vec3<bool>(false, var_0.b.a.x, true), vec3<bool>(false, true, false))), select(!vec3<bool>(var_0.b.a.x, false, false), vec3<bool>(false, arg_2.c.a.x, true), false), select(vec3<bool>(var_0.a.x > 2147483647i, false, any(vec2<bool>(arg_2.b.a.x, arg_0.x))), arg_3, arg_3.x)));
    global0 = array<vec3<i32>, 27>();
    var_1 = all(vec2<bool>(arg_3.x, true));
    let var_2 = (arg_1.x ^ u_input.a) << (arg_1.x % 32u);
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<bool>(u_input.b <= max(1i, abs(-1i)), true));
    global0 = array<vec3<i32>, 27>();
    global0 = array<vec3<i32>, 27>();
    let var_1 = select(~u_input.a, _wgslsmith_clamp_u32(0u, ~(~u_input.a), u_input.a) | _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.a, 4294967295u) << (~vec2<u32>(57921u, u_input.a) % vec2<u32>(32u))), var_0.a.x);
    global0 = array<vec3<i32>, 27>();
    global0 = array<vec3<i32>, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(reverseBits(func_1(vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x), vec3<u32>(var_1, var_1, var_1), Struct_3(u_input.c.xx, Struct_2(vec2<bool>(var_0.a.x, true)), Struct_2(vec2<bool>(var_0.a.x, var_0.a.x))), vec3<bool>(var_0.a.x, false, var_0.a.x)))), _wgslsmith_div_i32(-13034i, 2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -510f), _wgslsmith_f_op_f32(187f - 1484f), -510f, 1451f))), abs(~vec4<u32>(var_1, u_input.a, 11837u, u_input.a)) ^ ~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1, var_1), vec2<u32>(61268u, 4294967295u)), countOneBits(1u), 0u, u_input.a), -905f);
}

