struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15> = array<f32, 15>(1000f, 406f, 2786f, 1100f, -863f, -230f, 241f, -1000f, 1336f, -1000f, -1176f, -1799f, -1023f, 832f, -1080f);

var<private> global1: Struct_2 = Struct_2(vec3<f32>(682f, 985f, 2192f), 60444i, Struct_1(vec3<i32>(i32(-2147483648), -9599i, -1i), 630u, 923f, vec4<bool>(false, true, true, false)), Struct_1(vec3<i32>(1i, 0i, 2147483647i), 38957u, 1000f, vec4<bool>(true, false, true, true)));

var<private> global2: array<Struct_1, 4>;

var<private> global3: Struct_3 = Struct_3(Struct_2(vec3<f32>(1000f, 1000f, -796f), -26719i, Struct_1(vec3<i32>(-3748i, -72860i, 62333i), 0u, -880f, vec4<bool>(false, false, false, false)), Struct_1(vec3<i32>(2147483647i, 0i, -33711i), 37399u, 196f, vec4<bool>(false, false, true, true))), Struct_1(vec3<i32>(1i, 33268i, 19770i), 35259u, -136f, vec4<bool>(false, false, true, true)), 53290u, vec2<i32>(i32(-2147483648), 53813i), 4294967295u);

var<private> global4: vec3<u32> = vec3<u32>(4294967295u, 13061u, 52949u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    var var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~(global3.a.c.b | global1.c.b), 15u)] * -727f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1744f, _wgslsmith_f_op_f32(-global3.a.d.c), global1.d.d.x)), global0[_wgslsmith_index_u32(firstLeadingBit(global3.e), 15u)])), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global1.d.b, 15u)] - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1.c.b, 15u)]))), ~global1.b, global3.b, global1.d);
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -567f)));
    var var_2 = i32(-1i) * -1i;
    global4 = ~select(countOneBits((vec3<u32>(4294967295u, 47959u, var_0.d.b) ^ vec3<u32>(var_0.d.b, 4294967295u, 4294967295u)) ^ vec3<u32>(global1.c.b, global1.c.b, 1u)), ~vec3<u32>(~global1.d.b, _wgslsmith_mod_u32(global1.d.b, 1u), ~global1.c.b), global1.c.d.wwz);
    global2 = array<Struct_1, 4>();
    return _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~select(_wgslsmith_mult_vec4_u32(vec4<u32>(11542u, 4294967295u, global3.a.c.b, 1u), vec4<u32>(33158u, global1.c.b, 58128u, var_0.d.b)), min(vec4<u32>(global4.x, 55792u, global4.x, 4294967295u), vec4<u32>(global4.x, global1.d.b, global4.x, 67526u)), vec4<bool>(global3.a.c.d.x, global1.d.d.x, global3.a.d.d.x, var_0.c.d.x)), _wgslsmith_mult_vec4_u32(max(~vec4<u32>(global1.c.b, global3.e, global3.a.c.b, 36454u), vec4<u32>(global4.x, 90056u, global3.e, global1.c.b)), ~vec4<u32>(global3.c, global3.b.b, 4294967295u, global1.c.b))), ~vec4<u32>(global4.x, ~93009u, 0u, reverseBits(9151u)) | ~(~vec4<u32>(global4.x, 2514u, 1u, var_0.c.b)));
}

fn func_2(arg_0: vec4<bool>) -> u32 {
    let var_0 = ~vec2<u32>(~1u, 72343u);
    let var_1 = vec2<u32>(firstTrailingBit(_wgslsmith_sub_u32(global3.a.c.b, 1u)), func_3());
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(-251f, 1817f)), 1145f, 578f) + global3.a.a)), 1i, Struct_1(countOneBits(-vec3<i32>(-2147483647i, -24281i, 2147483647i)), 52696u, -654f, select(!select(vec4<bool>(global3.b.d.x, true, global3.b.d.x, true), global3.a.d.d, global3.a.c.d), !(!vec4<bool>(false, global1.c.d.x, true, false)), vec4<bool>(true, false, true, arg_0.x))), global2[_wgslsmith_index_u32(29951u, 4u)]);
    let var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(381f)), _wgslsmith_f_op_f32(min(global1.a.x, -450f)), _wgslsmith_f_op_f32(-global1.a.x))))));
    global2 = array<Struct_1, 4>();
    return 52399u;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: bool, arg_3: Struct_2) -> Struct_2 {
    var var_0 = true;
    var_0 = any(vec4<bool>(all(vec2<bool>(true, all(arg_1.a.c.d.zyz))), all(!select(arg_1.a.c.d.wxz, arg_3.c.d.zyy, arg_3.c.d.xyy)), false, any(vec4<bool>(arg_1.b.d.x, false, arg_2, true)) || !arg_1.b.d.x));
    var var_1 = arg_3;
    let var_2 = _wgslsmith_f_op_f32(max(409f, _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(41054u, 15u)]))));
    var var_3 = 5690i;
    return Struct_2(global3.a.a, (6893i | global1.d.a.x) >> (global3.c % 32u), var_1.c, global3.b);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<f32>) -> Struct_2 {
    var var_0 = func_4(~vec3<u32>(~global1.d.b, ~func_2(global3.a.d.d), _wgslsmith_div_u32(global1.c.b, _wgslsmith_mult_u32(global4.x, 4294967295u))), Struct_3(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(1000f + global0[_wgslsmith_index_u32(global3.c, 15u)]), arg_0.x, _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_sub_i32(countOneBits(-20699i), 0i), Struct_1(global3.b.a, global4.x, -1065f, global1.c.d), global2[_wgslsmith_index_u32(~global4.x, 4u)]), Struct_1(~(global3.b.a << (vec3<u32>(global1.c.b, global3.c, global3.c) % vec3<u32>(32u))), 1u >> (_wgslsmith_sub_u32(101520u, global1.d.b) % 32u), arg_1.x, vec4<bool>(false, true, any(vec4<bool>(global3.b.d.x, global3.b.d.x, true, true)), global3.b.d.x & global3.b.d.x)), _wgslsmith_clamp_u32(func_3(), reverseBits(1u), ~global4.x), vec2<i32>(global1.c.a.x, _wgslsmith_add_i32(0i, global1.d.a.x) & _wgslsmith_clamp_i32(-2147483647i, -3081i, -32708i)), ~(~0u) >> (_wgslsmith_dot_vec4_u32(max(vec4<u32>(4294967295u, 22211u, global1.c.b, global3.e), vec4<u32>(1u, global3.b.b, 4294967295u, global1.c.b)), vec4<u32>(global3.c, global3.a.c.b, global1.c.b, global3.b.b)) % 32u)), !global3.b.d.x || !all(global1.d.d.xyy), global3.a);
    global4 = ~(min(select(~vec3<u32>(1u, 13542u, 73428u), select(vec3<u32>(global4.x, global1.c.b, 26146u), vec3<u32>(1u, global1.c.b, 1u), vec3<bool>(true, var_0.d.d.x, global1.d.d.x)), vec3<bool>(true, true, true)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(global3.c, 18313u, 1u), vec3<u32>(var_0.c.b, 1u, global3.e), vec3<u32>(105031u, 1u, 37176u))) & select(_wgslsmith_mult_vec3_u32(vec3<u32>(global1.d.b, 0u, global4.x), vec3<u32>(global4.x, var_0.c.b, global3.a.d.b)), (vec3<u32>(1799u, var_0.c.b, 41553u) & vec3<u32>(global4.x, var_0.d.b, 4294967295u)) >> (firstLeadingBit(vec3<u32>(44442u, 1u, 19982u)) % vec3<u32>(32u)), vec3<bool>(0u <= var_0.d.b, global3.d.x >= global1.d.a.x, global3.a.d.d.x)));
    let var_1 = Struct_2(global1.a, var_0.b, global3.a.d, global1.c);
    let var_2 = Struct_2(global3.a.a, ~(-(countOneBits(23230i) >> (0u % 32u))), Struct_1(func_4(abs(vec3<u32>(1u, 1u, 1u)), Struct_3(func_4(vec3<u32>(0u, 26047u, var_0.c.b), Struct_3(Struct_2(vec3<f32>(global0[_wgslsmith_index_u32(31046u, 15u)], var_0.a.x, global1.c.c), global3.d.x, Struct_1(global1.d.a, 22116u, -297f, vec4<bool>(var_1.c.d.x, false, global1.c.d.x, false)), var_0.d), Struct_1(vec3<i32>(global3.d.x, global1.b, 50222i), var_1.d.b, 749f, global3.a.d.d), global3.c, var_1.d.a.zz, var_1.c.b), global3.a.d.d.x, var_1), global2[_wgslsmith_index_u32(1u, 4u)], 24080u, _wgslsmith_clamp_vec2_i32(global1.c.a.xy, var_1.d.a.zz, vec2<i32>(0i, -25027i)), ~global1.d.b), func_4(_wgslsmith_mult_vec3_u32(vec3<u32>(68670u, 50131u, var_1.d.b), vec3<u32>(global3.e, global4.x, 0u)), Struct_3(global3.a, var_1.d, 31902u, var_0.d.a.xy, global3.a.d.b), false & var_1.c.d.x, var_1).d.d.x, var_1).d.a, _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(global4.xy, vec2<u32>(25424u, var_1.d.b)), vec2<u32>(35943u ^ var_0.c.b, _wgslsmith_mult_u32(var_1.d.b, 4294967295u))), global0[_wgslsmith_index_u32(var_0.c.b, 15u)], !select(select(vec4<bool>(false, global3.b.d.x, global1.d.d.x, global1.c.d.x), vec4<bool>(global3.b.d.x, global3.b.d.x, false, var_1.d.d.x), vec4<bool>(true, true, false, var_0.c.d.x)), global1.c.d, global1.c.d)), Struct_1(~vec3<i32>(u_input.a & var_0.c.a.x, ~var_0.c.a.x, i32(-1i) * -43411i), countOneBits(4294967295u), 1000f, vec4<bool>(true, var_1.d.d.x, global1.c.d.x, var_0.c.d.x)));
    var_0 = func_4((reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(25246u, var_1.d.b, global4.x), vec3<u32>(global1.d.b, 1u, global3.b.b))) | vec3<u32>(_wgslsmith_div_u32(25293u, global1.c.b), 0u, var_1.d.b & 34910u)) & abs(select(vec3<u32>(9037u, var_1.d.b, 79297u) >> (vec3<u32>(global3.a.d.b, 79313u, 10567u) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(global4.x, var_0.c.b, var_0.d.b), vec3<u32>(9799u, 4294967295u, var_2.d.b)), select(global1.d.d.xyy, var_0.d.d.yzw, false))), Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.x, 230f, arg_1.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1020f, global3.a.a.x, -872f))), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.b, var_1.b, u_input.a, -34757i), vec4<i32>(var_1.c.a.x, -2147483647i, -18481i, var_1.b)), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 40771i), global3.a.c.a.zx)), Struct_1(global1.d.a, 0u ^ var_1.c.b, _wgslsmith_f_op_f32(-var_1.c.c), global3.b.d), func_4(firstLeadingBit(vec3<u32>(var_2.d.b, global1.c.b, 4294967295u)), Struct_3(var_2, var_2.d, global3.a.c.b, var_2.c.a.xy, 1u), false, func_4(vec3<u32>(global3.c, 1u, var_0.d.b), Struct_3(Struct_2(vec3<f32>(global1.d.c, -435f, 1742f), global1.c.a.x, global3.b, Struct_1(vec3<i32>(2147483647i, global3.a.d.a.x, 0i), 4294967295u, 1384f, var_0.d.d)), global2[_wgslsmith_index_u32(4294967295u, 4u)], 4294967295u, global1.c.a.yz, var_1.d.b), false, var_1)).d), func_4(reverseBits(~vec3<u32>(var_1.c.b, global1.d.b, var_2.d.b)), Struct_3(func_4(vec3<u32>(global4.x, global3.a.c.b, var_0.d.b), Struct_3(var_1, Struct_1(vec3<i32>(-61525i, 1i, 0i), 8481u, 1473f, global3.b.d), 19285u, vec2<i32>(0i, 1i), var_1.d.b), global1.c.d.x, var_2), Struct_1(vec3<i32>(2147483647i, u_input.a, global3.b.a.x), var_2.c.b, global3.a.a.x, var_0.d.d), global4.x, var_2.c.a.yz, _wgslsmith_mult_u32(var_1.c.b, 19240u)), (47425i >= var_2.b) & true, global3.a).d, _wgslsmith_mult_u32(64900u, var_2.c.b), _wgslsmith_clamp_vec2_i32(select(-vec2<i32>(33247i, var_2.c.a.x), -vec2<i32>(global3.b.a.x, var_2.b), true), -(var_2.c.a.yz & vec2<i32>(var_2.b, 0i)), reverseBits(min(vec2<i32>(9937i, var_2.c.a.x), vec2<i32>(var_0.c.a.x, var_0.b)))), var_2.d.b), func_4(_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(1u, var_1.d.b, 0u)), firstTrailingBit(~vec3<u32>(global1.d.b, global3.e, global4.x))), Struct_3(Struct_2(arg_0.xxy, -var_0.c.a.x, Struct_1(vec3<i32>(global1.c.a.x, var_0.b, global1.b), var_0.d.b, var_1.d.c, vec4<bool>(true, false, false, global1.c.d.x)), Struct_1(global1.d.a, var_2.d.b, -1480f, var_1.c.d)), var_0.d, ~func_2(var_0.d.d), vec2<i32>(-1i, var_2.c.a.x), abs(func_4(vec3<u32>(global3.a.d.b, 228u, 1u), Struct_3(Struct_2(vec3<f32>(global1.d.c, -610f, -1129f), global1.d.a.x, Struct_1(vec3<i32>(0i, var_0.d.a.x, var_0.d.a.x), var_1.d.b, 1000f, var_2.d.d), Struct_1(global1.d.a, 4294967295u, arg_1.x, vec4<bool>(false, true, true, var_1.c.d.x))), Struct_1(global1.c.a, var_2.d.b, 1043f, global1.d.d), 0u, vec2<i32>(-1i, -1i), 0u), var_0.d.d.x, Struct_2(arg_0.wyx, var_0.b, global2[_wgslsmith_index_u32(var_2.d.b, 4u)], Struct_1(global1.d.a, 1u, -1000f, vec4<bool>(false, true, global1.c.d.x, var_2.c.d.x)))).d.b)), !func_4(reverseBits(vec3<u32>(1906u, 3006u, global1.d.b)), Struct_3(Struct_2(vec3<f32>(arg_1.x, global1.a.x, arg_1.x), -2147483647i, global3.a.c, global3.b), Struct_1(var_2.d.a, 39749u, 1000f, var_2.c.d), 1u, var_0.c.a.yy, 21457u), global4.x != global4.x, func_4(vec3<u32>(6835u, global1.c.b, global1.c.b), Struct_3(var_1, Struct_1(var_2.d.a, 52275u, -416f, vec4<bool>(global3.b.d.x, false, true, global1.d.d.x)), 0u, var_1.c.a.yx, 4294967295u), true, Struct_2(var_2.a, global1.b, Struct_1(vec3<i32>(-44259i, var_2.c.a.x, -2147483647i), global1.c.b, var_0.c.c, vec4<bool>(true, false, var_2.c.d.x, var_0.c.d.x)), var_1.c))).c.d.x, Struct_2(var_2.a, abs(global3.a.d.a.x) >> (func_2(var_0.d.d) % 32u), Struct_1(var_0.d.a, reverseBits(global4.x), -1281f, global1.c.d), Struct_1(-var_0.c.a, var_0.d.b, _wgslsmith_f_op_f32(-global1.d.c), !vec4<bool>(var_2.c.d.x, global1.c.d.x, false, var_0.d.d.x)))).c.d.x, func_4((~vec3<u32>(global4.x, var_2.d.b, var_0.d.b) >> (vec3<u32>(var_0.c.b, var_0.d.b, global4.x) % vec3<u32>(32u))) >> (_wgslsmith_add_vec3_u32(vec3<u32>(75211u, global1.d.b, 1u) ^ vec3<u32>(var_2.c.b, global3.b.b, var_2.d.b), ~vec3<u32>(0u, 48807u, var_0.c.b)) % vec3<u32>(32u)), Struct_3(global3.a, func_4(abs(vec3<u32>(var_1.d.b, var_0.d.b, 69501u)), Struct_3(var_2, Struct_1(global1.c.a, 24458u, 897f, vec4<bool>(var_1.c.d.x, global3.b.d.x, false, true)), var_0.c.b, vec2<i32>(-2147483647i, u_input.a), var_1.d.b), false, Struct_2(global1.a, u_input.a, global3.a.c, Struct_1(var_2.d.a, 83871u, var_0.d.c, var_1.c.d))).c, abs(~global1.d.b), vec2<i32>(-1i & var_0.b, -1i), min(var_0.c.b >> (global3.c % 32u), global1.c.b)), false & var_1.c.d.x, global3.a));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = ~(~global3.e);
    let var_2 = func_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(561f, global0[_wgslsmith_index_u32(var_1, 15u)], global0[_wgslsmith_index_u32(global3.a.d.b, 15u)], -1324f) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1197f, 647f, -2015f, global3.b.c)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0[_wgslsmith_index_u32(var_1, 15u)], -675f, global3.b.c, -115f), vec4<f32>(-358f, global0[_wgslsmith_index_u32(1u, 15u)], global3.b.c, global0[_wgslsmith_index_u32(global3.c, 15u)]))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(120f, -138f, 335f, global0[_wgslsmith_index_u32(4294967295u, 15u)]))) + vec4<f32>(-414f, 1206f, -1930f, -490f)) * vec4<f32>(1011f, global3.b.c, 748f, _wgslsmith_f_op_f32(-global1.d.c)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1.a.xx, vec2<f32>(global3.b.c, -756f))));
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d.c) + var_2.d.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-474f * -526f))))));
    let var_4 = var_2.d.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(2147483647i ^ (2147483647i & global3.b.a.x), i32(-1i) * -1i, _wgslsmith_add_i32(~global3.b.a.x, -global1.b ^ (0i << (global4.x % 32u)))));
}

