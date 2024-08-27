struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: f32, arg_1: bool) -> f32 {
    var var_0 = Struct_3(-(~(-1i)), ~reverseBits(vec4<u32>(reverseBits(47459u), reverseBits(9244u), 4294967295u, firstLeadingBit(20015u))), Struct_2(Struct_1(global0.b, -238f, !(!vec2<bool>(arg_1, global0.c.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(878f, global0.b))))), Struct_1(global0.b, 373f, select(global0.c, vec2<bool>(global0.c.x, true), select(global0.c, global0.c, vec2<bool>(arg_1, global0.c.x)))), -937f > global0.b, u_input.a.x));
    var var_1 = Struct_3(-_wgslsmith_mod_i32(-11486i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, u_input.a.x, 45634i) ^ u_input.a, vec3<i32>(0i, var_0.c.e, u_input.a.x))), reverseBits(vec4<u32>(var_0.b.x, abs(var_0.b.x), 1u, 1u) << (~max(var_0.b, var_0.b) % vec4<u32>(32u))), Struct_2(Struct_1(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-887f + 1412f)), !(!vec2<bool>(arg_1, arg_1))), var_0.c.b, var_0.c.a, arg_1, -firstTrailingBit(~18482i)));
    var var_2 = abs(countOneBits(~(_wgslsmith_clamp_vec4_i32(vec4<i32>(-32080i, -5650i, var_0.c.e, var_1.a), vec4<i32>(var_0.a, var_1.c.e, -21080i, u_input.a.x), vec4<i32>(var_0.a, -3604i, var_0.a, 7116i)) >> (vec4<u32>(var_0.b.x, var_1.b.x, 23596u, 1u) % vec4<u32>(32u)))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)));
    let var_4 = Struct_3(firstTrailingBit(2147483647i), countOneBits(vec4<u32>(var_1.b.x, (67501u & var_1.b.x) | _wgslsmith_clamp_u32(var_0.b.x, var_0.b.x, 21093u), ~(~4294967295u), ~_wgslsmith_clamp_u32(var_0.b.x, var_1.b.x, var_0.b.x))), Struct_2(Struct_1(547f, arg_0, !global0.c), var_1.c.b, var_1.c.c, !var_0.c.c.c.x, countOneBits(1i)));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.a), -1024f, var_0.c.c.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1653f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.c.c.b)) * _wgslsmith_f_op_f32(-1883f + arg_0))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1620f)) * global0.b), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f * -712f))))));
}

fn func_2() -> f32 {
    var var_0 = countOneBits(abs(u_input.a));
    global0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b, 766f) + global0.b), _wgslsmith_div_f32(-651f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a))))), global0.b, !vec2<bool>(-u_input.a.x != reverseBits(-19247i), all(select(vec3<bool>(true, true, global0.c.x), vec3<bool>(global0.c.x, global0.c.x, true), global0.c.x))));
    let var_1 = 1u;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(505f))), global0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), global0.c), vec2<f32>(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1640f, -646f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b + 579f) - global0.a))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-934f * global0.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-205f, -386f))), _wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(select(-1782f, global0.b, !global0.c.x))), select(!global0.c, select(!global0.c, select(global0.c, global0.c, vec2<bool>(global0.c.x, global0.c.x)), true), !global0.c.x & true)), !global0.c.x, var_0.x);
    var var_3 = Struct_3(-1i, ~vec4<u32>(24372u, ~(~10033u), select(countOneBits(4294967295u), var_1, var_2.d), _wgslsmith_dot_vec3_u32(select(vec3<u32>(var_1, var_1, 19399u), vec3<u32>(1u, var_1, 0u), vec3<bool>(var_2.c.c.x, true, var_2.a.c.x)), vec3<u32>(var_1, 4294967295u, var_1))), var_2);
    return 1945f;
}

fn func_1() -> vec2<bool> {
    global0 = Struct_1(global0.a, global0.b, !select(!global0.c, !global0.c, select(!global0.c, !global0.c, true)));
    var var_0 = !(!vec3<bool>(true, !(!global0.c.x), global0.c.x));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global0.a)))) - _wgslsmith_f_op_f32(func_2()));
    let var_2 = abs(1u);
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-602f, !var_0.x)) * var_1))), _wgslsmith_f_op_f32(-var_1)));
    return vec2<bool>(global0.c.x, !(!(var_1 == 1550f)));
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_2) -> f32 {
    let var_0 = _wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(firstLeadingBit(arg_2.e), -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(12995i, u_input.a.x), u_input.a.xx), 1i), firstTrailingBit(vec4<i32>(u_input.a.x, 63195i, arg_2.e, arg_2.e))), vec4<i32>(arg_2.e, _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a.x, ~arg_2.e), arg_2.e & ~7094i), 15846i, 1i));
    let var_1 = ~vec3<u32>(abs(6489u), ~(~4294967295u), 36229u) >> (max(~abs(vec3<u32>(arg_0, 27488u, arg_0)), ~(~vec3<u32>(arg_0, 1877u, arg_0))) % vec3<u32>(32u));
    var var_2 = vec2<bool>(true, any(!func_1()));
    let var_3 = !vec3<bool>(arg_2.d, !any(select(vec4<bool>(true, arg_1.x, false, true), vec4<bool>(false, false, false, arg_1.x), vec4<bool>(true, true, global0.c.x, global0.c.x))), var_2.x);
    global0 = arg_2.c;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1477f, _wgslsmith_f_op_f32(trunc(arg_2.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.b, _wgslsmith_f_op_f32(func_4(reverseBits(~(~44941u)), global0.c, Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1269f), 971f, func_1()), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-620f, global0.b))))), Struct_1(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(-global0.b), global0.c), global0.c.x, ~(~(-61542i))))), select(vec2<bool>(any(!vec3<bool>(true, global0.c.x, global0.c.x)), true), vec2<bool>(false, !global0.c.x == any(vec3<bool>(global0.c.x, true, global0.c.x))), global0.c));
    global0 = Struct_1(global0.a, _wgslsmith_f_op_f32(func_4(11424u, select(!select(global0.c, global0.c, vec2<bool>(false, global0.c.x)), vec2<bool>(global0.c.x || global0.c.x, global0.c.x), global0.c.x), Struct_2(Struct_1(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(trunc(154f)), global0.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0.a, 247f), vec2<f32>(1685f, 1000f)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.b, 896f), vec2<f32>(-162f, 1071f)))), Struct_1(global0.b, _wgslsmith_f_op_f32(min(global0.b, 205f)), global0.c), true, u_input.a.x))), global0.c);
    let var_0 = max(u_input.a.x, ~u_input.a.x);
    global0 = Struct_1(global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-729f, true)) + -1228f), global0.c);
    global0 = Struct_1(-1371f, _wgslsmith_f_op_f32(218f - _wgslsmith_div_f32(-184f, global0.a)), select(!global0.c, !(!(!vec2<bool>(global0.c.x, global0.c.x))), vec2<bool>(!(global0.b >= global0.b), all(vec4<bool>(global0.c.x, global0.c.x, global0.c.x, global0.c.x)))));
    let var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(58324u, ~46907u, 42168u, ~31244u) << ((select(~vec4<u32>(0u, 1u, 13967u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u), select(vec4<bool>(global0.c.x, true, global0.c.x, true), vec4<bool>(false, true, global0.c.x, global0.c.x), vec4<bool>(true, global0.c.x, global0.c.x, global0.c.x))) << (vec4<u32>(select(0u, 4294967295u, global0.c.x), ~36052u, 1u, countOneBits(4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u)), ~abs(vec4<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 21128u), vec3<u32>(1u, 85228u, 4294967295u)), reverseBits(47209u), 1u)), countOneBits(vec4<u32>(1u, 1u, 1u, 1u)) << (_wgslsmith_mult_vec4_u32(select(firstTrailingBit(vec4<u32>(46184u, 4294967295u, 0u, 29194u)), ~vec4<u32>(56070u, 4294967295u, 6726u, 0u), true), vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-552f, -775f, 987f, 1f), abs(-(max(vec2<i32>(0i, u_input.a.x), u_input.a.zy) | abs(vec2<i32>(21129i, -2147483647i)))), var_1.x, select(select(~(0u >> (0u % 32u)), var_1.x, !global0.c.x), var_1.x, global0.c.x), 0u);
}

