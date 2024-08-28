struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: bool,
    d: vec4<i32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: u32;

var<private> global2: array<Struct_1, 9>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec4<u32>, arg_3: Struct_2) -> f32 {
    var var_0 = select(select(select(select(vec3<bool>(arg_0.b.c, global0.b.c, true), vec3<bool>(global0.b.c, true, global0.a.c), any(vec4<bool>(false, false, false, arg_0.d.c))), vec3<bool>(global0.b.c, arg_3.d.c, true), select(!vec3<bool>(false, global0.c, true), !vec3<bool>(global0.c, arg_0.d.c, false), true)), vec3<bool>(true, all(!vec3<bool>(true, global0.a.c, arg_3.c)), any(!vec2<bool>(global0.b.c, true))), false), !select(select(select(vec3<bool>(arg_3.c, false, arg_0.c), vec3<bool>(arg_3.d.c, false, true), false), vec3<bool>(true, true, true), any(vec3<bool>(true, false, arg_0.c))), select(vec3<bool>(arg_0.d.c, true, true), !vec3<bool>(global0.c, false, true), vec3<bool>(true, true, true)), arg_1 <= global0.a.d.x), arg_3.b.c);
    return arg_3.b.a;
}

fn func_2(arg_0: vec4<f32>) -> Struct_2 {
    var var_0 = true;
    let var_1 = -2147483647i;
    global1 = 4294967295u;
    var var_2 = _wgslsmith_div_vec4_f32(arg_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1327f * -385f), _wgslsmith_f_op_f32(func_3(Struct_2(global0.a, global2[_wgslsmith_index_u32(62391u, 9u)], false, global0.a), global0.d.e, vec4<u32>(0u, u_input.b.x, 5890u, 13529u), Struct_2(Struct_1(366f, u_input.a.zxx, false, vec4<i32>(1586i, 1i, 0i, 1i), u_input.a.x), global2[_wgslsmith_index_u32(u_input.b.x, 9u)], global0.a.c, Struct_1(2058f, global0.d.d.wwz, global0.b.c, u_input.a, -47874i)))), _wgslsmith_f_op_f32(-1000f - 794f), _wgslsmith_div_f32(global0.a.a, arg_0.x))) - _wgslsmith_f_op_vec4_f32(-arg_0)));
    var_2 = _wgslsmith_f_op_vec4_f32(select(arg_0, vec4<f32>(-783f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0.b.a)), -1119f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(155f + _wgslsmith_div_f32(var_2.x, arg_0.x))), _wgslsmith_f_op_f32(1698f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.a * 1819f)))), all(vec4<bool>(any(!vec4<bool>(true, false, global0.a.c, true)), any(!vec2<bool>(true, global0.d.c)), true, -u_input.a.x < u_input.a.x))));
    return Struct_2(Struct_1(338f, _wgslsmith_sub_vec3_i32(select(_wgslsmith_mod_vec3_i32(vec3<i32>(var_1, 1i, var_1), global0.d.d.xxz), vec3<i32>(-2858i, u_input.a.x, -2094i) >> (vec3<u32>(0u, u_input.c, 4294967295u) % vec3<u32>(32u)), !vec3<bool>(true, true, global0.a.c)), u_input.a.xzx), !global0.b.c, min(vec4<i32>(global0.d.b.x, var_1, 12235i, -29740i), -u_input.a) & select(-vec4<i32>(-29425i, global0.b.d.x, var_1, var_1), vec4<i32>(4825i, 2147483647i, var_1, var_1), !vec4<bool>(global0.d.c, true, true, global0.b.c)), -1i), Struct_1(_wgslsmith_f_op_f32(arg_0.x - 341f), u_input.a.zyz, global0.d.c, u_input.a, u_input.a.x | (_wgslsmith_dot_vec4_i32(global0.b.d, vec4<i32>(u_input.a.x, 40056i, 37487i, global0.d.e)) ^ _wgslsmith_dot_vec2_i32(u_input.a.zy, vec2<i32>(2147483647i, var_1)))), global0.d.c, Struct_1(1f, vec3<i32>(max(global0.b.b.x, 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(32698i, u_input.a.x, global0.a.e), vec3<i32>(global0.a.b.x, -39622i, global0.b.d.x)), -1i) | ~_wgslsmith_div_vec3_i32(u_input.a.zxw, vec3<i32>(2147483647i, 21295i, 20258i)), true, min(~firstLeadingBit(u_input.a), global0.a.d), _wgslsmith_mod_i32(_wgslsmith_mult_i32(var_1, 1i), u_input.a.x)));
}

fn func_1(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: vec3<i32>) -> Struct_1 {
    global2 = array<Struct_1, 9>();
    var var_0 = Struct_3(~abs(firstTrailingBit(42017u)), Struct_1(arg_2.c.a, u_input.a.xxw ^ -(~u_input.a.zxy), any(select(vec3<bool>(global0.d.c, false, false), !vec3<bool>(false, global0.b.c, arg_2.c.c), true)), ~vec4<i32>(u_input.a.x, 0i, abs(1i), max(u_input.a.x, arg_3.x)), ~global0.d.e), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.a) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.c.a)))), vec3<i32>(~(~29181i), _wgslsmith_dot_vec3_i32(global0.a.d.xyx, -vec3<i32>(u_input.a.x, 24877i, u_input.a.x)), arg_3.x), true, firstLeadingBit(_wgslsmith_mod_vec4_i32(global0.a.d ^ u_input.a, vec4<i32>(58106i, -2147483647i, arg_3.x, arg_2.c.d.x))), 2147483647i), vec4<f32>(-943f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c.a + arg_2.b.a))), 458f, -265f), select(vec2<u32>(_wgslsmith_dot_vec2_u32(reverseBits(arg_2.e), ~vec2<u32>(21834u, u_input.b.x)), firstLeadingBit(u_input.b.x)), firstTrailingBit(arg_2.e), all(vec3<bool>(arg_1.x, true, true))));
    global0 = func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2.d.x, -765f, global0.a.a, arg_2.d.x), _wgslsmith_f_op_vec4_f32(trunc(arg_2.d)))))));
    var var_1 = Struct_2(arg_2.c, Struct_1(-189f, select(~global0.d.b, arg_3, select(vec3<bool>(false, arg_2.c.c, false), vec3<bool>(false, var_0.c.c, arg_1.x), vec3<bool>(false, false, arg_2.c.c))) << (~u_input.b % vec3<u32>(32u)), 23100u <= arg_2.e.x, vec4<i32>(_wgslsmith_add_i32(reverseBits(-2147483647i), -1i), var_0.b.d.x, ~_wgslsmith_mod_i32(arg_2.c.b.x, arg_3.x), -1i), 10560i), false, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-794f, _wgslsmith_f_op_f32(ceil(-1428f))) - 800f), vec3<i32>(2147483647i, ~(-26754i), ~u_input.a.x ^ -38762i), any(vec3<bool>(!arg_1.x, true, true)), abs(vec4<i32>(-1i, _wgslsmith_sub_i32(u_input.a.x, var_0.c.d.x), u_input.a.x << (u_input.b.x % 32u), var_0.b.d.x)), 35897i));
    let var_2 = -1i;
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.d.x))), -542f), -arg_3, func_2(_wgslsmith_f_op_vec4_f32(floor(arg_2.d))).a.c, vec4<i32>(global0.b.d.x, ~reverseBits(-11363i), -abs(0i | u_input.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(~var_1.a.d.x, var_0.b.e), countOneBits(global0.a.d.zy))), ~1i);
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> Struct_2 {
    let var_0 = true;
    let var_1 = vec3<i32>(_wgslsmith_sub_i32(-35322i, arg_2.b.x), -global0.a.d.x, arg_2.b.x);
    global0 = Struct_2(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-491f, arg_2.a, 717f, global0.a.a), vec4<f32>(1088f, arg_2.a, global0.d.a, arg_2.a))) - vec4<f32>(_wgslsmith_f_op_f32(-global0.a.a), _wgslsmith_f_op_f32(f32(-1f) * -1837f), _wgslsmith_f_op_f32(498f * global0.b.a), _wgslsmith_f_op_f32(abs(2451f))))).b, global0.d, arg_2.c, arg_2);
    global0 = func_2(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(arg_2.a)))), _wgslsmith_f_op_f32(ceil(-131f)))), -980f, _wgslsmith_div_f32(-438f, 246f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a))));
    global1 = ~22640u;
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1038f))), reverseBits(_wgslsmith_mult_vec3_i32(-arg_2.b, vec3<i32>(-41385i, u_input.a.x, 21334i))), true, ~(-arg_2.d), -34536i), arg_2, !(!var_0), Struct_1(global0.a.a, arg_2.d.wyz, true, arg_2.d, -64921i));
}

fn func_5(arg_0: bool, arg_1: Struct_2) -> Struct_2 {
    let var_0 = Struct_3(max(~u_input.b.x, countOneBits(51108u) >> (max(u_input.c ^ 4294967295u, 0u) % 32u)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(~1u, 4294967295u, ~u_input.b.x, 0u), ~vec4<u32>(firstTrailingBit(1u), 0u, min(u_input.b.x, u_input.c), countOneBits(u_input.c))), 9u)], func_1(global0.a.c, select(!select(vec2<bool>(true, true), vec2<bool>(global0.a.c, false), vec2<bool>(global0.b.c, true)), vec2<bool>(global0.c || true, true), vec2<bool>(62549u >= u_input.c, false)), Struct_3(max(~u_input.b.x, u_input.b.x), func_1(!arg_0, select(vec2<bool>(global0.d.c, false), vec2<bool>(arg_0, arg_0), arg_1.b.c), Struct_3(0u, global0.a, global0.a, vec4<f32>(-1656f, 1427f, 776f, -159f), u_input.b.yy), global0.b.b), func_4(44283i, u_input.a.x, arg_1.b, ~0u).b, vec4<f32>(global0.d.a, -136f, _wgslsmith_f_op_f32(-1000f - 1000f), -1081f), u_input.b.zz), vec3<i32>(i32(-1i) * -16943i, _wgslsmith_add_i32(_wgslsmith_div_i32(24444i, arg_1.b.b.x), u_input.a.x), abs(arg_1.b.b.x) << (~4294967295u % 32u))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(arg_1.a.a)), arg_1.b.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(694f, -783f)), -650f)), arg_1.b.a, _wgslsmith_f_op_f32(-global0.b.a)), ~(~firstLeadingBit(reverseBits(vec2<u32>(0u, u_input.b.x)))));
    let var_1 = vec4<u32>(~_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.c, u_input.b.x) ^ ~57535u, 56731u), u_input.b.x, 0u, ~4294967295u);
    let var_2 = firstLeadingBit(vec4<u32>(reverseBits(u_input.c), 0u, 1u, _wgslsmith_mult_u32(var_1.x, 1u)));
    let var_3 = ~var_0.b.b.x >> ((u_input.b.x | var_2.x) % 32u);
    global2 = array<Struct_1, 9>();
    return func_4(-min(~(-6021i >> (var_2.x % 32u)), 59925i), 0i, func_1(false, vec2<bool>(true, false), Struct_3(66409u, func_2(vec4<f32>(global0.b.a, -1013f, -878f, -482f)).d, global0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.d)), min(vec2<u32>(var_1.x, 4294967295u), var_1.wy)), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(7300i, global0.b.b.x, global0.b.b.x), var_0.b.d.wzy, vec3<i32>(-1i, global0.d.d.x, var_0.b.d.x)) >> (vec3<u32>(0u, u_input.c, 76290u) % vec3<u32>(32u)), global0.d.d.xzw)), u_input.b.x);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3, arg_2: i32, arg_3: Struct_3) -> Struct_1 {
    var var_0 = Struct_1(arg_3.c.a, ~arg_1.c.d.ywy, !(arg_1.c.c & arg_0.c) || true, _wgslsmith_add_vec4_i32(~func_2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.b.a, -1937f, arg_0.a.a, -510f), arg_1.d))).d.d, -arg_1.b.d), (_wgslsmith_mod_i32(arg_2, ~2147483647i) | global0.a.b.x) << (1u % 32u));
    var var_1 = arg_0;
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.a + -139f))), -var_1.a.b ^ ~_wgslsmith_mult_vec3_i32(select(arg_3.c.d.xwx, var_0.d.yxw, vec3<bool>(true, false, false)), vec3<i32>(-411i, arg_2, u_input.a.x) >> (vec3<u32>(3987u, arg_3.e.x, arg_3.e.x) % vec3<u32>(32u))), arg_0.b.c, arg_3.c.d >> (vec4<u32>(0u, ~4294967295u, u_input.b.x, 0u) % vec4<u32>(32u)), arg_3.b.e);
    var_0 = arg_1.b;
    global2 = array<Struct_1, 9>();
    return func_1(true || func_4(global0.d.b.x, -18464i, func_1(true || arg_3.b.c, vec2<bool>(true, arg_0.c), arg_3, ~global0.a.b), _wgslsmith_add_u32(1u, abs(u_input.b.x))).c, vec2<bool>(var_0.c, any(vec2<bool>(false, global0.c))), arg_3, arg_1.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a.x;
    var_0 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(13791i, -1i), u_input.a.x);
    global0 = Struct_2(func_6(func_5(select(select(true, global0.a.c, true), false, false), func_4(293i, _wgslsmith_mod_i32(-18525i, -2147483647i), func_1(false, vec2<bool>(global0.d.c, global0.d.c), Struct_3(u_input.b.x, global2[_wgslsmith_index_u32(u_input.c, 9u)], Struct_1(global0.b.a, u_input.a.wwx, false, vec4<i32>(11539i, u_input.a.x, 41970i, -2147483647i), -61441i), vec4<f32>(global0.a.a, global0.a.a, -647f, -1726f), vec2<u32>(u_input.c, u_input.c)), vec3<i32>(2147483647i, 32711i, global0.d.e)), ~1u)), Struct_3(_wgslsmith_mod_u32(~u_input.c, 24077u), func_5(global0.a.c, Struct_2(Struct_1(global0.d.a, u_input.a.yzz, true, vec4<i32>(global0.b.e, global0.b.b.x, global0.a.b.x, u_input.a.x), u_input.a.x), global2[_wgslsmith_index_u32(41095u, 9u)], global0.c, global0.a)).b, global2[_wgslsmith_index_u32(4294967295u, 9u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.a, global0.a.a, 484f, global0.b.a) * vec4<f32>(global0.b.a, global0.a.a, global0.b.a, -1436f))), select(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, u_input.b.x), func_2(vec4<f32>(717f, -1558f, global0.d.a, -311f)).a.c)), i32(-1i) * -4604i, Struct_3(_wgslsmith_mod_u32(4294967295u, min(u_input.c, u_input.b.x)), Struct_1(global0.b.a, vec3<i32>(global0.b.e, global0.a.b.x, -34402i), global0.b.c, select(u_input.a, vec4<i32>(u_input.a.x, 33125i, -68586i, u_input.a.x), false), firstLeadingBit(u_input.a.x)), func_5(any(vec4<bool>(global0.a.c, false, false, true)), func_2(vec4<f32>(global0.d.a, 1571f, 949f, global0.a.a))).b, vec4<f32>(-524f, global0.b.a, _wgslsmith_f_op_f32(ceil(832f)), _wgslsmith_f_op_f32(exp2(global0.b.a))), abs(u_input.b.zz))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(439f - 321f) - _wgslsmith_f_op_f32(func_3(Struct_2(global2[_wgslsmith_index_u32(u_input.c, 9u)], Struct_1(global0.a.a, vec3<i32>(11978i, 7751i, -1i), global0.b.c, vec4<i32>(global0.b.e, global0.d.b.x, -2147483647i, u_input.a.x), -1i), global0.d.c, Struct_1(1318f, vec3<i32>(-41552i, global0.a.d.x, global0.a.b.x), global0.c, vec4<i32>(-40706i, u_input.a.x, 41567i, 2147483647i), 21276i)), 2147483647i, vec4<u32>(1u, 4294967295u, u_input.c, 1u), Struct_2(global2[_wgslsmith_index_u32(0u, 9u)], global0.b, global0.d.c, global0.d))))), -(global0.a.d.xxz >> (vec3<u32>(u_input.c, u_input.c, u_input.c) % vec3<u32>(32u))) << (u_input.b % vec3<u32>(32u)), true, vec4<i32>(-10231i << ((u_input.c << (u_input.b.x % 32u)) % 32u), -2147483647i, -3777i, ~_wgslsmith_div_i32(-1i, -598i)), -max(u_input.a.x, -global0.a.e)), false, Struct_1(_wgslsmith_f_op_f32(global0.b.a - -1136f), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.a, global0.d.a, global0.d.a, -329f) * vec4<f32>(661f, global0.a.a, -126f, 2512f)) + vec4<f32>(-347f, global0.b.a, -664f, global0.a.a))).d.d.xyy, global0.b.c, ~select(func_6(Struct_2(Struct_1(global0.d.a, vec3<i32>(u_input.a.x, u_input.a.x, global0.b.e), global0.b.c, vec4<i32>(u_input.a.x, global0.a.b.x, u_input.a.x, u_input.a.x), 978i), Struct_1(-1152f, vec3<i32>(0i, u_input.a.x, u_input.a.x), true, u_input.a, -78812i), global0.a.c, Struct_1(-358f, vec3<i32>(-4751i, -14262i, 28074i), true, global0.a.d, -12003i)), Struct_3(4294967295u, global0.b, Struct_1(-859f, vec3<i32>(-14597i, global0.d.d.x, 17521i), global0.a.c, vec4<i32>(u_input.a.x, global0.b.e, 2147483647i, global0.d.d.x), 1i), vec4<f32>(global0.a.a, -1000f, 1631f, global0.d.a), u_input.b.yz), u_input.a.x, Struct_3(u_input.b.x, Struct_1(global0.a.a, vec3<i32>(67056i, u_input.a.x, global0.a.d.x), false, vec4<i32>(1i, global0.a.e, u_input.a.x, u_input.a.x), u_input.a.x), Struct_1(1008f, vec3<i32>(u_input.a.x, u_input.a.x, global0.a.e), false, vec4<i32>(0i, u_input.a.x, 2147483647i, global0.a.e), u_input.a.x), vec4<f32>(global0.a.a, 646f, 1223f, global0.a.a), vec2<u32>(u_input.b.x, u_input.c))).d, vec4<i32>(global0.b.b.x, 0i, u_input.a.x, global0.b.d.x), !global0.b.c), global0.a.b.x));
    global1 = select(u_input.b.x, u_input.b.x, _wgslsmith_f_op_f32(-1138f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.a + -1000f))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a)) - func_5(-158f == global0.b.a, func_4(-43444i, u_input.a.x, Struct_1(870f, vec3<i32>(global0.a.d.x, -21i, 0i), global0.c, global0.d.d, 1024i), u_input.b.x)).b.a));
    global1 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, ~0u, ~(23621u << (u_input.b.x % 32u))), max(~vec3<u32>(48986u, u_input.c, u_input.c) >> ((u_input.b & vec3<u32>(u_input.b.x, 1635u, 39742u)) % vec3<u32>(32u)), u_input.b));
    let var_1 = global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~max(_wgslsmith_clamp_u32(u_input.c, u_input.c, 1u), 0u)), _wgslsmith_f_op_f32(f32(-1f) * -3044f));
}

