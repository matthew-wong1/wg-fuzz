struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16> = array<bool, 16>(true, true, false, false, true, true, false, false, false, false, false, true, false, true, true, false);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    let var_0 = !select(!vec3<bool>(global0[_wgslsmith_index_u32(firstLeadingBit(52438u), 16u)], all(vec3<bool>(true, true, global0[_wgslsmith_index_u32(9370u, 16u)])), any(vec3<bool>(global0[_wgslsmith_index_u32(67813u, 16u)], true, global0[_wgslsmith_index_u32(38152u, 16u)]))), select(select(vec3<bool>(false, true, true), !vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(6980u, 16u)]), global0[_wgslsmith_index_u32(135586u, 16u)]), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, global0[_wgslsmith_index_u32(1u, 16u)]), vec3<bool>(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(159536u, 16u)])), !vec3<bool>(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)], true), true), any(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 16u)], true, true))), vec3<bool>(!any(vec2<bool>(true, global0[_wgslsmith_index_u32(14711u, 16u)])), true || !global0[_wgslsmith_index_u32(23233u, 16u)], true));
    let var_1 = select(var_0, var_0, select(!(!vec3<bool>(var_0.x, false, global0[_wgslsmith_index_u32(550u, 16u)])), select(var_0, !select(vec3<bool>(var_0.x, false, true), vec3<bool>(var_0.x, true, true), false), any(!vec4<bool>(false, var_0.x, true, true))), false));
    let var_2 = ~4294967295u;
    let var_3 = Struct_3(1780f, -_wgslsmith_dot_vec3_i32(u_input.a, _wgslsmith_mult_vec3_i32(min(vec3<i32>(u_input.b, u_input.a.x, -1i), vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i)), -vec3<i32>(-2147483647i, u_input.b, 7738i))));
    let var_4 = select(select(var_1, var_0, var_0), !vec3<bool>(any(vec2<bool>(var_0.x, true)) || true, all(select(vec3<bool>(true, var_1.x, true), var_0, true)), !var_1.x), var_0.x);
    return 1660f;
}

fn func_2(arg_0: Struct_3) -> Struct_2 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(func_3()), _wgslsmith_clamp_i32(_wgslsmith_add_i32(i32(-1i) * -1i, ~(-33370i)), 1i, -arg_0.b | u_input.b));
    var var_1 = Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(-7228i, _wgslsmith_mod_i32(2147483647i, arg_0.b)), -2147483647i), ~(-vec2<i32>(u_input.b, u_input.b) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)))));
    var_0 = arg_0;
    var var_2 = false;
    var var_3 = -114f;
    return Struct_2(select(false, global0[_wgslsmith_index_u32(reverseBits(~countOneBits(27381u)), 16u)], false), firstTrailingBit(~var_0.b), Struct_1(-_wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(u_input.b, 1i)), vec2<i32>(27441i, 0i))));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: u32) -> f32 {
    global0 = array<bool, 16>();
    var var_0 = -u_input.a;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1206f, _wgslsmith_f_op_f32(abs(-1164f))));
    let var_2 = firstLeadingBit(0u ^ ~arg_2);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(890f, 1297f, var_1, 209f), vec4<f32>(-1517f, -1895f, var_1, -531f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, var_1, -856f) + vec4<f32>(var_1, 952f, -2062f, -158f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-736f, 476f, -699f, var_1)))))));
    return -2669f;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec2<f32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_4(select(1u, ~1u, global0[_wgslsmith_index_u32(1u, 16u)] | global0[_wgslsmith_index_u32(75556u, 16u)]) > 25005u, func_2(Struct_3(-659f, 2147483647i)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~(~vec3<u32>(55491u, 34881u, 60479u))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(true, func_2(Struct_3(-940f, arg_0.a.x)), 0u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(f32(-1f) * -1872f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -260f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1612f))), 519f, false || arg_2))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1874f))), func_2(Struct_3(_wgslsmith_f_op_f32(var_0.x - -646f), arg_1.a.x)).c.a.x | 2147483647i, arg_0);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(478f + _wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_f32(1666f - 2167f))) * var_0.x);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-912f * var_0.x));
    var var_4 = select(vec4<bool>(var_1.a, any(select(select(vec4<bool>(arg_2, global0[_wgslsmith_index_u32(51104u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)], var_1.a), vec4<bool>(arg_2, var_1.a, global0[_wgslsmith_index_u32(45569u, 16u)], true), false), vec4<bool>(arg_2, false, arg_2, arg_2), select(vec4<bool>(arg_2, false, true, var_1.a), vec4<bool>(true, false, arg_2, arg_2), vec4<bool>(arg_2, true, false, global0[_wgslsmith_index_u32(1u, 16u)])))), false, var_1.a), !vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 16u)], true, arg_2), !(!any(vec4<bool>(true, global0[_wgslsmith_index_u32(36275u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(26672u, 16u)])) & true));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.zz) * vec2<f32>(-1204f, _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(2324f, -352f))) * _wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec2<i32>(u_input.a.x, 2147483647i)), Struct_1(vec2<i32>(u_input.a.x, u_input.a.x)), true)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(-525f, -734f), vec2<f32>(156f, -457f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(644f, 525f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1253f, 597f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(818f, -722f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-299f, 916f))))));
    global0 = array<bool, 16>();
    global0 = array<bool, 16>();
    var var_1 = 7362i;
    var var_2 = func_2(Struct_3(_wgslsmith_f_op_f32(-var_0.x), ~(-u_input.b))).c;
    var_2 = Struct_1(abs(_wgslsmith_clamp_vec2_i32(-vec2<i32>(2147483647i, 0i), var_2.a, vec2<i32>(~var_2.a.x, reverseBits(u_input.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, var_0.x) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-2239f, 597f, var_0.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x))))), var_0.x);
}

