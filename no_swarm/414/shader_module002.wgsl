struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: Struct_1,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25>;

var<private> global1: Struct_1;

var<private> global2: u32 = 20403u;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> bool {
    return u_input.b.x < u_input.b.x;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_2) -> Struct_2 {
    global1 = arg_3.c;
    global0 = array<u32, 25>();
    global2 = firstLeadingBit(1u) >> (reverseBits(~(firstLeadingBit(global0[_wgslsmith_index_u32(13257u, 25u)]) | 6965u)) % 32u);
    global1 = arg_3.c;
    let var_0 = _wgslsmith_sub_u32(arg_1.b, select(~arg_1.b, ~arg_3.c.b, (4294967295u > global1.b) & arg_2));
    return arg_3;
}

fn func_4(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_2) -> u32 {
    let var_0 = arg_1;
    global1 = arg_2.c;
    global2 = 1u;
    var var_1 = !(!global1.a);
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(946f, -1488f));
    return _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(20910u, 0u, 0u, u_input.a.x) >> (abs(~vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], 1u, global0[_wgslsmith_index_u32(1u, 25u)], global1.b)) % vec4<u32>(32u)), countOneBits(vec4<u32>(u_input.a.x, 40401u, global1.b, 14667u) ^ vec4<u32>(global0[_wgslsmith_index_u32(0u, 25u)], 16995u, 4294967295u, arg_2.c.b))), 61940u);
}

fn func_5(arg_0: u32) -> u32 {
    global1 = Struct_1(true, global0[_wgslsmith_index_u32(global1.b, 25u)]);
    let var_0 = 4294967295u;
    return global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(~(1u | (4294967295u >> (u_input.a.x % 32u))), 25u)], 1u) << ((~_wgslsmith_add_u32(var_0, _wgslsmith_sub_u32(global1.b, arg_0)) & (select(arg_0, ~11251u, u_input.b.x < u_input.b.x) ^ var_0)) % 32u), 25u)];
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1) -> vec2<bool> {
    global2 = global0[_wgslsmith_index_u32(func_5(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1154f, -1000f)))), -(~countOneBits(vec4<i32>(u_input.b.x, 1i, u_input.b.x, 11967i))), func_3(countOneBits(vec4<i32>(2147483647i, -86169i, -44271i, u_input.b.x)) ^ vec4<i32>(-636i, u_input.b.x, -2147483647i, u_input.b.x), arg_1, true, Struct_2(select(vec2<bool>(false, global1.a), vec2<bool>(true, arg_1.a), true), -1698f, arg_1, func_2(), _wgslsmith_f_op_f32(-339f + 350f))))), 25u)];
    global1 = Struct_1(arg_1.a, 4294967295u);
    var var_0 = ~arg_0.x;
    var var_1 = firstTrailingBit(_wgslsmith_mult_i32(~u_input.b.x, u_input.b.x));
    var_0 = ~reverseBits(4294967295u ^ ~arg_0.x) << (0u % 32u);
    return select(select(vec2<bool>(!func_2(), -304f != _wgslsmith_f_op_f32(sign(-1686f))), vec2<bool>(true, true), !select(select(vec2<bool>(false, false), vec2<bool>(true, global1.a), false), select(vec2<bool>(false, arg_1.a), vec2<bool>(global1.a, arg_1.a), vec2<bool>(global1.a, arg_1.a)), true)), !(!vec2<bool>(true, func_2())), select(func_3(vec4<i32>(max(u_input.b.x, u_input.b.x), -u_input.b.x, ~u_input.b.x, select(u_input.b.x, 2147483647i, global1.a)), arg_1, false && select(false, arg_1.a, false), func_3(-vec4<i32>(u_input.b.x, 0i, u_input.b.x, 2147483647i), arg_1, true, func_3(vec4<i32>(-17788i, u_input.b.x, u_input.b.x, 2147483647i), arg_1, false, Struct_2(vec2<bool>(true, arg_1.a), 180f, arg_1, false, -1180f)))).a, !select(!vec2<bool>(global1.a, arg_1.a), !vec2<bool>(arg_1.a, true), !vec2<bool>(arg_1.a, true)), vec2<bool>(any(!vec3<bool>(true, arg_1.a, global1.a)), false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global2 = global1.b;
    let var_1 = Struct_2(func_1(abs(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 6422u, 1u, u_input.a.x), vec4<u32>(50268u, global1.b, 4294967295u, 19064u)))), Struct_1(true, max(_wgslsmith_sub_u32(2881u, global0[_wgslsmith_index_u32(global1.b, 25u)]), 1u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(310f, -1203f) * _wgslsmith_div_f32(725f, _wgslsmith_f_op_f32(sign(-920f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_3(vec4<i32>(-24731i, 2147483647i, u_input.b.x, u_input.b.x), Struct_1(true, 0u), var_0, Struct_2(vec2<bool>(var_0, global1.a), -382f, Struct_1(true, 77562u), global1.a, -307f)).b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2515f - -995f)))), Struct_1(var_0, global1.b), global1.a, _wgslsmith_f_op_f32(596f - _wgslsmith_f_op_f32(sign(316f))));
    var var_2 = 3044u;
    let var_3 = vec4<f32>(var_1.b, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-406f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b * var_1.b), _wgslsmith_f_op_f32(var_1.b - var_1.b))))), _wgslsmith_f_op_f32(floor(var_1.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.b))) * -296f));
    let var_4 = ~(~(-4437i));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<u32>(_wgslsmith_div_u32(u_input.a.x, global1.b), global1.b | 35941u)) & max(vec2<u32>(global0[_wgslsmith_index_u32(func_4(var_1.e, vec4<i32>(u_input.b.x, 13789i, u_input.b.x, var_4), var_1), 25u)], 1u), reverseBits(u_input.a.yz) << (vec2<u32>(global0[_wgslsmith_index_u32(global1.b, 25u)], var_1.c.b) % vec2<u32>(32u))), _wgslsmith_add_i32(u_input.b.x, min(u_input.b.x, -u_input.b.x)));
}

