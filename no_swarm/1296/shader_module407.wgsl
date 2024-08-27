struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, -1i, vec4<bool>(false, false, false, true));

var<private> global1: array<u32, 27>;

var<private> global2: array<f32, 27> = array<f32, 27>(-533f, 1185f, -312f, -1273f, -352f, 1581f, -105f, -418f, 954f, -553f, 172f, -209f, -1655f, 465f, -312f, 2110f, 1314f, 370f, 809f, 561f, -538f, -785f, -1596f, -3220f, -593f, 275f, -692f);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<i32> {
    global0 = Struct_1(global0.a, 18743i, select(!global0.c, global0.c, !select(select(vec4<bool>(true, false, global0.c.x, global0.a), global0.c, global0.c.x), vec4<bool>(true, global0.a, global0.a, true), vec4<bool>(global0.a, false, false, true))));
    global1 = array<u32, 27>();
    var var_0 = Struct_1(select(false, any(global0.c), u_input.d.x != select(abs(-24350i), global0.b, any(global0.c.wwz))), u_input.d.x, vec4<bool>(true, all(vec4<bool>(!global0.a, global0.a, false, global0.b != global0.b)), true, global0.c.x));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(51723u, 27u)], 27u)], 27u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -505f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(u_input.c, 27u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(50861u, 27u)], 27u)], 27u)], 27u)], 27u)], 27u)])), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(809f, -450f), vec2<f32>(-137f, global2[_wgslsmith_index_u32(72198u, 27u)])))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(454f, 779f)))))), true)), _wgslsmith_mod_i32((_wgslsmith_dot_vec2_i32(vec2<i32>(global0.b, 1i), vec2<i32>(global0.b, var_0.b)) | var_0.b) << (1u % 32u), u_input.d.x | _wgslsmith_mult_i32(1i, _wgslsmith_mod_i32(u_input.d.x, var_0.b))));
    let var_2 = ~vec2<u32>(u_input.c, ~global1[_wgslsmith_index_u32(u_input.b.x, 27u)]);
    return ~_wgslsmith_mult_vec3_i32(~firstLeadingBit(vec3<i32>(-1i, 30706i, -27656i)), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, u_input.d.x, global0.b), -u_input.d)) << (max(select(vec3<u32>(~14533u, global1[_wgslsmith_index_u32(u_input.b.x, 27u)] ^ 1u, 1u), vec3<u32>(~4294967295u, u_input.b.x, abs(11630u)), false), u_input.a.xyz) % vec3<u32>(32u));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: vec3<u32>, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = arg_3;
    var_0 = arg_3;
    var var_1 = _wgslsmith_mult_vec3_i32(firstTrailingBit(select(~vec3<i32>(global0.b, u_input.d.x, global0.b), ~u_input.d, !arg_0.zyz) ^ func_3()), ~(~vec3<i32>(arg_3.b, _wgslsmith_dot_vec2_i32(u_input.d.xy, vec2<i32>(global0.b, u_input.d.x)), select(-2147483647i, var_0.b, true))));
    var var_2 = _wgslsmith_div_f32(1725f, arg_3.a.x);
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-316f, _wgslsmith_f_op_f32(arg_3.a.x * var_0.a.x)))) + vec2<f32>(var_0.a.x, var_0.a.x)), abs(-9049i));
    return select(select(select(vec4<bool>(true, !arg_0.x, all(global0.c.yxz), true), select(vec4<bool>(true, true, true, global0.c.x), select(vec4<bool>(global0.c.x, global0.c.x, false, global0.c.x), vec4<bool>(false, true, global0.c.x, true), global0.c), select(vec4<bool>(global0.a, global0.c.x, global0.a, true), global0.c, arg_0.x)), true), select(vec4<bool>(true, any(vec3<bool>(true, true, arg_0.x)), arg_3.b > 24598i, true), vec4<bool>(all(vec2<bool>(arg_0.x, arg_0.x)), global0.a, !global0.c.x, true), !global0.a), select(select(arg_0, vec4<bool>(true, arg_0.x, true, false), !arg_0.x), global0.c, -var_1.x == ~0i)), select(global0.c, !vec4<bool>(!arg_0.x, global2[_wgslsmith_index_u32(u_input.b.x, 27u)] < var_3.a.x, any(vec3<bool>(global0.c.x, true, false)), arg_3.a.x == 331f), select(select(arg_0, select(global0.c, arg_0, arg_0), select(vec4<bool>(global0.a, global0.c.x, false, false), vec4<bool>(arg_0.x, global0.c.x, arg_0.x, true), vec4<bool>(true, false, true, true))), vec4<bool>(true, true, true, true), arg_0.x)), true);
}

fn func_1(arg_0: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_1(false, _wgslsmith_add_i32(global0.b, 0i), !select(select(!global0.c, vec4<bool>(arg_0.x, global0.c.x, global0.a, arg_0.x), vec4<bool>(global0.a, global0.c.x, false, true)), global0.c, func_2(!vec4<bool>(global0.c.x, false, true, false), u_input.a.xwx, vec3<u32>(3694u, global1[_wgslsmith_index_u32(0u, 27u)], 11127u), Struct_2(vec2<f32>(global2[_wgslsmith_index_u32(22304u, 27u)], 1577f), 0i))));
    global2 = array<f32, 27>();
    var var_1 = u_input.a.xw;
    global1 = array<u32, 27>();
    var var_2 = _wgslsmith_dot_vec4_i32(~vec4<i32>(global0.b, 0i, -36882i, _wgslsmith_sub_i32(u_input.d.x, -var_0.b)), vec4<i32>(-_wgslsmith_mod_i32(global0.b | u_input.d.x, 1i), global0.b, abs(i32(-1i) * -var_0.b), -max(u_input.d.x, 29405i)));
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(-449f, global2[_wgslsmith_index_u32(4294967295u, 27u)]), vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 27u)], global2[_wgslsmith_index_u32(11647u, 27u)])), _wgslsmith_div_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(var_1.x, 27u)], global2[_wgslsmith_index_u32(var_1.x, 27u)]), vec2<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 27u)], global2[_wgslsmith_index_u32(var_1.x, 27u)])))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(824f, global2[_wgslsmith_index_u32(0u, 27u)]) * vec2<f32>(411f, global2[_wgslsmith_index_u32(0u, 27u)])), vec2<f32>(-1338f, -891f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(561f, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(444u, 27u)], 27u)]) + vec2<f32>(global2[_wgslsmith_index_u32(var_1.x, 27u)], global2[_wgslsmith_index_u32(1u, 27u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(-695f, global2[_wgslsmith_index_u32(u_input.b.x, 27u)]) * vec2<f32>(global2[_wgslsmith_index_u32(var_1.x, 27u)], global2[_wgslsmith_index_u32(135734u, 27u)]))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2[_wgslsmith_index_u32(53671u, 27u)], global2[_wgslsmith_index_u32(0u, 27u)])))))), _wgslsmith_mod_i32(_wgslsmith_add_i32(~(-18383i), _wgslsmith_mod_i32(_wgslsmith_add_i32(-2147483647i, var_0.b), -u_input.d.x)), -2147483647i));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = vec4<bool>(arg_3.x, 0u > _wgslsmith_mod_u32(max(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 1u, 1u), vec3<u32>(4294967295u, u_input.a.x, 0u)), max(0u, arg_1.x)), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, global1[_wgslsmith_index_u32(27201u, 27u)], u_input.a.x), arg_1), ~vec3<u32>(10369u, arg_1.x, arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, func_1(arg_2.c.xww).a.x))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -660f))), !any(vec4<bool>(arg_2.a, true, true, !arg_2.a)));
    var var_1 = !global0.c.yy;
    return Struct_2(arg_0.a, 37912i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.b.x;
    var var_1 = vec2<bool>(!any(vec3<bool>(true, global0.c.x, global0.a)), any(vec2<bool>(any(!vec3<bool>(global0.c.x, global0.a, global0.c.x)), any(!global0.c.yzz))));
    var_1 = global0.c.zw;
    global1 = array<u32, 27>();
    let var_2 = func_4(func_1(global0.c.xyy), ~vec3<u32>(34789u, 1u, 69786u), Struct_1(select(false, (u_input.a.x < 4294967295u) && false, !var_1.x), -1i, vec4<bool>(false, global0.b >= u_input.d.x, global1[_wgslsmith_index_u32(4294967295u, 27u)] > global1[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 27u)], var_1.x)), select(global0.c.zx, global0.c.zy, global0.c.zz));
    global2 = array<f32, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_add_i32(~1i, -1i), _wgslsmith_add_i32(36722i, 53616i), firstTrailingBit(2147483647i)));
}

