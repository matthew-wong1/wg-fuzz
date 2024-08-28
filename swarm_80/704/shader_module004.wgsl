struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 22>;

var<private> global1: array<Struct_1, 17>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<f32>) -> vec3<i32> {
    global1 = array<Struct_1, 17>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, -118f, arg_1.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, 522f, 1429f, 1528f), vec4<f32>(arg_1.x, 352f, 993f, arg_1.x)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * _wgslsmith_f_op_f32(trunc(arg_1.x))), _wgslsmith_f_op_f32(-2535f - arg_1.x), arg_1.x, arg_1.x)));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1f), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + var_0.x))), _wgslsmith_f_op_f32(floor(829f))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1713f), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(ceil(arg_1.x)), var_0.x)))));
    global1 = array<Struct_1, 17>();
    global1 = array<Struct_1, 17>();
    return select(~vec3<i32>(_wgslsmith_sub_i32(~arg_0.x, i32(-1i) * -1i), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, -2147483647i), vec2<i32>(u_input.a.x, -1i)), min(18664i, u_input.a.x)), _wgslsmith_mod_i32(arg_0.x, -2147483647i) ^ _wgslsmith_add_i32(u_input.a.x, 1i)), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, ~_wgslsmith_mod_i32(5258i, arg_0.x), -2147483647i), arg_0.zwy), vec3<bool>(all(vec4<bool>(all(vec2<bool>(false, false)), true, true, true)), false, any(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)))));
}

fn func_2(arg_0: u32) -> f32 {
    global1 = array<Struct_1, 17>();
    let var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -2147483647i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, -34215i)), func_3(vec4<i32>(35556i, u_input.a.x, -62529i, 0i), vec3<f32>(633f, 1675f, -351f))), u_input.a.x), 0i >> (firstTrailingBit(1u) % 32u), firstTrailingBit(-2147483647i), -13864i), vec4<i32>(13065i, -(-1i | u_input.a.x), u_input.a.x, -1i & u_input.a.x));
    global1 = array<Struct_1, 17>();
    var var_1 = Struct_2(Struct_1(!vec2<bool>(select(false, true, false), select(true, false, true)), ~9410u, u_input.a, -select(vec4<i32>(var_0.x, 30437i, u_input.a.x, 2147483647i), ~vec4<i32>(u_input.a.x, -1i, -3851i, 2147483647i), vec4<bool>(true, true, true, false))), (vec2<i32>(-1i) * -var_0.xw) | _wgslsmith_div_vec2_i32(var_0.wz, vec2<i32>(u_input.a.x, -var_0.x)));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -880f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(768f * _wgslsmith_f_op_f32(1868f + -1043f)))))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -538f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-535f - -1423f)), 2461f)) - -830f)));
}

fn func_1() -> Struct_3 {
    var var_0 = -1i;
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1585f, _wgslsmith_f_op_f32(f32(-1f) * -801f), _wgslsmith_f_op_f32(func_2(21403u))) + vec3<f32>(_wgslsmith_f_op_f32(-1496f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1197f)) * 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-965f + _wgslsmith_f_op_f32(f32(-1f) * -221f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(693f, 578f) + _wgslsmith_f_op_f32(step(-673f, -170f))) * -1000f)));
    global1 = array<Struct_1, 17>();
    global0 = array<vec4<i32>, 22>();
    var_0 = 1i;
    return Struct_3(Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), false), vec2<bool>(u_input.a.x != u_input.a.x, true)), ~(~1u << (~4294967295u % 32u)), u_input.a, firstTrailingBit(abs(global0[_wgslsmith_index_u32(~0u, 22u)]))), Struct_2(global1[_wgslsmith_index_u32(741u, 17u)], vec2<i32>(35778i, u_input.a.x << (4294967295u % 32u)) ^ ~(u_input.a | vec2<i32>(-1836i, -34358i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = array<Struct_1, 17>();
    let var_1 = 0u;
    global0 = array<vec4<i32>, 22>();
    global1 = array<Struct_1, 17>();
    var var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-407f, 1f), -1198f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(min(-203f, 1664f))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))))));
    var_0 = Struct_3(global1[_wgslsmith_index_u32(var_1, 17u)], Struct_2(var_0.b.a, func_3(_wgslsmith_div_vec4_i32(abs(var_0.a.d), global0[_wgslsmith_index_u32(var_0.b.a.b, 22u)] | global0[_wgslsmith_index_u32(var_1, 22u)]), vec3<f32>(_wgslsmith_f_op_f32(-304f * var_2.x), -459f, _wgslsmith_f_op_f32(step(var_2.x, 529f)))).zy));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(37565u, var_0.a.b), abs(~(~vec2<u32>(34851u, 0u) >> (vec2<u32>(var_0.a.b, var_0.b.a.b) % vec2<u32>(32u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1927f, var_2.x, var_2.x)))))));
}

