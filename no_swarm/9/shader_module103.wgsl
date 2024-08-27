struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<f32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), 1i, 2147483647i, i32(-2147483648));

var<private> global1: array<bool, 21> = array<bool, 21>(false, false, true, false, true, false, true, false, false, false, false, true, false, true, true, true, false, false, false, true, false);

var<private> global2: array<i32, 9>;

var<private> global3: array<vec2<bool>, 4>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: f32) -> u32 {
    global1 = array<bool, 21>();
    var var_0 = Struct_1(select(!(!select(vec4<bool>(true, false, true, global1[_wgslsmith_index_u32(4294967295u, 21u)]), vec4<bool>(global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(117444u, 21u)], global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(0u, 21u)]), vec4<bool>(global1[_wgslsmith_index_u32(0u, 21u)], false, global1[_wgslsmith_index_u32(4294967295u, 21u)], false))), vec4<bool>(false, true, all(select(vec3<bool>(global1[_wgslsmith_index_u32(13257u, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)], true), vec3<bool>(global1[_wgslsmith_index_u32(0u, 21u)], false, global1[_wgslsmith_index_u32(69814u, 21u)]), global1[_wgslsmith_index_u32(0u, 21u)])), global1[_wgslsmith_index_u32(~abs(0u), 21u)]), vec4<bool>(select(global1[_wgslsmith_index_u32(4294967295u, 21u)] && false, global1[_wgslsmith_index_u32(1u, 21u)], true & global1[_wgslsmith_index_u32(31016u, 21u)]), true, 42010u >= _wgslsmith_dot_vec3_u32(vec3<u32>(18106u, 0u, 4294967295u), vec3<u32>(10460u, 4294967295u, 32007u)), all(vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(0u, 21u)])) & any(vec4<bool>(false, true, global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(29614u, 21u)])))), any(!(!vec2<bool>(global1[_wgslsmith_index_u32(106970u, 21u)], true))), _wgslsmith_mod_u32(_wgslsmith_sub_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 38234u, 4294967295u), vec3<u32>(19670u, 11427u, 0u)) ^ 37969u), firstTrailingBit(5156u)), vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, global2[_wgslsmith_index_u32(6129u, 9u)]), reverseBits(u_input.a.yx)), -u_input.a.zw), reverseBits(u_input.a.x), ~1i, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 1u), 9u)]), u_input.a ^ u_input.a);
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), -1990f));
    let var_2 = -u_input.a;
    var var_3 = !vec4<bool>(any(!var_0.a), !var_0.a.x, all(!select(vec3<bool>(false, true, global1[_wgslsmith_index_u32(var_0.c, 21u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(var_0.c, 21u)], true), false)), true);
    return ~var_0.c;
}

fn func_2() -> StorageBuffer {
    let var_0 = Struct_1(!(!vec4<bool>(!global1[_wgslsmith_index_u32(77908u, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)] | false, all(vec4<bool>(true, global1[_wgslsmith_index_u32(14384u, 21u)], global1[_wgslsmith_index_u32(30042u, 21u)], true)), true)), all(!vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(11566u, 21u)])), firstLeadingBit(~_wgslsmith_mult_u32(53002u, _wgslsmith_clamp_u32(11718u, 68201u, 620u))), vec4<i32>(max(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 90519u, 22240u, 14833u), vec4<u32>(1u, 1u, 1u, 1u)), 9u)], 0i), 10021i, abs(1i), _wgslsmith_mult_i32(_wgslsmith_div_i32(~u_input.a.x, firstTrailingBit(-2147483647i)), ~u_input.a.x ^ abs(global2[_wgslsmith_index_u32(1u, 9u)]))), vec4<i32>(-1i) * -select(u_input.a, ~vec4<i32>(-1i, global2[_wgslsmith_index_u32(21400u, 9u)], global0.x, 0i), true));
    var var_1 = ~_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(1u | var_0.c, 50158u, var_0.c, abs(46318u))), vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(32925u, 80520u, 0u), _wgslsmith_mult_u32(5901u, var_0.c)), ~min(var_0.c, var_0.c), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c, 1u), vec2<u32>(4294967295u, var_0.c)), ~max(var_0.c, 4294967295u)));
    var var_2 = vec2<u32>(~0u, ~13504u);
    let var_3 = var_0;
    var var_4 = ~(~var_1.yw) ^ firstLeadingBit(var_1.wy);
    return StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1127f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1493f + 460f)))), -772f, -2559f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-271f - 339f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1339f, 1364f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2011f)), 1358f, 1815f, _wgslsmith_f_op_f32(round(1642f))), _wgslsmith_sub_vec2_u32(var_1.ww, ~_wgslsmith_sub_vec2_u32(vec2<u32>(32952u, var_2.x), vec2<u32>(258u, 22985u))), abs(var_4.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec3<bool>(true, false, any(vec4<bool>(global1[_wgslsmith_index_u32(25738u, 21u)], false, true, global1[_wgslsmith_index_u32(1u, 21u)]))));
    global0 = vec4<i32>(-1i) * -(~(countOneBits(u_input.a) | ~u_input.a));
    var var_1 = -u_input.a.x;
    var var_2 = vec4<bool>(true, true, true, _wgslsmith_f_op_f32(min(-412f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -865f))))) < 429f);
    let var_3 = !vec4<bool>(true, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~_wgslsmith_add_u32(49663u, 1u), ~func_1(1867f), ~max(4294967295u, 4294967295u)), 21u)], false, !(!select(var_2.x, var_2.x, var_0.x)));
    let x = u_input.a;
    s_output = func_2();
}

