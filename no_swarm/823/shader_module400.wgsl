struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28> = array<i32, 28>(-65171i, 2147483647i, 2147483647i, i32(-2147483648), -1i, -48357i, 1i, -8984i, 2147483647i, -36619i, 40326i, i32(-2147483648), 5155i, 2712i, -739i, -41497i, 1i, -14860i, -38920i, 56268i, i32(-2147483648), -1i, i32(-2147483648), -32276i, 10810i, -2474i, 7918i, i32(-2147483648));

var<private> global1: vec3<bool>;

var<private> global2: f32 = 478f;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    global1 = vec3<bool>(!all(!global1.zz) | global1.x, !(!global1.x), !select(any(!vec2<bool>(global1.x, global1.x)), true, any(select(vec2<bool>(global1.x, global1.x), global1.yx, global1.x))));
    var var_0 = 1i;
    let var_1 = u_input.a;
    global0 = array<i32, 28>();
    let var_2 = _wgslsmith_dot_vec2_u32(min(select(vec2<u32>(1u, 1u), firstTrailingBit(vec2<u32>(1u, 0u)) & ~vec2<u32>(13730u, 1u), vec2<bool>(select(global1.x, global1.x, false), global1.x)), ~vec2<u32>(1u, 1u)), vec2<u32>(~(~_wgslsmith_clamp_u32(1u, 54706u, 4294967295u)), abs(~1u)));
    return 995f;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_1) -> u32 {
    global0 = array<i32, 28>();
    let var_0 = _wgslsmith_f_op_f32(func_3());
    var var_1 = vec4<bool>(all(vec4<bool>(arg_0.d.x | true, any(arg_3.d), all(!arg_3.d), false)), any(select(vec3<bool>(true, !global1.x, true), select(select(vec3<bool>(true, global1.x, arg_3.d.x), vec3<bool>(true, false, global1.x), vec3<bool>(true, arg_3.d.x, true)), vec3<bool>(true, true, false), true), true)), all(!vec3<bool>(!arg_3.d.x, !arg_3.d.x, arg_2.x < arg_0.b)), (arg_0.d.x && true) && true);
    global1 = vec3<bool>(true | arg_0.d.x, select(var_1.x, any(!(!global1.xz)), !all(vec4<bool>(global1.x, true, arg_0.d.x, false)) & (max(32068i, arg_0.e.x) >= u_input.a)), !(!arg_0.d.x) || (all(global1.zx) | true));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(arg_1 * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(var_0 + -422f)))) + _wgslsmith_f_op_f32(-arg_1));
    return max(_wgslsmith_add_u32(arg_0.c, _wgslsmith_add_u32(firstTrailingBit(arg_0.c), ~1u) >> (~(~arg_3.c) % 32u)), firstTrailingBit(arg_3.c));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: f32) -> Struct_1 {
    let var_0 = vec2<i32>(global0[_wgslsmith_index_u32(~(~func_2(arg_1, _wgslsmith_f_op_f32(-arg_3), _wgslsmith_add_vec2_i32(vec2<i32>(0i, arg_2.x), vec2<i32>(0i, 1i)), Struct_1(805f, arg_2.x, 6883u, arg_1.d, arg_0.yyy))), 28u)], arg_1.e.x);
    global1 = vec3<bool>(all(vec4<bool>(true, !(global1.x | global1.x), arg_1.d.x, _wgslsmith_clamp_u32(22838u, arg_1.c, 4294967295u) != arg_1.c)), any(vec2<bool>(!(arg_1.d.x || true), !(false || global1.x))), (abs(-2147483647i) ^ var_0.x) >= _wgslsmith_clamp_i32(i32(-1i) * -14425i, arg_2.x & (i32(-1i) * -27675i), arg_0.x));
    let var_1 = select(arg_1.c, 4294967295u, any(select(select(!arg_1.d, select(vec2<bool>(false, false), arg_1.d, vec2<bool>(global1.x, global1.x)), true), vec2<bool>(true, true), arg_1.d)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-1000f, arg_1.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_3))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(arg_1.a, arg_1.a)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2104f), _wgslsmith_f_op_f32(arg_3 - arg_3), true | arg_1.d.x)))), _wgslsmith_f_op_f32(trunc(744f))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(ceil(-1000f)))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-597f + 1000f)))), ~(i32(-1i) * -var_0.x), 6075u, vec2<bool>(select(!global1.x, false, true), false), _wgslsmith_add_vec3_i32(arg_2, _wgslsmith_div_vec3_i32(vec3<i32>(arg_2.x, 6132i, u_input.a) << (reverseBits(vec3<u32>(4294967295u, var_1, 4294967295u)) % vec3<u32>(32u)), vec3<i32>(~u_input.a, ~u_input.a, 0i))));
    return var_3;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: Struct_1) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(arg_2.a, _wgslsmith_div_f32(-1277f, _wgslsmith_f_op_f32(-arg_2.a)))), func_1(arg_1, arg_2, arg_1.xyy | vec3<i32>(22274i, -26428i, -34270i), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-100f, arg_2.a))))).a, arg_2.c >= ((1743u << (arg_2.c % 32u)) | (54407u ^ arg_2.c)))), -(select(firstLeadingBit(2345i), _wgslsmith_mod_i32(arg_2.e.x, arg_1.x), true) >> (min(~11772u, 25137u) % 32u)), func_1(abs(select(~vec4<i32>(arg_2.e.x, u_input.a, 43096i, 2147483647i), arg_1, any(vec2<bool>(global1.x, arg_2.d.x)))), Struct_1(arg_2.a, i32(-1i) * -52396i, func_1(reverseBits(arg_1), Struct_1(arg_2.a, global0[_wgslsmith_index_u32(4294967295u, 28u)], 0u, vec2<bool>(false, true), arg_2.e), _wgslsmith_add_vec3_i32(arg_2.e, vec3<i32>(global0[_wgslsmith_index_u32(arg_2.c, 28u)], arg_2.e.x, arg_2.e.x)), _wgslsmith_f_op_f32(1000f + 1033f)).c, vec2<bool>(arg_2.d.x, select(global1.x, true, global1.x)), vec3<i32>(2248i, 33206i, arg_2.b << (30575u % 32u))), arg_1.xyx, arg_2.a).c, vec2<bool>(any(func_1(vec4<i32>(arg_2.e.x, arg_0.x, 1i, -2147483647i), Struct_1(833f, arg_2.b, 10727u, global1.xz, vec3<i32>(arg_1.x, arg_2.e.x, arg_2.e.x)), vec3<i32>(global0[_wgslsmith_index_u32(38444u, 28u)], global0[_wgslsmith_index_u32(arg_2.c, 28u)], u_input.a), arg_2.a).d) || ((-2147483647i >> (arg_2.c % 32u)) < func_1(arg_1, Struct_1(718f, arg_0.x, arg_2.c, vec2<bool>(true, false), vec3<i32>(0i, arg_2.b, 3651i)), arg_2.e, -894f).e.x), func_1(~(vec4<i32>(arg_1.x, -2147483647i, 92431i, 2147483647i) | arg_1), arg_2, vec3<i32>(-arg_0.x, arg_0.x, _wgslsmith_mod_i32(2147483647i, arg_1.x)), arg_2.a).d.x), ~(~(-arg_1.wxw ^ vec3<i32>(-1i, arg_2.e.x, arg_0.x))));
    let var_1 = arg_2.a;
    let var_2 = func_1(_wgslsmith_add_vec4_i32(firstLeadingBit(_wgslsmith_sub_vec4_i32(arg_1, arg_1)), _wgslsmith_sub_vec4_i32(arg_1, abs(arg_1))), func_1(vec4<i32>(func_1(arg_1, Struct_1(var_1, 2147483647i, arg_2.c, vec2<bool>(var_0.d.x, var_0.d.x), arg_2.e), arg_2.e, -916f).b, ~(-2147483647i), -arg_2.e.x, -20600i), Struct_1(_wgslsmith_div_f32(var_1, var_1), ~(-1i), 4294967295u, select(vec2<bool>(var_0.d.x, var_0.d.x), var_0.d, arg_2.d), _wgslsmith_div_vec3_i32(arg_1.zxy, vec3<i32>(global0[_wgslsmith_index_u32(var_0.c, 28u)], u_input.a, arg_0.x))), arg_1.ywx, _wgslsmith_f_op_f32(max(736f, func_1(arg_1, Struct_1(377f, -26199i, 4294967295u, vec2<bool>(false, var_0.d.x), vec3<i32>(global0[_wgslsmith_index_u32(arg_2.c, 28u)], arg_2.b, 1i)), var_0.e, arg_2.a).a))), _wgslsmith_mod_vec3_i32(max(~vec3<i32>(1i, 2147483647i, var_0.b), vec3<i32>(arg_2.e.x, 5226i, arg_0.x)), countOneBits(var_0.e >> (vec3<u32>(41612u, 4294967295u, 32546u) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(102f - _wgslsmith_f_op_f32(step(arg_2.a, var_0.a))))).c | reverseBits(4294967295u);
    global0 = array<i32, 28>();
    return arg_2.a == 224f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.x;
    var var_1 = 16433u;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(select(166f, _wgslsmith_f_op_f32(f32(-1f) * -156f), !global1.x)), -720f, 154f);
    let var_3 = Struct_1(var_2.x, firstTrailingBit(~_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 28u)], 30521i)), vec2<i32>(global0[_wgslsmith_index_u32(57675u, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)]) ^ vec2<i32>(u_input.a, u_input.a))), 1u, !vec2<bool>(-11209i == _wgslsmith_add_i32(1919i, u_input.a), global1.x), -(~vec3<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -2147483647i, global0[_wgslsmith_index_u32(4294967295u, 28u)]), vec3<i32>(0i, global0[_wgslsmith_index_u32(26132u, 28u)], 9448i)), -30757i)));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(106f, -1070f)) - _wgslsmith_f_op_f32(f32(-1f) * -314f)))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -2097f))))), ~abs(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.e.x, u_input.a, 49743i, 2147483647i), vec4<i32>(19078i, -2147483647i, var_3.e.x, var_3.e.x)))), 28728u, select(vec2<bool>(any(!vec3<bool>(var_3.d.x, true, true)), func_4(var_3.e.zz, select(vec4<i32>(1i, -24275i, u_input.a, 40267i), vec4<i32>(var_3.e.x, 2147483647i, 8262i, var_3.e.x), vec4<bool>(global1.x, false, false, var_3.d.x)), func_1(vec4<i32>(0i, global0[_wgslsmith_index_u32(var_3.c, 28u)], -2147483647i, u_input.a), Struct_1(656f, global0[_wgslsmith_index_u32(var_3.c, 28u)], 1u, var_3.d, vec3<i32>(global0[_wgslsmith_index_u32(0u, 28u)], 0i, -2147483647i)), var_3.e, var_3.a))), select(select(var_3.d, var_3.d, func_1(vec4<i32>(57970i, var_3.b, u_input.a, 0i), var_3, vec3<i32>(global0[_wgslsmith_index_u32(67786u, 28u)], 0i, -1i), -1867f).d), select(!vec2<bool>(false, var_3.d.x), vec2<bool>(false, var_3.d.x), false), select(vec2<bool>(true, false), vec2<bool>(true, global1.x), select(vec2<bool>(true, true), global1.yy, var_3.d))), false), var_3.e);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(var_4.c, 1u, var_3.c), vec3<u32>(1u, var_4.c, 43105u)) >> (max(vec3<u32>(33342u, 2174u, var_3.c), vec3<u32>(74520u, 1u, 23965u)) % vec3<u32>(32u)))), _wgslsmith_dot_vec3_i32(var_4.e >> (vec3<u32>(~5395u, func_2(var_3, var_3.a, var_3.e.xz, Struct_1(556f, -2147483647i, 26169u, vec2<bool>(true, true), vec3<i32>(24547i, u_input.a, 0i))), 1u) % vec3<u32>(32u)), var_4.e), ~var_3.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-133f)))), vec4<i32>(~(-_wgslsmith_sub_i32(2147483647i, u_input.a)), u_input.a, global0[_wgslsmith_index_u32(countOneBits(0u) | var_4.c, 28u)], reverseBits(var_3.b)));
}

