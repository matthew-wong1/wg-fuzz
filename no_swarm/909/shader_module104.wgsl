struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec2<bool>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: array<Struct_3, 3>;

var<private> global2: array<vec4<u32>, 31>;

var<private> global3: f32 = -1000f;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec2<bool> {
    var var_0 = global0[_wgslsmith_index_u32(firstTrailingBit(43725u), 23u)];
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(vec3<u32>(0u, 14296u, ~51771u) ^ var_0.b.yyx), select(vec3<u32>(min(0u, u_input.c), var_0.d.x & u_input.c, 1u) | var_0.b.xxw, vec3<u32>(_wgslsmith_clamp_u32(6968u, ~u_input.c, var_0.b.x | var_0.d.x), ~firstTrailingBit(42550u), 112573u), !(!select(vec3<bool>(false, var_0.c.x, false), vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x), vec3<bool>(var_0.c.x, var_0.c.x, false))))), 23u)];
    var var_2 = abs(~_wgslsmith_dot_vec4_u32(min(global2[_wgslsmith_index_u32(u_input.c, 31u)], vec4<u32>(4294967295u, var_1.d.x, 1u, 1u)), var_1.b));
    global1 = array<Struct_3, 3>();
    let var_3 = u_input.d;
    return vec2<bool>(var_0.c.x, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(abs(var_3), -55286i, ~var_3)) <= _wgslsmith_sub_i32(-10i, firstTrailingBit(30298i)));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = Struct_4(u_input.c, Struct_1(_wgslsmith_f_op_f32(sign(arg_1.a)), vec4<u32>(~u_input.c, 73714u, _wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(u_input.c, 4294967295u)), _wgslsmith_mult_u32(4294967295u, arg_1.b.x)), select(arg_0, func_3(), arg_0.x), select(vec2<u32>(countOneBits(68414u), 4294967295u), ~arg_1.b.zw, arg_1.c)));
    var var_1 = global1[_wgslsmith_index_u32(4294967295u, 3u)];
    let var_2 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(548f + -1000f))), var_0.b);
    var var_3 = any(vec3<bool>(select(all(vec3<bool>(arg_1.c.x, true, var_2.b.c.x)) | var_2.b.c.x, true, all(vec3<bool>(var_0.b.c.x, true, var_1.a)) & var_2.b.c.x), any(!vec3<bool>(true, var_0.b.c.x, var_2.b.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(468f - -162f) * _wgslsmith_div_f32(-346f, var_1.b.a)) > -1694f));
    var var_4 = 313f;
    return var_1.b;
}

fn func_1() -> Struct_2 {
    let var_0 = false;
    global2 = array<vec4<u32>, 31>();
    return func_2(vec2<bool>(true, true), Struct_1(1312f, global2[_wgslsmith_index_u32(u_input.c ^ u_input.c, 31u)], select(select(vec2<bool>(true, true), vec2<bool>(false, var_0), all(vec2<bool>(false, var_0))), !vec2<bool>(var_0, false), !(!vec2<bool>(true, var_0))), vec2<u32>(_wgslsmith_add_u32(u_input.c, reverseBits(4294967295u)), u_input.c)));
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    global3 = arg_0.a;
    let var_0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-722f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-387f, arg_0.b.a, false)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.b.a, -949f), _wgslsmith_f_op_f32(abs(arg_0.b.a))))), -1171f == _wgslsmith_f_op_f32(-arg_0.a))), vec4<u32>(countOneBits(arg_0.b.d.x), ~4294967295u | _wgslsmith_dot_vec3_u32(~arg_0.b.b.zwx, vec3<u32>(14601u, 9025u, 0u)), arg_0.b.b.x << (u_input.c % 32u), ~0u), func_3(), select(countOneBits(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 4294967295u), arg_0.b.b.xx, arg_0.b.b.yy)), arg_0.b.d, arg_0.b.c.x));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1048f))))), arg_0.b.b, select(vec2<bool>(true, var_0.c.x), select(func_1().b.c, var_0.c, !(!var_0.c)), arg_0.b.c.x), ~func_2(func_3(), global0[_wgslsmith_index_u32(var_0.d.x | (var_0.d.x ^ 7709u), 23u)]).b.b.yy);
    let var_2 = select(select(!select(select(vec4<bool>(false, var_1.c.x, true, true), vec4<bool>(false, arg_0.b.c.x, true, true), vec4<bool>(false, false, true, var_0.c.x)), select(vec4<bool>(false, arg_0.b.c.x, false, false), vec4<bool>(var_0.c.x, true, var_1.c.x, var_1.c.x), vec4<bool>(true, var_0.c.x, true, var_1.c.x)), vec4<bool>(true, arg_0.b.c.x, var_1.c.x, var_1.c.x)), !select(vec4<bool>(true, arg_0.b.c.x, false, var_1.c.x), vec4<bool>(false, true, var_0.c.x, false), false), true), !select(!vec4<bool>(arg_0.b.c.x, var_0.c.x, true, true), vec4<bool>(!arg_0.b.c.x, var_0.c.x, true, any(var_1.c)), vec4<bool>(-175f > var_1.a, arg_0.b.c.x || arg_0.b.c.x, arg_0.b.a > -554f, arg_0.b.c.x != true)), any(!vec4<bool>(var_1.c.x, -67260i != u_input.b, var_1.c.x & arg_0.b.c.x, true)));
    var var_3 = arg_0.b.c.x;
    return global1[_wgslsmith_index_u32(~4294967295u, 3u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -u_input.a.yz;
    var var_1 = func_4(func_1());
    var var_2 = select(select(select(vec3<bool>(true, true, false), select(vec3<bool>(var_1.a, false, var_1.a), !vec3<bool>(true, var_1.b.b.c.x, true), true & var_1.b.b.c.x), var_1.a), vec3<bool>(true, true, var_1.b.a != var_1.b.a), !var_1.a), !select(select(select(vec3<bool>(var_1.a, var_1.a, true), vec3<bool>(var_1.b.b.c.x, false, var_1.b.b.c.x), var_1.b.b.c.x), select(vec3<bool>(var_1.b.b.c.x, var_1.b.b.c.x, var_1.b.b.c.x), vec3<bool>(true, var_1.b.b.c.x, false), vec3<bool>(false, var_1.a, var_1.b.b.c.x)), select(vec3<bool>(true, var_1.a, var_1.b.b.c.x), vec3<bool>(var_1.b.b.c.x, true, var_1.a), var_1.b.b.c.x)), !(!vec3<bool>(true, var_1.a, var_1.b.b.c.x)), !vec3<bool>(true, var_1.b.b.c.x, var_1.a)), all(vec3<bool>(any(vec2<bool>(var_1.b.b.c.x, var_1.a)), select(false, true, var_1.b.b.c.x), var_1.a)));
    var_1 = Struct_3(false, func_1());
    let var_3 = func_2(vec2<bool>(var_1.b.b.c.x, any(!var_1.b.b.c)), func_1().b).b.c;
    global3 = -722f;
    var var_4 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.b.b.a)) + _wgslsmith_f_op_f32(-var_1.b.a)), -1589f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -608f)), var_1.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.b.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.b.a, 647f, var_1.b.a, var_1.b.b.a), vec4<f32>(var_1.b.b.a, 1215f, -202f, var_1.b.a)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(165f, 476f, -915f, var_1.b.a), vec4<f32>(var_1.b.b.a, -930f, var_1.b.a, -903f), true)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.a, var_1.b.b.a, var_1.b.a, -990f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2070f, var_1.b.a, var_1.b.b.a, 1864f)))))), !(!(!select(vec4<bool>(var_2.x, var_2.x, true, var_3.x), vec4<bool>(false, true, true, false), var_1.a)))));
    let var_5 = var_1.b.b.d;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-351f, var_4.x)));
}

