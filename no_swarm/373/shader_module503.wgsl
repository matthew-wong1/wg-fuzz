struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1547f, 1603f, 467f);

var<private> global1: array<Struct_1, 4>;

var<private> global2: array<vec4<bool>, 12> = array<vec4<bool>, 12>(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true));

var<private> global3: array<vec3<u32>, 16> = array<vec3<u32>, 16>(vec3<u32>(19051u, 1u, 1u), vec3<u32>(19718u, 0u, 20743u), vec3<u32>(4294967295u, 72508u, 625u), vec3<u32>(7851u, 43169u, 9442u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(4294967295u, 54539u, 20827u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(79925u, 13008u, 58550u), vec3<u32>(1794u, 1u, 55261u), vec3<u32>(0u, 15774u, 20723u), vec3<u32>(60370u, 0u, 1u), vec3<u32>(22166u, 21728u, 50814u), vec3<u32>(51715u, 1u, 2929u), vec3<u32>(4294967295u, 72123u, 49927u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = global1[_wgslsmith_index_u32(~1u, 4u)];
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1416f))), 2026f, _wgslsmith_f_op_f32(-var_0.c)))));
    let var_1 = 1i;
    global2 = array<vec4<bool>, 12>();
    var var_2 = u_input.c.xz;
    return true;
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-global0.x))) >= _wgslsmith_f_op_f32(f32(-1f) * -1554f);
    let var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + global0.x) - _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-global0.x))))));
    var var_2 = select(vec2<bool>(!select(false, false, true) && !(u_input.a.x < 1u), ~u_input.a.x != ~(~6680u)), vec2<bool>(true, true), select(select(vec2<bool>(any(global2[_wgslsmith_index_u32(u_input.a.x, 12u)]), false), vec2<bool>(all(vec2<bool>(false, false)), all(vec4<bool>(true, false, false, true))), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), !func_2(global1[_wgslsmith_index_u32(u_input.a.x, 4u)])), true));
    global2 = array<vec4<bool>, 12>();
    var var_3 = select(select(select(select(select(vec3<bool>(true, true, true), vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(true, false, var_2.x)), select(vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(var_2.x, false, var_2.x), var_2.x), var_2.x), !(!vec3<bool>(var_2.x, var_2.x, var_2.x)), vec3<bool>(global0.x == -976f, false, true)), !select(vec3<bool>(true, true, true), select(vec3<bool>(var_2.x, var_2.x, true), vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(var_2.x, var_2.x, false)), vec3<bool>(var_2.x, var_2.x, true)), vec3<bool>(var_2.x, false, var_2.x)), vec3<bool>(false, u_input.a.x < 1u, var_2.x), select(vec3<bool>(true, var_2.x, var_2.x), select(!vec3<bool>(true, var_2.x, var_2.x), select(vec3<bool>(var_2.x, var_2.x, var_2.x), !vec3<bool>(var_2.x, var_2.x, false), !vec3<bool>(true, var_2.x, true)), select(!vec3<bool>(true, true, var_2.x), !vec3<bool>(true, var_2.x, var_2.x), !vec3<bool>(var_2.x, var_2.x, var_2.x))), all(select(vec3<bool>(true, var_2.x, true), !vec3<bool>(var_2.x, false, false), !vec3<bool>(false, var_2.x, var_2.x)))));
    return _wgslsmith_clamp_u32(1u, u_input.a.x, _wgslsmith_sub_u32(~u_input.a.x, min(~u_input.a.x, abs(1u))));
}

fn func_1(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = _wgslsmith_mult_i32(firstLeadingBit(_wgslsmith_dot_vec3_i32(~select(u_input.b.zxw, u_input.c, false), ~vec3<i32>(1i, u_input.b.x, u_input.d.x))), -(i32(-1i) * -_wgslsmith_mult_i32(1i, -6650i)));
    global3 = array<vec3<u32>, 16>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-492f, arg_0.c, (arg_0.b | arg_0.b) || func_2(global1[_wgslsmith_index_u32(arg_0.a, 4u)])))) <= 1403f;
    var var_2 = global1[_wgslsmith_index_u32(arg_0.a, 4u)];
    let var_3 = Struct_1(func_3(), !select(any(!global2[_wgslsmith_index_u32(u_input.a.x, 12u)]), _wgslsmith_f_op_f32(534f - global0.x) == _wgslsmith_f_op_f32(-var_2.c), true & var_2.b), global0.x);
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(461f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(arg_0.c))))), -2462f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1000f * 1266f), _wgslsmith_f_op_f32(1906f - -1000f), _wgslsmith_f_op_f32(min(var_2.c, var_3.c)))) - vec3<f32>(_wgslsmith_f_op_f32(sign(1015f)), var_2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-100f)) - 222f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-118f)), _wgslsmith_f_op_f32(global0.x * -1145f), _wgslsmith_f_op_f32(max(330f, global0.x))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, 903f) - vec3<f32>(1000f, -256f, global0.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.x, global0.x, global0.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -663f, -146f) * vec3<f32>(-1079f, global0.x, 360f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(Struct_1(u_input.a.x, true, global0.x))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-255f, global0.x, global0.x), vec3<f32>(global0.x, -1042f, global0.x))))))));
    global3 = array<vec3<u32>, 16>();
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1690f, 597f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -144f)), all(vec4<bool>(false, true, true, true)) | true))), global0.x, 708f);
    let var_0 = ~global3[_wgslsmith_index_u32(11544u, 16u)];
    let var_1 = Struct_1(u_input.a.x >> (var_0.x % 32u), false, _wgslsmith_f_op_f32(831f - global0.x));
    let var_2 = -(i32(-1i) * -select(u_input.c.x >> (17176u % 32u), -2147483647i, false));
    global0 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.c - -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2056f) + _wgslsmith_f_op_f32(-var_1.c))), vec3<f32>(var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-869f - 474f) + _wgslsmith_f_op_f32(global0.x + -1106f)) * var_1.c))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(i32(-1i) * -65607i, firstTrailingBit(var_2), _wgslsmith_div_i32(~(-u_input.b.x), var_2)), func_3(), vec3<u32>(u_input.a.x, 1u, ~reverseBits(1u)), vec4<i32>(var_2, 0i, _wgslsmith_add_i32(var_2 & u_input.b.x, _wgslsmith_mult_i32(u_input.d.x, var_2)) ^ u_input.c.x, abs(var_2)), ~(-_wgslsmith_clamp_i32(0i, 21981i, u_input.c.x) | 1i));
}

