struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct Struct_4 {
    a: bool,
    b: vec4<i32>,
    c: i32,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24>;

var<private> global1: array<u32, 1> = array<u32, 1>(4294967295u);

var<private> global2: array<Struct_2, 8>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: u32, arg_3: vec2<bool>) -> f32 {
    global0 = array<i32, 24>();
    global2 = array<Struct_2, 8>();
    var var_0 = u_input.b;
    let var_1 = Struct_3(u_input.d, _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(u_input.b.x, 1u >> (0u % 32u), 49012u), ~global1[_wgslsmith_index_u32(1u, 1u)], arg_1.d, u_input.b.x), ~(~(vec4<u32>(17277u, 0u, arg_2, 26536u) | vec4<u32>(arg_2, arg_2, 685u, arg_1.b)))));
    var_0 = _wgslsmith_add_vec3_u32(abs((u_input.b >> (u_input.b % vec3<u32>(32u))) & abs(vec3<u32>(4294967295u, 1u, 15894u))), ~(~(~u_input.b))) ^ vec3<u32>(var_1.b.x, _wgslsmith_div_u32((u_input.b.x & 0u) & ~var_0.x, global1[_wgslsmith_index_u32(~1u, 1u)]), ~global1[_wgslsmith_index_u32(countOneBits(~40334u), 1u)]);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-227f * arg_0.x), 160f), _wgslsmith_f_op_f32(-arg_0.x))) * arg_0.x)));
}

fn func_2() -> Struct_3 {
    global2 = array<Struct_2, 8>();
    let var_0 = Struct_3(min(-min(vec4<i32>(1i, 0i, u_input.a, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(43888u, 1u)], 1u)], 24u)]) ^ vec4<i32>(u_input.a, u_input.c, -29011i, u_input.a), firstLeadingBit(u_input.d)), -vec4<i32>(1i, min(15437i, 1i), 1i, ~(-34938i))), vec4<u32>(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(1u, 1u)] & (u_input.b.x >> (19786u % 32u)), _wgslsmith_mod_u32(32335u, 13107u)), u_input.b.x, _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(61583u, 1u)], 24139u), 17207u));
    var var_1 = !(!(-897f < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(vec3<f32>(1926f, -1178f, -518f), Struct_1(u_input.b, var_0.b.x, var_0.a.ywy, 1u, global0[_wgslsmith_index_u32(var_0.b.x, 24u)]), u_input.b.x, vec2<bool>(false, false)))))));
    global0 = array<i32, 24>();
    global1 = array<u32, 1>();
    return var_0;
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> i32 {
    var var_0 = func_2();
    let var_1 = _wgslsmith_clamp_vec3_i32(func_2().a.zwy, vec3<i32>(u_input.d.x, _wgslsmith_mod_i32(firstLeadingBit(u_input.a) << (_wgslsmith_mult_u32(73056u, var_0.b.x) % 32u), 15449i), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(func_2().b.wxx, arg_0.a) >> (~(~18638u) % 32u), 1u)], 24u)]), ~_wgslsmith_mod_vec3_i32(vec3<i32>(-global0[_wgslsmith_index_u32(u_input.b.x, 24u)], _wgslsmith_add_i32(global0[_wgslsmith_index_u32(1u, 24u)], u_input.a), u_input.a), vec3<i32>(countOneBits(global0[_wgslsmith_index_u32(0u, 24u)]), firstTrailingBit(0i), 0i)));
    global1 = array<u32, 1>();
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_1)), arg_1, arg_1);
    let var_3 = func_2();
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-173f * -747f);
    var var_1 = func_1(Struct_1(u_input.b, u_input.b.x, u_input.d.wzy, _wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(0u, u_input.b.x), _wgslsmith_mult_u32(19610u, u_input.b.x)), ~(67753u >> (u_input.b.x % 32u))), -_wgslsmith_add_i32(_wgslsmith_mod_i32(-2147483647i, -2147483647i), ~10488i)), -1285f);
    var var_2 = !all(vec3<bool>(true, true, reverseBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 1u)], 1u)]) != ~u_input.b.x));
    var_1 = -u_input.a << (~reverseBits(0u) % 32u);
    var var_3 = !select(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), vec3<bool>(all(vec3<bool>(false, false, true)), any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false)), true && (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 1u)], 1u)], 1u)] >= global1[_wgslsmith_index_u32(u_input.b.x, 1u)])), false);
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-880f, 1000f, -132f))) + vec3<f32>(-1730f, -473f, -312f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(238f, -350f, -314f), vec3<f32>(631f, -579f, -805f)))))));
}

