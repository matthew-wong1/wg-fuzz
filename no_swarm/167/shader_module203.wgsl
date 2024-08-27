struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec2<bool> {
    global0 = array<Struct_1, 15>();
    global0 = array<Struct_1, 15>();
    let var_0 = u_input.b;
    var var_1 = reverseBits(reverseBits(-var_0.wyy)) << (_wgslsmith_div_vec3_u32(~vec3<u32>(_wgslsmith_div_u32(89363u, 53062u), ~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 0u, u_input.d), u_input.a.xwz)), abs(vec3<u32>(u_input.d, u_input.a.x, u_input.d))) % vec3<u32>(32u));
    let var_2 = reverseBits(_wgslsmith_mult_u32(u_input.d, u_input.a.x));
    return select(select(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), 4203u >= u_input.d), vec2<bool>(true, true), false), vec2<bool>(firstLeadingBit(var_2) == _wgslsmith_add_u32(firstLeadingBit(71952u), var_2), (any(vec3<bool>(true, true, true)) || true) && false), all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false)))));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = all(func_3());
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1.b, -656f)));
    let var_2 = Struct_1(!any(select(vec4<bool>(arg_2.x, false, true, var_0), !vec4<bool>(arg_1.a, var_0, false, arg_2.x), select(arg_2.x, false, var_0))), -626f);
    var var_3 = _wgslsmith_clamp_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(~u_input.a.xzz, vec3<u32>(u_input.a.x, ~25060u, ~1u))), ~_wgslsmith_mod_u32(~39438u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 11553u, 1u, 4294967295u), u_input.a)) | ~0u, u_input.a.x);
    global0 = array<Struct_1, 15>();
    return Struct_1(true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.b * var_2.b))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = u_input.c.x;
    let var_1 = global0[_wgslsmith_index_u32(4294967295u, 15u)];
    var var_2 = select(select(vec2<bool>(true, true), vec2<bool>(true, all(!vec3<bool>(arg_1.a, true, true))), vec2<bool>(true, 1u == countOneBits(u_input.a.x))), select(vec2<bool>(!arg_2.a & false, false && (true | var_1.a)), !vec2<bool>(var_1.a, var_1.a), true), select(vec2<bool>(!(arg_2.a | true), true), vec2<bool>(true, true), select(func_3(), !(!vec2<bool>(var_1.a, arg_1.a)), !select(vec2<bool>(true, true), vec2<bool>(arg_2.a, arg_2.a), arg_2.a))));
    let var_3 = var_2.x || all(select(func_3(), select(vec2<bool>(true, true), !vec2<bool>(false, arg_2.a), vec2<bool>(true, true)), !all(vec2<bool>(false, arg_2.a))));
    var var_4 = func_2(u_input.b.zyz, arg_1, select(vec3<bool>(true, true, true), !select(select(vec3<bool>(arg_1.a, arg_1.a, true), vec3<bool>(true, var_2.x, true), arg_1.a), !vec3<bool>(var_2.x, arg_2.a, var_3), true), !(!select(vec3<bool>(var_1.a, false, arg_2.a), vec3<bool>(var_2.x, true, false), vec3<bool>(var_3, false, true)))));
    return global0[_wgslsmith_index_u32(u_input.a.x, 15u)];
}

fn func_1(arg_0: bool) -> Struct_1 {
    global0 = array<Struct_1, 15>();
    let var_0 = Struct_1(!(11678u <= _wgslsmith_clamp_u32(u_input.a.x, u_input.d, u_input.a.x)), _wgslsmith_f_op_f32(max(-142f, 486f)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_f_op_f32(-var_0.b))));
    let var_2 = false;
    var var_3 = u_input.a.xyx;
    return func_4(vec3<f32>(1116f, 593f, -653f), func_2(abs(-(vec3<i32>(-7270i, 673i, u_input.b.x) ^ vec3<i32>(2147483647i, -8747i, u_input.c.x))), Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2054f + var_0.b) + _wgslsmith_f_op_f32(var_1 - -385f))), select(vec3<bool>(true, select(false, false, arg_0), true), !vec3<bool>(arg_0, false, arg_0), select(!vec3<bool>(var_2, false, var_0.a), select(vec3<bool>(var_0.a, arg_0, false), vec3<bool>(var_2, var_2, var_0.a), vec3<bool>(false, var_2, true)), arg_0))), global0[_wgslsmith_index_u32(min(~(~(~0u)), 49836u), 15u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(true);
    global0 = array<Struct_1, 15>();
    var var_1 = func_1(true);
    let var_2 = var_0.b;
    global0 = array<Struct_1, 15>();
    let var_3 = true;
    global0 = array<Struct_1, 15>();
    let var_4 = var_0.a;
    global0 = array<Struct_1, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(min(u_input.a.zyx, ~_wgslsmith_sub_vec3_u32(u_input.a.xzy, u_input.a.zxz)) << (select(vec3<u32>(107073u, 1u, ~4294967295u), vec3<u32>(0u, ~35798u, countOneBits(59796u)), vec3<bool>(true, func_2(u_input.b.yyw, global0[_wgslsmith_index_u32(0u, 15u)], vec3<bool>(var_1.a, true, true)).a, func_1(var_0.a).a)) % vec3<u32>(32u)));
}

