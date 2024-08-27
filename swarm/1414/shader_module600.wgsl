struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: i32,
    d: vec4<f32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec3<bool>,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4>;

var<private> global1: Struct_3;

var<private> global2: Struct_5 = Struct_5(0i);

var<private> global3: array<u32, 29> = array<u32, 29>(21253u, 0u, 48194u, 4294967295u, 4294967295u, 6862u, 21806u, 1399u, 1u, 1u, 44411u, 4294967295u, 1u, 4294967295u, 4294967295u, 1u, 99759u, 28762u, 4294967295u, 83172u, 9476u, 22293u, 4294967295u, 21907u, 10523u, 40636u, 1u, 48042u, 29730u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>) -> i32 {
    global1 = Struct_3(global1.c.zz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1109f)) + 1297f), -205f, -1033f)), !(!(!(!vec3<bool>(global1.a.x, global1.e.a.a, false)))), _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(_wgslsmith_mult_i32(21261i, 0i), global2.a, 4959i, reverseBits(countOneBits(global2.a)))), Struct_2(Struct_1(global1.e.e.x), global1.e.b, countOneBits(i32(-1i) * -1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 29u)], 4u)], -834f, 197f, -1756f))))), vec4<bool>(select(global1.e.b.x, global3[_wgslsmith_index_u32(global1.e.b.x, 29u)], global1.c.x) >= global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(50874u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(11796u, 29u)], 29u)], global1.e.b.x, 1u), global1.e.b), 29u)], true, global1.a.x, any(global1.e.e.yw))));
    var var_0 = Struct_4(select(vec2<i32>(u_input.d.x, arg_0.x), _wgslsmith_clamp_vec2_i32(-arg_0.wx, -vec2<i32>(-1i, global2.a) | u_input.d.zw, u_input.d.xz), vec2<bool>(~global1.e.b.x == _wgslsmith_dot_vec4_u32(global1.e.b, global1.e.b), select(!global1.a.x, all(global1.e.e.xyx), !global1.c.x))));
    let var_1 = global1.e.b.wxw;
    global2 = Struct_5(select(arg_0.x, -var_0.a.x, global1.c.x) << (global3[_wgslsmith_index_u32(~var_1.x, 29u)] % 32u));
    let var_2 = _wgslsmith_f_op_f32(max(-183f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-307f * 495f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(0u, 4u)], 1180f, true))))))));
    return _wgslsmith_sub_i32(global1.e.c, -1i);
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: u32) -> vec3<f32> {
    global1 = Struct_3(global1.c.zx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global1.e.d.yzx), global1.b, global1.e.b.x > global3[_wgslsmith_index_u32(4294967295u, 29u)])), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.e.d.x, -104f, 572f), arg_1)))))) + _wgslsmith_f_op_vec3_f32(global1.e.d.zyy + vec3<f32>(-382f, global1.b.x, _wgslsmith_f_op_f32(exp2(arg_1.x))))), select(vec3<bool>(false, !global1.c.x | false, global1.e.a.a), global1.c, all(!vec2<bool>(global1.c.x, global1.c.x))), u_input.a.x << (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(25459u, 29u)], 29u)] % 32u), Struct_2(Struct_1(any(select(vec3<bool>(global1.c.x, global1.c.x, global1.e.e.x), vec3<bool>(false, true, false), vec3<bool>(global1.a.x, false, global1.c.x)))), vec4<u32>(~1u, arg_2 << (~arg_0 % 32u), 93299u, _wgslsmith_dot_vec3_u32(global1.e.b.yyw, global1.e.b.wxw) | 4294967295u), ~func_3(u_input.d | vec4<i32>(u_input.b.x, -1370i, u_input.c, global1.e.c)), vec4<f32>(_wgslsmith_f_op_f32(ceil(-177f)), _wgslsmith_f_op_f32(f32(-1f) * -1108f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2425f + global1.e.d.x), _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(1u, 4u)]))), global0[_wgslsmith_index_u32(~4294967295u ^ countOneBits(global1.e.b.x), 4u)]), vec4<bool>(!select(global1.a.x, global1.a.x, global1.c.x), (global2.a >> (0u % 32u)) <= _wgslsmith_clamp_i32(global1.e.c, u_input.b.x, -4115i), global1.e.e.x, false)));
    var var_0 = 669f;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1.b.x, global1.e.d.x), 465f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x))), 532f);
    let var_2 = 13243i;
    var var_3 = Struct_5(12994i);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1 - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(global1.b * vec3<f32>(113f, 469f, global1.b.x))))) * vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1410f - arg_1.x))), 504f)), -789f, global1.b.x));
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: Struct_5) -> Struct_4 {
    let var_0 = global1.e.a;
    global1 = Struct_3(global1.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(4294967295u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 494f, 746f) - vec3<f32>(global1.b.x, arg_0.b.x, 1163f))), ~(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0.e.b.x, 29u)], 29u)]))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(global1.e.d.x)), 787f, _wgslsmith_f_op_f32(-global1.e.d.x)))), vec3<bool>(var_0.a, false, arg_0.c.x), _wgslsmith_mod_i32(countOneBits(arg_2.a) >> (_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global3[_wgslsmith_index_u32(1u, 29u)]), arg_0.e.b.zy), ~37051u) % 32u), arg_0.d << (~(~1u) % 32u)), Struct_2(Struct_1(arg_0.e.e.x == var_0.a), abs(global1.e.b), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.b, _wgslsmith_sub_vec2_i32(u_input.b, vec2<i32>(arg_0.e.c, 0i))), -arg_0.d & _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 12203i), u_input.a.xx)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1408f, -1064f, global0[_wgslsmith_index_u32(arg_0.e.b.x, 4u)], -311f) - vec4<f32>(global0[_wgslsmith_index_u32(global1.e.b.x, 4u)], global0[_wgslsmith_index_u32(arg_0.e.b.x, 4u)], -722f, global0[_wgslsmith_index_u32(arg_0.e.b.x, 4u)])), arg_0.e.d))), arg_0.e.e));
    global1 = Struct_3(select(vec2<bool>(false, true), select(vec2<bool>(!arg_1, all(vec2<bool>(var_0.a, true))), select(arg_0.c.xy, arg_0.e.e.zw, !vec2<bool>(true, global1.a.x)), global1.c.zx), true), vec3<f32>(248f, 1519f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global1.e.b.wxz, global1.e.b.zxx), 4u)]))), select(arg_0.c, !global1.e.e.wyx, !select(vec3<bool>(true, arg_1, arg_0.e.a.a), vec3<bool>(true, arg_0.a.x, arg_0.a.x), arg_1)), ~global1.e.c, Struct_2(global1.e.a, ~arg_0.e.b, 2147483647i, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -577f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.e.d.x + global0[_wgslsmith_index_u32(0u, 4u)]), 1000f, var_0.a & true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f + global1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(672f)))), vec4<bool>(all(!global1.e.e.zzx), all(select(arg_0.c.zz, vec2<bool>(arg_1, arg_1), arg_0.a)), !arg_1, any(!global1.e.e))));
    let var_1 = (~firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(25796u, 0u, 4294967295u), vec3<u32>(arg_0.e.b.x, 16868u, 1u))) << (arg_0.e.b.xwz % vec3<u32>(32u))) ^ ~arg_0.e.b.zwx;
    var var_2 = 0u;
    return Struct_4(u_input.a.xw);
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_4) -> f32 {
    global1 = Struct_3(arg_0.wy, global1.e.d.yxw, vec3<bool>(all(global1.c), true == (global1.e.b.x >= 37044u), !(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, 0u), 4u)] != global0[_wgslsmith_index_u32(~30417u, 4u)])), 0i, global1.e);
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-220f * -946f) - _wgslsmith_f_op_f32(min(global1.e.d.x, 1000f))), _wgslsmith_f_op_f32(-1232f + -584f))) - 245f), global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(global1.e.b, global1.e.b), global1.e.b) | global3[_wgslsmith_index_u32(1u, 29u)]), 4u)]);
    let var_1 = func_1(Struct_3(!vec2<bool>(any(global1.a), !arg_0.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(19355u, 4u)], var_0.x, var_0.x)))) + global1.e.d.wyx), global1.e.e.zwy, ~1i, Struct_2(global1.e.a, select(abs(vec4<u32>(global1.e.b.x, global3[_wgslsmith_index_u32(1u, 29u)], 0u, 0u)), max(vec4<u32>(global3[_wgslsmith_index_u32(1u, 29u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(53886u, 29u)], 29u)], 29u)], 0u, 32986u), global1.e.b), arg_0.x), _wgslsmith_mod_i32(~global1.d, 1i), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, global0[_wgslsmith_index_u32(44294u, 4u)], global0[_wgslsmith_index_u32(global1.e.b.x, 4u)], global1.b.x), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], var_0.x, global0[_wgslsmith_index_u32(28223u, 4u)], -1158f))))), vec4<bool>(true, true, !arg_1, true))), true, Struct_5(_wgslsmith_mod_i32(func_1(Struct_3(global1.a, global1.b, global1.e.e.xxz, -2147483647i, global1.e), global1.c.x, Struct_5(global1.e.c)).a.x, 0i)));
    return var_0.x;
}

fn func_5(arg_0: vec3<f32>) -> vec3<u32> {
    var var_0 = u_input.b;
    global1 = Struct_3(vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, global1.e.d.x, _wgslsmith_f_op_f32(func_4(select(global1.e.e, global1.e.e, false), true, Struct_4(vec2<i32>(global2.a, var_0.x)))))), select(!vec3<bool>(395f >= global1.b.x, select(false, false, true), !global1.c.x), vec3<bool>(global1.c.x, global1.a.x, !global1.a.x), true), _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.a.x, _wgslsmith_div_i32(-1i, -1i >> (global3[_wgslsmith_index_u32(4294967295u, 29u)] % 32u))), _wgslsmith_sub_i32(-global1.e.c, global1.e.c)), global1.e);
    var var_1 = -func_1(Struct_3(vec2<bool>(global1.a.x, true), arg_0, select(global1.e.e.yyy, select(vec3<bool>(global1.a.x, false, global1.a.x), vec3<bool>(global1.a.x, true, global1.e.e.x), vec3<bool>(true, true, true)), true), -42901i, Struct_2(Struct_1(global1.e.e.x), global1.e.b, global2.a, _wgslsmith_div_vec4_f32(global1.e.d, global1.e.d), vec4<bool>(true, true, false, global1.a.x))), global1.e.e.x, Struct_5(2147483647i)).a.x;
    global3 = array<u32, 29>();
    global1 = Struct_3(vec2<bool>(any(vec4<bool>(true, select(true, global1.c.x, global1.a.x), false, global1.a.x == true)), !(!(!global1.e.e.x))), _wgslsmith_f_op_vec3_f32(arg_0 * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(29219u, 4u)], 152f, 403f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global1.e.d.wyy, arg_0)))), !vec3<bool>(false, true, all(global1.e.e)), -6911i, Struct_2(Struct_1(!all(vec2<bool>(false, false))), global1.e.b, global2.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1400f, global0[_wgslsmith_index_u32(global1.e.b.x, 4u)], arg_0.x, global1.b.x))) - global1.e.d), vec4<bool>(any(global1.c.yz), global1.a.x, ~var_0.x == u_input.b.x, true)));
    return ~vec3<u32>(_wgslsmith_dot_vec3_u32(min(vec3<u32>(global1.e.b.x, 39598u, 0u) | vec3<u32>(26328u, 1u, global1.e.b.x), _wgslsmith_mult_vec3_u32(global1.e.b.yzz, vec3<u32>(8618u, global3[_wgslsmith_index_u32(38201u, 29u)], global3[_wgslsmith_index_u32(67821u, 29u)]))), _wgslsmith_mult_vec3_u32(global1.e.b.yzx ^ global1.e.b.yxx, ~vec3<u32>(1u, global3[_wgslsmith_index_u32(0u, 29u)], global3[_wgslsmith_index_u32(0u, 29u)]))), 1u, ~(10996u << (1u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_5(vec3<f32>(global0[_wgslsmith_index_u32(1u, 4u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-2046f)))), _wgslsmith_f_op_f32(func_4(global1.e.e, !global1.c.x, func_1(Struct_3(vec2<bool>(global1.a.x, global1.e.a.a), vec3<f32>(-1038f, -1235f, -890f), vec3<bool>(global1.a.x, global1.c.x, global1.c.x), u_input.a.x, global1.e), global1.c.x, Struct_5(global1.e.c))))));
    global2 = Struct_5(_wgslsmith_add_i32(abs(_wgslsmith_div_i32(_wgslsmith_add_i32(-3086i, u_input.b.x), i32(-1i) * -1i)), _wgslsmith_add_i32(9152i, -_wgslsmith_add_i32(global2.a, global2.a))));
    global3 = array<u32, 29>();
    global3 = array<u32, 29>();
    let var_1 = ~1u;
    global3 = array<u32, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(~abs(-2147483647i), _wgslsmith_div_vec3_f32(global1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(var_0.x, 4u)], global1.e.d.x, global1.e.d.x) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-641f, global1.b.x, -287f) + vec3<f32>(global0[_wgslsmith_index_u32(0u, 4u)], 1388f, global0[_wgslsmith_index_u32(1u, 4u)]))))), u_input.c);
}

