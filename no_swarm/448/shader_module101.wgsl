struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14> = array<f32, 14>(-642f, -285f, -296f, 1000f, 2056f, -883f, 1000f, -1212f, 1012f, 1732f, -1162f, -555f, 1519f, 364f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_4) -> f32 {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.d.x)), 301f, all(vec2<bool>(arg_1, arg_1)))) + _wgslsmith_f_op_f32(f32(-1f) * -502f)), _wgslsmith_f_op_f32(floor(920f))));
    let var_2 = arg_2.a;
    let var_3 = arg_2.a;
    global0 = array<f32, 14>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1))))) - -1368f) - global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_2.a.c, ~arg_0.x), 14u)]);
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(689f + -301f);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<u32>(11970u, u_input.a, 35853u), true, Struct_4(Struct_1(vec2<i32>(2147483647i, 35399i), vec2<i32>(-6712i, -5373i), u_input.b.x, vec2<f32>(-298f, global0[_wgslsmith_index_u32(1u, 14u)])))))))) - 1225f);
    let var_2 = vec3<bool>(false, any(select(vec4<bool>(all(vec4<bool>(true, false, false, true)), u_input.a >= 25460u, true, false), vec4<bool>(true, all(vec4<bool>(false, false, false, true)), true, u_input.b.x != 82559u), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), false))), any(vec2<bool>(true, true)));
    var var_3 = Struct_4(Struct_1(vec2<i32>(1i, abs(i32(-1i) * -2147483647i)), firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(1i, 1i))), reverseBits(_wgslsmith_sub_u32(~u_input.b.x, _wgslsmith_mult_u32(u_input.c, 70128u))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-2495f)), _wgslsmith_f_op_f32(-147f - global0[_wgslsmith_index_u32(4294967295u, 14u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(106f, var_1))))));
    var var_4 = u_input.b;
    return Struct_4(Struct_1(var_3.a.b, reverseBits(select(var_3.a.b, var_3.a.a, var_2.xz) >> ((u_input.b.xy | vec2<u32>(u_input.b.x, 58641u)) % vec2<u32>(32u))), var_4.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a.d.x, 863f))))));
}

fn func_1() -> Struct_4 {
    return func_2();
}

fn func_4(arg_0: Struct_4) -> u32 {
    global0 = array<f32, 14>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-arg_0.a.d);
    global0 = array<f32, 14>();
    let var_1 = func_1().a;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.x - _wgslsmith_f_op_f32(-var_1.d.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 14u)]) - _wgslsmith_f_op_f32(-arg_0.a.d.x)));
    return _wgslsmith_div_u32(_wgslsmith_sub_u32(0u, _wgslsmith_sub_u32(~(~4294967295u), min(45693u, var_1.c >> (var_1.c % 32u)))), firstTrailingBit(arg_0.a.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(i32(-1i) * -7999i);
    var_0 = -2147483647i;
    global0 = array<f32, 14>();
    let var_1 = firstTrailingBit(vec3<u32>(~13915u, func_4(func_1()), firstLeadingBit(u_input.c ^ 41910u))) | u_input.b;
    var_0 = ~reverseBits(_wgslsmith_sub_i32(_wgslsmith_add_i32(0i, i32(-1i) * -2147483647i), abs(func_1().a.b.x)));
    global0 = array<f32, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1127f - -1451f)), -1i);
}

