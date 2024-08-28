struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: i32,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: vec3<i32>,
    d: u32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31>;

var<private> global1: array<vec2<f32>, 19>;

var<private> global2: Struct_3;

var<private> global3: array<vec3<bool>, 6> = array<vec3<bool>, 6>(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(global2.d.a)))), !select(global2.d.b, !global2.d.b, !select(global2.d.b, vec3<bool>(global2.e, global2.d.e.x, global2.e), true)), global2.d.d, ~(global2.a.x << ((select(0u, global2.b, global2.d.b.x) & 0u) % 32u)), select(global2.d.b.zy, select(global2.d.b.xz, global2.d.e, vec2<bool>(global2.e, global2.d.e.x)), true));
    var var_1 = Struct_2(abs(~u_input.a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-494f + var_0.a.x))), 1503f, any(vec4<bool>(select(var_0.b.x, true, true), true || var_0.b.x, global2.e || global2.e, true)))));
    let var_2 = vec3<bool>(!any(select(vec2<bool>(var_0.b.x, global2.d.e.x), vec2<bool>(true, true), select(global2.d.e, vec2<bool>(false, true), vec2<bool>(var_0.b.x, var_0.e.x)))), false, var_0.b.x);
    global1 = array<vec2<f32>, 19>();
    var var_3 = vec4<u32>(min(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(1u, global2.b), 1u, 4294967295u, abs(4924u)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 30205u, u_input.a, 5452u), countOneBits(vec4<u32>(var_1.a, var_1.a, u_input.a, 0u)))), firstTrailingBit(1u & _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a, var_1.a), vec2<u32>(var_1.a, global2.b)))), var_1.a, ~(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.a, u_input.a, var_1.a, global2.b), vec4<u32>(var_1.a, u_input.a, var_1.a, var_1.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(global2.b, 4294967295u, 78744u, global2.b), vec4<u32>(global2.b, global2.b, var_1.a, u_input.a))) >> (_wgslsmith_clamp_u32(max(4294967295u, global2.b), 48510u, u_input.a) % 32u)), 9255u);
    return _wgslsmith_div_u32(~_wgslsmith_div_u32(~(1u ^ var_3.x), ~(~15520u)), _wgslsmith_add_u32(4294967295u, ~(~var_1.a)));
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_4(func_3(), !(-2147483647i != (~u_input.b.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global2.b), vec2<u32>(0u, u_input.a)) % 32u))), _wgslsmith_mod_vec3_i32(select(~vec3<i32>(-23840i, global2.a.x, global2.a.x), global2.a.yzw, select(!vec3<bool>(true, global2.d.b.x, global2.d.b.x), global3[_wgslsmith_index_u32(~u_input.a, 6u)], vec3<bool>(global2.d.e.x, global2.d.e.x, global2.d.b.x))), global2.a.xyw), ~4294967295u, _wgslsmith_mod_vec4_u32(vec4<u32>(38268u, global2.b, ~1u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(21169u, global2.b, global2.b), vec3<u32>(u_input.a, 4294967295u, 1u)), ~vec3<u32>(0u, 1u, global2.b))), ~_wgslsmith_add_vec4_u32(vec4<u32>(global2.b, u_input.a, u_input.a, 1u), vec4<u32>(u_input.a, 3835u, u_input.a, global2.b) | vec4<u32>(4294967295u, 0u, global2.b, 0u))));
    global2 = Struct_3(_wgslsmith_add_vec4_i32(global2.a, abs(_wgslsmith_add_vec4_i32(vec4<i32>(global2.d.c, 33565i, u_input.b.x, u_input.b.x), vec4<i32>(-2147483647i, 65087i, 46443i, u_input.b.x)))), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~var_0.e << (~var_0.e % vec4<u32>(32u)), firstTrailingBit(~vec4<u32>(77636u, 1u, 0u, 1u))), ~vec4<u32>(_wgslsmith_add_u32(var_0.d, 26411u), ~1u, _wgslsmith_add_u32(var_0.a, var_0.e.x), firstLeadingBit(1u))), -16347i, global2.d, true);
    global2 = Struct_3(-(~abs(vec4<i32>(global2.c, 39844i, u_input.b.x, -4987i)) ^ ~select(global2.a, global2.a, vec4<bool>(var_0.b, var_0.b, var_0.b, false))), ~_wgslsmith_mod_u32(~global2.b << (48450u % 32u), _wgslsmith_add_u32(var_0.d, var_0.a << (4294967295u % 32u))), max(firstLeadingBit(u_input.b.x), u_input.b.x), Struct_1(_wgslsmith_f_op_vec4_f32(-global2.d.a), vec3<bool>(true, all(select(vec4<bool>(true, true, true, false), vec4<bool>(var_0.b, global2.e, var_0.b, false), vec4<bool>(true, global2.e, true, false))), true), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(17489i, var_0.c.x, var_0.c.x, global2.c), global2.a), -vec4<i32>(14970i, var_0.c.x, u_input.b.x, var_0.c.x), global2.a | vec4<i32>(1i, 0i, -1i, 2147483647i)), firstLeadingBit(firstLeadingBit(vec4<i32>(u_input.b.x, -2147483647i, -26978i, var_0.c.x)))), -abs(global2.a.x) << (~(~u_input.a) % 32u), select(global2.d.b.zx, !(!global2.d.b.xy), !select(vec2<bool>(global2.d.b.x, false), vec2<bool>(global2.e, global2.d.b.x), global2.d.e))), !global2.d.e.x);
    var var_1 = ~0u;
    let var_2 = Struct_3(-(~global2.a) >> (var_0.e % vec4<u32>(32u)), select(~_wgslsmith_div_u32(4294967295u, _wgslsmith_mult_u32(var_0.e.x, 0u)), ~(~4294967295u), global2.e), 0i, Struct_1(_wgslsmith_f_op_vec4_f32(step(global2.d.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(var_0.e.x, 31u)], -233f, global0[_wgslsmith_index_u32(var_0.d, 31u)], global0[_wgslsmith_index_u32(u_input.a, 31u)])))), select(vec3<bool>(false, true, false), vec3<bool>(true, false, !global2.d.e.x), !(!var_0.b)), reverseBits(~var_0.c.x), 1i, vec2<bool>(false, false)), global2.e);
    return Struct_1(_wgslsmith_f_op_vec4_f32(global2.d.a * global2.d.a), !vec3<bool>(all(select(vec3<bool>(false, global2.d.e.x, false), global2.d.b, vec3<bool>(global2.e, true, false))), all(vec3<bool>(false, false, false)), true), var_2.a.x, select(2147483647i, firstTrailingBit(-36520i), !all(select(var_2.d.e, vec2<bool>(var_2.e, true), vec2<bool>(false, var_2.d.b.x)))), select(global2.d.b.zz, vec2<bool>(var_2.d.b.x, any(vec2<bool>(var_2.d.e.x, false))), select(!(!vec2<bool>(var_2.e, false)), select(!global2.d.b.zx, vec2<bool>(var_0.b, var_0.b), !global2.e), any(!var_2.d.b))));
}

fn func_1() -> Struct_3 {
    var var_0 = func_2(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(min(46493u, global2.b), 31u)])));
    let var_1 = Struct_3(global2.a, u_input.a, ~global2.a.x, func_2(_wgslsmith_f_op_f32(global2.d.a.x - -2234f)), !(_wgslsmith_mult_u32(_wgslsmith_sub_u32(0u, u_input.a), ~23741u) >= _wgslsmith_clamp_u32(_wgslsmith_mult_u32(global2.b, global2.b), global2.b ^ u_input.a, 0u)));
    global2 = Struct_3(abs(min(select(global2.a, var_1.a, true), _wgslsmith_sub_vec4_i32(vec4<i32>(-271i, u_input.b.x, 11143i, u_input.b.x), vec4<i32>(var_1.d.d, var_0.c, u_input.b.x, var_0.c))) << ((countOneBits(vec4<u32>(0u, global2.b, global2.b, u_input.a)) << (~vec4<u32>(var_1.b, 25803u, 1u, global2.b) % vec4<u32>(32u))) % vec4<u32>(32u))), global2.b, 11810i, Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(func_2(global0[_wgslsmith_index_u32(var_1.b, 31u)]).a, vec4<f32>(-2791f, -1000f, 538f, var_0.a.x), vec4<bool>(true, true, true, true))), vec4<f32>(var_0.a.x, -151f, global2.d.a.x, -1345f))), vec3<bool>(-196f >= var_0.a.x, global0[_wgslsmith_index_u32(~1110u, 31u)] != global0[_wgslsmith_index_u32(~28386u, 31u)], var_1.e), var_0.c, -2519i, func_2(2033f).e), true);
    let var_2 = _wgslsmith_clamp_i32(firstLeadingBit(_wgslsmith_mod_i32(-15432i >> (global2.b % 32u), ~global2.a.x) ^ -_wgslsmith_add_i32(global2.c, global2.d.c)), _wgslsmith_mult_i32(firstTrailingBit(~(-u_input.b.x)), -1i), select(_wgslsmith_add_i32(u_input.b.x, global2.c), global2.a.x ^ var_1.a.x, !any(!vec4<bool>(true, true, false, var_1.e))));
    var var_3 = vec2<f32>(-536f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.d.a.x + var_0.a.x))) - -177f));
    return Struct_3(global2.a, _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a ^ 0u, global2.b << (u_input.a % 32u), 4294967295u, u_input.a), firstLeadingBit(reverseBits(vec4<u32>(var_1.b, 56797u, var_1.b, 0u))), vec4<bool>(true, select(true, var_1.e, true), !var_0.b.x, global2.e)), vec4<u32>(firstTrailingBit(global2.b), 48784u, ~(31399u & global2.b), ~firstTrailingBit(5047u))), 1i, var_1.d, false);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: Struct_3) -> Struct_2 {
    var var_0 = u_input.b.x;
    let var_1 = arg_2.a.xxx;
    let var_2 = any(select(vec4<bool>(func_2(arg_2.d.a.x).b.x, -2176f != global0[_wgslsmith_index_u32(arg_1.x, 31u)], true, u_input.b.x > -8106i), select(select(vec4<bool>(arg_2.d.b.x, true, true, arg_2.d.e.x), !vec4<bool>(true, global2.e, arg_2.d.e.x, arg_2.e), vec4<bool>(true, false, false, true)), select(select(vec4<bool>(global2.e, global2.d.b.x, arg_2.d.b.x, true), vec4<bool>(false, false, arg_2.d.e.x, global2.d.b.x), vec4<bool>(false, arg_2.d.b.x, false, true)), select(vec4<bool>(arg_2.d.e.x, true, true, global2.e), vec4<bool>(global2.d.b.x, global2.d.e.x, arg_2.e, global2.e), arg_2.d.e.x), vec4<bool>(global2.e, false, arg_2.d.b.x, arg_2.e)), global2.e), false));
    global0 = array<f32, 31>();
    global2 = arg_2;
    return Struct_2(~global2.b, -1414f);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    var var_0 = global2.a.wwy;
    let var_1 = vec2<i32>(-2147483647i, -2147483647i);
    let var_2 = vec2<bool>(arg_1.b.x, false);
    global3 = array<vec3<bool>, 6>();
    let var_3 = 1i;
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2471f - arg_1.a.x), _wgslsmith_div_f32(global2.d.a.x, 484f))) * _wgslsmith_f_op_f32(global2.d.a.x + global0[_wgslsmith_index_u32(5362u >> (arg_3 % 32u), 31u)])), arg_1.a.x, _wgslsmith_f_op_f32(global2.d.a.x + arg_2.a.x), -116f), !(!vec3<bool>(func_1().d.b.x, true, !var_2.x)), 0i, firstLeadingBit(~(-48526i)), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(1u, 31u)])) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.a.x))))).e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(min(global2.a, ~vec4<i32>(62682i, _wgslsmith_add_i32(u_input.b.x, global2.d.d), 0i, 1i << (0u % 32u))), countOneBits(1u), 2147483647i, func_5(func_4(max(firstTrailingBit(vec3<u32>(68867u, global2.b, global2.b)), vec3<u32>(4294967295u, u_input.a, global2.b)), ~vec4<u32>(0u, 1u, 4294967295u, global2.b) ^ max(vec4<u32>(u_input.a, u_input.a, u_input.a, 56525u), vec4<u32>(global2.b, 4294967295u, 62704u, global2.b)), func_1()), global2.d, Struct_1(global2.d.a, global3[_wgslsmith_index_u32(4294967295u, 6u)], u_input.b.x >> (_wgslsmith_sub_u32(4294967295u, global2.b) % 32u), -15369i, vec2<bool>(true, global2.d.e.x)), ~(~81823u)), true);
    var_0 = Struct_3(vec4<i32>(-1i, u_input.b.x, ~(-20348i), firstTrailingBit(~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, global2.a.x, u_input.b.x), vec3<i32>(-45290i, 0i, 2147483647i)))), var_0.b, -1i, global2.d, global2.d.e.x);
    let var_1 = 454f;
    global2 = Struct_3(vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global2.c, global2.c, u_input.b.x), ~vec3<i32>(u_input.b.x, var_0.a.x, 0i)), _wgslsmith_div_vec3_i32(-global2.a.www, vec3<i32>(15701i, 58838i, -17946i) << (vec3<u32>(4294967295u, 0u, u_input.a) % vec3<u32>(32u)))), _wgslsmith_mod_i32((global2.c << (21730u % 32u)) >> (reverseBits(u_input.a) % 32u), ~(-u_input.b.x)), ~(~2147483647i) & (firstLeadingBit(var_0.a.x) | func_5(Struct_2(var_0.b, global2.d.a.x), Struct_1(vec4<f32>(105f, global2.d.a.x, 287f, 1000f), vec3<bool>(true, var_0.e, true), u_input.b.x, -35902i, var_0.d.b.yx), Struct_1(var_0.d.a, var_0.d.b, var_0.c, global2.a.x, var_0.d.b.xy), u_input.a).c), 44244i), u_input.a, -func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1 - var_1)))).d, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.a.x)) - var_0.d.a.x)), global2.e);
    let var_2 = ~(var_0.a & vec4<i32>(-17309i, -firstLeadingBit(1i), abs(1i), _wgslsmith_clamp_i32(i32(-1i) * -9194i, abs(-58920i), global2.c)));
    var var_3 = u_input.b.x;
    global3 = array<vec3<bool>, 6>();
    global2 = Struct_3(vec4<i32>(-1i) * -var_2, _wgslsmith_dot_vec4_u32(vec4<u32>(55385u, 4294967295u, 1u, global2.b), ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.b, var_0.b, 4294967295u, u_input.a), vec4<u32>(20209u, var_0.b, u_input.a, u_input.a)) << (reverseBits(vec4<u32>(var_0.b, 4422u, global2.b, u_input.a)) % vec4<u32>(32u))), var_0.c, func_5(Struct_2(1u, _wgslsmith_div_f32(var_0.d.a.x, _wgslsmith_f_op_f32(select(var_0.d.a.x, var_1, global2.e)))), global2.d, func_5(Struct_2(_wgslsmith_add_u32(global2.b, var_0.b), -869f), func_1().d, global2.d, ~(~0u)), min(1u, 1u)), all(vec4<bool>(all(vec2<bool>(false, var_0.d.b.x)), ~var_0.b == var_0.b, var_0.d.e.x, global2.d.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-(var_0.a.zxw ^ vec3<i32>(select(var_0.a.x, -3369i, var_0.e), u_input.b.x & var_0.d.d, i32(-1i) * -928i)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1245f - 1132f))), vec4<i32>(~func_2(func_2(var_1).a.x).d, select(-18922i, i32(-1i) * -1011i, true), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, 1i, global2.d.d), firstTrailingBit(vec3<i32>(global2.d.d, 1i, var_2.x))) | min(min(var_2.x, var_0.a.x), ~u_input.b.x), var_0.d.c));
}

