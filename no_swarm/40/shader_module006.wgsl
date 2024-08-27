struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3>;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: f32 = -1000f;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = arg_0;
    global1 = 40508i;
    global0 = array<f32, 3>();
    global1 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(reverseBits(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 50603i, -13671i), vec3<i32>(1i, var_0.a.x, arg_0.d.x)), ~16124i)), ~countOneBits(-12955i)), _wgslsmith_sub_i32(_wgslsmith_div_i32(var_0.d.x, arg_0.d.x), arg_0.d.x));
    let var_1 = var_0;
    return any(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false))) || (!all(vec4<bool>(true, true, true, false)) | true);
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = vec4<bool>(select(true, false, func_3(Struct_1(vec4<i32>(-51851i, -31965i, 14403i, -64918i), arg_0.x | -2147483647i, u_input.c.yyw, u_input.c, global0[_wgslsmith_index_u32(1u, 3u)]))), any(vec3<bool>(any(vec3<bool>(false, false, false)), true, (u_input.b.x & u_input.b.x) > ~5732u)), any(vec4<bool>(true, true, true, true)), any(select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false)), vec3<bool>(true, u_input.b.x <= u_input.b.x, true), !any(vec3<bool>(false, false, false)))));
    let var_1 = ~u_input.b;
    global1 = 14051i;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(572f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(var_1.x, 3u)])) * -734f), global0[_wgslsmith_index_u32(~1u, 3u)], _wgslsmith_f_op_f32(floor(-743f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(19356u, 3u)], -856f, 1000f, -457f), vec4<f32>(global0[_wgslsmith_index_u32(4472u, 3u)], global0[_wgslsmith_index_u32(u_input.b.x, 3u)], global0[_wgslsmith_index_u32(var_1.x, 3u)], global0[_wgslsmith_index_u32(9695u, 3u)]))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(366f, global0[_wgslsmith_index_u32(32293u, 3u)], global0[_wgslsmith_index_u32(u_input.b.x, 3u)], -492f), vec4<f32>(1033f, global0[_wgslsmith_index_u32(var_1.x, 3u)], global0[_wgslsmith_index_u32(u_input.b.x, 3u)], global0[_wgslsmith_index_u32(49990u, 3u)]))))));
    global1 = u_input.c.x | ~arg_0.x;
    return Struct_1(vec4<i32>(-1i) * -abs(_wgslsmith_mult_vec4_i32(u_input.c, u_input.c)), abs(firstTrailingBit(-6980i)), -u_input.c.xxz, max(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, 2147483647i, arg_0.x, 1i), u_input.c, u_input.c) ^ -_wgslsmith_div_vec4_i32(vec4<i32>(-1089i, u_input.a, u_input.a, arg_0.x), u_input.c), vec4<i32>(i32(-1i) * -31170i, arg_0.x, ~firstLeadingBit(2147483647i), i32(-1i) * -arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1738f * global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 22656u, 67112u, var_1.x), vec4<u32>(4294967295u, var_1.x, 7634u, 0u)), 3u)]) - global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, _wgslsmith_clamp_u32(237u, 20548u, var_1.x)), 3u)])));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 3u)]), _wgslsmith_f_op_f32(770f - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(506f, global0[_wgslsmith_index_u32(u_input.b.x, 3u)])))), arg_0))));
    let var_2 = vec3<u32>(_wgslsmith_sub_u32(0u, _wgslsmith_dot_vec2_u32(u_input.b, ~u_input.b) | 44529u), firstTrailingBit(~1u >> (u_input.b.x % 32u)), u_input.b.x);
    let var_3 = func_2(_wgslsmith_div_vec2_i32(-u_input.c.xw, vec2<i32>(reverseBits(u_input.a) << (u_input.b.x % 32u), 37477i)));
    let var_4 = Struct_1(-(~u_input.c), min(u_input.c.x, 0i), vec3<i32>(var_3.d.x, var_0, _wgslsmith_dot_vec4_i32(abs(min(vec4<i32>(8875i, -2147483647i, var_0, var_3.a.x), u_input.c)), vec4<i32>(_wgslsmith_mult_i32(0i, u_input.a), ~u_input.a, _wgslsmith_clamp_i32(2147483647i, var_0, u_input.c.x), 78099i))), func_2(~vec2<i32>(-1i, select(arg_1, 1537i, arg_0))).d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(115f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -303f), arg_2.x)))));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(false, _wgslsmith_div_i32(_wgslsmith_add_i32(-u_input.c.x, ~u_input.a), ~(-42261i)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0[_wgslsmith_index_u32(~1u, 3u)], 218f, -1154f, -393f))));
    var var_1 = abs(u_input.c.x);
    let var_2 = Struct_1(-func_1(select(select(true, true, false), true, true), ~u_input.c.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-540f, 1067f, 995f, -1090f) * vec4<f32>(var_0.e, 383f, -1492f, 579f)))).a, ~(~(~_wgslsmith_mod_i32(u_input.a, u_input.c.x))), select(vec3<i32>(~min(-20483i, 7377i), u_input.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c.x, u_input.a), var_0.d.yy) ^ reverseBits(1i)), abs(var_0.a.wzw), !vec3<bool>(false, all(vec3<bool>(false, true, true)), true)), min(select(select(vec4<i32>(-2147483647i, -2147483647i, var_0.c.x, 11770i), vec4<i32>(-32999i, var_0.d.x, 12736i, 1i), true), ~vec4<i32>(2147483647i, -10050i, u_input.a, -2147483647i), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), true)) | firstLeadingBit(-vec4<i32>(var_0.c.x, var_0.d.x, 11297i, 1i)), var_0.a), _wgslsmith_f_op_f32(1f + -1079f));
    global1 = _wgslsmith_dot_vec3_i32(vec3<i32>(-reverseBits(i32(-1i) * -1667i), 10622i << (firstTrailingBit(5329u | u_input.b.x) % 32u), var_2.a.x), vec3<i32>(-786i, -2147483647i, func_1(true, 45536i << (u_input.b.x % 32u), vec4<f32>(var_0.e, 1410f, var_2.e, var_2.e)).a.x | ~u_input.a));
    global0 = array<f32, 3>();
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -868f);
    global1 = var_2.c.x;
    let var_3 = vec3<u32>(0u >> ((1u << (~(~0u) % 32u)) % 32u), _wgslsmith_mult_u32(0u, firstLeadingBit(_wgslsmith_mult_u32(1u, 5450u))) & _wgslsmith_dot_vec2_u32(u_input.b, firstLeadingBit(vec2<u32>(u_input.b.x, u_input.b.x))), ~_wgslsmith_sub_u32(~firstLeadingBit(4641u), ~u_input.b.x | (u_input.b.x & u_input.b.x)));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_3.x, 35045u), 3u)], 2998f) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.e, -1359f), vec2<f32>(var_2.e, -450f))), vec2<f32>(-917f, -1595f), false))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(abs(1202f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~0u) | ~u_input.b.x, var_2.b, vec4<u32>(reverseBits(4294967295u), 1u, var_3.x, 4294967295u), var_0.a);
}

