struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26> = array<f32, 26>(-141f, -527f, -181f, 722f, -1000f, 1321f, 159f, 910f, 650f, 351f, 1000f, -1000f, 1132f, 1176f, -1139f, -963f, 296f, 870f, -138f, -1167f, 815f, -1556f, -674f, -903f, -1468f, 671f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: bool) -> i32 {
    var var_0 = vec3<f32>(904f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(firstTrailingBit(51448u), 26u)], _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(arg_1.x, 26u)]))))))), -1561f);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(27429u, 71778u), 26u)]), -1000f)), !(!arg_2.x));
    global0 = array<f32, 26>();
    global0 = array<f32, 26>();
    var var_2 = Struct_2(-(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.e, u_input.b.x, 1i) << (arg_1 % vec3<u32>(32u)), -vec3<i32>(u_input.e, u_input.c.x, -1i))), !vec3<bool>(any(arg_2.xw), arg_0, 13946u >= arg_1.x), Struct_1(-132f, arg_0), 2103f);
    return _wgslsmith_dot_vec2_i32(u_input.c >> (u_input.d.xz % vec2<u32>(32u)), max(firstLeadingBit(u_input.b), firstTrailingBit(firstTrailingBit(min(var_2.a.xy, vec2<i32>(var_2.a.x, 9469i))))));
}

fn func_2() -> bool {
    global0 = array<f32, 26>();
    var var_0 = vec2<i32>(-u_input.c.x, min(~u_input.e, i32(-1i) * -1i));
    let var_1 = Struct_2(vec3<i32>(var_0.x ^ func_3(all(vec3<bool>(false, true, false)), vec3<u32>(u_input.d.x, 1u, u_input.d.x), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), true), true), _wgslsmith_sub_i32(17559i, _wgslsmith_div_i32(67904i, _wgslsmith_add_i32(32615i, var_0.x))), ~abs(var_0.x)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !(reverseBits(u_input.a) >= _wgslsmith_clamp_i32(u_input.a, 0i, 0i))), Struct_1(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d.x, 26u)]), select(any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)), true, true)), global0[_wgslsmith_index_u32(~(~u_input.d.x), 26u)]);
    global0 = array<f32, 26>();
    var var_2 = u_input.d.x;
    return !all(var_1.b) | (var_1.c.a != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.d.x, 26u)], var_1.c.a))));
}

fn func_1(arg_0: bool, arg_1: u32) -> vec3<bool> {
    let var_0 = select(vec4<bool>(any(!select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(true, true, arg_0), vec3<bool>(false, true, arg_0))), true, arg_0, !(arg_0 == arg_0)), !select(vec4<bool>(arg_0, 310f < global0[_wgslsmith_index_u32(u_input.d.x, 26u)], arg_0, true), vec4<bool>(true, arg_0, arg_0, !arg_0), all(!vec2<bool>(arg_0, false))), arg_0);
    let var_1 = u_input.c.x;
    let var_2 = Struct_1(1062f, func_2());
    var var_3 = -(~2147483647i) >> (~(~((6746u >> (arg_1 % 32u)) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 62066u, u_input.d.x), vec3<u32>(arg_1, 0u, 38006u)))) % 32u);
    global0 = array<f32, 26>();
    return var_0.yww;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 26>();
    global0 = array<f32, 26>();
    var var_0 = Struct_2(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(u_input.c.x, -1i, _wgslsmith_sub_i32(u_input.a, u_input.a)), firstLeadingBit(firstLeadingBit(vec3<i32>(u_input.a, 1i, -36733i))), vec3<bool>(true, true, true)), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, u_input.a, u_input.a) & vec3<i32>(2147483647i, -31136i, u_input.a), -vec3<i32>(38629i, 11492i, u_input.c.x)), countOneBits(vec3<i32>(u_input.b.x, u_input.c.x, -74532i))), -max(select(vec3<i32>(23833i, -27729i, u_input.a), vec3<i32>(u_input.a, -1i, 0i), true), abs(vec3<i32>(-2147483647i, u_input.b.x, 9525i)))), func_1(all(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true))), ~1u), Struct_1(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(~45701u, 26u)], global0[_wgslsmith_index_u32(firstLeadingBit(~20639u), 26u)])), _wgslsmith_f_op_f32(ceil(-301f)) != _wgslsmith_f_op_f32(select(-813f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(10779u, 26u)]), true))), _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(abs(4294967295u), 26u)])));
    let var_1 = -1i;
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-690f, 407f, var_0.d))))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(max(var_0.c.a, -1311f)), _wgslsmith_f_op_f32(abs(816f)), _wgslsmith_f_op_f32(-722f - -2395f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 26u)], 598f, global0[_wgslsmith_index_u32(38973u, 26u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 26u)], global0[_wgslsmith_index_u32(u_input.d.x, 26u)], -1092f)))))), vec3<f32>(global0[_wgslsmith_index_u32(~23646u, 26u)], -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-964f)))), var_0.b));
    let var_3 = Struct_1(var_0.c.a, var_0.c.b);
    let var_4 = !(!select(select(!vec4<bool>(var_3.b, var_3.b, var_0.c.b, var_0.b.x), select(vec4<bool>(false, var_3.b, var_0.c.b, var_3.b), vec4<bool>(var_0.c.b, false, var_0.b.x, var_0.c.b), var_0.c.b), vec4<bool>(true, false, false, var_3.b)), select(vec4<bool>(true, var_3.b, var_0.b.x, var_3.b), !vec4<bool>(var_0.b.x, var_0.b.x, var_0.c.b, var_0.b.x), var_0.c.b), !var_3.b));
    var_0 = Struct_2(_wgslsmith_div_vec3_i32(var_0.a, _wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(var_0.a.x, -2147483647i, u_input.e) | var_0.a), var_0.a)), !var_4.yyy, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_3.a, -775f), -406f)), any(select(select(vec2<bool>(true, var_0.b.x), vec2<bool>(var_4.x, var_4.x), var_4.xw), var_0.b.zx, var_4.wx))), 1f);
    let x = u_input.a;
    s_output = StorageBuffer(var_1);
}

