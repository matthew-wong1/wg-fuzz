struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(0i, 0i), vec2<i32>(0i, 1i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(21921i, 2147483647i), vec2<i32>(1i, -20691i), vec2<i32>(-1i, 0i), vec2<i32>(-1i, -28062i), vec2<i32>(-14444i, -6812i), vec2<i32>(0i, -1i), vec2<i32>(1699i, 2147483647i), vec2<i32>(30087i, 2147483647i), vec2<i32>(1i, 0i), vec2<i32>(-52790i, 0i), vec2<i32>(10696i, 35627i), vec2<i32>(2147483647i, -15973i), vec2<i32>(-10721i, -12116i));

var<private> global1: Struct_1;

var<private> global2: vec2<f32>;

var<private> global3: u32;

var<private> global4: array<bool, 32> = array<bool, 32>(false, true, true, false, false, true, true, true, false, false, false, true, true, true, true, true, false, false, false, true, true, false, true, true, true, true, true, true, true, false, false, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> i32 {
    let var_0 = global4[_wgslsmith_index_u32(~(~(~u_input.d.x)), 32u)];
    global1 = arg_0;
    var var_1 = any(arg_1.yy);
    global1 = arg_0;
    global0 = array<vec2<i32>, 16>();
    return select((i32(-1i) * -2147483647i) >> (u_input.d.x % 32u), arg_0.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.a.x))))) <= -1284f);
}

fn func_2() -> vec4<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.x, 546f, global4[_wgslsmith_index_u32(u_input.d.x, 32u)]))), 1569f))), select(_wgslsmith_mod_i32(1i, 10150i), ~u_input.c.x, true) & ~_wgslsmith_div_i32(-u_input.a, 77649i));
    let var_1 = Struct_1(var_0.a, _wgslsmith_mod_i32(u_input.a | func_3(var_0, !vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.d.x, 32u)], false, true)), 2147483647i));
    global3 = (_wgslsmith_div_u32(_wgslsmith_clamp_u32(~u_input.d.x, _wgslsmith_div_u32(u_input.d.x, u_input.d.x), abs(1u)), _wgslsmith_mod_u32(countOneBits(u_input.d.x), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.d.x, u_input.d.x, 64733u), vec4<u32>(21786u, 4294967295u, 131528u, u_input.d.x)))) | ~_wgslsmith_sub_u32(u_input.d.x, 70755u)) << (u_input.d.x % 32u);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(195f + _wgslsmith_f_op_f32(-931f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 856f)))), _wgslsmith_f_op_f32(-var_1.a.x), var_1.a.x, _wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(floor(-872f))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_2.wy), var_0.a, !any(!vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.d.x, 32u)], true, false)))), 1i);
    return countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_0.b, 38574i), _wgslsmith_div_i32(27300i, var_0.b), var_0.b), var_3.b, -35651i | var_0.b, -1i), abs(_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.b, -1988i, -2147483647i, -1960i), -vec4<i32>(var_1.b, -1820i, 0i, 20467i)))));
}

fn func_1() -> i32 {
    global4 = array<bool, 32>();
    let var_0 = _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(min(_wgslsmith_sub_i32(u_input.b, global1.b), 2147483647i), global1.b, _wgslsmith_sub_i32(abs(-1i), u_input.c.x), 1i), select(func_2(), ~func_2(), vec4<bool>(false, u_input.b < 0i, global1.b == 2147483647i, true))), -(~vec4<i32>(-30818i, u_input.c.x, u_input.a, 1i)));
    global0 = array<vec2<i32>, 16>();
    var var_1 = false;
    let var_2 = Struct_1(vec2<f32>(-1000f, global2.x), var_0.x);
    return _wgslsmith_mult_i32(-15372i, u_input.b);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec2<i32>, arg_3: i32) -> u32 {
    let var_0 = vec3<u32>(~(~94249u), u_input.d.x, min(max(~u_input.d.x, 1u), u_input.d.x));
    global2 = global1.a;
    let var_1 = arg_0;
    let var_2 = ~max(~(~var_0), firstLeadingBit(var_0)) | vec3<u32>(1u, ~(~firstTrailingBit(u_input.d.x)), u_input.d.x);
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(var_1.a + vec2<f32>(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(min(454f, -939f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -292f) * _wgslsmith_f_op_f32(ceil(902f))))), _wgslsmith_mult_i32(~(-2147483647i), firstTrailingBit(_wgslsmith_div_i32(abs(arg_0.b), global1.b | arg_0.b))));
    return _wgslsmith_sub_u32(var_0.x, 38318u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(func_4(Struct_1(vec2<f32>(1560f, -953f), u_input.c.x), !(u_input.d.x <= 0u), ~u_input.c, func_1()) & abs(~_wgslsmith_mod_u32(u_input.d.x, 4294967295u)));
    global2 = global1.a;
    global1 = Struct_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global2.x)), -1064f), global2.x), _wgslsmith_clamp_i32(~44915i, u_input.a << (_wgslsmith_mult_u32(u_input.d.x, u_input.d.x) % 32u), reverseBits(global1.b)));
    let var_1 = !(!select(-7618i < u_input.c.x, all(vec2<bool>(true, global4[_wgslsmith_index_u32(107696u, 32u)])), true)) || all(vec2<bool>(any(select(vec2<bool>(true, global4[_wgslsmith_index_u32(32578u, 32u)]), vec2<bool>(global4[_wgslsmith_index_u32(u_input.d.x, 32u)], global4[_wgslsmith_index_u32(1u, 32u)]), true)), select(any(vec2<bool>(global4[_wgslsmith_index_u32(u_input.d.x, 32u)], global4[_wgslsmith_index_u32(u_input.d.x, 32u)])), global4[_wgslsmith_index_u32(12414u, 32u)], !global4[_wgslsmith_index_u32(61554u, 32u)])));
    global2 = global1.a;
    global3 = u_input.d.x;
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-285f, _wgslsmith_f_op_f32(max(global2.x, global1.a.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2.x, global1.a.x)))))))));
    global2 = global1.a;
    global0 = array<vec2<i32>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(-(~vec3<i32>(1i, -u_input.c.x, ~global1.b)), abs(_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.b, global1.b, 1467i, u_input.c.x) >> (_wgslsmith_mod_vec4_u32(u_input.d, vec4<u32>(4294967295u, u_input.d.x, 6267u, 1u)) % vec4<u32>(32u)), vec4<i32>(-11614i, abs(8205i), countOneBits(-7914i), ~global1.b))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(972f, 1000f, global1.a.x, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global1.a.x, 2201f, global1.a.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, 3148f, global1.a.x) - vec4<f32>(global1.a.x, global2.x, 1038f, global1.a.x)) - vec4<f32>(global2.x, -244f, global2.x, 258f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-177f, global2.x)), _wgslsmith_f_op_f32(sign(global1.a.x)), global2.x, _wgslsmith_f_op_f32(f32(-1f) * -2004f)))));
}

