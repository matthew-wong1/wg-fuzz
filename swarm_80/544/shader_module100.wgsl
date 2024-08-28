struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<i32> = vec2<i32>(1i, 5559i);

var<private> global2: array<vec3<u32>, 18> = array<vec3<u32>, 18>(vec3<u32>(28445u, 4294967295u, 4294967295u), vec3<u32>(110398u, 100229u, 0u), vec3<u32>(9845u, 13231u, 6319u), vec3<u32>(11900u, 0u, 0u), vec3<u32>(4294967295u, 24348u, 32140u), vec3<u32>(4294967295u, 83090u, 0u), vec3<u32>(1933u, 0u, 63809u), vec3<u32>(1u, 4294967295u, 33908u), vec3<u32>(4294967295u, 12976u, 1u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(62756u, 2600u, 15045u), vec3<u32>(24548u, 79523u, 1u), vec3<u32>(27898u, 0u, 94867u), vec3<u32>(1u, 17330u, 30947u), vec3<u32>(4294967295u, 1u, 29696u), vec3<u32>(1u, 1u, 122u), vec3<u32>(12347u, 1u, 4294967295u));

var<private> global3: Struct_3;

var<private> global4: array<bool, 9> = array<bool, 9>(false, false, true, true, false, true, false, true, false);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: bool, arg_3: vec4<i32>) -> i32 {
    let var_0 = Struct_1(arg_1.b.a, !vec2<bool>(!all(vec4<bool>(arg_0, arg_0, false, global4[_wgslsmith_index_u32(1u, 9u)])), _wgslsmith_f_op_f32(global3.b.x - 103f) <= _wgslsmith_f_op_f32(round(global3.b.x))), vec2<bool>(any(select(vec4<bool>(false, false, false, arg_0), !vec4<bool>(global0.b.b.x, true, global3.a, arg_0), select(vec4<bool>(arg_1.a.b.x, false, arg_1.a.c.x, true), vec4<bool>(true, true, false, global0.b.c.x), false))), arg_3.x > 2147483647i));
    let var_1 = Struct_3(var_0.c.x, global3.b);
    global0 = arg_1;
    global0 = arg_1;
    return -_wgslsmith_div_i32(77605i, arg_3.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec3<bool>, arg_3: i32) -> vec2<f32> {
    let var_0 = -(~(~vec3<i32>(-2147483647i, arg_0.a, global0.b.a) & -vec3<i32>(arg_3, arg_0.a, -2147483647i)) | ~(~firstTrailingBit(vec3<i32>(global1.x, arg_0.a, 54689i))));
    global4 = array<bool, 9>();
    global2 = array<vec3<u32>, 18>();
    global2 = array<vec3<u32>, 18>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1209f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1047f), -273f)))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1f, global3.b.x)), global3.b.x))) + _wgslsmith_f_op_f32(max(230f, global3.b.x)));
    return _wgslsmith_f_op_vec2_f32(global3.b * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b.x, global3.b.x)))))));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_4) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(1041f, 3051f)), -100f, false)), global3.b.x) - _wgslsmith_f_op_vec2_f32(func_4(Struct_1(~99282i, !global0.a.c, !vec2<bool>(false, global3.a)), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, 53929u, u_input.a.x), vec4<u32>(1u, 0u, u_input.a.x, u_input.a.x)), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4638u), ~vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x)), vec3<bool>(true, arg_1.c.b.x, global0.b.a < -12255i), ~func_3(global4[_wgslsmith_index_u32(u_input.a.x, 9u)], Struct_2(Struct_1(-535i, vec2<bool>(false, global4[_wgslsmith_index_u32(1u, 9u)]), global0.a.c), global0.b), global3.a, vec4<i32>(arg_1.a, global1.x, -2147483647i, -5223i))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.b * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b.x, 921f))))));
    global3 = Struct_3(!all(select(select(vec4<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 9u)], global4[_wgslsmith_index_u32(u_input.a.x, 9u)], arg_1.c.b.x, true), vec4<bool>(false, false, global0.b.c.x, global0.a.b.x), true), !vec4<bool>(global0.a.b.x, arg_1.c.b.x, true, true), vec4<bool>(true, false, global0.a.b.x, arg_1.c.c.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), -1713f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.b.x, 999f) + global3.b) * global3.b) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))));
    var var_1 = Struct_3(-arg_1.b.x >= (i32(-1i) * -2147483647i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -454f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -717f) * _wgslsmith_f_op_f32(min(global3.b.x, -358f))))));
    global4 = array<bool, 9>();
    return ~(~4294967295u);
}

fn func_1(arg_0: bool) -> bool {
    global1 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_add_i32(max(2147483647i, 2147483647i), -global0.b.a), -1i), firstTrailingBit(firstLeadingBit(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(global1.x, 49859i), vec2<i32>(global1.x, 30515i)), firstTrailingBit(vec2<i32>(-75863i, global0.a.a)), _wgslsmith_mod_vec2_i32(vec2<i32>(global1.x, -9092i), vec2<i32>(global1.x, global0.a.a))))));
    let var_0 = ~global1.x;
    var var_1 = _wgslsmith_f_op_f32(-1000f * global3.b.x);
    var var_2 = ~(~global2[_wgslsmith_index_u32(u_input.a.x, 18u)]) << (~vec3<u32>(min(_wgslsmith_add_u32(u_input.a.x, 1u), u_input.a.x), _wgslsmith_div_u32(1u, func_2(vec2<i32>(global1.x, var_0), Struct_4(var_0, vec2<i32>(global1.x, 11919i), Struct_1(global1.x, vec2<bool>(false, global4[_wgslsmith_index_u32(u_input.a.x, 9u)]), global0.a.c)))), _wgslsmith_add_u32(u_input.a.x, abs(103726u))) % vec3<u32>(32u));
    var var_3 = global0.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.x)) + _wgslsmith_div_f32(_wgslsmith_div_f32(global3.b.x, global3.b.x), _wgslsmith_f_op_f32(select(866f, 1128f, false))))) > global3.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global0.a, global0.a);
    global0 = Struct_2(Struct_1(-2147483647i, select(vec2<bool>(!global4[_wgslsmith_index_u32(u_input.a.x, 9u)], func_1(global0.b.c.x)), !global0.a.c, var_0.b.c), !vec2<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 9u)], true)), Struct_1(global1.x, !global0.a.b, global0.b.b));
    let var_1 = global0.a;
    global1 = _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(~(-vec2<i32>(var_1.a, global0.b.a)), vec2<i32>(global1.x, var_0.a.a) ^ (vec2<i32>(global1.x, global0.a.a) | vec2<i32>(-13237i, -12551i))), select(-firstTrailingBit(vec2<i32>(global0.a.a, var_1.a)), vec2<i32>(-global0.a.a, global0.b.a), !(var_1.a >= var_1.a))), vec2<i32>(_wgslsmith_sub_i32(~max(var_0.b.a, global1.x), _wgslsmith_div_i32(var_0.b.a, var_1.a)), -var_1.a), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_0.a.a, var_1.a, 25337i), ~vec4<i32>(58041i, 18821i, var_0.a.a, -2147483647i)), max(1i, 1i)), select(vec2<i32>(_wgslsmith_add_i32(global1.x, -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-2556i, var_1.a), vec2<i32>(global0.a.a, global1.x))), vec2<i32>(-1i) * -vec2<i32>(54472i, -2147483647i), false)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1343f, global3.b.x, 1214f, -258f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-564f, global3.b.x, global3.b.x, global3.b.x) * vec4<f32>(global3.b.x, -449f, global3.b.x, -400f)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b.x, -993f, 389f, -1000f) + vec4<f32>(global3.b.x, global3.b.x, -792f, 365f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.b.x, 279f, global3.b.x, 292f), vec4<f32>(global3.b.x, -1000f, global3.b.x, 206f), false))))))));
    var var_3 = vec3<u32>(~(~(~24957u)), _wgslsmith_mod_u32(_wgslsmith_mult_u32(~(~u_input.a.x), 1u), ~_wgslsmith_add_u32(~u_input.a.x, u_input.a.x)), min(firstLeadingBit(u_input.a.x), 15544u));
    var var_4 = Struct_3(true, vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(313f * global3.b.x), -1246f), 1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2185f - -1878f))), 2147f)));
    var var_5 = u_input.a.x >= var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -419f) - var_4.b.x) * _wgslsmith_f_op_f32(-var_2.x)));
}

