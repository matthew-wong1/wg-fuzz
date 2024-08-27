struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6>;

var<private> global1: vec2<bool>;

var<private> global2: array<vec2<bool>, 28>;

var<private> global3: i32 = -3356i;

var<private> global4: array<f32, 1>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: vec4<u32>) -> u32 {
    var var_0 = ~u_input.d;
    var var_1 = Struct_1(_wgslsmith_div_f32(831f, _wgslsmith_f_op_f32(floor(-293f))), !select(!(!vec4<bool>(global1.x, true, global1.x, false)), select(!vec4<bool>(false, global1.x, true, global1.x), !vec4<bool>(false, true, global1.x, false), select(vec4<bool>(global1.x, false, global1.x, true), vec4<bool>(global1.x, false, true, true), false)), select(select(vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(global1.x, global1.x, global1.x, global1.x), true), !vec4<bool>(true, global1.x, true, global1.x), false)), global2[_wgslsmith_index_u32(1u, 28u)]);
    var var_2 = countOneBits(reverseBits(firstLeadingBit(vec4<i32>(var_0.x, -19473i, u_input.d.x, u_input.d.x)))) | reverseBits(vec4<i32>(u_input.d.x, -2147483647i, _wgslsmith_sub_i32(arg_0 & 2147483647i, ~(-20746i)), ~(~(-16286i))));
    return _wgslsmith_dot_vec3_u32(arg_1.xyx, arg_1.wzy);
}

fn func_2(arg_0: vec2<i32>, arg_1: u32) -> Struct_1 {
    let var_0 = vec3<bool>(true, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 6u)] * 1000f)) < global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(arg_1, 43676u), 54017u), 1u)]), true);
    var var_1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(27919i, max(arg_0.x, reverseBits(u_input.d.x >> (u_input.b % 32u))), u_input.d.x), vec3<i32>(u_input.d.x, -(~u_input.d.x) >> (func_3(-2147483647i, ~vec4<u32>(arg_1, 0u, arg_1, 4294967295u)) % 32u), ~(-21215i)), abs(firstLeadingBit(vec3<i32>(1i, 2147483647i, 21068i << (arg_1 % 32u)))));
    global3 = (_wgslsmith_sub_i32(max(~u_input.d.x, -2147483647i), 0i) | -1691i) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 4294967295u, arg_1), reverseBits(firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(arg_1, u_input.b, arg_1), vec3<u32>(arg_1, 90914u, u_input.c))))) % 32u);
    global1 = !(!vec2<bool>(false, all(select(var_0, vec3<bool>(global1.x, false, false), var_0))));
    let var_2 = true;
    return Struct_1(global4[_wgslsmith_index_u32(~u_input.c, 1u)], select(vec4<bool>(global4[_wgslsmith_index_u32(u_input.b, 1u)] == 1013f, global1.x, 1u == countOneBits(u_input.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-8018i, -55905i), arg_0) <= _wgslsmith_add_i32(u_input.d.x, arg_0.x)), !select(vec4<bool>(false, var_2, var_0.x, false), !vec4<bool>(var_2, var_0.x, var_2, false), !vec4<bool>(var_0.x, false, var_2, true)), vec4<bool>(select(true, var_0.x, true) & true, all(!vec4<bool>(var_2, var_2, false, false)), any(vec3<bool>(true, true, true)), true)), vec2<bool>(var_2, true));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    global3 = u_input.d.x;
    let var_0 = reverseBits(u_input.d.x);
    global2 = array<vec2<bool>, 28>();
    global2 = array<vec2<bool>, 28>();
    let var_1 = u_input.c;
    return abs(~(-50832i)) << (~_wgslsmith_dot_vec2_u32(max(vec2<u32>(var_1, 20500u), abs(vec2<u32>(var_1, 0u))), vec2<u32>(1u, 18682u >> (var_1 % 32u))) % 32u);
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> vec2<bool> {
    var var_0 = arg_0;
    global3 = ~(-func_4(arg_0, func_2(-u_input.d, u_input.b), Struct_1(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 6u)]), arg_0.b, arg_0.c)));
    let var_1 = Struct_1(global4[_wgslsmith_index_u32(0u | select(~(~u_input.b), 0u, any(arg_0.b)), 1u)], !(!(!func_2(vec2<i32>(-6053i, -1i), u_input.c).b)), func_2(u_input.d, 4294967295u).b.ww);
    var var_2 = ~(~(~(i32(-1i) * -273i)));
    let var_3 = !var_0.c.x;
    return select(vec2<bool>(true, all(vec2<bool>(arg_0.b.x, !global1.x))), var_1.c, !select(all(var_1.b) & !var_3, !select(false, false, var_0.c.x), true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 6>();
    let var_0 = 0u;
    let var_1 = Struct_1(global0[_wgslsmith_index_u32(select(var_0, _wgslsmith_sub_u32(var_0, 1u) ^ ~max(var_0, u_input.a.x), !any(vec3<bool>(global1.x, false, false))), 6u)], vec4<bool>(true, global1.x, ~_wgslsmith_div_u32(var_0, 91925u) > reverseBits(var_0), !(!(!global1.x))), select(global2[_wgslsmith_index_u32(~select(u_input.b << (42684u % 32u), ~56140u, !global1.x), 28u)], select(vec2<bool>(!global1.x, !global1.x), vec2<bool>(true, true || global1.x), func_1(Struct_1(global4[_wgslsmith_index_u32(var_0, 1u)], vec4<bool>(false, global1.x, false, false), global2[_wgslsmith_index_u32(var_0, 28u)]), 2060i)), select(global2[_wgslsmith_index_u32(~(var_0 | u_input.c), 28u)], !(!global2[_wgslsmith_index_u32(86262u, 28u)]), any(vec4<bool>(global1.x, global1.x, global1.x, true)))));
    let var_2 = func_2(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-1i, 2147483647i), ~(-vec2<i32>(-1i, u_input.d.x))), countOneBits(-abs(25291i))), ~_wgslsmith_sub_u32(~var_0, select(var_0, countOneBits(60732u), false)));
    var var_3 = func_2(min(firstTrailingBit(select(vec2<i32>(u_input.d.x, 14982i), ~u_input.d, true)), abs(-(u_input.d >> (vec2<u32>(u_input.c, var_0) % vec2<u32>(32u))))), _wgslsmith_mod_u32(var_0, var_0));
    let var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global4[_wgslsmith_index_u32(~(u_input.b | 84444u) & countOneBits(var_0), 1u)], -1000f), var_3.a));
    let var_5 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(-541i, ~(~(vec3<i32>(u_input.d.x, -28100i, u_input.d.x) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(var_0, 0u, 0u), vec3<u32>(4294967295u, 13884u, var_5)) % vec3<u32>(32u)))), -firstLeadingBit(vec4<i32>(-2147483647i, u_input.d.x, u_input.d.x, u_input.d.x)) ^ vec4<i32>(-u_input.d.x, ~u_input.d.x, u_input.d.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, 1i, -55202i, u_input.d.x), vec4<i32>(-24511i, 2147483647i, 9654i, u_input.d.x)), -2772i)), u_input.d, _wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(~max(1u, var_5), 3813u)));
}

