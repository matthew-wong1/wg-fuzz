struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec3<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 14> = array<vec4<f32>, 14>(vec4<f32>(178f, 105f, -118f, -279f), vec4<f32>(318f, -1731f, 324f, -267f), vec4<f32>(-1000f, -1573f, 355f, 1000f), vec4<f32>(879f, -1050f, 722f, 2070f), vec4<f32>(1000f, 391f, 576f, -1000f), vec4<f32>(369f, 1377f, -1260f, 529f), vec4<f32>(658f, -192f, -1000f, 185f), vec4<f32>(1000f, -914f, 210f, -1901f), vec4<f32>(-970f, -2841f, 1436f, 316f), vec4<f32>(424f, 1399f, 1000f, 1182f), vec4<f32>(-561f, 164f, 306f, 1160f), vec4<f32>(-1123f, 261f, 122f, 264f), vec4<f32>(-843f, -711f, -247f, 2025f), vec4<f32>(-1062f, -622f, 898f, 222f));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    var var_0 = Struct_1(countOneBits(-(~(vec4<i32>(0i, u_input.d, u_input.d, 57226i) & vec4<i32>(-2147483647i, 4033i, u_input.d, -58968i)))));
    let var_1 = all(vec2<bool>((_wgslsmith_f_op_f32(floor(398f)) != _wgslsmith_f_op_f32(min(1314f, 129f))) | true, !select(true, any(vec2<bool>(true, false)), all(vec2<bool>(false, false)))));
    let var_2 = ~23573u;
    let var_3 = ~(countOneBits(var_2) ^ (u_input.b | 28076u));
    global0 = array<vec4<f32>, 14>();
    return u_input.d;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(max(vec3<i32>(u_input.d, 15939i, -2147483647i), -arg_2.a.zzz), vec3<i32>(func_3(), -14069i, _wgslsmith_mult_i32(arg_2.a.x, 1i)), vec3<i32>(i32(-1i) * -9147i, 0i, i32(-1i) * -1i)), _wgslsmith_clamp_vec3_i32(arg_2.a.yyw, ~(-vec3<i32>(-25186i, 2147483647i, arg_2.a.x)), firstTrailingBit(arg_2.a.wwy))) << (~_wgslsmith_div_vec3_u32(~firstLeadingBit(vec3<u32>(arg_1.x, 46309u, 1u)), select(vec3<u32>(arg_1.x, arg_1.x, 4294967295u), vec3<u32>(0u, 0u, arg_0.x) & vec3<u32>(0u, arg_0.x, arg_0.x), vec3<bool>(true, false, false))) % vec3<u32>(32u));
    global0 = array<vec4<f32>, 14>();
    let var_1 = arg_2.a;
    var var_2 = arg_2;
    global0 = array<vec4<f32>, 14>();
    return arg_2;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec4<bool>) -> Struct_1 {
    global0 = array<vec4<f32>, 14>();
    let var_0 = Struct_1(vec4<i32>(i32(-1i) * -1i, func_3(), 29055i, countOneBits(max(-29081i, u_input.d) ^ 2147483647i)));
    global0 = array<vec4<f32>, 14>();
    var var_1 = _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-552f)), _wgslsmith_f_op_f32(trunc(arg_2.x))));
    let var_2 = ~abs(firstTrailingBit(_wgslsmith_mult_u32(u_input.a, _wgslsmith_dot_vec2_u32(u_input.c, u_input.c))));
    return Struct_1(_wgslsmith_mod_vec4_i32(~arg_1.a, ~vec4<i32>(countOneBits(2147483647i), _wgslsmith_mult_i32(arg_1.a.x, u_input.d), abs(u_input.d), _wgslsmith_div_i32(-1i, u_input.d))));
}

fn func_1(arg_0: i32, arg_1: f32) -> Struct_1 {
    global0 = array<vec4<f32>, 14>();
    let var_0 = true;
    global0 = array<vec4<f32>, 14>();
    var var_1 = func_4(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(min(u_input.b, _wgslsmith_mult_u32(_wgslsmith_div_u32(26867u, u_input.c.x), ~u_input.b)), min(~37305u, 0u)), 14u)], func_2(min(u_input.c, ~(~vec2<u32>(u_input.c.x, u_input.a))), ~firstTrailingBit(vec2<u32>(79927u, u_input.c.x)), Struct_1(vec4<i32>(arg_0, -1i, countOneBits(-4410i), -13719i))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(257f, _wgslsmith_f_op_f32(1000f - 243f), _wgslsmith_f_op_f32(arg_1 + arg_1)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1823f, arg_1, arg_1)), _wgslsmith_f_op_vec3_f32(vec3<f32>(152f, arg_1, arg_1) + vec3<f32>(-763f, 145f, -573f)))), abs(35759u) > u_input.a)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 1000f, arg_1))))))), select(!select(vec4<bool>(var_0, false, true, false), select(vec4<bool>(false, var_0, true, false), vec4<bool>(true, var_0, false, false), vec4<bool>(var_0, false, false, var_0)), select(vec4<bool>(true, var_0, var_0, var_0), vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(var_0, var_0, false, true))), !vec4<bool>(true, 1u == u_input.c.x, true | var_0, var_0), any(select(select(vec4<bool>(false, var_0, var_0, true), vec4<bool>(var_0, true, var_0, var_0), var_0), vec4<bool>(var_0, var_0, var_0, var_0), var_0))));
    global0 = array<vec4<f32>, 14>();
    return func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1336f, 1142f, arg_1, -1000f)))), func_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + arg_1) - _wgslsmith_f_op_f32(arg_1 + -117f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1 - arg_1))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1181f)))), func_2(min(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 5819u), u_input.c, u_input.c), ~u_input.c), u_input.c, Struct_1(_wgslsmith_clamp_vec4_i32(var_1.a, var_1.a, vec4<i32>(var_1.a.x, 0i, 0i, -15829i)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1421f, 962f, arg_1)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1, arg_1, -1951f), vec3<f32>(-1225f, arg_1, 1251f)))))), !vec4<bool>(any(vec4<bool>(false, var_0, false, false)), true, true, var_0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, -1000f))))), vec4<bool>(u_input.b == ~(~4294967295u), any(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, var_0), vec3<bool>(false, true, true)), !vec3<bool>(var_0, true, var_0), select(true, false, false))), all(!vec4<bool>(false, var_0, false, true)) & false, true));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec3<bool>(4946u >= _wgslsmith_clamp_u32(u_input.b, 4294967295u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, 4294967295u), vec4<u32>(u_input.b, u_input.c.x, u_input.b, u_input.b))), any(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)))), !all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, false))));
    var var_1 = vec3<i32>(firstTrailingBit(u_input.d), u_input.d, u_input.d);
    var_1 = _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-15691i, -53515i, var_1.x), arg_0.a.xzy), vec3<i32>(var_1.x, 13861i, 595i)), firstLeadingBit(vec3<i32>(16243i, 1684i, u_input.d))), firstTrailingBit(arg_0.a.zyx)) >> (~(~vec3<u32>(1u, 65196u, u_input.a) & (~vec3<u32>(u_input.c.x, u_input.a, 29394u) >> (~vec3<u32>(11489u, u_input.a, u_input.c.x) % vec3<u32>(32u)))) % vec3<u32>(32u));
    var var_2 = Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(1i << (_wgslsmith_clamp_u32(0u, 1u, 4294967295u) % 32u), arg_0.a.x, 1i, ~_wgslsmith_div_i32(var_1.x, u_input.d)), _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(u_input.d, 5791i, -1i, arg_0.a.x)), ~(~arg_0.a))));
    let var_3 = Struct_1(arg_0.a);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -((vec4<i32>(-1i) * -vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d)) & (_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, u_input.d, 20942i, 7121i), select(vec4<i32>(-2147483647i, 1i, 0i, 43069i), vec4<i32>(u_input.d, u_input.d, -343i, 16863i), vec4<bool>(true, false, true, true))) | vec4<i32>(u_input.d, 34786i, u_input.d, u_input.d ^ -6301i)));
    let var_1 = _wgslsmith_f_op_f32(step(1054f, -575f));
    global0 = array<vec4<f32>, 14>();
    var var_2 = Struct_1(_wgslsmith_mod_vec4_i32(-(vec4<i32>(var_0.x, 64761i, var_0.x, u_input.d) & vec4<i32>(-1i, 5797i, var_0.x, 41936i)) | -max(vec4<i32>(-6257i, u_input.d, u_input.d, var_0.x), vec4<i32>(1i, -1053i, 2147483647i, -19727i)), min(vec4<i32>(-1i) * -vec4<i32>(4009i, 36411i, -2147483647i, -15244i), -(~vec4<i32>(-2147483647i, var_0.x, var_0.x, var_0.x)))));
    var var_3 = func_5(func_1(reverseBits(var_0.x) | _wgslsmith_mult_i32(-2147483647i, var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-395f, 636f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-var_1)))));
    let var_4 = vec4<bool>(all(!vec3<bool>(true, select(false, true, true), false)), true, select(false, any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false))) || true, true), false);
    var_3 = func_5(Struct_1(vec4<i32>(_wgslsmith_mod_i32(-52422i, 20163i) & _wgslsmith_div_i32(1i, var_2.a.x), -var_3.a.x, -2147483647i, _wgslsmith_add_i32(i32(-1i) * -2147483647i, 0i))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, reverseBits(-1i), ~vec2<u32>(_wgslsmith_sub_u32(u_input.a, ~0u), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.b, u_input.c.x, u_input.b), vec4<u32>(1u, 76089u, u_input.a, 56968u)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(241f, _wgslsmith_f_op_f32(-var_1), var_1))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, -1371f, var_1) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -192f, var_1)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, var_1))) - vec3<f32>(-1000f, _wgslsmith_f_op_f32(abs(-517f)), -361f))));
}

