struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<vec4<bool>, 20>;

var<private> global2: array<Struct_1, 8>;

var<private> global3: array<Struct_1, 14>;

var<private> global4: array<vec4<i32>, 2>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>) -> u32 {
    let var_0 = Struct_1(14981u, !select(vec3<bool>(global0.x, global0.x, !global0.x), select(select(arg_0.a.b, arg_0.b.b, false), vec3<bool>(true, true, global0.x), select(vec3<bool>(arg_0.b.b.x, false, arg_0.d.b.x), arg_0.a.b, arg_0.d.b)), select(vec3<bool>(global0.x, true, false), select(vec3<bool>(arg_0.a.b.x, arg_0.d.b.x, global0.x), arg_0.d.b, vec3<bool>(global0.x, arg_0.b.b.x, true)), select(vec3<bool>(global0.x, true, true), arg_0.d.b, arg_0.d.b.x))), 87827u);
    global2 = array<Struct_1, 8>();
    global3 = array<Struct_1, 14>();
    global1 = array<vec4<bool>, 20>();
    var var_1 = var_0.c;
    return min(609u, var_0.c);
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = ~(vec2<u32>(~4294967295u, arg_0.x) ^ firstLeadingBit(_wgslsmith_sub_vec2_u32(~vec2<u32>(arg_0.x, 1u), vec2<u32>(13164u, arg_0.x))));
    global3 = array<Struct_1, 14>();
    let var_1 = vec4<u32>(func_3(Struct_2(global2[_wgslsmith_index_u32(arg_0.x, 8u)], Struct_1(0u, select(vec3<bool>(false, global0.x, false), vec3<bool>(true, false, false), vec3<bool>(true, true, global0.x)), 16224u ^ var_0.x), ~(u_input.b & vec4<u32>(u_input.a.x, arg_0.x, var_0.x, 12400u)), Struct_1(40808u, vec3<bool>(true, true, true), ~6810u)), _wgslsmith_mod_vec2_i32(-_wgslsmith_add_vec2_i32(vec2<i32>(9810i, u_input.c.x), arg_2.xy), arg_2.yw & ~u_input.c)), arg_0.x, func_3(Struct_2(global3[_wgslsmith_index_u32(var_0.x, 14u)], global2[_wgslsmith_index_u32((arg_0.x ^ 0u) >> (~63693u % 32u), 8u)], vec4<u32>(_wgslsmith_sub_u32(4294967295u, 46912u), var_0.x, 4294967295u >> (var_0.x % 32u), var_0.x >> (18910u % 32u)), Struct_1(~var_0.x, vec3<bool>(global0.x, true, false), _wgslsmith_sub_u32(72656u, arg_0.x))), _wgslsmith_div_vec2_i32(max(u_input.c, u_input.c), vec2<i32>(1i, 21042i)) << ((_wgslsmith_mult_vec2_u32(arg_0.yw, arg_0.zy) & _wgslsmith_div_vec2_u32(vec2<u32>(54940u, 14436u), vec2<u32>(78659u, 1u))) % vec2<u32>(32u))), _wgslsmith_dot_vec2_u32(countOneBits(abs(reverseBits(vec2<u32>(71439u, u_input.d)))), reverseBits(_wgslsmith_add_vec2_u32(min(vec2<u32>(24319u, u_input.b.x), vec2<u32>(var_0.x, 76381u)), min(u_input.a, u_input.a)))));
    global3 = array<Struct_1, 14>();
    var var_2 = ~(vec4<u32>(~func_3(Struct_2(Struct_1(arg_1, vec3<bool>(true, true, global0.x), var_0.x), Struct_1(arg_0.x, vec3<bool>(global0.x, false, true), 25938u), arg_0, global3[_wgslsmith_index_u32(66883u, 14u)]), vec2<i32>(9573i, 2147483647i)), ~(~26809u), var_1.x, var_1.x) >> (vec4<u32>(0u, abs(var_1.x), ~(~77974u), 1u) % vec4<u32>(32u)));
    return global2[_wgslsmith_index_u32(var_0.x, 8u)];
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec4<f32>) -> vec3<i32> {
    var var_0 = u_input.c.x;
    var var_1 = func_2(~(~(~u_input.b) << (~(~vec4<u32>(arg_1.c, arg_1.a, arg_1.c, u_input.a.x)) % vec4<u32>(32u))), ~_wgslsmith_add_u32(u_input.a.x, _wgslsmith_sub_u32(arg_1.a, 0u)), select(-(~global4[_wgslsmith_index_u32(u_input.a.x, 2u)] << (_wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(arg_1.a, arg_1.c, 1u, 24258u)) % vec4<u32>(32u))), global4[_wgslsmith_index_u32(arg_1.c << (~(4294967295u ^ arg_1.c) % 32u), 2u)], all(!select(arg_1.b, vec3<bool>(false, false, false), arg_1.b))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_mult_u32(46712u & ~var_1.c, 35135u), var_1.b, 48804u), Struct_1(_wgslsmith_mult_u32(var_1.c, ~16412u), vec3<bool>(true, true, any(vec2<bool>(true, false)) || true), 7868u), select(u_input.b, abs(reverseBits(u_input.b)) & ~(~vec4<u32>(21681u, 0u, arg_1.c, 56539u)), vec4<bool>(false, !all(var_1.b), select(true | var_1.b.x, global0.x, !global0.x), true)), func_2(u_input.b, 39034u, vec4<i32>(-1i) * -countOneBits(global4[_wgslsmith_index_u32(arg_1.a, 2u)])));
    var var_3 = var_2;
    let var_4 = func_2(u_input.b, 4294967295u, ~_wgslsmith_mult_vec4_i32(global4[_wgslsmith_index_u32(1u, 2u)], global4[_wgslsmith_index_u32(var_2.c.x, 2u)])).c;
    return vec3<i32>(-2147483647i, -16274i, reverseBits(_wgslsmith_mod_i32(u_input.c.x, -39275i)));
}

fn func_5(arg_0: f32, arg_1: vec3<i32>) -> Struct_2 {
    global0 = func_2(_wgslsmith_sub_vec4_u32(max(u_input.b, ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 39104u, 33084u, 0u), u_input.b)), u_input.b), ~16668u, abs(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(arg_1.x, 13619i), 0i), 0i, 45361i, _wgslsmith_dot_vec4_i32(~global4[_wgslsmith_index_u32(4294967295u, 2u)], global4[_wgslsmith_index_u32(firstLeadingBit(u_input.d), 2u)])))).b.yy;
    var var_0 = 7721i ^ min(_wgslsmith_div_i32(1i, ~_wgslsmith_clamp_i32(-1i, arg_1.x, -21416i)), u_input.c.x);
    global4 = array<vec4<i32>, 2>();
    let var_1 = firstLeadingBit(select(_wgslsmith_clamp_vec2_i32(arg_1.zz, firstTrailingBit(~u_input.c), arg_1.yx), ~vec2<i32>(~arg_1.x, _wgslsmith_sub_i32(arg_1.x, 21552i)), select(vec2<bool>(arg_0 >= -888f, true), vec2<bool>(all(vec3<bool>(global0.x, true, false)), !global0.x), !all(global1[_wgslsmith_index_u32(42957u, 20u)]))));
    var_0 = max(arg_1.x, -8930i);
    return Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(34013u, ~u_input.b.x), 14u)], Struct_1(_wgslsmith_sub_u32(select(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), u_input.a.x, !global0.x), countOneBits(u_input.a.x) << (1u % 32u)), vec3<bool>(true, true, true), ~u_input.d), _wgslsmith_mult_vec4_u32(~(~_wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(u_input.d, u_input.d, 4294967295u, u_input.b.x))), ~vec4<u32>(u_input.a.x, ~u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a), reverseBits(6595u))), Struct_1(0u, !vec3<bool>(!global0.x, true, -1016f <= arg_0), u_input.a.x));
}

fn func_1() -> Struct_2 {
    var var_0 = global3[_wgslsmith_index_u32(~u_input.b.x, 14u)];
    var var_1 = func_5(433f, _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(-88796i, 35593i, -1i) & abs(vec3<i32>(u_input.c.x, u_input.c.x, -68910i)), vec3<i32>(-37846i, u_input.c.x, firstTrailingBit(u_input.c.x))), func_4(vec3<f32>(_wgslsmith_f_op_f32(round(391f)), _wgslsmith_f_op_f32(sign(-1000f)), -246f), func_2(u_input.b >> (vec4<u32>(58541u, 0u, 4294967295u, 1u) % vec4<u32>(32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.a, u_input.d, 0u), vec4<u32>(u_input.d, 8545u, u_input.b.x, u_input.d)), vec4<i32>(18529i, 2147483647i, -2147483647i, -61989i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(455f, -128f, 1549f, 282f) - vec4<f32>(-1445f, 1832f, -107f, -116f)))), abs(~(~vec3<i32>(u_input.c.x, 0i, u_input.c.x)))));
    var_1 = func_5(_wgslsmith_f_op_f32(-166f + _wgslsmith_div_f32(379f, _wgslsmith_f_op_f32(abs(323f)))), ~(-(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 70543i, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)) | ~vec3<i32>(u_input.c.x, u_input.c.x, 1i))));
    let var_2 = Struct_2(Struct_1(~u_input.b.x & var_1.a.c, vec3<bool>(true, all(func_5(255f, vec3<i32>(0i, 0i, -27128i)).d.b), true && var_0.b.x), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.b.a, 6895u, u_input.a.x), var_1.c.xyy), var_1.c.zzy), 0u)), global3[_wgslsmith_index_u32(~func_3(Struct_2(global2[_wgslsmith_index_u32(func_2(vec4<u32>(0u, 1u, 23352u, var_0.c), var_0.c, vec4<i32>(u_input.c.x, 1i, u_input.c.x, u_input.c.x)).a, 8u)], global3[_wgslsmith_index_u32(~u_input.b.x, 14u)], var_1.c, func_2(var_1.c, 4294967295u, vec4<i32>(u_input.c.x, 2147483647i, 1i, u_input.c.x))), abs(_wgslsmith_mult_vec2_i32(u_input.c, vec2<i32>(24749i, 2147483647i)))), 14u)], reverseBits(~u_input.b), var_1.a);
    global3 = array<Struct_1, 14>();
    return var_2;
}

fn func_6(arg_0: bool, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_2) -> Struct_1 {
    global1 = array<vec4<bool>, 20>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(sign(331f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-200f, 167f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -622f), _wgslsmith_f_op_f32(270f - _wgslsmith_f_op_f32(f32(-1f) * -249f)))));
    let var_1 = global1[_wgslsmith_index_u32(1u, 20u)];
    global2 = array<Struct_1, 8>();
    var var_2 = max(arg_3.a.a, 8417u);
    return arg_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(global0.x, vec4<i32>(-2147483647i | (-u_input.c.x >> (1u % 32u)), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.c.x, 1i, u_input.c.x), vec3<i32>(-2147483647i, u_input.c.x, u_input.c.x) ^ vec3<i32>(2147483647i, u_input.c.x, -54858i), ~vec3<i32>(-1i, 7558i, 0i)), min(abs(vec3<i32>(7415i, -39990i, u_input.c.x)), ~vec3<i32>(u_input.c.x, -8474i, u_input.c.x))), 47i, 5705i), select(!global0.x, all(vec2<bool>(true, global0.x)), global0.x), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(6295u);
}

