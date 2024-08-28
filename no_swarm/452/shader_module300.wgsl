struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(12196u, 0u);

var<private> global1: array<vec2<f32>, 26>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: vec2<u32>) -> f32 {
    let var_0 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(ceil(-670f)), _wgslsmith_div_f32(265f, -1431f), 624f), _wgslsmith_clamp_vec4_u32(~u_input.b, vec4<u32>(~arg_2.x, 88713u, 1u, global0.x), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, arg_2.x), u_input.b | vec4<u32>(arg_2.x, 29263u, u_input.b.x, 0u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(1000f, _wgslsmith_f_op_f32(trunc(-657f)), _wgslsmith_f_op_f32(-1017f + -147f), _wgslsmith_f_op_f32(f32(-1f) * -843f)))), arg_0.xy, Struct_1(vec3<f32>(-1000f, _wgslsmith_f_op_f32(ceil(-392f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-714f - 1845f))), u_input.b));
    global1 = array<vec2<f32>, 26>();
    let var_1 = u_input.c;
    let var_2 = !select(select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_1.x, false, true, arg_1.x), arg_1.x), !(!select(vec4<bool>(true, true, arg_1.x, true), vec4<bool>(true, arg_1.x, true, arg_1.x), true)), !(!(!vec4<bool>(false, true, false, arg_1.x))));
    let var_3 = var_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2585f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -842f), _wgslsmith_f_op_f32(var_0.a.a.x - _wgslsmith_f_op_f32(sign(var_0.a.a.x)))))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b.x))));
}

fn func_2(arg_0: bool, arg_1: vec3<bool>, arg_2: vec4<i32>) -> f32 {
    let var_0 = arg_2.x;
    return _wgslsmith_f_op_f32(min(1564f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(553f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_2.zzy, arg_1, vec2<u32>(1u, 4294967295u)))) * 447f))));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(612f * -1174f))), _wgslsmith_f_op_f32(abs(-162f)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(309f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(false, vec3<bool>(false, false, true), vec4<i32>(u_input.a, u_input.c.x, -24369i, 34035i)))) * -2076f), all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false))) | any(vec2<bool>(false, false)))));
    var var_2 = vec3<u32>(~(~(~global0.x)), _wgslsmith_div_u32(firstTrailingBit(2747u), 4294967295u), _wgslsmith_mod_u32(~0u, _wgslsmith_dot_vec4_u32(firstLeadingBit(u_input.b), u_input.b) & 255u));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 26u)]) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(0u, 26u)]) * global1[_wgslsmith_index_u32(~global0.x, 26u)])))) + global1[_wgslsmith_index_u32(1u, 26u)]);
    var var_4 = _wgslsmith_div_f32(var_3.x, 336f);
    return Struct_2(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1758f, -1693f, var_3.x) * vec3<f32>(var_3.x, var_3.x, var_3.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(283f, -383f, -770f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1173f, var_3.x, 1524f), vec3<f32>(-1232f, var_3.x, var_3.x)))))), abs(abs(vec4<u32>(4294967295u, var_2.x, 41026u, var_2.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-227f, var_3.x, var_3.x, var_3.x) * _wgslsmith_div_vec4_f32(vec4<f32>(var_3.x, var_3.x, -1945f, var_3.x), vec4<f32>(298f, var_3.x, -1578f, -1468f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(795f, var_3.x, -2239f, var_3.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, -297f, 1000f, 2660f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(824f, var_3.x, 857f, var_3.x), vec4<f32>(var_3.x, -1037f, -526f, var_3.x), false))))), reverseBits(vec2<i32>(_wgslsmith_clamp_i32(firstTrailingBit(0i), _wgslsmith_div_i32(-2147483647i, 1i), -2147483647i), 16460i)), Struct_1(vec3<f32>(779f, 1519f, _wgslsmith_f_op_f32(func_3(u_input.c.yyy, vec3<bool>(true, true, false), ~vec2<u32>(21853u, var_2.x)))), u_input.b));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = vec4<bool>(true, true, _wgslsmith_add_i32(_wgslsmith_sub_i32(-2147483647i, -arg_0.c.x), reverseBits(-27871i)) > reverseBits(20052i), true);
    let var_1 = select(vec4<bool>(all(!select(vec3<bool>(false, false, true), var_0.wzx, var_0.wwy)), true, any(vec4<bool>(var_0.x, var_0.x, true, false)) & ((global0.x < 0u) & false), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.d.a.x), arg_0.d.a.x) != _wgslsmith_f_op_f32(floor(arg_0.b.x))), select(vec4<bool>(true, true, var_0.x & var_0.x, select(var_0.x, false, true) | any(vec4<bool>(false, false, true, var_0.x))), !(!select(vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), false)), true), !select(!select(vec4<bool>(var_0.x, true, true, false), vec4<bool>(var_0.x, var_0.x, false, var_0.x), var_0.x), select(select(vec4<bool>(false, false, var_0.x, var_0.x), vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x)), select(vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, true)), select(vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(true, true, false, var_0.x), var_0.x)), !select(vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x))));
    var_0 = var_1;
    var var_2 = Struct_2(func_1().d, vec4<f32>(_wgslsmith_f_op_f32(round(arg_0.b.x)), arg_0.a.a.x, arg_0.b.x, arg_0.d.a.x), _wgslsmith_mult_vec2_i32(arg_0.c, u_input.c.zx), func_1().d);
    let var_3 = _wgslsmith_mod_i32(arg_0.c.x, ~abs(_wgslsmith_sub_i32(-arg_0.c.x, _wgslsmith_sub_i32(var_2.c.x, 0i))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1());
    let var_1 = _wgslsmith_f_op_vec4_f32(-var_0.b);
    let var_2 = _wgslsmith_f_op_vec3_f32(select(var_0.a.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-func_1().d.a) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-384f, 2316f, -580f)) + _wgslsmith_f_op_vec3_f32(-var_1.zxw)))), true));
    var var_3 = func_1();
    var_0 = func_4(func_1());
    var var_4 = select(vec2<bool>(false, ~var_0.a.b.x <= 1u), vec2<bool>(false, true), false);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec3_u32(u_input.b.zww, ~var_0.a.b.wyy ^ var_0.d.b.wwx), 1u, -(~abs(_wgslsmith_add_vec3_i32(vec3<i32>(1i, 6937i, var_3.c.x), u_input.c.yyz))), ~(~var_0.c.x), _wgslsmith_mod_u32(func_4(Struct_2(Struct_1(vec3<f32>(-965f, var_1.x, var_3.d.a.x), u_input.b), vec4<f32>(518f, 1213f, var_1.x, var_0.b.x), u_input.c.xy, var_0.d)).d.b.x >> (15471u % 32u), ~global0.x & var_3.d.b.x));
}

