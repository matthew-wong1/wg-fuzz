struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: u32,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
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

var<private> global0: array<f32, 1> = array<f32, 1>(662f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec4<bool>, arg_3: Struct_4) -> f32 {
    global0 = array<f32, 1>();
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -635f), 487f)), !select(select(!vec4<bool>(false, arg_2.x, arg_2.x, false), vec4<bool>(arg_0.x, arg_0.x, arg_2.x, true), select(arg_2, vec4<bool>(arg_0.x, true, false, arg_0.x), true)), arg_2, false));
    var_0 = Struct_2(Struct_1(arg_3.a), select(vec4<bool>(false, all(!var_0.b.zyz), false, true), select(vec4<bool>(u_input.d == -2147483647i, var_0.b.x && false, true, any(arg_2)), select(!arg_2, var_0.b, select(vec4<bool>(true, arg_2.x, arg_0.x, true), arg_2, vec4<bool>(arg_0.x, false, false, arg_2.x))), arg_2.x), select(!(!vec4<bool>(false, false, true, var_0.b.x)), var_0.b, true)));
    var var_1 = vec2<i32>(_wgslsmith_sub_i32(u_input.d, max(~(-1i), ~u_input.a.x)), -2147483647i & (reverseBits(u_input.d) | min(-1i, u_input.d))) >> (select(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(arg_1.ww, vec2<u32>(arg_1.x, u_input.b.x)) << (vec2<u32>(0u, arg_1.x) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.b.zz, u_input.b.zy, vec2<u32>(19924u, arg_1.x)), ~arg_1.xw)), arg_1.yx, select(vec2<bool>(false, all(vec4<bool>(arg_2.x, false, arg_2.x, arg_0.x))), !select(var_0.b.zw, arg_2.xx, vec2<bool>(arg_0.x, false)), !var_0.b.ww)) % vec2<u32>(32u));
    var var_2 = Struct_4(global0[_wgslsmith_index_u32(abs(21487u), 1u)]);
    return _wgslsmith_f_op_f32(f32(-1f) * -1277f);
}

fn func_2(arg_0: Struct_4) -> Struct_4 {
    global0 = array<f32, 1>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-556f, 1000f, true)) + _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(u_input.b.x, 1u)]))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 1u)])))));
    var var_1 = Struct_5(Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<bool>(true, true), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 15009u), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false)), arg_0)))));
    var_1 = Struct_5(Struct_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(337f)))))));
    var var_2 = u_input.b;
    return Struct_4(1621f);
}

fn func_1() -> f32 {
    let var_0 = func_2(Struct_4(global0[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(u_input.b.x, u_input.b.x)), 1u)]));
    global0 = array<f32, 1>();
    global0 = array<f32, 1>();
    global0 = array<f32, 1>();
    let var_1 = _wgslsmith_add_u32(_wgslsmith_mult_u32(~1u, 0u), 1u);
    return _wgslsmith_f_op_f32(func_3(select(vec2<bool>(true, true), vec2<bool>(true, all(vec4<bool>(true, false, false, true))), all(vec4<bool>(true, true, true, true))), vec4<u32>(_wgslsmith_div_u32(71737u, 1u), ~14570u, var_1, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_1, 4294967295u) ^ vec2<u32>(u_input.b.x, 1u), abs(vec2<u32>(43872u, 17133u))), u_input.b.wx)), !select(vec4<bool>(true, all(vec2<bool>(true, false)), true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true))), any(vec4<bool>(true, true, true, true))), var_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(firstLeadingBit(4294967295u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.b.x, 0u << (0u % 32u), ~u_input.b.x), vec3<u32>(~u_input.b.x, 47789u, u_input.b.x))), 1u)];
    var var_1 = ~vec2<u32>(~79875u, ~_wgslsmith_mod_u32(~u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x), u_input.b)));
    let var_2 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_clamp_u32(u_input.b.x, 0u, u_input.b.x)), 1u)]);
    let var_3 = Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(427f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 * var_2))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 1u)] + global0[_wgslsmith_index_u32(var_1.x, 1u)]))))));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_1.x, 1u)] * _wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(func_1())))) + var_2);
    var var_5 = Struct_5(func_2(Struct_4(_wgslsmith_f_op_f32(-432f + _wgslsmith_f_op_f32(func_3(vec2<bool>(true, false), vec4<u32>(u_input.b.x, 4294967295u, var_1.x, u_input.b.x), vec4<bool>(true, false, false, true), var_3))))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

