struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool = false;

var<private> global2: array<vec4<bool>, 23> = array<vec4<bool>, 23>(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false));

var<private> global3: Struct_3;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<f32>) -> bool {
    var var_0 = Struct_1(!(true && any(vec2<bool>(true, global0.a))), _wgslsmith_mod_vec2_u32(u_input.d, vec2<u32>(1u, 26418u)), select((13955u <= select(30028u, global3.a, global0.c)) && all(select(vec3<bool>(global0.c, global0.a, global0.c), vec3<bool>(global0.a, global0.c, global0.c), true)), !(arg_0.x <= arg_0.x) & global0.a, any(!global2[_wgslsmith_index_u32(26964u, 23u)]) || (_wgslsmith_f_op_f32(arg_0.x - -922f) <= _wgslsmith_f_op_f32(f32(-1f) * -2017f))), firstTrailingBit(_wgslsmith_mod_i32(-22009i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, -2147483647i), vec4<i32>(global0.d, -1i, global0.d, -18317i)) | max(26412i, 0i))));
    return all(global2[_wgslsmith_index_u32(global0.b.x, 23u)]);
}

fn func_2() -> Struct_2 {
    let var_0 = func_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1752f, 873f, -1756f), vec3<f32>(1903f, 246f, 749f)))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -417f), -1081f, _wgslsmith_f_op_f32(f32(-1f) * -169f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 658f, -1523f))))), vec3<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, global0.a))), true, false))));
    global3 = Struct_3(4294967295u);
    global2 = array<vec4<bool>, 23>();
    global0 = Struct_1(global0.c, abs(~(~abs(vec2<u32>(1u, u_input.d.x)))), var_0, -10295i);
    let var_1 = global0.d;
    return Struct_2(_wgslsmith_dot_vec3_i32(~vec3<i32>(firstLeadingBit(-2147483647i), -28677i, 1926i), ~(-vec3<i32>(-3746i, -68819i, global0.d)) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(42686i, u_input.c, 94089i), ~vec3<i32>(u_input.c, global0.d, global0.d))), -_wgslsmith_sub_i32(u_input.c, countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-29239i, -96390i), vec2<i32>(u_input.c, 11828i)))), Struct_1(all(vec4<bool>(true, global0.a & var_0, false, true)), ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 0u), u_input.d)), !(!var_0 | !var_0), -1i));
}

fn func_4(arg_0: Struct_4, arg_1: bool) -> vec2<i32> {
    return ~arg_0.b.xy;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<u32>) -> u32 {
    var var_0 = vec3<i32>(5731i, _wgslsmith_dot_vec2_i32(-(vec2<i32>(10210i, 0i) ^ vec2<i32>(global0.d, u_input.c)) & select(vec2<i32>(global0.d, 4757i), vec2<i32>(global0.d, -2147483647i), !vec2<bool>(true, global0.a)), func_4(Struct_4(func_2(), firstTrailingBit(vec3<i32>(-18917i, u_input.c, 1925i)), Struct_3(u_input.d.x), Struct_3(arg_1.x)), any(global2[_wgslsmith_index_u32(~0u, 23u)]))), -(_wgslsmith_div_i32(~global0.d, u_input.c) ^ (-u_input.c & u_input.c)));
    var var_1 = _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(880f * 751f)), _wgslsmith_f_op_f32(f32(-1f) * -248f)))));
    global1 = true & (false & (arg_1.x > min(global3.a | 60687u, ~arg_1.x)));
    var var_2 = func_2().c;
    let var_3 = Struct_2(~(-251i), firstTrailingBit(global0.d), Struct_1(global0.c, abs(abs(var_2.b & vec2<u32>(var_2.b.x, 65884u))), !any(vec3<bool>(true, false, global0.a)), func_2().b >> (6719u % 32u)));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.a | abs(_wgslsmith_clamp_u32(~0u, 0u, func_1(vec2<f32>(1341f, -1724f), ~u_input.a)));
    global3 = Struct_3(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.a.wzx, u_input.a.xzx), firstLeadingBit(4294967295u)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-115f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1235f * -806f)))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2290f)), _wgslsmith_f_op_f32(1700f + 483f))))));
    let var_2 = _wgslsmith_sub_vec4_u32(u_input.a, ~u_input.a);
    global2 = array<vec4<bool>, 23>();
    let var_3 = global0.a;
    global0 = Struct_1(global0.a & !select(global0.c & global0.c, global0.c, global0.c | true), var_2.zy & vec2<u32>(var_2.x, ~u_input.b | ~30530u), global0.c, _wgslsmith_dot_vec3_i32(-vec3<i32>(firstLeadingBit(global0.d), -global0.d, max(global0.d, global0.d)), vec3<i32>(countOneBits(i32(-1i) * -2147483647i), ~(~2147483647i), min(-19203i, u_input.c))));
    let var_4 = Struct_3(min(~(~func_1(vec2<f32>(-401f, 1000f), vec4<u32>(0u, 33302u, 0u, 1665u))), max(~countOneBits(global0.b.x), ~global0.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1f), var_2.x, 23091i, -547f);
}

