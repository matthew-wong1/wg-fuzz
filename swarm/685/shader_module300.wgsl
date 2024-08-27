struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec4<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
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

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(1i, vec3<u32>(1u, 89950u, 45022u), vec4<bool>(true, true, false, false), false), Struct_1(24685i, vec3<u32>(1u, 11358u, 10853u), vec4<bool>(false, true, true, false), true), Struct_1(2147483647i, vec3<u32>(0u, 1u, 1u), vec4<bool>(true, false, false, true), true), Struct_1(i32(-2147483648), vec3<u32>(4294967295u, 14025u, 4294967295u), vec4<bool>(false, false, false, false), false), Struct_1(0i, vec3<u32>(63728u, 17894u, 25227u), vec4<bool>(false, true, false, true), false), Struct_1(1i, vec3<u32>(1u, 2679u, 43144u), vec4<bool>(true, true, true, true), true), Struct_1(i32(-2147483648), vec3<u32>(1u, 4294967295u, 1u), vec4<bool>(true, true, true, false), false), Struct_1(5466i, vec3<u32>(1u, 2354u, 53914u), vec4<bool>(false, true, false, false), true), Struct_1(1i, vec3<u32>(41291u, 108588u, 0u), vec4<bool>(true, true, false, false), false), Struct_1(-26367i, vec3<u32>(1u, 19241u, 17316u), vec4<bool>(true, true, false, true), false), Struct_1(i32(-2147483648), vec3<u32>(0u, 29271u, 34344u), vec4<bool>(true, true, true, false), true), Struct_1(0i, vec3<u32>(23098u, 12260u, 0u), vec4<bool>(true, false, true, true), true), Struct_1(12249i, vec3<u32>(4294967295u, 1u, 0u), vec4<bool>(true, true, true, false), false), Struct_1(2147483647i, vec3<u32>(0u, 89795u, 1u), vec4<bool>(false, true, true, false), false), Struct_1(i32(-2147483648), vec3<u32>(0u, 43436u, 1u), vec4<bool>(false, false, false, true), true), Struct_1(0i, vec3<u32>(71148u, 1u, 27606u), vec4<bool>(false, false, false, false), true), Struct_1(36522i, vec3<u32>(30375u, 6037u, 24988u), vec4<bool>(false, true, true, false), false), Struct_1(-19362i, vec3<u32>(25899u, 4294967295u, 27113u), vec4<bool>(false, false, true, true), false), Struct_1(2147483647i, vec3<u32>(1u, 4294967295u, 4294967295u), vec4<bool>(false, true, false, false), true), Struct_1(-14079i, vec3<u32>(1u, 53130u, 33346u), vec4<bool>(true, false, false, true), true), Struct_1(-4446i, vec3<u32>(11930u, 16515u, 4294967295u), vec4<bool>(true, false, false, true), false), Struct_1(i32(-2147483648), vec3<u32>(39152u, 1u, 0u), vec4<bool>(false, true, false, true), false), Struct_1(33922i, vec3<u32>(2607u, 4294967295u, 0u), vec4<bool>(false, false, false, true), false));

var<private> global1: array<f32, 31> = array<f32, 31>(-717f, 136f, 961f, -591f, 1221f, 1121f, -960f, 757f, 292f, -181f, 134f, 902f, -1373f, 1000f, -220f, 221f, -528f, -1345f, 1295f, 1902f, 1000f, -288f, 357f, -517f, -459f, -1000f, -498f, -1000f, -572f, 758f, -2383f);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec2<f32>, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = Struct_1(~(-(~_wgslsmith_div_i32(23537i, arg_3.a))), vec3<u32>(_wgslsmith_sub_u32(~arg_3.b.x >> (49298u % 32u), select(24627u | u_input.b.x, u_input.b.x, arg_2.x >= arg_2.x)), abs(1u), 1u), select(vec4<bool>(-1799f >= arg_2.x, true, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(46689u, 1u, 7294u, u_input.b.x), vec4<u32>(2207u, 0u, 1u, 24761u)), 31u)] <= _wgslsmith_f_op_f32(select(-380f, 1213f, false)), arg_0.d), vec4<bool>(false, !(!arg_3.d), false, !any(arg_3.c.zy)), any(arg_3.c.zyw)), any(!select(vec4<bool>(arg_1, arg_3.c.x, true, false), select(arg_3.c, arg_0.c, vec4<bool>(arg_1, false, false, arg_1)), vec4<bool>(arg_1, arg_0.d, arg_1, false))));
    global0 = array<Struct_1, 23>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.b.x, arg_3.b.x), 23u)];
    global0 = array<Struct_1, 23>();
    var var_2 = Struct_1(countOneBits(-2147483647i), ~vec3<u32>(var_0.b.x, u_input.b.x, 0u), vec4<bool>(true, true, false, false), !(!arg_1));
    return select(vec2<bool>(all(arg_0.c.xzy), any(var_0.c.wzy)), var_2.c.yx, all(arg_0.c));
}

fn func_2() -> vec4<u32> {
    var var_0 = ~(-(~(~(-vec3<i32>(u_input.e, -87086i, u_input.c.x)))));
    let var_1 = vec3<i32>(_wgslsmith_div_i32(select(_wgslsmith_clamp_i32(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, 0i), vec2<i32>(u_input.a.x, var_0.x)), -29616i), min(-u_input.e, i32(-1i) * -2147483647i), all(func_3(Struct_1(u_input.a.x, vec3<u32>(90341u, 62973u, 101380u), vec4<bool>(false, false, false, true), true), true, vec2<f32>(global1[_wgslsmith_index_u32(73697u, 31u)], global1[_wgslsmith_index_u32(23818u, 31u)]), Struct_1(var_0.x, vec3<u32>(1u, u_input.b.x, u_input.b.x), vec4<bool>(true, true, false, true), true)))), select(min(1i, var_0.x), -4461i, true) >> (60573u % 32u)), _wgslsmith_add_i32(2147483647i << (~(1u | u_input.b.x) % 32u), min(-1i, var_0.x)), u_input.a.x ^ ~countOneBits(u_input.a.x ^ -2147483647i));
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    var var_2 = -_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, ~u_input.a.x), vec2<i32>(var_0.x, u_input.a.x)), _wgslsmith_mult_i32(firstTrailingBit(firstTrailingBit(2147483647i)), 50626i));
    return _wgslsmith_add_vec4_u32(vec4<u32>(firstTrailingBit(~0u), u_input.b.x, min(firstLeadingBit(21402u), ~_wgslsmith_clamp_u32(10910u, u_input.b.x, 20874u)), u_input.b.x), ~(abs(firstTrailingBit(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))) >> (vec4<u32>(~u_input.b.x, _wgslsmith_mult_u32(7886u, u_input.b.x), ~u_input.b.x, u_input.b.x) % vec4<u32>(32u))));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(~1u, ~53160u, u_input.b.x, ~(~u_input.b.x)), func_2()), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, ~u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x ^ u_input.b.x, u_input.b.x, 102130u, abs(4294967295u))) | vec4<u32>(65827u & firstLeadingBit(u_input.b.x), u_input.b.x, ~u_input.b.x, max(_wgslsmith_dot_vec3_u32(vec3<u32>(3696u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 107534u, 1u)), u_input.b.x)), func_2());
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(4294967295u, 31u)])))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(53288u, var_0.x, 76931u, u_input.b.x), min(var_0, var_0)), 31u)]) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -752f), global1[_wgslsmith_index_u32(~(~u_input.b.x), 31u)]))));
    var_1 = vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(79942u, ~(~0u)), 31u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(843f)))))));
    return 4294967295u;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = arg_1.x;
    var var_1 = arg_0;
    var var_2 = Struct_1(_wgslsmith_mod_i32(-18581i, firstTrailingBit(firstLeadingBit(-6348i))), ~(~arg_2.b), select(vec4<bool>(func_3(arg_0, arg_2.d, vec2<f32>(global1[_wgslsmith_index_u32(42445u, 31u)], global1[_wgslsmith_index_u32(arg_1.x, 31u)]), arg_2).x, false, arg_2.d | arg_2.d, true), !(!arg_2.c), true && (arg_0.b.x == func_1())), any(var_1.c.zxx));
    var var_3 = 34474i;
    return StorageBuffer(min(~vec4<u32>(1u, arg_2.b.x, 63177u, arg_0.b.x) & (abs(arg_1) << ((vec4<u32>(arg_1.x, arg_2.b.x, var_2.b.x, 4294967295u) ^ arg_1) % vec4<u32>(32u))), arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 31>();
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    var var_0 = all(!(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), false))));
    global1 = array<f32, 31>();
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    let x = u_input.a;
    s_output = func_4(Struct_1(u_input.c.x, ~vec3<u32>(u_input.b.x >> (u_input.b.x % 32u), 66812u, 3306u), vec4<bool>(true, true, true, !all(vec2<bool>(false, true))), false), ~_wgslsmith_sub_vec4_u32(vec4<u32>(func_1(), 42100u, min(u_input.b.x, u_input.b.x), firstLeadingBit(4294967295u)), vec4<u32>(~u_input.b.x, u_input.b.x, 23940u, u_input.b.x)), Struct_1((i32(-1i) * -u_input.a.x) | -55244i, vec3<u32>(~(~u_input.b.x), 0u, 35127u), vec4<bool>(true, false, true, true), !all(vec4<bool>(false, false, false, false))));
}

