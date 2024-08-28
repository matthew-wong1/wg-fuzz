struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: Struct_2,
    d: vec2<bool>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: vec2<f32>,
    d: f32,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26> = array<bool, 26>(false, true, true, true, true, true, false, true, false, false, false, true, false, true, false, false, true, false, false, true, false, true, false, true, true, true);

var<private> global1: array<f32, 8>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f)));
    global0 = array<bool, 26>();
    var_0 = -270f;
    global1 = array<f32, 8>();
    let var_1 = vec4<u32>(u_input.a, ~u_input.a, ~(~reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.e.a, arg_0.e.c.a.x, 4294967295u), vec3<u32>(42431u, 0u, u_input.a)))), reverseBits(36273u));
    return countOneBits(_wgslsmith_dot_vec3_i32(~select(~vec3<i32>(u_input.b, arg_0.b.a, 1i), -vec3<i32>(-18813i, arg_0.b.b, 27920i), global0[_wgslsmith_index_u32(17435u, 26u)]), vec3<i32>(-53737i, 20580i, 1i)));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_1 {
    global1 = array<f32, 8>();
    global1 = array<f32, 8>();
    var var_0 = vec4<i32>(-_wgslsmith_mod_i32(-32237i ^ arg_0.x, 1i), func_3(Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(35816u, arg_1.x), 26u)], Struct_1(1i, -2147483647i), _wgslsmith_f_op_vec2_f32(vec2<f32>(1624f, global1[_wgslsmith_index_u32(25217u, 8u)]) - vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 8u)], global1[_wgslsmith_index_u32(u_input.a, 8u)])), -1115f, Struct_3(1u, vec2<f32>(441f, global1[_wgslsmith_index_u32(u_input.a, 8u)]), Struct_2(vec3<u32>(arg_1.x, u_input.a, u_input.a)), vec2<bool>(global0[_wgslsmith_index_u32(arg_1.x, 26u)], global0[_wgslsmith_index_u32(123761u, 26u)])))), firstLeadingBit(i32(-1i) * -21592i) >> (~(16362u << (arg_1.x % 32u)) % 32u), min(_wgslsmith_div_i32(~arg_0.x, -43238i), arg_0.x)) >> (reverseBits(abs(select(vec4<u32>(u_input.a, u_input.a, 4294967295u, 1u), countOneBits(arg_1), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 26u)], false, false, global0[_wgslsmith_index_u32(u_input.a, 26u)]), vec4<bool>(global0[_wgslsmith_index_u32(111369u, 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)]), vec4<bool>(global0[_wgslsmith_index_u32(31496u, 26u)], global0[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)], true))))) % vec4<u32>(32u));
    var_0 = vec4<i32>(1i, select(-(-arg_2.b << (u_input.a % 32u)), -_wgslsmith_mult_i32(u_input.b ^ u_input.b, _wgslsmith_sub_i32(arg_0.x, arg_2.b)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_1.zwz, vec3<u32>(~arg_1.x, arg_1.x, 4294967295u)), 26u)]), -21437i, -2147483647i);
    return arg_2;
}

fn func_1(arg_0: vec4<u32>, arg_1: f32, arg_2: vec4<f32>) -> Struct_4 {
    global1 = array<f32, 8>();
    global1 = array<f32, 8>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1)));
    global1 = array<f32, 8>();
    global1 = array<f32, 8>();
    return Struct_4(true, func_2(reverseBits(vec4<i32>(-29610i, u_input.b, _wgslsmith_mod_i32(u_input.b, u_input.b), -22099i)), arg_0, Struct_1(abs(u_input.b), u_input.b)), arg_2.zw, -1055f, Struct_3(min(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 10912u, u_input.a), _wgslsmith_mod_vec3_u32(arg_0.xwy, vec3<u32>(arg_0.x, 46049u, u_input.a)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1141f * arg_2.x) + 1000f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1)))), Struct_2(vec3<u32>(1u, firstTrailingBit(0u), 1u)), select(!select(vec2<bool>(true, global0[_wgslsmith_index_u32(arg_0.x, 26u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)]), true), !select(vec2<bool>(global0[_wgslsmith_index_u32(arg_0.x, 26u)], true), vec2<bool>(true, false), global0[_wgslsmith_index_u32(31205u, 26u)]), any(select(vec4<bool>(false, global0[_wgslsmith_index_u32(12334u, 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)], false), vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)], false), true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2900u;
    global1 = array<f32, 8>();
    var var_1 = 40731u;
    let var_2 = ~vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(67514u, 0u), vec2<u32>(1u, min(1u, 69812u))), var_0);
    let var_3 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, var_0, 36964u, 1u) << (vec4<u32>(4294967295u, ~4294967295u, select(u_input.a, var_0, false), ~var_0) % vec4<u32>(32u)), reverseBits(~vec4<u32>(18645u, 8426u, 7502u, 1u) & ~vec4<u32>(u_input.a, u_input.a, u_input.a, 8716u))), 26u)];
    var var_4 = func_1(~vec4<u32>(0u, _wgslsmith_mod_u32(1u, u_input.a), var_0, 4294967295u | ~u_input.a), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(12241u, 8u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(17007u, 8u)]))))), vec4<f32>(_wgslsmith_f_op_f32(1000f + global1[_wgslsmith_index_u32(1u, 8u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(514f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(var_0, 8u)], global1[_wgslsmith_index_u32(1291u, 8u)]) - -124f)), global1[_wgslsmith_index_u32(var_2.x, 8u)], 500f));
    var var_5 = all(var_4.e.d);
    var var_6 = var_4.b;
    var var_7 = !all(!select(var_4.e.d, !vec2<bool>(var_4.a, false), var_4.e.d));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -vec4<i32>(1i, var_6.a, var_6.a, -74863i));
}

