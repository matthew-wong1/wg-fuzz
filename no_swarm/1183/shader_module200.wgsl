struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<f32>,
    d: vec2<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> vec3<i32> {
    let var_0 = u_input.c.x;
    var var_1 = vec3<bool>(false, true, all(!select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), true)));
    var var_2 = select(var_1.xy, vec2<bool>(any(vec4<bool>(false, false, true, any(vec2<bool>(false, var_1.x)))), var_1.x), var_1.zx);
    return u_input.d.wxz;
}

fn func_3() -> i32 {
    let var_0 = 1643f;
    var var_1 = _wgslsmith_div_i32(reverseBits(_wgslsmith_mult_i32(~1i << (~u_input.c.x % 32u), _wgslsmith_clamp_i32(u_input.b.x, 33571i, firstTrailingBit(u_input.b.x)))), 1i);
    var_1 = u_input.b.x;
    var_1 = ~(~(-_wgslsmith_sub_i32(u_input.d.x, 2147483647i) << (2143u % 32u)));
    var_1 = _wgslsmith_div_i32(countOneBits(-countOneBits(_wgslsmith_dot_vec3_i32(u_input.b, u_input.b))), 2147483647i);
    return -u_input.d.x & abs(select(~abs(8229i), ~0i, false));
}

fn func_2() -> i32 {
    var var_0 = Struct_1(true, 979f, _wgslsmith_mult_vec3_i32(select(~u_input.b ^ _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 0i), vec3<i32>(2147483647i, u_input.b.x, u_input.b.x)), vec3<i32>(u_input.d.x, ~21158i, 33864i | u_input.d.x), vec3<bool>(true, true, true)), vec3<i32>(-_wgslsmith_add_i32(-2147483647i, 8117i), func_3(), u_input.d.x)));
    var_0 = Struct_1(all(vec2<bool>(any(vec3<bool>(true, true, false)) && var_0.a, !(!var_0.a))), 1000f, var_0.c);
    let var_1 = ~(~abs(u_input.c.x));
    var var_2 = Struct_2(!select(vec4<bool>(any(vec3<bool>(false, var_0.a, var_0.a)), var_0.a, true, true), !(!vec4<bool>(var_0.a, true, false, var_0.a)), !select(vec4<bool>(var_0.a, var_0.a, var_0.a, false), vec4<bool>(var_0.a, var_0.a, false, false), vec4<bool>(var_0.a, var_0.a, var_0.a, false))), var_0.b, _wgslsmith_mult_vec2_i32(u_input.b.yx, ~select(-vec2<i32>(38983i, 2147483647i), u_input.b.yy, var_0.b >= var_0.b)));
    var_0 = Struct_1(true, var_2.b, var_0.c);
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -select(u_input.b, func_1() & -u_input.d.xwy, !vec3<bool>(select(true, false, false), select(true, true, true), true));
    var var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x, 0i, var_0.x, _wgslsmith_mult_i32(countOneBits(-2147483647i), ~var_0.x)), -vec4<i32>(var_0.x << (4294967295u % 32u), ~u_input.b.x, func_2() >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 0u, u_input.c.x), vec3<u32>(0u, 1u, u_input.a.x)) % 32u), var_0.x));
    var var_2 = ~(_wgslsmith_sub_vec4_i32(u_input.d, abs(_wgslsmith_div_vec4_i32(u_input.d, u_input.d))) & abs(min(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, var_1.x, 1i, -2147483647i), u_input.d), countOneBits(vec4<i32>(0i, var_0.x, -4520i, 56603i)))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(936f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(813f))))))));
    let var_4 = u_input.a.xww;
    var var_5 = Struct_2(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false))), _wgslsmith_div_f32(-1597f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_3))))), abs(abs(_wgslsmith_div_vec2_i32(vec2<i32>(var_1.x, var_1.x), vec2<i32>(u_input.b.x, -12156i)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.c, _wgslsmith_mod_u32(u_input.a.x & _wgslsmith_mult_u32(~1u, _wgslsmith_dot_vec2_u32(u_input.c, u_input.a.zy)), _wgslsmith_add_u32(28421u, 36358u)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(532f, var_5.b, -483f) + vec3<f32>(903f, 828f, var_5.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1116f, 416f, -668f), vec3<f32>(-518f, 382f, -211f)) * _wgslsmith_div_vec3_f32(vec3<f32>(var_3, var_3, -1903f), vec3<f32>(var_3, var_5.b, var_5.b))), var_5.a.x)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_5.b, var_5.b) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_5.b, var_3) * vec2<f32>(854f, -1380f))))))), firstTrailingBit(_wgslsmith_clamp_vec3_u32(~var_4, var_4, ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))));
}

