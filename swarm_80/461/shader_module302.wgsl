struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec4<i32>,
    d: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 15>;

var<private> global1: Struct_5 = Struct_5(2147483647i);

var<private> global2: Struct_3 = Struct_3(Struct_2(1000f), -826f, vec4<i32>(1i, -44331i, 2147483647i, 0i), 1643f);

var<private> global3: array<vec3<bool>, 23> = array<vec3<bool>, 23>(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true));

var<private> global4: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec2<bool>(false, true), -73055i, -38683i, vec4<bool>(true, true, false, false)), Struct_1(vec2<bool>(true, false), 1i, 1i, vec4<bool>(false, true, false, false)), Struct_1(vec2<bool>(false, false), -1i, -1i, vec4<bool>(true, false, false, true)), Struct_1(vec2<bool>(false, false), -13051i, i32(-2147483648), vec4<bool>(false, false, false, false)), Struct_1(vec2<bool>(true, true), 0i, 10547i, vec4<bool>(true, true, true, false)), Struct_1(vec2<bool>(false, true), i32(-2147483648), i32(-2147483648), vec4<bool>(false, false, false, true)), Struct_1(vec2<bool>(false, false), 34931i, 0i, vec4<bool>(true, false, true, false)), Struct_1(vec2<bool>(false, true), -97799i, 18968i, vec4<bool>(true, true, false, true)), Struct_1(vec2<bool>(false, false), -8092i, 0i, vec4<bool>(true, false, true, true)), Struct_1(vec2<bool>(true, true), -1i, -18873i, vec4<bool>(true, false, false, true)), Struct_1(vec2<bool>(true, false), 4377i, -8446i, vec4<bool>(true, true, false, false)), Struct_1(vec2<bool>(false, false), 0i, 1i, vec4<bool>(false, false, false, false)), Struct_1(vec2<bool>(false, true), 15631i, 2147483647i, vec4<bool>(false, true, true, false)), Struct_1(vec2<bool>(true, false), 0i, 20276i, vec4<bool>(true, false, false, false)), Struct_1(vec2<bool>(false, false), i32(-2147483648), 0i, vec4<bool>(false, true, true, true)), Struct_1(vec2<bool>(true, false), 9240i, -63511i, vec4<bool>(true, false, false, false)), Struct_1(vec2<bool>(true, false), 74119i, 17844i, vec4<bool>(true, true, false, false)), Struct_1(vec2<bool>(false, false), i32(-2147483648), -46493i, vec4<bool>(false, true, false, false)), Struct_1(vec2<bool>(false, false), -1i, -65855i, vec4<bool>(false, true, false, true)), Struct_1(vec2<bool>(false, false), 1i, -1i, vec4<bool>(true, false, false, true)), Struct_1(vec2<bool>(true, false), 2147483647i, i32(-2147483648), vec4<bool>(true, false, false, false)), Struct_1(vec2<bool>(true, false), -1i, -1i, vec4<bool>(true, true, true, true)), Struct_1(vec2<bool>(true, true), 34800i, -38040i, vec4<bool>(true, true, true, false)), Struct_1(vec2<bool>(true, true), -1i, -1i, vec4<bool>(false, true, false, true)), Struct_1(vec2<bool>(true, true), -8248i, -5497i, vec4<bool>(false, false, false, false)), Struct_1(vec2<bool>(false, true), -26354i, 22691i, vec4<bool>(false, false, true, false)), Struct_1(vec2<bool>(false, false), 43743i, 47141i, vec4<bool>(true, false, true, false)), Struct_1(vec2<bool>(false, true), -50041i, -8329i, vec4<bool>(false, true, false, false)), Struct_1(vec2<bool>(true, true), 1i, 2147483647i, vec4<bool>(true, true, true, true)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: vec3<bool>) -> vec3<u32> {
    global1 = Struct_5(global1.a);
    global2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.a + global2.a.a)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1552f * global2.a.a) + _wgslsmith_f_op_f32(-global2.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2261f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1197f) * -1000f), false)) + _wgslsmith_f_op_f32(trunc(global2.d))), vec4<i32>(-1i) * -firstTrailingBit(global2.c), -136f);
    global0 = array<vec4<bool>, 15>();
    global4 = array<Struct_1, 29>();
    let var_0 = -global2.c >> (~vec4<u32>(~59964u, arg_1, u_input.d.x, ~_wgslsmith_mult_u32(1u, arg_1)) % vec4<u32>(32u));
    return _wgslsmith_add_vec3_u32(max(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d.x, 4294967295u << (arg_1 % 32u), 38699u), ~(~vec3<u32>(47932u, u_input.d.x, 9969u)), countOneBits(vec3<u32>(arg_1, 4294967295u, 8080u))), ~(vec3<u32>(47172u, 13568u, 1u) & (vec3<u32>(u_input.d.x, 32785u, u_input.d.x) << (vec3<u32>(0u, 4294967295u, u_input.d.x) % vec3<u32>(32u))))), vec3<u32>(u_input.d.x, ~arg_1, ~5772u));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool) -> vec2<u32> {
    var var_0 = Struct_4(true, Struct_1(!(!(!vec2<bool>(arg_1, true))), _wgslsmith_mod_i32(abs(_wgslsmith_mod_i32(2147483647i, global1.a)), -45845i), (select(u_input.b, u_input.c, false) >> (_wgslsmith_mod_u32(140936u, u_input.d.x) % 32u)) & 0i, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, u_input.d.x, 1u), 15u)]));
    let var_1 = global2.a;
    var var_2 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(select(func_3(429f, u_input.d.x, vec3<bool>(var_0.a, false, arg_1)), _wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.d.x, u_input.d.x), vec3<u32>(u_input.d.x, u_input.d.x, 1u)), global3[_wgslsmith_index_u32(~u_input.d.x, 23u)]), countOneBits(vec3<u32>(u_input.d.x, u_input.d.x, 1u))), ~u_input.d.x), 4294967295u);
    var var_3 = u_input.a.xz;
    var_2 = 4294967295u;
    return _wgslsmith_mod_vec2_u32(~u_input.d, vec2<u32>(~(~(u_input.d.x & 0u)), _wgslsmith_add_u32(~u_input.d.x, 1u)));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<u32>) -> Struct_5 {
    let var_0 = Struct_1(arg_0.b.a, 1i, -countOneBits(-abs(-2147483647i)), arg_0.b.d);
    global4 = array<Struct_1, 29>();
    let var_1 = vec3<i32>(-_wgslsmith_dot_vec2_i32(global2.c.wy, _wgslsmith_mod_vec2_i32(~global2.c.wz, vec2<i32>(-1281i, global1.a) << (vec2<u32>(u_input.d.x, u_input.d.x) % vec2<u32>(32u)))), countOneBits(var_0.b), -(~global1.a));
    var var_2 = vec4<i32>(u_input.b, ~abs(select(1i, firstLeadingBit(var_1.x), true)), -2147483647i, _wgslsmith_clamp_i32(var_0.b, global1.a, -26146i) & arg_0.b.c);
    var_2 = vec4<i32>(_wgslsmith_add_i32(15626i, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(global2.c >> (vec4<u32>(u_input.d.x, 0u, 54003u, 1u) % vec4<u32>(32u)), select(vec4<i32>(-15915i, 2147483647i, 1i, global2.c.x), vec4<i32>(var_1.x, var_2.x, var_1.x, -2147483647i), true)), var_1.x)), _wgslsmith_dot_vec4_i32(~vec4<i32>(~(-32128i), min(u_input.a.x, -13118i), _wgslsmith_div_i32(-2147483647i, var_2.x), max(-39614i, global2.c.x)), global2.c), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-1i, 10628i)), vec2<i32>(2147483647i, -1i)), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(arg_0.b.c, 16867i, arg_0.b.c)), var_2.xww), u_input.b & ~(-58881i)) ^ _wgslsmith_div_i32(~1i, -_wgslsmith_dot_vec2_i32(var_1.zx, vec2<i32>(var_1.x, 6587i))), 0i);
    return Struct_5(~_wgslsmith_mod_i32(global2.c.x, global1.a));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_4 {
    var var_0 = _wgslsmith_add_u32(u_input.d.x, ~arg_2.x);
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_2.x, ~(~(~4294967295u)) | (_wgslsmith_div_u32(~u_input.d.x, 24627u) >> (4294967295u % 32u)), 66529u), 23u)];
    var var_2 = vec3<bool>(var_1.x, arg_1.a.x | all(select(!global0[_wgslsmith_index_u32(u_input.d.x, 15u)], select(global0[_wgslsmith_index_u32(23993u, 15u)], global0[_wgslsmith_index_u32(21514u, 15u)], arg_1.d), select(arg_1.d, vec4<bool>(var_1.x, true, var_1.x, var_1.x), var_1.x))), false);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(351f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.d * -815f) * -1000f))), -425f);
    var_2 = !global3[_wgslsmith_index_u32(firstLeadingBit(arg_2.x), 23u)];
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(290f, -1006f, true))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-194f, 1341f), -648f))), global4[_wgslsmith_index_u32(~select(_wgslsmith_dot_vec4_u32(vec4<u32>(19481u, u_input.d.x, 67307u, arg_2.x), ~vec4<u32>(1u, arg_2.x, arg_2.x, u_input.d.x)), 1u, min(global2.c.x, arg_1.c) <= global1.a), 29u)]);
}

fn func_1() -> vec4<f32> {
    var var_0 = func_5(func_4(Struct_4(false, Struct_1(vec2<bool>(true, true), min(global2.c.x, global1.a), 1i << (u_input.d.x % 32u), vec4<bool>(false, true, false, true))), func_2(vec2<i32>(select(global2.c.x, 9482i, true), 1i), true)), Struct_1(!select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec2<bool>(false, true), vec2<bool>(false, false), false), all(global3[_wgslsmith_index_u32(u_input.d.x, 23u)])), 14005i, _wgslsmith_dot_vec2_i32(max(u_input.a.zx << (u_input.d % vec2<u32>(32u)), global2.c.yy), global2.c.zz), vec4<bool>(true, any(select(vec2<bool>(true, true), vec2<bool>(true, false), false)), false, true)), ~_wgslsmith_add_vec3_u32((vec3<u32>(u_input.d.x, 76473u, 0u) & vec3<u32>(4294967295u, u_input.d.x, 0u)) ^ vec3<u32>(u_input.d.x, 79630u, u_input.d.x), _wgslsmith_div_vec3_u32(select(vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), vec3<u32>(u_input.d.x, 61605u, 1u), global3[_wgslsmith_index_u32(41425u, 23u)]), vec3<u32>(u_input.d.x, 1u, 0u) >> (vec3<u32>(u_input.d.x, 4294967295u, 80667u) % vec3<u32>(32u)))));
    let var_1 = ~(~(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, 44367u, 1u, 0u), vec4<u32>(u_input.d.x, u_input.d.x, 0u, u_input.d.x)), max(vec4<u32>(u_input.d.x, 4294967295u, 6276u, 9583u), vec4<u32>(4294967295u, 0u, 16694u, u_input.d.x))) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, 70727u, 17556u, 0u) | vec4<u32>(4294967295u, 1225u, 1u, 1u), vec4<u32>(26567u, u_input.d.x, 161052u, u_input.d.x))));
    let var_2 = _wgslsmith_clamp_u32(select(_wgslsmith_sub_u32(max(_wgslsmith_add_u32(1u, 0u), _wgslsmith_mult_u32(4294967295u, u_input.d.x)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, var_1.x), var_1.yx)), (u_input.d.x ^ 1u) | firstLeadingBit(37382u), false), func_3(-1800f, ~1u, var_0.b.d.yyw).x, _wgslsmith_clamp_u32(~(4468u >> (0u % 32u)), func_2(-(u_input.a.yx << (vec2<u32>(var_1.x, 1u) % vec2<u32>(32u))), var_0.a).x, 0u));
    global1 = Struct_5(_wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(-24324i, 13443i), 1i << (_wgslsmith_mult_u32(1u, var_1.x) % 32u)), -global2.c.x));
    var var_3 = -49614i;
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1157f, 1010f, global2.b, 393f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.b, global2.d, -229f, global2.a.a), vec4<f32>(global2.b, -1547f, -969f, global2.a.a), vec4<bool>(true, false, true, var_0.a)))), vec4<f32>(_wgslsmith_div_f32(global2.a.a, -911f), _wgslsmith_f_op_f32(global2.b + 1070f), global2.d, -512f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d, global2.b, 161f, global2.d)), vec4<f32>(_wgslsmith_f_op_f32(sign(global2.d)), -1087f, -2051f, _wgslsmith_f_op_f32(round(1811f))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d, global2.b, -1156f, global2.b)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1312f, 196f, global2.a.a, -1571f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.a.a, 1000f, -187f, -1000f), vec4<f32>(global2.a.a, global2.d, global2.b, -709f), vec4<bool>(false, var_0.a, var_0.a, false)))))), true));
}

fn func_6(arg_0: i32, arg_1: Struct_3, arg_2: vec4<f32>) -> bool {
    global1 = Struct_5(1i << (u_input.d.x % 32u));
    var var_0 = func_5(Struct_5(global2.c.x), Struct_1(vec2<bool>(all(func_5(Struct_5(1i), Struct_1(vec2<bool>(false, true), 1i, 38917i, vec4<bool>(false, false, false, false)), vec3<u32>(0u, 4294967295u, 77275u)).b.a), !all(global3[_wgslsmith_index_u32(u_input.d.x, 23u)])), -_wgslsmith_mod_i32(u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(-32878i, 46732i, u_input.a.x), arg_1.c.yxy)), -(~12880i), select(!global0[_wgslsmith_index_u32(abs(u_input.d.x), 15u)], vec4<bool>(true, true, true, true), true)), ~firstTrailingBit(~vec3<u32>(4294967295u, u_input.d.x, u_input.d.x) >> (min(vec3<u32>(1u, u_input.d.x, 9408u), vec3<u32>(u_input.d.x, 0u, 878u)) % vec3<u32>(32u))));
    var_0 = Struct_4(var_0.b.d.x, var_0.b);
    let var_1 = -u_input.a;
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(arg_1.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.a.a)) * _wgslsmith_f_op_f32(abs(-1126f))))), arg_1.d));
    return any(!(!func_5(Struct_5(2147483647i), global4[_wgslsmith_index_u32(u_input.d.x, 29u)], vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x)).b.d)) | false;
}

fn func_7(arg_0: u32, arg_1: u32, arg_2: bool) -> Struct_5 {
    global0 = array<vec4<bool>, 15>();
    global1 = Struct_5(global1.a);
    var var_0 = global4[_wgslsmith_index_u32(~_wgslsmith_mod_u32(41703u, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(firstTrailingBit(u_input.d.x), ~u_input.d.x, 0u), 73941u, u_input.d.x)), 29u)];
    global0 = array<vec4<bool>, 15>();
    let var_1 = firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(~(~32349u), ~abs(1u), _wgslsmith_clamp_u32(~u_input.d.x, abs(0u), u_input.d.x)), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(8240u, 11143u, 50350u), vec3<u32>(4294967295u, u_input.d.x, 8936u))));
    return Struct_5(u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_7(_wgslsmith_mult_u32(1u, _wgslsmith_clamp_u32(max(reverseBits(4294967295u), ~u_input.d.x), ~u_input.d.x | ~27194u, firstTrailingBit(u_input.d.x))), ~(~firstTrailingBit(reverseBits(46029u))), func_6(~1i, Struct_3(Struct_2(global2.d), global2.d, vec4<i32>(2147483647i, global1.a | global2.c.x, 22010i, ~1215i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(475f * 297f))), _wgslsmith_f_op_vec4_f32(func_1())));
    global2 = Struct_3(global2.a, _wgslsmith_div_f32(-301f, -196f), select(min(vec4<i32>(1i, u_input.b, reverseBits(-2147483647i), u_input.c), (global2.c & vec4<i32>(0i, global2.c.x, global1.a, global2.c.x)) ^ vec4<i32>(-39632i, 9979i, global1.a, 40511i)), max(global2.c, global2.c << (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 52783u, u_input.d.x), vec4<u32>(62498u, 50817u, 800u, u_input.d.x)) % vec4<u32>(32u))), false), -958f);
    global1 = func_7(19234u, 21596u & firstLeadingBit(firstLeadingBit(u_input.d.x)), func_5(func_4(func_5(func_7(0u, u_input.d.x, true), Struct_1(vec2<bool>(true, true), 45365i, global1.a, vec4<bool>(true, false, false, false)), max(vec3<u32>(48962u, u_input.d.x, u_input.d.x), vec3<u32>(1u, 33006u, 4294967295u))), u_input.d), func_5(func_4(func_5(Struct_5(39925i), Struct_1(vec2<bool>(false, true), 0i, u_input.b, global0[_wgslsmith_index_u32(u_input.d.x, 15u)]), vec3<u32>(u_input.d.x, u_input.d.x, 22986u)), ~u_input.d), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.d.x, 60473u), 29u)], min(~vec3<u32>(1u, u_input.d.x, u_input.d.x), vec3<u32>(54093u, 0u, 31699u))).b, ~vec3<u32>(_wgslsmith_mod_u32(61819u, u_input.d.x), func_3(-610f, u_input.d.x, vec3<bool>(false, true, false)).x, 0u)).b.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(global2.b, min(select(abs(4294967295u) ^ ~u_input.d.x, u_input.d.x, true), u_input.d.x), global1.a);
}

