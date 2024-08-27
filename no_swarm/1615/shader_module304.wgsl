struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

var<private> global1: vec4<i32> = vec4<i32>(2147483647i, 2147483647i, -38791i, 1i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = vec3<bool>(select(arg_0.b, 7861u, _wgslsmith_sub_u32(4294967295u, arg_0.e) == arg_0.b) <= 0u, true, false);
    return vec3<u32>(~arg_0.e, 1u, arg_0.b);
}

fn func_2() -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(1u, 11u)];
    var var_1 = ~_wgslsmith_clamp_vec3_u32(select(firstTrailingBit(~vec3<u32>(74126u, var_0.b, var_0.b)), _wgslsmith_clamp_vec3_u32(max(vec3<u32>(var_0.b, 0u, 63660u), vec3<u32>(var_0.b, 0u, var_0.d.x)), reverseBits(vec3<u32>(var_0.d.x, var_0.e, var_0.d.x)), firstTrailingBit(vec3<u32>(52445u, var_0.e, var_0.d.x))), select(true, any(vec2<bool>(false, true)), false)), func_3(Struct_1(global1.x, 4294967295u, _wgslsmith_add_i32(global1.x, 11838i), var_0.d & var_0.d, 71474u)), ~(~select(vec3<u32>(var_0.e, var_0.d.x, var_0.e), vec3<u32>(2361u, 0u, var_0.d.x), vec3<bool>(false, true, true))));
    let var_2 = Struct_1(global1.x, _wgslsmith_mult_u32(~9093u, ~max(12591u, _wgslsmith_div_u32(var_1.x, var_1.x))), i32(-1i) * -1i, select(var_1.yz, vec2<u32>(5079u, var_1.x), select(vec2<bool>(true, true), select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(true, true), false)), true)), 36615u);
    let var_3 = var_2;
    let var_4 = ~(~(var_2.b ^ ~4294967295u));
    return global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~max(~var_4, 1u), var_4) ^ var_2.e, 11u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = arg_3;
    global1 = select(vec4<i32>(_wgslsmith_sub_i32(~(arg_0.c >> (5503u % 32u)), arg_0.c), ~(~(arg_2.a >> (var_0.e % 32u))), func_2().c, arg_1.a), vec4<i32>(-2147483647i, ~(-7856i), arg_3.a, global1.x), select(vec4<bool>(true, true, true, true), vec4<bool>(true, !(2147483647i < global1.x), any(vec2<bool>(false, true)), false), true));
    var var_1 = -1i >> (_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(select(firstLeadingBit(var_0.d), func_3(global0[_wgslsmith_index_u32(1u, 11u)]).zy, true), arg_0.d), arg_3.d) % 32u);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-458f, 238f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -551f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -690f), -1413f))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(711f, -908f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-457f, 432f))))));
    global1 = (_wgslsmith_mult_vec4_i32(abs(max(vec4<i32>(20717i, 2147483647i, 1002i, 1i), vec4<i32>(-2147483647i, arg_1.c, arg_0.a, arg_1.a))), _wgslsmith_div_vec4_i32(-vec4<i32>(8338i, arg_2.c, var_0.c, -14836i), ~vec4<i32>(-8262i, -2147483647i, arg_1.a, var_0.c))) | abs(abs(vec4<i32>(arg_2.a, var_0.c, global1.x, arg_2.c) ^ vec4<i32>(arg_3.a, global1.x, 38187i, -9029i)))) >> (vec4<u32>(firstTrailingBit(max(~57614u, _wgslsmith_mult_u32(arg_2.e, 29873u))), _wgslsmith_clamp_u32(firstLeadingBit(reverseBits(arg_0.d.x)), 1u, arg_1.b), func_2().e, (_wgslsmith_add_u32(arg_0.d.x, arg_1.e) << (countOneBits(8302u) % 32u)) ^ (0u << (arg_3.d.x % 32u))) % vec4<u32>(32u));
    return ~(1i | arg_0.a) >= _wgslsmith_sub_i32(2147483647i, 40075i);
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 11>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -675f) - _wgslsmith_f_op_f32(step(-2234f, _wgslsmith_f_op_f32(973f - 1040f))))));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + -427f)), _wgslsmith_f_op_f32(f32(-1f) * -1354f));
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    return arg_1;
}

fn func_1() -> Struct_1 {
    let var_0 = func_5(func_4(global0[_wgslsmith_index_u32(0u, 11u)], func_2(), global0[_wgslsmith_index_u32(~67776u, 11u)], global0[_wgslsmith_index_u32(abs(~1u) | ~func_2().b, 11u)]), Struct_1(_wgslsmith_sub_i32(abs(~u_input.a.x), _wgslsmith_mult_i32(countOneBits(global1.x), ~u_input.a.x)), ~4294967295u, u_input.b.x, min(_wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(0u, 4294967295u)), vec2<u32>(4294967295u, 73168u), ~vec2<u32>(97153u, 0u)), ~(~vec2<u32>(50614u, 0u))), 1u));
    global1 = abs(~max(-reverseBits(vec4<i32>(global1.x, global1.x, global1.x, var_0.c)), -vec4<i32>(-25247i, 347i, global1.x, 1i) >> (_wgslsmith_div_vec4_u32(vec4<u32>(var_0.d.x, var_0.e, var_0.d.x, var_0.b), vec4<u32>(3387u, 1u, 86753u, var_0.e)) % vec4<u32>(32u))));
    global1 = _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.c.x, _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.b.x, u_input.a.x), _wgslsmith_dot_vec3_i32(global1.xwx, vec3<i32>(-41423i, global1.x, u_input.a.x))), u_input.b.x, ~firstTrailingBit(u_input.c.x)), _wgslsmith_add_vec4_i32(firstLeadingBit(_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.c.x, var_0.a, u_input.a.x, global1.x), select(vec4<i32>(global1.x, 14599i, 767i, -2147483647i), vec4<i32>(1i, global1.x, 2147483647i, -1i), true), vec4<i32>(2147483647i, -20534i, -1i, var_0.a) << (vec4<u32>(1u, 4806u, 77119u, var_0.d.x) % vec4<u32>(32u)))), max(vec4<i32>(2147483647i, global1.x, var_0.a, var_0.a), select(vec4<i32>(global1.x, 2147483647i, 0i, 44773i), vec4<i32>(var_0.c, global1.x, u_input.a.x, 24429i), true)) << ((firstLeadingBit(vec4<u32>(38172u, var_0.e, 0u, 14357u)) & firstLeadingBit(vec4<u32>(0u, var_0.e, 4294967295u, 12040u))) % vec4<u32>(32u))));
    global1 = countOneBits(_wgslsmith_clamp_vec4_i32(firstLeadingBit(firstLeadingBit(-vec4<i32>(var_0.a, global1.x, u_input.c.x, u_input.c.x))), vec4<i32>(i32(-1i) * -2147483647i, 2147483647i, 0i, reverseBits(~global1.x)), vec4<i32>(u_input.c.x, var_0.a, abs(var_0.a), 2147483647i)));
    global0 = array<Struct_1, 11>();
    return func_5(!(var_0.c < ~_wgslsmith_mod_i32(global1.x, -1951i)), global0[_wgslsmith_index_u32(1u, 11u)]);
}

fn func_6(arg_0: Struct_1, arg_1: vec2<u32>) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~0u, arg_0.b), 11u)];
    var_0 = arg_0;
    var var_1 = abs(~59301u);
    var_1 = ~(select(1u, ~(~0u), true) << (~(~arg_1.x) % 32u));
    let var_2 = func_5(~(firstTrailingBit(arg_0.c) ^ (i32(-1i) * -2147483647i)) >= -_wgslsmith_clamp_i32(global1.x, _wgslsmith_add_i32(arg_0.c, u_input.c.x), ~u_input.b.x), func_5(true, Struct_1(-min(global1.x, -1i), var_0.d.x, -37724i, func_2().d, func_5(-5512i == global1.x, Struct_1(u_input.a.x, 4294967295u, var_0.a, arg_0.d, 4294967295u)).b)));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(625f)))), 1923f)))));
}

fn func_7(arg_0: f32, arg_1: vec3<f32>, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = -_wgslsmith_div_i32(-(arg_2.x | global1.x), u_input.a.x);
    var_0 = _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-5104i, arg_2.x), max(vec2<i32>(arg_2.x, select(global1.x, u_input.c.x, true)), u_input.b)), arg_2.x);
    global1 = vec4<i32>(42199i, -u_input.a.x, global1.x, func_2().a >> ((32024u << (1u % 32u)) % 32u));
    var var_1 = Struct_1(select(func_5(all(vec3<bool>(false, true, true)) && any(vec3<bool>(true, true, true)), global0[_wgslsmith_index_u32(~select(5813u, 29633u, false), 11u)]).a, min(2147483647i, 2147483647i), false), func_1().b, global1.x, _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(1u, 1u)), _wgslsmith_add_vec2_u32(select(vec2<u32>(97465u, 64854u), vec2<u32>(6541u, 85881u), false) & ~vec2<u32>(26796u, 4294967295u), ~vec2<u32>(1u, 1u))), ~(~36821u));
    global1 = vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, select(-8057i, 0i ^ global1.x, true), -min(-1i, 0i)), u_input.b.x, func_5(func_4(func_5(false, Struct_1(-23357i, 4294967295u, u_input.c.x, vec2<u32>(4294967295u, 4294967295u), var_1.b)), global0[_wgslsmith_index_u32(41142u, 11u)], Struct_1(u_input.c.x, 4294967295u, global1.x, var_1.d, 4294967295u), Struct_1(81291i, 5915u, global1.x, var_1.d, var_1.d.x)), func_1()).a, var_1.c) << (abs(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.b, 0u, var_1.e, 1u), vec4<u32>(1u, var_1.d.x, 0u, 1u)), ~vec4<u32>(var_1.b, var_1.b, var_1.d.x, var_1.e)) >> (~(vec4<u32>(var_1.e, var_1.d.x, 59941u, var_1.b) ^ vec4<u32>(var_1.b, var_1.e, var_1.e, var_1.b)) % vec4<u32>(32u))) % vec4<u32>(32u));
    return global0[_wgslsmith_index_u32(~(_wgslsmith_mod_u32(var_1.b, var_1.e) << (var_1.d.x % 32u)), 11u)];
}

fn func_8(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: vec3<f32>) -> StorageBuffer {
    var var_0 = u_input.b.x;
    var var_1 = min(func_2().d, arg_0.d);
    var var_2 = Struct_1(1i, _wgslsmith_sub_u32(52479u, arg_0.d.x) & (7873u ^ arg_0.e), func_5(!any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true))), arg_2).a, arg_2.d, 1u);
    var var_3 = arg_0;
    global1 = vec4<i32>(_wgslsmith_clamp_i32(global1.x, -2147483647i, var_2.a), max(-1i, ~abs(u_input.b.x) | _wgslsmith_sub_i32(_wgslsmith_mult_i32(arg_2.a, -1i), _wgslsmith_mult_i32(arg_0.a, arg_2.c))), _wgslsmith_add_i32(u_input.b.x, arg_0.a), arg_0.c);
    return StorageBuffer(vec4<u32>(arg_2.e, ~arg_2.e, 4294967295u, _wgslsmith_sub_u32(~_wgslsmith_sub_u32(38975u, 1u), ~abs(arg_0.b))), _wgslsmith_dot_vec4_u32(vec4<u32>(func_3(arg_2).x, 4294967295u, arg_0.e, _wgslsmith_div_u32(arg_0.d.x, var_2.d.x)), vec4<u32>(var_2.d.x, _wgslsmith_clamp_u32(var_3.b >> (9082u % 32u), 44421u, _wgslsmith_mult_u32(4834u, 84764u)), ~func_7(1349f, vec3<f32>(654f, -799f, arg_1), vec4<i32>(-2147483647i, 24644i, -1i, var_2.c)).b, _wgslsmith_mult_u32(countOneBits(4294967295u), 1191u))), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(global1.ywx, _wgslsmith_clamp_vec3_i32(global1.zwy, global1.wxx ^ global1.zwz, ~global1.xww)), -_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, var_2.a, var_2.c), global1.wzx, global1.wxz), vec3<i32>(arg_0.c, arg_2.c, -2147483647i))), reverseBits((vec3<i32>(-1i, 1i, 34164i) & (global1.zzw | vec3<i32>(-1i, var_3.c, 2893i))) & global1.yxw), ~var_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(4294967295u, 11u)];
    let x = u_input.a;
    s_output = func_8(global0[_wgslsmith_index_u32(var_0.b, 11u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2262f - -678f))), func_7(_wgslsmith_f_op_f32(func_6(func_1(), vec2<u32>(4294967295u, ~24965u))), vec3<f32>(-1255f, 714f, 1000f), min(-(~vec4<i32>(0i, -42481i, -2147483647i, -2147483647i)), vec4<i32>(-11393i, -1i, _wgslsmith_mult_i32(u_input.a.x, var_0.a), u_input.a.x ^ -27819i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1194f)) - _wgslsmith_f_op_f32(trunc(-982f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -605f), 691f, false)))));
}

