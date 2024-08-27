struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<f32>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: Struct_1,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-382f, -1864f, -301f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(floor(global0.x)), true)), _wgslsmith_f_op_f32(global0.x * 1603f)), -717f, 1966f) + vec3<f32>(1457f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1941f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x)))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -350f, global0.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x))))));
    let var_0 = Struct_2(-firstTrailingBit(_wgslsmith_div_i32(2147483647i, u_input.b)) <= 0i, ~(~vec2<u32>(~u_input.d, ~1u)), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(539f, _wgslsmith_f_op_f32(global0.x + -502f))))), any(!(!arg_0.zw)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, global0.x, global0.x, 1190f))))), _wgslsmith_sub_i32(-34229i, _wgslsmith_div_i32(u_input.b, _wgslsmith_div_i32(u_input.b, -20366i))), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-444f, 242f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x)))), arg_0.x);
    let var_1 = 1u;
    let var_2 = firstLeadingBit(-firstLeadingBit(-_wgslsmith_sub_vec3_i32(vec3<i32>(0i, var_0.c.d, 1i), vec3<i32>(32534i, u_input.b, u_input.b))));
    return var_0.d;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<bool>) -> vec3<f32> {
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.x)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -2555f) + _wgslsmith_f_op_f32(func_3(vec4<bool>(false, arg_1.x, true, arg_1.x))))), -1663f, -488f));
    var var_0 = Struct_2(!arg_1.x, ~_wgslsmith_div_vec2_u32(select(~u_input.a.zz, vec2<u32>(u_input.c, 0u) & u_input.a.ww, arg_1.xy), abs(u_input.a.yw)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.x))), false, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(201f - global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -227f) - _wgslsmith_f_op_f32(max(122f, global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(f32(-1f) * -519f)), global0.x), _wgslsmith_clamp_i32(arg_0.x, u_input.b << (u_input.c % 32u), u_input.b), all(!vec3<bool>(arg_1.x, arg_1.x, false))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(select(vec4<bool>(true, true, arg_1.x, true), arg_1, false))) - global0.x), _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-global0.x)))), all(!vec3<bool>(true, true, arg_1.x)) | false);
    var var_1 = -(~(-vec3<i32>(_wgslsmith_add_i32(1i, u_input.b), abs(arg_0.x), -27269i)));
    var var_2 = _wgslsmith_div_u32(~var_0.b.x, u_input.d << (0u % 32u));
    var var_3 = vec3<i32>(_wgslsmith_sub_i32(firstTrailingBit(firstLeadingBit(u_input.b)), u_input.b) >> (abs(var_0.b.x) % 32u), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(firstTrailingBit(countOneBits(arg_0)), vec3<i32>(var_1.x << (var_0.b.x % 32u), firstLeadingBit(1i), -17523i)), select(-arg_0 | _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, 0i, -2147483647i), arg_0), arg_0, false)), _wgslsmith_sub_i32(-_wgslsmith_dot_vec2_i32(arg_0.yz, arg_0.zy) & _wgslsmith_mult_i32(-27248i, -u_input.b), ~var_0.c.d));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(var_0.d, -1856f)), _wgslsmith_f_op_f32(-global0.x), global0.x) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_0.c.c.zzx)))) - var_0.c.c.zww) - _wgslsmith_f_op_vec3_f32(exp2(var_0.c.c.yzz)));
}

fn func_1() -> Struct_2 {
    let var_0 = firstLeadingBit(_wgslsmith_mult_vec4_u32(u_input.a, ~(~_wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, u_input.d, u_input.a.x)))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-118f, _wgslsmith_f_op_f32(global0.x * global0.x), 1313f) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f)))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, global0.x, 191f))) + _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, -1000f, 329f), vec3<f32>(1552f, global0.x, global0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(249f, 861f, 1104f)) - _wgslsmith_f_op_vec3_f32(func_2(vec3<i32>(52425i, 34643i, u_input.b), vec4<bool>(false, true, false, true)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(global0.x * -389f), -307f))));
    let var_1 = Struct_2((_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(4294967295u, 1u)), abs(vec2<u32>(var_0.x, var_0.x))) <= u_input.a.x) & false, ~u_input.a.yx, Struct_1(545f, false, vec4<f32>(-1418f, _wgslsmith_f_op_f32(f32(-1f) * -291f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1253f + global0.x)), _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-global0.x))), firstTrailingBit(-2147483647i), true), global0.x, _wgslsmith_f_op_f32(-global0.x) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))) + global0.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(var_1.c.c.wyz, _wgslsmith_f_op_vec3_f32(-var_1.c.c.yyz))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - var_1.d)))), var_1.c.e, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.c.c) + _wgslsmith_f_op_vec4_f32(vec4<f32>(746f, var_1.d, var_2.x, var_1.c.c.x) + _wgslsmith_f_op_vec4_f32(-var_1.c.c))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.a)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1240f, 1574f), var_1.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), global0.x)), var_1.c.d, !var_1.a);
    return Struct_2(false, ~u_input.a.zx, Struct_1(577f, var_3.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(var_1.c.c)))), _wgslsmith_clamp_i32(71170i, abs(-2147483647i << (u_input.d % 32u)), 0i), (u_input.b >> (_wgslsmith_dot_vec4_u32(vec4<u32>(8031u, u_input.a.x, var_0.x, var_1.b.x), vec4<u32>(var_1.b.x, var_0.x, 78646u, u_input.d)) % 32u)) >= select(~1i, i32(-1i) * -2147483647i, var_1.b.x >= var_1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_f_op_f32(1413f * _wgslsmith_f_op_f32(floor(var_3.c.x)))) + var_3.a), all(select(select(!vec4<bool>(false, var_1.e, false, var_3.e), !vec4<bool>(true, true, var_3.e, var_1.c.b), select(true, var_3.e, true)), vec4<bool>(true, false, false, var_1.c.d == u_input.b), !select(vec4<bool>(var_3.e, false, var_3.e, false), vec4<bool>(false, var_3.e, var_3.b, var_3.b), vec4<bool>(var_1.c.b, false, var_1.e, var_1.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(u_input.b, -max(3476i, u_input.b));
    let var_1 = func_1();
    var var_2 = var_1.c;
    let var_3 = var_1;
    var var_4 = Struct_2(all(select(vec2<bool>(var_3.e, var_2.e), vec2<bool>(true, true), all(vec4<bool>(var_3.c.b, var_2.b, true, false)))) & all(vec2<bool>(-1206f <= var_1.d, var_3.a)), vec2<u32>(_wgslsmith_clamp_u32(var_3.b.x, ~abs(4294967295u), _wgslsmith_dot_vec2_u32(u_input.a.yy, var_1.b | var_1.b)), ~var_1.b.x), Struct_1(430f, var_2.b, var_1.c.c, min(countOneBits(-2147483647i), u_input.b), true), -1136f, select(var_3.c.b, var_3.c.d >= -var_3.c.d, var_2.b) | any(select(vec3<bool>(false, false, true), select(vec3<bool>(false, var_1.c.e, var_2.e), vec3<bool>(var_3.a, true, var_2.e), vec3<bool>(var_2.b, false, true)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(countOneBits(~(~73677u)), 4294967295u, reverseBits(_wgslsmith_div_u32(0u, ~var_4.b.x))), -51236i);
}

