struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<i32, 4> = array<i32, 4>(0i, -10452i, 2147483647i, -32160i);

var<private> global2: bool;

var<private> global3: array<i32, 9>;

var<private> global4: vec2<u32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: vec3<bool>) -> bool {
    var var_0 = arg_0.b;
    global1 = array<i32, 4>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-307f)))) + _wgslsmith_f_op_f32(-arg_0.e))), arg_0.e, arg_0.e, arg_0.b.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_1, vec4<f32>(-980f, -1000f, -940f, arg_2.b.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.e, var_1.x, var_1.x, -907f))))), vec4<f32>(796f, _wgslsmith_f_op_f32(-240f * arg_0.e), _wgslsmith_f_op_f32(869f - 1000f), var_1.x), true)));
    let var_3 = arg_2;
    return -u_input.a > (global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_2.c.yy, vec2<u32>(var_3.d.x, 6813u), var_3.d.xz) & countOneBits(vec2<u32>(var_3.c.x, 30021u)), vec2<u32>(3880u, arg_0.c.x)), 4u)] & global1[_wgslsmith_index_u32(global4.x, 4u)]);
}

fn func_4(arg_0: Struct_1) -> i32 {
    var var_0 = arg_0;
    global2 = !var_0.a;
    let var_1 = vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(21191i, 59509i), min(1i, ~(-2147483647i)) & global1[_wgslsmith_index_u32(~1u, 4u)]), -countOneBits(countOneBits(i32(-1i) * -56363i)), -22892i);
    global1 = array<i32, 4>();
    var var_2 = Struct_1(var_0.a, var_0.b, vec4<u32>(_wgslsmith_sub_u32(~var_0.d.x, arg_0.d.x), ~((u_input.b & u_input.b) & ~global4.x), _wgslsmith_add_u32(22620u, var_0.c.x), 1u), firstLeadingBit(arg_0.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(939f, arg_0.b.x))));
    return -42729i;
}

fn func_2() -> vec4<f32> {
    let var_0 = -countOneBits(~reverseBits(vec4<i32>(0i, 1i, 1i, global3[_wgslsmith_index_u32(u_input.b, 9u)]) << (vec4<u32>(1u, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u))));
    var var_1 = min(func_4(Struct_1(func_3(Struct_1(false, vec2<f32>(-306f, -1021f), vec4<u32>(4294967295u, 4294967295u, u_input.b, 4294967295u), vec3<u32>(1u, u_input.b, global4.x), -1352f), vec4<i32>(-1i, global1[_wgslsmith_index_u32(global4.x, 4u)], global1[_wgslsmith_index_u32(137313u, 4u)], -39763i), Struct_1(true, vec2<f32>(-359f, 1000f), vec4<u32>(4294967295u, 14980u, 0u, global4.x), vec3<u32>(6978u, 0u, 18519u), 941f), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(425f, -1799f)))), abs(vec4<u32>(u_input.b, global4.x, u_input.b, u_input.b)) ^ vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), ~vec3<u32>(4294967295u, 46957u, global4.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(342f - 495f)))), global1[_wgslsmith_index_u32(22290u, 4u)]);
    global1 = array<i32, 4>();
    let var_2 = vec2<i32>(-2147483647i, firstTrailingBit(u_input.a & 0i)) & var_0.zw;
    var var_3 = -754f;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(1282f)), _wgslsmith_f_op_f32(1765f * 416f), _wgslsmith_f_op_f32(f32(-1f) * -510f), 873f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)));
}

fn func_1(arg_0: f32) -> bool {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + -2378f) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0 - 1786f), -628f))) + -1000f);
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, 486f, _wgslsmith_f_op_f32(arg_0 - -465f)) + _wgslsmith_f_op_vec4_f32(func_2())))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_2()))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, arg_0, 952f, 238f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-162f, 239f, arg_0, arg_0), vec4<f32>(-1119f, arg_0, arg_0, 636f)))))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -1119f, -184f, arg_0) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, 1510f, arg_0) * vec4<f32>(-203f, arg_0, 602f, arg_0)))))), select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true))), vec4<bool>(true, true, true, true), !((arg_0 < arg_0) | func_3(Struct_1(true, vec2<f32>(arg_0, arg_0), vec4<u32>(global4.x, u_input.b, u_input.b, u_input.b), vec3<u32>(20159u, global4.x, u_input.b), arg_0), vec4<i32>(global3[_wgslsmith_index_u32(u_input.b, 9u)], -2147483647i, global3[_wgslsmith_index_u32(u_input.b, 9u)], 1i), Struct_1(false, vec2<f32>(arg_0, arg_0), vec4<u32>(5056u, global4.x, 1u, 30500u), vec3<u32>(global4.x, 25684u, u_input.b), arg_0), vec3<bool>(false, false, true))))));
    global2 = arg_0 < _wgslsmith_f_op_f32(-arg_0);
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(var_0.zxz));
    global4 = ~firstTrailingBit(vec2<u32>(31921u, firstTrailingBit(u_input.b)) << (~(vec2<u32>(22513u, 4294967295u) ^ vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u)));
    return all(vec2<bool>(!(_wgslsmith_mod_i32(0i, u_input.a) < 1i), all(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), all(vec2<bool>(false, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = vec2<u32>(~global4.x, 28486u);
    global1 = array<i32, 4>();
    global3 = array<i32, 9>();
    var var_0 = _wgslsmith_add_vec3_i32(-vec3<i32>(-1i, global3[_wgslsmith_index_u32(u_input.b, 9u)], -firstLeadingBit(22356i)), vec3<i32>(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(global4.x >> (u_input.b % 32u), _wgslsmith_mod_u32(1u, 4294967295u)) ^ u_input.b, 9u)], global3[_wgslsmith_index_u32(1u, 9u)], _wgslsmith_mult_i32(~global1[_wgslsmith_index_u32(global4.x, 4u)] & _wgslsmith_div_i32(-72582i, 13932i), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(39384u, ~1u), 9u)])));
    global3 = array<i32, 9>();
    let var_1 = max(_wgslsmith_mult_u32(global4.x, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(global4.x, u_input.b, u_input.b), vec3<u32>(4294967295u, u_input.b, 1u))), 1u);
    var var_2 = Struct_1(!func_1(-933f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1045f, -1558f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1576f, -1078f)))) - _wgslsmith_f_op_vec4_f32(func_2()).yz), countOneBits(_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(global4.x, 78177u, 0u, 0u)), vec4<u32>(~4294967295u, 4294967295u, 1u, select(4294967295u, global4.x, true)))), _wgslsmith_add_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(2062u, 12925u, u_input.b), vec3<u32>(u_input.b, u_input.b, var_1)), select(min(vec3<u32>(33701u, global4.x, 4294967295u), vec3<u32>(0u, var_1, u_input.b)), vec3<u32>(4294967295u, u_input.b, 0u) ^ vec3<u32>(0u, global4.x, 1u), vec3<bool>(true, true, true))) ^ (reverseBits(~vec3<u32>(1u, 0u, 78140u)) >> (~vec3<u32>(4294967295u, u_input.b, global4.x) % vec3<u32>(32u))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-982f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1944f, -221f) - -355f)))));
    global4 = _wgslsmith_clamp_vec2_u32(var_2.c.yy, ~_wgslsmith_clamp_vec2_u32(var_2.c.wz, abs(var_2.c.wz) >> (vec2<u32>(45095u, var_2.c.x) % vec2<u32>(32u)), vec2<u32>(~var_1, global4.x)), ~vec2<u32>(1u, 35761u));
    let x = u_input.a;
    s_output = StorageBuffer(756f, i32(-1i) * -4956i, 2147483647i, _wgslsmith_mod_u32(~select(u_input.b, _wgslsmith_div_u32(0u, 1u), true), ~global4.x));
}

