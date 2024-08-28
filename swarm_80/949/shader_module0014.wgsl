struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 2> = array<vec3<bool>, 2>(vec3<bool>(true, true, true), vec3<bool>(false, true, true));

var<private> global1: array<bool, 1>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> bool {
    var var_0 = Struct_3(Struct_2(_wgslsmith_add_i32(min(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(9582i, 0i, 1i), vec3<i32>(10025i, -2147483647i, -1i))), -10845i), min(4294967295u, ~u_input.a), firstTrailingBit(vec4<i32>(_wgslsmith_add_i32(31878i, 2818i), -1114i, i32(-1i) * -5937i, firstTrailingBit(-25528i))), select(vec2<bool>(all(global0[_wgslsmith_index_u32(43505u, 2u)]), global1[_wgslsmith_index_u32(4294967295u | u_input.a, 1u)]), vec2<bool>(true, true), select(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 1u)], global1[_wgslsmith_index_u32(1u, 1u)]), vec2<bool>(true, true), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 1u)])), select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 1u)], global1[_wgslsmith_index_u32(36274u, 1u)]), vec2<bool>(global1[_wgslsmith_index_u32(10150u, 1u)], global1[_wgslsmith_index_u32(u_input.a, 1u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 1u)], global1[_wgslsmith_index_u32(u_input.a, 1u)])), vec2<bool>(global1[_wgslsmith_index_u32(21671u, 1u)], false))), ~(firstLeadingBit(vec4<i32>(-30123i, 0i, 18i, -6595i)) >> (vec4<u32>(u_input.a, u_input.a, u_input.a, 30170u) % vec4<u32>(32u)))), Struct_1(vec4<i32>(-1i, countOneBits(12357i), -25107i, -2889i) << ((~vec4<u32>(1u, u_input.a, 2593u, 1u) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a, 112u, u_input.a), vec4<u32>(43098u, u_input.a, u_input.a, 0u)) % vec4<u32>(32u))) % vec4<u32>(32u)), vec2<f32>(-720f, _wgslsmith_f_op_f32(f32(-1f) * -326f)), abs(firstTrailingBit(vec2<u32>(133528u, 10136u))), ~(~(vec2<u32>(u_input.a, u_input.a) | vec2<u32>(u_input.a, 23530u))), vec4<u32>(u_input.a, reverseBits(firstLeadingBit(0u)), 42541u, 0u)), Struct_1(vec4<i32>(_wgslsmith_div_i32(-65021i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -16340i), vec2<i32>(-20523i, 2147483647i))), 1i, 1i, 0i), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1069f, -1036f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1761f, -112f)), _wgslsmith_div_vec2_f32(vec2<f32>(-145f, 248f), vec2<f32>(967f, 206f))), true)), vec2<u32>(1u, 1u), ~(~vec2<u32>(u_input.a, u_input.a) | _wgslsmith_mult_vec2_u32(vec2<u32>(64057u, 17704u), vec2<u32>(46386u, 64714u))), vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 37522u), firstTrailingBit(vec2<u32>(19761u, 55039u))), _wgslsmith_mod_u32(firstLeadingBit(u_input.a), ~0u), u_input.a, ~4294967295u)), select(vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), ~vec4<u32>(u_input.a, 69751u, u_input.a, 65582u)), 1u)], global1[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 1u)], all(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 1u)], true, false))), vec3<bool>(!global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, 6046u), 1u)], !(global1[_wgslsmith_index_u32(70826u, 1u)] & global1[_wgslsmith_index_u32(u_input.a, 1u)]), true), !select(global0[_wgslsmith_index_u32(u_input.a, 2u)], !global0[_wgslsmith_index_u32(44762u, 2u)], global1[_wgslsmith_index_u32(1u, 1u)])));
    let var_1 = var_0.d.x || true;
    var var_2 = ~(~_wgslsmith_add_u32(~62791u, u_input.a));
    var_2 = 0u;
    var var_3 = vec2<bool>(false, !(!(!global1[_wgslsmith_index_u32(select(var_0.b.e.x, 13594u, true), 1u)])));
    return !all(var_0.d.yz);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<i32>, arg_3: vec2<u32>) -> bool {
    let var_0 = Struct_2(~arg_2.x, arg_0.c.x, arg_0.a, vec2<bool>(all(vec2<bool>(59992u > arg_3.x, func_3())), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, u_input.a), 1u)]), ~vec4<i32>(1i, _wgslsmith_add_i32(-9874i, arg_0.a.x), 15830i, -21384i) | arg_2);
    var var_1 = 1i;
    var_1 = 39718i & var_0.a;
    var var_2 = Struct_2((arg_2.x & 57391i) | -35846i, reverseBits(1u & abs(~arg_3.x)), abs(vec4<i32>(min(-41958i, _wgslsmith_dot_vec4_i32(var_0.c, vec4<i32>(14427i, 1i, 9843i, var_0.e.x))), arg_0.a.x, arg_2.x, i32(-1i) * -65378i)), vec2<bool>(!var_0.d.x, true), ~firstTrailingBit(countOneBits(arg_2)) >> (abs(arg_0.e) % vec4<u32>(32u)));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, arg_0.b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-110f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(sign(-1281f)), -1000f, _wgslsmith_f_op_f32(-arg_0.b.x)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -769f), _wgslsmith_f_op_f32(select(arg_0.b.x, 1151f, global1[_wgslsmith_index_u32(u_input.a, 1u)])), _wgslsmith_f_op_f32(-arg_0.b.x)), vec3<bool>(false == global1[_wgslsmith_index_u32(1u, 1u)], true, all(arg_1.zy))))));
    return true;
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec4<i32>) -> Struct_2 {
    global0 = array<vec3<bool>, 2>();
    global0 = array<vec3<bool>, 2>();
    return Struct_2(-2147483647i, max(min(_wgslsmith_mult_u32(34660u, u_input.a), u_input.a), u_input.a) & (min(16858u, _wgslsmith_mult_u32(u_input.a, u_input.a)) & u_input.a), abs(vec4<i32>(reverseBits(~1i), _wgslsmith_dot_vec2_i32(select(vec2<i32>(arg_2.x, 1i), vec2<i32>(arg_1, -10064i), false), vec2<i32>(0i, 1i)), _wgslsmith_mult_i32(-arg_2.x, 3085i), i32(-1i) * -961i)), select(select(vec2<bool>(true, arg_0), vec2<bool>(func_2(Struct_1(arg_2, vec2<f32>(887f, 1579f), vec2<u32>(u_input.a, 4294967295u), vec2<u32>(65815u, 20864u), vec4<u32>(u_input.a, u_input.a, u_input.a, 19293u)), vec4<bool>(false, false, arg_0, false), vec4<i32>(-1i, arg_2.x, 8663i, arg_1), vec2<u32>(97443u, 0u)), true), any(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 1u)], true))), vec2<bool>(all(select(global0[_wgslsmith_index_u32(17945u, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)], true)), true), vec2<bool>(false, arg_0 != (arg_1 == arg_1))), _wgslsmith_div_vec4_i32(vec4<i32>(arg_1, arg_1, _wgslsmith_mod_i32(arg_2.x, arg_2.x), 10537i), (arg_2 << (_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, 21825u), vec4<u32>(71608u, u_input.a, 1u, u_input.a)) % vec4<u32>(32u))) & vec4<i32>(abs(arg_2.x), _wgslsmith_mult_i32(arg_2.x, arg_2.x), _wgslsmith_mod_i32(-1i, arg_2.x), min(arg_2.x, 1i))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.b.x, 409f, arg_1.b.b.x, arg_1.c.b.x) + vec4<f32>(142f, -899f, arg_1.c.b.x, 1155f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.b.x, 258f, arg_1.c.b.x, arg_1.c.b.x) - vec4<f32>(-516f, 1177f, 414f, arg_1.b.b.x)))))));
    global0 = array<vec3<bool>, 2>();
    var var_1 = !select(!select(!vec4<bool>(false, true, arg_0.d.x, arg_0.d.x), vec4<bool>(true, false, global1[_wgslsmith_index_u32(10530u, 1u)], false), true), !(!select(vec4<bool>(arg_0.d.x, global1[_wgslsmith_index_u32(0u, 1u)], true, arg_1.a.d.x), vec4<bool>(true, true, global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(62089u, 1u)]), global1[_wgslsmith_index_u32(4294967295u, 1u)])), false);
    global0 = array<vec3<bool>, 2>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))))), arg_1.c.b.x)));
    return Struct_1(arg_1.b.a, arg_1.c.b, ~(~vec2<u32>(abs(arg_1.a.b), firstTrailingBit(arg_0.b))), arg_1.c.d, ~(~vec4<u32>(21487u, max(arg_1.a.b, 1u), _wgslsmith_clamp_u32(u_input.a, u_input.a, 4294967295u), func_1(false, -2147483647i, vec4<i32>(arg_1.c.a.x, arg_1.a.e.x, arg_1.a.e.x, arg_0.c.x)).b)));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec4<f32>) -> Struct_2 {
    global1 = array<bool, 1>();
    let var_0 = vec4<u32>(~31222u, u_input.a, arg_0.c.x, u_input.a);
    let var_1 = _wgslsmith_f_op_f32(-1f);
    global0 = array<vec3<bool>, 2>();
    global0 = array<vec3<bool>, 2>();
    return Struct_2(arg_0.a.x ^ ~(~13392i), arg_1, _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.a.x, arg_0.a.x, -countOneBits(arg_0.a.x), 3388i), ~arg_0.a), select(select(select(vec2<bool>(global1[_wgslsmith_index_u32(var_0.x, 1u)], global1[_wgslsmith_index_u32(var_0.x, 1u)]), !vec2<bool>(false, global1[_wgslsmith_index_u32(var_0.x, 1u)]), vec2<bool>(false, false)), !(!vec2<bool>(false, global1[_wgslsmith_index_u32(23796u, 1u)])), !(!vec2<bool>(global1[_wgslsmith_index_u32(1078u, 1u)], global1[_wgslsmith_index_u32(36415u, 1u)]))), select(select(vec2<bool>(true, true), vec2<bool>(true, global1[_wgslsmith_index_u32(arg_1, 1u)]), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 1u)], true)), !select(vec2<bool>(true, global1[_wgslsmith_index_u32(arg_1, 1u)]), vec2<bool>(true, false), vec2<bool>(global1[_wgslsmith_index_u32(arg_1, 1u)], false)), !(!global1[_wgslsmith_index_u32(arg_0.d.x, 1u)])), select(vec2<bool>(true, global1[_wgslsmith_index_u32(firstLeadingBit(arg_0.e.x), 1u)]), !select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 1u)], false), vec2<bool>(true, true), vec2<bool>(global1[_wgslsmith_index_u32(arg_0.e.x, 1u)], global1[_wgslsmith_index_u32(var_0.x, 1u)])), select(!vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 1u)], false), vec2<bool>(true, false), !vec2<bool>(global1[_wgslsmith_index_u32(arg_1, 1u)], global1[_wgslsmith_index_u32(arg_1, 1u)])))), arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(func_1(true, _wgslsmith_clamp_i32(max(1i, -5478i), 1i, ~(-16385i)), vec4<i32>(1i, 1i, 1i, 1i)), Struct_3(func_1(global1[_wgslsmith_index_u32(23541u, 1u)] == true, 1i, vec4<i32>(2147483647i, -2147483647i, -18420i, -2197i)), Struct_1(vec4<i32>(2147483647i, -1i, -92823i, -22661i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1526f, -936f)), vec2<u32>(4294967295u, 4294967295u), ~vec2<u32>(u_input.a, 27294u), vec4<u32>(u_input.a, 0u, u_input.a, u_input.a) ^ vec4<u32>(u_input.a, 6343u, u_input.a, u_input.a)), Struct_1(select(vec4<i32>(-49188i, -2147483647i, 0i, 0i), vec4<i32>(-39316i, 5789i, -43198i, 2147483647i), global1[_wgslsmith_index_u32(58475u, 1u)]), _wgslsmith_div_vec2_f32(vec2<f32>(-266f, 141f), vec2<f32>(-1503f, 1000f)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, 4294967295u)), ~vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a)), select(select(global0[_wgslsmith_index_u32(u_input.a, 2u)], vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 1u)], global1[_wgslsmith_index_u32(u_input.a, 1u)], false), true), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, 1u)), 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)]))), u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-464f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -911f))), _wgslsmith_f_op_f32(-651f + _wgslsmith_f_op_f32(min(-114f, -763f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1284f, -1000f)))))));
    global1 = array<bool, 1>();
    global0 = array<vec3<bool>, 2>();
    let var_1 = Struct_3(Struct_2(i32(-1i) * -2147483647i, var_0.b << (var_0.b % 32u), vec4<i32>(3074i, -2147483647i, -_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, var_0.e.x, 1i, var_0.c.x), var_0.e), select(0i, _wgslsmith_div_i32(-21360i, var_0.c.x), true)), var_0.d, _wgslsmith_mult_vec4_i32(firstTrailingBit(countOneBits(var_0.e)), var_0.c)), func_4(Struct_2(-2147483647i, 1u, -func_5(Struct_1(vec4<i32>(-1794i, var_0.a, -2147483647i, -45909i), vec2<f32>(751f, 226f), vec2<u32>(45790u, u_input.a), vec2<u32>(4294967295u, 22676u), vec4<u32>(0u, 4294967295u, 4294967295u, var_0.b)), 4294967295u, vec4<f32>(476f, -870f, -1000f, -184f)).e, !select(var_0.d, vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 1u)], var_0.d.x), true), var_0.e), Struct_3(Struct_2(var_0.e.x, func_4(Struct_2(0i, var_0.b, var_0.c, vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 1u)], false), vec4<i32>(11156i, var_0.c.x, var_0.a, var_0.a)), Struct_3(Struct_2(var_0.c.x, u_input.a, vec4<i32>(-1i, -22559i, var_0.e.x, var_0.c.x), var_0.d, vec4<i32>(var_0.a, -17829i, -1i, -1i)), Struct_1(vec4<i32>(var_0.c.x, 0i, var_0.e.x, 0i), vec2<f32>(1301f, -163f), vec2<u32>(u_input.a, 7639u), vec2<u32>(11396u, var_0.b), vec4<u32>(u_input.a, var_0.b, var_0.b, 0u)), Struct_1(vec4<i32>(var_0.c.x, 0i, -1i, 0i), vec2<f32>(610f, 767f), vec2<u32>(21493u, var_0.b), vec2<u32>(var_0.b, var_0.b), vec4<u32>(1u, 1u, 26702u, var_0.b)), global0[_wgslsmith_index_u32(1u, 2u)])).c.x, func_5(Struct_1(vec4<i32>(0i, 5625i, 19339i, 10862i), vec2<f32>(-1747f, -1047f), vec2<u32>(4294967295u, u_input.a), vec2<u32>(40029u, u_input.a), vec4<u32>(0u, u_input.a, u_input.a, 50628u)), 25542u, vec4<f32>(-1179f, 147f, 1000f, -1000f)).e, select(var_0.d, var_0.d, var_0.d), var_0.e ^ vec4<i32>(-16324i, var_0.e.x, -1i, var_0.e.x)), func_4(Struct_2(var_0.a, 1u, vec4<i32>(23301i, 0i, -14960i, -1i), vec2<bool>(false, false), var_0.c), Struct_3(Struct_2(var_0.e.x, var_0.b, var_0.c, var_0.d, vec4<i32>(var_0.e.x, var_0.a, -4280i, 2147483647i)), Struct_1(vec4<i32>(2147483647i, var_0.a, -2147483647i, var_0.e.x), vec2<f32>(649f, -743f), vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 12272u), vec4<u32>(32319u, 0u, u_input.a, 14046u)), Struct_1(vec4<i32>(var_0.e.x, var_0.e.x, var_0.e.x, var_0.a), vec2<f32>(813f, 1332f), vec2<u32>(1u, 67847u), vec2<u32>(1u, u_input.a), vec4<u32>(var_0.b, 62081u, var_0.b, var_0.b)), global0[_wgslsmith_index_u32(4294967295u, 2u)])), Struct_1(-var_0.c, vec2<f32>(1280f, 183f), vec2<u32>(102303u, 1u), abs(vec2<u32>(var_0.b, var_0.b)), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.b, u_input.a, 15556u, 0u), vec4<u32>(var_0.b, u_input.a, 0u, u_input.a))), select(vec3<bool>(global1[_wgslsmith_index_u32(var_0.b, 1u)], var_0.d.x, var_0.d.x), global0[_wgslsmith_index_u32(var_0.b, 2u)], true))), Struct_1(-var_0.e, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-413f, -1044f), vec2<f32>(-671f, -1211f))))), ~abs(_wgslsmith_add_vec2_u32(vec2<u32>(63852u, u_input.a), vec2<u32>(var_0.b, 9414u))), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a, var_0.b), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 34956u), vec2<u32>(4294967295u, 21134u)), ~vec2<u32>(var_0.b, 14424u)), vec2<u32>(_wgslsmith_div_u32(u_input.a, 1u), u_input.a)), select(~abs(vec4<u32>(32950u, 0u, u_input.a, var_0.b)), ~max(vec4<u32>(25189u, var_0.b, 1u, 25172u), vec4<u32>(var_0.b, u_input.a, 1u, u_input.a)), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 1u)], false, global1[_wgslsmith_index_u32(var_0.b, 1u)], global1[_wgslsmith_index_u32(42522u, 1u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 1u)], false, global1[_wgslsmith_index_u32(u_input.a, 1u)], true), vec4<bool>(global1[_wgslsmith_index_u32(var_0.b, 1u)], var_0.d.x, false, false), false), select(vec4<bool>(true, false, false, true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 1u)], global1[_wgslsmith_index_u32(var_0.b, 1u)], false, false), false)))), vec3<bool>(func_3(), var_0.d.x, !(!(true != global1[_wgslsmith_index_u32(0u, 1u)]))));
    var var_2 = func_5(var_1.b, 35832u, vec4<f32>(-872f, var_1.b.b.x, _wgslsmith_f_op_f32(-var_1.b.b.x), -407f));
    let var_3 = func_5(func_4(func_1(!select(false, var_1.d.x, true), -22888i, var_2.c ^ min(vec4<i32>(var_2.a, var_1.c.a.x, var_0.c.x, -1i), vec4<i32>(var_1.a.a, var_1.c.a.x, 763i, var_2.e.x))), Struct_3(var_1.a, var_1.c, func_4(var_1.a, Struct_3(Struct_2(var_1.c.a.x, var_2.b, vec4<i32>(66938i, -2147483647i, -28082i, 53101i), var_1.a.d, vec4<i32>(var_2.a, var_1.b.a.x, var_1.a.c.x, var_0.c.x)), Struct_1(vec4<i32>(var_2.e.x, 2990i, -37419i, var_2.e.x), vec2<f32>(var_1.b.b.x, var_1.b.b.x), vec2<u32>(var_0.b, 91344u), vec2<u32>(0u, var_0.b), vec4<u32>(39005u, u_input.a, var_2.b, u_input.a)), Struct_1(var_1.b.a, vec2<f32>(var_1.c.b.x, -244f), vec2<u32>(u_input.a, 0u), vec2<u32>(var_0.b, 0u), var_1.c.e), vec3<bool>(false, true, false))), global0[_wgslsmith_index_u32(~4294967295u, 2u)])), max(54766u, ~u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2035f, var_1.c.b.x, 236f, -1804f))))))));
    let var_4 = Struct_1(reverseBits(-(var_1.c.a ^ var_1.a.e)), var_1.b.b, vec2<u32>(_wgslsmith_dot_vec2_u32(func_4(Struct_2(var_2.c.x, 1u, vec4<i32>(var_3.c.x, -1i, 1i, var_3.c.x), var_1.a.d, var_2.e), Struct_3(var_1.a, var_1.c, var_1.b, vec3<bool>(var_3.d.x, true, global1[_wgslsmith_index_u32(26044u, 1u)]))).d, select(vec2<u32>(var_0.b, 57661u), vec2<u32>(var_1.a.b, var_3.b), !var_0.d.x)), ~var_1.b.c.x), func_4(Struct_2(~(-1i), ~(~var_3.b), var_0.e, func_5(Struct_1(vec4<i32>(-2147483647i, 9315i, var_1.a.e.x, 36724i), vec2<f32>(142f, 607f), var_1.b.e.xy, vec2<u32>(var_3.b, 0u), var_1.b.e), select(1u, 4294967295u, var_2.d.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.c.b.x, 1000f, var_1.b.b.x, -1080f), vec4<f32>(-836f, -663f, var_1.b.b.x, -1387f), var_2.d.x))).d, var_0.c), var_1).c, vec4<u32>(~59706u, func_4(var_1.a, var_1).e.x, 49596u, 56649u));
    var var_5 = _wgslsmith_div_f32(var_4.b.x, var_4.b.x);
    let var_6 = select(vec3<bool>(all(global0[_wgslsmith_index_u32(~42181u, 2u)]) & any(var_1.d), any(global0[_wgslsmith_index_u32(reverseBits(var_1.a.b), 2u)]) || true, var_0.d.x), global0[_wgslsmith_index_u32(var_3.b, 2u)], all(!var_0.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(0u, ~var_4.e.x), i32(-1i) * -1i, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.c.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_4.b.x - 2240f), _wgslsmith_div_f32(504f, var_1.c.b.x))) - vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(var_1.c.b.x, var_1.b.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(207f))))), ~firstTrailingBit(vec2<u32>(1u, var_4.e.x)) ^ abs(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 34092u), var_4.c) | var_4.c), _wgslsmith_clamp_i32(var_2.e.x, -var_3.e.x, i32(-1i) * -21287i));
}

