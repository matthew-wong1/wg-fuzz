struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2>;

var<private> global1: Struct_1;

var<private> global2: array<bool, 1> = array<bool, 1>(false);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2() -> Struct_1 {
    global2 = array<bool, 1>();
    var var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(1i, (i32(-1i) * -u_input.a) | _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global1.b.x, global1.b.x), vec2<i32>(-63956i, u_input.a)), vec2<i32>(-1i, 42961i)), _wgslsmith_div_i32(0i, u_input.a), abs(-1i)), ~vec4<i32>(-27199i, _wgslsmith_dot_vec2_i32(global1.b, global1.b), 1i, ~_wgslsmith_mod_i32(17830i, 1i)));
    let var_1 = !vec3<bool>(true, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * global1.e) <= -1000f);
    let var_2 = vec4<u32>(u_input.b, ~_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.b, u_input.b), 4294967295u), u_input.b, ~select(u_input.b, u_input.b, var_1.x));
    let var_3 = reverseBits(0u);
    return global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b >> (var_3 % 32u), var_2.x) & ~(~var_2.x), 2u)];
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> f32 {
    let var_0 = arg_0;
    global2 = array<bool, 1>();
    global0 = array<Struct_1, 2>();
    global2 = array<bool, 1>();
    var var_1 = func_2();
    return _wgslsmith_f_op_f32(f32(-1f) * -502f);
}

fn func_3(arg_0: u32) -> f32 {
    global2 = array<bool, 1>();
    var var_0 = select(!select(!vec4<bool>(false, global2[_wgslsmith_index_u32(arg_0, 1u)], global2[_wgslsmith_index_u32(1u, 1u)], true), !vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 1u)], global2[_wgslsmith_index_u32(1u, 1u)], global2[_wgslsmith_index_u32(490u, 1u)], global2[_wgslsmith_index_u32(u_input.b, 1u)]), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0, u_input.b, 1u), ~vec3<u32>(2121u, 10221u, 5260u)), 1u)]), !vec4<bool>(true, true, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 31240u, arg_0)), 1u)] || false, !(!global2[_wgslsmith_index_u32(1u, 1u)])), true);
    let var_1 = vec3<bool>(global2[_wgslsmith_index_u32(1u, 1u)], select(true, ~1u == arg_0, any(vec3<bool>(!global2[_wgslsmith_index_u32(u_input.b, 1u)], any(vec3<bool>(global2[_wgslsmith_index_u32(arg_0, 1u)], false, var_0.x)), true))), any(!(!(!vec3<bool>(var_0.x, var_0.x, global2[_wgslsmith_index_u32(u_input.b, 1u)])))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(round(global1.d)), ~global1.b | firstLeadingBit(vec2<i32>(57647i, 2147483647i)), -1000f, _wgslsmith_f_op_f32(-global1.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32((arg_0 >> (4294967295u % 32u)) & ~u_input.b, 2u)], true, func_2()))));
    let var_3 = -_wgslsmith_div_i32(-34949i, countOneBits(-_wgslsmith_dot_vec4_i32(vec4<i32>(226i, 2147483647i, 1i, var_2.b.x), vec4<i32>(-1i, u_input.a, -42491i, global1.b.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1290f, _wgslsmith_f_op_f32(-1f)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec3<u32>) -> f32 {
    global1 = Struct_1(446f, -arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(251f - _wgslsmith_f_op_f32(f32(-1f) * -1988f))), _wgslsmith_f_op_f32(min(arg_0.c, _wgslsmith_f_op_f32(func_1(func_2(), global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(76332u, 4294967295u, u_input.b), vec3<u32>(arg_3.x, 53072u, u_input.b)), 1u)], arg_1)))), arg_0.c);
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -558f))), ~global1.b, _wgslsmith_f_op_f32(min(175f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1114f)))), _wgslsmith_f_op_f32(arg_0.a * global1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-371f * arg_1.d)));
    global1 = global0[_wgslsmith_index_u32(~arg_3.x, 2u)];
    var_0 = arg_0;
    let var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_div_u32(~arg_3.x, ~79112u), arg_3.x), _wgslsmith_div_vec2_u32(arg_3.xz, vec2<u32>(max(arg_3.x, arg_3.x), u_input.b)) << (vec2<u32>(arg_3.x & ~u_input.b, 4294967295u) % vec2<u32>(32u)));
    return global1.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(Struct_1(-1553f, global1.b, global1.c, -1449f, global1.e), true, global0[_wgslsmith_index_u32(u_input.b, 2u)])), -1069f)), -(~global1.b), -1373f, func_2().d, _wgslsmith_f_op_f32(func_3(u_input.b))), global0[_wgslsmith_index_u32(4294967295u, 2u)], !(!vec2<bool>(global2[_wgslsmith_index_u32(0u, 1u)], false)), vec3<u32>(~u_input.b, _wgslsmith_div_u32(u_input.b << (u_input.b % 32u), 1u), u_input.b))));
    let var_1 = _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(u_input.b, 15791u, u_input.b, 0u)), ~vec4<u32>(21116u, u_input.b, u_input.b, 34404u)) ^ ~countOneBits(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(u_input.b, 3195u, u_input.b)), _wgslsmith_div_u32(89718u, 40476u), 0u, ~u_input.b) & (~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) << (vec4<u32>(4294967295u, u_input.b, 95309u, 30747u) % vec4<u32>(32u)))), 1u);
    var var_2 = !global2[_wgslsmith_index_u32(~4294967295u, 1u)];
    let var_3 = vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 1u)], all(vec2<bool>(false, true)));
    global2 = array<bool, 1>();
    let var_4 = -global1.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(0i, global1.b.x, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_4.x, -13385i), vec2<i32>(global1.b.x, 27067i)), ~vec2<i32>(-1i, -1i)), 2147483647i) ^ (vec4<i32>(reverseBits(13492i), _wgslsmith_clamp_i32(global1.b.x, 80570i, var_4.x), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, global1.b.x, -2147483647i), vec4<i32>(-6109i, 1i, var_4.x, u_input.a)), 0i >> (var_1 % 32u)) >> ((~vec4<u32>(var_1, 0u, 44377u, var_1) ^ ~vec4<u32>(48378u, 4294967295u, u_input.b, 24494u)) % vec4<u32>(32u))), ~firstLeadingBit(vec3<u32>(countOneBits(var_1), 1u, firstTrailingBit(u_input.b))), _wgslsmith_div_vec3_i32(select(-vec3<i32>(global1.b.x, 15594i, -1i) & ~vec3<i32>(global1.b.x, global1.b.x, 56829i), _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(0i, -2147483647i, u_input.a)), ~vec3<i32>(u_input.a, var_4.x, var_4.x)), false), _wgslsmith_mod_vec3_i32(-(~vec3<i32>(781i, global1.b.x, var_4.x)), ~(~vec3<i32>(u_input.a, u_input.a, 4872i)))));
}

