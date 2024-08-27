struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: bool,
    d: vec2<i32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24>;

var<private> global1: u32 = 10001u;

var<private> global2: vec3<f32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> i32 {
    var var_0 = -vec3<i32>(1i, -_wgslsmith_clamp_i32(u_input.b, u_input.b, i32(-1i) * -36181i), min(u_input.b, 1i));
    var var_1 = ~2147483647i;
    global2 = vec3<f32>(_wgslsmith_f_op_f32(trunc(1015f)), -1000f, _wgslsmith_f_op_f32(-arg_1.a));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.a, arg_1.a), vec2<f32>(arg_1.a, global0[_wgslsmith_index_u32(7087u, 24u)]), true))), _wgslsmith_f_op_vec2_f32(global2.yy * _wgslsmith_f_op_vec2_f32(vec2<f32>(-191f, 394f) * vec2<f32>(-757f, global2.x))), vec2<bool>(any(vec4<bool>(false, false, false, false)), true))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, 374f) * vec3<f32>(var_2.x, -1666f, global0[_wgslsmith_index_u32(4294967295u, 24u)])) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1810f, global2.x, 1000f))))));
    return var_0.x;
}

fn func_2(arg_0: Struct_1) -> Struct_4 {
    return Struct_4(Struct_2(u_input.a), i32(-1i) * -_wgslsmith_div_i32(-u_input.b, 0i), !any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false))) && true, vec2<i32>(-func_3(_wgslsmith_clamp_vec2_u32(vec2<u32>(17916u, 0u), u_input.a, u_input.a), arg_0), u_input.b), Struct_3(vec3<u32>(~firstLeadingBit(u_input.c.x), 53547u, _wgslsmith_mod_u32(u_input.a.x | 0u, 4294967295u)), countOneBits(vec2<i32>(-17110i, ~2147483647i))));
}

fn func_1() -> Struct_2 {
    let var_0 = u_input.c.x;
    let var_1 = func_2(Struct_1(global2.x));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.b, u_input.b, 1i), u_input.b), (i32(-1i) * -u_input.b) & select(~u_input.b, u_input.b, true)), (select(vec3<i32>(19921i, 2147483647i, u_input.b) << (u_input.c % vec3<u32>(32u)), vec3<i32>(u_input.b, u_input.b, u_input.b), u_input.a.x < 1u) & _wgslsmith_sub_vec3_i32(~vec3<i32>(0i, 1i, u_input.b), _wgslsmith_add_vec3_i32(vec3<i32>(0i, u_input.b, 0i), vec3<i32>(12941i, u_input.b, u_input.b)))) | -_wgslsmith_add_vec3_i32(~vec3<i32>(u_input.b, u_input.b, u_input.b), select(vec3<i32>(-65143i, u_input.b, u_input.b), vec3<i32>(u_input.b, 14415i, u_input.b), vec3<bool>(false, false, false))), ~(-vec3<i32>(12746i, u_input.b, 1i) >> (~(~u_input.c) % vec3<u32>(32u))));
    var var_2 = vec2<bool>(select(var_1.x, 1i, true) > (_wgslsmith_dot_vec2_i32(var_1.xz | var_1.xy, _wgslsmith_add_vec2_i32(var_1.xx, vec2<i32>(-1i, var_1.x))) & _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(u_input.b, u_input.b, -46201i)), -vec3<i32>(2147483647i, u_input.b, var_1.x))), !((1u << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.a.x), var_0.a) % 32u)) == _wgslsmith_mult_u32(u_input.c.x, var_0.a.x)));
    var var_3 = ~u_input.a.x << (100862u % 32u);
    var var_4 = func_2(Struct_1(-790f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-439f, global0[_wgslsmith_index_u32(var_4.e.a.x, 24u)]))), _wgslsmith_f_op_f32(-387f + _wgslsmith_f_op_f32(-global2.x)))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_4.a.a, vec2<u32>(1u, _wgslsmith_add_u32(1u, var_4.e.a.x))), 24u)]), _wgslsmith_mod_i32(min(_wgslsmith_add_i32(u_input.b, var_4.b), ~u_input.b), -1i) ^ 1i, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1765f, global2.x))))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 288f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 24u)] + 706f)), global0[_wgslsmith_index_u32(min(var_0.a.x, 4294967295u) | 50594u, 24u)])), -2147483647i);
}

