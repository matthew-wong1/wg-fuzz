struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec4<i32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: i32,
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

var<private> global0: array<vec3<bool>, 26> = array<vec3<bool>, 26>(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false));

var<private> global1: array<bool, 12> = array<bool, 12>(true, true, true, true, true, false, true, false, true, true, false, true);

var<private> global2: array<vec4<f32>, 1>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<i32> {
    let var_0 = firstLeadingBit(~abs(reverseBits(vec2<u32>(1u, 18128u) << (u_input.b.xz % vec2<u32>(32u)))));
    let var_1 = Struct_1(vec3<u32>(0u, ~var_0.x, var_0.x), vec3<i32>(((-1i | u_input.d) & u_input.a) >> (1u % 32u), 53276i, 53559i));
    let var_2 = var_1.a.x ^ ~u_input.c;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2887f)) + 851f), -1795f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(select(-1267f, -555f, global1[_wgslsmith_index_u32(2590u, 12u)]))))));
    let var_4 = select(select(!vec2<bool>(var_0.x <= var_1.a.x, false), !select(!vec2<bool>(global1[_wgslsmith_index_u32(12120u, 12u)], true), select(vec2<bool>(global1[_wgslsmith_index_u32(32244u, 12u)], true), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(0u, 12u)]), vec2<bool>(global1[_wgslsmith_index_u32(var_0.x, 12u)], true)), select(vec2<bool>(global1[_wgslsmith_index_u32(var_1.a.x, 12u)], global1[_wgslsmith_index_u32(0u, 12u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 12u)], global1[_wgslsmith_index_u32(24280u, 12u)]), vec2<bool>(global1[_wgslsmith_index_u32(var_0.x, 12u)], global1[_wgslsmith_index_u32(var_0.x, 12u)]))), !select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(0u, 12u)]), select(vec2<bool>(false, false), vec2<bool>(true, global1[_wgslsmith_index_u32(var_1.a.x, 12u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(78907u, 12u)])), vec2<bool>(true, true))), select(vec2<bool>(global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(var_2, var_1.a.x), 12u)], all(vec2<bool>(true, true))), !select(vec2<bool>(true, false), vec2<bool>(true, global1[_wgslsmith_index_u32(33110u, 12u)]), all(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(var_1.a.x, 12u)]))), vec2<bool>(true, !select(global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(27310u, 12u)], false))), select(!(!(!vec2<bool>(global1[_wgslsmith_index_u32(41871u, 12u)], global1[_wgslsmith_index_u32(var_1.a.x, 12u)]))), !select(!vec2<bool>(false, global1[_wgslsmith_index_u32(var_1.a.x, 12u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(var_0.x, 12u)], true), vec2<bool>(true, true), false), !global1[_wgslsmith_index_u32(45242u, 12u)]), global1[_wgslsmith_index_u32(7609u, 12u)]));
    return vec3<i32>(_wgslsmith_sub_i32(-1123i, _wgslsmith_div_i32(u_input.a, _wgslsmith_mult_i32(-11719i, 3096i))), -33705i, ~u_input.d);
}

fn func_2() -> Struct_2 {
    let var_0 = -_wgslsmith_div_vec3_i32(-func_3(), -(~select(vec3<i32>(1i, 86604i, u_input.a), vec3<i32>(-2147483647i, 14230i, -1i), global0[_wgslsmith_index_u32(u_input.c, 26u)])));
    var var_1 = Struct_4(firstTrailingBit(vec3<u32>(4294967295u, 4294967295u, _wgslsmith_div_u32(abs(15290u), u_input.b.x))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(1138f)), 1063f) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-821f, -1000f))))))), ~vec4<i32>(_wgslsmith_sub_i32(-2147483647i, u_input.d), _wgslsmith_div_i32(_wgslsmith_mult_i32(0i, -42714i), 1i), _wgslsmith_mod_i32(u_input.d << (136687u % 32u), 1i), ~var_0.x));
    let var_2 = Struct_1(vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(65036u, u_input.c), vec2<u32>(u_input.c, 0u)), select(u_input.b.xz, var_1.a.xz, true)) | 0u, _wgslsmith_dot_vec2_u32(countOneBits(select(var_1.a.zy, vec2<u32>(4294967295u, 38912u), vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 12u)]))), abs(vec2<u32>(var_1.a.x, 0u))), min(u_input.b.x, u_input.c)), ~vec3<i32>(~(~(-47459i)), abs(u_input.d), u_input.d));
    global0 = array<vec3<bool>, 26>();
    var var_3 = 1u;
    return Struct_2(var_2, _wgslsmith_f_op_f32(abs(286f)), var_2.a.x != 4294967295u);
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: vec2<f32>, arg_3: Struct_4) -> Struct_5 {
    var var_0 = !select(vec4<bool>(_wgslsmith_f_op_f32(arg_3.b.x + 1184f) < arg_3.b.x, !all(global0[_wgslsmith_index_u32(105225u, 26u)]), true, false), select(select(select(vec4<bool>(arg_1, false, arg_1, true), vec4<bool>(arg_0.a.c, global1[_wgslsmith_index_u32(47331u, 12u)], true, arg_0.a.c), vec4<bool>(true, true, true, false)), vec4<bool>(global1[_wgslsmith_index_u32(0u, 12u)], true, global1[_wgslsmith_index_u32(4486u, 12u)], false), vec4<bool>(false, true, true, true)), select(select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 12u)], arg_0.a.c, false, false), vec4<bool>(false, global1[_wgslsmith_index_u32(14531u, 12u)], arg_1, arg_0.a.c), false), vec4<bool>(true, false, false, true), global1[_wgslsmith_index_u32(14469u, 12u)]), select(vec4<bool>(true, arg_1, false, arg_1), vec4<bool>(true, global1[_wgslsmith_index_u32(74714u, 12u)], arg_1, true), !vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 12u)], arg_1, true, global1[_wgslsmith_index_u32(arg_0.a.a.a.x, 12u)]))), !(!any(vec2<bool>(true, true))));
    let var_1 = vec3<u32>(firstTrailingBit(u_input.b.x), 3110u, u_input.b.x);
    let var_2 = _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, _wgslsmith_clamp_u32(67295u, 49323u, 1u)), vec2<u32>(1u, 1u));
    var_0 = !select(select(select(select(vec4<bool>(false, true, arg_1, true), vec4<bool>(true, false, false, true), global1[_wgslsmith_index_u32(12821u, 12u)]), vec4<bool>(global1[_wgslsmith_index_u32(var_1.x, 12u)], false, false, global1[_wgslsmith_index_u32(0u, 12u)]), select(vec4<bool>(arg_1, true, global1[_wgslsmith_index_u32(arg_0.a.a.a.x, 12u)], false), vec4<bool>(global1[_wgslsmith_index_u32(28861u, 12u)], global1[_wgslsmith_index_u32(var_1.x, 12u)], arg_0.a.c, arg_1), vec4<bool>(arg_1, arg_1, global1[_wgslsmith_index_u32(arg_0.a.a.a.x, 12u)], arg_0.a.c))), select(vec4<bool>(true, true, false, arg_1), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, arg_0.a.c, false), true), select(vec4<bool>(arg_0.a.c, var_0.x, false, arg_1), vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 12u)], false, arg_0.a.c), vec4<bool>(arg_0.a.c, global1[_wgslsmith_index_u32(u_input.b.x, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(4717u, 12u)]))), vec4<bool>(all(var_0.www), !var_0.x, global1[_wgslsmith_index_u32(arg_0.a.a.a.x, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)])), !(!(!vec4<bool>(true, arg_1, global1[_wgslsmith_index_u32(var_1.x, 12u)], true))), !vec4<bool>(!global1[_wgslsmith_index_u32(47169u, 12u)], func_2().c, all(var_0.zxw), true));
    global2 = array<vec4<f32>, 1>();
    return Struct_5(~(-(arg_0.a.a.b.x | max(0i, arg_3.c.x))));
}

fn func_1() -> vec4<u32> {
    var var_0 = _wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(reverseBits(u_input.b), u_input.b), vec3<u32>(4294967295u, _wgslsmith_clamp_u32(u_input.c, u_input.c, 4294967295u), firstLeadingBit(0u))), _wgslsmith_mult_u32(~u_input.b.x, u_input.b.x));
    var var_1 = func_4(Struct_3(func_2()), true, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-282f * 1764f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1854f)) + _wgslsmith_f_op_f32(min(-498f, -277f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1396f - -563f) * _wgslsmith_f_op_f32(round(179f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -129f))))), Struct_4(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.b.x, u_input.b.x), u_input.b), ~u_input.b.x, u_input.c), reverseBits(~vec3<u32>(1u, u_input.c, 52780u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), vec4<i32>(-1i) * -reverseBits(vec4<i32>(u_input.d, 1i, u_input.d, u_input.d))));
    var var_2 = u_input.b;
    var_0 = 4294967295u;
    let var_3 = true;
    return ~(~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.c, 13409u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.c, u_input.b.x, 22261u) & (vec4<u32>(4294967295u, 41982u, u_input.c, 0u) >> (vec4<u32>(var_2.x, 0u, u_input.c, u_input.b.x) % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 26>();
    var var_0 = Struct_3(Struct_2(Struct_1(vec3<u32>(countOneBits(1u), ~0u, u_input.b.x), vec3<i32>(0i, u_input.d, ~u_input.d)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -836f))), true));
    let var_1 = !select(vec3<bool>(all(vec3<bool>(var_0.a.c, var_0.a.c, false)), global1[_wgslsmith_index_u32(u_input.b.x, 12u)], any(select(vec4<bool>(var_0.a.c, true, true, var_0.a.c), vec4<bool>(global1[_wgslsmith_index_u32(74813u, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)], var_0.a.c, var_0.a.c), global1[_wgslsmith_index_u32(u_input.b.x, 12u)]))), vec3<bool>(true, select(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, u_input.b.x), 12u)], true, true), u_input.b.x <= 6159u), var_0.a.a.a.x <= _wgslsmith_dot_vec3_u32(~u_input.b, ~u_input.b));
    let var_2 = var_0.a;
    let var_3 = abs(abs(func_1() & ~vec4<u32>(var_2.a.a.x, 0u, 0u, 4294967295u)));
    global0 = array<vec3<bool>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(select(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(12998u, var_3.x), min(var_2.a.a.x, var_2.a.a.x), var_2.a.a.x | 9333u), 4294967295u, var_2.a.b.x <= ~1i)));
}

