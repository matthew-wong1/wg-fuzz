struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

var<private> global1: array<Struct_1, 6>;

var<private> global2: array<vec2<bool>, 29>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global0 = array<u32, 16>();
    global0 = array<u32, 16>();
    global0 = array<u32, 16>();
    var var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(~global0[_wgslsmith_index_u32(abs(arg_1.c), 16u)], ~30728u), 6u)];
    var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(arg_1.c, firstLeadingBit(var_0.b), 1u), 19101u), 6u)];
    return arg_0;
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    let var_0 = u_input.e.x;
    let var_1 = vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1704f)) - arg_0.a), 441f);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-665f, _wgslsmith_f_op_f32(f32(-1f) * -369f), true))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -699f), -340f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * arg_0.a))))));
    let var_3 = arg_0;
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1843f - 497f), _wgslsmith_f_op_f32(max(-1884f, arg_0.a)))) + var_3.a)) - _wgslsmith_f_op_f32(f32(-1f) * -914f));
    return func_2(func_2(Struct_1(-973f, 0u, 1u), global1[_wgslsmith_index_u32(4294967295u, 6u)]), func_2(var_3, func_2(func_2(func_2(Struct_1(var_1.x, 0u, 32625u), arg_0), Struct_1(-589f, 4294967295u, u_input.a)), Struct_1(383f, 55445u, firstTrailingBit(75566u)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<bool>, arg_3: i32) -> f32 {
    let var_0 = firstLeadingBit(arg_3);
    global0 = array<u32, 16>();
    var var_1 = ~0i;
    var var_2 = !arg_2.x;
    global0 = array<u32, 16>();
    return arg_0.a;
}

fn func_1() -> f32 {
    let var_0 = vec3<i32>((i32(-1i) * -37736i) & _wgslsmith_mod_i32(~reverseBits(u_input.e.x), 0i), _wgslsmith_div_i32(abs(2147483647i), -8282i), ~(-u_input.b.x));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1624f, _wgslsmith_f_op_f32(func_4(func_3(func_2(global1[_wgslsmith_index_u32(1u, 6u)], Struct_1(-507f, 14043u, u_input.c.x))), vec3<bool>(true, any(vec3<bool>(true, false, true)), all(vec4<bool>(false, true, true, true))), vec2<bool>(true, global0[_wgslsmith_index_u32(55556u, 16u)] != u_input.a), ~(~(-56863i))))));
    var var_2 = select(select(vec4<bool>(false, (var_1 > -1000f) && all(global2[_wgslsmith_index_u32(60567u, 29u)]), !select(true, true, false), any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), false))), select(vec4<bool>(true, true, var_0.x >= 50047i, any(vec3<bool>(true, false, true))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), false), select(true, false, true))), vec4<bool>(_wgslsmith_sub_i32(-2147483647i, var_0.x) < 51166i, all(vec3<bool>(true, true, true)), (u_input.e.x >= u_input.d.x) && true, all(global2[_wgslsmith_index_u32(~u_input.a, 29u)]))), !select(vec4<bool>(true, any(global2[_wgslsmith_index_u32(4294967295u, 29u)]), true, true), vec4<bool>(true, true, any(vec3<bool>(true, false, true)), true), vec4<bool>(all(vec4<bool>(true, false, true, true)), true, any(vec3<bool>(false, false, true)), true)), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), any(vec3<bool>(false, true, true)))));
    global1 = array<Struct_1, 6>();
    var_2 = !select(!(!select(vec4<bool>(true, var_2.x, true, false), vec4<bool>(var_2.x, true, var_2.x, true), var_2.x)), vec4<bool>(!(var_2.x & true), true, var_2.x && var_2.x, true), vec4<bool>(true, var_2.x, var_2.x | true, any(vec3<bool>(true, var_2.x, var_2.x))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 16>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1()))), ~(~u_input.a), u_input.c.x);
    global0 = array<u32, 16>();
    var var_1 = var_0;
    let var_2 = -_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(u_input.b, u_input.b), ~vec2<i32>(11546i, u_input.b.x)), vec2<i32>(~11392i, u_input.e.x << (global0[_wgslsmith_index_u32(29149u, 16u)] % 32u))), _wgslsmith_sub_i32(reverseBits(u_input.e.x), 0i), i32(-1i) * -firstLeadingBit(-38361i));
    let var_3 = func_2(func_2(var_0, func_2(func_2(Struct_1(662f, var_0.b, var_1.c), var_0), Struct_1(func_2(Struct_1(1609f, u_input.a, var_0.b), global1[_wgslsmith_index_u32(u_input.c.x, 6u)]).a, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)], 24474u), var_1.b & global0[_wgslsmith_index_u32(1u, 16u)]))), Struct_1(_wgslsmith_f_op_f32(-935f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.a)))), global0[_wgslsmith_index_u32(countOneBits(u_input.a), 16u)], ~global0[_wgslsmith_index_u32(func_3(func_2(Struct_1(963f, u_input.a, var_1.b), var_0)).c, 16u)]));
    global0 = array<u32, 16>();
    global0 = array<u32, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(countOneBits((39807u >> (var_0.c % 32u)) | abs(var_0.b))));
}

