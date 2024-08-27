struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18>;

var<private> global1: f32 = 2131f;

var<private> global2: vec2<f32>;

var<private> global3: array<Struct_1, 32>;

var<private> global4: array<Struct_1, 9>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> vec2<u32> {
    global1 = _wgslsmith_f_op_f32(-1092f + _wgslsmith_f_op_f32(-global2.x));
    global0 = array<f32, 18>();
    var var_0 = select(vec4<bool>(any(select(!vec3<bool>(arg_1.a.x, true, false), !vec3<bool>(arg_1.a.x, arg_1.b, arg_1.b), select(vec3<bool>(arg_1.a.x, true, arg_1.a.x), vec3<bool>(arg_1.b, arg_1.a.x, false), vec3<bool>(arg_1.a.x, true, arg_1.b)))), true, false, true | all(arg_1.a)), !vec4<bool>(true, all(!vec3<bool>(arg_1.a.x, arg_1.a.x, true)), -1488f < global0[_wgslsmith_index_u32(arg_1.c.x, 18u)], _wgslsmith_div_u32(4294967295u, arg_1.c.x) >= 0u), false);
    global4 = array<Struct_1, 9>();
    global0 = array<f32, 18>();
    return vec2<u32>(16768u, 3191u);
}

fn func_2(arg_0: bool) -> bool {
    global4 = array<Struct_1, 9>();
    let var_0 = ~countOneBits(0u);
    let var_1 = -((~(~vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -2147483647i)) & -vec4<i32>(-2147483647i, -21702i, u_input.c.x, u_input.c.x)) | _wgslsmith_mult_vec4_i32(~(~vec4<i32>(1i, 40175i, 32880i, u_input.c.x)), ~reverseBits(vec4<i32>(2147483647i, 30339i, 2147483647i, u_input.c.x))));
    global3 = array<Struct_1, 32>();
    let var_2 = Struct_1(!vec2<bool>(arg_0, !all(vec4<bool>(false, arg_0, arg_0, arg_0))), true, _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(var_0 & var_0, _wgslsmith_sub_u32(16055u, u_input.b), 41810u)), ~vec3<u32>(_wgslsmith_mod_u32(15597u, var_0), reverseBits(u_input.b), ~6536u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 18u)], 1998f, 634f), vec3<f32>(753f, -402f, global0[_wgslsmith_index_u32(u_input.a, 18u)]))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-686f, global2.x, 1000f)))))));
    return true;
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> u32 {
    global3 = array<Struct_1, 32>();
    var var_0 = Struct_1(vec2<bool>(((true || arg_1.b) & !arg_1.b) & arg_1.b, !arg_0.x), func_2(!select(true, any(arg_0), arg_0.x)), vec3<u32>(arg_1.c.x, select(arg_1.c.x, arg_1.c.x, arg_0.x), _wgslsmith_mult_u32(_wgslsmith_sub_u32(114801u, abs(60218u)), arg_1.c.x)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.d.x))), 923f, _wgslsmith_f_op_f32(round(arg_1.d.x))), arg_1.d));
    let var_1 = Struct_1(arg_1.a, arg_0.x, vec3<u32>(arg_1.c.x, _wgslsmith_dot_vec2_u32(arg_1.c.xz, var_0.c.xy), firstTrailingBit(~_wgslsmith_mod_u32(arg_1.c.x, 93072u))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(332f - 1099f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.x)) + -724f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(var_0.c.x, 18u)], -1977f)), 488f), _wgslsmith_f_op_f32(694f - -368f)))));
    let var_2 = Struct_1(vec2<bool>(true, var_0.a.x), arg_1.b, _wgslsmith_sub_vec3_u32(countOneBits(var_0.c), vec3<u32>(4294967295u, _wgslsmith_clamp_u32(~var_0.c.x, 54299u, var_0.c.x << (76470u % 32u)), ~24215u >> (select(1u, 0u, arg_1.b) % 32u))), arg_1.d);
    global1 = 254f;
    return _wgslsmith_dot_vec3_u32(var_1.c, ~vec3<u32>(~var_0.c.x, _wgslsmith_div_u32(var_1.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.c.x, var_2.c.x, var_2.c.x, 37704u), vec4<u32>(36435u, 17311u, var_2.c.x, 26248u))), var_0.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec2_u32(select(func_1(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-346f, global0[_wgslsmith_index_u32(4294967295u, 18u)]), _wgslsmith_f_op_f32(floor(2107f)))), Struct_1(vec2<bool>(true, true), select(true, false, false), ~vec3<u32>(u_input.a, u_input.b, 0u), _wgslsmith_f_op_vec3_f32(vec3<f32>(-957f, global2.x, 353f) - vec3<f32>(global2.x, global0[_wgslsmith_index_u32(37868u, 18u)], -694f)))), vec2<u32>(39602u, ~(~u_input.b)), select(vec2<bool>(u_input.d > 1u, func_2(true)), select(vec2<bool>(false, false), vec2<bool>(true, false), true), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)))), _wgslsmith_sub_vec2_u32(firstLeadingBit(~(vec2<u32>(u_input.b, 4294967295u) >> (vec2<u32>(0u, u_input.d) % vec2<u32>(32u)))), vec2<u32>(u_input.b, _wgslsmith_mod_u32(~0u, func_3(vec4<bool>(true, true, true, false), Struct_1(vec2<bool>(true, false), false, vec3<u32>(12990u, 0u, 6113u), vec3<f32>(global0[_wgslsmith_index_u32(u_input.d, 18u)], global2.x, global2.x)))))));
    var_0 = vec2<u32>(1u, 55503u);
    var var_1 = -26270i;
    let var_2 = global4[_wgslsmith_index_u32((43056u >> (~firstTrailingBit(_wgslsmith_div_u32(var_0.x, 9132u)) % 32u)) >> (_wgslsmith_sub_u32(~u_input.b, ~abs(var_0.x) & var_0.x) % 32u), 9u)];
    let var_3 = vec4<bool>(!(any(vec2<bool>(var_2.b, var_2.a.x)) && var_2.b), var_2.a.x, all(!select(!vec4<bool>(var_2.b, var_2.a.x, true, var_2.a.x), !vec4<bool>(true, false, var_2.a.x, var_2.a.x), vec4<bool>(var_2.b, var_2.b, var_2.a.x, var_2.b))), var_2.b);
    var var_4 = abs(~(~(var_2.c.x ^ var_0.x)) ^ ~(~reverseBits(u_input.d)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-479f + global0[_wgslsmith_index_u32(74538u, 18u)]), global2.x))) + -117f), u_input.c);
}

