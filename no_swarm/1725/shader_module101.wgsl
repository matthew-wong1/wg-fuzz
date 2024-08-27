struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -23469i;

var<private> global1: Struct_1 = Struct_1(vec2<i32>(-35946i, -26061i), -745f, vec4<i32>(32302i, -17143i, -1i, 20464i));

var<private> global2: array<vec2<bool>, 24>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> i32 {
    var var_0 = 0u < u_input.c;
    var var_1 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(0u, 0u), vec2<u32>(15338u, u_input.c)), vec2<u32>(u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, 1u), vec3<u32>(u_input.c, 26449u, u_input.c)))), vec2<u32>(countOneBits(u_input.c) & u_input.c, u_input.c));
    var_1 = u_input.c;
    global0 = -global1.c.x;
    let var_2 = global1.c;
    return var_2.x;
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec2<bool>, arg_3: Struct_1) -> u32 {
    let var_0 = -arg_0.c.x;
    let var_1 = arg_3;
    let var_2 = i32(-1i) * -_wgslsmith_div_i32(func_1(), _wgslsmith_mult_i32(1i, -47420i) & firstTrailingBit(global1.a.x));
    let var_3 = countOneBits(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(arg_0.c, min(vec4<i32>(arg_0.a.x, var_0, var_1.c.x, 0i), vec4<i32>(-37492i, var_0, -16378i, arg_0.a.x))) ^ var_1.c.x, ~(~arg_0.c.x)));
    let var_4 = arg_0;
    return _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(~19617u, 4294967295u)), select(~(vec2<u32>(4294967295u, u_input.c) | vec2<u32>(u_input.c, u_input.c)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(5634u, u_input.c)), arg_2));
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_0.zx)));
    global2 = array<vec2<bool>, 24>();
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(198f)) * -785f), 733f);
    let var_1 = Struct_1(vec2<i32>(u_input.a, 2147483647i), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.x - -121f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(348f - arg_0.x))))), ~(~vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(34438i, -1i)), 7265i, global1.c.x, ~0i)));
    let var_2 = _wgslsmith_sub_u32(abs(func_3(Struct_1(vec2<i32>(var_1.c.x, global1.a.x), 1186f, global1.c), 1539f, select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), var_1)), ~arg_1) ^ (arg_1 & ~(~u_input.c));
    return Struct_1(u_input.d, _wgslsmith_f_op_f32(f32(-1f) * -671f), min(global1.c, ~(firstLeadingBit(global1.c) | ~global1.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(!all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), true)), true, true, any(vec2<bool>(true, true)));
    global1 = Struct_1(~abs(vec2<i32>(func_1(), ~24097i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.b - 266f), global1.b)))) * 961f), global1.c);
    global0 = 1i;
    var var_1 = func_2(vec4<f32>(-121f, _wgslsmith_div_f32(global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1532f - -217f) - 931f)), global1.b, global1.b), abs(21312u), 1430f);
    global0 = ~global1.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(func_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(473f, global1.b, 982f, -1004f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(501f, var_1.b, -995f, -920f)))), 1u, -926f).b, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(~global1.a, abs(vec2<i32>(0i, -6163i))), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-698f, 265f, global1.b, global1.b) + vec4<f32>(-143f, var_1.b, var_1.b, -722f)), u_input.c ^ u_input.c, _wgslsmith_f_op_f32(f32(-1f) * -324f)).a.x) << (_wgslsmith_add_u32(u_input.c & ~u_input.c, 56160u) % 32u), 31392u, ~((vec2<u32>(31728u, 18650u) ^ vec2<u32>(4294967295u, u_input.c)) | _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.c), vec2<u32>(u_input.c, 4294967295u))) >> (~select(firstTrailingBit(vec2<u32>(29623u, u_input.c)), _wgslsmith_sub_vec2_u32(vec2<u32>(6810u, u_input.c), vec2<u32>(u_input.c, u_input.c)), select(var_0.xz, global2[_wgslsmith_index_u32(1u, 24u)], vec2<bool>(false, true))) % vec2<u32>(32u)));
}

