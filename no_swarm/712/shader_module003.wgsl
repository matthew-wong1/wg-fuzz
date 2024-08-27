struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = vec4<bool>(arg_3.a, arg_2.a, true, arg_3.a);
    let var_1 = arg_2;
    global0 = array<u32, 11>();
    var var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(519f * -1685f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(370f)))) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(floor(909f)), 1660f), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1598f, -1035f)))))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(723f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.b, -350f))))));
    var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1), 869f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1691f, -877f)), vec2<f32>(arg_1, -400f), var_0.ww))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(141f, var_2.x) + vec2<f32>(-157f, var_2.x)))), select(select(select(var_0.yx, var_0.zw, arg_2.a), vec2<bool>(true, true), !var_0.zy), vec2<bool>(true, all(var_0.yww)), vec2<bool>(var_0.x, false & var_1.a)))));
    return u_input.a;
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_1(select(false, true, (~(-1i) | func_3(vec4<i32>(u_input.a, 18078i, -56551i, arg_0), 993f, Struct_1(false, 967f), Struct_1(true, 1159f))) <= arg_0), 950f);
    global0 = array<u32, 11>();
    global0 = array<u32, 11>();
    let var_1 = 27052u;
    global0 = array<u32, 11>();
    return Struct_1(var_0.a, var_0.b);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: f32) -> Struct_2 {
    var var_0 = select(select(vec3<bool>(true, u_input.a > -u_input.a, any(vec3<bool>(false, true, true)) & any(vec4<bool>(false, true, true, false))), select(vec3<bool>(arg_2.a, any(vec2<bool>(arg_2.a, arg_2.a)), true | arg_2.a), select(select(vec3<bool>(arg_2.a, arg_2.a, arg_2.a), vec3<bool>(true, false, arg_2.a), vec3<bool>(true, arg_2.a, arg_2.a)), !vec3<bool>(arg_2.a, true, arg_2.a), select(vec3<bool>(arg_2.a, true, arg_2.a), vec3<bool>(arg_2.a, arg_2.a, false), true)), true && !arg_2.a), true), select(!select(select(vec3<bool>(arg_2.a, arg_2.a, true), vec3<bool>(arg_2.a, true, false), true), !vec3<bool>(arg_2.a, false, true), vec3<bool>(arg_2.a, false, arg_2.a)), select(vec3<bool>(true, any(vec3<bool>(arg_2.a, false, arg_2.a)), arg_2.a), !(!vec3<bool>(arg_2.a, true, arg_2.a)), false), false), (_wgslsmith_f_op_f32(step(182f, _wgslsmith_div_f32(1000f, 557f))) == _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(arg_2.b, 663f))))) | false);
    var var_1 = arg_0;
    var_0 = select(!vec3<bool>(true, var_0.x, all(vec3<bool>(var_0.x, true, arg_2.a))), !select(select(vec3<bool>(arg_2.a, arg_2.a, var_0.x), select(vec3<bool>(true, arg_2.a, true), vec3<bool>(var_0.x, true, true), vec3<bool>(var_0.x, false, true)), true), select(!vec3<bool>(false, true, arg_2.a), vec3<bool>(false, arg_2.a, var_0.x), arg_2.a), false), func_2(_wgslsmith_mult_i32(u_input.a, select(~9446i, -59904i, true))).a);
    let var_2 = arg_2.a;
    var_0 = !select(!(!vec3<bool>(var_2, var_2, var_2)), !select(vec3<bool>(false, false, var_2), select(vec3<bool>(var_0.x, var_2, true), vec3<bool>(var_0.x, true, var_0.x), true), true), !all(select(vec3<bool>(false, var_0.x, true), vec3<bool>(true, true, true), false)));
    return arg_0;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<i32>) -> Struct_1 {
    global0 = array<u32, 11>();
    var var_0 = -760f;
    let var_1 = -1541f;
    global0 = array<u32, 11>();
    let var_2 = Struct_2(arg_0.b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, _wgslsmith_f_op_f32(arg_0.b.x + var_1), -1000f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1056f, -323f, _wgslsmith_f_op_f32(-var_1)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(198f, arg_0.a, -805f), vec3<f32>(227f, 1000f, var_1))))));
    return Struct_1(true, 1134f);
}

fn func_1() -> Struct_1 {
    global0 = array<u32, 11>();
    return func_5(func_4(Struct_2(-102f, vec3<f32>(-470f, _wgslsmith_f_op_f32(-470f - 374f), _wgslsmith_div_f32(560f, 2242f))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(-260f, 102f), _wgslsmith_f_op_f32(sign(2286f))), _wgslsmith_div_vec2_f32(vec2<f32>(-463f, 976f), vec2<f32>(-961f, -359f)))), func_2(firstLeadingBit(1i)), _wgslsmith_f_op_f32(min(701f, 1586f))), vec2<i32>(abs(2147483647i) >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 11u)], 11u)] << (0u % 32u)), 11u)], 11u)] % 32u), u_input.a));
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec4<f32>) -> vec2<i32> {
    var var_0 = max(_wgslsmith_div_vec4_i32(-max(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 34595i, -20903i, -2007i), vec4<i32>(-28628i, u_input.a, 28709i, -1i)), select(vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a), vec4<i32>(-1612i, u_input.a, u_input.a, arg_2.x), false)), vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.x, -19000i), arg_2), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_2.x, u_input.a, arg_2.x, 0i), vec4<i32>(1i, arg_2.x, arg_2.x, arg_2.x)), vec4<i32>(1i, arg_2.x, -1i, arg_2.x)), u_input.a, arg_2.x ^ u_input.a)), vec4<i32>(28263i, i32(-1i) * -_wgslsmith_mod_i32(2147483647i, 9800i), i32(-1i) * -2147483647i, -arg_2.x));
    let var_1 = arg_2.x;
    var_0 = vec4<i32>(79154i, firstTrailingBit(arg_2.x), arg_2.x, firstLeadingBit(func_3(-countOneBits(vec4<i32>(-48997i, -1i, u_input.a, 2147483647i)), arg_1.b, arg_1, func_5(func_4(Struct_2(-400f, vec3<f32>(arg_3.x, arg_3.x, -117f)), vec2<f32>(962f, 1000f), arg_1, arg_3.x), -arg_2))));
    var var_2 = vec3<i32>(_wgslsmith_dot_vec4_i32(~max(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, arg_2.x, u_input.a, u_input.a), vec4<i32>(var_1, -3297i, -7336i, 2147483647i)), firstTrailingBit(vec4<i32>(var_0.x, arg_2.x, 1i, 1i))), select(-_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, 2147483647i, 2147483647i, u_input.a), vec4<i32>(var_0.x, 1i, -34788i, 2147483647i)), min(vec4<i32>(var_1, -2147483647i, 22555i, u_input.a), abs(vec4<i32>(-33355i, var_1, 1i, -14700i))), !select(vec4<bool>(arg_1.a, arg_1.a, false, arg_1.a), vec4<bool>(arg_1.a, arg_1.a, true, true), arg_1.a))), min(-var_1, _wgslsmith_mod_i32(u_input.a, -25467i)), arg_2.x);
    var var_3 = Struct_2(arg_1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, arg_3.x, 624f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_3.x, arg_3.x)))));
    return var_2.yy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(0i, ~_wgslsmith_div_i32(1i, u_input.a));
    var var_1 = _wgslsmith_add_vec2_i32(select(vec2<i32>(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -30720i, 10190i, 2147483647i), vec4<i32>(var_0.x, var_0.x, -9903i, 1i))), reverseBits(abs(vec2<i32>(-1i, 0i))), !(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(33898u, 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], 11u)] < global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 11u)])) ^ vec2<i32>(-abs(var_0.x), u_input.a), -vec2<i32>(16851i, -1i));
    var_0 = -vec2<i32>(2147483647i, _wgslsmith_add_i32(-(-49875i << (1u % 32u)), var_1.x));
    var_1 = _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(func_6(~vec4<u32>(global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(409u, 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], 2094u, 1u) << (select(vec4<u32>(22836u, 0u, 1u, 73311u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 11u)], 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(71008u, 11u)], 4294967295u), vec4<bool>(true, false, true, false)) % vec4<u32>(32u)), func_1(), _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(var_0.x, 2147483647i)), vec2<i32>(var_0.x, var_1.x), vec2<i32>(var_1.x, -21909i)), vec4<f32>(_wgslsmith_f_op_f32(-686f - 308f), 170f, -472f, func_1().b)), _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(12935i, 8409i), select(vec2<i32>(var_1.x, -45788i), vec2<i32>(u_input.a, -38894i), false)), _wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(var_1.x, var_1.x)), -vec2<i32>(-27835i, u_input.a)))), vec2<i32>(func_3(vec4<i32>(var_0.x, 0i, -2147483647i, u_input.a), _wgslsmith_f_op_f32(floor(3679f)), Struct_1(false, -1271f), func_5(Struct_2(-1228f, vec3<f32>(1532f, -513f, -1465f)), vec2<i32>(2418i, var_1.x))), 0i) & (vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(vec2<i32>(-59261i, 2147483647i), vec2<i32>(u_input.a, var_0.x))));
    var var_2 = Struct_1(true, 618f);
    var var_3 = Struct_2(-540f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.b, var_2.b, -857f))))));
    var_1 = firstTrailingBit(~(~select(vec2<i32>(var_1.x, var_0.x), vec2<i32>(u_input.a, var_1.x), global0[_wgslsmith_index_u32(11019u, 11u)] == global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9931u, 11u)], 11u)], 11u)])));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_3.a, func_5(Struct_2(var_3.b.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.b.x, var_3.a, -310f) + vec3<f32>(var_2.b, -1345f, var_3.b.x))), vec2<i32>(_wgslsmith_sub_i32(-39643i, -1i), reverseBits(489i))).b), _wgslsmith_div_vec3_u32(countOneBits(abs(vec3<u32>(46283u, 4294967295u, global0[_wgslsmith_index_u32(15421u, 11u)]))), select(vec3<u32>(11219u, 54514u, 9097u), abs(~vec3<u32>(global0[_wgslsmith_index_u32(27692u, 11u)], 34709u, 4294967295u)), select(vec3<bool>(var_2.a, var_2.a, true), !vec3<bool>(var_2.a, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, var_2.a, var_2.a))))));
}

