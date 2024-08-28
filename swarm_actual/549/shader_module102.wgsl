struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: array<i32, 1> = array<i32, 1>(-22067i);

var<private> global1: array<Struct_1, 6>;

var<private> global2: array<Struct_2, 32>;

var<private> global3: vec4<i32> = vec4<i32>(0i, -65652i, 0i, 1i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_3) -> vec4<u32> {
    global2 = array<Struct_2, 32>();
    global1 = array<Struct_1, 6>();
    var var_0 = arg_0.b;
    global1 = array<Struct_1, 6>();
    let var_1 = global2[_wgslsmith_index_u32(4294967295u, 32u)];
    return firstTrailingBit(~(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.c, var_0.c, 4294967295u, 34357u), vec4<u32>(var_0.c, 0u, 60663u, var_0.c))) ^ vec4<u32>(66289u, ~0u, 0u, ~27052u)));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = Struct_3(arg_0.b.x, Struct_1(arg_0.a, !arg_0.b, ~min(_wgslsmith_mod_u32(arg_0.c, 77276u), _wgslsmith_sub_u32(arg_0.c, arg_0.c))), !arg_0.a, vec4<i32>(4086i, 2147483647i, _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), i32(-1i) * -55652i), max(2147483647i, global0[_wgslsmith_index_u32(53439u, 1u)])), !(!(!vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x))));
    global0 = array<i32, 1>();
    var var_1 = Struct_1(var_0.c, !(!vec2<bool>(arg_0.a && true, all(vec4<bool>(false, var_0.a, true, var_0.a)))), min(~(~var_0.b.c) & _wgslsmith_div_u32(countOneBits(0u), 562u), _wgslsmith_mult_u32(abs(_wgslsmith_mult_u32(19322u, 0u)), ~var_0.b.c)));
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_0.c, 4294967295u) | vec3<u32>(0u, 0u, arg_0.c), ~vec3<u32>(var_1.c, var_0.b.c, 4294967295u)), var_0.b.c)) ^ _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(74239u, arg_0.c) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(16959u, var_1.c), vec2<u32>(4294967295u, 12277u)) % vec2<u32>(32u)), ~vec2<u32>(arg_0.c, var_1.c) & vec2<u32>(92545u, var_0.b.c)), 0u), 32u)];
    return select(vec3<bool>(arg_0.a, arg_0.a, all(vec4<bool>(false, arg_0.a, true, all(vec2<bool>(var_0.c, false))))), select(vec3<bool>(var_1.a, select(var_0.b.c < 39560u, arg_0.a | false, any(vec3<bool>(var_1.a, var_0.e.x, arg_0.a))), any(vec4<bool>(true, false, false, var_0.e.x))), var_0.e, var_0.e.x), select(!(!vec3<bool>(var_0.e.x, var_1.b.x, var_2.b.a)), vec3<bool>(firstLeadingBit(178069u) > arg_0.c, var_0.e.x, all(select(vec3<bool>(true, arg_0.a, true), vec3<bool>(false, false, false), var_0.e))), vec3<bool>(!(1u == var_2.b.c), true | arg_0.a, all(select(vec3<bool>(var_0.e.x, var_0.a, var_1.a), var_0.e, var_0.e)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec4<f32>) -> vec4<bool> {
    let var_0 = Struct_1(true, arg_0.b, _wgslsmith_dot_vec4_u32(~func_2(Struct_3(true, Struct_1(arg_1.a, vec2<bool>(arg_1.b.x, true), 1u), false, u_input.a, vec3<bool>(true, arg_1.b.x, arg_0.b.x))), ~(~(~vec4<u32>(arg_1.c, 1u, 0u, arg_0.c)))));
    let var_1 = true;
    var var_2 = arg_1;
    var var_3 = Struct_3(false, Struct_1(false, var_0.b, 46876u), var_2.b.x, abs(_wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(_wgslsmith_mod_i32(2147483647i, 2147483647i), -66251i, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_2.c, var_0.c), 1u)], ~18504i))), select(select(!(!vec3<bool>(arg_0.b.x, true, false)), select(!vec3<bool>(var_2.a, true, true), vec3<bool>(arg_1.a, arg_1.a, arg_0.a), !vec3<bool>(true, arg_0.b.x, false)), false), select(vec3<bool>(all(arg_0.b), arg_0.b.x, any(vec3<bool>(var_0.b.x, arg_0.a, var_2.a))), vec3<bool>(var_0.a, arg_3.x != arg_3.x, !var_0.a), select(func_3(Struct_1(false, vec2<bool>(arg_0.a, var_0.b.x), arg_1.c)), !vec3<bool>(false, false, arg_0.a), func_3(Struct_1(var_1, vec2<bool>(var_2.b.x, arg_1.b.x), 4294967295u)).x)), any(!vec4<bool>(true, var_0.b.x, false, false))));
    global3 = vec4<i32>(1i, abs(~(-global3.x)) & (i32(-1i) * -24841i), 0i, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(max(1u, func_2(Struct_3(arg_1.a, Struct_1(false, var_3.e.zz, 1u), arg_0.a, var_3.d, var_3.e)).x), 4294967295u), 1u)]);
    return select(vec4<bool>(!all(vec2<bool>(false, false)), all(!(!vec3<bool>(false, false, var_0.b.x))), !(!all(vec4<bool>(true, true, false, true))), select(true, true, !any(vec3<bool>(var_3.a, arg_0.a, var_3.e.x)))), select(select(vec4<bool>(func_3(Struct_1(var_2.b.x, var_2.b, var_0.c)).x, true, true, arg_0.b.x), vec4<bool>(arg_1.a, var_3.a, true, true), select(false, select(false, true, true), any(vec3<bool>(true, var_0.b.x, false)))), vec4<bool>(false, false || var_0.a, all(vec3<bool>(false, true, false)), true), true), !((_wgslsmith_f_op_f32(arg_3.x + arg_3.x) < -1996f) | var_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(~(~1u), 6u)];
    var var_1 = !var_0.b;
    let var_2 = any(select(select(vec4<bool>(var_1.x, var_0.c > var_0.c, true, all(vec2<bool>(var_0.b.x, var_1.x))), !(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_0.b.x)), true), func_1(Struct_1(!var_1.x, select(vec2<bool>(var_1.x, var_0.a), var_0.b, var_0.a), countOneBits(var_0.c)), global1[_wgslsmith_index_u32(0u, 6u)], u_input.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(245f, -501f, -2793f, 955f)))), vec4<bool>(!func_1(Struct_1(true, vec2<bool>(var_1.x, false), 45878u), Struct_1(var_0.a, var_0.b, 0u), 2147483647i, vec4<f32>(-425f, -971f, -744f, -1000f)).x, func_3(Struct_1(true, var_0.b, 9887u)).x, true, true)));
    let var_3 = global2[_wgslsmith_index_u32(44691u, 32u)];
    let x = u_input.a;
    s_output = StorageBuffer(36453i);
}

