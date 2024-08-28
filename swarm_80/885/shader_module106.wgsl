struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
    c: f32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17>;

var<private> global1: array<vec3<i32>, 20> = array<vec3<i32>, 20>(vec3<i32>(-7779i, 2147483647i, -22035i), vec3<i32>(i32(-2147483648), -43847i, -6308i), vec3<i32>(0i, 0i, -88566i), vec3<i32>(-13112i, -13188i, 9770i), vec3<i32>(7573i, 11081i, -5169i), vec3<i32>(-32180i, 10942i, 7511i), vec3<i32>(-1i, 1i, -1i), vec3<i32>(0i, 0i, 0i), vec3<i32>(-14065i, 1i, -8853i), vec3<i32>(0i, 928i, 35274i), vec3<i32>(59956i, 2147483647i, 34244i), vec3<i32>(-28380i, 0i, 2147483647i), vec3<i32>(55i, 21131i, -37879i), vec3<i32>(i32(-2147483648), 12374i, i32(-2147483648)), vec3<i32>(-24592i, -1i, 0i), vec3<i32>(2147483647i, i32(-2147483648), 0i), vec3<i32>(0i, -11695i, 33354i), vec3<i32>(-1i, 37387i, -1i), vec3<i32>(421i, 25783i, -30082i), vec3<i32>(1i, 0i, i32(-2147483648)));

var<private> global2: array<i32, 12>;

var<private> global3: bool;

var<private> global4: vec2<f32> = vec2<f32>(1000f, -1582f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_3) -> vec3<u32> {
    var var_0 = Struct_3(any(arg_1.a), arg_3.b, global0[_wgslsmith_index_u32(4294967295u, 17u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, _wgslsmith_div_f32(-574f, 1476f), -164f, _wgslsmith_f_op_f32(max(arg_3.c, -489f))) - _wgslsmith_f_op_vec4_f32(step(arg_3.d, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.c, arg_1.b, -370f, 2142f) + vec4<f32>(237f, -384f, 408f, 472f))))) + vec4<f32>(-1621f, _wgslsmith_f_op_f32(-1293f - -764f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1140f - arg_1.b))), -655f)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(arg_3.d)));
    let var_2 = Struct_2(~reverseBits(~vec4<i32>(-60520i, arg_0, arg_1.d, 36262i) ^ firstTrailingBit(u_input.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1343f, global0[_wgslsmith_index_u32(arg_3.b.x, 17u)], _wgslsmith_f_op_f32(sign(var_0.c)))), var_1), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x ^ u_input.a.x, abs(u_input.a.x)) | u_input.a.yx, firstTrailingBit(vec2<i32>(global2[_wgslsmith_index_u32(arg_1.c, 12u)] << (29303u % 32u), select(1i, arg_0, false)))), Struct_1(vec4<bool>(all(!vec4<bool>(false, arg_1.a.x, true, var_0.a)), select(var_0.a, false, arg_1.a.x | true), arg_1.a.x, !(global0[_wgslsmith_index_u32(arg_1.c, 17u)] != var_0.d.x)), _wgslsmith_f_op_f32(arg_1.b - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1371f)), _wgslsmith_f_op_f32(-arg_1.b)))), arg_3.b.x, arg_1.d));
    var var_3 = firstTrailingBit(vec2<u32>(u_input.b, ~(~u_input.b)));
    global4 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-472f, _wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(arg_3.c - -177f))))));
    return ~_wgslsmith_mod_vec3_u32(~(~firstTrailingBit(vec3<u32>(arg_3.b.x, 4294967295u, var_0.b.x))), var_0.b);
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_add_vec3_u32(~_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b, 49274u, 9850u), vec3<u32>(u_input.b, u_input.b, 42664u)), vec3<u32>(_wgslsmith_div_u32(62250u, 67242u), u_input.b, 0u)), ~_wgslsmith_sub_vec3_u32(func_3(2147483647i, Struct_1(vec4<bool>(false, false, false, false), global0[_wgslsmith_index_u32(1u, 17u)], 4294967295u, 43052i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.x, 746f)), Struct_3(true, vec3<u32>(44593u, 34772u, 4294967295u), -1554f, vec4<f32>(-1535f, -249f, global4.x, 2030f))), _wgslsmith_clamp_vec3_u32(func_3(-16528i, Struct_1(vec4<bool>(true, false, false, true), global4.x, u_input.b, global2[_wgslsmith_index_u32(1u, 12u)]), vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], global4.x), Struct_3(false, vec3<u32>(1u, u_input.b, u_input.b), global0[_wgslsmith_index_u32(u_input.b, 17u)], vec4<f32>(-1000f, 278f, 693f, global4.x))), max(vec3<u32>(0u, u_input.b, u_input.b), vec3<u32>(u_input.b, 2224u, 4294967295u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(17393u, u_input.b, u_input.b)))));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global4.x), global4.x));
    var var_2 = var_0.xy;
    var var_3 = select(~(abs(vec4<u32>(4294967295u, var_2.x, var_2.x, u_input.b)) << (reverseBits(~vec4<u32>(2386u, var_0.x, u_input.b, var_0.x)) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(vec4<u32>(~0u, 39984u, var_0.x, ~0u) & vec4<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, var_0.x, 1u), vec4<u32>(4294967295u, var_0.x, 26080u, 1u)), 4294967295u, 0u | var_2.x), max(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 158140u, var_2.x), vec4<u32>(var_0.x, 0u, var_2.x, var_2.x)), func_3(0i, Struct_1(vec4<bool>(false, false, false, false), global0[_wgslsmith_index_u32(var_0.x, 17u)], 18045u, global2[_wgslsmith_index_u32(var_2.x, 12u)]), vec2<f32>(1228f, global4.x), Struct_3(true, vec3<u32>(1u, var_2.x, 1u), global4.x, vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], 1638f, -1000f, 1849f))).x, ~0u, 1u), select(~vec4<u32>(var_2.x, 1u, 18358u, 16980u), vec4<u32>(1u, var_0.x, u_input.b, u_input.b), any(vec4<bool>(true, true, false, false))))), vec4<bool>(all(vec3<bool>(true, true, false)), all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)))), false, select(true, true, !(var_2.x <= var_0.x))));
    let var_4 = Struct_3(select(true && any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), false)), !(!(global2[_wgslsmith_index_u32(var_3.x, 12u)] > -22371i)), !(-100f > global0[_wgslsmith_index_u32(var_3.x, 17u)]) & true), var_3.wyw, global4.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(468f, global4.x), _wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 17u)]), -407f))));
    return Struct_3(false, reverseBits(vec3<u32>(firstTrailingBit(var_0.x), var_0.x, ~4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~24656u, 17u)])), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_4.c)), var_4.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 17u)]))) - _wgslsmith_f_op_f32(597f + -1000f)), global0[_wgslsmith_index_u32(24014u, 17u)], global0[_wgslsmith_index_u32(58310u, 17u)]));
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_3) -> Struct_1 {
    var var_0 = arg_3.b.x;
    let var_1 = vec2<bool>(any(!select(!vec3<bool>(arg_3.a, true, arg_3.a), select(vec3<bool>(arg_3.a, false, true), vec3<bool>(true, arg_3.a, arg_3.a), vec3<bool>(arg_3.a, arg_3.a, true)), false)), arg_3.a);
    var var_2 = arg_3;
    global4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(231f - _wgslsmith_f_op_f32(max(var_2.c, 2029f)))), _wgslsmith_div_f32(-278f, -431f)) + vec2<f32>(-1296f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x))))));
    global4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1058f, 1071f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.d.x, 1548f)) - arg_2));
    return Struct_1(select(!vec4<bool>(false, var_1.x, 1000f < global0[_wgslsmith_index_u32(20260u, 17u)], all(vec3<bool>(var_1.x, false, arg_3.a))), !vec4<bool>(true, false, var_2.a, false), !(~66733u >= _wgslsmith_add_u32(var_2.b.x, arg_3.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -632f), _wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(select(arg_3.b, vec3<u32>(20645u, 0u, 1u), true), ~var_2.b), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.b.x, var_2.b.x), ~var_2.b.yz), ~var_2.b.x)), min(max(i32(-1i) * -62660i, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a)) >> (max(_wgslsmith_dot_vec2_u32(arg_3.b.xz, vec2<u32>(u_input.b, arg_1)), max(0u, 0u)) % 32u), ~global2[_wgslsmith_index_u32(max(86694u, arg_3.b.x), 12u)]));
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    return Struct_2(-vec4<i32>(-max(arg_0.d, 2147483647i), select(-64811i, -1i, any(arg_0.a.zww)), _wgslsmith_clamp_i32(~(-19258i), ~0i, firstTrailingBit(1772i)), -2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-923f, 1119f, global0[_wgslsmith_index_u32(u_input.b, 17u)], -391f) + vec4<f32>(arg_0.b, global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(26839u, 17u)], global4.x)), vec4<f32>(_wgslsmith_f_op_f32(1112f - 1784f), _wgslsmith_f_op_f32(1222f + arg_0.b), -111f, _wgslsmith_f_op_f32(sign(1868f))), arg_0.a))), _wgslsmith_div_vec2_i32(select(vec2<i32>(abs(-2147483647i), u_input.a.x), select(u_input.a.yz, u_input.a.zz, select(arg_0.a.yw, arg_0.a.zz, arg_0.a.x)), _wgslsmith_add_u32(170025u, u_input.b) != _wgslsmith_add_u32(u_input.b, 0u)), _wgslsmith_add_vec2_i32(u_input.a.xy, _wgslsmith_div_vec2_i32(u_input.a.zy, u_input.a.yx))), arg_0);
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_2) -> Struct_1 {
    return Struct_1(arg_1.d.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~arg_1.d.c, 17u)]) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.b))))), _wgslsmith_add_u32(4294967295u, firstTrailingBit(1u)), 0i);
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: vec4<bool>) -> f32 {
    var var_0 = Struct_2(firstTrailingBit(vec4<i32>(abs(_wgslsmith_sub_i32(u_input.a.x, global2[_wgslsmith_index_u32(u_input.b, 12u)])), -2147483647i, -countOneBits(u_input.a.x), abs(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 31932i)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(25469u, 17u)], -1856f, -688f, 953f), vec4<f32>(-108f, arg_0.c, -814f, arg_1)), arg_0.d, select(vec4<bool>(arg_2.x, true, true, false), vec4<bool>(true, arg_0.a, arg_2.x, arg_2.x), arg_0.a))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, global0[_wgslsmith_index_u32(1u, 17u)], arg_1, 680f)))))), vec2<i32>(u_input.a.x, _wgslsmith_mult_i32(firstLeadingBit(_wgslsmith_div_i32(0i, 1i)), ~global2[_wgslsmith_index_u32(u_input.b, 12u)])), func_6(arg_2.wyz, func_5(func_4(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, -20311i, global2[_wgslsmith_index_u32(u_input.b, 12u)]), vec3<i32>(global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(4294967295u, 12u)], u_input.a.x)), ~4294967295u, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, global0[_wgslsmith_index_u32(29346u, 17u)]) - vec2<f32>(1494f, arg_0.d.x)), func_2()))));
    var var_1 = func_2();
    var var_2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1423f + global0[_wgslsmith_index_u32(func_2().b.x, 17u)]) - func_6(vec3<bool>(false, var_1.a, false), func_5(var_0.d)).b), _wgslsmith_f_op_f32(step(var_0.b.x, func_4(_wgslsmith_sub_vec3_i32(var_0.a.xyy, u_input.a.xxz), 0u, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1, var_1.d.x), var_0.b.yx)), Struct_3(false, var_1.b, 1990f, vec4<f32>(619f, global4.x, 810f, 1496f))).b))), _wgslsmith_f_op_f32(ceil(2005f)), var_1.d.x);
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -406f);
    var var_4 = func_5(var_0.d).d;
    return 169f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 12>();
    global4 = vec2<f32>(2064f, -740f);
    let var_0 = false;
    let var_1 = true;
    global4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_3(false, vec3<u32>(4294967295u, 0u, 54346u), global0[_wgslsmith_index_u32(0u, 17u)], vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 17u)], -1000f, 839f, global0[_wgslsmith_index_u32(u_input.b, 17u)])), 899f, vec4<bool>(var_0, false, true, var_0))), _wgslsmith_f_op_f32(1681f - global4.x))), global0[_wgslsmith_index_u32(~((8524u << (u_input.b % 32u)) & ~39865u), 17u)]) * vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 17u)], -129f));
    var var_2 = Struct_3(!all(!(!vec3<bool>(false, false, var_1))), _wgslsmith_mod_vec3_u32(select(vec3<u32>(u_input.b, 4294967295u, u_input.b), vec3<u32>(1u, u_input.b, 0u), false) ^ func_2().b, countOneBits(func_2().b)) ^ vec3<u32>(u_input.b, ~13522u, _wgslsmith_sub_u32(firstTrailingBit(u_input.b), abs(u_input.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_3(false, vec3<u32>(4294967295u, u_input.b, u_input.b), global4.x, vec4<f32>(global4.x, 359f, 1164f, global0[_wgslsmith_index_u32(u_input.b, 17u)])), _wgslsmith_f_op_f32(select(1243f, global4.x, false)), !vec4<bool>(var_1, false, true, false))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global4.x), -596f))), -839f), vec4<f32>(-502f, global0[_wgslsmith_index_u32(74461u, 17u)], global4.x, 460f));
    let var_3 = abs(vec4<u32>(28189u, firstLeadingBit(~0u), 4294967295u, _wgslsmith_mod_u32(u_input.b, _wgslsmith_div_u32(var_2.b.x, var_2.b.x)))) | _wgslsmith_add_vec4_u32(firstTrailingBit(firstLeadingBit(countOneBits(vec4<u32>(var_2.b.x, u_input.b, 4294967295u, 114265u)))), ~(~(~vec4<u32>(71623u, u_input.b, u_input.b, 1u))));
    let var_4 = ((var_3.x << (~(~u_input.b) % 32u)) | _wgslsmith_mult_u32(var_2.b.x, abs(4522u))) ^ _wgslsmith_mult_u32(var_3.x, 23584u);
    let x = u_input.a;
    s_output = StorageBuffer(-(func_5(func_4(vec3<i32>(global2[_wgslsmith_index_u32(1u, 12u)], u_input.a.x, -42890i), 110346u, vec2<f32>(961f, 1447f), Struct_3(false, vec3<u32>(0u, u_input.b, 28970u), global4.x, var_2.d))).a.x >> (63063u % 32u)));
}

