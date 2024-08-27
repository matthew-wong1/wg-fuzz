struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 25>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<bool>, arg_3: Struct_3) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2386f, -1560f)));
    var var_1 = arg_2.x;
    global0 = array<vec3<f32>, 25>();
    var var_2 = Struct_3(firstLeadingBit(~1u), arg_3.b, true, arg_3.b);
    global0 = array<vec3<f32>, 25>();
    return arg_3.d.c.a;
}

fn func_2(arg_0: vec4<bool>) -> Struct_2 {
    global0 = array<vec3<f32>, 25>();
    let var_0 = Struct_3(u_input.c, Struct_2(Struct_1(!vec4<bool>(true, arg_0.x, arg_0.x, true), vec3<f32>(-261f, -794f, _wgslsmith_f_op_f32(f32(-1f) * -521f)), _wgslsmith_div_vec3_i32(~vec3<i32>(1i, -64335i, -1i), vec3<i32>(u_input.e, -1i, 2147483647i))), Struct_1(vec4<bool>(arg_0.x || arg_0.x, select(false, true, arg_0.x), !arg_0.x, false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 25u)])), ~vec3<i32>(0i, u_input.e, u_input.e)), Struct_1(arg_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1612f, -110f, 301f)), ~(~vec3<i32>(2147483647i, -1i, 86229i)))), true, Struct_2(Struct_1(select(func_3(Struct_1(vec4<bool>(arg_0.x, arg_0.x, false, true), vec3<f32>(-2867f, -1211f, 449f), vec3<i32>(1i, u_input.e, 0i)), vec3<i32>(u_input.e, -2147483647i, 1i), arg_0.zxz, Struct_3(u_input.a.x, Struct_2(Struct_1(arg_0, global0[_wgslsmith_index_u32(u_input.d, 25u)], vec3<i32>(14736i, u_input.e, u_input.e)), Struct_1(vec4<bool>(false, arg_0.x, true, arg_0.x), global0[_wgslsmith_index_u32(1u, 25u)], vec3<i32>(u_input.e, 16139i, -2147483647i)), Struct_1(arg_0, global0[_wgslsmith_index_u32(u_input.c, 25u)], vec3<i32>(u_input.e, u_input.e, 2947i))), false, Struct_2(Struct_1(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), global0[_wgslsmith_index_u32(u_input.c, 25u)], vec3<i32>(u_input.e, 15146i, u_input.e)), Struct_1(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), vec3<f32>(-246f, -1000f, -1000f), vec3<i32>(14281i, u_input.e, 4864i)), Struct_1(vec4<bool>(arg_0.x, arg_0.x, true, false), vec3<f32>(194f, 1300f, 1601f), vec3<i32>(u_input.e, u_input.e, -2147483647i))))), select(vec4<bool>(false, false, false, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), false), true), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-2131f, 943f, -2114f), _wgslsmith_f_op_vec3_f32(step(global0[_wgslsmith_index_u32(27177u, 25u)], vec3<f32>(1026f, 1886f, -827f))))), -_wgslsmith_sub_vec3_i32(vec3<i32>(-6105i, 2147483647i, 3190i), vec3<i32>(1i, u_input.e, -33626i))), Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(615f, 837f, -1899f)))), reverseBits(vec3<i32>(u_input.e, u_input.e, -2147483647i))), Struct_1(vec4<bool>(!arg_0.x, u_input.b > 1u, true, all(arg_0)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(u_input.b, 25u)], global0[_wgslsmith_index_u32(u_input.c, 25u)]))), vec3<i32>(-u_input.e, -1i, 2147483647i))));
    var var_1 = _wgslsmith_dot_vec4_u32(abs(vec4<u32>(~4294967295u << (abs(u_input.a.x) % 32u), ~(~15166u), _wgslsmith_div_u32(_wgslsmith_mult_u32(433u, 1u), ~41723u), 0u)), max(reverseBits(~vec4<u32>(u_input.c, 10563u, 37205u, var_0.a)), vec4<u32>(21963u >> (firstTrailingBit(u_input.b) % 32u), 4294967295u, ~var_0.a, 1u)));
    var var_2 = var_0.d;
    let var_3 = var_0.b.a;
    return var_0.d;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_1) -> Struct_2 {
    return arg_1.d;
}

fn func_1() -> i32 {
    global0 = array<vec3<f32>, 25>();
    global0 = array<vec3<f32>, 25>();
    global0 = array<vec3<f32>, 25>();
    let var_0 = func_4(func_2(vec4<bool>(true, any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true)), false, all(vec2<bool>(true, false)))), Struct_3(25953u, Struct_2(Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2444f, -886f, 1479f), vec3<f32>(2175f, 1048f, -980f), true)), ~vec3<i32>(-1i, u_input.e, -8353i)), func_2(vec4<bool>(true, false, true, false)).b, Struct_1(vec4<bool>(true, true, true, false), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, 1311f, 421f), global0[_wgslsmith_index_u32(0u, 25u)])), abs(vec3<i32>(u_input.e, 64880i, u_input.e)))), !(_wgslsmith_f_op_f32(sign(-1000f)) <= _wgslsmith_f_op_f32(trunc(319f))), func_2(select(func_2(vec4<bool>(false, true, false, true)).a.a, vec4<bool>(false, true, true, true), false))), Struct_1(func_2(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false))).c.a, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(1u, 25u)])), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.d, 4294967295u), u_input.a.x), 25u)])), vec3<i32>(_wgslsmith_sub_i32(-18898i, _wgslsmith_div_i32(0i, 1i)), u_input.e, max(2147483647i, ~u_input.e))));
    var var_1 = firstLeadingBit(-6177i);
    return -firstLeadingBit(-1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(0u >= ~u_input.b, true, true, !any(vec4<bool>(true, true, true, true)));
    var var_1 = -1i;
    var_1 = _wgslsmith_div_i32(-7921i, ~(u_input.e | 0i) & func_1());
    var var_2 = Struct_2(func_4(func_2(vec4<bool>(var_0.x, !var_0.x, !var_0.x, var_0.x)), Struct_3(~_wgslsmith_dot_vec2_u32(u_input.a.zy, u_input.a.xz), Struct_2(Struct_1(vec4<bool>(var_0.x, var_0.x, true, true), vec3<f32>(-499f, 416f, -776f), vec3<i32>(-1i, -15594i, u_input.e)), Struct_1(vec4<bool>(var_0.x, var_0.x, var_0.x, false), global0[_wgslsmith_index_u32(60049u, 25u)], vec3<i32>(u_input.e, u_input.e, 69189i)), Struct_1(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec3<f32>(-290f, 1144f, -372f), vec3<i32>(22682i, -1i, u_input.e))), var_0.x, func_2(select(var_0, var_0, true))), Struct_1(vec4<bool>(!var_0.x, true, !var_0.x, var_0.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1428f, -1000f, -1000f)) + vec3<f32>(1728f, -953f, -603f)), _wgslsmith_mult_vec3_i32(vec3<i32>(-56501i, 1i, 0i), vec3<i32>(-29226i, 1i, u_input.e)) | abs(vec3<i32>(0i, 1i, u_input.e)))).c, Struct_1(!vec4<bool>(true, true, true, var_0.x || false), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(56115u, 25u)], _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(u_input.c, 25u)] + global0[_wgslsmith_index_u32(1u, 25u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + vec3<f32>(-1732f, 1047f, -431f))), -_wgslsmith_sub_vec3_i32(~vec3<i32>(-1i, -1i, 2147483647i), vec3<i32>(-2147483647i, u_input.e, -2147483647i))), func_2(var_0).a);
    let var_3 = ~firstLeadingBit(firstLeadingBit(~vec4<u32>(41142u, 1u, u_input.b, 1u))) | ~(~vec4<u32>(select(u_input.d, 65415u, false), 4294967295u, ~u_input.a.x, u_input.c));
    var var_4 = max(-(~(~vec3<i32>(u_input.e, var_2.b.c.x, 31502i))), ~vec3<i32>(-1i, -1i, 0i));
    var_1 = 0i;
    var var_5 = i32(-1i) * -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(_wgslsmith_mod_u32(min(u_input.a.x, var_3.x), var_3.x), ~0u << (_wgslsmith_div_u32(80891u, var_3.x) % 32u)) << (abs(_wgslsmith_add_u32(u_input.b, 1u)) % 32u));
}

