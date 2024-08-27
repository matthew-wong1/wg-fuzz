struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec3<f32>, arg_1: u32) -> u32 {
    global0 = array<i32, 26>();
    global0 = array<i32, 26>();
    let var_0 = global0[_wgslsmith_index_u32(1u >> (~(1u | (u_input.a.x & ~1u)) % 32u), 26u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -118f) - -366f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_0.x)), _wgslsmith_f_op_f32(sign(-405f))), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -882f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_0.x - -1012f), _wgslsmith_f_op_f32(trunc(arg_0.x)), _wgslsmith_f_op_f32(max(1222f, 410f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.x, 760f, arg_0.x, arg_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 158f))))));
    let var_2 = ~_wgslsmith_dot_vec2_u32(u_input.a, ~(~(vec2<u32>(3949u, u_input.a.x) >> (u_input.a % vec2<u32>(32u)))));
    return 1u;
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: bool) -> u32 {
    global0 = array<i32, 26>();
    global0 = array<i32, 26>();
    let var_0 = !vec3<bool>(!arg_2, any(vec4<bool>(true, select(true, arg_2, arg_2), arg_2 | arg_2, all(vec2<bool>(arg_2, true)))), false & !arg_2);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1683f + 1f));
    var var_2 = ~(~u_input.a.x);
    return _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, ~u_input.a.x, _wgslsmith_mult_u32(abs(~u_input.a.x), 0u)), vec3<u32>(~u_input.a.x, _wgslsmith_clamp_u32(~(~1u), u_input.a.x, ~1u), u_input.a.x));
}

fn func_1() -> Struct_3 {
    var var_0 = -vec2<i32>(global0[_wgslsmith_index_u32(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1000f, 1340f)), 0u) & func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1722f, 108f)), Struct_1(vec4<i32>(537i, 1i, 53213i, 2104i)), false), 26u)], _wgslsmith_clamp_i32(reverseBits(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], -1i)), abs(global0[_wgslsmith_index_u32(~u_input.a.x, 26u)]), ~(-global0[_wgslsmith_index_u32(u_input.a.x, 26u)])));
    var var_1 = Struct_3(vec3<bool>(any(vec4<bool>(all(vec2<bool>(false, false)), true, true, any(vec2<bool>(false, true)))), true, true));
    var_0 = _wgslsmith_div_vec2_i32((firstLeadingBit(-vec2<i32>(global0[_wgslsmith_index_u32(28470u, 26u)], -2147483647i)) >> ((_wgslsmith_sub_vec2_u32(u_input.a, u_input.a) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 0u), u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u))) << (vec2<u32>(reverseBits(u_input.a.x) ^ u_input.a.x, u_input.a.x) % vec2<u32>(32u)), ~_wgslsmith_div_vec2_i32(abs(countOneBits(vec2<i32>(-12259i, 2147483647i))), vec2<i32>(0i, _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], var_0.x))));
    let var_2 = ~(-24758i);
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-130f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -761f) - -1570f)), 1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-506f, _wgslsmith_f_op_f32(f32(-1f) * -749f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    return Struct_3(vec3<bool>(true, !var_1.a.x, var_1.a.x));
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    let var_0 = Struct_1(select(vec4<i32>(global0[_wgslsmith_index_u32(abs(~u_input.a.x), 26u)], ~22887i >> (abs(u_input.a.x) % 32u), 11412i, _wgslsmith_mult_i32(1705i, global0[_wgslsmith_index_u32(u_input.a.x, 26u)])), _wgslsmith_sub_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(48208i, -52295i, 34421i, global0[_wgslsmith_index_u32(u_input.a.x, 26u)]), vec4<i32>(global0[_wgslsmith_index_u32(63330u, 26u)], -5394i, global0[_wgslsmith_index_u32(u_input.a.x, 26u)], -15871i), vec4<i32>(1i, global0[_wgslsmith_index_u32(u_input.a.x, 26u)], global0[_wgslsmith_index_u32(u_input.a.x, 26u)], global0[_wgslsmith_index_u32(21725u, 26u)])), ~firstTrailingBit(vec4<i32>(0i, global0[_wgslsmith_index_u32(4294967295u, 26u)], -11882i, -255i))), !(!vec4<bool>(arg_0.a.x, arg_0.a.x, true, arg_0.a.x))));
    global0 = array<i32, 26>();
    let var_1 = _wgslsmith_mult_i32(var_0.a.x & global0[_wgslsmith_index_u32(1u, 26u)], firstLeadingBit(firstTrailingBit(1i)));
    global0 = array<i32, 26>();
    let var_2 = u_input.a.x;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    global0 = array<i32, 26>();
    var var_1 = func_4(func_1());
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-325f, -1642f, 1279f)))) + vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(298f + 247f), _wgslsmith_f_op_f32(2824f - 1217f))), _wgslsmith_f_op_f32(-1434f + -250f), -927f)));
    var var_3 = ~abs(u_input.a.x);
    let var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec2<i32>(global0[_wgslsmith_index_u32(~var_0, 26u)] >> (1u % 32u), min(1i << (var_0 % 32u), -1i))), 499f, -126f, var_0);
}

