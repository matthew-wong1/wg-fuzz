struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_2,
    d: u32,
    e: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 19812u);

var<private> global1: vec2<i32> = vec2<i32>(2147483647i, 11828i);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32) -> f32 {
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -110f) * _wgslsmith_f_op_f32(round(-1010f))))));
}

fn func_2() -> vec4<i32> {
    var var_0 = Struct_2(-2147483647i);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(717f, 635f, false)), _wgslsmith_f_op_f32(func_3(1u)), 839f, _wgslsmith_f_op_f32(sign(1636f)))))));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_1.zww)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-123f, -275f, var_1.x) - var_1.yyy)))))));
    let var_3 = 2147483647i;
    var var_4 = vec3<bool>(any(select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), true), vec2<bool>(true, true), true)), true, abs(var_3) > global1.x);
    return _wgslsmith_div_vec4_i32(vec4<i32>(-37486i, -26218i, var_3, -2147483647i), _wgslsmith_div_vec4_i32(firstTrailingBit(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, global1.x, -8405i, global1.x), vec4<i32>(11756i, 2147483647i, -1794i, global1.x)), -vec4<i32>(var_3, 129i, var_3, global1.x))), vec4<i32>(~1i, ~0i, i32(-1i) * -var_3, -(~5238i))));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: i32, arg_3: vec2<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_clamp_i32(0i, 0i, _wgslsmith_clamp_i32(-46341i, max(global1.x, arg_1), ~(~(~(-2147483647i)))));
    var var_1 = Struct_1(_wgslsmith_sub_i32(-min(firstTrailingBit(arg_1), abs(var_0)), global1.x), _wgslsmith_f_op_f32(f32(-1f) * -154f), -max(vec2<i32>(~1i, max(global1.x, 0i)), -abs(vec2<i32>(var_0, -64887i))));
    var_1 = Struct_1(_wgslsmith_dot_vec2_i32((var_1.c | var_1.c) & (countOneBits(vec2<i32>(arg_2, -10664i)) >> (~vec2<u32>(global0.x, 72672u) % vec2<u32>(32u))), select(~_wgslsmith_sub_vec2_i32(var_1.c, vec2<i32>(-25135i, 0i)), vec2<i32>(~var_0, -31678i), !arg_0)), var_1.b, min(~var_1.c, var_1.c << (u_input.a.yy % vec2<u32>(32u))));
    global1 = -(-(~var_1.c) >> (~vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a.yzy, vec3<u32>(0u, 0u, global0.x)), u_input.a.x) % vec2<u32>(32u)));
    return Struct_2(-44843i);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> vec2<i32> {
    var var_0 = func_4(true, _wgslsmith_dot_vec4_i32(func_2() >> (u_input.a % vec4<u32>(32u)), vec4<i32>(_wgslsmith_add_i32(-22562i, arg_0.a), firstTrailingBit(arg_0.c.x), _wgslsmith_dot_vec2_i32(max(vec2<i32>(u_input.d, -2147483647i), arg_0.c), -arg_0.c), arg_1.a)), _wgslsmith_sub_i32(2147483647i, _wgslsmith_add_i32(-2147483647i, -global1.x << (~global0.x % 32u))), u_input.a.wx);
    var var_1 = 4294967295u;
    var var_2 = Struct_2(firstTrailingBit(reverseBits(arg_0.a & 1i)));
    global0 = _wgslsmith_div_vec2_u32(vec2<u32>(~global0.x, global0.x) & ((vec2<u32>(0u, 0u) >> (select(u_input.a.xy, u_input.c.ww, vec2<bool>(true, false)) % vec2<u32>(32u))) ^ (~u_input.c.wy ^ firstLeadingBit(vec2<u32>(u_input.a.x, 127887u)))), abs(_wgslsmith_add_vec2_u32(~u_input.c.wx ^ _wgslsmith_clamp_vec2_u32(u_input.a.yw, u_input.a.yz, vec2<u32>(global0.x, u_input.c.x)), vec2<u32>(global0.x >> (0u % 32u), u_input.a.x))));
    var_1 = _wgslsmith_dot_vec2_u32(~u_input.a.yz, ~_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global0.x, 0u), u_input.c.xy), u_input.c.yz, firstTrailingBit(~u_input.a.xx)));
    return abs(~max(vec2<i32>(var_2.a, u_input.d), vec2<i32>(-42688i, var_2.a)) & vec2<i32>(global1.x, -11409i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -(~select(func_1(Struct_1(global1.x, 1161f, vec2<i32>(global1.x, u_input.d)), Struct_2(global1.x)), reverseBits(vec2<i32>(global1.x, u_input.d)), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false))) ^ (vec2<i32>(~(-81682i), reverseBits(8950i)) | _wgslsmith_add_vec2_i32(vec2<i32>(global1.x, global1.x), _wgslsmith_div_vec2_i32(vec2<i32>(20982i, 1i), vec2<i32>(0i, u_input.d)))));
    let var_0 = vec2<i32>(_wgslsmith_div_i32(4194i, 2147483647i), _wgslsmith_mult_i32(select(0i >> (global0.x % 32u), -(u_input.d & global1.x), false), _wgslsmith_div_i32(-(~u_input.d), _wgslsmith_sub_i32(global1.x, global1.x))));
    global1 = vec2<i32>(var_0.x, global1.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -117f), _wgslsmith_div_f32(1000f, 120f), false)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(534f + -517f)))) + vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(458f * -898f), _wgslsmith_f_op_f32(-372f * -177f), false)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(192f)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1223f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(168f, -1438f) - vec2<f32>(-282f, 1372f)) * vec2<f32>(427f, 850f)), true)) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-3126f, -773f) - vec2<f32>(1186f, 302f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1535f, -1510f), vec2<f32>(1000f, 493f)))))));
    var var_2 = Struct_2((i32(-1i) * -1i) >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, global0.x, 0u) << (vec3<u32>(27336u, u_input.b, u_input.c.x) % vec3<u32>(32u)), countOneBits(vec3<u32>(global0.x, 4294967295u, 39183u))) % 32u));
    let var_3 = !(!vec3<bool>(true, any(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, false, false, false))));
    var_2 = func_4(true, var_2.a, -(~select(~(-4291i), -var_0.x, any(var_3.xx))), firstLeadingBit(~vec2<u32>(0u << (u_input.a.x % 32u), firstTrailingBit(u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(firstLeadingBit(countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(global0.x, global0.x), u_input.c.xw))), u_input.c.yw ^ vec2<u32>(29797u, ~1u)), ~(~(~global0.x) & abs(_wgslsmith_div_u32(47855u, global0.x))), var_1.x, ~firstLeadingBit(_wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(78130i, -72327i, 10330i)), ~vec3<i32>(0i, global1.x, -1655i))), _wgslsmith_clamp_u32(u_input.b, _wgslsmith_sub_u32(100491u, u_input.c.x), global0.x));
}

