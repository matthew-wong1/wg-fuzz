struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec2<i32>,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: u32,
    b: vec3<f32>,
    c: Struct_2,
    d: vec2<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: vec2<bool>) -> i32 {
    var var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(arg_1.d.a.x, -7146i | (i32(-1i) * -arg_1.b.c.c.x), abs(select(arg_1.d.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, arg_1.d.a.x), vec2<i32>(0i, arg_1.b.c.e)), all(vec2<bool>(arg_2.x, true))))), -_wgslsmith_sub_vec3_i32(arg_1.d.a, vec3<i32>(19738i, select(arg_1.d.a.x, arg_1.b.c.c.x, true), 1i)));
    let var_1 = arg_2.x;
    let var_2 = arg_1.d.a;
    var var_3 = Struct_2(reverseBits(~(arg_1.b.c.a ^ arg_0.x) & arg_0.x), !(!arg_2.x || all(!vec4<bool>(arg_2.x, false, true, arg_1.b.c.b))), min(~var_2.zy, var_2.zz), _wgslsmith_f_op_f32(max(arg_1.d.b, -1725f)), arg_1.d.a.x);
    var var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-555f, 688f)));
    return -2147483647i;
}

fn func_2(arg_0: u32) -> vec3<bool> {
    let var_0 = 0u << (~(~arg_0) % 32u);
    var var_1 = Struct_1(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(select(vec3<i32>(2407i, -44104i, 19993i), vec3<i32>(2147483647i, 1i, 2147483647i), vec3<bool>(false, true, true)) & ~vec3<i32>(1i, 0i, -2147483647i), countOneBits(vec3<i32>(1760i, 1i, 5534i))), -vec3<i32>(1i, 2147483647i, ~(-1i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1868f * 568f), _wgslsmith_div_f32(-601f, 881f)));
    var_1 = Struct_1(_wgslsmith_mod_vec3_i32(-_wgslsmith_clamp_vec3_i32(~var_1.a, vec3<i32>(1i, 2368i, var_1.a.x), vec3<i32>(-14390i, -2147483647i, var_1.a.x)), _wgslsmith_sub_vec3_i32(min(-vec3<i32>(2147483647i, 0i, 0i), -var_1.a), vec3<i32>(~0i, abs(var_1.a.x), func_3(u_input.c, Struct_4(false, Struct_3(var_0, vec3<f32>(var_1.b, -1869f, 173f), Struct_2(1u, true, var_1.a.yx, -158f, var_1.a.x), vec2<f32>(var_1.b, -2397f)), vec4<f32>(var_1.b, var_1.b, -722f, var_1.b), Struct_1(var_1.a, var_1.b)), vec2<bool>(true, true))))), var_1.b);
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(var_1.b, _wgslsmith_div_f32(924f, 1937f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.b * var_1.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1.b, -1627f), _wgslsmith_f_op_f32(-var_1.b))) * _wgslsmith_f_op_f32(round(-1779f)))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.b, var_1.b, -857f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1375f, var_1.b, var_1.b))) + vec3<f32>(var_1.b, -574f, var_1.b)))))));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1593f, var_1.b) + vec3<f32>(var_1.b, var_1.b, var_1.b)))))));
    return !select(vec3<bool>(true, all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), false)), select(false, false, false)), vec3<bool>(true, true, true), select(true, !all(vec2<bool>(false, true)), !all(vec4<bool>(true, true, false, false))));
}

fn func_1() -> vec4<f32> {
    var var_0 = func_2(1u << ((_wgslsmith_mod_u32(u_input.b, u_input.a) >> (_wgslsmith_clamp_u32(48169u, reverseBits(1u), u_input.b) % 32u)) % 32u));
    let var_1 = !vec3<bool>(var_0.x, all(vec4<bool>(any(vec4<bool>(var_0.x, var_0.x, true, var_0.x)), var_0.x, func_2(u_input.c.x).x, true)), var_0.x && true);
    var_0 = select(!func_2(u_input.c.x), !func_2(abs(_wgslsmith_mult_u32(u_input.c.x, 433u))), true);
    let var_2 = Struct_1(firstTrailingBit(vec3<i32>(1i, abs(13866i), abs(-25936i))), 168f);
    var_0 = !var_1;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b, _wgslsmith_f_op_f32(-867f + _wgslsmith_f_op_f32(abs(var_2.b))), _wgslsmith_f_op_f32(ceil(var_2.b)), var_2.b) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.b, var_2.b, -253f, var_2.b), vec4<f32>(1406f, var_2.b, var_2.b, var_2.b)))))) - vec4<f32>(-111f, _wgslsmith_f_op_f32(round(1379f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-2496f + var_2.b)))), var_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1579f, 1374f, 244f, 437f)))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(746f, 1572f, 277f, -1224f) + vec4<f32>(1000f, -307f, -139f, 775f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-853f, -1000f, -113f, -420f))), _wgslsmith_f_op_vec4_f32(func_1()))));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 32774i), -vec3<i32>(1i, -2147483647i, -29133i), firstTrailingBit(vec3<i32>(-2147483647i, 3542i, 0i)) ^ select(vec3<i32>(-26354i, 1i, 18904i), vec3<i32>(2147483647i, -29397i, -7031i), vec3<bool>(false, false, true))), ~(~vec3<i32>(1i, 1i, 1i))), var_0.xw);
}

