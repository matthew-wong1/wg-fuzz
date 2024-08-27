struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<vec3<u32>, 9> = array<vec3<u32>, 9>(vec3<u32>(82895u, 4938u, 1u), vec3<u32>(1u, 63877u, 0u), vec3<u32>(27738u, 0u, 1u), vec3<u32>(23637u, 12377u, 0u), vec3<u32>(97211u, 0u, 57816u), vec3<u32>(71485u, 59861u, 32584u), vec3<u32>(4000u, 40982u, 4294967295u), vec3<u32>(1u, 4294967295u, 51450u), vec3<u32>(13831u, 5241u, 1u));

var<private> global2: array<Struct_1, 21>;

var<private> global3: array<vec3<u32>, 17> = array<vec3<u32>, 17>(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(49502u, 20874u, 0u), vec3<u32>(1u, 1u, 889u), vec3<u32>(0u, 1u, 0u), vec3<u32>(24497u, 0u, 0u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(0u, 20125u, 33397u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(0u, 2480u, 0u), vec3<u32>(59102u, 103669u, 93565u), vec3<u32>(14258u, 0u, 4294967295u), vec3<u32>(95371u, 4294967295u, 4294967295u), vec3<u32>(0u, 66516u, 46962u), vec3<u32>(18391u, 4424u, 32346u), vec3<u32>(63253u, 4294967295u, 0u), vec3<u32>(4294967295u, 0u, 44856u), vec3<u32>(1u, 63773u, 0u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: Struct_4) -> i32 {
    var var_0 = abs(vec2<i32>(arg_1, -2147483647i)) & -abs(vec2<i32>(arg_0.a.c, 2147483647i));
    let var_1 = Struct_4(arg_0.a, _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(~min(arg_0.a.b.b, vec4<u32>(u_input.b.x, arg_2.b.x, arg_0.a.b.c.c.x, 40017u)), arg_2.b), arg_0.a.b.b, arg_2.b));
    global3 = array<vec3<u32>, 17>();
    var var_2 = min(arg_2.b.x, var_1.b.x);
    var var_3 = ~vec3<i32>(2147483647i, min(arg_1, ~var_0.x), 31501i);
    return var_3.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: f32) -> vec2<f32> {
    global0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.xw - _wgslsmith_f_op_vec2_f32(-arg_0.wz)) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-819f, arg_1)), vec2<f32>(-403f, arg_1)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.zx)))));
    var var_0 = (!any(vec3<bool>(true, true, true)) && true) || true;
    global1 = array<vec3<u32>, 9>();
    let var_1 = select(vec2<i32>(1i, -_wgslsmith_div_i32(1i, func_3(Struct_4(Struct_3(u_input.b.x, Struct_2(global2[_wgslsmith_index_u32(22747u, 21u)], vec4<u32>(4294967295u, u_input.a, 22003u, u_input.b.x), global2[_wgslsmith_index_u32(u_input.a, 21u)], 0i), 2147483647i), vec4<u32>(u_input.a, 67335u, u_input.b.x, 931u)), 1i, Struct_4(Struct_3(1u, Struct_2(global2[_wgslsmith_index_u32(u_input.a, 21u)], vec4<u32>(u_input.b.x, 4294967295u, 1u, 1u), global2[_wgslsmith_index_u32(55779u, 21u)], -82332i), -1i), vec4<u32>(u_input.a, 1u, 4294967295u, 0u))))), _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, ~(-2147483647i)), _wgslsmith_sub_vec2_i32(-vec2<i32>(41925i, -1i), ~(~vec2<i32>(-2147483647i, -49669i))), -vec2<i32>(1i, 1i)), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))));
    let var_2 = arg_0;
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_2.xw))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.ww) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-307f, -389f))))))));
}

fn func_1(arg_0: i32, arg_1: f32) -> Struct_4 {
    var var_0 = -1i;
    global0 = _wgslsmith_f_op_vec2_f32(func_2(vec4<f32>(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1)) + global0.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1017f)), global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.x))) + arg_1), global0.x), arg_1));
    var var_1 = vec2<u32>(_wgslsmith_div_u32(~0u, 41959u), ~_wgslsmith_div_u32(firstTrailingBit(50703u), abs(~8088u)));
    var var_2 = arg_0;
    let var_3 = Struct_4(Struct_3(u_input.a, Struct_2(Struct_1(true, vec3<f32>(global0.x, global0.x, 871f), u_input.b.yx, vec4<f32>(-288f, 600f, global0.x, arg_1)), vec4<u32>(u_input.a, var_1.x, 9634u, 54327u) << (firstLeadingBit(vec4<u32>(var_1.x, 0u, var_1.x, 4294967295u)) % vec4<u32>(32u)), global2[_wgslsmith_index_u32(abs(~0u), 21u)], _wgslsmith_mod_i32(arg_0, arg_0) ^ ~(-6211i)), -firstLeadingBit(arg_0)), select(_wgslsmith_sub_vec4_u32(~(vec4<u32>(4294967295u, 4294967295u, u_input.b.x, 4294967295u) & vec4<u32>(var_1.x, u_input.b.x, 27850u, var_1.x)), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(var_1.x, 2784u, u_input.b.x, 4294967295u)), vec4<u32>(4294967295u, u_input.a, var_1.x, var_1.x))), reverseBits(~select(vec4<u32>(u_input.b.x, var_1.x, 0u, var_1.x), vec4<u32>(u_input.a, 27787u, var_1.x, var_1.x), true)), true));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(firstTrailingBit(~1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(850f * global0.x)) * -394f));
    let var_1 = vec3<f32>(var_0.a.b.c.b.x, var_0.a.b.c.b.x, _wgslsmith_f_op_f32(sign(1203f)));
    global1 = array<vec3<u32>, 9>();
    let var_2 = -vec3<i32>(-42i, _wgslsmith_mod_i32(-8924i, var_0.a.c), -7685i);
    global2 = array<Struct_1, 21>();
    global2 = array<Struct_1, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(var_0.a.c, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.b.d, var_2.x), reverseBits(var_2.yz)) >> ((_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.a, 60331u, 26667u), vec3<u32>(1u, 41566u, var_0.b.x)) & (1u << (1u % 32u))) % 32u), ~(i32(-1i) * -var_0.a.c)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1479f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - -616f)), _wgslsmith_f_op_f32(ceil(-402f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(var_1))))))), abs(u_input.b.x & reverseBits(59238u)), -309f);
}

