struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30>;

var<private> global1: array<vec4<i32>, 7>;

var<private> global2: array<i32, 5>;

var<private> global3: array<vec4<u32>, 8> = array<vec4<u32>, 8>(vec4<u32>(25672u, 1u, 4294967295u, 1835u), vec4<u32>(4294967295u, 0u, 19008u, 0u), vec4<u32>(12923u, 4294967295u, 0u, 17708u), vec4<u32>(1u, 4294967295u, 52371u, 1u), vec4<u32>(1u, 46293u, 71693u, 1u), vec4<u32>(16531u, 0u, 0u, 56583u), vec4<u32>(1u, 1u, 69739u, 4294967295u), vec4<u32>(4155u, 127541u, 1u, 0u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1() -> u32 {
    var var_0 = vec3<i32>(u_input.d, -_wgslsmith_clamp_i32(5054i, countOneBits(firstTrailingBit(-46243i)), _wgslsmith_mod_i32(i32(-1i) * -72562i, -u_input.a.x)), -1i);
    let var_1 = u_input.e;
    global1 = array<vec4<i32>, 7>();
    let var_2 = _wgslsmith_add_u32(44621u, max(~_wgslsmith_dot_vec3_u32(var_1, u_input.e), min(_wgslsmith_mod_u32(~13215u, ~0u), var_1.x)));
    var var_3 = var_0.zz;
    return 4294967295u << (~(~(~var_2)) % 32u);
}

fn func_3(arg_0: Struct_1) -> bool {
    global3 = array<vec4<u32>, 8>();
    let var_0 = true;
    let var_1 = vec2<bool>(false, arg_0.a);
    var var_2 = arg_0.b.x;
    global2 = array<i32, 5>();
    return !any(vec3<bool>(~54108u >= (u_input.e.x ^ u_input.c), !all(vec4<bool>(arg_0.b.x, arg_0.a, false, arg_0.b.x)), any(!vec4<bool>(false, true, false, arg_0.b.x))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec3<bool>, arg_3: i32) -> f32 {
    global0 = array<i32, 30>();
    let var_0 = max(9877i, -2147483647i);
    var var_1 = arg_0;
    let var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1))));
    return var_3.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<f32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -733f) * _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(max(-637f, 2060f)), _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(500f - arg_1.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(131f + -868f), -1390f))));
    var_0 = vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(var_0.x != var_0.x, vec2<bool>(true, true), vec3<i32>(367i, -7162i, global2[_wgslsmith_index_u32(16984u, 5u)])), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, arg_1.x)), _wgslsmith_f_op_vec2_f32(-arg_1)), vec3<bool>(true, func_3(Struct_1(false, vec2<bool>(true, true), vec3<i32>(1i, u_input.d, 48512i))), true), -14047i))), -349f);
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-178f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))), 818f, _wgslsmith_f_op_f32(floor(arg_1.x)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-573f + arg_1.x), var_0.x, -236f))));
    let var_2 = select(!select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, true), true), any(vec2<bool>(true, true))), vec2<bool>(true, select(true, all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))), any(vec2<bool>(false, false)) & true)), !(!vec2<bool>(true, all(vec4<bool>(true, true, true, false)))));
    return select(!(!vec4<bool>(50818u != u_input.e.x, true, true, true)), vec4<bool>(false | var_2.x, var_2.x, any(!(!vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x))), (var_2.x && var_2.x) & !all(vec4<bool>(false, false, true, var_2.x))), !(!(!select(vec4<bool>(var_2.x, var_2.x, var_2.x, false), vec4<bool>(false, true, var_2.x, true), vec4<bool>(false, true, var_2.x, var_2.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 5>();
    let var_0 = u_input.c != func_1();
    let var_1 = func_2(countOneBits(-firstTrailingBit(u_input.a.yzx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-199f, -1000f)))))));
    var var_2 = Struct_1(!(!var_1.x), select(!select(vec2<bool>(false, false), var_1.zx, true), !func_2(vec3<i32>(1i, 1i, global0[_wgslsmith_index_u32(u_input.c, 30u)]) | vec3<i32>(global2[_wgslsmith_index_u32(u_input.e.x, 5u)], global2[_wgslsmith_index_u32(u_input.e.x, 5u)], -1i), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1450f, -2061f) - vec2<f32>(187f, 366f))).zw, var_0 | var_1.x), vec3<i32>(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(u_input.e.x, 5u)], _wgslsmith_div_i32(-59411i, global0[_wgslsmith_index_u32(120998u, 30u)])), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(23158i, 7555i, select(global2[_wgslsmith_index_u32(u_input.c, 5u)], 2147483647i, false)), 0i, u_input.a.x), _wgslsmith_mod_i32(-13880i, _wgslsmith_sub_i32(countOneBits(global0[_wgslsmith_index_u32(51225u, 30u)]), -60011i))));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2214f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1744f, 217f), _wgslsmith_f_op_f32(trunc(1694f)), var_2.a)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1059f + 887f), -775f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1526f + 1f))));
    let var_4 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, 162f, var_3.x, var_3.x)) * vec4<f32>(_wgslsmith_f_op_f32(-174f * var_3.x), 641f, -570f, -549f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(var_2.c.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.e.x, u_input.e.x), reverseBits(vec4<u32>(30664u, 20547u, 6095u, 4294967295u))) % 32u)));
}

