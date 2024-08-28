struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec2<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(0u, 4294967295u, 21985u, 49623u), 5763i, vec2<bool>(true, true), vec3<i32>(i32(-2147483648), -1i, 0i));

var<private> global1: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(1i, 0u, 4617u, Struct_1(vec4<u32>(1u, 4294967295u, 0u, 0u), 17834i, vec2<bool>(false, false), vec3<i32>(0i, -52773i, -20648i))), Struct_2(-13830i, 0u, 4294967295u, Struct_1(vec4<u32>(62814u, 1u, 4294967295u, 16043u), 0i, vec2<bool>(true, false), vec3<i32>(17499i, 5556i, -1i))), Struct_2(2147483647i, 4294967295u, 20056u, Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 16926u), 55239i, vec2<bool>(true, false), vec3<i32>(1i, 2147483647i, -1i))), Struct_2(27361i, 0u, 0u, Struct_1(vec4<u32>(4294967295u, 63444u, 65699u, 4294967295u), 13083i, vec2<bool>(false, false), vec3<i32>(1i, 12244i, 2147483647i))), Struct_2(0i, 4294967295u, 4294967295u, Struct_1(vec4<u32>(0u, 9824u, 1463u, 1u), 1105i, vec2<bool>(true, true), vec3<i32>(-31851i, -12576i, -36944i))), Struct_2(-1i, 1u, 4294967295u, Struct_1(vec4<u32>(0u, 26765u, 4294967295u, 4294967295u), -1i, vec2<bool>(true, true), vec3<i32>(1i, 3716i, i32(-2147483648)))));

var<private> global2: array<f32, 23> = array<f32, 23>(1299f, 565f, 595f, -837f, -1482f, 141f, -1000f, 635f, -281f, -605f, 845f, 1034f, -452f, 1000f, -2005f, 542f, 1210f, -1812f, -1281f, 1320f, 146f, -2077f, -2324f);

var<private> global3: array<u32, 28>;

var<private> global4: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: vec4<bool>, arg_2: vec2<u32>) -> i32 {
    var var_0 = (4294967295u ^ _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(global4.d.a.zw), global4.d.a.xw), _wgslsmith_mod_u32(20849u, 4294967295u) ^ _wgslsmith_dot_vec3_u32(global4.d.a.xwx, global4.d.a.wxw))) < ~0u;
    var var_1 = u_input.e;
    return _wgslsmith_mult_i32(global0.b, -u_input.b.x);
}

fn func_2() -> bool {
    var var_0 = Struct_2(-func_3(any(vec3<bool>(false, global4.d.c.x, global4.d.c.x)), select(!vec4<bool>(true, true, global4.d.c.x, global4.d.c.x), !vec4<bool>(global4.d.c.x, true, global0.c.x, false), false && global4.d.c.x), reverseBits(global4.d.a.yx) | vec2<u32>(39723u, global0.a.x)), global4.c, ~(_wgslsmith_div_u32(4294967295u, 1u) << ((~u_input.e | (23326u >> (global4.b % 32u))) % 32u)), Struct_1(_wgslsmith_sub_vec4_u32(global0.a | vec4<u32>(u_input.e, 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.a.x, 28u)], 28u)], global3[_wgslsmith_index_u32(16671u, 28u)]), vec4<u32>(155718u, 112838u, 0u, 8107u) | vec4<u32>(u_input.e, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 28u)], 28u)], 0u, global4.b)) | ~countOneBits(global0.a), u_input.c.x, select(vec2<bool>(all(vec4<bool>(global0.c.x, true, global4.d.c.x, global0.c.x)), false), select(select(global0.c, global0.c, vec2<bool>(false, global0.c.x)), select(global0.c, global4.d.c, vec2<bool>(global0.c.x, global0.c.x)), select(vec2<bool>(true, global0.c.x), global0.c, global4.d.c)), global0.c.x | !global0.c.x), vec3<i32>(-firstTrailingBit(24260i), reverseBits(i32(-1i) * -1i), _wgslsmith_div_i32(u_input.c.x, _wgslsmith_mult_i32(u_input.c.x, global0.d.x)))));
    let var_1 = !(global4.d.c.x | all(!select(global4.d.c, var_0.d.c, global4.d.c)));
    let var_2 = global4.d;
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, ~var_2.a.x), ~_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(var_0.d.a.ww, var_2.a.xw, vec2<u32>(1u, 102723u)), vec2<u32>(846u, 13685u))), firstLeadingBit(var_2.a.yy >> (vec2<u32>(global3[_wgslsmith_index_u32(0u << (u_input.e % 32u), 28u)], ~u_input.e) % vec2<u32>(32u)))), 23u)];
    var var_4 = Struct_3(max(select(global0.d, ~firstTrailingBit(global0.d), all(vec3<bool>(false, var_2.c.x, true))), -reverseBits(countOneBits(vec3<i32>(-1i, 32237i, u_input.d.x)))), Struct_1(~vec4<u32>(global3[_wgslsmith_index_u32(0u, 28u)], 10445u, ~var_0.b, select(global3[_wgslsmith_index_u32(1u, 28u)], 0u, false)), var_0.d.d.x, select(global0.c, vec2<bool>(var_1, all(global4.d.c)), global4.d.c.x), u_input.a), Struct_1(_wgslsmith_mult_vec4_u32(~global4.d.a, _wgslsmith_sub_vec4_u32(var_0.d.a, global0.a)), global0.b, global4.d.c, -global4.d.d));
    return false;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = firstLeadingBit(select(-firstLeadingBit(u_input.b), u_input.b, vec4<bool>(all(arg_3.c), arg_0.c.x, global4.d.c.x, func_2())));
    global0 = Struct_1(abs(~(global4.d.a >> (_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, arg_0.a.x, 46712u, 0u), global0.a) % vec4<u32>(32u)))), _wgslsmith_dot_vec3_i32(-(~vec3<i32>(global4.a, 2147483647i, u_input.a.x)) << (~global0.a.zww % vec3<u32>(32u)), -countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -1i, arg_3.d.x), vec3<i32>(arg_0.b, 2147483647i, global0.d.x)))), vec2<bool>(arg_0.b != countOneBits(var_0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(1u, 28u)], 1u, 1u) | arg_1.a.xxx, _wgslsmith_add_vec3_u32(arg_3.a.zyz, vec3<u32>(arg_3.a.x, global0.a.x, 17122u))) > (min(1u, 4294967295u) | global4.b)), arg_1.d);
    var var_1 = arg_0.a.x;
    let var_2 = Struct_1(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(54232u, 93439u, 0u) >> (vec3<u32>(7267u, 1u, u_input.e) % vec3<u32>(32u)), vec3<u32>(u_input.e, arg_0.a.x, 0u)), reverseBits(~76253u)), abs(_wgslsmith_clamp_u32(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(27250u, 28u)], 1u), ~global0.a.x, global3[_wgslsmith_index_u32(global4.d.a.x, 28u)])), global4.d.a.x, global4.c & _wgslsmith_dot_vec3_u32(arg_0.a.xxw, global0.a.yxy)), global4.d.d.x, select(vec2<bool>(true, true), vec2<bool>(func_2(), arg_3.c.x), global4.d.c.x), ~vec3<i32>(_wgslsmith_dot_vec3_i32(var_0.zwy, var_0.zwy), var_0.x, ~0i));
    var var_3 = 1u;
    return countOneBits(arg_1.d);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: f32, arg_3: vec4<u32>) -> Struct_2 {
    global0 = Struct_1(vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(48858u, 0u), arg_3.yx), global0.a.x, select(_wgslsmith_dot_vec3_u32(global0.a.yzx, vec3<u32>(u_input.e, global4.c, 1u)), ~4294967295u, false), 18450u) | vec4<u32>(_wgslsmith_dot_vec3_u32(global4.d.a.wzz, _wgslsmith_add_vec3_u32(arg_3.wyz, global0.a.yxw)), ~8917u, ~arg_3.x << (~0u % 32u), u_input.e), u_input.c.x, select(global4.d.c, select(!global4.d.c, select(!global4.d.c, global4.d.c, global0.c.x), global0.c), !select(global4.d.c, select(vec2<bool>(false, true), global0.c, vec2<bool>(global0.c.x, global0.c.x)), true)), ~u_input.c.yzy);
    let var_0 = global0.d;
    let var_1 = u_input.b.x;
    var var_2 = Struct_2(global0.d.x, ~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(35963u, arg_3.x, 108815u)), ~global4.d.a.wyy), _wgslsmith_dot_vec2_u32(~(~global0.a.wz), ~vec2<u32>(firstTrailingBit(4294967295u), global4.d.a.x)), global4.d);
    var var_3 = Struct_3(vec3<i32>(_wgslsmith_mult_i32(0i, -2147483647i), abs(i32(-1i) * -59446i), global4.a), global4.d, Struct_1(global0.a, _wgslsmith_add_i32(~(global4.d.d.x | var_0.x), global4.a), vec2<bool>(var_2.d.c.x, true), vec3<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(arg_0, u_input.b.wyy), 9269i)));
    return global1[_wgslsmith_index_u32(var_3.c.a.x, 6u)];
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> Struct_3 {
    global0 = func_4(select(select(-global0.d, -vec3<i32>(10532i, u_input.b.x, global0.b) >> (vec3<u32>(49665u, 4294967295u, 34960u) % vec3<u32>(32u)), vec3<bool>(true, true, arg_1.b.c.x)), firstTrailingBit(arg_0.d.d), !select(!vec3<bool>(arg_1.b.c.x, false, arg_1.c.c.x), select(vec3<bool>(global4.d.c.x, true, false), vec3<bool>(global4.d.c.x, false, true), vec3<bool>(arg_1.c.c.x, true, global4.d.c.x)), -318f >= global2[_wgslsmith_index_u32(arg_1.b.a.x, 23u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-982f, global2[_wgslsmith_index_u32(1u, 23u)], global2[_wgslsmith_index_u32(41451u, 23u)]))))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(653f * 297f), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.e, 0u), 23u)], _wgslsmith_div_f32(global2[_wgslsmith_index_u32(24653u, 23u)], -627f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1601f)), vec4<u32>(~_wgslsmith_mod_u32(29005u, global3[_wgslsmith_index_u32(arg_1.b.a.x, 28u)]), ~_wgslsmith_div_u32(countOneBits(arg_1.b.a.x), ~0u), ~u_input.e, ~_wgslsmith_dot_vec2_u32(vec2<u32>(48045u, 7270u) << (vec2<u32>(32050u, u_input.e) % vec2<u32>(32u)), ~arg_1.b.a.ww))).d;
    let var_0 = vec4<bool>(true || !(!(global2[_wgslsmith_index_u32(1u, 23u)] <= global2[_wgslsmith_index_u32(71035u, 23u)])), false, false, arg_1.c.c.x);
    let var_1 = vec3<u32>(~1u, 9877u, firstTrailingBit(~arg_1.c.a.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(1u, 23u)], global2[_wgslsmith_index_u32(0u, 23u)])), _wgslsmith_f_op_f32(ceil(-702f)), global2[_wgslsmith_index_u32(0u, 23u)], global2[_wgslsmith_index_u32(arg_1.c.a.x, 23u)]) - vec4<f32>(_wgslsmith_f_op_f32(-1029f * global2[_wgslsmith_index_u32(u_input.e, 23u)]), global2[_wgslsmith_index_u32(arg_1.c.a.x, 23u)], 305f, _wgslsmith_f_op_f32(round(-346f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(444f, 1000f, 1000f, global2[_wgslsmith_index_u32(u_input.e, 23u)]), vec4<f32>(-1646f, global2[_wgslsmith_index_u32(arg_0.d.a.x, 23u)], -222f, -1152f), arg_1.c.c.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-224f, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 28u)], 23u)], -330f, 1727f), vec4<f32>(1326f, 325f, global2[_wgslsmith_index_u32(global4.d.a.x, 23u)], 1014f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(30376u, 23u)]), _wgslsmith_f_op_f32(-717f * global2[_wgslsmith_index_u32(45603u, 23u)]), _wgslsmith_f_op_f32(f32(-1f) * -251f), _wgslsmith_f_op_f32(1757f + global2[_wgslsmith_index_u32(1u, 23u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-784f, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(21281u, 28u)], 23u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 28u)], 23u)], 432f))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 23u)], global2[_wgslsmith_index_u32(0u, 23u)], 225f, global2[_wgslsmith_index_u32(var_1.x, 23u)]))))), vec4<f32>(466f, 2202f, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.c, arg_0.c, global3[_wgslsmith_index_u32(arg_1.c.a.x, 28u)]), var_1), 23u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(22806u, 23u)] + -2028f))))));
    var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(u_input.e, 23u)], 1071f, global2[_wgslsmith_index_u32(global0.a.x, 23u)], global2[_wgslsmith_index_u32(global4.b, 23u)]), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-582f, -730f, global2[_wgslsmith_index_u32(27828u, 23u)], -1605f))))) * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_2.x)), _wgslsmith_f_op_f32(var_2.x - var_2.x)), var_2.x, -365f, _wgslsmith_f_op_f32(-2101f * _wgslsmith_f_op_f32(var_2.x - 1434f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2[_wgslsmith_index_u32(1u, 23u)], -1927f, var_2.x, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 28u)], 23u)]), vec4<f32>(global2[_wgslsmith_index_u32(31683u, 23u)], var_2.x, global2[_wgslsmith_index_u32(22922u, 23u)], -1420f), var_0))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-100f, global2[_wgslsmith_index_u32(0u, 23u)], -157f, -413f), vec4<f32>(-461f, global2[_wgslsmith_index_u32(19949u, 23u)], var_2.x, 281f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1149f, var_2.x, -753f, var_2.x))), select(vec4<bool>(arg_1.b.c.x, arg_0.d.c.x, false, arg_1.c.c.x), var_0, var_0))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -700f), var_2.x, -1312f, _wgslsmith_f_op_f32(f32(-1f) * -863f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, 1592f, -1606f))))));
    return arg_1;
}

fn func_6(arg_0: f32, arg_1: Struct_3) -> Struct_1 {
    global0 = global4.d;
    let var_0 = 38693i;
    global1 = array<Struct_2, 6>();
    global0 = func_4(global0.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(847f, -383f, 629f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2[_wgslsmith_index_u32(arg_1.c.a.x, 23u)], global2[_wgslsmith_index_u32(u_input.e, 23u)], arg_0))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + 752f) - _wgslsmith_div_f32(-476f, 1653f))) - 326f), ~(~(~firstLeadingBit(global4.d.a)))).d;
    var var_1 = func_5(func_4(abs(global4.d.d), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-649f, global2[_wgslsmith_index_u32(~4294967295u, 23u)], _wgslsmith_f_op_f32(min(arg_0, arg_0))))), 1080f, arg_1.c.a), arg_1).b;
    return func_5(func_4(-var_1.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(535f - arg_0), 1279f, _wgslsmith_f_op_f32(max(-365f, -818f)))), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(floor(-2423f))), global0.a), arg_1).b;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 23>();
    global1 = array<Struct_2, 6>();
    let var_0 = Struct_3(select(-(~vec3<i32>(u_input.d.x, 56819i, global0.b)), -(~u_input.c.xzw >> (global0.a.wzy % vec3<u32>(32u))), !select(vec3<bool>(true, false, global4.d.c.x), select(vec3<bool>(global0.c.x, global0.c.x, true), vec3<bool>(global4.d.c.x, global4.d.c.x, global4.d.c.x), true), select(vec3<bool>(true, false, global4.d.c.x), vec3<bool>(true, global0.c.x, global4.d.c.x), global4.d.c.x))), func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global4.d.a.x, 23u)]), _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(49596u, 28u)], 23u)], 945f))))), func_5(func_4(func_1(global4.d, Struct_1(global0.a, 17660i, global4.d.c, vec3<i32>(global4.a, global0.d.x, 37052i)), u_input.b, Struct_1(vec4<u32>(global0.a.x, u_input.e, 0u, global0.a.x), u_input.a.x, global4.d.c, vec3<i32>(-28445i, 2147483647i, 56152i))), vec3<f32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 28u)], 23u)], global2[_wgslsmith_index_u32(global0.a.x, 23u)], 1479f), global2[_wgslsmith_index_u32(max(global4.b, global0.a.x), 23u)], vec4<u32>(4294967295u, 1u, 61512u, u_input.e)), Struct_3(vec3<i32>(2147483647i, u_input.a.x, 23753i) << (vec3<u32>(48684u, 1u, 0u) % vec3<u32>(32u)), func_4(vec3<i32>(17821i, global0.d.x, global4.a), vec3<f32>(global2[_wgslsmith_index_u32(56186u, 23u)], -1278f, global2[_wgslsmith_index_u32(u_input.e, 23u)]), global2[_wgslsmith_index_u32(17800u, 23u)], vec4<u32>(54971u, u_input.e, global0.a.x, 1184u)).d, Struct_1(global4.d.a, u_input.c.x, vec2<bool>(global0.c.x, global0.c.x), vec3<i32>(-24589i, u_input.a.x, global0.d.x))))), global4.d);
    global0 = Struct_1(countOneBits(_wgslsmith_sub_vec4_u32(global4.d.a, reverseBits(firstTrailingBit(global4.d.a)))), _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_div_i32(55056i, u_input.d.x), _wgslsmith_dot_vec2_i32(global4.d.d.xx, vec2<i32>(u_input.b.x, -37635i))) & -44298i, -(~(-13991i >> (0u % 32u)))), !select(vec2<bool>(var_0.b.c.x, global4.d.c.x), var_0.b.c, true), vec3<i32>(27964i, var_0.c.d.x, var_0.a.x));
    global0 = func_5(Struct_2(countOneBits(u_input.d.x), global4.c, 1u, Struct_1(var_0.b.a, _wgslsmith_dot_vec2_i32(func_6(1000f, var_0).d.zx, _wgslsmith_add_vec2_i32(vec2<i32>(u_input.d.x, -25409i), vec2<i32>(26804i, 1i))), global4.d.c, vec3<i32>(firstLeadingBit(global0.b), global4.d.b, _wgslsmith_add_i32(global0.b, global0.b)))), func_5(Struct_2(-57460i, ~1u, u_input.e, func_6(_wgslsmith_f_op_f32(floor(198f)), func_5(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(6741u, 28u)], 6u)], var_0))), Struct_3(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(global0.d, global4.d.d, vec3<i32>(2147483647i, -1i, var_0.a.x)), vec3<i32>(global0.d.x, -1i, global0.d.x)), Struct_1(global4.d.a, func_5(global1[_wgslsmith_index_u32(17517u, 6u)], Struct_3(vec3<i32>(1i, -13585i, global0.b), var_0.c, Struct_1(global0.a, 0i, global0.c, vec3<i32>(var_0.b.d.x, var_0.b.d.x, -10678i)))).b.b, var_0.b.c, vec3<i32>(2147483647i, 23422i, 1i)), Struct_1(global0.a, -global4.a, vec2<bool>(false, var_0.c.c.x), vec3<i32>(u_input.d.x, 0i, u_input.b.x))))).b;
    let var_1 = var_0.b;
    let var_2 = global0.d.xx;
    var var_3 = func_4(u_input.d, vec3<f32>(global2[_wgslsmith_index_u32(var_1.a.x, 23u)], 495f, _wgslsmith_f_op_f32(-743f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1388f - global2[_wgslsmith_index_u32(3515u, 23u)]))))), _wgslsmith_f_op_f32(1544f - global2[_wgslsmith_index_u32(func_5(Struct_2(-15706i, _wgslsmith_sub_u32(var_0.c.a.x, 0u), global0.a.x, func_5(Struct_2(var_0.c.d.x, global0.a.x, global0.a.x, var_1), var_0).c), var_0).c.a.x, 23u)]), vec4<u32>(~(~countOneBits(0u)), ~(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 28u)], 28u)] << (11026u % 32u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 0u, var_0.c.a.x, 1u) >> (func_4(vec3<i32>(-2147483647i, 28412i, u_input.d.x), vec3<f32>(958f, -159f, global2[_wgslsmith_index_u32(u_input.e, 23u)]), -622f, var_1.a).d.a % vec4<u32>(32u)), func_6(_wgslsmith_f_op_f32(select(813f, global2[_wgslsmith_index_u32(1u, 23u)], false)), Struct_3(vec3<i32>(22787i, -50512i, global0.d.x), global4.d, var_1)).a), _wgslsmith_sub_u32(_wgslsmith_div_u32(var_0.b.a.x, global3[_wgslsmith_index_u32(u_input.e, 28u)]), u_input.e) | u_input.e)).a;
    var var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, 1u, var_1.d.x << (~(~abs(var_4.c.a.x)) % 32u), ~var_0.c.d >> (global4.d.a.xyy % vec3<u32>(32u)), -548f);
}

