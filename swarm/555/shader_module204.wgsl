struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16>;

var<private> global1: array<vec3<bool>, 18>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<u32>) -> f32 {
    global1 = array<vec3<bool>, 18>();
    global1 = array<vec3<bool>, 18>();
    var var_0 = Struct_4(arg_1.wy, 26u);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-781f, -144f, 421f, -466f)) * vec4<f32>(_wgslsmith_f_op_f32(ceil(1463f)), _wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_div_f32(215f, 433f), _wgslsmith_f_op_f32(f32(-1f) * -1882f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(154f, 918f, 642f, -1075f))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-552f)) + _wgslsmith_f_op_f32(floor(-286f))), -1014f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1275f, -309f)))));
    global0 = array<Struct_3, 16>();
    return _wgslsmith_f_op_f32(f32(-1f) * -621f);
}

fn func_2(arg_0: vec2<i32>) -> f32 {
    global0 = array<Struct_3, 16>();
    let var_0 = any(!(!vec2<bool>(all(vec4<bool>(true, true, true, false)), true)));
    global1 = array<vec3<bool>, 18>();
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(226f, 890f), -315f, var_0))))) <= _wgslsmith_f_op_f32(func_3(abs(abs(vec3<i32>(3987i, arg_0.x, 31620i))) | _wgslsmith_add_vec3_i32(~vec3<i32>(arg_0.x, u_input.c.x, 0i), max(vec3<i32>(-1i, u_input.a.x, u_input.a.x), vec3<i32>(arg_0.x, 0i, -28080i))), u_input.b));
    let var_2 = ~u_input.b.x;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(639f, 890f) + 377f);
}

fn func_1(arg_0: u32, arg_1: vec3<u32>) -> i32 {
    var var_0 = Struct_2(_wgslsmith_mod_vec2_u32(~_wgslsmith_clamp_vec2_u32(u_input.b.zw, u_input.b.zw, arg_1.xy << (vec2<u32>(arg_0, 0u) % vec2<u32>(32u))), arg_1.yz), true);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(786f, -1330f), _wgslsmith_div_f32(-596f, -2802f), _wgslsmith_f_op_f32(abs(514f))), vec3<f32>(-671f, _wgslsmith_f_op_f32(func_2(u_input.a)), _wgslsmith_f_op_f32(ceil(-514f))), select(global1[_wgslsmith_index_u32(reverseBits(4294967295u), 18u)], global1[_wgslsmith_index_u32(~4294967295u, 18u)], var_0.b)))));
    var var_2 = !(!(!vec2<bool>(true | var_0.b, true)));
    var_2 = vec2<bool>(true, true);
    var var_3 = u_input.a.x;
    return -1827i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(u_input.b.yz, ~(~u_input.b.x));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -274f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(241f - 459f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(133f - 756f), -1281f))));
    var var_2 = _wgslsmith_mod_u32(firstTrailingBit(u_input.b.x), var_0.b);
    global1 = array<vec3<bool>, 18>();
    var var_3 = true;
    var var_4 = -784f;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(func_1(~4294967295u, u_input.b.xzx), _wgslsmith_mult_i32(u_input.c.x, _wgslsmith_mult_i32(i32(-1i) * -5396i, func_1(4294967295u, u_input.b.yyz))), 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.x)) + _wgslsmith_f_op_f32(trunc(var_1.x)))), ~vec3<u32>(10811u, firstLeadingBit(var_0.a.x), u_input.b.x), abs(~u_input.b.zyy));
}

