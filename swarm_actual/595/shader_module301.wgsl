struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<bool>,
    d: vec4<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 7> = array<vec4<f32>, 7>(vec4<f32>(-142f, 358f, 108f, 1573f), vec4<f32>(-297f, 106f, -696f, -1509f), vec4<f32>(-972f, -486f, 396f, 206f), vec4<f32>(-2150f, 509f, -861f, 2160f), vec4<f32>(-777f, -1117f, 1628f, 250f), vec4<f32>(1481f, -167f, -993f, 106f), vec4<f32>(-1000f, -288f, -685f, 956f));

var<private> global1: array<vec2<bool>, 30>;

var<private> global2: u32 = 0u;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_1) -> i32 {
    var var_0 = all(!select(vec4<bool>(!arg_2.c.x, arg_2.c.x, true, true), !vec4<bool>(arg_2.c.x, arg_2.c.x, true, arg_2.c.x), !select(vec4<bool>(false, arg_2.c.x, true, arg_2.c.x), vec4<bool>(false, arg_2.c.x, false, true), arg_2.c.x)));
    var_0 = select(true & !(!all(vec3<bool>(true, true, true))), true, all(select(select(vec3<bool>(true, true, true), !vec3<bool>(arg_2.c.x, arg_2.c.x, true), arg_2.c.x & arg_2.c.x), select(!vec3<bool>(true, arg_2.c.x, arg_2.c.x), select(vec3<bool>(false, false, arg_2.c.x), vec3<bool>(arg_2.c.x, arg_2.c.x, arg_2.c.x), vec3<bool>(false, arg_2.c.x, true)), !vec3<bool>(arg_2.c.x, arg_2.c.x, true)), select(!vec3<bool>(arg_2.c.x, arg_2.c.x, true), select(vec3<bool>(true, false, arg_2.c.x), vec3<bool>(arg_2.c.x, false, arg_2.c.x), vec3<bool>(true, false, arg_2.c.x)), 2147483647i <= arg_2.b))));
    var var_1 = Struct_1(~_wgslsmith_mult_i32(24727i, _wgslsmith_sub_i32(38787i, abs(1i))), -u_input.d, global1[_wgslsmith_index_u32(arg_0, 30u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(arg_2.d - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.e, -1601f, -765f, 365f)))))), arg_2.e);
    let var_2 = select(abs(min(min(~u_input.c, vec3<u32>(1u, arg_0, u_input.e)), ~select(u_input.c, u_input.c, vec3<bool>(var_1.c.x, false, false)))), u_input.c, select(select(vec3<bool>(true, var_1.c.x, true), select(select(vec3<bool>(var_1.c.x, true, true), vec3<bool>(var_1.c.x, false, true), true), select(vec3<bool>(var_1.c.x, arg_2.c.x, arg_2.c.x), vec3<bool>(arg_2.c.x, var_1.c.x, true), vec3<bool>(false, true, arg_2.c.x)), vec3<bool>(false, arg_2.c.x, false)), true), select(!select(vec3<bool>(false, var_1.c.x, false), vec3<bool>(true, var_1.c.x, true), arg_2.c.x), !vec3<bool>(false, true, arg_2.c.x), all(vec4<bool>(arg_2.c.x, false, var_1.c.x, var_1.c.x)) | any(vec2<bool>(arg_2.c.x, true))), select(select(select(vec3<bool>(true, var_1.c.x, true), vec3<bool>(arg_2.c.x, var_1.c.x, arg_2.c.x), vec3<bool>(arg_2.c.x, false, false)), select(vec3<bool>(var_1.c.x, arg_2.c.x, true), vec3<bool>(false, true, var_1.c.x), vec3<bool>(arg_2.c.x, true, false)), vec3<bool>(true, arg_2.c.x, var_1.c.x)), select(vec3<bool>(arg_2.c.x, true, var_1.c.x), vec3<bool>(false, var_1.c.x, arg_2.c.x), any(global1[_wgslsmith_index_u32(4294967295u, 30u)])), var_1.c.x)));
    let var_3 = arg_2;
    return (~(-2147483647i) & ~arg_2.b) | ((32827i >> (_wgslsmith_sub_u32(reverseBits(var_2.x), _wgslsmith_div_u32(u_input.c.x, arg_1.x)) % 32u)) & _wgslsmith_dot_vec4_i32(u_input.b, u_input.b));
}

fn func_2() -> vec3<i32> {
    global0 = array<vec4<f32>, 7>();
    let var_0 = Struct_1(u_input.d, -(~2147483647i), vec2<bool>(all(vec2<bool>(true, false)), select(any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), false, false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(global0[_wgslsmith_index_u32(51076u, 7u)], vec4<f32>(125f, -1000f, -107f, -393f)))))), _wgslsmith_div_f32(509f, 866f));
    return vec3<i32>(countOneBits(_wgslsmith_dot_vec3_i32(~(vec3<i32>(-2147483647i, var_0.b, -2147483647i) ^ u_input.b.ywx), min(-vec3<i32>(var_0.b, 0i, 0i), u_input.b.xwx))), reverseBits(u_input.b.x), -4171i & abs(func_3(firstTrailingBit(33188u), u_input.c.zz, var_0)));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: vec3<i32>, arg_3: f32) -> Struct_1 {
    global2 = _wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(arg_0), _wgslsmith_clamp_u32(arg_0 >> (u_input.c.x % 32u), 23792u, abs(4294967295u)), u_input.c.x), u_input.c) & 22157u;
    let var_0 = vec2<i32>(firstLeadingBit(firstTrailingBit(~(~arg_2.x))), -50204i);
    let var_1 = Struct_1(-7127i, countOneBits((func_2().x >> (max(u_input.c.x, u_input.e) % 32u)) << (~(u_input.c.x | 3243u) % 32u)), !global1[_wgslsmith_index_u32(max(~countOneBits(u_input.c.x), 45580u), 30u)], _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_3 * -2085f), 959f, _wgslsmith_div_f32(arg_3, -1171f), _wgslsmith_f_op_f32(arg_3 + _wgslsmith_f_op_f32(floor(-244f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, arg_3, -562f, 2806f)) + vec4<f32>(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_div_f32(arg_3, -786f), arg_3, _wgslsmith_f_op_f32(-arg_3)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1105f) - 642f));
    global0 = array<vec4<f32>, 7>();
    var var_2 = _wgslsmith_clamp_u32(0u, 1u, reverseBits(1u));
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec4<f32>, arg_3: f32) -> vec4<i32> {
    let var_0 = func_4(_wgslsmith_mod_u32(_wgslsmith_add_u32(~u_input.c.x, _wgslsmith_clamp_u32(~64226u, abs(4294967295u), ~u_input.c.x)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(min(u_input.c, u_input.c), u_input.c), 4294967295u, ~select(u_input.c.x, u_input.e, true))), all(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, u_input.e), u_input.c.xx)), 30u)]), min(vec3<i32>(~68977i & (arg_0.b ^ -4989i), countOneBits(countOneBits(arg_0.a)), -7622i), arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.x)))));
    var var_1 = var_0.b;
    let var_2 = Struct_1(min(func_2().x, ~countOneBits(1i)), 2147483647i, var_0.c, vec4<f32>(_wgslsmith_f_op_f32(arg_0.d.x + arg_2.x), -1696f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -291f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.x - -500f) - _wgslsmith_f_op_f32(arg_3 - 610f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(751f)) + arg_2.x)), _wgslsmith_f_op_f32(-arg_2.x), all(!select(vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x, arg_0.c.x), vec4<bool>(arg_0.c.x, arg_0.c.x, var_0.c.x, false), vec4<bool>(arg_0.c.x, arg_0.c.x, false, var_0.c.x))))));
    global2 = _wgslsmith_clamp_u32(109921u, (u_input.c.x & ~(~0u)) & u_input.e, ~(~countOneBits(u_input.c.x)));
    var var_3 = var_0;
    return u_input.b;
}

fn func_1(arg_0: f32, arg_1: vec2<i32>) -> i32 {
    var var_0 = func_5(func_4(29341u, select(all(vec4<bool>(true, true, true, true)), true, true), ~(-func_2()), 615f), vec3<i32>(-1i) * -select(vec3<i32>(arg_1.x, u_input.b.x, u_input.b.x), vec3<i32>(23049i, 2230i, 1i), true), _wgslsmith_f_op_vec4_f32(min(global0[_wgslsmith_index_u32(abs(select(u_input.e, u_input.c.x, true)) >> (select(firstLeadingBit(u_input.e), u_input.e, true) % 32u), 7u)], _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(237f, arg_0, 614f, arg_0) - global0[_wgslsmith_index_u32(u_input.e, 7u)])), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(4294967295u, u_input.e, u_input.c.x)), 7u)])))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))))));
    global0 = array<vec4<f32>, 7>();
    var var_1 = func_4(~u_input.c.x, any(select(vec3<bool>(true, any(vec4<bool>(true, false, true, true)), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))), max(~_wgslsmith_div_vec3_i32(min(vec3<i32>(2147483647i, u_input.d, 54034i), var_0.wxz), func_2()), vec3<i32>(func_3(1u, vec2<u32>(1u, u_input.e), Struct_1(var_0.x, var_0.x, vec2<bool>(true, true), global0[_wgslsmith_index_u32(u_input.e, 7u)], arg_0)), u_input.a.x, -21739i)), -1487f);
    var var_2 = abs(-43855i);
    let var_3 = _wgslsmith_add_vec2_u32(~u_input.c.xz, u_input.c.xy);
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(u_input.b.x, func_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1198f)), _wgslsmith_f_op_f32(round(227f)))))), -vec2<i32>(u_input.d, u_input.a.x)), 1038i, u_input.a.x);
    var var_1 = i32(-1i) * -1i;
    let var_2 = _wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.d, u_input.d, u_input.b.x, -2147483647i), u_input.b, ~vec4<i32>(abs(min(u_input.a.x, 0i)), _wgslsmith_mult_i32(-u_input.b.x, u_input.a.x), u_input.a.x, abs(var_0.x) ^ -8806i));
    let var_3 = func_4(27302u, _wgslsmith_f_op_f32(1738f + -989f) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-501f, _wgslsmith_f_op_f32(step(322f, -560f)))) - _wgslsmith_f_op_f32(1243f + _wgslsmith_f_op_f32(f32(-1f) * -1234f))), -(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, 1i, u_input.b.x), ~vec3<i32>(17378i, u_input.d, -50396i)) & var_2.zxw), 1000f).c.x;
    let var_4 = Struct_1(_wgslsmith_div_i32(~u_input.d, 848i), _wgslsmith_dot_vec2_i32(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(-25017i, -67188i), func_2().zx)), u_input.b.zx), !vec2<bool>(select(false, 1u >= u_input.e, true), var_3), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-524f, 949f)) * _wgslsmith_f_op_f32(-750f * -1283f)), _wgslsmith_div_f32(-676f, _wgslsmith_f_op_f32(f32(-1f) * -1033f)), -2205f, 1315f) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(global0[_wgslsmith_index_u32(57451u, 7u)]))), global0[_wgslsmith_index_u32(~max(u_input.e, 4294967295u), 7u)]))), 109f);
    let var_5 = _wgslsmith_div_i32(-95713i, func_3(abs(u_input.e), u_input.c.xz, func_4(~1u, false, var_2.xzx, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.e), _wgslsmith_div_f32(-361f, var_4.d.x)))));
    global1 = array<vec2<bool>, 30>();
    global1 = array<vec2<bool>, 30>();
    let var_6 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_4.d.x))), var_4.d.x) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.d.x, 231f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(u_input.e), _wgslsmith_mod_vec4_u32(~select(vec4<u32>(22181u, 18u, 45691u, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(42304u, u_input.c.x, u_input.e, u_input.e), vec4<u32>(u_input.c.x, 22926u, u_input.e, u_input.e), vec4<u32>(u_input.c.x, 49736u, 4127u, 4294967295u)), any(vec2<bool>(true, var_3))), max(firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, u_input.e, u_input.e), vec4<u32>(u_input.c.x, u_input.c.x, 40658u, 4294967295u), vec4<u32>(36715u, u_input.e, u_input.c.x, u_input.e))), vec4<u32>(~0u, 0u, _wgslsmith_mult_u32(76879u, 0u), 119290u))), 1000f, select(func_5(func_4(~u_input.e, u_input.d != 12035i, func_5(Struct_1(2147483647i, 1i, var_4.c, var_4.d, -611f), var_2.xyz, var_4.d, -172f).zyy, var_6.x), reverseBits(var_0.wyw) & (u_input.b.xxz | var_0.yzy), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-681f, 102f, 1373f, 2202f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(829f, -515f))), u_input.b, vec4<bool>(true, true || (true & var_4.c.x), !select(var_4.c.x, false, false), true)), _wgslsmith_clamp_i32(-7792i, u_input.d, var_2.x) | -1i);
}

