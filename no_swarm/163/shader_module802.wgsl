struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: vec3<f32>, arg_3: i32) -> vec2<bool> {
    var var_0 = !vec4<bool>(!((arg_1.x || false) || (479f != arg_2.x)), any(vec4<bool>(false, true, arg_1.x, true)), all(vec2<bool>(false, true)) != false, false);
    var var_1 = global0[_wgslsmith_index_u32(u_input.e.x, 29u)];
    let var_2 = firstTrailingBit(~(~vec2<u32>(reverseBits(4294967295u), _wgslsmith_div_u32(4294967295u, u_input.b))));
    var var_3 = Struct_2(15601u | var_1.c);
    var var_4 = global0[_wgslsmith_index_u32(~(~min(4294967295u, 0u >> (0u % 32u))) >> (1u % 32u), 29u)];
    return var_0.zw;
}

fn func_2() -> u32 {
    let var_0 = !select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(all(vec3<bool>(false, false, true)), true), true), select(vec2<bool>(-1i <= u_input.a, true), vec2<bool>(true, any(vec3<bool>(false, false, false))), func_3(u_input.a, vec2<bool>(false, false), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(118f, 592f, -684f), vec3<f32>(-641f, -821f, 1693f))), max(2147483647i, -2147483647i))), !select(func_3(u_input.c, vec2<bool>(false, false), vec3<f32>(-2377f, 775f, -1433f), u_input.c), vec2<bool>(true, true), true));
    global0 = array<Struct_1, 29>();
    var var_1 = ~u_input.d;
    var var_2 = var_0.x;
    var_2 = _wgslsmith_mod_u32(var_1.x, var_1.x) >= _wgslsmith_add_u32(~_wgslsmith_mod_u32(u_input.d.x, ~12554u), 0u);
    return _wgslsmith_add_u32(~(min(0u, var_1.x ^ 1u) >> (~var_1.x % 32u)), var_1.x);
}

fn func_1(arg_0: i32, arg_1: i32) -> bool {
    var var_0 = _wgslsmith_sub_i32(reverseBits(abs(35131i) & u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(17940i << (u_input.e.x % 32u), -arg_0, arg_0 ^ arg_0), -vec3<i32>(-1i, 1005i, -26282i))) & countOneBits(_wgslsmith_add_i32(28973i, 13065i));
    let var_1 = Struct_2(_wgslsmith_mod_u32(abs(max(max(u_input.e.x, u_input.b), u_input.e.x)), ~u_input.d.x));
    var_0 = arg_1;
    global0 = array<Struct_1, 29>();
    let var_2 = func_2() >= u_input.e.x;
    return select(!all(!select(vec3<bool>(var_2, true, false), vec3<bool>(true, false, false), vec3<bool>(false, var_2, var_2))), false, true);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -774f)))));
    var var_2 = Struct_2(_wgslsmith_mult_u32(arg_0.a, _wgslsmith_dot_vec3_u32(vec3<u32>(9147u, 59897u, arg_0.a), vec3<u32>(arg_1.c, 0u, 1u)) ^ 0u));
    let var_3 = arg_2.yx;
    var_0 = arg_1;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_u32(~(~14206u), 39425u >> (u_input.b % 32u));
    var var_1 = true;
    var var_2 = u_input.d.x;
    var_2 = u_input.e.x;
    var_2 = ~u_input.e.x;
    var var_3 = func_4(Struct_2(~_wgslsmith_add_u32(u_input.b, firstLeadingBit(0u))), global0[_wgslsmith_index_u32(68378u, 29u)], select(!vec3<bool>(true, func_1(16507i, u_input.c), true), vec3<bool>(true, true, true), select(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true))));
    let var_4 = Struct_2(~(~u_input.e.x));
    var var_5 = vec3<i32>(u_input.c, ~((i32(-1i) * -u_input.c) >> ((54988u ^ var_4.a) % 32u)), countOneBits(u_input.a));
    var var_6 = Struct_1(!func_4(var_4, global0[_wgslsmith_index_u32(var_3.c, 29u)], select(!vec3<bool>(false, true, var_3.b), !vec3<bool>(true, var_3.a.x, var_3.b), !vec3<bool>(var_3.a.x, true, true))).a, true, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_3.c) & vec2<u32>(6748u, var_4.a), ~vec2<u32>(0u, var_3.c))));
    let x = u_input.a;
    s_output = StorageBuffer(min(var_4.a, ~firstLeadingBit(u_input.d.x)) << (4294967295u % 32u), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f - 1247f))))), -731f, -1370f), u_input.c, vec4<u32>(var_3.c, countOneBits(~_wgslsmith_div_u32(31729u, 103324u)), var_4.a, var_3.c ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(var_4.a, var_3.c, 10869u, u_input.e.x), vec4<u32>(82801u, var_6.c, 78831u, 11991u))), 25015u);
}

