struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: vec3<i32>) -> vec2<i32> {
    let var_0 = abs(firstTrailingBit(vec4<u32>(~arg_1.x << (_wgslsmith_dot_vec3_u32(arg_1.yzy, arg_1.yzz) % 32u), max(4294967295u, ~arg_1.x), global0[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(3647u, 8u)]), 8u)], arg_1.x)));
    global0 = array<u32, 8>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(211f, 384f, true))))), -906f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-840f)) + _wgslsmith_f_op_f32(f32(-1f) * -918f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(915f)))))));
    let var_2 = 1i;
    let var_3 = var_1;
    return select(~_wgslsmith_div_vec2_i32(-arg_2.xx ^ -u_input.a, vec2<i32>(arg_0.x, -u_input.a.x)), _wgslsmith_div_vec2_i32(arg_0, ~(-u_input.a)), !select(vec2<bool>(true, true), vec2<bool>(true, any(vec3<bool>(true, true, false))), vec2<bool>(true, true)));
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 24036u, global0[_wgslsmith_index_u32(25906u, 8u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9893u, 8u)], 8u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(88657u, 8u)], 8u)], global0[_wgslsmith_index_u32(17430u, 8u)])), max(global0[_wgslsmith_index_u32(4294967295u, 8u)], 1u)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23245u, 8u)], 8u)], _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20725u, 8u)], 8u)], 8u)], 8u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 8u)], 8u)] << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17447u, 8u)], 8u)], 8u)], 8u)] % 32u))) ^ vec3<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(19382u, 11290u), vec2<u32>(30963u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 8u)], 8u)]))), 8u)], 8u)], 8u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~3545u, 8u)], 8u)]), _wgslsmith_div_vec3_u32(firstLeadingBit(~select(vec3<u32>(87707u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17404u, 8u)], 8u)], global0[_wgslsmith_index_u32(37632u, 8u)]), vec3<u32>(global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(1u, 8u)], 44366u), vec3<bool>(false, false, true))), ~reverseBits(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(32116u, 8u)], 0u))));
    var var_1 = _wgslsmith_f_op_f32(-arg_0.b);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1745f + 368f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(arg_0.b, 1000f))))), arg_0.b);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.b, -1019f)));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)));
    return _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(reverseBits(arg_0.a), 23766i), u_input.a);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec4<i32>, arg_3: f32) -> vec3<u32> {
    let var_0 = select(vec2<bool>(false, all(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), vec3<bool>(false, true, true), true))), vec2<bool>(true, true), all(vec4<bool>(all(vec4<bool>(true, false, false, true)) & true, !(arg_2.x < 0i), arg_1.x > (arg_1.x | arg_1.x), true)));
    global0 = array<u32, 8>();
    global0 = array<u32, 8>();
    var var_1 = Struct_3(Struct_2(arg_1.x, _wgslsmith_div_f32(-178f, _wgslsmith_f_op_f32(f32(-1f) * -1732f))));
    var var_2 = var_0;
    return ~_wgslsmith_div_vec3_u32(min(min(vec3<u32>(67649u, 1626u, global0[_wgslsmith_index_u32(0u, 8u)]), vec3<u32>(43569u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 8u)], 8u)])), vec3<u32>(global0[_wgslsmith_index_u32(~61915u, 8u)], ~9526u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 8u)], 8u)])), ~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 8u)], 8u)], 8u)] >> (35884u % 32u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 8u)], 8u)], global0[_wgslsmith_index_u32(~3294u, 8u)]));
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: f32) -> vec4<bool> {
    var var_0 = ~reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(arg_1, 8u)], 54596u, global0[_wgslsmith_index_u32(107458u, 8u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(480u, 8u)], 8u)], 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)], 1u)) ^ abs(_wgslsmith_div_vec3_u32(vec3<u32>(9255u, arg_1, 8098u), vec3<u32>(1630u, 1144u, 8869u))));
    let var_1 = u_input.a & abs(_wgslsmith_add_vec2_i32(firstTrailingBit(func_2(u_input.a, vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 8u)], 8u)], global0[_wgslsmith_index_u32(1u, 8u)], 1u), vec3<i32>(25733i, -2147483647i, u_input.a.x))), u_input.a));
    let var_2 = Struct_2(_wgslsmith_sub_i32(arg_0.a.a, _wgslsmith_div_i32(13107i, 1i) & ~(~u_input.a.x)), _wgslsmith_f_op_f32(-1879f - -862f));
    var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(min(~reverseBits(arg_1), ~(~arg_1)), firstTrailingBit(~(~arg_1)), arg_1), func_4(Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(1206f, -235f) * vec2<f32>(arg_2, arg_2)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1320f, -706f))))), vec4<f32>(_wgslsmith_f_op_f32(872f + 280f), _wgslsmith_f_op_f32(round(arg_2)), _wgslsmith_f_op_f32(f32(-1f) * -1413f), _wgslsmith_f_op_f32(max(670f, arg_2)))), countOneBits(var_1), abs(vec4<i32>(arg_0.a.a & var_1.x, ~var_2.a, 14913i, func_3(Struct_2(0i, 1607f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b * 755f) - _wgslsmith_f_op_f32(f32(-1f) * -477f))))));
    let var_3 = all(select(select(!select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(var_2.b != arg_0.a.b, true), false), !(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, u_input.a.x >= var_2.a), _wgslsmith_sub_i32(-1i, var_2.a) <= 0i)));
    return !(!vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -425f) > _wgslsmith_f_op_f32(-var_2.b), -12643i <= u_input.a.x, var_3, !var_3));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 8>();
    var var_0 = any(vec4<bool>(false | select(all(vec4<bool>(false, false, true, true)), true, true), !all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false)), true, select(!any(vec3<bool>(true, true, false)), select(false, true, any(vec2<bool>(false, false))), all(func_1(Struct_3(Struct_2(u_input.a.x, 490f)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], -1623f)))));
    let var_1 = Struct_2(u_input.a.x, 394f);
    var_0 = all(!vec3<bool>(true, (var_1.b != 1000f) || true, true));
    let var_2 = global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(abs(abs(~1u)), 8u)], 8u)], 8u)], 8u)];
    var var_3 = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-925f, -227f) * vec2<f32>(-542f, var_1.b)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-462f, -597f) + vec2<f32>(var_1.b, -689f))) - _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.b, var_1.b), vec2<f32>(var_1.b, -756f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, 1878f) + vec2<f32>(-1775f, var_1.b)))), vec4<f32>(1560f, var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) - var_1.b), var_1.b)), vec2<i32>(-52650i, -38662i), -_wgslsmith_clamp_vec4_i32(~(-vec4<i32>(0i, 20528i, -2147483647i, u_input.a.x)), select(vec4<i32>(2147483647i, -13872i, -71728i, var_1.a), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -1i, -8000i, u_input.a.x), vec4<i32>(2147483647i, -11240i, -2147483647i, -1i)), true), reverseBits(reverseBits(vec4<i32>(-22983i, -1i, 2253i, 53270i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b))).zz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-708f - _wgslsmith_f_op_f32(var_1.b - var_1.b)) + var_1.b)), select(vec2<u32>(~12256u, min(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 8u)], 8u)])), vec2<u32>(4294967295u, _wgslsmith_add_u32(var_3.x, global0[_wgslsmith_index_u32(56147u, 8u)])), select(vec2<bool>(true, true), vec2<bool>(true, false), true)) ^ max(func_4(Struct_1(vec2<f32>(var_1.b, var_1.b), vec4<f32>(var_1.b, 2232f, 178f, -1056f)), vec2<i32>(var_1.a, u_input.a.x), vec4<i32>(var_1.a, -2147483647i, var_1.a, -76836i), _wgslsmith_f_op_f32(752f - var_1.b)).xx, ~vec2<u32>(8599u, 0u) | ~vec2<u32>(global0[_wgslsmith_index_u32(1u, 8u)], 1u)), var_1.a, func_4(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, var_1.b)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, var_1.b))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, var_1.b, 725f, 322f) + vec4<f32>(var_1.b, 526f, 1250f, 559f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, -2224f, var_1.b, var_1.b) - vec4<f32>(-1219f, var_1.b, -194f, var_1.b)))), select(u_input.a, -u_input.a, _wgslsmith_f_op_f32(sign(var_1.b)) < _wgslsmith_f_op_f32(-var_1.b)), vec4<i32>(-u_input.a.x, -47548i, _wgslsmith_add_i32(~var_1.a, 9705i >> (global0[_wgslsmith_index_u32(var_3.x, 8u)] % 32u)), u_input.a.x), -444f).x, _wgslsmith_div_u32(_wgslsmith_add_u32(31211u, var_3.x), global0[_wgslsmith_index_u32(reverseBits(~global0[_wgslsmith_index_u32(0u, 8u)]), 8u)] | reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(38673u, var_3.x, global0[_wgslsmith_index_u32(var_3.x, 8u)]), vec3<u32>(1908u, global0[_wgslsmith_index_u32(0u, 8u)], var_3.x)))));
}

