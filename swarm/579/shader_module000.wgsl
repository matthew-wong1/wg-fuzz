struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2) -> vec3<bool> {
    var var_0 = u_input.c.x;
    let var_1 = arg_0.a;
    let var_2 = i32(-1i) * -82789i;
    var var_3 = Struct_3(var_1, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~arg_0.a.b.zz, _wgslsmith_add_vec2_u32(var_1.b.xx, vec2<u32>(111761u, u_input.d))), arg_0.a.b.yz), firstLeadingBit(arg_0.e.b.x)));
    let var_4 = ~u_input.a ^ -2339i;
    return select(!vec3<bool>(false, !(!var_1.a.x), !(arg_0.d < 606f)), !(!(!select(vec3<bool>(arg_0.a.a.x, false, false), vec3<bool>(arg_0.b, arg_0.a.a.x, var_1.a.x), vec3<bool>(true, true, var_3.a.a.x)))), vec3<bool>(var_3.a.a.x, arg_0.e.a.x, true));
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: bool, arg_3: i32) -> bool {
    var var_0 = Struct_2(Struct_1(select(vec2<bool>(true, true), !(!vec2<bool>(arg_2, arg_2)), true), _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4312u, arg_0, arg_0), ~vec3<u32>(49366u, u_input.b, 0u)), max(u_input.c.wzw, u_input.c.wxw >> (u_input.c.zyw % vec3<u32>(32u))), vec3<u32>(62230u, u_input.c.x, 34114u))), 1375f < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-737f + -809f), _wgslsmith_f_op_f32(f32(-1f) * -1158f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(1614f, 1496f)), -884f)))), _wgslsmith_div_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(sign(1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1749f) + -1442f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -341f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1985f)))))), Struct_1(vec2<bool>(all(func_3(Struct_2(Struct_1(vec2<bool>(true, arg_2), u_input.c.yxx), false, 1205f, 1524f, Struct_1(vec2<bool>(true, false), u_input.c.wwz)))), arg_2), u_input.c.ywx));
    let var_1 = vec2<u32>(_wgslsmith_dot_vec2_u32(countOneBits(~var_0.e.b.xy) & (_wgslsmith_mod_vec2_u32(var_0.e.b.zz, u_input.c.zz) & ~vec2<u32>(0u, var_0.a.b.x)), vec2<u32>(_wgslsmith_mod_u32(~0u, arg_0), 30944u)), 4294967295u);
    var_0 = Struct_2(var_0.e, var_0.a.a.x, var_0.d, -103f, Struct_1(var_0.a.a, u_input.c.xyw));
    let var_2 = select(!(!(!vec2<bool>(var_0.e.a.x, var_0.b))), !var_0.e.a, var_0.e.a);
    let var_3 = Struct_3(Struct_1(!(!select(vec2<bool>(false, true), vec2<bool>(var_2.x, var_0.b), true)), ~var_0.e.b), 43111u);
    return abs(_wgslsmith_add_u32((u_input.e & var_3.a.b.x) ^ var_0.e.b.x, 5110u)) > var_1.x;
}

fn func_1(arg_0: u32, arg_1: Struct_3) -> Struct_2 {
    var var_0 = !(!select(!vec3<bool>(true, arg_1.a.a.x, false), select(!vec3<bool>(false, arg_1.a.a.x, arg_1.a.a.x), !vec3<bool>(arg_1.a.a.x, false, true), !vec3<bool>(true, arg_1.a.a.x, false)), func_2(arg_0, firstLeadingBit(vec2<i32>(-1i, u_input.a)), true, 2147483647i)));
    var var_1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(873f, -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1007f, -413f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1732f - 661f))), 1930f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -483f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(561f, 483f, -208f, -1000f), vec4<f32>(359f, 995f, 539f, 649f)), vec4<f32>(1f, 1f, 1f, 1f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(293f, 699f, 1799f, -1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-318f, 288f, -491f, 154f) - vec4<f32>(-330f, 207f, -854f, 229f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-745f, -703f, 1145f, -1473f) - vec4<f32>(-1128f, -2387f, -928f, -364f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-905f, 276f, 644f, -268f), vec4<f32>(616f, 1418f, 475f, -104f), arg_1.a.a.x)))))));
    return Struct_2(Struct_1(vec2<bool>(true, true), ~min(u_input.c.xwy, _wgslsmith_add_vec3_u32(vec3<u32>(arg_1.a.b.x, arg_1.b, 57073u), arg_1.a.b))), var_1.x <= -743f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - var_1.x))) + var_1.x), -467f, Struct_1(select(var_0.xx, !var_0.xx, vec2<bool>(any(vec2<bool>(arg_1.a.a.x, var_0.x)), var_0.x | var_0.x)), ~(select(vec3<u32>(1u, u_input.e, u_input.e), vec3<u32>(30541u, arg_1.a.b.x, 0u), vec3<bool>(true, false, arg_1.a.a.x)) << (u_input.c.yxx % vec3<u32>(32u)))));
}

fn func_4(arg_0: Struct_2) -> vec4<u32> {
    var var_0 = Struct_3(arg_0.a, arg_0.e.b.x);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1304f) * arg_0.d), arg_0.d);
    var var_2 = func_1(~_wgslsmith_mult_u32(u_input.d, select(4294967295u, var_0.b, !var_0.a.a.x)), Struct_3(Struct_1(!select(arg_0.a.a, vec2<bool>(false, true), false), ~(~u_input.c.yyw)), 4294967295u)).a;
    var_2 = arg_0.a;
    var var_3 = func_1(_wgslsmith_mod_u32(~(~(~var_2.b.x)), _wgslsmith_clamp_u32(82996u, var_2.b.x, ~var_0.b & 1u)), Struct_3(var_0.a, 4294967295u));
    return ~vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(4189u, var_0.a.b.x, 38463u, var_2.b.x)), vec4<u32>(u_input.e, var_2.b.x, var_0.b, var_0.a.b.x)), u_input.c), ~firstLeadingBit(u_input.b), ~reverseBits(countOneBits(0u)), ~(var_0.b | 40602u) & 4294967295u);
}

fn func_5(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = select(vec2<bool>(true, 5130u > ~arg_2.a.b.x), arg_2.e.a, false);
    var var_1 = ~(~(vec2<u32>(arg_0.x, ~arg_2.a.b.x) >> (vec2<u32>(23082u, 0u) % vec2<u32>(32u))));
    var var_2 = u_input.c;
    let var_3 = !(!var_0.x) || var_0.x;
    var_2 = vec4<u32>(~(arg_3.x << (u_input.d % 32u)), ~_wgslsmith_dot_vec2_u32(select(vec2<u32>(var_2.x, 0u), ~arg_2.a.b.xx, vec2<bool>(var_3, false)), firstTrailingBit(~var_2.zy)), abs(var_1.x), ~29968u);
    return Struct_2(func_1((_wgslsmith_dot_vec4_u32(vec4<u32>(26761u, var_2.x, arg_2.e.b.x, 4294967295u), arg_0) << (54259u % 32u)) & ~arg_3.x, Struct_3(func_1(_wgslsmith_add_u32(arg_2.a.b.x, arg_2.a.b.x), Struct_3(Struct_1(arg_2.e.a, vec3<u32>(70639u, arg_2.a.b.x, arg_0.x)), var_2.x)).a, abs(12763u))).e, var_3, _wgslsmith_f_op_f32(trunc(-336f)), _wgslsmith_div_f32(arg_2.d, _wgslsmith_f_op_f32(_wgslsmith_div_f32(849f, -201f) * arg_2.c)), Struct_1(vec2<bool>(arg_2.e.a.x, _wgslsmith_mod_i32(1i, arg_1.x) < 0i), var_2.wwx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(min(_wgslsmith_sub_vec4_u32(func_4(func_1(0u, Struct_3(Struct_1(vec2<bool>(true, false), vec3<u32>(u_input.d, u_input.b, u_input.b)), 0u))), vec4<u32>(21328u, func_1(0u, Struct_3(Struct_1(vec2<bool>(true, true), u_input.c.wyz), 0u)).e.b.x, abs(43960u), _wgslsmith_div_u32(u_input.b, u_input.c.x))), ~abs(vec4<u32>(23804u, u_input.c.x, u_input.b, u_input.d))), vec2<i32>(u_input.a, u_input.a), Struct_2(Struct_1(vec2<bool>(func_2(u_input.b, vec2<i32>(u_input.a, u_input.a), true, 26656i), true), vec3<u32>(_wgslsmith_sub_u32(12917u, u_input.d), 29866u, firstLeadingBit(68832u))), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1308f, -352f, true)))) + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(607f, -309f), _wgslsmith_f_op_f32(f32(-1f) * -563f)))), 710f, Struct_1(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), func_4(func_1(u_input.d, Struct_3(Struct_1(vec2<bool>(false, true), u_input.c.zxw), u_input.b))).wxw)), vec2<u32>(func_1(abs(u_input.e), Struct_3(Struct_1(vec2<bool>(false, false), vec3<u32>(16658u, u_input.c.x, 4294967295u)), _wgslsmith_mult_u32(49837u, 38863u))).a.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, abs(u_input.b)), u_input.c.zy)));
    var var_1 = vec3<f32>(-1000f, -1455f, 1189f);
    var var_2 = _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(-1i, u_input.a), _wgslsmith_dot_vec2_i32(-_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(u_input.a, 73476i), vec2<i32>(35263i, u_input.a)), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(-1i, 10907i)) << (func_4(Struct_2(var_0.a, true, -806f, 393f, var_0.e)).wy % vec2<u32>(32u))), -10736i), vec3<i32>(u_input.a, -1i, u_input.a));
    var var_3 = 4294967295u;
    let var_4 = Struct_3(Struct_1(var_0.a.a, u_input.c.xxx), min(_wgslsmith_add_u32(u_input.b, 1u), ~(~u_input.c.x | ~67712u)));
    let var_5 = Struct_3(func_1(82776u, var_4).a, var_0.e.b.x >> (u_input.b % 32u));
    let var_6 = reverseBits(4294967295u);
    let var_7 = _wgslsmith_mult_u32(var_5.a.b.x, (14439u << (~var_4.a.b.x % 32u)) >> (81060u % 32u));
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -465f), _wgslsmith_f_op_f32(sign(var_0.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + -1121f), -1109f));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(firstLeadingBit(var_4.a.b.x), ~34363u) >> (vec2<u32>(~(var_0.a.b.x ^ var_6), u_input.d) % vec2<u32>(32u)), -2147483647i);
}

