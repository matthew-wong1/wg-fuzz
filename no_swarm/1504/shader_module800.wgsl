struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: array<Struct_2, 17>;

var<private> global2: Struct_1 = Struct_1(vec2<bool>(false, false), vec4<bool>(true, true, true, false), vec3<f32>(-770f, 343f, 619f));

var<private> global3: bool = false;

var<private> global4: array<i32, 19>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = ~(~(vec3<u32>(~14483u, reverseBits(arg_0), 47713u) & vec3<u32>(~u_input.a, u_input.a ^ u_input.b, 4294967295u)));
    return _wgslsmith_f_op_f32(floor(arg_2.c.x));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<u32>) -> u32 {
    global2 = global0[_wgslsmith_index_u32(arg_1.x, 30u)];
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_3(9826u, global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(reverseBits(abs(_wgslsmith_dot_vec3_u32(u_input.d, u_input.d))), 30u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.x + global2.c.x)) - _wgslsmith_f_op_f32(floor(-325f)))));
    let var_1 = arg_1;
    var var_2 = -1000f;
    var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(1f))));
    return arg_1.x;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: f32, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = u_input.e.x;
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b, abs(func_2(_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.c, var_0, var_0, 15425i), ~vec4<i32>(1i, var_0, global4[_wgslsmith_index_u32(0u, 19u)], 0i)), vec4<u32>(arg_0.x, 4294967295u, arg_0.x, arg_3.x ^ 0u))), 1u), 30u)];
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-131f)) + _wgslsmith_f_op_f32(-var_1.c.x)) + _wgslsmith_f_op_f32(1995f - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(409f, 151f))))) + arg_2);
    let var_3 = vec4<bool>(true, any(vec2<bool>(!var_1.b.x, all(var_1.b))), !(163f <= _wgslsmith_f_op_f32(select(arg_1.c.x, -924f, !var_1.b.x))), true);
    let var_4 = arg_3.x;
    return Struct_1(arg_1.b.yz, select(select(var_1.b, !(!var_1.b), var_3), select(!global2.b, !var_3, !var_3), select(select(var_1.b, select(vec4<bool>(var_3.x, global2.b.x, true, var_3.x), global2.b, false), select(vec4<bool>(global2.b.x, true, var_1.b.x, global2.a.x), vec4<bool>(var_3.x, false, false, true), global2.b.x)), var_3, true)), arg_1.c);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = _wgslsmith_mult_vec4_i32(reverseBits(_wgslsmith_div_vec4_i32(min(vec4<i32>(u_input.c, global4[_wgslsmith_index_u32(arg_2.x, 19u)], global4[_wgslsmith_index_u32(58724u, 19u)], 24163i), vec4<i32>(-26776i, global4[_wgslsmith_index_u32(55961u, 19u)], 47908i, u_input.e.x)), _wgslsmith_add_vec4_i32(vec4<i32>(-20176i, -22529i, 0i, 19399i), vec4<i32>(u_input.e.x, 1i, -57019i, u_input.e.x)))) ^ vec4<i32>(47339i, 0i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, 41673i, 2147483647i, -2147483647i), vec4<i32>(-1i, global4[_wgslsmith_index_u32(arg_2.x, 19u)], 31905i, -1i)), -global4[_wgslsmith_index_u32(arg_1.b, 19u)] >> (21383u % 32u), _wgslsmith_mod_i32(-2147483647i, global4[_wgslsmith_index_u32(1u, 19u)]) | (i32(-1i) * -1i)), -countOneBits(~(-vec4<i32>(29109i, u_input.c, global4[_wgslsmith_index_u32(97904u, 19u)], 49390i))));
    global4 = array<i32, 19>();
    var var_1 = arg_1.a.a.x || arg_3.b.x;
    global4 = array<i32, 19>();
    var var_2 = arg_1;
    return vec3<i32>(var_0.x, -2147483647i, -10466i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<i32>(countOneBits(-1i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, u_input.e.x, -1i) << (vec3<u32>(4294967295u, u_input.d.x, 4294967295u) % vec3<u32>(32u)), ~vec3<i32>(-2147483647i, 68861i, -27785i)), abs(u_input.c)), func_4(global2.b.zz, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(4294967295u, 65633u), 4294967295u >> (1u % 32u)), 17u)], min(vec4<u32>(4294967295u, 24007u, 1u, 0u), vec4<u32>(4294967295u, 4294967295u, u_input.b, u_input.b)), func_1(vec2<u32>(u_input.a, u_input.a), Struct_1(vec2<bool>(true, global2.b.x), vec4<bool>(true, false, false, true), vec3<f32>(global2.c.x, global2.c.x, -673f)), -152f, ~vec3<u32>(u_input.d.x, u_input.a, 4294967295u))), true), vec2<i32>(max(-(~15347i), _wgslsmith_clamp_i32(global4[_wgslsmith_index_u32(u_input.b, 19u)], u_input.c | global4[_wgslsmith_index_u32(u_input.b, 19u)], ~global4[_wgslsmith_index_u32(u_input.d.x, 19u)])), -1i), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-758f, 1266f) * _wgslsmith_f_op_f32(ceil(global2.c.x))), 2082f, _wgslsmith_f_op_f32(-global2.c.x)), !((global2.b.x | true) | false))), 1096f);
}

