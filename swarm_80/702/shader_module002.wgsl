struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

var<private> global1: vec4<f32> = vec4<f32>(1145f, 141f, 1000f, 1006f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec4<u32>) -> vec4<f32> {
    let var_0 = abs(~(-2147483647i) ^ ~_wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.a.x, u_input.d), _wgslsmith_sub_i32(u_input.d, 75205i), firstLeadingBit(47566i)));
    var var_1 = Struct_1(vec4<i32>(-3249i, firstLeadingBit(_wgslsmith_div_i32(reverseBits(var_0), countOneBits(24026i))), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(var_0, 68668i, var_0), -vec3<i32>(-1i, var_0, u_input.d)), u_input.a.x), u_input.d));
    let var_2 = global1.x;
    let var_3 = Struct_1(var_1.a);
    var var_4 = global0[_wgslsmith_index_u32(1u, 6u)];
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.x, 480f, 1089f, 835f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 664f, 277f, global1.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(452f, global1.x, -248f, -1846f))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1182f, global1.x, 1261f, -2184f))))), any(vec2<bool>(true, true)))) - vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.x, _wgslsmith_f_op_f32(-217f + 1189f), any(vec2<bool>(false, false))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-431f * global1.x), _wgslsmith_f_op_f32(-526f + _wgslsmith_f_op_f32(global1.x * 370f)), abs(arg_0) >= ~1u)), _wgslsmith_f_op_f32(sign(838f))));
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> vec3<bool> {
    let var_0 = _wgslsmith_div_f32(-988f, _wgslsmith_f_op_f32(arg_0 * arg_0));
    let var_1 = Struct_2(Struct_1(vec4<i32>(min(u_input.d, u_input.d) >> (u_input.e.x % 32u), -arg_1.a.a.x, arg_1.a.a.x, _wgslsmith_div_i32(firstLeadingBit(arg_1.a.a.x), _wgslsmith_dot_vec2_i32(arg_1.a.a.xx, arg_1.a.a.wx)))));
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_3(~1u, _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.c.x, u_input.b, u_input.c.x), vec4<u32>(u_input.e.x, 31847u, 13496u, u_input.c.x)))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_vec4_f32(func_3(47931u ^ u_input.c.x, vec4<u32>(u_input.c.x, 0u, 4294967295u, 57117u))).x, 1740f, arg_0)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-1768f + 1826f), _wgslsmith_f_op_f32(var_0 - -1000f), var_0)));
    var var_2 = Struct_1(-vec4<i32>(~countOneBits(-2147483647i), 0i & _wgslsmith_dot_vec4_i32(arg_1.a.a, var_1.a.a), ~18702i, arg_1.a.a.x));
    var var_3 = countOneBits(firstTrailingBit(~abs(~vec4<i32>(arg_1.a.a.x, u_input.a.x, -1i, 2147483647i))));
    return vec3<bool>(!(-38551i == (abs(var_2.a.x) << (u_input.e.x % 32u))), any(vec3<bool>(true, any(vec2<bool>(true, true)), _wgslsmith_mult_u32(u_input.c.x, 4294967295u) > u_input.b)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
}

fn func_1() -> vec4<f32> {
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    let var_0 = _wgslsmith_f_op_f32(sign(1999f));
    global0 = array<Struct_1, 6>();
    var var_1 = !(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), func_2(-1434f, Struct_2(Struct_1(vec4<i32>(u_input.d, 14849i, -2147483647i, u_input.d))))), vec3<bool>(false, 4951u == u_input.c.x, true), any(vec4<bool>(true, true, false, true)) | true));
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1241f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.x)) - global1.x), _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-var_0)) - vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0, 131f, var_1.x)) * -644f), -1667f, 476f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1319f, var_0, 115f, global1.x), vec4<f32>(-476f, -320f, var_0, 683f))))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_mult_vec3_i32(~(~max(vec3<i32>(u_input.d, u_input.a.x, -2147483647i), vec3<i32>(-1i, u_input.d, 9933i))), -vec3<i32>(-6119i, 5065i, 2147483647i));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1()));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1256f * global1.x), -955f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(349f + _wgslsmith_f_op_f32(max(global1.x, -118f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.yw * global1.xy)), select(!vec2<bool>(true, any(vec2<bool>(false, false))), select(vec2<bool>(true, true), func_2(_wgslsmith_f_op_f32(-global1.x), Struct_2(Struct_1(vec4<i32>(-5045i, var_0.x, 15906i, u_input.a.x)))).yx, select(vec2<bool>(false, true), vec2<bool>(false, true), u_input.a.x < -20320i)), true)));
    let var_2 = Struct_2(global0[_wgslsmith_index_u32(u_input.b << (~(~1u) % 32u), 6u)]);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2619f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + global1.x)))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.x - var_1.x), var_1.x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_vec4_f32(func_1()).x, _wgslsmith_f_op_f32(640f + -376f), _wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_div_f32(var_3, -1000f)), vec4<f32>(_wgslsmith_f_op_f32(-var_3), 1000f, -1050f, _wgslsmith_f_op_f32(select(653f, var_1.x, false))))), global1.wzx, min(u_input.c.yyy >> (u_input.e.xxy % vec3<u32>(32u)), max(~vec3<u32>(u_input.e.x, u_input.c.x, u_input.e.x), (u_input.e.zzz << (u_input.c.xzx % vec3<u32>(32u))) >> (vec3<u32>(4791u, 85374u, u_input.b) % vec3<u32>(32u)))), _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.b, u_input.c.x), 22522u), ~0u);
}

