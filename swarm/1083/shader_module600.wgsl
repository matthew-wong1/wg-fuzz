struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 20>;

var<private> global1: array<Struct_1, 14>;

var<private> global2: array<Struct_1, 3>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2() -> u32 {
    global2 = array<Struct_1, 3>();
    let var_0 = !(firstLeadingBit(u_input.d) < abs(u_input.b)) != true;
    global0 = array<vec4<u32>, 20>();
    let var_1 = ~(~u_input.d);
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(379f, -1419f)) - _wgslsmith_f_op_f32(sign(816f)))) + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-727f, -587f)))), _wgslsmith_f_op_f32(417f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    return ~min(_wgslsmith_dot_vec3_u32(~min(vec3<u32>(25968u, u_input.b, 74587u), vec3<u32>(1u, 14727u, 0u)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 4294967295u, 27737u), vec3<u32>(var_1, 22971u, 0u)), var_1, 107921u)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1, abs(4294967295u), u_input.d), vec3<u32>(max(var_1, var_1), 4294967295u, 58549u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> u32 {
    var var_0 = true;
    var var_1 = Struct_1(_wgslsmith_sub_vec3_i32(-_wgslsmith_div_vec3_i32(arg_1.a, vec3<i32>(arg_0.x, 1i, u_input.c.x) >> (vec3<u32>(arg_1.b, u_input.b, 9926u) % vec3<u32>(32u))), vec3<i32>(-8661i, 0i, u_input.c.x >> (1u % 32u)) >> (_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(arg_1.b, 65465u, arg_1.b)), abs(vec3<u32>(1u, 4294967295u, u_input.b))) % vec3<u32>(32u))), 4294967295u, arg_1.c, _wgslsmith_f_op_f32(min(-328f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.d + arg_1.d))))))));
    var var_2 = global1[_wgslsmith_index_u32(arg_1.b, 14u)];
    var var_3 = Struct_1((vec3<i32>(-1i) * -vec3<i32>(var_1.a.x, arg_0.x, 25952i)) >> (vec3<u32>(arg_1.b, var_2.b, ~max(arg_1.b, u_input.b)) % vec3<u32>(32u)), var_1.b, true, _wgslsmith_f_op_f32(max(arg_1.d, arg_1.d)));
    var_2 = Struct_1(abs(_wgslsmith_mult_vec3_i32(var_1.a ^ var_2.a, -(~var_1.a))), var_3.b, all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(select(-255f, -1281f, true)));
    return ~48608u;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global0 = array<vec4<u32>, 20>();
    var var_0 = arg_0.a.x;
    global0 = array<vec4<u32>, 20>();
    var var_1 = vec4<u32>(abs((~u_input.d >> (1u % 32u)) << (_wgslsmith_mult_u32(u_input.d, 48174u) % 32u)), func_2(), 1u, _wgslsmith_sub_u32(func_3(vec2<i32>(-u_input.c.x, select(1i, 2147483647i, false)), global1[_wgslsmith_index_u32(u_input.d & ~u_input.b, 14u)]), u_input.b));
    var var_2 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0.d)), arg_0.d, -1289f)));
    return global2[_wgslsmith_index_u32(arg_0.b, 3u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: bool) -> Struct_1 {
    let var_0 = vec4<u32>(u_input.b, 40324u, arg_0.b, arg_2.x);
    let var_1 = u_input.b;
    let var_2 = arg_0.a.x;
    global2 = array<Struct_1, 3>();
    global0 = array<vec4<u32>, 20>();
    return arg_1;
}

fn func_5(arg_0: Struct_1) -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(~u_input.b, 20u)];
    let var_1 = vec3<bool>(true, all(vec3<bool>(arg_0.c, true, (arg_0.d <= arg_0.d) && false)), all(!select(!vec2<bool>(arg_0.c, arg_0.c), select(vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(true, arg_0.c), true), !arg_0.c)));
    let var_2 = vec2<i32>(-func_4(global1[_wgslsmith_index_u32(43534u, 14u)], func_4(func_4(Struct_1(vec3<i32>(-27392i, -29228i, -1i), 4294967295u, true, arg_0.d), Struct_1(arg_0.a, u_input.d, var_1.x, -831f), global0[_wgslsmith_index_u32(arg_0.b, 20u)], true), func_4(global1[_wgslsmith_index_u32(var_0.x, 14u)], global2[_wgslsmith_index_u32(var_0.x, 3u)], global0[_wgslsmith_index_u32(4294967295u, 20u)], arg_0.c), ~global0[_wgslsmith_index_u32(var_0.x, 20u)], 516f <= arg_0.d), ~(~vec4<u32>(u_input.b, 16611u, arg_0.b, 1u)), var_1.x).a.x, arg_0.a.x);
    let var_3 = u_input.a;
    var var_4 = global1[_wgslsmith_index_u32(22515u, 14u)];
    return abs(firstTrailingBit(select(var_3, -_wgslsmith_mod_i32(28507i, -27310i), var_1.x | (arg_0.d < var_4.d))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 3>();
    var var_0 = func_5(func_4(func_1(Struct_1(firstLeadingBit(vec3<i32>(u_input.a, u_input.a, u_input.c.x)), 0u | u_input.b, select(false, false, false), _wgslsmith_div_f32(1000f, 533f))), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~func_1(Struct_1(vec3<i32>(u_input.a, -736i, u_input.a), u_input.d, false, 1296f)).b, u_input.b, ~u_input.d), 3u)], ~global0[_wgslsmith_index_u32(1u, 20u)], !(u_input.d >= 78750u)));
    let var_1 = vec4<bool>(select(!any(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true)), true && (_wgslsmith_f_op_f32(select(1294f, 683f, true)) == _wgslsmith_f_op_f32(f32(-1f) * -1982f))), any(vec4<bool>(true, true, true, true)), true, select(false, true, !(~u_input.c.x >= -16731i)));
    let var_2 = -1138f;
    var var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(~(func_2() >> (1u % 32u)), 20u)], vec3<f32>(var_2, var_2, var_2), firstTrailingBit(-7378i));
}

