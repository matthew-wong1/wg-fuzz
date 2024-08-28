struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 6>;

var<private> global1: array<vec3<bool>, 28>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    global0 = array<vec4<u32>, 6>();
    global1 = array<vec3<bool>, 28>();
    var var_0 = countOneBits(_wgslsmith_add_vec2_i32(select(vec2<i32>(~u_input.a, abs(2147483647i)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(0i, u_input.d)), !vec2<bool>(false, arg_0)), vec2<i32>(1i, 1i)));
    var_0 = -vec2<i32>(-43706i, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-1i, 1i)), select(vec2<i32>(u_input.d, 2147483647i), ~vec2<i32>(var_0.x, 0i), true)));
    var var_1 = global0[_wgslsmith_index_u32(u_input.b.x, 6u)];
    return Struct_1(vec2<bool>(false, arg_0), select(vec4<bool>(!(true || arg_0), true, false, !arg_0), vec4<bool>(any(!vec2<bool>(arg_0, arg_0)), 1u < firstLeadingBit(var_1.x), false, !all(vec2<bool>(false, true))), arg_0), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-592f))))))));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: u32) -> vec3<u32> {
    let var_0 = Struct_2(Struct_1(select(vec2<bool>(true, true), !func_2(true).a, func_2(all(global1[_wgslsmith_index_u32(36367u, 28u)])).b.zy), !(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -575f)))), true);
    let var_1 = ~vec4<u32>(min(arg_0 | arg_2, 75786u) >> (_wgslsmith_add_u32(~u_input.b.x, arg_2 | 1u) % 32u), 1u, _wgslsmith_mult_u32(countOneBits(1u), arg_2 & u_input.c), _wgslsmith_add_u32(0u, reverseBits(arg_2)));
    return vec3<u32>(~_wgslsmith_dot_vec4_u32(var_1, abs(~global0[_wgslsmith_index_u32(4294967295u, 6u)])), arg_0, u_input.c);
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = select(vec4<bool>(select(true, true, false), true, true, false), vec4<bool>(!all(vec4<bool>(true, false, true, false)), -13454i >= _wgslsmith_div_i32(-u_input.a, 0i), false, true), true);
    var var_1 = func_2(!any(vec3<bool>(true, all(vec4<bool>(var_0.x, true, true, true)), var_0.x)));
    var var_2 = reverseBits(func_3(~29947u, u_input.a, 34507u));
    let var_3 = 3637i;
    let var_4 = ~select(func_3(29370u >> ((4791u << (u_input.b.x % 32u)) % 32u), _wgslsmith_add_i32(u_input.d, 9433i) | (10978i & u_input.a), 58241u).xz, ~vec2<u32>(var_2.x, var_2.x), var_1.b.x);
    return Struct_2(Struct_1(var_0.wy, var_1.b, 213f), var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 28>();
    global1 = array<vec3<bool>, 28>();
    let var_0 = _wgslsmith_mod_u32(u_input.b.x, 1u);
    let var_1 = _wgslsmith_mod_i32(-1i, -u_input.a);
    let var_2 = func_1(~(-var_1));
    var var_3 = vec2<u32>(var_0, var_0) >> ((firstTrailingBit(~(u_input.b.xw | vec2<u32>(33321u, u_input.b.x))) ^ ~reverseBits(vec2<u32>(1u, 1u))) % vec2<u32>(32u));
    var var_4 = select(vec4<bool>(false, select(true, false, true), var_2.b, all(select(!global1[_wgslsmith_index_u32(var_3.x, 28u)], vec3<bool>(true, true, var_2.b), vec3<bool>(var_2.b, var_2.b, true)))), !vec4<bool>((-128f != var_2.a.c) && var_2.b, var_2.a.b.x, true, select(var_2.b, select(true, var_2.a.a.x, false), var_3.x > 1u)), var_2.a.b);
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -(~var_1));
}

