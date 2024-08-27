struct Struct_1 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(-276f, true);

var<private> global2: array<vec3<u32>, 5>;

var<private> global3: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: bool) -> bool {
    let var_0 = Struct_1(arg_0.x, false);
    var var_1 = arg_1.x;
    global2 = array<vec3<u32>, 5>();
    var var_2 = min(abs(~firstLeadingBit(vec3<u32>(u_input.e, u_input.b, u_input.e))), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, firstLeadingBit(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(35385u, 0u)), ~vec2<u32>(4294967295u, u_input.d)))), 5u)]);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a))) - 255f), true);
    return all(select(!(!vec4<bool>(false, arg_2, true, global1.b)), !(!vec4<bool>(true, true, true, arg_2)), select(false, global1.b, !var_0.b)));
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = !select(vec3<bool>(!arg_0.x && (true != global0.b), global1.b, !all(vec3<bool>(global0.b, false, false))), vec3<bool>(u_input.c > 36113u, true, !(!global1.b)), vec3<bool>(func_3(vec4<f32>(global3.a, -1000f, 304f, -444f), countOneBits(vec2<i32>(0i, 50666i)), u_input.a == 0u), true || any(vec4<bool>(true, true, false, global3.b)), !arg_0.x));
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(u_input.b >> (u_input.a % 32u)), _wgslsmith_mod_u32(~61267u, _wgslsmith_sub_u32(24386u, 13886u)), _wgslsmith_div_u32(~0u, u_input.d), 1u), _wgslsmith_add_vec4_u32(firstTrailingBit(reverseBits(vec4<u32>(u_input.d, u_input.b, 75872u, u_input.c))), (vec4<u32>(u_input.d, 1u, 1u, u_input.b) >> (vec4<u32>(u_input.b, 0u, u_input.b, u_input.a) % vec4<u32>(32u))) & _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.e, 0u), vec4<u32>(78604u, 0u, u_input.a, 4294967295u)))), 59544u);
    global0 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(global1.a)))), 1257f > global1.a);
    return Struct_1(-1640f, _wgslsmith_clamp_i32(-54013i, -2147483647i, reverseBits(i32(-1i) * -2147483647i)) >= -20578i);
}

fn func_1(arg_0: i32, arg_1: f32) -> bool {
    global2 = array<vec3<u32>, 5>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(floor(global3.a)), 416f);
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-956f))), global0.b);
    let var_1 = _wgslsmith_f_op_f32(-global0.a);
    global0 = func_2(vec2<bool>(true, false));
    return (false | select(global0.b, global0.b, global1.b | true)) & global0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (firstLeadingBit(max(_wgslsmith_mult_vec4_u32(vec4<u32>(8587u, u_input.e, u_input.a, 4294967295u), vec4<u32>(35692u, 15969u, u_input.d, u_input.e)), vec4<u32>(79986u, u_input.a, u_input.b, 1u) << (vec4<u32>(u_input.d, u_input.c, u_input.a, 43076u) % vec4<u32>(32u)))) >> (vec4<u32>(4294967295u, 0u, ~u_input.d, 34356u) % vec4<u32>(32u))) ^ reverseBits(~countOneBits(vec4<u32>(7568u, 53122u, 0u, u_input.a)) << (~(vec4<u32>(u_input.c, u_input.c, 89141u, 1u) & vec4<u32>(4294967295u, 2725u, u_input.a, u_input.a)) % vec4<u32>(32u)));
    let var_1 = 15100i;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -810f)), global0.b || (4294967295u <= var_0.x));
    global3 = var_2;
    global1 = Struct_1(-458f, func_1(var_1, _wgslsmith_f_op_f32(-global0.a)));
    let var_3 = global3.a;
    var var_4 = func_2(select(select(vec2<bool>(var_2.b, true), !(!vec2<bool>(global0.b, false)), vec2<bool>(func_3(vec4<f32>(global0.a, 1618f, var_2.a, 202f), vec2<i32>(var_1, var_1), global3.b), !global1.b)), select(!(!vec2<bool>(false, global0.b)), select(!vec2<bool>(global0.b, true), select(vec2<bool>(global0.b, true), vec2<bool>(true, global0.b), vec2<bool>(var_2.b, true)), vec2<bool>(true, global0.b)), !(!vec2<bool>(global3.b, global0.b))), select(!vec2<bool>(false, global3.b), !select(vec2<bool>(global1.b, false), vec2<bool>(false, global3.b), vec2<bool>(true, global3.b)), !(!vec2<bool>(global1.b, global0.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_4.a, _wgslsmith_f_op_f32(step(global0.a, _wgslsmith_f_op_f32(-286f + 1501f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a - 630f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1007f)))), -(~vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1, -2147483647i), vec2<i32>(23318i, 1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-18173i, var_1, var_1, var_1), vec4<i32>(var_1, 25028i, -2147483647i, var_1)), 4110i, 31074i)), -1370f, _wgslsmith_add_i32(1i, _wgslsmith_add_i32(_wgslsmith_mult_i32(min(5228i, var_1), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1, var_1), vec2<i32>(-2147483647i, var_1))), ~firstTrailingBit(var_1))));
}

