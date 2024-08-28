struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: array<vec3<u32>, 4>;

var<private> global2: vec2<i32>;

var<private> global3: array<vec4<f32>, 21>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> f32 {
    var var_0 = _wgslsmith_clamp_vec2_i32(abs(~select(~vec2<i32>(-18884i, global2.x), vec2<i32>(global2.x, u_input.a), true)), abs(-(arg_1.a.c | arg_1.a.c)) >> (select(~(~vec2<u32>(1u, 18458u)), ~vec2<u32>(1u, 81454u), true) % vec2<u32>(32u)), ~(select(-arg_1.b.c, vec2<i32>(-11132i, arg_1.c.b), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))) >> (vec2<u32>(8846u, abs(4294967295u)) % vec2<u32>(32u))));
    let var_1 = true;
    let var_2 = arg_0.a;
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(sign(arg_1.c.a)), _wgslsmith_mult_i32(firstLeadingBit(u_input.a | global2.x), u_input.a), arg_1.b.c), Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.x + var_2.x), _wgslsmith_f_op_f32(var_2.x + 400f), _wgslsmith_f_op_f32(f32(-1f) * -241f), 319f), vec4<f32>(_wgslsmith_f_op_f32(1015f + arg_1.a.a.x), arg_1.b.a.x, 212f, arg_1.c.a.x))), (2147483647i | u_input.a) & arg_1.a.c.x, ~firstLeadingBit(vec2<i32>(0i, -36879i))), Struct_1(vec4<f32>(-404f, _wgslsmith_f_op_f32(-arg_0.a.x), arg_1.a.a.x, arg_0.b), 46165i, arg_1.a.c));
    global2 = ~(~countOneBits(vec2<i32>(~(-11419i), -1i)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: f32) -> u32 {
    global1 = array<vec3<u32>, 4>();
    global1 = array<vec3<u32>, 4>();
    var var_0 = vec3<u32>(49178u, ~4294967295u, 1u) << (global1[_wgslsmith_index_u32(max(~4294967295u, 0u), 4u)] % vec3<u32>(32u));
    var var_1 = !vec2<bool>(502f >= _wgslsmith_f_op_f32(func_3(Struct_3(vec3<f32>(314f, -1491f, arg_0), arg_2), Struct_2(Struct_1(vec4<f32>(-1520f, 590f, 200f, -599f), 42597i, vec2<i32>(global2.x, -2147483647i)), Struct_1(global3[_wgslsmith_index_u32(var_0.x, 21u)], u_input.a, vec2<i32>(u_input.a, u_input.a)), Struct_1(vec4<f32>(arg_0, arg_0, -1160f, arg_2), 26654i, vec2<i32>(-1i, global2.x))))), true);
    var_1 = select(select(select(vec2<bool>(true, true), vec2<bool>(var_1.x, any(vec3<bool>(var_1.x, var_1.x, false))), var_1.x), select(select(!vec2<bool>(arg_1, arg_1), vec2<bool>(true, true), var_1.x), !select(vec2<bool>(var_1.x, true), vec2<bool>(true, arg_1), arg_1), true), var_1.x), vec2<bool>(!arg_1, arg_1), vec2<bool>(true, true));
    return _wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.x, reverseBits(64643u), 0u), 4u)], vec3<u32>(var_0.x, ~var_0.x, ~0u)), reverseBits(firstLeadingBit(4294967295u))), var_0.x);
}

fn func_1() -> u32 {
    var var_0 = min(~_wgslsmith_sub_vec2_u32(~(~vec2<u32>(1u, 4294967295u)), vec2<u32>(func_2(-1691f, false, -719f), select(1u, 1u, false))), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(47289u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 20417u), vec2<u32>(1u, 16736u))), select(abs(vec2<u32>(0u, 7524u)), vec2<u32>(4294967295u, 4294967295u), vec2<bool>(true, false))), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, ~4294967295u), select(~vec2<u32>(1u, 1u), firstLeadingBit(vec2<u32>(39770u, 4294967295u)), false), ~max(vec2<u32>(4294967295u, 1u), vec2<u32>(8494u, 39643u)))));
    let var_1 = _wgslsmith_f_op_f32(-251f + -399f);
    global0 = countOneBits(~global2.x);
    let var_2 = vec3<f32>(-2068f, _wgslsmith_f_op_f32(trunc(-422f)), _wgslsmith_f_op_f32(func_3(Struct_3(vec3<f32>(var_1, var_1, _wgslsmith_f_op_f32(-var_1)), 334f), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1001f, var_1, var_1, 173f), vec4<f32>(var_1, var_1, var_1, var_1))), ~0i, ~vec2<i32>(u_input.a, -1i)), Struct_1(_wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(1u, 21u)] * vec4<f32>(-614f, var_1, 855f, var_1)), u_input.a, firstTrailingBit(vec2<i32>(-45176i, 39035i))), Struct_1(_wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(var_0.x, 21u)] - global3[_wgslsmith_index_u32(var_0.x, 21u)]), -1i, vec2<i32>(u_input.a, global2.x))))));
    let var_3 = 37179u;
    return 4294967295u;
}

fn func_4(arg_0: f32, arg_1: vec3<i32>, arg_2: vec4<f32>, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = ~_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), select(vec2<u32>(1u, 1u), vec2<u32>(1u, 0u), select(false, false, true))), ~_wgslsmith_sub_vec2_u32(vec2<u32>(53920u, 27321u), vec2<u32>(1u, 15109u)) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)));
    var var_1 = Struct_5(~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.x, var_0.x, 67108u), ~vec3<u32>(1u, var_0.x, var_0.x)), var_0.x), -firstTrailingBit(~2147483647i));
    var_0 = _wgslsmith_add_vec2_u32(~(abs(vec2<u32>(30113u, var_1.a)) ^ vec2<u32>(1u, var_0.x)) << (_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, var_1.a) ^ select(vec2<u32>(var_0.x, var_1.a), vec2<u32>(4294967295u, var_1.a), vec2<bool>(false, true)), vec2<u32>(0u, 25009u)) % vec2<u32>(32u)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(63427u, var_0.x) | vec2<u32>(var_0.x, 1u), ~vec2<u32>(var_0.x, 13270u), vec2<u32>(var_1.a, var_0.x)) & ~_wgslsmith_div_vec2_u32(~vec2<u32>(106u, var_0.x), vec2<u32>(var_0.x, 4294967295u)));
    var var_2 = select(vec2<bool>(!(!any(vec3<bool>(true, false, false))), true), select(vec2<bool>(true, any(vec3<bool>(false, false, true))), vec2<bool>(true, true), all(select(vec2<bool>(true, false), vec2<bool>(true, true), true))), !vec2<bool>(true, !select(true, true, true)));
    var var_3 = Struct_5(func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(Struct_3(vec3<f32>(arg_0, arg_2.x, arg_2.x), arg_0), Struct_2(Struct_1(arg_2, -2147483647i, vec2<i32>(-25218i, global2.x)), Struct_1(global3[_wgslsmith_index_u32(var_1.a, 21u)], u_input.a, arg_1.xy), Struct_1(vec4<f32>(arg_0, 1380f, arg_0, 924f), u_input.a, vec2<i32>(global2.x, global2.x))))))), !var_2.x & var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)))), -arg_3.x);
    return Struct_1(arg_2, ~(u_input.a | -13695i), vec2<i32>(arg_1.x, select(var_1.b, countOneBits(arg_3.x), any(vec3<bool>(var_2.x, var_2.x, true)))) ^ ~arg_3.xx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(-206f, countOneBits(vec3<i32>(7947i, u_input.a, ~(-global2.x))), _wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(1u, 21u)] - global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~func_1(), ~1u), 21u)]), -firstLeadingBit(vec3<i32>(_wgslsmith_mod_i32(global2.x, u_input.a), countOneBits(global2.x), _wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, u_input.a, global2.x), vec3<i32>(u_input.a, global2.x, 11531i)))));
    var var_1 = ~4294967295u;
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(var_0.a - vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_3(var_0.a.yzy, 318f), Struct_2(Struct_1(vec4<f32>(-1287f, -878f, var_0.a.x, 464f), var_0.b, var_0.c), Struct_1(var_0.a, -32620i, vec2<i32>(global2.x, 1i)), Struct_1(var_0.a, u_input.a, vec2<i32>(var_0.b, global2.x))))), var_0.a.x, var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -410f))))));
    var var_4 = select(!(!(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true)))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), true), all(vec4<bool>(true, true, true, true)));
    let var_5 = 10955u;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec2<u32>(abs(var_5), var_5)), vec3<f32>(-1470f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1646f, _wgslsmith_f_op_f32(trunc(var_0.a.x))))), -479f));
}

