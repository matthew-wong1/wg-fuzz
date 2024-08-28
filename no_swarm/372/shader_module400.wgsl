struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: i32,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_1(arg_0.a, arg_0.b);
    global0 = array<bool, 15>();
    var_0 = arg_3;
    var_0 = arg_0;
    let var_1 = arg_3;
    return 4294967295u;
}

fn func_2(arg_0: f32, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(func_3(Struct_1(vec2<u32>(u_input.b, u_input.d), u_input.b), vec4<i32>(27115i, u_input.c, u_input.a, 1i), Struct_1(vec2<u32>(39504u, 0u), u_input.d), Struct_1(vec2<u32>(u_input.d, 7870u), 0u)), ~19164u), countOneBits(select(vec2<u32>(1u, 58738u), vec2<u32>(u_input.d, 94987u), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 15u)], true)) >> ((vec2<u32>(5927u, u_input.b) & vec2<u32>(1u, u_input.b)) % vec2<u32>(32u)))), u_input.d);
    var var_1 = var_0;
    var_1 = var_0;
    var_1 = var_0;
    global0 = array<bool, 15>();
    return var_0;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<i32>) -> bool {
    global0 = array<bool, 15>();
    var var_0 = func_2(_wgslsmith_f_op_f32(step(-616f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2023f))))), firstLeadingBit(arg_1.zz));
    global0 = array<bool, 15>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-214f, _wgslsmith_f_op_f32(-1396f * 427f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(295f, -1000f)))))));
    let var_2 = !arg_0;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    let var_1 = !select(select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(67750u, 15u)], true, global0[_wgslsmith_index_u32(u_input.b, 15u)], global0[_wgslsmith_index_u32(33671u, 15u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 15u)], false, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 15u)], global0[_wgslsmith_index_u32(u_input.b, 15u)], global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(u_input.d, 15u)])), !vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.b, 15u)], false), !global0[_wgslsmith_index_u32(u_input.b, 15u)]), !select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 15u)], true, global0[_wgslsmith_index_u32(u_input.b, 15u)], global0[_wgslsmith_index_u32(60387u, 15u)]), vec4<bool>(global0[_wgslsmith_index_u32(5802u, 15u)], true, true, global0[_wgslsmith_index_u32(u_input.d, 15u)]), global0[_wgslsmith_index_u32(u_input.d, 15u)]), !vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.d, 15u)], global0[_wgslsmith_index_u32(35463u, 15u)], global0[_wgslsmith_index_u32(u_input.b, 15u)])), vec4<bool>(global0[_wgslsmith_index_u32(3058u, 15u)], false, !(!global0[_wgslsmith_index_u32(0u, 15u)]), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 4294967295u), 15u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(50244u, 15u)], 31295u == u_input.b, all(vec4<bool>(global0[_wgslsmith_index_u32(44628u, 15u)], global0[_wgslsmith_index_u32(4417u, 15u)], false, global0[_wgslsmith_index_u32(0u, 15u)])), all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 15u)], false))), select(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 15u)], false, global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(52126u, 15u)]), !vec4<bool>(global0[_wgslsmith_index_u32(89148u, 15u)], global0[_wgslsmith_index_u32(u_input.b, 15u)], true, global0[_wgslsmith_index_u32(u_input.b, 15u)]), any(vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(18481u, 15u)]))), vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, u_input.b), 15u)], any(vec4<bool>(global0[_wgslsmith_index_u32(28902u, 15u)], global0[_wgslsmith_index_u32(u_input.d, 15u)], true, global0[_wgslsmith_index_u32(4294967295u, 15u)])), func_1(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 15u)], true), vec3<i32>(2147483647i, 0i, u_input.c)), any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 15u)], false)))));
    var var_2 = Struct_1(~(~vec2<u32>(~22957u, 41772u)), ~(~0u));
    var var_3 = vec2<i32>(~67499i, ~firstTrailingBit(reverseBits(-27229i))) | vec2<i32>(u_input.a, _wgslsmith_mult_i32(1i, u_input.a));
    let var_4 = max(abs(_wgslsmith_mod_vec4_u32(abs(reverseBits(vec4<u32>(14714u, u_input.d, 19314u, 4294967295u))), select(~vec4<u32>(1u, 4294967295u, u_input.d, var_2.b), select(vec4<u32>(var_2.b, var_2.b, 4294967295u, var_2.b), vec4<u32>(7283u, 40691u, 4294967295u, var_2.a.x), var_1), var_1))), _wgslsmith_add_vec4_u32(max(countOneBits(~vec4<u32>(u_input.b, 1u, u_input.b, 1u)), max(countOneBits(vec4<u32>(u_input.d, 32913u, u_input.b, u_input.d)), vec4<u32>(u_input.d, 0u, 4294967295u, u_input.d) | vec4<u32>(4294967295u, 50024u, 8162u, u_input.d))), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(97198u, var_2.b, 62385u, 9915u)), min(~vec4<u32>(4962u, 55173u, 38600u, u_input.b), vec4<u32>(var_2.a.x, 1u, u_input.b, var_2.b) ^ vec4<u32>(70098u, 1u, u_input.d, 15280u)))));
    let x = u_input.a;
    s_output = StorageBuffer(min(var_4.ww, ~countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 115449u), var_2.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-423f, 697f, -997f, -237f) - vec4<f32>(-1022f, 1711f, 495f, -2002f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-333f, -163f, -550f, 148f)))), var_1))), -(2147483647i ^ u_input.c), vec4<u32>(52207u, 1u, ~1u, ~u_input.b) >> (firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(32052u, u_input.d, 5394u, var_4.x), ~vec4<u32>(99486u, var_4.x, 9921u, var_4.x))) % vec4<u32>(32u)), -(~_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(-29478i, 2147483647i, u_input.c, var_3.x)), reverseBits(vec4<i32>(0i, u_input.c, -2147483647i, 2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-32514i, 1i, -2147483647i, var_3.x), vec4<i32>(0i, var_3.x, 20228i, var_3.x)))));
}

