struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_2,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: vec2<f32>) -> vec2<u32> {
    let var_0 = ~(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d, u_input.a), vec2<i32>(u_input.e, u_input.a)) >> (select(vec2<u32>(0u, 57261u), arg_0.yz, true) % vec2<u32>(32u))) & abs(abs(min(vec2<i32>(u_input.b, 1i), vec2<i32>(u_input.e, 1i)))));
    let var_1 = select(!vec4<bool>(true, true, arg_1.x == ~45648u, true), !(!vec4<bool>(true, true, all(vec2<bool>(false, false)), true)), false);
    var var_2 = u_input.c.xw;
    return arg_0.yz;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(425f, -122f, -182f, -461f), vec4<f32>(1000f, -1000f, 504f, 636f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1815f, 360f, -1391f, -1155f)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-824f, 1103f, -1449f, -693f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(437f, -1000f, -334f, -696f)), vec4<bool>(false, false, false, true)))), -firstTrailingBit(1i)), ~(~u_input.c.zy), Struct_2(~(-vec4<i32>(4992i, u_input.b, u_input.d, 0i) >> (vec4<u32>(u_input.c.x, 1u, u_input.c.x, u_input.c.x) % vec4<u32>(32u))), 1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1706f, 373f, 1147f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2103f, -359f, 1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-432f, 1293f, 231f) * vec3<f32>(443f, 402f, 189f))))));
    var_0 = Struct_3(var_0.a, ~func_3(select(vec3<u32>(57993u, var_0.b.x, u_input.c.x), select(vec3<u32>(22332u, 45651u, var_0.b.x), vec3<u32>(var_0.b.x, 28170u, var_0.b.x), vec3<bool>(false, true, true)), vec3<bool>(true, true, true)), reverseBits(u_input.c.yw), vec2<f32>(-553f, _wgslsmith_div_f32(var_0.a.a.x, 1000f))), Struct_2(_wgslsmith_sub_vec4_i32(var_0.c.a, var_0.c.a), i32(-1i) * -select(10173i, -62742i, true)), var_0.d);
    var_0 = Struct_3(var_0.a, vec2<u32>(var_0.b.x, var_0.b.x), var_0.c, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_0.d.x, var_0.a.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, 1692f, -139f) + vec3<f32>(var_0.a.a.x, -251f, -1000f))), all(vec3<bool>(true, true, true)))))));
    let var_1 = Struct_3(var_0.a, min(~vec2<u32>(var_0.b.x, 0u), vec2<u32>(var_0.b.x, 0u) ^ var_0.b) >> (_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(max(u_input.c.x, var_0.b.x), _wgslsmith_mult_u32(4294967295u, 0u)), var_0.b >> (~vec2<u32>(var_0.b.x, 46306u) % vec2<u32>(32u))) % vec2<u32>(32u)), Struct_2(vec4<i32>(min(0i, -29974i), var_0.a.b, 2147483647i, min(u_input.b, 0i >> (var_0.b.x % 32u))), min(countOneBits(_wgslsmith_sub_i32(var_0.c.b, 0i)), var_0.c.b)), var_0.d);
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(840f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_0.d.x))))), var_1.a.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_1.d.x)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-281f * var_1.d.x) - _wgslsmith_f_op_f32(1452f - var_0.d.x))))), vec4<f32>(var_0.a.a.x, -731f, 159f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.a.x - -1471f) + _wgslsmith_f_op_f32(f32(-1f) * -310f)))));
    return var_1.a;
}

fn func_1() -> Struct_1 {
    var var_0 = func_2();
    let var_1 = Struct_3(func_2(), ~firstLeadingBit(~abs(u_input.c.yx)), Struct_2(~_wgslsmith_add_vec4_i32(vec4<i32>(-1625i, -78831i, var_0.b, 1i), ~vec4<i32>(-43819i, var_0.b, u_input.a, var_0.b)), -_wgslsmith_add_i32(-32373i, 22164i)), var_0.a.yyx);
    let var_2 = var_1;
    var_0 = func_2();
    let var_3 = var_1.a;
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: bool, arg_3: i32) -> f32 {
    let var_0 = Struct_2(_wgslsmith_add_vec4_i32(min(_wgslsmith_mult_vec4_i32(select(vec4<i32>(u_input.b, 9808i, -2147483647i, arg_0.b), vec4<i32>(2147483647i, u_input.d, arg_0.b, arg_0.b), false), vec4<i32>(arg_3, 22641i, 2147483647i, u_input.a) << (u_input.c % vec4<u32>(32u))), abs(vec4<i32>(6641i, arg_0.b, 2147483647i, u_input.d) << (vec4<u32>(77366u, 22944u, u_input.c.x, 24306u) % vec4<u32>(32u)))), vec4<i32>(~_wgslsmith_clamp_i32(-50044i, arg_0.b, -49620i), ~max(-67664i, -1i), abs(arg_0.b & arg_3), 55419i)), -78686i);
    var var_1 = Struct_2(vec4<i32>(1i, _wgslsmith_sub_i32(-(89158i << (u_input.c.x % 32u)), u_input.a), ~reverseBits(~(-60848i)), max(_wgslsmith_mod_i32(-2147483647i, -1i), _wgslsmith_mod_i32(var_0.b, ~32618i))), max(i32(-1i) * -arg_0.b, var_0.a.x));
    var_1 = var_0;
    var var_2 = true;
    var var_3 = _wgslsmith_mod_vec4_i32(vec4<i32>(14919i, reverseBits(8934i) >> (_wgslsmith_mod_u32(~59545u, u_input.c.x) % 32u), -1i, arg_3 >> (_wgslsmith_add_u32(~u_input.c.x, u_input.c.x) % 32u)), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-arg_0.b, var_0.b, 11328i, func_2().b), vec4<i32>(var_0.a.x, var_1.b, _wgslsmith_add_i32(35435i, arg_3), _wgslsmith_mult_i32(var_0.a.x, arg_0.b))), firstLeadingBit(vec4<i32>(17598i, -1i, arg_0.b, _wgslsmith_add_i32(-2085i, u_input.e)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(627f, _wgslsmith_f_op_f32(arg_0.a.x + -476f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, 743f, arg_2)))) + arg_0.a.x) + arg_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(func_1(), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), true, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, -1i, u_input.b, u_input.a), vec4<i32>(0i, u_input.b, u_input.d, 5870i)))), 1f))), -2145f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-191f)) - 333f))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(abs(-282f)), true))), _wgslsmith_f_op_f32(min(-1194f, var_0.x)), var_0.x);
    var var_1 = max(vec4<u32>(select(firstTrailingBit(_wgslsmith_mod_u32(u_input.c.x, u_input.c.x)), _wgslsmith_div_u32(u_input.c.x, ~u_input.c.x), !select(false, false, false)), firstTrailingBit(firstLeadingBit(countOneBits(37493u))), 1u, firstLeadingBit(51622u)), abs(vec4<u32>(1u, u_input.c.x, ~u_input.c.x, ~u_input.c.x)) & u_input.c);
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -1410f, 2696f, var_0.x), vec4<f32>(var_0.x, -1000f, -692f, -453f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1000f, var_0.x, -1000f))))), ~firstTrailingBit(~u_input.d)), var_1.zw, Struct_2(firstLeadingBit(vec4<i32>(1i, u_input.d, u_input.e, _wgslsmith_div_i32(1i, u_input.a))), -_wgslsmith_clamp_i32(u_input.a, _wgslsmith_mult_i32(u_input.e, 2147483647i), u_input.b)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, var_0.x, -121f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-237f, var_0.x, var_0.x)), vec3<f32>(-812f, -222f, -1000f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -635f, var_0.x))), select(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), true), vec3<bool>(true, true, false)))));
    var var_3 = u_input.a | u_input.e;
    var_3 = var_2.c.a.x;
    var var_4 = select(var_2.c.a.yw, var_2.c.a.zx, vec2<bool>(true, true)) >> ((var_1.xw >> (u_input.c.zx % vec2<u32>(32u))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, vec4<u32>(~min(~var_1.x, ~4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(~46769u, 0u, _wgslsmith_mod_u32(24282u, var_1.x)), ~(~vec3<u32>(var_2.b.x, 4294967295u, 1u))), 37213u, ~_wgslsmith_sub_u32(1u, ~var_2.b.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 88955u, _wgslsmith_dot_vec4_u32(u_input.c, u_input.c)), u_input.c.xzx) >> (func_3(_wgslsmith_mod_vec3_u32(vec3<u32>(58199u, u_input.c.x, 0u), vec3<u32>(108u, 81729u, 8959u)) | _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, var_1.x, 4294967295u), vec3<u32>(0u, var_2.b.x, 28292u)), vec2<u32>(38425u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b.x, u_input.c.x, 4294967295u), vec3<u32>(u_input.c.x, u_input.c.x, var_2.b.x))), var_0.yz).x % 32u), 0u, -1206f);
}

