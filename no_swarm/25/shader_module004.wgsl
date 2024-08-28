struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32 = 360f;

var<private> global2: array<Struct_1, 7>;

var<private> global3: array<vec4<i32>, 22> = array<vec4<i32>, 22>(vec4<i32>(1i, 2147483647i, -2694i, -24024i), vec4<i32>(-1i, 0i, -9337i, 51218i), vec4<i32>(-12186i, 41569i, 1i, 1i), vec4<i32>(15811i, i32(-2147483648), -5271i, 0i), vec4<i32>(0i, -4315i, i32(-2147483648), 1i), vec4<i32>(1i, 23454i, 1i, -8505i), vec4<i32>(1i, i32(-2147483648), 0i, -1i), vec4<i32>(-1i, -46496i, 0i, 2147483647i), vec4<i32>(46470i, -30780i, 0i, 60390i), vec4<i32>(2147483647i, 1i, 1i, 2147483647i), vec4<i32>(-3628i, 0i, -46313i, 7034i), vec4<i32>(2147483647i, 40030i, -3309i, 0i), vec4<i32>(2147483647i, -1i, -31307i, 9121i), vec4<i32>(3079i, 38049i, 2147483647i, 22862i), vec4<i32>(0i, 12689i, 1i, -33890i), vec4<i32>(-1i, -1i, 7224i, -1i), vec4<i32>(0i, 0i, -1i, -10433i), vec4<i32>(44875i, -1i, 2147483647i, 37232i), vec4<i32>(0i, 2147483647i, 38579i, -1i), vec4<i32>(28141i, 0i, -8891i, 2147483647i), vec4<i32>(48944i, 33860i, i32(-2147483648), 13100i), vec4<i32>(-1i, -1i, -8931i, 22472i));

var<private> global4: array<i32, 13> = array<i32, 13>(i32(-2147483648), 1099i, 0i, 0i, -16038i, 56106i, i32(-2147483648), 0i, -5933i, 11871i, -10418i, -19975i, i32(-2147483648));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> Struct_2 {
    global4 = array<i32, 13>();
    global2 = array<Struct_1, 7>();
    let var_0 = Struct_1(75647u);
    let var_1 = Struct_1(1u);
    let var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-461f, 601f)) + _wgslsmith_f_op_f32(f32(-1f) * -392f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-444f * _wgslsmith_f_op_f32(sign(-247f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, 1590f))))), vec2<f32>(_wgslsmith_f_op_f32(sign(289f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -101f))) + -543f)), vec2<bool>(true, true)));
    return Struct_2(-(~_wgslsmith_sub_vec2_i32(u_input.b.yx, vec2<i32>(u_input.a, u_input.a)) | ~(vec2<i32>(u_input.a, global4[_wgslsmith_index_u32(var_1.a, 13u)]) >> (u_input.c.yy % vec2<u32>(32u)))));
}

fn func_3() -> i32 {
    var var_0 = global2[_wgslsmith_index_u32(~4294967295u, 7u)];
    var var_1 = abs(u_input.b.x) << ((global0.a ^ ~(4294967295u << ((var_0.a | global0.a) % 32u))) % 32u);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1109f, 1068f), 1f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(190f, -646f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-815f, -217f)))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(209f, 1000f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1248f, 988f))))))));
    var var_3 = func_2();
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1531f))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(var_2.x + var_2.x));
    return reverseBits(~var_3.a.x);
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    var var_0 = func_2();
    global4 = array<i32, 13>();
    var var_1 = _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(~(~global3[_wgslsmith_index_u32(~global0.a, 22u)]), global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(16577u, u_input.c.x), 22u)]), global3[_wgslsmith_index_u32(firstLeadingBit(firstTrailingBit(~38385u) >> (~u_input.c.x % 32u)), 22u)]);
    let var_2 = vec3<i32>(6563i, 10279i, func_3());
    var var_3 = vec3<i32>(reverseBits(~(~(~u_input.a))), arg_0.x, var_0.a.x);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(898f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(trunc(879f))), select(any(vec4<bool>(true, true, true, false)), select(true, false, true), true))))), _wgslsmith_f_op_f32(-2231f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(861f * -1298f))))), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(577f - 1439f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1812f * 1264f)))));
    let var_1 = Struct_1(global0.a);
    let var_2 = vec2<f32>(-158f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x * -696f), _wgslsmith_f_op_f32(1318f + -986f))))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, var_2.x, true & (any(vec4<bool>(true, true, false, true)) && (u_input.a < u_input.b.x)))));
    let var_3 = Struct_1(_wgslsmith_sub_u32(43511u, _wgslsmith_sub_u32(min(var_1.a, global0.a | global0.a), _wgslsmith_clamp_u32(var_1.a, firstLeadingBit(6660u), global0.a & 1u))));
    var var_4 = func_1(-abs(-u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.a, global3[_wgslsmith_index_u32(reverseBits(0u), 22u)]);
}

