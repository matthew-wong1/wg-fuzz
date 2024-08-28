struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: Struct_1,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec4<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(415f, -306f, _wgslsmith_f_op_f32(f32(-1f) * -932f), arg_0) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_0)), -1000f, _wgslsmith_f_op_f32(arg_0 - arg_0), -1926f) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1345f, arg_0, arg_0, -117f), vec4<f32>(arg_0, -391f, arg_0, arg_0))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(var_0.yz * var_0.zy);
    var var_2 = Struct_3(vec3<f32>(-1424f, var_0.x, -504f), min(~vec2<i32>(1i, u_input.a.x << (26334u % 32u)), max(~vec2<i32>(0i, u_input.a.x), countOneBits(vec2<i32>(1i, 12324i))) & ~(~vec2<i32>(8021i, u_input.a.x))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(104f + _wgslsmith_f_op_f32(min(arg_0, arg_0))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_0.x, var_1.x)))), arg_0), var_0.zwy, arg_1.x)), !vec4<bool>(all(!vec3<bool>(arg_1.x, false, false)), arg_1.x, true, arg_1.x), u_input.a.x & _wgslsmith_clamp_i32(-countOneBits(u_input.a.x), abs(firstTrailingBit(29150i)), u_input.a.x));
    let var_3 = Struct_1(1u != _wgslsmith_clamp_u32(0u, ~1u, ~44294u), var_2.e);
    var var_4 = var_3;
    return var_2.e;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: bool) -> u32 {
    var var_0 = Struct_1(~select(~1u, ~77664u, true != arg_2) <= 1u, arg_1.x << (36591u % 32u));
    var var_1 = Struct_3(arg_0, arg_1 | -vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, var_0.b, -29009i, arg_1.x), vec4<i32>(var_0.b, u_input.a.x, var_0.b, var_0.b)), select(6306i, -2147483647i, true)), arg_0, !(!(!select(vec4<bool>(false, var_0.a, true, var_0.a), vec4<bool>(true, arg_2, false, true), false))), 0i);
    var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.x, -776f, _wgslsmith_f_op_f32(-var_1.c.x)))), _wgslsmith_clamp_vec2_i32(min(vec2<i32>(60193i, -1183i), -vec2<i32>(arg_1.x, arg_1.x)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.x, 4016i, var_0.b, -1i), vec4<i32>(var_1.e, var_0.b, arg_1.x, -26092i)), arg_1.x ^ u_input.a.x), _wgslsmith_mult_vec2_i32(-vec2<i32>(5960i, -1i), _wgslsmith_add_vec2_i32(var_1.b, vec2<i32>(-29404i, 2147483647i)))) >> (~(~(~vec2<u32>(1u, 4294967295u))) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-379f * arg_0.x) - var_1.c.x), _wgslsmith_f_op_f32(f32(-1f) * -670f))), vec4<bool>(var_1.d.x, false, true, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0.x, -144f))) > _wgslsmith_f_op_f32(-698f - 699f)), ~u_input.a.x);
    var var_2 = Struct_1(true, arg_1.x);
    var var_3 = abs(var_1.b.x);
    return ~(~807u);
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    let var_0 = ~min(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1507f, 101f, 210f), vec3<f32>(-504f, -894f, -1220f)))), vec2<i32>(_wgslsmith_dot_vec2_i32(arg_0.yx, vec2<i32>(2147483647i, -1i)), func_3(-338f, vec2<bool>(true, false))), !any(vec2<bool>(true, false))), _wgslsmith_add_u32(~1u, 1u));
    var var_1 = Struct_1(select(!any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false))), true, -2147483647i < countOneBits(select(-32054i, u_input.a.x, false))), 0i);
    var_1 = Struct_1(true, _wgslsmith_add_i32(-func_3(_wgslsmith_f_op_f32(-900f * 1000f), vec2<bool>(true, true)), 9062i));
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1935f, -496f, -1563f))))), vec3<f32>(_wgslsmith_f_op_f32(-896f + -2108f), _wgslsmith_div_f32(630f, 238f), _wgslsmith_f_op_f32(step(2218f, 1801f)))))), reverseBits(u_input.a), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1877f, 324f, 612f) * vec3<f32>(-364f, 221f, -1000f))), false)), !select(select(vec4<bool>(false, false, true, true), vec4<bool>(var_1.a, var_1.a, true, true), all(vec4<bool>(true, var_1.a, false, var_1.a))), !vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), !vec4<bool>(var_1.a, var_1.a, var_1.a, true)), u_input.a.x);
    let var_3 = all(var_2.d.wx);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1040f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1077f + 487f) + _wgslsmith_f_op_f32(-var_2.c.x)) * 621f)) + _wgslsmith_f_op_f32(-var_2.c.x));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec2_i32(reverseBits(u_input.a), firstLeadingBit(u_input.a));
    var var_1 = Struct_1(all(vec4<bool>(true, true, true, true)) & true, 22263i);
    var_1 = Struct_1(all(!select(vec3<bool>(var_1.a, false, var_1.a), !vec3<bool>(var_1.a, true, var_1.a), true)), -22970i);
    var_1 = Struct_1(!var_1.a, var_0);
    var_1 = Struct_1(true, _wgslsmith_div_i32(-30011i, _wgslsmith_dot_vec2_i32(select(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, -15376i), vec2<i32>(1912i, arg_2.x)), abs(vec2<i32>(-10260i, var_1.b)), var_1.a), -(vec2<i32>(var_1.b, var_0) ^ u_input.a))));
    return Struct_1(true, -(arg_2.x << (~min(0u, 43147u) % 32u)));
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    return func_5(vec3<f32>(_wgslsmith_f_op_f32(1267f - -444f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1726f)), _wgslsmith_div_f32(944f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-2672f, 3628f)), _wgslsmith_f_op_f32(min(-1693f, 428f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1021f))), _wgslsmith_f_op_f32(func_2(vec4<i32>(~u_input.a.x, u_input.a.x, ~u_input.a.x, u_input.a.x << (16845u % 32u)))), -1000f), ~min(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 48357i, u_input.a.x)), reverseBits(vec4<i32>(-1168i, 0i, 2641i, -2147483647i))) | firstTrailingBit(min(max(vec4<i32>(-20207i, -2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(2147483647i, -5388i, 0i, u_input.a.x)), abs(vec4<i32>(u_input.a.x, 29275i, -10423i, -1i)))));
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_2) -> Struct_1 {
    return Struct_1(any(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, arg_1.c.a, arg_1.c.a), vec3<bool>(true, arg_1.c.a, arg_1.c.a), vec3<bool>(false, arg_1.c.a, arg_1.c.a)), select(vec3<bool>(arg_1.c.a, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, arg_1.c.a)))), -_wgslsmith_dot_vec2_i32(-vec2<i32>(34898i, arg_1.c.b), ~(~vec2<i32>(-2147483647i, u_input.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1729f, _wgslsmith_f_op_f32(f32(-1f) * -787f), -790f, _wgslsmith_f_op_f32(max(176f, -2140f)))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1120f), 242f, 342f, -518f)));
    var_0 = vec4<f32>(var_0.x, 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(floor(944f)))))), _wgslsmith_f_op_f32(690f * var_0.x));
    let var_1 = vec3<i32>(-24714i, firstLeadingBit(u_input.a.x), ~1i);
    let var_2 = func_6(vec4<u32>(~(~(~0u)), 1u, 67455u, 56030u), Struct_2(firstTrailingBit(~firstTrailingBit(vec2<u32>(4294967295u, 1859u))), 1i, func_1(~(~vec4<u32>(1u, 80970u, 0u, 5229u))), _wgslsmith_add_u32(~1u, firstTrailingBit(1u)), var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.zxx, var_0.zyw, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1013f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(438f * 1000f))), _wgslsmith_f_op_f32(-1383f * _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
}

