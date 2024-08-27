struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> i32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-700f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x + 503f)))), 1746f, _wgslsmith_f_op_f32(arg_0.b.x - -505f));
    var var_1 = firstLeadingBit(1u) & _wgslsmith_mult_u32(4294967295u, _wgslsmith_mod_u32(4294967295u, ~(arg_0.a.x & 0u)));
    let var_2 = _wgslsmith_f_op_f32(ceil(1997f));
    global0 = _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(max(u_input.c.x, 1u), ~(~u_input.c.x)), _wgslsmith_dot_vec2_u32(max(~arg_0.a.xx, arg_0.a.yw), ~_wgslsmith_div_vec2_u32(vec2<u32>(global1.a, 72203u), u_input.c.xw))), u_input.c.x);
    var_0 = arg_0.b;
    return -1i;
}

fn func_2(arg_0: bool) -> bool {
    global1 = Struct_1(_wgslsmith_div_u32(1u, select(53149u, select(_wgslsmith_mod_u32(21789u, global1.a), global1.a, any(vec3<bool>(true, global1.c, false))), arg_0)), firstLeadingBit(global1.b), true, u_input.e, ~u_input.b.x);
    let var_0 = select(vec4<i32>(26025i, 45213i, reverseBits(-11673i), 0i), vec4<i32>(1i, ~(-46435i), func_3(Struct_2(select(u_input.c, u_input.c, arg_0), _wgslsmith_f_op_vec3_f32(vec3<f32>(664f, -772f, 2877f) + vec3<f32>(1698f, 1217f, -461f))), global1.c), 2549i), global1.c);
    global1 = Struct_1(1u, _wgslsmith_clamp_i32(u_input.a.x | 36481i, _wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, u_input.a.x, var_0.x, var_0.x), vec4<i32>(9972i, -14359i, -25786i, u_input.b.x))), 3543i), global1.e), arg_0, 1i, u_input.e);
    var var_1 = 1i;
    var var_2 = select(global1.c, true, !(1u == select(81586u, 0u, !arg_0)));
    return global1.c;
}

fn func_1(arg_0: i32) -> vec3<i32> {
    let var_0 = func_2(true);
    global0 = 34244u;
    let var_1 = Struct_2(~(u_input.c ^ ~vec4<u32>(u_input.d, 1u, 0u, 1u)) & ~min(vec4<u32>(0u, u_input.d, 0u, 0u), vec4<u32>(25768u, u_input.d, 12170u, global1.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-722f, 546f, 1333f)) * _wgslsmith_div_vec3_f32(vec3<f32>(1137f, 287f, 526f), vec3<f32>(-1000f, -651f, 682f))))));
    let var_2 = var_1;
    let var_3 = Struct_1(58544u << (~_wgslsmith_dot_vec2_u32(max(var_1.a.yx, vec2<u32>(155364u, global1.a)), ~u_input.c.zz) % 32u), _wgslsmith_mult_i32(0i, 56221i) & ~max(u_input.a.x >> (1u % 32u), 4558i), false, _wgslsmith_add_i32(~(~1i), _wgslsmith_dot_vec4_i32(select(select(vec4<i32>(u_input.b.x, 25221i, -1i, global1.d), vec4<i32>(-24501i, 0i, global1.e, arg_0), vec4<bool>(true, global1.c, true, var_0)), ~vec4<i32>(global1.b, global1.b, 45659i, arg_0), vec4<bool>(global1.c, global1.c, true, var_0)), reverseBits(vec4<i32>(arg_0, global1.e, -60417i, 32328i)))), 1i);
    return min(abs(vec3<i32>(-var_3.d, _wgslsmith_sub_i32(2147483647i, _wgslsmith_clamp_i32(0i, 2147483647i, arg_0)), 1i)), -(~vec3<i32>(2147483647i, _wgslsmith_mod_i32(7487i, -2147483647i), _wgslsmith_mod_i32(global1.b, arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 24285u;
    global0 = u_input.c.x;
    var var_0 = max((~vec3<i32>(38381i, u_input.b.x, u_input.e) ^ func_1(u_input.a.x)) ^ ~(vec3<i32>(global1.e, -1i, global1.e) ^ vec3<i32>(u_input.a.x, global1.e, global1.e)), _wgslsmith_mod_vec3_i32(select(vec3<i32>(global1.e, -18926i, 2147483647i), vec3<i32>(1i, -29303i, global1.d), true) ^ vec3<i32>(global1.e, u_input.e, 16497i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, 1i, u_input.e), ~vec3<i32>(12227i, global1.e, u_input.e)))) & (_wgslsmith_mod_vec3_i32(select(~vec3<i32>(1291i, u_input.e, u_input.b.x), vec3<i32>(-1i, -1i, -38921i), !global1.c), -(vec3<i32>(global1.e, u_input.a.x, u_input.a.x) >> (u_input.c.wzz % vec3<u32>(32u)))) ^ vec3<i32>(2564i, -u_input.a.x, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(14943i, u_input.b.x, 45830i)), ~vec3<i32>(-73801i, -58305i, u_input.b.x))));
    var var_1 = ~vec3<u32>(reverseBits(4294967295u), 52353u, firstTrailingBit(~firstTrailingBit(u_input.c.x)));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(401f, 143f, 656f)), vec3<f32>(1224f, -1000f, 134f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(516f, 2233f, -1585f))), vec3<f32>(1000f, _wgslsmith_f_op_f32(trunc(140f)), -979f))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(148f, 132f, -444f)))))));
    var var_3 = Struct_1(4294967295u, u_input.a.x >> (~29u % 32u), true, -1i, firstTrailingBit(var_0.x));
    let var_4 = Struct_2(_wgslsmith_mult_vec4_u32(reverseBits(abs(u_input.c & vec4<u32>(4294967295u, global1.a, 1u, 0u))), ~(~firstTrailingBit(u_input.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, _wgslsmith_f_op_f32(var_2.x - var_2.x), -1000f) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(827f, var_2.x, 985f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(reverseBits(u_input.c.x), abs(u_input.c.x | 0u) >> (_wgslsmith_mod_u32(~u_input.d, ~var_3.a) % 32u)), _wgslsmith_sub_vec3_i32(func_1(-(~global1.e)), -vec3<i32>(~40312i, var_3.d, i32(-1i) * -2147483647i)), ~(-29147i), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1788f, var_4.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(-2199f, var_2.x)), _wgslsmith_f_op_f32(2177f - 641f))))));
}

