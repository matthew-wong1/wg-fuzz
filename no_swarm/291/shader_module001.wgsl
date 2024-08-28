struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1;

var<private> global2: array<vec4<i32>, 32>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3) -> i32 {
    var var_0 = global2[_wgslsmith_index_u32(arg_0.c, 32u)];
    var var_1 = vec3<i32>(2147483647i, ~_wgslsmith_mod_i32(max(5565i, 1i), ~var_0.x), global1.a.x);
    let var_2 = arg_0;
    let var_3 = 132764u;
    var var_4 = Struct_4(_wgslsmith_add_vec2_u32(vec2<u32>(~_wgslsmith_mult_u32(14809u, 0u), _wgslsmith_div_u32(75248u, u_input.b << (arg_0.c % 32u))), vec2<u32>(u_input.b, 0u)), 1u, Struct_2(vec4<u32>(70435u, select(select(u_input.b, arg_0.c, true), arg_0.c & var_2.c, true), _wgslsmith_div_u32(var_3, ~var_2.c), var_2.c), Struct_1(global1.a >> (firstLeadingBit(vec4<u32>(4294967295u, u_input.b, arg_0.c, arg_0.c)) % vec4<u32>(32u))), -abs(global1.a.x) & 1i, Struct_1(~(~global1.a))));
    return firstTrailingBit(-34061i);
}

fn func_2() -> Struct_2 {
    global1 = Struct_1(global2[_wgslsmith_index_u32(u_input.a, 32u)] >> (firstLeadingBit(vec4<u32>(1u, u_input.b, u_input.a, 35497u)) % vec4<u32>(32u)));
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-275f, -1227f) * _wgslsmith_f_op_f32(341f + 1118f)))), -1034f);
    global0 = false;
    global1 = Struct_1(vec4<i32>(global1.a.x, global1.a.x, -func_3(Struct_3(8103i, var_0, u_input.a)), global1.a.x));
    return Struct_2(vec4<u32>(45825u, ~39799u, ~u_input.a, ~(_wgslsmith_sub_u32(1u, 1u) & u_input.a)), Struct_1(~vec4<i32>(-694i, select(global1.a.x, 36107i, false), 40414i, i32(-1i) * -33260i)), ~(-global1.a.x), Struct_1(global1.a & reverseBits(~vec4<i32>(global1.a.x, global1.a.x, 2147483647i, global1.a.x))));
}

fn func_4(arg_0: Struct_4) -> Struct_1 {
    let var_0 = global1.a.x >> (u_input.b % 32u);
    return arg_0.c.d;
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    var var_0 = -10044i;
    global1 = func_4(Struct_4(_wgslsmith_mult_vec2_u32(abs(vec2<u32>(1u, 1u)), vec2<u32>(22951u, u_input.a)), u_input.a & u_input.b, func_2()));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -612f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(992f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(746f, -1064f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(799f + 1000f)))) + _wgslsmith_f_op_f32(sign(-603f))), 1209f);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -493f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-988f + 485f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * var_1.x) + 1f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(-471f - -368f)))), _wgslsmith_f_op_f32(var_1.x - -299f));
    let var_3 = abs(abs(1u));
    return Struct_2(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, 4294967295u, u_input.a) | vec4<u32>(u_input.b, ~1u, ~0u, 0u), (reverseBits(vec4<u32>(u_input.b, 1u, u_input.b, var_3)) ^ ~vec4<u32>(var_3, 29570u, var_3, 22740u)) ^ (vec4<u32>(u_input.a, u_input.a, u_input.a, 0u) << (~vec4<u32>(98599u, 27285u, 1u, 1u) % vec4<u32>(32u)))), Struct_1(vec4<i32>(~1i, 23722i, (-2147483647i | global1.a.x) >> (~u_input.b % 32u), ~_wgslsmith_add_i32(-1i, 2147483647i))), ~(~2147483647i), Struct_1(vec4<i32>(0i, 1i, -(~14992i), select(-1i, ~(-35303i), true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec2<bool>(all(vec3<bool>(true, true, false)), !all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false))));
    global2 = array<vec4<i32>, 32>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -401f), 255f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(319f - -875f) * -904f) - 172f))));
    global2 = array<vec4<i32>, 32>();
    var var_2 = true;
    let var_3 = _wgslsmith_div_u32(_wgslsmith_add_u32(0u, u_input.a), ~(~func_2().a.x));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(632f, var_1.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.x, -1000f), vec2<f32>(var_1.x, var_1.x), vec2<bool>(true, false))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(445f, var_1.x), vec2<f32>(var_1.x, var_1.x)))))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(776f, -1959f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) + vec2<f32>(var_1.x, 2002f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1.x), ~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(reverseBits(var_0.a.zzz), ~var_0.a.xzz), ~_wgslsmith_mod_vec3_u32(var_0.a.zww, vec3<u32>(2450u, 8178u, 4294967295u))));
}

