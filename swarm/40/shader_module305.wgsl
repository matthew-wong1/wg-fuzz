struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(false, true), vec4<f32>(-604f, 1000f, 283f, -1146f));

var<private> global1: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec2<bool>(false, false), vec4<f32>(2146f, -1648f, -166f, 128f)), Struct_1(vec2<bool>(true, true), vec4<f32>(837f, 1394f, -1087f, -696f)), Struct_1(vec2<bool>(false, false), vec4<f32>(-2732f, 591f, 872f, -247f)), Struct_1(vec2<bool>(false, false), vec4<f32>(1136f, -1055f, 530f, 594f)), Struct_1(vec2<bool>(false, false), vec4<f32>(276f, -830f, 428f, 2327f)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: vec4<u32>) -> vec4<u32> {
    var var_0 = reverseBits(arg_3.x) | u_input.a;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -541f));
    let var_2 = Struct_2(vec4<u32>(_wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, u_input.a, u_input.a), arg_3), select(min(arg_3, vec4<u32>(20509u, 11178u, arg_1.c.x, u_input.a)), _wgslsmith_mod_vec4_u32(arg_3, vec4<u32>(0u, u_input.a, u_input.a, arg_3.x)), select(vec4<bool>(arg_2.x, global0.a.x, true, global0.a.x), vec4<bool>(arg_2.x, false, true, false), arg_2.x))), ~(~select(u_input.a, 0u, arg_2.x)), 0u, _wgslsmith_dot_vec2_u32(min(arg_1.c, vec2<u32>(arg_3.x, u_input.a) << (arg_3.xx % vec2<u32>(32u))), vec2<u32>(u_input.a, arg_3.x))), global1[_wgslsmith_index_u32(13122u, 5u)], _wgslsmith_div_vec2_i32(vec2<i32>(1i, firstLeadingBit(-70127i)) << (abs(arg_1.c) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(countOneBits(-vec2<i32>(arg_1.a, -2062i)), vec2<i32>(arg_0 << (4294967295u % 32u), -arg_1.a))));
    var var_3 = select(vec4<i32>(abs(var_2.c.x), i32(-1i) * -1i, _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(arg_1.a, 1i), var_2.c.x << (1u % 32u)), max(abs(var_2.c.x), var_2.c.x)), 63255i ^ arg_0), vec4<i32>(~_wgslsmith_add_i32(20068i, var_2.c.x), select(-42769i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.c.x, var_2.c.x, var_2.c.x, arg_1.a), vec4<i32>(arg_1.a, 1i, arg_1.a, arg_0)), true), -2147483647i, _wgslsmith_mult_i32(1i, arg_1.a)) >> (vec4<u32>(~4294967295u, arg_3.x, ~var_2.a.x, var_2.a.x) % vec4<u32>(32u)), select(!(!select(vec4<bool>(false, arg_2.x, arg_2.x, false), vec4<bool>(var_2.b.a.x, true, arg_2.x, global0.a.x), vec4<bool>(false, var_2.b.a.x, arg_2.x, true))), vec4<bool>(_wgslsmith_div_f32(arg_1.b.x, var_2.b.b.x) > _wgslsmith_f_op_f32(-global0.b.x), true, !var_2.b.a.x, any(select(vec4<bool>(var_2.b.a.x, var_2.b.a.x, global0.a.x, global0.a.x), vec4<bool>(var_2.b.a.x, arg_2.x, global0.a.x, global0.a.x), true))), false));
    global0 = Struct_1(select(vec2<bool>(all(!vec4<bool>(var_2.b.a.x, var_2.b.a.x, arg_2.x, true)), any(!vec4<bool>(arg_2.x, false, false, true))), !arg_2.xz, select(arg_2.yy, select(!var_2.b.a, global0.a, true), arg_2.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_2.b.b)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(global0.b, vec4<f32>(470f, global0.b.x, arg_1.b.x, global0.b.x))))))));
    return _wgslsmith_mod_vec4_u32(var_2.a, countOneBits(abs(vec4<u32>(arg_1.c.x, arg_1.c.x, 4294967295u, arg_3.x)) ^ vec4<u32>(var_2.a.x, ~54662u, ~u_input.a, _wgslsmith_clamp_u32(23472u, 1u, var_2.a.x))));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> Struct_4 {
    let var_0 = ~(vec2<i32>(1i, arg_0) >> (_wgslsmith_div_vec2_u32(~max(vec2<u32>(10024u, u_input.a), vec2<u32>(u_input.a, 1u)), countOneBits(vec2<u32>(0u, u_input.a))) % vec2<u32>(32u)));
    var var_1 = Struct_2(vec4<u32>(u_input.a, reverseBits(u_input.a) | _wgslsmith_mult_u32(32213u, u_input.a), select(~u_input.a, u_input.a, !global0.a.x), ~select(4294967295u, u_input.a, arg_2.a.x)) ^ func_3(select(var_0.x, arg_0, global0.b.x >= 1257f), Struct_3(-arg_0, _wgslsmith_f_op_vec3_f32(global0.b.zxy + arg_2.b.yxx), vec2<u32>(u_input.a, u_input.a)), select(select(vec3<bool>(false, false, false), vec3<bool>(arg_1, true, true), vec3<bool>(false, false, false)), vec3<bool>(false, true, global0.a.x), !vec3<bool>(arg_2.a.x, arg_1, true)), vec4<u32>(51574u, abs(1u), _wgslsmith_sub_u32(u_input.a, u_input.a), abs(u_input.a))), global1[_wgslsmith_index_u32(u_input.a, 5u)], _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(var_0, -firstTrailingBit(var_0)), select(select(var_0, ~vec2<i32>(0i, 2147483647i), false & arg_2.a.x), vec2<i32>(_wgslsmith_clamp_i32(0i, arg_0, arg_0), var_0.x), vec2<bool>(true, true))));
    var var_2 = Struct_2(vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, 4294967295u), reverseBits(var_1.a.ww)), vec2<u32>(~u_input.a, max(41827u, 7683u))), 1u, reverseBits(reverseBits(u_input.a)), 51459u), Struct_1(vec2<bool>(true, true), global0.b), ~(vec2<i32>(1i, firstTrailingBit(var_0.x)) << (~(~var_1.a.xx) % vec2<u32>(32u))));
    var_2 = Struct_2(vec4<u32>(53778u, var_2.a.x, ~(~(~1u)), ~countOneBits(14151u)), Struct_1(vec2<bool>(any(vec3<bool>(var_1.b.a.x, false, global0.a.x)) || var_1.b.a.x, select(var_2.b.a.x, arg_1, select(var_1.b.a.x, arg_1, arg_1))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(global0.b, vec4<f32>(global0.b.x, 1207f, -548f, -1490f))))))), abs(_wgslsmith_div_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, var_0.x), var_2.c), vec2<i32>(-2147483647i, 0i))));
    let var_3 = _wgslsmith_clamp_vec2_i32(abs(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(0i, var_1.c.x), vec2<i32>(-2147483647i, -21744i)), select(~var_1.c, _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(-18167i, var_0.x), var_0), false))), var_2.c, -(vec2<i32>(i32(-1i) * -1i, abs(-2147483647i)) & vec2<i32>(1i, abs(arg_0))));
    return Struct_4(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(global0.b.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.b.x) - _wgslsmith_f_op_f32(select(-264f, var_1.b.b.x, var_2.b.a.x))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1168f))))))));
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: i32, arg_3: vec3<i32>) -> vec2<bool> {
    global0 = global1[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(u_input.a ^ u_input.a, ~u_input.a) >> ((~u_input.a << (~_wgslsmith_mult_u32(u_input.a, u_input.a) % 32u)) % 32u)), 5u)];
    let var_0 = arg_0;
    let var_1 = u_input.a;
    var var_2 = select(vec3<bool>(any(!select(vec2<bool>(false, global0.a.x), global0.a, vec2<bool>(global0.a.x, global0.a.x))), global0.a.x, true), vec3<bool>(!(!(global0.a.x | global0.a.x)), !any(select(vec4<bool>(global0.a.x, global0.a.x, global0.a.x, false), vec4<bool>(true, false, false, global0.a.x), vec4<bool>(global0.a.x, false, true, global0.a.x))), select(true, true, u_input.a == 0u)), !vec3<bool>(false, true, all(vec3<bool>(true, false, global0.a.x))));
    var var_3 = _wgslsmith_clamp_u32(var_1, var_1, ~1u);
    return vec2<bool>(!var_2.x, !any(vec4<bool>(all(vec4<bool>(var_2.x, false, true, var_2.x)), !global0.a.x, true, global0.a.x)));
}

fn func_1(arg_0: i32, arg_1: Struct_3) -> Struct_3 {
    global0 = Struct_1(!func_4(func_2(firstLeadingBit(48980i), any(vec4<bool>(false, global0.a.x, false, global0.a.x)), Struct_1(global0.a, global0.b)), ~23875i, 65341i, -min(vec3<i32>(arg_0, 2147483647i, arg_0), vec3<i32>(arg_1.a, 44471i, arg_1.a))), global0.b);
    return arg_1;
}

fn func_5(arg_0: Struct_3) -> vec4<bool> {
    let var_0 = vec3<bool>(false, all(vec4<bool>(!(!global0.a.x), !(global0.a.x | false), global0.a.x, func_4(Struct_4(arg_0.b), ~(-2147483647i), arg_0.a, _wgslsmith_clamp_vec3_i32(vec3<i32>(-21398i, 43102i, arg_0.a), vec3<i32>(0i, -71758i, arg_0.a), vec3<i32>(arg_0.a, arg_0.a, arg_0.a))).x)), ~_wgslsmith_sub_u32(~0u, ~u_input.a) != _wgslsmith_div_u32(4978u, u_input.a));
    let var_1 = global0.a.x;
    let var_2 = arg_0;
    global1 = array<Struct_1, 5>();
    let var_3 = Struct_1(!var_0.yz, vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.b.x))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_2.b.x, global0.b.x), _wgslsmith_f_op_f32(step(-224f, -128f))) * _wgslsmith_f_op_f32(f32(-1f) * -926f)), 1621f, _wgslsmith_f_op_f32(step(-581f, var_2.b.x))));
    return select(vec4<bool>(any(vec4<bool>(var_2.b.x <= 627f, true, !var_0.x, false)), !((10800i > arg_0.a) || true), false, all(select(vec3<bool>(true, true, true), var_0, !var_3.a.x))), !(!vec4<bool>(var_0.x, true, true, false)), var_0.x);
}

fn func_6(arg_0: vec4<bool>) -> vec4<i32> {
    var var_0 = reverseBits(vec4<u32>(~6039u, _wgslsmith_div_u32(1u, 10379u), ~abs(u_input.a), reverseBits(max(u_input.a, 4294967295u))) >> (min(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(0u, u_input.a, 1u, u_input.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(28793u, u_input.a, u_input.a, 1u), vec4<u32>(u_input.a, 3068u, 50697u, 4294967295u))), vec4<u32>(1u, 1u, _wgslsmith_clamp_u32(54813u, u_input.a, u_input.a), 16758u)) % vec4<u32>(32u)));
    var var_1 = 1i;
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.b.x))))))));
    let var_3 = vec3<u32>(_wgslsmith_div_u32(63284u, 1u) ^ ~_wgslsmith_div_u32(13586u | u_input.a, reverseBits(10990u)), ~(select(13515u, min(4294967295u, var_0.x), true) | _wgslsmith_dot_vec2_u32(var_0.wx, var_0.yz)), _wgslsmith_mult_u32(max(var_0.x, _wgslsmith_sub_u32(u_input.a, u_input.a)), 26815u));
    let var_4 = Struct_2(vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.x, var_0.x, var_3.x, var_3.x) | vec4<u32>(1u, 12269u, u_input.a, 1u), ~vec4<u32>(var_0.x, 0u, u_input.a, 0u)), var_3.x, abs(60281u), func_3(~(~0i), Struct_3(select(-15589i, -2147483647i, false), _wgslsmith_f_op_vec3_f32(-global0.b.ywz), vec2<u32>(66176u, var_0.x)), select(arg_0.wxw, select(arg_0.zzz, arg_0.wwz, global0.a.x), select(vec3<bool>(arg_0.x, false, global0.a.x), vec3<bool>(true, false, true), true)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_0.x, var_3.x, 2844u), vec4<u32>(u_input.a, var_3.x, var_3.x, var_0.x)), _wgslsmith_add_u32(var_0.x, var_0.x), reverseBits(14887u), 4294967295u)).x), global1[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(~0u, u_input.a, max(4294967295u, var_3.x))), 5u)], vec2<i32>(~reverseBits(_wgslsmith_sub_i32(1i, 26232i)), -max(_wgslsmith_div_i32(-25152i, -42852i), _wgslsmith_mult_i32(71144i, -1i))));
    return ~vec4<i32>(-81767i, var_4.c.x, var_4.c.x, var_4.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(-vec4<i32>(-7319i, -27206i, _wgslsmith_clamp_i32(-25284i, -30825i, -1i), -37780i << (u_input.a % 32u)), func_6(func_5(func_1(1761i, Struct_3(73883i, vec3<f32>(1000f, 207f, -517f), vec2<u32>(4294967295u, u_input.a))))), true) ^ ~(-_wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-2147483647i, -2147483647i, 0i, -34557i)));
    let var_1 = func_1(var_0.x & -var_0.x, Struct_3(-31132i, vec3<f32>(_wgslsmith_f_op_f32(-func_2(20084i, false, global1[_wgslsmith_index_u32(1u, 5u)]).a.x), _wgslsmith_f_op_f32(378f - _wgslsmith_f_op_f32(-369f + 841f)), _wgslsmith_f_op_f32(f32(-1f) * -985f)), vec2<u32>(u_input.a, select(~u_input.a, ~1u, true))));
    let var_2 = Struct_2(vec4<u32>(~1u, ~_wgslsmith_mod_u32(1u, var_1.c.x), ~(var_1.c.x | var_1.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c.x, u_input.a, var_1.c.x, var_1.c.x) >> (vec4<u32>(u_input.a, u_input.a, var_1.c.x, 4294967295u) % vec4<u32>(32u)), ~vec4<u32>(54225u, 23837u, 0u, 4294967295u))) | vec4<u32>(~u_input.a | ~var_1.c.x, (11535u << (u_input.a % 32u)) | var_1.c.x, reverseBits(select(u_input.a, 1u, true)), 4294967295u), Struct_1(global0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(global0.b)))))), -(~var_0.wx));
    var var_3 = -_wgslsmith_div_i32(var_2.c.x, _wgslsmith_sub_i32(-_wgslsmith_mult_i32(var_2.c.x, var_1.a), ~(-1i)));
    var var_4 = Struct_3(firstLeadingBit(_wgslsmith_div_i32(-2147483647i, var_2.c.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.b.x, 451f, var_1.b.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(599f, var_1.b.x, -594f)), global0.a.x)))), vec2<u32>(~_wgslsmith_add_u32(select(1u, 0u, false), abs(var_2.a.x)), min(~1u, 30779u)));
    global0 = Struct_1(global0.a, vec4<f32>(727f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) + 1000f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(620f, global0.b.x)), _wgslsmith_f_op_f32(-global0.b.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1182f, var_4.b.x)) * func_2(var_2.c.x >> (7404u % 32u), !var_2.b.a.x, Struct_1(var_2.b.a, vec4<f32>(-372f, -866f, -293f, 300f))).a.x), var_2.b.b.x));
    let var_5 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.b.x)))) - 525f), _wgslsmith_f_op_f32(-var_1.b.x));
    var var_6 = Struct_1(vec2<bool>(var_2.b.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(global0.b.x, var_4.b.x)))) > var_2.b.b.x), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(var_2.b.b.x)), -1096f, var_5.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_5.x)))), _wgslsmith_f_op_vec4_f32(max(global0.b, var_2.b.b))));
    var_3 = _wgslsmith_add_i32(_wgslsmith_div_i32(-1i, 0i >> ((_wgslsmith_dot_vec2_u32(var_4.c, var_1.c) << (2131u % 32u)) % 32u)), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-4967i, var_0.x), -var_2.c.x), vec2<i32>(countOneBits(-1i), 1i)), countOneBits(vec2<i32>(var_2.c.x, countOneBits(-3673i)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_clamp_vec2_i32(-var_2.c, vec2<i32>(var_2.c.x, var_4.a), -vec2<i32>(var_2.c.x, -1i)) >> (vec2<u32>(_wgslsmith_clamp_u32(1u, u_input.a, 1u), u_input.a) % vec2<u32>(32u))));
}

