struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18> = array<f32, 18>(757f, -1000f, 104f, 581f, -362f, 1128f, 349f, -1323f, -100f, -713f, -1726f, 909f, 559f, 1465f, 940f, 363f, -945f, 665f);

var<private> global1: Struct_1 = Struct_1(vec3<u32>(4294967295u, 103903u, 1u), 789f, -234f);

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: Struct_2 = Struct_2(Struct_1(vec3<u32>(21087u, 67608u, 1u), -1394f, 788f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<u32>) -> f32 {
    let var_0 = global3.a.c;
    let var_1 = !arg_1.x;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -401f)) + -1507f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-705f))))), global0[_wgslsmith_index_u32(4294967295u, 18u)]));
}

fn func_2() -> Struct_1 {
    global3 = Struct_2(Struct_1(global3.a.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(Struct_1(vec3<u32>(34249u, u_input.b.x, u_input.c), -849f, -782f), vec4<bool>(global2.x, true, true, false), u_input.b)), global1.b)), _wgslsmith_f_op_f32(min(-659f, global3.a.b)), select(global2.x, global2.x, true) && !global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.c, 1174f) * _wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 18u)], 1000f)) - _wgslsmith_div_f32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 1u), 18u)], 344f))));
    return global3.a;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> bool {
    var var_0 = Struct_2(arg_2);
    var var_1 = arg_1;
    var_0 = Struct_2(func_2());
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_2, !vec4<bool>(arg_3, true, global2.x, arg_3), _wgslsmith_mult_vec4_u32(vec4<u32>(31041u, 0u, 37363u, global1.a.x), u_input.b)))) + var_0.a.c));
    global0 = array<f32, 18>();
    return all(vec2<bool>(true, true));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    global2 = vec2<bool>(!global2.x & func_4(-(~u_input.a), _wgslsmith_f_op_f32(-arg_0.a.c), func_2(), true), !(arg_0.a.a.x <= global1.a.x));
    global1 = func_2();
    let var_0 = ~vec3<u32>(_wgslsmith_add_u32(arg_0.a.a.x, 4294967295u), _wgslsmith_sub_u32(firstLeadingBit(10408u) | _wgslsmith_dot_vec3_u32(vec3<u32>(global3.a.a.x, 4294967295u, 21886u), vec3<u32>(global1.a.x, 0u, global1.a.x)), func_2().a.x << (~1u % 32u)), u_input.c);
    global1 = Struct_1(vec3<u32>(_wgslsmith_clamp_u32(21054u, global3.a.a.x, 4294967295u), arg_0.a.a.x & 0u, _wgslsmith_dot_vec3_u32(global3.a.a, ~(~arg_0.a.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2062f, arg_0.a.b))), global0[_wgslsmith_index_u32(arg_0.a.a.x, 18u)]);
    let var_1 = _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(global1.a.x, 18u)]));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global3.a);
    global0 = array<f32, 18>();
    let var_1 = func_1(Struct_2(Struct_1(abs(vec3<u32>(1u, var_0.a.a.x, global3.a.a.x) | var_0.a.a), global0[_wgslsmith_index_u32(select(global3.a.a.x, 7814u, 21958u > global1.a.x), 18u)], var_0.a.b)));
    global1 = var_0.a;
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -20992i, firstLeadingBit(-40126i), select(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(50248i, u_input.a, u_input.a), vec3<i32>(u_input.a, 16494i, u_input.a)), true) << (_wgslsmith_sub_u32(~27246u, select(var_1.a.x, u_input.d.x, false)) % 32u)), (vec4<i32>(_wgslsmith_mod_i32(u_input.a, -37205i), u_input.a, u_input.a, u_input.a) & ~(vec4<i32>(-1i, 6136i, u_input.a, u_input.a) << (u_input.b % vec4<u32>(32u)))) >> (~(vec4<u32>(1u, 61741u, global1.a.x, var_0.a.a.x) >> (min(u_input.b, vec4<u32>(global1.a.x, 29293u, 0u, 12740u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_3 = true;
    var var_4 = Struct_2(Struct_1(select(var_0.a.a, var_1.a, !(!vec3<bool>(false, true, var_3))), var_1.c, _wgslsmith_f_op_f32(-683f - _wgslsmith_div_f32(-122f, -253f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(1u, var_1.a.x), ~firstLeadingBit(_wgslsmith_clamp_vec3_i32(max(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, 3794i)), ~vec3<i32>(-50874i, 0i, u_input.a), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, -2147483647i, u_input.a), vec3<i32>(u_input.a, -46196i, u_input.a)))), var_0.a.c);
}

