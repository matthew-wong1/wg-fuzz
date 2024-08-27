struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: Struct_1,
    e: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 15>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: vec3<u32>) -> vec2<bool> {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(sign(arg_0)), Struct_1(select(arg_0 > arg_0, arg_0 > arg_0, true), true, u_input.a.x > _wgslsmith_div_i32(u_input.a.x, u_input.a.x), true)), (~select(0u, arg_1.x, true) & 73645u) & countOneBits(1u), Struct_1(true, all(vec4<bool>(true, true, true, all(vec3<bool>(true, false, false)))), true, -667f != _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, -1065f))), Struct_2(471f, Struct_1(all(vec4<bool>(true, true, true, true)), true, false, false)), Struct_2(_wgslsmith_f_op_f32(min(-429f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + -695f)))), Struct_1(true, _wgslsmith_f_op_f32(1734f * arg_0) <= _wgslsmith_f_op_f32(floor(-645f)), !any(vec4<bool>(true, false, false, true)), !all(vec3<bool>(false, true, true)))));
    global0 = array<Struct_4, 15>();
    var var_1 = Struct_1(!var_0.c.b, true, false, false);
    var_0 = Struct_3(Struct_2(1f, Struct_1(var_0.e.b.b, var_1.d, _wgslsmith_f_op_f32(select(arg_0, -1474f, var_1.b)) < -717f, any(vec4<bool>(var_1.c, var_0.c.a, false, false)))), _wgslsmith_sub_u32(0u | select(arg_1.x, arg_1.x, var_1.d), 6659u) << (~var_0.b % 32u), var_0.d.b, Struct_2(-1869f, var_0.c), Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.e.a + -828f))))), Struct_1(-2147483647i >= (u_input.a.x ^ u_input.a.x), var_1.a == any(vec3<bool>(false, false, false)), true, (u_input.a.x >> (33018u % 32u)) >= (u_input.a.x | u_input.a.x))));
    let var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 58351u, var_0.b), arg_1)) >> (16687u % 32u), var_0.b, _wgslsmith_sub_u32(~arg_1.x >> (var_0.b % 32u), 1u), ~var_0.b), vec4<u32>(_wgslsmith_sub_u32(firstTrailingBit(abs(0u)), var_0.b), _wgslsmith_dot_vec2_u32(countOneBits(arg_1.yx), arg_1.xz >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.x, var_0.b), vec2<u32>(arg_1.x, 4294967295u), arg_1.yz) % vec2<u32>(32u))), 18566u, arg_1.x), ~vec4<u32>(_wgslsmith_mult_u32(52881u, ~var_0.b), reverseBits(var_0.b), 0u, 9629u));
    return select(!vec2<bool>(u_input.a.x <= _wgslsmith_mult_i32(1i, -54650i), all(!vec4<bool>(true, var_0.e.b.c, true, false))), select(select(select(!vec2<bool>(false, var_1.b), vec2<bool>(true, var_1.b), vec2<bool>(false, true)), select(!vec2<bool>(var_1.d, true), vec2<bool>(var_1.a, var_1.b), true), !any(vec4<bool>(var_1.a, var_0.e.b.c, var_0.a.b.b, var_1.a))), vec2<bool>(all(select(vec3<bool>(var_1.a, var_1.c, false), vec3<bool>(var_0.c.c, false, false), false)), var_1.c), true), select(select(select(!vec2<bool>(false, var_1.d), select(vec2<bool>(var_0.d.b.a, var_0.e.b.a), vec2<bool>(var_1.d, var_1.c), vec2<bool>(true, false)), 1u == var_0.b), !select(vec2<bool>(false, var_1.b), vec2<bool>(var_1.d, var_0.d.b.b), vec2<bool>(true, var_0.a.b.c)), -40646i == _wgslsmith_mod_i32(u_input.a.x, u_input.a.x)), !vec2<bool>(any(vec3<bool>(var_0.d.b.d, var_0.d.b.a, var_1.c)), all(vec4<bool>(false, var_0.d.b.d, var_0.c.a, false))), var_0.d.b.a));
}

fn func_2(arg_0: vec4<bool>) -> bool {
    let var_0 = Struct_5(Struct_1(true, all(arg_0.yw), all(func_3(_wgslsmith_f_op_f32(570f * 844f), vec3<u32>(1u, 1u, 1u))), select(arg_0.x, !any(vec4<bool>(true, true, false, arg_0.x)), arg_0.x)), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-800f, 1000f))) + 199f), Struct_1(arg_0.x == all(arg_0), arg_0.x, all(arg_0.wwz), false)), ~vec3<u32>(1u, 1u, 1u), ~(_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a.x, -2147483647i, 16921i, -2147483647i), vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x)) >> (vec4<u32>(~15806u, 65236u, ~9955u, 1u) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))))));
    var var_1 = _wgslsmith_div_vec3_u32(var_0.c << (max(var_0.c, var_0.c) % vec3<u32>(32u)), abs(var_0.c));
    var var_2 = var_0;
    var var_3 = ~_wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, 0u, 16076u, var_0.c.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, 52911u, 4294967295u, var_0.c.x), vec4<u32>(4294967295u, var_0.c.x, 43112u, var_1.x), vec4<u32>(var_2.c.x, 4294967295u, 4294967295u, 36918u))), ~vec4<u32>(var_0.c.x, 10971u >> (var_0.c.x % 32u), 16788u, 68207u));
    let var_4 = arg_0.zwz;
    return select(var_2.b.b.b, var_4.x, arg_0.x);
}

fn func_1() -> Struct_3 {
    global0 = array<Struct_4, 15>();
    global0 = array<Struct_4, 15>();
    global0 = array<Struct_4, 15>();
    global0 = array<Struct_4, 15>();
    var var_0 = Struct_5(Struct_1(true, -32202i < -reverseBits(u_input.a.x), func_2(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), false), Struct_2(_wgslsmith_f_op_f32(-715f + _wgslsmith_f_op_f32(round(-1000f))), Struct_1(~4294967295u > _wgslsmith_dot_vec2_u32(vec2<u32>(9135u, 40167u), vec2<u32>(4294967295u, 0u)), true && any(vec2<bool>(true, false)), true, true)), vec3<u32>(108498u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(8093u, 4294967295u, 0u)) & _wgslsmith_mod_u32(~33763u, 1u), ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(26418u, 1u, 50106u, 45930u), vec4<u32>(35287u, 5815u, 1u, 17359u), true), firstTrailingBit(vec4<u32>(15177u, 0u, 1u, 0u)))), reverseBits(vec4<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(39234i, 17776i)), vec2<i32>(16484i, u_input.a.x)), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-39015i, -2257i, u_input.a.x, u_input.a.x)), vec4<i32>(2147483647i, 18881i, u_input.a.x, u_input.a.x)), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(49261i, 22068i, 1i), vec3<i32>(u_input.a.x, 9457i, -8752i)), u_input.a.x), (u_input.a.x >> (4294967295u % 32u)) << (~3863u % 32u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-786f, 171f)) + _wgslsmith_f_op_f32(floor(637f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -650f))), -1318f)));
    return Struct_3(var_0.b, firstLeadingBit(0u), Struct_1(false, var_0.b.b.d, true, true), var_0.b, Struct_2(_wgslsmith_f_op_f32(max(var_0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(295f, -1234f))))), Struct_1(false, func_3(_wgslsmith_f_op_f32(step(-884f, 194f)), ~vec3<u32>(1u, var_0.c.x, var_0.c.x)).x, true, var_0.a.d)));
}

fn func_4(arg_0: Struct_5, arg_1: i32, arg_2: Struct_3, arg_3: vec4<u32>) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(arg_0.c.x, 15u)];
    let var_1 = ~_wgslsmith_clamp_vec2_u32(abs(arg_3.zx), arg_3.xy, _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(53863u, 42991u), vec2<u32>(var_0.c, arg_0.c.x)), vec2<u32>(4294967295u, arg_0.c.x)) >> ((~vec2<u32>(18006u, arg_2.b) & vec2<u32>(arg_3.x, 137667u)) % vec2<u32>(32u)));
    var_0 = global0[_wgslsmith_index_u32(0u & (~arg_0.c.x << (1u % 32u)), 15u)];
    global0 = array<Struct_4, 15>();
    let var_2 = arg_3.xx >> (firstLeadingBit(vec2<u32>(var_1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c, 14262u, 46353u) >> (arg_3.xxw % vec3<u32>(32u)), arg_0.c))) % vec2<u32>(32u));
    return arg_2.a.a;
}

fn func_5(arg_0: f32, arg_1: vec2<u32>, arg_2: vec4<bool>, arg_3: vec3<f32>) -> Struct_4 {
    var var_0 = true;
    let var_1 = ~(~0u);
    var var_2 = select(!(!arg_2), !(!select(select(vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), arg_2, false), vec4<bool>(arg_2.x, true, arg_2.x, true), true)), select(vec4<bool>(arg_2.x, !(!arg_2.x), arg_2.x, func_1().e.b.c), !arg_2, vec4<bool>(arg_2.x, arg_2.x, true, !arg_2.x)));
    let var_3 = Struct_1(!var_2.x, true, arg_2.x, var_2.x);
    let var_4 = Struct_4(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.x, -486f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0 - -540f), _wgslsmith_f_op_f32(arg_3.x - arg_3.x))))), u_input.a.x, 41583u, func_1().e.b, var_1);
    return Struct_4(arg_3.yy, _wgslsmith_div_i32(var_4.b << (select(var_4.c, 4294967295u, false) % 32u), var_4.b) ^ _wgslsmith_div_i32(_wgslsmith_mult_i32(-1i | u_input.a.x, ~var_4.b), u_input.a.x), var_4.e, Struct_1(!all(arg_2), var_2.x & var_3.c, true, var_3.c && !var_2.x), var_1);
}

fn func_6(arg_0: Struct_4, arg_1: Struct_5, arg_2: bool) -> vec4<i32> {
    var var_0 = Struct_3(Struct_2(arg_0.a.x, func_1().d.b), countOneBits(4294967295u >> (arg_0.e % 32u)), func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(874f - arg_1.b.a) + arg_0.a.x), arg_1.c.zx >> (arg_1.c.zx % vec2<u32>(32u)), !vec4<bool>(false, arg_1.a.a, all(vec4<bool>(true, true, true, true)), true), _wgslsmith_div_vec3_f32(arg_1.e.zzw, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(arg_1.e.wwy, vec3<f32>(-1145f, -1000f, arg_0.a.x)))))).d, Struct_2(arg_1.b.a, arg_0.d), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.a.x)))), arg_1.a));
    let var_1 = true;
    let var_2 = select(-((i32(-1i) * -arg_0.b) >> (33663u % 32u)), 1i, 0i == _wgslsmith_mod_i32(-firstTrailingBit(1i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -1i, -2147483647i, u_input.a.x), arg_1.d)));
    var var_3 = select(!(!select(vec4<bool>(false, var_1, arg_0.d.a, var_1), select(vec4<bool>(var_0.e.b.d, false, true, arg_1.a.d), vec4<bool>(true, arg_0.d.b, false, var_0.e.b.d), var_0.c.c), !arg_1.a.d)), vec4<bool>(arg_1.a.c, all(!vec4<bool>(var_1, var_1, var_0.a.b.b, var_1)) | var_1, false, !arg_0.d.d), vec4<bool>(_wgslsmith_add_u32(arg_1.c.x, _wgslsmith_clamp_u32(1u, arg_1.c.x, 1540u)) != ~(~50388u), var_1, !var_0.a.b.c, !all(!vec3<bool>(false, true, arg_1.a.b))));
    var_0 = func_1();
    return arg_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_5(Struct_1(false, false, true, false), Struct_2(409f, Struct_1(false, true, true, false)), vec3<u32>(52262u, 475u, 42513u), vec4<i32>(-1i, u_input.a.x, 27003i, -29367i), vec4<f32>(-975f, -2067f, -128f, -676f)), u_input.a.x, func_1(), ~vec4<u32>(21072u, 4294967295u, 1u, 45941u)))), select(vec2<u32>(~20890u, 22894u), _wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 91209u), vec2<u32>(4294967295u, 76277u), vec2<u32>(23118u, 4294967295u)), vec2<bool>(true, true)), !select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), false), func_1().a.b.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(722f, _wgslsmith_f_op_f32(f32(-1f) * -290f), -1000f))), Struct_5(func_1().d.b, Struct_2(-350f, func_5(508f, abs(vec2<u32>(0u, 77734u)), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1510f, -905f, -639f))).d), vec3<u32>(1u, 1u, 1u), -firstLeadingBit(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-367f, 1170f, 1970f, -120f) - vec4<f32>(1000f, -148f, -887f, -1105f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-105f, 1528f, 311f, -1000f), vec4<f32>(1000f, -939f, 1536f, -443f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-903f, 1766f, -1265f, 546f), vec4<f32>(-414f, 838f, 2310f, -940f), vec4<bool>(true, true, false, true)))))))), !(_wgslsmith_mod_i32(19529i, 1i) <= (u_input.a.x & u_input.a.x)) || !any(vec3<bool>(true, true, true)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -259f))) + _wgslsmith_f_op_f32(-636f + _wgslsmith_f_op_f32(-825f * _wgslsmith_f_op_f32(select(2218f, 1879f, false))))));
    global0 = array<Struct_4, 15>();
    var var_2 = true;
    global0 = array<Struct_4, 15>();
    var_2 = any(!vec3<bool>(any(vec2<bool>(true, true)), true, select(true, true, any(vec2<bool>(true, true)))));
    var var_3 = func_1().d;
    var var_4 = vec3<u32>(~select(1u, ~53378u, !var_3.b.b) >> (min(39550u, 1u) % 32u), _wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(701u, 20250u, 50920u)), ~vec3<u32>(1u, 1u, 1u)), ~48440u);
    var_2 = func_3(-1000f, ~((~vec3<u32>(1u, var_4.x, 38251u) & ~vec3<u32>(var_4.x, var_4.x, 12489u)) >> (_wgslsmith_add_vec3_u32(~vec3<u32>(var_4.x, 61988u, 1u), vec3<u32>(var_4.x, 1u, 84595u) ^ vec3<u32>(58662u, var_4.x, 55171u)) % vec3<u32>(32u)))).x;
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_mult_vec4_u32(vec4<u32>(39842u, 4294967295u, var_4.x, 89219u) >> (vec4<u32>(var_4.x, var_4.x, 2485u, var_4.x) % vec4<u32>(32u)), vec4<u32>(var_4.x, 37035u, var_4.x, 57604u)) ^ vec4<u32>(0u, var_4.x, _wgslsmith_add_u32(12228u, 1u), _wgslsmith_mod_u32(3761u, 1u))));
}

