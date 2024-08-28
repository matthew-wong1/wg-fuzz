struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: i32,
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

var<private> global0: array<Struct_1, 1>;

var<private> global1: f32;

var<private> global2: f32;

var<private> global3: array<f32, 8> = array<f32, 8>(252f, -1736f, -1555f, 210f, -1098f, -431f, 172f, -531f);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2) -> vec3<i32> {
    var var_0 = vec3<bool>(arg_0.b.a.x && arg_0.b.a.x, all(select(!(!arg_0.b.a), arg_0.b.a, true)), true);
    var var_1 = Struct_1(vec3<bool>(var_0.x, !arg_0.b.a.x, arg_0.b.a.x), u_input.b);
    global3 = array<f32, 8>();
    let var_2 = true;
    var_0 = !(!(!arg_0.b.a));
    return reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.c.x, firstLeadingBit(31749i << (arg_0.b.b % 32u)), 22940i), arg_0.c));
}

fn func_2(arg_0: vec3<i32>) -> vec2<u32> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.b, 5018u), 8u)], -1108f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(369f + global3[_wgslsmith_index_u32(40184u, 8u)])))), Struct_1(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), true), u_input.b), vec3<i32>(-30061i, arg_0.x, arg_0.x));
    let var_1 = select(any(!(!vec3<bool>(var_0.b.a.x, var_0.b.a.x, var_0.b.a.x))), false, true);
    global3 = array<f32, 8>();
    var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1036f), global0[_wgslsmith_index_u32(u_input.b, 1u)], func_3(Struct_2(_wgslsmith_f_op_f32(sign(var_0.a)), Struct_1(vec3<bool>(var_0.b.a.x, var_1, true), u_input.b), firstLeadingBit(vec3<i32>(var_0.c.x, 15643i, arg_0.x)))) & _wgslsmith_add_vec3_i32(-vec3<i32>(var_0.c.x, 58902i, 0i), var_0.c));
    let var_2 = !all(!(!(!vec3<bool>(false, false, var_0.b.a.x))));
    return vec2<u32>(countOneBits(4294967295u), ~32254u);
}

fn func_1(arg_0: vec2<i32>, arg_1: bool) -> StorageBuffer {
    let var_0 = _wgslsmith_mod_vec2_u32(~reverseBits(func_2(vec3<i32>(u_input.c.x, 15295i, u_input.d))), vec2<u32>(u_input.b, ~max(4294967295u, u_input.b))) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_0.x, 8u)]), _wgslsmith_div_f32(320f, -115f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(27777u, 8u)], 1000f), 170f, true))), global3[_wgslsmith_index_u32(var_0.x, 8u)]));
    let var_2 = true;
    var var_3 = Struct_2(global3[_wgslsmith_index_u32(var_0.x, 8u)], global0[_wgslsmith_index_u32(10234u, 1u)], -vec3<i32>(4444i, 4503i, arg_0.x));
    global1 = var_1.x;
    return StorageBuffer(~select(1u, 4294967295u, true), 565f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(u_input.b, 8u)])))), -1602f, -564f, _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(50447u, u_input.b), 8u)], _wgslsmith_f_op_f32(f32(-1f) * -903f), true)))))));
    let var_1 = false;
    global0 = array<Struct_1, 1>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global3[_wgslsmith_index_u32(1u, 8u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b, 8u)]))), 1196f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(495f, global3[_wgslsmith_index_u32(u_input.b, 8u)], global3[_wgslsmith_index_u32(80058u, 8u)]))) * _wgslsmith_f_op_vec3_f32(-var_0.xzw))))));
    let var_3 = var_0.wy;
    global2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 8u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * -1000f))))));
    let var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1706f)))) - 1680f))), global3[_wgslsmith_index_u32(u_input.b, 8u)], var_1));
    let x = u_input.a;
    s_output = func_1(abs(u_input.c), u_input.b <= u_input.b);
}

