struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: u32,
    d: bool,
}

struct Struct_5 {
    a: u32,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15>;

var<private> global1: vec4<i32>;

var<private> global2: array<vec4<bool>, 11> = array<vec4<bool>, 11>(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: Struct_4) -> i32 {
    let var_0 = Struct_1(arg_0.a.a >> (vec2<u32>(reverseBits(~arg_0.c), u_input.c) % vec2<u32>(32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 2981u, select(830u, arg_0.a.b, false) << (~24348u % 32u)), vec3<u32>(~(arg_0.a.b & 7236u), _wgslsmith_sub_u32(~u_input.c, arg_0.a.b), _wgslsmith_div_u32(u_input.c, arg_0.c))));
    var var_1 = arg_0;
    global2 = array<vec4<bool>, 11>();
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(492f, global0[_wgslsmith_index_u32(var_0.b, 15u)], arg_0.b.x, var_1.b.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, 989f, arg_0.b.x, var_1.b.x))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(var_1.b.x, 818f, arg_0.d)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(arg_0.c, 15u)], -196f) * _wgslsmith_f_op_f32(-var_1.b.x)), -1262f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(28387u, 15u)] - arg_0.b.x)))));
    global0 = array<f32, 15>();
    return -5789i;
}

fn func_2(arg_0: Struct_3, arg_1: vec2<bool>) -> Struct_3 {
    global2 = array<vec4<bool>, 11>();
    global2 = array<vec4<bool>, 11>();
    let var_0 = _wgslsmith_mod_vec2_i32(global1.xz, _wgslsmith_add_vec2_i32(vec2<i32>(~(-u_input.a.x), -3939i), vec2<i32>(firstTrailingBit(-25933i), -(global1.x | 2147483647i))));
    let var_1 = ~(~vec3<u32>(_wgslsmith_mult_u32(u_input.c, u_input.c), u_input.c >> (u_input.c % 32u), 57717u)) | _wgslsmith_mult_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 0u, u_input.c), vec3<u32>(0u, u_input.c, u_input.c)) >> (vec3<u32>(u_input.c, ~1u, 1u) % vec3<u32>(32u)), firstTrailingBit(countOneBits(~vec3<u32>(u_input.c, 0u, u_input.c))));
    var var_2 = global1.x;
    return Struct_3(_wgslsmith_f_op_f32(-arg_0.a));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_3, arg_3: u32) -> u32 {
    var var_0 = u_input.a;
    var var_1 = !(!(all(select(vec4<bool>(true, true, true, true), global2[_wgslsmith_index_u32(62164u, 11u)], false)) == true));
    var var_2 = arg_0;
    var var_3 = !(!select(!select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true), any(vec3<bool>(true, true, true))));
    var var_4 = _wgslsmith_clamp_vec4_u32(~abs(vec4<u32>(~0u, min(arg_0.b.b, 0u), _wgslsmith_sub_u32(var_2.a.b, 4294967295u), select(u_input.c, 4294967295u, var_3.x))), ~firstLeadingBit(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, arg_0.b.a.x, 0u, 1u)), ~vec4<u32>(arg_0.a.a.x, 4294967295u, 71919u, u_input.c))), ~firstTrailingBit(vec4<u32>(1u, u_input.c, var_2.a.a.x, arg_0.b.a.x) ^ vec4<u32>(4294967295u, 4294967295u, arg_3, 1576u)));
    return u_input.c;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: Struct_5, arg_3: Struct_4) -> bool {
    var var_0 = func_2(func_2(Struct_3(241f), select(!select(vec2<bool>(arg_3.d, arg_3.d), vec2<bool>(arg_3.d, true), vec2<bool>(arg_3.d, arg_3.d)), vec2<bool>(true, arg_3.d), select(vec2<bool>(arg_3.d, arg_3.d), vec2<bool>(arg_3.d, false), !arg_3.d))), !select(select(select(vec2<bool>(arg_3.d, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), -1288f != arg_2.b.x), !(!vec2<bool>(true, arg_3.d)), false));
    let var_1 = Struct_4(Struct_1(vec2<u32>(u_input.c, u_input.c), arg_1.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.b + arg_2.b)), abs(_wgslsmith_mod_u32(arg_2.a, 1u)), any(select(!vec3<bool>(true, arg_3.d, true), select(select(vec3<bool>(false, arg_3.d, arg_3.d), vec3<bool>(true, arg_3.d, arg_3.d), vec3<bool>(arg_3.d, true, false)), select(vec3<bool>(arg_3.d, arg_3.d, arg_3.d), vec3<bool>(arg_3.d, arg_3.d, true), vec3<bool>(true, false, arg_3.d)), !vec3<bool>(arg_3.d, false, arg_3.d)), vec3<bool>(all(vec4<bool>(true, false, arg_3.d, true)), arg_3.d, all(vec4<bool>(arg_3.d, false, false, false))))));
    global0 = array<f32, 15>();
    let var_2 = func_1(arg_3);
    global0 = array<f32, 15>();
    return arg_3.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(all(vec4<bool>(true, true, true, true)), func_4(global1.xyy, vec4<u32>(9637u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 0u), vec2<u32>(u_input.c, u_input.c)), func_3(Struct_2(Struct_1(vec2<u32>(4294967295u, u_input.c), u_input.c), Struct_1(vec2<u32>(27086u, 1u), 4294967295u)), func_1(Struct_4(Struct_1(vec2<u32>(55497u, u_input.c), 4294967295u), vec2<f32>(-459f, -521f), u_input.c, false)), func_2(Struct_3(global0[_wgslsmith_index_u32(u_input.c, 15u)]), vec2<bool>(true, false)), 59659u >> (u_input.c % 32u)), 33048u), Struct_5(~u_input.c, vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 15u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 15u)] - -2025f)), Struct_1(vec2<u32>(u_input.c, u_input.c), ~29494u)), Struct_4(Struct_1(vec2<u32>(1u, 0u), ~u_input.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-805f, global0[_wgslsmith_index_u32(u_input.c, 15u)]))), _wgslsmith_clamp_u32(min(u_input.c, 8493u), ~u_input.c, ~u_input.c), true)), all(vec3<bool>(true, true, true)) && (global0[_wgslsmith_index_u32(1u, 15u)] >= -732f), true);
    var_0 = select(select(!vec4<bool>(var_0.x | var_0.x, u_input.d.x != 1i, true & var_0.x, func_4(vec3<i32>(global1.x, -2147483647i, global1.x), vec4<u32>(88481u, u_input.c, u_input.c, u_input.c), Struct_5(u_input.c, vec2<f32>(global0[_wgslsmith_index_u32(u_input.c, 15u)], -838f), Struct_1(vec2<u32>(1u, u_input.c), u_input.c)), Struct_4(Struct_1(vec2<u32>(1u, 0u), 4294967295u), vec2<f32>(global0[_wgslsmith_index_u32(79815u, 15u)], global0[_wgslsmith_index_u32(98249u, 15u)]), 8824u, var_0.x))), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(8869u, u_input.c), 11u)], all(var_0.zx)), global2[_wgslsmith_index_u32(1u, 11u)], !all(!vec4<bool>(false, false, var_0.x, false)));
    let var_1 = Struct_5(~_wgslsmith_sub_u32(u_input.c, u_input.c), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(func_2(Struct_3(1284f), select(vec2<bool>(var_0.x, true), var_0.wx, var_0.x)).a, -2424f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 15u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 15u)]))))), Struct_1((~vec2<u32>(14200u, 4294967295u) ^ select(vec2<u32>(57743u, u_input.c), vec2<u32>(u_input.c, u_input.c), false)) ^ vec2<u32>(u_input.c, 6490u), u_input.c));
    let var_2 = Struct_4(Struct_1(select(var_1.c.a, ~var_1.c.a, vec2<bool>(false, var_0.x)) >> (vec2<u32>(select(1u, var_1.a, false), reverseBits(var_1.c.b)) % vec2<u32>(32u)), func_3(Struct_2(Struct_1(var_1.c.a, 1u), var_1.c), abs(24678i), func_2(Struct_3(1000f), var_0.yx), var_1.c.a.x) & ~u_input.c), var_1.b, 18777u, true);
    var_0 = !(!global2[_wgslsmith_index_u32(~1u, 11u)]);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-818f * var_2.b.x));
    let var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3 * 268f) * _wgslsmith_f_op_f32(-216f - var_3)), _wgslsmith_f_op_f32(-var_2.b.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1395f - 470f), _wgslsmith_f_op_f32(ceil(var_1.b.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.b, vec2<f32>(global0[_wgslsmith_index_u32(u_input.c, 15u)], global0[_wgslsmith_index_u32(var_2.c, 15u)]), false)))), var_0.yx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.b)));
    let x = u_input.a;
    s_output = StorageBuffer(-282f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-587f, -738f), _wgslsmith_f_op_f32(-551f * -1055f), 369f, _wgslsmith_f_op_f32(-134f - var_4.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, var_2.b.x, -230f, var_3))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1385f, global0[_wgslsmith_index_u32(5685u, 15u)], var_4.x, 165f)), vec4<f32>(832f, var_2.b.x, -1000f, 1000f))))), ~(~vec2<u32>(var_1.a, ~7039u)), _wgslsmith_f_op_f32(f32(-1f) * -765f), vec2<f32>(_wgslsmith_f_op_f32(sign(var_2.b.x)), 1065f));
}

