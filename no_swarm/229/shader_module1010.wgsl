struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec2<u32>(25293u, 54270u), vec2<bool>(false, false)), Struct_1(vec2<u32>(49155u, 4294967295u), vec2<bool>(true, true)), Struct_1(vec2<u32>(10185u, 4294967295u), vec2<bool>(false, false)), Struct_1(vec2<u32>(0u, 0u), vec2<bool>(false, true)), Struct_1(vec2<u32>(0u, 27924u), vec2<bool>(false, true)), Struct_1(vec2<u32>(33933u, 9332u), vec2<bool>(false, true)), Struct_1(vec2<u32>(32754u, 4294967295u), vec2<bool>(false, false)), Struct_1(vec2<u32>(0u, 4294967295u), vec2<bool>(true, true)), Struct_1(vec2<u32>(1u, 0u), vec2<bool>(false, true)), Struct_1(vec2<u32>(0u, 11311u), vec2<bool>(true, false)), Struct_1(vec2<u32>(77018u, 1u), vec2<bool>(false, true)));

var<private> global2: Struct_2;

var<private> global3: array<vec2<i32>, 21>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<f32>) -> f32 {
    return arg_1.x;
}

fn func_2(arg_0: u32, arg_1: f32) -> vec2<bool> {
    global0 = arg_1 <= _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1401f, _wgslsmith_f_op_f32(arg_1 - arg_1), global2.c & false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<bool>(global2.a, false, false, global2.c), vec2<f32>(-318f, arg_1)))))));
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1)));
    var var_1 = Struct_1(u_input.b, select(select(!(!vec2<bool>(global2.c, true)), !select(vec2<bool>(global2.c, true), vec2<bool>(false, true), false), select(select(vec2<bool>(global2.c, true), vec2<bool>(global2.c, true), vec2<bool>(global2.c, global2.c)), select(vec2<bool>(global2.c, global2.c), vec2<bool>(global2.a, true), vec2<bool>(global2.a, global2.c)), global2.a)), select(select(vec2<bool>(true, true), !vec2<bool>(true, global2.c), !vec2<bool>(global2.a, false)), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, u_input.a > u_input.a), select(select(vec2<bool>(global2.c, true), vec2<bool>(global2.a, true), vec2<bool>(false, true)), vec2<bool>(true, false), global2.a), vec2<bool>(true, !global2.c))));
    var var_2 = ~abs(~vec4<i32>(u_input.a, -39085i, -52206i, 1756i)) << (firstTrailingBit(~countOneBits(abs(vec4<u32>(45253u, global2.b, u_input.b.x, var_1.a.x)))) % vec4<u32>(32u));
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(3489f - -840f)) * -467f)))));
    return select(!select(vec2<bool>(global2.a, global2.c), select(select(var_1.b, vec2<bool>(false, true), var_1.b.x), select(var_1.b, var_1.b, false), vec2<bool>(false, var_1.b.x)), all(var_1.b)), vec2<bool>(true, true), select(true, false, global2.a) && true);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: f32, arg_3: vec2<f32>) -> vec4<f32> {
    var var_0 = ~_wgslsmith_mult_i32(_wgslsmith_mod_i32(select(u_input.a, u_input.a, false), _wgslsmith_mod_i32(u_input.a, u_input.a)), _wgslsmith_sub_i32(u_input.a, 9507i) | firstLeadingBit(u_input.a)) | (2147483647i | (415i ^ _wgslsmith_dot_vec3_i32(select(vec3<i32>(-25955i, u_input.a, u_input.a), vec3<i32>(-77025i, u_input.a, u_input.a), arg_0.a.b.x), min(vec3<i32>(u_input.a, 1i, u_input.a), vec3<i32>(u_input.a, u_input.a, -2147483647i)))));
    global0 = all(arg_1);
    let var_1 = arg_0;
    let var_2 = ~vec4<u32>(_wgslsmith_dot_vec4_u32(firstTrailingBit(countOneBits(vec4<u32>(4294967295u, u_input.b.x, global2.b, 4294967295u))), min(vec4<u32>(46858u, u_input.b.x, 0u, u_input.b.x), ~vec4<u32>(2183u, arg_0.b.x, 61435u, 17405u))), firstTrailingBit(~arg_0.b.x), _wgslsmith_div_u32(reverseBits(57779u), var_1.a.a.x), ~max(_wgslsmith_dot_vec2_u32(var_1.b, u_input.b), ~4294967295u));
    global2 = Struct_2(all(!select(select(vec3<bool>(true, global2.a, arg_1.x), vec3<bool>(true, false, global2.a), vec3<bool>(global2.a, global2.c, global2.a)), select(arg_1, vec3<bool>(arg_0.a.b.x, false, arg_0.a.b.x), vec3<bool>(true, false, true)), arg_1)), reverseBits(_wgslsmith_sub_u32(global2.b, ~27952u)), !arg_0.a.b.x);
    return _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(802f * _wgslsmith_f_op_f32(arg_2 + -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -213f))), _wgslsmith_f_op_f32(-arg_2), arg_2, arg_2), vec4<f32>(617f, arg_3.x, _wgslsmith_f_op_f32(round(arg_2)), _wgslsmith_f_op_f32(trunc(arg_3.x)))));
}

fn func_1(arg_0: u32) -> u32 {
    let var_0 = !(!global2.c);
    let var_1 = _wgslsmith_f_op_vec4_f32(func_4(Struct_3(Struct_1(u_input.b, !func_2(23533u, 1000f)), ~(~_wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, 4294967295u)))), !select(select(!vec3<bool>(true, var_0, global2.c), select(vec3<bool>(var_0, global2.a, var_0), vec3<bool>(false, var_0, global2.c), global2.c), true), vec3<bool>(true, true, true), !vec3<bool>(global2.a, var_0, global2.a)), 649f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(190f - _wgslsmith_f_op_f32(2493f + 852f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1852f - _wgslsmith_f_op_f32(f32(-1f) * -419f)))))));
    global1 = array<Struct_1, 11>();
    var var_2 = i32(-1i) * -2147483647i;
    global1 = array<Struct_1, 11>();
    return 4294967295u;
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: vec2<i32>) -> u32 {
    global1 = array<Struct_1, 11>();
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-674f + -1036f), -2101f)), 1141f))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1179f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(859f, -1000f)))))));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-668f, var_1)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(vec4<bool>(arg_0.a.b.x, false, false, false), vec2<f32>(-603f, var_1))), _wgslsmith_f_op_f32(step(var_1, var_1)))))))));
    var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))));
    return _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.b, 4294967295u), vec2<u32>(global2.b, global2.b)), ~42914u), vec2<u32>(global2.b & arg_0.b.x, ~134532u)), firstLeadingBit(max(arg_0.b, arg_0.b))), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !global2.a;
    global3 = array<vec2<i32>, 21>();
    var var_0 = !select(vec4<bool>(global2.c, any(select(vec2<bool>(global2.c, false), vec2<bool>(global2.a, true), vec2<bool>(global2.a, global2.c))), all(vec4<bool>(global2.c, global2.a, global2.c, global2.c)), false), vec4<bool>(select(false & global2.a, true, !global2.c), u_input.a >= 1i, global2.c, all(vec4<bool>(false, false, global2.c, global2.c)) | global2.a), select(vec4<bool>(any(vec2<bool>(global2.a, global2.c)), any(vec4<bool>(false, true, global2.a, global2.c)), true, global2.a | global2.a), !vec4<bool>(global2.c, true, true, global2.c), select(vec4<bool>(global2.a, true, global2.a, true), vec4<bool>(global2.c, global2.c, false, true), false)));
    let var_1 = Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(~u_input.b.x, 4294967295u), global2.b, 4921u), func_5(Struct_3(Struct_1(u_input.b, vec2<bool>(false, true)), countOneBits(u_input.b)), func_1(~u_input.b.x), max(vec2<i32>(u_input.a, u_input.a), vec2<i32>(0i, u_input.a)))), 11u)], ~(~u_input.b | abs(vec2<u32>(u_input.b.x, u_input.b.x))));
    global3 = array<vec2<i32>, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(16436i, 1i), min(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~6929u, 4294967295u & var_1.b.x, _wgslsmith_clamp_u32(0u, var_1.a.a.x, 4294967295u)), 21u)], vec2<i32>(~select(-1i, u_input.a, true), i32(-1i) * -1i)));
}

