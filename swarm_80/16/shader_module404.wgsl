struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec2<bool>,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: u32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6>;

var<private> global1: array<i32, 29> = array<i32, 29>(11250i, 5611i, -1i, 2147483647i, -1i, -1i, 2147483647i, -1594i, 3026i, 24769i, -1i, 48445i, i32(-2147483648), 2147483647i, 7650i, 0i, 246i, 34936i, 0i, -32724i, 14496i, i32(-2147483648), 0i, 15852i, 2147483647i, 35664i, -5665i, -43398i, 1i);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = Struct_5(u_input.b.zy ^ firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0, 4294967295u), vec2<u32>(25532u, 4294967295u))), _wgslsmith_mod_u32(63860u, 1u), -1i);
    let var_1 = Struct_5(~_wgslsmith_mult_vec2_u32(select(select(vec2<u32>(31716u, var_0.b), vec2<u32>(u_input.a.x, u_input.d), vec2<bool>(false, false)), select(u_input.a.yy, vec2<u32>(var_0.b, 9548u), true), vec2<bool>(global0[_wgslsmith_index_u32(arg_0, 6u)], global0[_wgslsmith_index_u32(u_input.b.x, 6u)])), _wgslsmith_sub_vec2_u32(~u_input.a.yx, vec2<u32>(42437u, 0u))), u_input.a.x, select(var_0.c, _wgslsmith_clamp_i32(-global1[_wgslsmith_index_u32(0u, 29u)], var_0.c, var_0.c), all(vec3<bool>(!global0[_wgslsmith_index_u32(65416u, 6u)], true, global0[_wgslsmith_index_u32(~var_0.b, 6u)]))));
    let var_2 = all(!vec3<bool>(true, true, global0[_wgslsmith_index_u32(~var_0.a.x, 6u)])) | any(vec4<bool>(false, global0[_wgslsmith_index_u32(arg_0, 6u)], false & global0[_wgslsmith_index_u32(var_1.a.x, 6u)], true));
    var var_3 = vec2<i32>(abs(-(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_1.b), var_1.a), 29u)] >> (4294967295u % 32u))), -44800i);
    var var_4 = var_0.b;
    return global1[_wgslsmith_index_u32(select(var_1.b, var_1.a.x, all(select(select(!vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(u_input.a.x, 6u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 6u)], true, true, true), vec4<bool>(true, false, true, var_2), global0[_wgslsmith_index_u32(var_1.b, 6u)]), !vec4<bool>(global0[_wgslsmith_index_u32(1u, 6u)], false, global0[_wgslsmith_index_u32(var_1.a.x, 6u)], true)), select(!vec4<bool>(global0[_wgslsmith_index_u32(66207u, 6u)], var_2, false, true), select(vec4<bool>(true, var_2, global0[_wgslsmith_index_u32(0u, 6u)], true), vec4<bool>(false, var_2, var_2, global0[_wgslsmith_index_u32(arg_0, 6u)]), vec4<bool>(false, true, global0[_wgslsmith_index_u32(10459u, 6u)], var_2)), select(vec4<bool>(false, global0[_wgslsmith_index_u32(arg_0, 6u)], var_2, var_2), vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(4294967295u, 6u)]), true)), var_2))), 29u)];
}

fn func_4(arg_0: Struct_3, arg_1: vec3<i32>) -> vec2<f32> {
    var var_0 = (vec4<i32>(abs(2147483647i), ~2147483647i | arg_0.b.c.x, 0i, 31207i) << (countOneBits(firstLeadingBit(abs(vec4<u32>(0u, 882u, 0u, 0u)))) % vec4<u32>(32u))) << (~_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, arg_0.b.d.x, arg_0.d.a.x, 41733u), ~u_input.a), ~u_input.a) % vec4<u32>(32u));
    let var_1 = Struct_5(~(~_wgslsmith_clamp_vec2_u32(~arg_0.d.a, u_input.a.xw, vec2<u32>(u_input.b.x, 8705u))), ~_wgslsmith_div_u32(u_input.c, arg_0.d.a.x), 12126i);
    let var_2 = select(~1i, _wgslsmith_div_i32(~2147483647i, _wgslsmith_dot_vec2_i32(arg_1.xy, firstTrailingBit(var_0.wz)) ^ select(_wgslsmith_add_i32(-62827i, global1[_wgslsmith_index_u32(44886u, 29u)]), -2147483647i, true)), any(vec4<bool>(false, arg_0.c.x, arg_0.b.b.b.x, arg_0.c.x)));
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(858f, 1000f)) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-249f, 744f), vec2<f32>(-1168f, -383f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-650f, 464f)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-2026f, -1189f)))) + vec2<f32>(1f, 1f)) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1239f, -584f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1312f, 146f))))))));
}

fn func_2() -> vec2<f32> {
    global1 = array<i32, 29>();
    global1 = array<i32, 29>();
    global1 = array<i32, 29>();
    let var_0 = Struct_1(vec2<u32>(~u_input.c, ~1u), !(!select(!vec2<bool>(true, global0[_wgslsmith_index_u32(20653u, 6u)]), vec2<bool>(false, false), !vec2<bool>(global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(u_input.c, 6u)]))));
    let var_1 = true;
    return _wgslsmith_f_op_vec2_f32(func_4(Struct_3(var_1, Struct_2(var_0, var_0, vec4<i32>(26989i, 0i, 17722i, func_3(0u)), u_input.a.zyw), vec2<bool>(!select(var_1, false, var_1), true), var_0, !select(select(vec2<bool>(true, global0[_wgslsmith_index_u32(98613u, 6u)]), var_0.b, var_0.b.x), var_0.b, var_0.b.x)), vec3<i32>(min(_wgslsmith_dot_vec4_i32(vec4<i32>(272i, global1[_wgslsmith_index_u32(u_input.a.x, 29u)], -49356i, 1i) >> (vec4<u32>(1u, u_input.b.x, 89560u, 6139u) % vec4<u32>(32u)), -vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], -1i, global1[_wgslsmith_index_u32(0u, 29u)], 2147483647i)), global1[_wgslsmith_index_u32(firstLeadingBit(~55340u), 29u)]), 48443i, countOneBits(12725i))));
}

fn func_5(arg_0: vec2<f32>) -> bool {
    let var_0 = -(abs(~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -25962i, global1[_wgslsmith_index_u32(u_input.c, 29u)], global1[_wgslsmith_index_u32(u_input.a.x, 29u)]), vec4<i32>(global1[_wgslsmith_index_u32(42275u, 29u)], global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(u_input.a.x, 29u)], 1456i))) & global1[_wgslsmith_index_u32(firstTrailingBit(56736u), 29u)]);
    let var_1 = Struct_4(u_input.d, Struct_3(true, Struct_2(Struct_1(~vec2<u32>(u_input.a.x, u_input.a.x), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 6u)])), Struct_1(select(vec2<u32>(u_input.a.x, 0u), u_input.b.zx, vec2<bool>(false, true)), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 6u)], true)), -vec4<i32>(var_0, -27072i, global1[_wgslsmith_index_u32(u_input.b.x, 29u)], 57894i), vec3<u32>(firstLeadingBit(u_input.c), u_input.c, min(u_input.d, u_input.b.x))), select(select(vec2<bool>(true, true), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 6u)], global0[_wgslsmith_index_u32(u_input.c, 6u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 6u)], global0[_wgslsmith_index_u32(57647u, 6u)]), global0[_wgslsmith_index_u32(u_input.a.x, 6u)]), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 6u)], global0[_wgslsmith_index_u32(u_input.c, 6u)])), vec2<bool>(true, global0[_wgslsmith_index_u32(23168u, 6u)]), true), Struct_1(~vec2<u32>(53983u, 23568u), select(vec2<bool>(true, true), select(vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 6u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)]), global0[_wgslsmith_index_u32(u_input.c, 6u)]), true)), vec2<bool>(global0[_wgslsmith_index_u32(countOneBits(~u_input.d), 6u)], true)), _wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.d, 0u), ~_wgslsmith_mod_u32(u_input.a.x, u_input.b.x)), _wgslsmith_mod_u32(~(~u_input.a.x), ~u_input.b.x)));
    let var_2 = var_1.b.b;
    var var_3 = 39258i;
    let var_4 = Struct_5(_wgslsmith_clamp_vec2_u32(countOneBits(select(var_2.a.a, var_1.b.b.d.yz, true != global0[_wgslsmith_index_u32(var_2.a.a.x, 6u)])), _wgslsmith_mod_vec2_u32(~var_1.b.b.a.a, vec2<u32>(0u, 16787u)) ^ var_2.d.yx, ~abs(u_input.b.zx) << (~u_input.a.zx % vec2<u32>(32u))), u_input.a.x, 0i);
    return true;
}

fn func_1(arg_0: vec3<u32>, arg_1: u32) -> Struct_2 {
    global1 = array<i32, 29>();
    let var_0 = Struct_3(!all(select(vec2<bool>(global0[_wgslsmith_index_u32(arg_0.x, 6u)], global0[_wgslsmith_index_u32(861u, 6u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(67379u, 6u)]), global0[_wgslsmith_index_u32(48338u, 6u)])) && func_5(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_2())))), Struct_2(Struct_1(vec2<u32>(0u, arg_1) << (reverseBits(vec2<u32>(16112u, arg_0.x)) % vec2<u32>(32u)), !(!vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 6u)]))), Struct_1(~(~vec2<u32>(1u, 25275u)), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 6u)] && global0[_wgslsmith_index_u32(u_input.b.x, 6u)], true)), vec4<i32>(~(-47520i) | reverseBits(global1[_wgslsmith_index_u32(arg_1, 29u)]), -2147483647i, 20738i >> (abs(0u) % 32u), -2147483647i), _wgslsmith_add_vec3_u32(~reverseBits(u_input.b), countOneBits(vec3<u32>(95350u, 4294967295u, arg_1) | vec3<u32>(arg_0.x, 0u, arg_1)))), select(!select(!vec2<bool>(true, global0[_wgslsmith_index_u32(arg_0.x, 6u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 6u)]), vec2<bool>(false, true)), select(!vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 6u)]), !select(vec2<bool>(true, true), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 6u)]), false), true), vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0.x ^ arg_0.x, arg_1, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, u_input.d), vec2<u32>(16881u, 64786u))), 6u)], global0[_wgslsmith_index_u32(~1u, 6u)])), Struct_1((vec2<u32>(u_input.d, arg_0.x) | u_input.a.xy) >> (u_input.b.yz % vec2<u32>(32u)), vec2<bool>(true, false)), select(select(!vec2<bool>(global0[_wgslsmith_index_u32(arg_0.x, 6u)], global0[_wgslsmith_index_u32(arg_1, 6u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(4539u, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)]), !vec2<bool>(true, global0[_wgslsmith_index_u32(arg_1, 6u)]), global0[_wgslsmith_index_u32(u_input.b.x, 6u)]), global0[_wgslsmith_index_u32(4294967295u, 6u)]), vec2<bool>(func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(485f, 653f))), true), global0[_wgslsmith_index_u32(abs(arg_0.x), 6u)]));
    var var_1 = Struct_5(countOneBits(vec2<u32>(~(~var_0.b.d.x), _wgslsmith_clamp_u32(44766u, _wgslsmith_dot_vec3_u32(var_0.b.d, vec3<u32>(9799u, 4294967295u, var_0.b.b.a.x)), arg_0.x))), 52431u, -2147483647i);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(939f * 1099f)))))) + _wgslsmith_f_op_f32(round(-896f)));
    let var_3 = u_input.a;
    return var_0.b;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<f32>) -> f32 {
    let var_0 = arg_1;
    let var_1 = Struct_1(~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 20227u), var_0.a.a), func_1(_wgslsmith_clamp_vec3_u32(var_0.d, vec3<u32>(u_input.b.x, 121938u, 52212u) ^ (vec3<u32>(arg_1.d.x, 0u, arg_1.b.a.x) ^ vec3<u32>(69798u, u_input.d, 41680u)), arg_1.d), _wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, 43502u, var_0.b.a.x) << (arg_1.d % vec3<u32>(32u)), ~arg_1.d, false), ~vec3<u32>(1u, 0u, u_input.b.x))).a.b);
    global0 = array<bool, 6>();
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 37846u), 6u)];
    let var_3 = 1i;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - arg_2.x)))))) + _wgslsmith_f_op_f32(-arg_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 6>();
    let var_0 = vec4<f32>(-765f, 1272f, _wgslsmith_f_op_f32(-305f + _wgslsmith_f_op_f32(trunc(1018f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_6(Struct_1(vec2<u32>(5681u, u_input.a.x) << (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)), !vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 6u)])), func_1(~vec3<u32>(u_input.a.x, u_input.d, 61706u), 4294967295u >> (u_input.c % 32u)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(789f, 692f)))))) * 307f));
    var var_1 = global0[_wgslsmith_index_u32(4294967295u, 6u)];
    let var_2 = func_1(select(u_input.a.xxy, abs(vec3<u32>(1u, u_input.d, 0u)), func_1(~vec3<u32>(100521u, u_input.b.x, 0u), u_input.d).a.b.x) | select(u_input.b, u_input.a.xxz, vec3<bool>(var_0.x <= var_0.x, !global0[_wgslsmith_index_u32(u_input.d, 6u)], -514f > var_0.x)), 0u);
    var var_3 = -vec2<i32>(global1[_wgslsmith_index_u32(~var_2.b.a.x, 29u)], -1i);
    let x = u_input.a;
    s_output = StorageBuffer(select(77398u, ~(~_wgslsmith_add_u32(u_input.a.x, 33184u)), var_2.b.b.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(488f, _wgslsmith_f_op_f32(-var_0.x), 592f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_0.zxw))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_2.a.a.x << (u_input.d % 32u), select(u_input.b.x, 42808u, global0[_wgslsmith_index_u32(var_2.a.a.x, 6u)])), 6u)] && func_1(var_2.d, reverseBits(4294967295u)).a.b.x)), var_2.c.zx, var_0.x, firstLeadingBit(max(~_wgslsmith_dot_vec2_i32(var_2.c.yw, var_2.c.yz), -(~20008i))));
}

