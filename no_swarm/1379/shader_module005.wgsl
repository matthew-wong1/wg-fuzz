struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8> = array<bool, 8>(true, true, false, true, true, false, false, false);

var<private> global1: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(false, true, false, true)), Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(false, true, false, false)));

var<private> global2: array<vec3<bool>, 20>;

var<private> global3: array<vec4<u32>, 16>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> vec2<u32> {
    global1 = array<Struct_1, 21>();
    return vec2<u32>(u_input.a, 1u);
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 77011u, 34140u), vec3<u32>(19345u, 102030u, 39314u)) & ~vec3<u32>(1u, 4294967295u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a) >> (select(vec3<u32>(56381u, 11228u, u_input.a), vec3<u32>(78755u, 68963u, u_input.a), arg_2.a.x) % vec3<u32>(32u))), abs(reverseBits(abs(u_input.a))));
    let var_1 = -abs(_wgslsmith_mult_vec3_i32(-max(vec3<i32>(-28959i, -1i, 56302i), vec3<i32>(-15354i, -7166i, 1i)), ~select(u_input.c, vec3<i32>(u_input.b.x, -2147483647i, 28510i), true)));
    var var_2 = arg_2.a.x;
    let var_3 = any(select(vec4<bool>(true, true, !global0[_wgslsmith_index_u32(9668u, 8u)] || false, select(var_0, var_0, true) < u_input.a), select(arg_2.a, vec4<bool>(true | arg_3.a.x, false, true, !global0[_wgslsmith_index_u32(1u, 8u)]), true), arg_3.a));
    global1 = array<Struct_1, 21>();
    return abs(_wgslsmith_div_vec4_u32(select(~(~vec4<u32>(69136u, 1u, 5467u, 1u)), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(80385u, var_0), 16u)], select(vec4<u32>(4294967295u, 1u, 1u, 4294967295u), global3[_wgslsmith_index_u32(4294967295u, 16u)], true)), 16u)], vec4<bool>(true | arg_3.a.x, all(vec2<bool>(global0[_wgslsmith_index_u32(11364u, 8u)], true)), arg_3.a.x, true)), _wgslsmith_mod_vec4_u32(~global3[_wgslsmith_index_u32(45101u, 16u)] << (vec4<u32>(var_0, 4294967295u, 37588u, 0u) % vec4<u32>(32u)), select(global3[_wgslsmith_index_u32(0u, 16u)], global3[_wgslsmith_index_u32(5545u, 16u)], vec4<bool>(true, arg_3.a.x, true, true)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(4055u, u_input.a, 4294967295u, 0u), vec4<u32>(4294967295u, 42587u, u_input.a, var_0)) % vec4<u32>(32u)))));
}

fn func_1(arg_0: bool) -> Struct_1 {
    global1 = array<Struct_1, 21>();
    var var_0 = abs(func_2(945f, global1[_wgslsmith_index_u32(67223u, 21u)]));
    let var_1 = 694f;
    let var_2 = select(vec4<u32>(~(~(var_0.x ^ 41375u)), firstLeadingBit(~_wgslsmith_mod_u32(var_0.x, var_0.x)), _wgslsmith_clamp_u32(u_input.a, 45378u & ~u_input.a, u_input.a), ~(~var_0.x)), (countOneBits(global3[_wgslsmith_index_u32(u_input.a, 16u)]) ^ (func_3(-3449i, vec4<f32>(var_1, var_1, 686f, var_1), global1[_wgslsmith_index_u32(var_0.x, 21u)], Struct_1(vec4<bool>(arg_0, true, true, false))) << (select(vec4<u32>(u_input.a, var_0.x, var_0.x, var_0.x), global3[_wgslsmith_index_u32(35069u, 16u)], vec4<bool>(arg_0, false, global0[_wgslsmith_index_u32(u_input.a, 8u)], arg_0)) % vec4<u32>(32u)))) & countOneBits(abs(vec4<u32>(19362u, u_input.a, 14765u, 21345u))), arg_0);
    let var_3 = vec3<i32>(2147483647i, _wgslsmith_mult_i32(u_input.c.x, ~(-u_input.b.x ^ 35064i)), ~(2147483647i | _wgslsmith_mod_i32(1i, u_input.b.x)));
    return global1[_wgslsmith_index_u32(~abs(u_input.a) >> (func_3(-46422i | var_3.x, vec4<f32>(-742f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - var_1)), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + 2382f))), Struct_1(vec4<bool>(arg_0, true, any(vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 8u)], false, false, false)), true)), global1[_wgslsmith_index_u32(max(_wgslsmith_add_u32(var_0.x ^ 14882u, firstTrailingBit(1u)), abs(102425u)), 21u)]).x % 32u), 21u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    global2 = array<vec3<bool>, 20>();
    var var_0 = arg_2;
    var var_1 = 36469i;
    let var_2 = arg_2;
    var var_3 = !select(arg_0.a.zx, vec2<bool>(!all(vec4<bool>(arg_3.a.x, true, arg_3.a.x, arg_0.a.x)), true), true);
    return u_input.a;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(7265u | _wgslsmith_sub_u32(u_input.a, u_input.a), abs(u_input.a)), _wgslsmith_mult_u32(_wgslsmith_mult_u32(22340u, 45112u >> (countOneBits(u_input.a) % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a ^ u_input.a, 4294967295u, 57700u), vec3<u32>(max(u_input.a, u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 16561u, 8264u), vec3<u32>(4294967295u, u_input.a, u_input.a)), u_input.a))));
    let var_1 = countOneBits(~(-u_input.c));
    var var_2 = func_1((true || global0[_wgslsmith_index_u32(3310u, 8u)]) && ((_wgslsmith_clamp_u32(0u, u_input.a, 1u) >> (abs(7438u) % 32u)) >= 4294967295u));
    var var_3 = Struct_2(_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(_wgslsmith_add_i32(-35143i, 1i), 16355i, var_1.x, _wgslsmith_sub_i32(var_1.x, 0i))), -min(~vec4<i32>(var_1.x, 0i, var_1.x, -26080i), ~vec4<i32>(-2147483647i, u_input.b.x, -63215i, u_input.c.x))));
    var var_4 = _wgslsmith_f_op_f32(step(203f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(534f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-307f))))))));
    return Struct_1(var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(global1[_wgslsmith_index_u32(func_4(Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(~15957u, 8u)], true, global0[_wgslsmith_index_u32(u_input.a >> (u_input.a % 32u), 8u)], any(vec2<bool>(false, false)))), global3[_wgslsmith_index_u32(1u, 16u)], Struct_2(abs(vec4<i32>(-1i, u_input.c.x, 27098i, u_input.b.x) & vec4<i32>(15039i, -12061i, u_input.c.x, -2341i))), func_1(any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 8u)], global0[_wgslsmith_index_u32(1u, 8u)])))), 21u)]);
    let var_1 = Struct_2(vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b.x, -11978i, -2147483647i, -6607i), vec4<i32>(u_input.b.x >> (9412u % 32u), _wgslsmith_dot_vec2_i32(u_input.b, u_input.c.zz), abs(2147483647i), 1i)), _wgslsmith_sub_i32(u_input.b.x, _wgslsmith_div_i32(u_input.b.x, ~u_input.c.x)), reverseBits(_wgslsmith_add_i32(~(-53398i), 13908i)), max(-(~u_input.b.x), countOneBits(abs(u_input.b.x)))));
    let var_2 = ~(~reverseBits(u_input.a));
    var var_3 = vec4<bool>(false, true, any(vec3<bool>(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.a, var_2), 8u)], func_1(!var_0.a.x).a.x, var_0.a.x)), var_0.a.x);
    let var_4 = global0[_wgslsmith_index_u32(select(22412u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 3899u), ~_wgslsmith_sub_vec3_u32(vec3<u32>(51052u, 4294967295u, u_input.a), vec3<u32>(var_2, var_2, 47843u))) | ~26577u, any(vec4<bool>(false, func_5(func_5(Struct_1(vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(u_input.a, 8u)])))).a.x, !var_0.a.x, var_3.x))), 8u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(u_input.a, u_input.a | u_input.a), 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1540f)), -(~vec2<i32>(1i, var_1.a.x ^ u_input.c.x)));
}

