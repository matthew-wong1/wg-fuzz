struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18> = array<i32, 18>(-54336i, 0i, -46046i, -691i, -47081i, -17063i, 1i, 37257i, 2147483647i, 0i, i32(-2147483648), i32(-2147483648), 2147483647i, -1826i, 0i, 1i, 1i, 5131i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec2<i32> {
    var var_0 = Struct_1(vec2<i32>(-(~global0[_wgslsmith_index_u32(69516u, 18u)]), -3384i));
    global0 = array<i32, 18>();
    var var_1 = any(select(vec3<bool>(false, true, any(vec2<bool>(true, false))), vec3<bool>(false, false, true), vec3<bool>(true, true, false)));
    let var_2 = _wgslsmith_f_op_f32(-1141f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -230f), _wgslsmith_f_op_f32(select(2023f, -2039f, false)), true)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-606f))))))));
    global0 = array<i32, 18>();
    return vec2<i32>(max(-2147483647i, _wgslsmith_clamp_i32(var_0.a.x, -_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(u_input.e, 18u)], var_0.a.x, global0[_wgslsmith_index_u32(u_input.a, 18u)]), firstTrailingBit(2147483647i))), ~2147483647i);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    global0 = array<i32, 18>();
    var var_0 = arg_1;
    var_0 = Struct_1(func_3());
    var var_1 = ~arg_0.yx;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1403f), 1015f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(952f - -2092f), _wgslsmith_f_op_f32(abs(-574f)), true)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-363f, -608f)), _wgslsmith_f_op_f32(step(914f, -1888f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1658f + 730f), 922f)))));
    return arg_1;
}

fn func_1() -> Struct_1 {
    global0 = array<i32, 18>();
    global0 = array<i32, 18>();
    let var_0 = u_input.e;
    global0 = array<i32, 18>();
    let var_1 = func_2(vec4<u32>(_wgslsmith_div_u32(reverseBits(var_0), 0u), u_input.e, var_0, 1u), Struct_1(vec2<i32>(firstTrailingBit(u_input.d), _wgslsmith_add_i32(abs(1i), u_input.c.x))), u_input.e);
    return Struct_1(func_3());
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<i32>) -> u32 {
    global0 = array<i32, 18>();
    global0 = array<i32, 18>();
    global0 = array<i32, 18>();
    let var_0 = Struct_2(!select(!vec2<bool>(false, arg_0.a.x), arg_0.a, true), _wgslsmith_mod_vec2_u32(firstTrailingBit(reverseBits(vec2<u32>(u_input.e, arg_0.b.x))), arg_0.b) ^ vec2<u32>(_wgslsmith_mod_u32(59561u, abs(4294967295u)), max(arg_0.b.x, 88841u) >> (firstLeadingBit(709u) % 32u)), arg_0.c);
    let var_1 = vec3<u32>(_wgslsmith_sub_u32(4294967295u, abs(arg_0.b.x)) & _wgslsmith_add_u32(_wgslsmith_clamp_u32(firstTrailingBit(arg_0.b.x), max(12702u, var_0.b.x), u_input.a), abs(47508u) >> (_wgslsmith_div_u32(u_input.e, 60486u) % 32u)), firstLeadingBit(_wgslsmith_dot_vec4_u32(~(vec4<u32>(0u, 3578u, arg_0.b.x, var_0.b.x) | vec4<u32>(1u, 127689u, 0u, 56873u)), vec4<u32>(61431u, 4294967295u, u_input.e, arg_0.b.x) >> (min(vec4<u32>(13263u, 138005u, var_0.b.x, 4294967295u), vec4<u32>(var_0.b.x, 40428u, 96659u, 1u)) % vec4<u32>(32u)))), u_input.a);
    return 0u;
}

fn func_5(arg_0: f32, arg_1: u32) -> Struct_1 {
    global0 = array<i32, 18>();
    let var_0 = Struct_1(countOneBits(func_2(~(~vec4<u32>(138163u, arg_1, arg_1, 1u)), Struct_1(u_input.b.xz), firstLeadingBit(~11977u)).a));
    let var_1 = firstTrailingBit(24493u);
    global0 = array<i32, 18>();
    let var_2 = vec4<i32>(-_wgslsmith_div_i32(-abs(-1i), global0[_wgslsmith_index_u32(~1u, 18u)]), ~49898i, 2147483647i, u_input.c.x);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) + -946f), ~(max(~1u, 4294967295u) ^ func_4(Struct_2(vec2<bool>(false, true), vec2<u32>(u_input.e, 114685u), vec4<f32>(-460f, 547f, 727f, -222f)), func_1(), Struct_1(vec2<i32>(-497i, u_input.c.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, -1i, u_input.c.x, -2147483647i), vec4<i32>(u_input.d, u_input.b.x, -18713i, global0[_wgslsmith_index_u32(u_input.a, 18u)]), vec4<i32>(0i, 2147483647i, u_input.c.x, global0[_wgslsmith_index_u32(9478u, 18u)])))));
    let var_1 = vec4<bool>(all(vec2<bool>(all(vec4<bool>(false, true, true, true)), false)), _wgslsmith_div_u32(u_input.e, 108049u) >= 0u, any(select(select(vec3<bool>(true, true, false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec2<bool>(true, false))), vec3<bool>(all(vec2<bool>(true, true)), all(vec3<bool>(false, true, false)), true))), any(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true))));
    var var_2 = ~vec4<u32>(u_input.e, firstLeadingBit(abs(~u_input.e)), 4294967295u, reverseBits(0u));
    let var_3 = ~(~(~9119u << ((u_input.a << (u_input.a % 32u)) % 32u))) <= 4294967295u;
    var_0 = Struct_1(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_i32(~0i, -u_input.d, var_0.a.x), min(_wgslsmith_div_vec3_u32(~(~vec3<u32>(var_2.x, u_input.a, 41949u)), ~var_2.xww), vec3<u32>(1u, 22227u << (var_2.x % 32u), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(31864u, 10564u), var_2.x, ~u_input.a))), -2147483647i);
}

