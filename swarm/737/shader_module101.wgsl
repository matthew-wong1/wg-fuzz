struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<f32>,
    d: u32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5> = array<i32, 5>(2147483647i, 14652i, 39730i, -4199i, -2592i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<i32> {
    let var_0 = Struct_1(vec4<bool>(all(vec3<bool>(true, true, true)) || any(vec3<bool>(true, true, true)), u_input.a != global0[_wgslsmith_index_u32(min(select(4294967295u, 45494u, true), ~12826u), 5u)], false, false), -vec4<i32>(u_input.a, _wgslsmith_add_i32(2147483647i, -u_input.a), -_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -1i, global0[_wgslsmith_index_u32(34620u, 5u)]), vec3<i32>(-66489i, u_input.a, 72132i)), reverseBits(countOneBits(26994i))), vec4<bool>(false, u_input.a > global0[_wgslsmith_index_u32(select(1u, 4294967295u, select(true, false, true)), 5u)], true, true != (select(1u, 42900u, true) > firstLeadingBit(25397u))), !select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), all(vec4<bool>(false, false, true, false))), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false))));
    global0 = array<i32, 5>();
    return _wgslsmith_sub_vec3_i32(vec3<i32>(-u_input.a, firstLeadingBit(-53978i), 1i) ^ -reverseBits(vec3<i32>(global0[_wgslsmith_index_u32(6927u, 5u)], -1i, 1i)), firstTrailingBit(vec3<i32>(global0[_wgslsmith_index_u32(1u, 5u)], -17647i, u_input.a | u_input.a))) & var_0.b.xyy;
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_4(Struct_2(Struct_1(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false)), ~(~vec4<i32>(u_input.a, global0[_wgslsmith_index_u32(1u, 5u)], -13033i, u_input.a)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), false), any(vec3<bool>(false, false, false))), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), false))), func_3(), vec4<f32>(-1079f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-405f * 340f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1807f * 247f), _wgslsmith_f_op_f32(ceil(603f))), -939f), _wgslsmith_sub_u32(select(1u, ~1u, any(vec3<bool>(false, true, false))), ~_wgslsmith_clamp_u32(4294967295u, 1u, 0u))), Struct_3(false), vec3<bool>(!any(vec4<bool>(false, false, true, false)), any(vec4<bool>(true, true, true, true)), true));
    let var_1 = var_0.a.a.c.xx;
    let var_2 = var_0;
    let var_3 = countOneBits(max(-vec2<i32>(i32(-1i) * -14399i, -1i), var_0.a.b.xz));
    global0 = array<i32, 5>();
    return Struct_3(!(!select(all(vec3<bool>(var_1.x, true, true)), true, var_0.a.a.d.x)));
}

fn func_1(arg_0: f32, arg_1: Struct_4, arg_2: Struct_2, arg_3: vec4<i32>) -> bool {
    global0 = array<i32, 5>();
    let var_0 = vec2<u32>(~0u, arg_2.d) & vec2<u32>(~(~127326u), arg_1.a.d);
    let var_1 = Struct_2(arg_2.a, arg_1.a.a.b.zzy, vec4<f32>(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_2.c.x, 1327f), _wgslsmith_f_op_f32(ceil(arg_1.a.c.x))))), arg_2.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(arg_2.c.x * arg_0)) * -926f), _wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(-arg_1.a.c.x)))), 1u);
    let var_2 = func_2();
    var var_3 = !vec4<bool>(true, !(arg_1.a.d != arg_2.d) | (all(vec2<bool>(false, true)) && true), false, var_2.a && true);
    return any(var_1.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!vec4<bool>(true, false, true, any(vec2<bool>(true, false)) & false), select(vec4<bool>(true, true, true, true), select(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true), true), select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true)), true), vec4<bool>(any(vec2<bool>(false, false)), true, func_1(-1000f, Struct_4(Struct_2(Struct_1(vec4<bool>(false, false, true, true), vec4<i32>(16075i, u_input.a, global0[_wgslsmith_index_u32(79030u, 5u)], global0[_wgslsmith_index_u32(56028u, 5u)]), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false)), vec3<i32>(global0[_wgslsmith_index_u32(1u, 5u)], 2147483647i, -2147483647i), vec4<f32>(-1700f, -714f, 490f, 1000f), 2605u), Struct_3(false), vec3<bool>(true, true, false)), Struct_2(Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(u_input.a, 24036i, u_input.a, global0[_wgslsmith_index_u32(1u, 5u)]), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true)), vec3<i32>(u_input.a, u_input.a, global0[_wgslsmith_index_u32(38528u, 5u)]), vec4<f32>(-133f, -637f, 792f, 377f), 0u), vec4<i32>(-54862i, global0[_wgslsmith_index_u32(12848u, 5u)], u_input.a, global0[_wgslsmith_index_u32(55054u, 5u)])), false), true)), func_2().a);
    let var_1 = Struct_1(vec4<bool>(true, true, true, true), ~(~firstLeadingBit(vec4<i32>(-1i, u_input.a, -18865i, u_input.a))) << (~abs(~vec4<u32>(28958u, 0u, 40524u, 1u)) % vec4<u32>(32u)), select(!vec4<bool>(select(true, var_0.x, var_0.x), true, true, var_0.x), !(!(!vec4<bool>(false, var_0.x, var_0.x, true))), true), select(!vec4<bool>(!var_0.x, any(vec2<bool>(var_0.x, true)), !var_0.x, true), select(vec4<bool>(var_0.x, func_1(-1476f, Struct_4(Struct_2(Struct_1(vec4<bool>(var_0.x, true, false, var_0.x), vec4<i32>(u_input.a, u_input.a, 60279i, 2147483647i), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false)), vec3<i32>(7843i, global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)]), vec4<f32>(796f, 1121f, -487f, 920f), 17997u), Struct_3(false), vec3<bool>(var_0.x, false, var_0.x)), Struct_2(Struct_1(vec4<bool>(var_0.x, false, false, var_0.x), vec4<i32>(global0[_wgslsmith_index_u32(1u, 5u)], -34246i, u_input.a, 39942i), vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, false, true)), vec3<i32>(0i, -29086i, global0[_wgslsmith_index_u32(19087u, 5u)]), vec4<f32>(1132f, 312f, 1066f, -627f), 61881u), vec4<i32>(2147483647i, 0i, -11677i, -26889i)), false, !var_0.x), select(select(vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(var_0.x, var_0.x, false, var_0.x), var_0.x), !vec4<bool>(true, var_0.x, var_0.x, var_0.x), false), select(select(vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(var_0.x, true, var_0.x, true), var_0.x), !vec4<bool>(true, var_0.x, false, var_0.x), true)), !select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, true, true), select(vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(true, var_0.x, true, var_0.x), var_0.x))));
    var_0 = vec4<bool>(false, any(vec3<bool>(true, true, true)), !var_1.a.x, -37939i == _wgslsmith_sub_i32(var_1.b.x & var_1.b.x, -8813i));
    var var_2 = Struct_3(false);
    let var_3 = Struct_2(var_1, select(func_3(), _wgslsmith_mult_vec3_i32(var_1.b.xwy, vec3<i32>(global0[_wgslsmith_index_u32(10785u, 5u)], var_1.b.x, 25290i) | -vec3<i32>(var_1.b.x, global0[_wgslsmith_index_u32(1u, 5u)], u_input.a)), vec3<bool>(!all(var_1.c), true, false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1100f + _wgslsmith_f_op_f32(f32(-1f) * -1658f)), 637f, _wgslsmith_f_op_f32(-327f * _wgslsmith_f_op_f32(802f - 382f)), -571f)), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(1u, countOneBits(4294967295u), ~1u, reverseBits(35237u))), vec4<u32>(~(~4294967295u), ~4294967295u, ~_wgslsmith_mod_u32(1u, 4294967295u), 1u)));
    var var_4 = func_2();
    let var_5 = vec3<bool>(!var_0.x, all(!(!vec2<bool>(var_4.a, true))), var_4.a);
    var var_6 = Struct_2(Struct_1(vec4<bool>(any(var_0.wwz), any(select(vec4<bool>(var_4.a, var_2.a, var_0.x, var_2.a), var_3.a.c, var_5.x)), var_0.x, any(var_0.xyw) && true), firstTrailingBit(vec4<i32>(var_3.a.b.x, u_input.a, _wgslsmith_clamp_i32(-3160i, global0[_wgslsmith_index_u32(1u, 5u)], var_3.b.x), _wgslsmith_mod_i32(-1i, 11690i))), select(select(var_3.a.c, !var_3.a.d, var_1.d), select(!var_3.a.d, vec4<bool>(var_0.x, var_1.c.x, var_3.a.d.x, var_0.x), vec4<bool>(var_4.a, true, var_1.a.x, var_4.a)), true), var_1.a), -func_3(), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(var_3.c, var_3.c), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_3.c.x, var_3.c.x, false)), _wgslsmith_f_op_f32(abs(var_3.c.x)))), 1329f, var_3.c.x, -200f))), ~var_3.d);
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_dot_vec4_i32(var_3.a.b, vec4<i32>(-1i, 0i, _wgslsmith_add_i32(u_input.a, -1i), select(57915i, -2147483647i, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_6.c.x * 856f), _wgslsmith_f_op_f32(-var_6.c.x)))))), ~vec4<u32>(var_3.d, 35575u, firstLeadingBit(var_6.d), firstLeadingBit(var_3.d)), min(var_6.b.x, var_1.b.x));
}

