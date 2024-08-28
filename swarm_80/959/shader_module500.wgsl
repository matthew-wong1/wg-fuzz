struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 29>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-847f, 1340f)), _wgslsmith_div_f32(1573f, 1000f)), -241f);
    let var_1 = Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(51664i, abs(_wgslsmith_mult_i32(62415i, 10859i))), vec2<i32>(firstLeadingBit(2147483647i), _wgslsmith_add_i32(~(-2147483647i), -15693i))), -625f, true);
    global1 = array<Struct_1, 29>();
    let var_2 = firstLeadingBit(select(var_1.a.x, i32(-1i) * -(var_1.a.x >> (u_input.a % 32u)), var_1.c));
    global1 = array<Struct_1, 29>();
    return var_1;
}

fn func_1() -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(4294967295u, 29u)];
    global1 = array<Struct_1, 29>();
    let var_1 = !(!select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, var_0.c, false), vec3<bool>(var_0.c, var_0.c, var_0.c), vec3<bool>(false, var_0.c, var_0.c)), vec3<bool>(var_0.c, false, var_0.c)), !vec3<bool>(var_0.c, true, var_0.c), !(var_0.b != 1270f)));
    var var_2 = global1[_wgslsmith_index_u32(u_input.a, 29u)];
    global1 = array<Struct_1, 29>();
    return func_2();
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> f32 {
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = Struct_2(global1[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 29u)], global1[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x), 29u)], !select(!vec3<bool>(true, var_0, false), select(!vec3<bool>(var_0, var_0, false), select(vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, false, true), var_0), vec3<bool>(false, var_0, false)), true), Struct_1(vec2<i32>(_wgslsmith_sub_i32(-1i, _wgslsmith_div_i32(-1i, -1i)), _wgslsmith_mult_i32(-85i, abs(37666i))), _wgslsmith_f_op_f32(step(-1622f, _wgslsmith_f_op_f32(sign(-679f)))), false), func_1());
    global0 = true;
    var var_2 = func_1();
    let var_3 = var_2.a;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(1022f * _wgslsmith_f_op_f32(select(var_2.b, -578f, true))), var_1.b)), _wgslsmith_f_op_f32(644f * var_1.d.b)));
    var_2 = Struct_1(vec2<i32>(_wgslsmith_dot_vec2_i32(var_1.d.a, ~(vec2<i32>(2147483647i, -11310i) >> (vec2<u32>(u_input.b.x, 4294967295u) % vec2<u32>(32u)))), -2147483647i), var_2.b, var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(u_input.b.x >> (select(~u_input.a, ~u_input.b.x, true) % 32u)), 646f);
}

