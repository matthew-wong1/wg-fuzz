struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: i32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_2;

var<private> global2: array<u32, 11> = array<u32, 11>(49285u, 23299u, 0u, 28695u, 37068u, 64169u, 1u, 1u, 21150u, 1u, 10323u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<bool>) -> vec3<bool> {
    var var_0 = Struct_4(!select(vec4<bool>(true, any(arg_0), u_input.c <= 52449u, -1i != u_input.a.x), !select(vec4<bool>(true, true, arg_0.x, global1.b), vec4<bool>(true, false, arg_0.x, arg_0.x), false), global1.b), global1.e.c.xy, ~31153i, Struct_3(vec4<f32>(134f, 183f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) - _wgslsmith_f_op_f32(abs(-364f))), _wgslsmith_f_op_f32(global1.e.c.x + _wgslsmith_f_op_f32(floor(-1043f)))), !arg_0.x));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1.a, vec2<f32>(global1.c.c.x, var_0.d.a.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-980f, -298f) + _wgslsmith_f_op_vec2_f32(floor(global1.c.c.zy))) + var_0.d.a.xz)));
    let var_2 = ~u_input.b;
    var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(var_0.b))));
    var_0 = Struct_4(!(!var_0.a), vec2<f32>(_wgslsmith_f_op_f32(313f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.a.x))), global1.c.c.x), 12165i, var_0.d);
    return vec3<bool>(!all(var_0.a.zxy), true, !arg_0.x);
}

fn func_2(arg_0: Struct_3) -> vec3<i32> {
    var var_0 = select(vec4<bool>(true, 11082u <= u_input.c, arg_0.b, true), vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, false), any(vec2<bool>(false, global1.b)))), !(1i > global1.c.d.x), true, !any(select(vec3<bool>(false, false, arg_0.b), vec3<bool>(arg_0.b, true, global1.b), global1.b))), select(global1.b, -7245i > global1.c.d.x, true));
    global0 = _wgslsmith_mod_vec3_i32(-firstLeadingBit(vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.a.xxz, vec3<i32>(u_input.a.x, 57130i, 2147483647i)), max(2147483647i, global1.c.d.x), ~17064i)), -global1.e.d.xzw);
    var var_1 = !any(func_3(var_0.yx));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(186f - -150f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.a.x))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(arg_0.a.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.e.c.x, 2247f)))), select(true, arg_0.a.x != _wgslsmith_div_f32(2063f, global1.a.x), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1400f - -225f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.e.c.x - 1103f)))) + arg_0.a.x), _wgslsmith_f_op_f32(min(global1.c.c.x, _wgslsmith_f_op_f32(-857f * _wgslsmith_f_op_f32(step(-281f, _wgslsmith_f_op_f32(-1000f - 391f)))))));
    global1 = Struct_2(_wgslsmith_f_op_vec2_f32(max(global1.e.c.xx, global1.c.c.zz)), true, Struct_1(-firstLeadingBit(vec3<i32>(-15674i, -1i, u_input.b) << (global1.c.e % vec3<u32>(32u))), vec3<i32>(firstTrailingBit(firstLeadingBit(global1.e.a.x)), ~(~u_input.a.x), abs(global1.c.b.x << (global1.c.e.x % 32u))), vec3<f32>(arg_0.a.x, arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.a.x)))), _wgslsmith_div_vec4_i32(reverseBits(-vec4<i32>(-3628i, global1.c.d.x, -2147483647i, global0.x)), ~(u_input.a << (vec4<u32>(u_input.c, 42823u, 0u, global2[_wgslsmith_index_u32(u_input.c, 11u)]) % vec4<u32>(32u)))), vec3<u32>(min(43762u, 4294967295u), global1.e.e.x >> (~u_input.c % 32u), _wgslsmith_clamp_u32(1u, global1.d, min(global1.d, 0u)))), 0u, global1.e);
    return -(~u_input.a.xwy);
}

fn func_4(arg_0: vec3<i32>, arg_1: f32) -> bool {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(global1.c.c.x - -936f), arg_1);
    var var_1 = !(!vec4<bool>(global1.b, func_3(select(vec2<bool>(true, true), vec2<bool>(global1.b, global1.b), false)).x, any(!vec4<bool>(false, global1.b, true, false)), true));
    var var_2 = vec4<u32>(firstTrailingBit(~0u << (~u_input.c % 32u)), _wgslsmith_sub_u32(~_wgslsmith_clamp_u32(~72518u, _wgslsmith_sub_u32(u_input.c, global1.c.e.x), 0u), select(global1.d, global1.d, false)), countOneBits(~global1.e.e.x), ~_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(u_input.c, 11u)], min(u_input.c | global1.c.e.x, _wgslsmith_sub_u32(83308u, u_input.c))));
    let var_3 = vec3<i32>(~_wgslsmith_mod_i32(-61928i, -2147483647i) << (~(~(~var_2.x)) % 32u), _wgslsmith_mod_i32(reverseBits(_wgslsmith_mult_i32(2147483647i, arg_0.x)), 46811i ^ _wgslsmith_clamp_i32(~arg_0.x, -1842i, -6317i)), global0.x);
    var var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, -1036f), _wgslsmith_f_op_f32(-135f + global1.e.c.x)), _wgslsmith_f_op_f32(441f * 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1, -124f, any(var_1.wy)))))));
    return false && !var_1.x;
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: f32) -> vec3<u32> {
    var var_0 = Struct_3(vec4<f32>(-156f, _wgslsmith_f_op_f32(-arg_3), 999f, 2274f), any(vec3<bool>(func_4(func_2(arg_2), arg_2.a.x), true, false)));
    global0 = arg_1;
    var var_1 = arg_2.b;
    let var_2 = vec4<bool>(var_0.b, !var_0.b, all(select(!vec4<bool>(true, false, true, var_0.b), vec4<bool>(global1.b && false, all(vec2<bool>(true, var_0.b)), true, arg_2.b), vec4<bool>(true, true, !global1.b, any(vec2<bool>(false, var_0.b))))), false != any(vec2<bool>(true, true)));
    return ~vec3<u32>(_wgslsmith_sub_u32(~arg_0, ~(~u_input.c)), abs(global2[_wgslsmith_index_u32(u_input.c, 11u)]), (~global1.d << (~global1.e.e.x % 32u)) << (~firstTrailingBit(0u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(1u, u_input.a.xxw | -_wgslsmith_clamp_vec3_i32(abs(u_input.a.wxw), global1.e.d.xzy, vec3<i32>(global1.e.d.x, global0.x, global1.e.a.x)), Struct_3(vec4<f32>(1192f, global1.e.c.x, global1.c.c.x, -1635f), false), -2080f);
    let x = u_input.a;
    s_output = StorageBuffer(global1.c.e.xz, _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, -1201f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(-global1.a.x), true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(global1.c.c.x, global1.a.x, global1.b))))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.c.x, global1.a.x, -872f, global1.a.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1218f, global1.e.c.x, global1.e.c.x, -700f) - vec4<f32>(global1.c.c.x, global1.c.c.x, global1.c.c.x, global1.c.c.x)))))), global1.a.x, 1u);
}

