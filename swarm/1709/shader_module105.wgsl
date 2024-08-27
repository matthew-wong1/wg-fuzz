struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19>;

var<private> global1: Struct_2;

var<private> global2: array<vec4<u32>, 20> = array<vec4<u32>, 20>(vec4<u32>(12277u, 0u, 60614u, 0u), vec4<u32>(0u, 87078u, 79122u, 43625u), vec4<u32>(0u, 48738u, 1u, 12358u), vec4<u32>(15364u, 4294967295u, 0u, 1u), vec4<u32>(17625u, 111559u, 4768u, 4294967295u), vec4<u32>(7048u, 46283u, 1u, 40722u), vec4<u32>(87717u, 85506u, 1u, 25051u), vec4<u32>(9379u, 1u, 1u, 50140u), vec4<u32>(0u, 10890u, 0u, 18976u), vec4<u32>(12215u, 4294967295u, 1u, 0u), vec4<u32>(52373u, 1u, 1u, 1u), vec4<u32>(93287u, 6513u, 0u, 1u), vec4<u32>(4294967295u, 33464u, 4294967295u, 1u), vec4<u32>(1u, 102336u, 7768u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 9981u, 1u), vec4<u32>(0u, 86062u, 0u, 0u), vec4<u32>(4294967295u, 0u, 12451u, 0u), vec4<u32>(23581u, 42103u, 54367u, 78840u), vec4<u32>(40047u, 0u, 0u, 4294967295u), vec4<u32>(88443u, 0u, 1u, 0u));

var<private> global3: Struct_1;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_2, arg_3: bool) -> i32 {
    global0 = array<i32, 19>();
    var var_0 = select(select(arg_2.a.c.xx, global3.c.xz, vec2<bool>((-1000f >= global1.a.a) & true, all(select(vec2<bool>(false, global3.d), vec2<bool>(global1.a.c.x, arg_3), vec2<bool>(global1.a.c.x, arg_3))))), global3.c.xz, !(!vec2<bool>(global3.d, global1.a.c.x != true)));
    var var_1 = global1.a;
    let var_2 = arg_2;
    let var_3 = global1.a;
    return ~(-71060i) | arg_2.a.b;
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> vec3<f32> {
    let var_0 = ~arg_1;
    var var_1 = vec2<i32>(countOneBits(~(-arg_0.b)), -2147483647i) | select(max(abs(abs(vec2<i32>(arg_0.b, 39404i))), vec2<i32>(firstTrailingBit(global1.a.b), global0[_wgslsmith_index_u32(~17721u, 19u)])), select(_wgslsmith_mult_vec2_i32(vec2<i32>(global3.b, global3.b), select(vec2<i32>(arg_0.b, 2147483647i), vec2<i32>(global3.b, global1.a.b), global1.a.c.xz)), _wgslsmith_sub_vec2_i32(-vec2<i32>(1i, arg_0.b), -vec2<i32>(global1.a.b, 0i)), vec2<bool>(arg_0.d & false, all(vec2<bool>(true, global1.a.c.x)))), vec2<bool>(global1.a.d, !(false | global3.c.x)));
    var_1 = vec2<i32>(0i, 8801i ^ func_3(120134u, select(1u, u_input.a.x ^ 1u, global1.a.c.x), Struct_2(global1.a, global3.a), true));
    var var_2 = ~_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(arg_1, u_input.c), 20u)], _wgslsmith_add_vec4_u32(~(~global2[_wgslsmith_index_u32(u_input.b.x, 20u)]), vec4<u32>(1u, 37068u, var_0, arg_1 << (var_0 % 32u))));
    global0 = array<i32, 19>();
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a), 1f, _wgslsmith_f_op_f32(global1.a.a * 1414f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.a, -1375f, global1.a.a))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-937f, global3.a, global1.b))))), _wgslsmith_div_vec3_f32(vec3<f32>(1f, -240f, _wgslsmith_f_op_f32(sign(global3.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(566f, 1000f, global1.b))))));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: vec3<u32>) -> Struct_3 {
    global3 = global1.a;
    var var_0 = u_input.c;
    let var_1 = ((_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.b.x), firstLeadingBit(arg_2.x)) | ~u_input.b.x) >> (~4294967295u % 32u)) << ((_wgslsmith_mod_u32(abs(1u), ~(~u_input.b.x)) | 0u) % 32u);
    var var_2 = Struct_2(global1.a, _wgslsmith_f_op_f32(1369f + _wgslsmith_f_op_f32(-arg_1.x)));
    var var_3 = var_2.a.a;
    return Struct_3((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b + -101f)) != 1199f) == (firstTrailingBit(i32(-1i) * -2147483647i) <= _wgslsmith_div_i32(_wgslsmith_div_i32(-6031i, -2147483647i), -52723i)), countOneBits(min(min(u_input.a.x, 1u), select(39062u, u_input.c, true)) << ((arg_2.x & 46363u) % 32u)));
}

fn func_1(arg_0: bool) -> Struct_3 {
    let var_0 = global3.c.zy;
    global0 = array<i32, 19>();
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -942f);
    global0 = array<i32, 19>();
    return func_4(~(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, global1.a.b), vec2<i32>(31983i, global3.b), vec2<i32>(2147483647i, 433i)) & select(vec2<i32>(global1.a.b, global3.b), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], global3.b), vec2<bool>(true, global3.c.x))) >> (u_input.b % vec2<u32>(32u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.a, 1533f, -1201f))))), _wgslsmith_f_op_vec3_f32(func_2(global1.a, u_input.c))), vec3<u32>(4294967295u, reverseBits(~1u), u_input.c) ^ ~select(vec3<u32>(2087u, u_input.b.x, 59431u), vec3<u32>(u_input.b.x, 4294967295u, 36915u) ^ vec3<u32>(85293u, u_input.a.x, 5294u), vec3<bool>(false, arg_0, global3.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<u32>, 20>();
    let var_0 = func_1(global3.d);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a ^ ~vec2<u32>(0u, ~var_0.b), _wgslsmith_mod_vec4_u32(select(firstTrailingBit(vec4<u32>(var_0.b, 53003u, 0u, 0u)), vec4<u32>(var_0.b, u_input.c, 3167u, u_input.b.x), false), ~global2[_wgslsmith_index_u32(~21996u, 20u)]) ^ global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, 1u), 20u)], ~44686u, ~_wgslsmith_mod_u32(u_input.c, var_0.b), _wgslsmith_div_i32(global1.a.b, 1i));
}

