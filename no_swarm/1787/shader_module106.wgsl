struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec3<i32>, 3>;

var<private> global2: Struct_1 = Struct_1(0u, vec2<bool>(true, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<u32>) -> u32 {
    global2 = Struct_1(_wgslsmith_add_u32(20063u, 24447u), select(select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(global2.b.x, global2.b.x), global2.b.x), vec2<bool>(true, true), all(vec4<bool>(global2.b.x, global2.b.x, true, global2.b.x))), global2.b), select(!global2.b, !select(vec2<bool>(global2.b.x, false), global2.b, false), global2.b), global2.b.x));
    let var_0 = Struct_1(13128u, global2.b);
    let var_1 = select(global2.b, vec2<bool>(var_0.b.x, global2.b.x), !vec2<bool>(global2.b.x, all(select(vec2<bool>(false, true), global2.b, var_0.b.x))));
    var var_2 = Struct_1(0u, select(vec2<bool>(all(select(vec2<bool>(var_1.x, global2.b.x), global2.b, vec2<bool>(var_1.x, var_1.x))), true), global2.b, !(!select(global2.b, var_1, var_1))));
    return _wgslsmith_mod_u32(32653u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(0u, 62033u, 41046u)), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.a, 1u, 53844u), vec3<u32>(9561u, var_0.a, u_input.b.x))), arg_0));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    global2 = Struct_1(_wgslsmith_div_u32(1u, 32433u), select(global2.b, vec2<bool>(true, -2147483647i <= u_input.c.x), any(select(!vec4<bool>(false, true, arg_0.b.x, false), !vec4<bool>(true, false, arg_0.b.x, true), select(vec4<bool>(true, true, arg_1, global2.b.x), vec4<bool>(arg_0.b.x, arg_0.b.x, true, arg_0.b.x), global2.b.x)))));
    var var_0 = Struct_1(~(~select(~8296u, func_3(vec3<u32>(83549u, u_input.d.x, 9174u), u_input.d), all(vec3<bool>(arg_1, arg_0.b.x, false)))), select(vec2<bool>(arg_1, any(select(vec4<bool>(global2.b.x, false, arg_1, false), vec4<bool>(false, false, arg_1, arg_0.b.x), vec4<bool>(false, arg_0.b.x, arg_0.b.x, global2.b.x)))), select(select(vec2<bool>(true, false), select(vec2<bool>(arg_0.b.x, false), vec2<bool>(arg_0.b.x, arg_1), true), 52265u <= arg_0.a), vec2<bool>(any(vec4<bool>(global2.b.x, global2.b.x, false, arg_1)), any(global2.b)), select(vec2<bool>(true, true), !global2.b, global2.b)), arg_1));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(465f, -827f) - 1f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(179f))))));
    var var_2 = ~(~u_input.d);
    var var_3 = vec4<i32>(firstTrailingBit(~firstTrailingBit(u_input.c.x)), -abs(_wgslsmith_div_i32(~2147483647i, u_input.c.x)), ~(-(~1i)), countOneBits(min(0i, 2147483647i ^ u_input.c.x)) & _wgslsmith_mult_i32(~u_input.c.x & u_input.c.x, 43875i));
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: u32, arg_3: Struct_1) -> f32 {
    let var_0 = -1505f;
    let var_1 = var_0;
    global0 = true;
    let var_2 = countOneBits(func_2(func_2(func_2(arg_3, arg_0.b.x), all(select(vec3<bool>(false, false, arg_0.b.x), vec3<bool>(false, global2.b.x, true), arg_3.b.x))), true).a);
    var var_3 = arg_0;
    return _wgslsmith_f_op_f32(-var_1);
}

fn func_1() -> Struct_1 {
    global1 = array<vec3<i32>, 3>();
    let var_0 = u_input.c.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1478f, -365f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1967f), -1186f) + vec3<f32>(1f, 2407f, 1f))));
    global1 = array<vec3<i32>, 3>();
    let var_2 = _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(func_4(func_2(Struct_1(global2.a, vec2<bool>(global2.b.x, true)), true), firstTrailingBit(~firstTrailingBit(vec4<u32>(4294967295u, 19745u, 4294967295u, global2.a))), abs(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(26240u, u_input.a, global2.a, global2.a)), vec4<u32>(global2.a, global2.a, global2.a, u_input.d.x))), Struct_1(global2.a, global2.b))));
    return func_2(Struct_1(1u, !global2.b), all(global2.b));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> bool {
    global2 = Struct_1(58782u, arg_3.b);
    global0 = global2.b.x;
    var var_0 = global2.a;
    var_0 = 1u;
    var var_1 = 1i;
    return global2.b.x;
}

fn func_6(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_add_i32(u_input.c.x, -_wgslsmith_div_i32(firstLeadingBit(firstTrailingBit(-50516i)), u_input.c.x >> (global2.a % 32u)));
    global1 = array<vec3<i32>, 3>();
    global2 = func_1();
    let var_1 = Struct_1(func_3(~vec3<u32>(25009u, u_input.d.x, u_input.a), ~(~(~u_input.d))), global2.b);
    let var_2 = countOneBits(-vec2<i32>(-1i, select(-u_input.c.x, -u_input.c.x, arg_0.x)));
    return Struct_1(var_1.a, global2.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.zx;
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, _wgslsmith_div_u32(~29198u, global2.a)), 3u)];
    var var_2 = func_6(vec3<bool>(func_5(_wgslsmith_div_f32(-1011f, -960f), func_1(), global2.b.x, Struct_1(global2.a ^ u_input.a, !vec2<bool>(false, global2.b.x))), global2.b.x, (global2.a <= 4294967295u) | true));
    let var_3 = vec2<i32>(abs(min(var_0.x, var_1.x & var_0.x)), u_input.c.x);
    global2 = func_6(!(!vec3<bool>(global2.b.x, !var_2.b.x, any(vec4<bool>(false, var_2.b.x, var_2.b.x, var_2.b.x)))));
    var_2 = Struct_1(u_input.a & func_6(vec3<bool>(false, !global2.b.x, true)).a, global2.b);
    let x = u_input.a;
    s_output = StorageBuffer((-firstTrailingBit(var_3) ^ -select(u_input.c.yz, u_input.c.wx, global2.b.x)) ^ min(-max(u_input.c.xy, vec2<i32>(-20070i, var_0.x)), vec2<i32>(68141i, 2147483647i)));
}

