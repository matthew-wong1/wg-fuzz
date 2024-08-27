struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: vec2<i32>,
    e: u32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<f32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7>;

var<private> global1: u32 = 55498u;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: i32, arg_3: vec4<f32>) -> u32 {
    global1 = reverseBits(~(~reverseBits(arg_1.b)));
    let var_0 = arg_1;
    let var_1 = arg_1.d;
    global0 = array<f32, 7>();
    let var_2 = true;
    return var_0.d.a.c;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: f32, arg_3: vec3<f32>) -> vec4<u32> {
    var var_0 = !(!vec4<bool>(arg_0.d.b, all(!vec2<bool>(arg_0.a, arg_0.a)), !arg_0.d.b, arg_0.c >= u_input.d.x));
    let var_1 = 15505i;
    global1 = 25831u;
    var_0 = !vec4<bool>(false, true, !var_0.x, arg_0.d.b && arg_0.a);
    global0 = array<f32, 7>();
    return ~firstLeadingBit(firstTrailingBit(vec4<u32>(0u, 1u, arg_1.b, 56474u))) << ((_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.b, 4294967295u, 4294967295u, 0u), vec4<u32>(arg_1.c, 84826u, 59364u, arg_1.b)), reverseBits(vec4<u32>(0u, 75057u, 4294967295u, 4294967295u))), _wgslsmith_mult_vec4_u32(vec4<u32>(73413u, arg_1.b, u_input.d.x, 0u), vec4<u32>(23362u, 1u, 1u, u_input.d.x)), vec4<u32>(~39187u, ~u_input.d.x, 0u, 38983u)) & (vec4<u32>(firstLeadingBit(arg_0.b), 64852u, 4294967295u, 0u) | vec4<u32>(func_3(vec2<f32>(460f, arg_2), Struct_3(false, 1u, 0u, arg_0.d), -2469i, vec4<f32>(-1045f, arg_3.x, 1127f, global0[_wgslsmith_index_u32(5504u, 7u)])), 4294967295u, max(0u, arg_0.d.e), ~1u))) % vec4<u32>(32u));
}

fn func_1(arg_0: u32, arg_1: vec3<f32>) -> vec4<u32> {
    var var_0 = u_input.a;
    global1 = ~_wgslsmith_mult_u32(~(arg_0 << (arg_0 % 32u)), 4294967295u);
    let var_1 = 2147483647i;
    global0 = array<f32, 7>();
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(arg_0, 7u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(65525u, 7u)] - 1266f) + _wgslsmith_f_op_f32(round(597f)))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -551f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0, 7u)] + global0[_wgslsmith_index_u32(0u, 7u)]) - arg_1.x), 1521f)));
    return ~abs(max(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, arg_0, 0u, arg_0), func_2(Struct_3(true, arg_0, u_input.d.x, Struct_2(Struct_1(vec4<i32>(var_1, var_1, -16894i, var_0.x), 107769u, 0u), false, false, vec2<i32>(-25181i, u_input.a.x), u_input.d.x)), Struct_1(vec4<i32>(var_1, -3346i, u_input.b, -31371i), 4294967295u, arg_0), arg_1.x, vec3<f32>(global0[_wgslsmith_index_u32(arg_0, 7u)], -443f, -821f))), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(87195u, u_input.d.x, arg_0, arg_0)), vec4<u32>(2077u, 55679u, u_input.d.x, 43914u) >> (vec4<u32>(u_input.d.x, 64165u, u_input.d.x, 38424u) % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.d.x;
    let var_0 = _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(reverseBits(abs(-21520i)), min(u_input.e.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 0i), vec2<i32>(u_input.c, u_input.c)))), vec2<i32>(u_input.e.x, u_input.a.x)), ~vec2<i32>(-1i >> (1u % 32u), 13989i));
    global0 = array<f32, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.d.x, 1u, u_input.d.x, 5536u), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x)) << (func_1(~4294967295u, vec3<f32>(830f, 195f, -355f)) % vec4<u32>(32u)), min(~vec4<u32>(u_input.d.x, 27694u, u_input.d.x, u_input.d.x) & (vec4<u32>(81390u, 21806u, u_input.d.x, 64314u) | vec4<u32>(41740u, u_input.d.x, 0u, 41942u)), vec4<u32>(u_input.d.x, 0u, 1830u, 1u) ^ ~vec4<u32>(1u, 1u, u_input.d.x, 10800u)), ~_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 3997u, u_input.d.x, u_input.d.x), vec4<u32>(4294967295u, u_input.d.x, 4294967295u, u_input.d.x)), max(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 29189u), vec4<u32>(0u, 66930u, u_input.d.x, 17358u)))), var_0.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 7u)], global0[_wgslsmith_index_u32(u_input.d.x, 7u)]))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1092f, 1379f))), vec2<f32>(1f, 1f))), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-633f, -1000f)))), true)), min(select(~vec3<i32>(u_input.e.x, var_0.x, 1i), u_input.a, vec3<bool>(false, true, true)), _wgslsmith_sub_vec3_i32(u_input.a, vec3<i32>(firstTrailingBit(var_0.x), reverseBits(var_0.x), ~var_0.x))), u_input.d.x);
}

