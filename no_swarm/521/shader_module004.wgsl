struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32> = array<f32, 32>(1238f, -516f, 111f, 1309f, 765f, 1049f, 718f, 770f, 765f, -223f, -560f, -190f, 417f, 811f, -1911f, -406f, -1496f, -1840f, 145f, 1285f, -1097f, 2788f, -1547f, 1000f, -2370f, 1373f, -319f, 131f, -1016f, -501f, 118f, -259f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<f32>) -> bool {
    var var_0 = Struct_2(arg_0.x, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.x, arg_0.x)) * _wgslsmith_f_op_f32(1170f * -1000f))), -1770f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(arg_0.x)))))), vec2<bool>(false, true)));
    let var_1 = u_input.c;
    var var_2 = arg_0.yyw;
    let var_3 = vec3<u32>(u_input.a, u_input.a & ~(min(u_input.a, u_input.a) << (u_input.a % 32u)), max(~0u, firstTrailingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)))));
    var var_4 = vec2<bool>(_wgslsmith_div_f32(367f, _wgslsmith_f_op_f32(-arg_0.x)) == var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(924f, -435f)) <= _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(var_0.a * -359f)));
    return var_0.b.d.x || select(true, var_0.b.d.x, var_4.x);
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: vec2<u32>) -> vec4<i32> {
    var var_0 = vec3<bool>(!(!func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(441f, 1031f, arg_1.a, -610f) * vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], -2179f, -1472f, arg_1.b.b)))), !arg_1.b.d.x, any(!(!vec3<bool>(arg_1.b.d.x, arg_1.b.d.x, arg_1.b.d.x))));
    let var_1 = select(vec4<bool>((arg_1.b.d.x | (var_0.x || arg_1.b.d.x)) || !(!var_0.x), any(select(!arg_1.b.d, arg_1.b.d, arg_1.b.d)), false, true), select(vec4<bool>(!arg_1.b.d.x, global0[_wgslsmith_index_u32(select(arg_2.x, arg_2.x, var_0.x), 32u)] >= _wgslsmith_f_op_f32(abs(arg_1.a)), var_0.x, false), !select(!vec4<bool>(var_0.x, false, arg_1.b.d.x, false), select(vec4<bool>(true, arg_1.b.d.x, var_0.x, false), vec4<bool>(false, false, false, false), vec4<bool>(false, arg_1.b.d.x, true, var_0.x)), !vec4<bool>(false, true, var_0.x, true)), all(vec3<bool>(false, var_0.x, any(vec4<bool>(false, var_0.x, arg_1.b.d.x, var_0.x))))), vec4<bool>(~_wgslsmith_dot_vec2_u32(arg_2, vec2<u32>(arg_2.x, 1u)) < arg_2.x, min(1u, firstTrailingBit(arg_2.x)) < ((46905u | u_input.a) & arg_2.x), var_0.x && false, (true && var_0.x) && (-u_input.c.x != -u_input.d)));
    return _wgslsmith_clamp_vec4_i32(reverseBits(firstTrailingBit(abs(vec4<i32>(arg_0, -33010i, arg_0, 96556i)))) ^ select(firstTrailingBit(abs(vec4<i32>(arg_0, u_input.c.x, arg_0, 5345i))), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.c.x, u_input.c.x, 39495i), -vec4<i32>(-12780i, 53467i, u_input.e, arg_0)), !vec4<bool>(false, var_0.x, false, arg_1.b.d.x)), ~(vec4<i32>(-1i) * -vec4<i32>(8008i, 10555i, arg_0, u_input.e)) >> (vec4<u32>(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, arg_2.x, u_input.a, 0u), vec4<u32>(arg_2.x, arg_2.x, 0u, 77914u))), arg_2.x, ~(~0u), ~84149u) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_div_i32(~u_input.d, arg_0), arg_0, -8086i, -1i) | _wgslsmith_mod_vec4_i32(~(~vec4<i32>(u_input.e, u_input.c.x, 2147483647i, 36908i)), ~vec4<i32>(-1i, -36081i, u_input.c.x, 12361i) ^ (vec4<i32>(-71478i, -2147483647i, 29839i, -23654i) | vec4<i32>(arg_0, u_input.d, arg_0, 2147483647i))));
}

fn func_1(arg_0: f32, arg_1: vec3<f32>) -> vec4<i32> {
    let var_0 = vec3<bool>(true, select(true, true, !any(vec4<bool>(true, true, true, true))), true);
    let var_1 = all(vec3<bool>(true, true, select(var_0.x && true, true, false) || all(select(vec3<bool>(var_0.x, false, false), var_0, vec3<bool>(true, var_0.x, true)))));
    let var_2 = _wgslsmith_mult_u32(max(_wgslsmith_mod_u32(0u, u_input.a), 0u), ~(~u_input.a));
    var var_3 = u_input.e;
    let var_4 = arg_1.x;
    return firstLeadingBit(_wgslsmith_div_vec4_i32(-vec4<i32>(~(-6329i), 44721i, u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.e, 2147483647i, -17295i), vec4<i32>(36172i, 0i, u_input.d, u_input.d))), select(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, 1i, -19559i, u_input.d), vec4<i32>(u_input.d, 5393i, 22024i, u_input.e)), ~vec4<i32>(5064i, -40961i, -1407i, u_input.c.x)), reverseBits(func_2(2147483647i, Struct_2(var_4, Struct_1(-423f, arg_0, -628f, var_0.xy)), vec2<u32>(var_2, var_2))), select(select(vec4<bool>(var_0.x, false, var_1, false), vec4<bool>(var_1, var_0.x, var_1, false), vec4<bool>(var_0.x, var_1, false, var_0.x)), !vec4<bool>(false, var_0.x, var_1, var_0.x), 136f <= var_4))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 32>();
    var var_0 = -((-select(vec4<i32>(2147483647i, u_input.c.x, -2147483647i, u_input.c.x), vec4<i32>(9543i, 1i, u_input.b, -2147483647i), vec4<bool>(false, true, true, true)) >> (~vec4<u32>(u_input.a, 89281u, u_input.a, u_input.a) % vec4<u32>(32u))) | ((-vec4<i32>(u_input.b, -57265i, u_input.c.x, u_input.c.x) >> (vec4<u32>(887u, u_input.a, 0u, 0u) % vec4<u32>(32u))) & func_1(-494f, _wgslsmith_f_op_vec3_f32(vec3<f32>(-486f, global0[_wgslsmith_index_u32(u_input.a, 32u)], global0[_wgslsmith_index_u32(u_input.a, 32u)]) - vec3<f32>(499f, -261f, -2247f)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a, 19994u)), vec2<u32>(1u, u_input.a)) & _wgslsmith_dot_vec3_u32(vec3<u32>(34301u, u_input.a, 75854u), max(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(14951u, 0u, 1u))), 32u)])) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 62418u, 4294967295u, 0u), vec4<u32>(u_input.a, 0u, u_input.a, u_input.a)), 32u)]));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(max(max(u_input.a, u_input.a), countOneBits(u_input.a)), 32u)] * _wgslsmith_f_op_f32(round(-461f))) - -1141f), -214f));
    let var_3 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32((~u_input.a ^ max(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), max(u_input.a, u_input.a))) & ~1u, 32u)], _wgslsmith_f_op_f32(trunc(191f)));
}

