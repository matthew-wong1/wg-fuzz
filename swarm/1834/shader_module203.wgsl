struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(127f, false, 49421u, 0i), Struct_1(-139f, false, 0u, 16973i), Struct_1(595f, true, 75279u, i32(-2147483648)), Struct_1(-224f, true, 4294967295u, 16192i), Struct_1(-119f, true, 0u, 23266i), Struct_1(-971f, true, 26587u, -58260i), Struct_1(-748f, false, 0u, 5537i), Struct_1(1232f, true, 0u, 18777i), Struct_1(-921f, true, 0u, 1i), Struct_1(667f, true, 0u, -22028i), Struct_1(-1000f, false, 1u, i32(-2147483648)), Struct_1(214f, false, 4294967295u, -50062i), Struct_1(-1402f, true, 1u, 0i), Struct_1(822f, false, 1u, 35789i), Struct_1(604f, false, 4294967295u, 31687i), Struct_1(578f, false, 1386u, 39167i), Struct_1(523f, true, 31172u, 2147483647i), Struct_1(-1000f, false, 1u, -29080i), Struct_1(315f, true, 0u, i32(-2147483648)), Struct_1(-1000f, false, 0u, i32(-2147483648)), Struct_1(-831f, false, 62204u, 1i), Struct_1(680f, false, 13303u, 12589i), Struct_1(-1875f, false, 4294967295u, -1i), Struct_1(-1612f, false, 1u, -28253i), Struct_1(1150f, true, 1u, i32(-2147483648)), Struct_1(-1000f, true, 47687u, 2147483647i), Struct_1(1311f, false, 0u, 15747i), Struct_1(1743f, false, 0u, -1i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    return 290f;
}

fn func_3() -> vec2<i32> {
    var var_0 = ~_wgslsmith_add_u32(abs(1u), min(~u_input.d, 1u));
    let var_1 = global0[_wgslsmith_index_u32(~u_input.c, 7u)];
    var var_2 = _wgslsmith_f_op_f32(max(571f, _wgslsmith_f_op_f32(-332f - var_1.a)));
    var var_3 = var_1.c;
    let var_4 = (countOneBits(firstTrailingBit(0u)) & u_input.e) << (~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(max(vec2<u32>(0u, 4294967295u), vec2<u32>(var_1.c, 1u)), vec2<u32>(4294967295u, 4294967295u)), 1547u ^ u_input.e) % 32u);
    return firstLeadingBit(reverseBits(vec2<i32>(_wgslsmith_add_i32(1i, 9651i), ~4795i) << (abs(max(vec2<u32>(44909u, 1u), vec2<u32>(39128u, var_4))) % vec2<u32>(32u))));
}

fn func_2(arg_0: u32) -> vec4<bool> {
    let var_0 = global0[_wgslsmith_index_u32(0u, 7u)];
    let var_1 = _wgslsmith_add_vec2_i32(vec2<i32>(66332i, _wgslsmith_add_i32(var_0.d, -30082i)) | (abs(vec2<i32>(var_0.d, u_input.a)) | ~(~vec2<i32>(2147483647i, var_0.d))), _wgslsmith_div_vec2_i32(func_3(), vec2<i32>(u_input.b >> (1u % 32u), ~(-1i))) << (countOneBits(min(vec2<u32>(0u, 32031u), firstTrailingBit(vec2<u32>(u_input.e, var_0.c)))) % vec2<u32>(32u)));
    global1 = array<Struct_1, 28>();
    let var_2 = min(0u, 1u);
    var var_3 = Struct_1(var_0.a, false, arg_0, u_input.b);
    return !select(!select(!vec4<bool>(true, true, true, var_0.b), select(vec4<bool>(var_3.b, true, true, var_3.b), vec4<bool>(false, true, true, true), vec4<bool>(true, var_0.b, var_3.b, false)), vec4<bool>(false, var_0.b, true, var_3.b)), vec4<bool>(false, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, 3969u), vec2<u32>(1u, 1u)) != u_input.c, true, !var_0.b != var_0.b), false);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 28>();
    var var_0 = 60690u;
    var var_1 = select(!vec2<bool>(false, _wgslsmith_f_op_f32(ceil(-1000f)) >= _wgslsmith_f_op_f32(func_1(1u, global1[_wgslsmith_index_u32(u_input.c, 28u)], Struct_1(1109f, false, 4294967295u, -33641i)))), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, u_input.d >= 31527u), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))), vec2<bool>(true, true)));
    let var_2 = vec4<bool>(all(select(!select(vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(true, false, false, false)), select(func_2(31051u), select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, true, true, var_1.x), vec4<bool>(false, var_1.x, var_1.x, var_1.x)), any(vec3<bool>(var_1.x, var_1.x, false))), vec4<bool>(any(vec3<bool>(var_1.x, false, false)), var_1.x, false, func_2(20749u).x))), func_2(0u).x, !(u_input.a < u_input.a) & true, select(any(vec3<bool>(func_2(40277u).x, var_1.x, var_1.x)), var_1.x, var_1.x || true));
    let var_3 = global0[_wgslsmith_index_u32(u_input.d, 7u)];
    var var_4 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2386f), var_1.x, reverseBits(_wgslsmith_sub_u32(_wgslsmith_mult_u32(var_3.c, var_3.c), ~4294967295u) & _wgslsmith_div_u32(~var_3.c, 4294967295u)), var_3.d);
    var var_5 = global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(var_4.c, var_3.c, var_4.c), 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, vec2<f32>(907f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -673f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -411f))))), min(var_4.c, 1u));
}

