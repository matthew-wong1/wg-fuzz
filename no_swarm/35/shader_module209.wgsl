struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: f32,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec2<i32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: vec2<u32>) -> vec4<i32> {
    return _wgslsmith_add_vec4_i32(~vec4<i32>(-32503i, _wgslsmith_mod_i32(~38178i, u_input.c), ~13062i, u_input.a.x), vec4<i32>(17383i, ~firstLeadingBit(min(-56483i, 9231i)), u_input.b.x, i32(-1i) * -2147483647i));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_5) -> f32 {
    let var_0 = abs(vec2<u32>(4392u, arg_2.a));
    var var_1 = 36367i;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.b.x * _wgslsmith_f_op_f32(floor(282f))))), arg_1, _wgslsmith_div_f32(716f, arg_1));
    var_1 = -max(-u_input.a.x, _wgslsmith_dot_vec4_i32(~(-vec4<i32>(5600i, -1i, 16950i, 33824i)), vec4<i32>(reverseBits(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(-2567i, 0i, arg_0.e), vec3<i32>(arg_0.a, u_input.b.x, u_input.c)), u_input.c, firstLeadingBit(u_input.b.x))));
    var var_3 = _wgslsmith_dot_vec2_i32(vec2<i32>(abs(select(abs(-1i), _wgslsmith_dot_vec2_i32(u_input.a, u_input.b.xz), any(vec4<bool>(true, false, true, true)))), _wgslsmith_mod_i32(firstTrailingBit(-1i | u_input.b.x), 0i)), u_input.b.yy);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_2.x)), -202f)) - _wgslsmith_f_op_f32(-arg_0.b)));
}

fn func_2(arg_0: i32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-1007f - -1979f))))) - _wgslsmith_f_op_f32(-570f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(Struct_2(32199i, -884f, vec2<f32>(-634f, -2041f), Struct_1(u_input.d.zzx, vec4<f32>(454f, 1191f, 362f, -1216f)), -1i), _wgslsmith_f_op_f32(f32(-1f) * -481f), Struct_5(63141u)))))));
    var var_1 = !vec3<bool>(true, ~_wgslsmith_sub_u32(u_input.d.x, u_input.d.x) >= ((59170u << (u_input.d.x % 32u)) ^ 1u), any(vec3<bool>(true, arg_0 > 2147483647i, var_0 >= var_0)));
    var var_2 = Struct_2(min(arg_0, -1i), _wgslsmith_f_op_f32(func_3(Struct_2(arg_0, _wgslsmith_f_op_f32(700f * _wgslsmith_f_op_f32(var_0 - -655f)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, -496f), vec2<f32>(var_0, var_0), vec2<bool>(false, var_1.x))))), Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), u_input.d.zyw, u_input.d.yzz), vec4<f32>(var_0, -1332f, 278f, var_0)), arg_0 ^ (i32(-1i) * -13100i)), -395f, Struct_5(u_input.d.x))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_0, -1000f)), _wgslsmith_f_op_f32(2209f * _wgslsmith_f_op_f32(trunc(562f))))), _wgslsmith_f_op_f32(func_3(Struct_2(1i, 1f, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, 1243f))), Struct_1(vec3<u32>(4932u, 4294967295u, u_input.d.x), vec4<f32>(var_0, var_0, var_0, var_0)), ~u_input.c), var_0, Struct_5(_wgslsmith_dot_vec2_u32(u_input.d.yz, vec2<u32>(u_input.d.x, u_input.d.x)))))), Struct_1(_wgslsmith_sub_vec3_u32(u_input.d.wwz, u_input.d.ywz), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(var_0, var_0, var_0, -1379f), vec4<f32>(var_0, var_0, 1000f, var_0)))))), -arg_0);
    var var_3 = arg_0;
    var var_4 = Struct_2(var_2.e, -1000f, vec2<f32>(-1165f, var_2.b), var_2.d, max(-_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-19760i, arg_0), var_2.e, -2147483647i), arg_0));
    return Struct_4(var_2.d, Struct_3(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.b.yx), vec2<i32>(var_2.e, 1i)), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 1i, 2903i, 27215i), vec4<i32>(u_input.c, -2147483647i, -2147483647i, u_input.a.x))), arg_0), vec4<bool>(-u_input.a.x >= arg_0, var_1.x, !var_1.x, (u_input.d.x & 24609u) == reverseBits(var_2.d.a.x)), _wgslsmith_f_op_f32(-829f * var_0), Struct_1(~firstLeadingBit(vec3<u32>(var_4.d.a.x, 67362u, var_4.d.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(692f, var_4.d.b.x, -1150f, var_2.d.b.x))), vec4<u32>(var_4.d.a.x, firstTrailingBit(72226u), ~var_2.d.a.x, firstTrailingBit(var_2.d.a.x)) >> (u_input.d % vec4<u32>(32u))), u_input.a);
}

fn func_4(arg_0: Struct_4) -> Struct_1 {
    let var_0 = arg_0.b.d;
    var var_1 = vec4<i32>(_wgslsmith_div_i32(-2147483647i, -41951i), arg_0.c.x, -1i, u_input.a.x);
    var var_2 = 42512u;
    var_1 = countOneBits(vec4<i32>(37800i, -(~u_input.a.x), 1i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, 0i, var_1.x) ^ vec3<i32>(22935i, var_1.x, u_input.b.x), ~var_1.wxw), vec3<i32>(u_input.b.x, 2147483647i, ~var_1.x))));
    var var_3 = 1i;
    return Struct_1(~(vec3<u32>(~1u, var_0.a.x, 15994u) << (vec3<u32>(1u, firstTrailingBit(arg_0.a.a.x), ~0u) % vec3<u32>(32u))), arg_0.a.b);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: i32, arg_3: vec3<f32>) -> StorageBuffer {
    let var_0 = 1000f;
    var var_1 = -888f;
    var var_2 = Struct_5(_wgslsmith_div_u32(12715u, 39897u));
    var_1 = -340f;
    let var_3 = ~u_input.d.x;
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(589f)) * arg_3.x), ~var_2.a, u_input.a.x, _wgslsmith_div_i32(~arg_1.x, 1i), arg_1.yxw);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d;
    let var_1 = -413f;
    let var_2 = ~(~min(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, u_input.b.x, u_input.c, -10055i) & vec4<i32>(u_input.b.x, u_input.b.x, -1i, u_input.a.x), -vec4<i32>(-10951i, 2147483647i, u_input.b.x, -9986i)), func_1(vec2<u32>(4294967295u, var_0.x))));
    var_0 = vec4<u32>(var_0.x, 4294967295u, 0u, ~4294967295u);
    let x = u_input.a;
    s_output = func_5(func_4(func_2(var_2.x ^ var_2.x)), -vec4<i32>(-abs(var_2.x), ~u_input.c, func_1(u_input.d.xw).x, -(i32(-1i) * -17785i)), 2147483647i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -2246f, _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(min(var_1, var_1))))));
}

