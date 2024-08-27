struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: Struct_1,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: i32,
    d: vec4<f32>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: bool,
    c: vec4<f32>,
    d: vec4<f32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
    c: vec3<u32>,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<i32> = vec3<i32>(-5207i, -21197i, -8638i);

var<private> global2: array<bool, 15> = array<bool, 15>(false, false, false, true, true, true, true, false, true, false, false, false, false, false, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> f32 {
    var var_0 = !arg_1.d.x;
    let var_1 = Struct_3(Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_1.a + arg_1.a), 703f, _wgslsmith_f_op_f32(175f - -1395f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.a, -2681f, arg_1.a))), _wgslsmith_f_op_vec3_f32(vec3<f32>(810f, 502f, 272f) - vec3<f32>(arg_1.a, -768f, -566f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) * _wgslsmith_f_op_f32(arg_1.a + -980f)))), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(224f, arg_1.a)), 534f)), ~vec3<u32>(57870u, arg_1.b.x, u_input.c) >> (vec3<u32>(4294967295u, 118u, 4294967295u) % vec3<u32>(32u)), select(vec3<u32>(49144u, u_input.b.x, 1u), vec3<u32>(arg_1.b.x, u_input.b.x, 4294967295u), true) | vec3<u32>(0u, 18932u, 57439u), arg_1.d), _wgslsmith_f_op_f32(-1848f - _wgslsmith_div_f32(448f, _wgslsmith_f_op_f32(trunc(arg_1.a)))), 62810u), vec4<bool>(false, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.a + 425f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) >= arg_1.a, true, arg_1.d.x), ~35210i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1077f, arg_1.a, arg_1.a, arg_1.a))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a), -1000f, -323f, _wgslsmith_f_op_f32(arg_1.a - 1000f)))), vec3<bool>(true, any(vec2<bool>(true, global2[_wgslsmith_index_u32(abs(u_input.c), 15u)])), 1i >= firstTrailingBit(abs(arg_0))));
    let var_2 = u_input.a;
    let var_3 = var_1.d.x;
    var var_4 = Struct_4(_wgslsmith_f_op_vec4_f32(-var_1.d), global2[_wgslsmith_index_u32(13399u, 15u)], vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) * arg_1.a) * _wgslsmith_f_op_f32(var_3 * var_3)), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3))), -1952f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.d)));
    return -861f;
}

fn func_2() -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-891f * -1000f)), -541f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -519f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(-2147483647i, Struct_1(720f, u_input.b, vec3<u32>(u_input.c, 1u, u_input.c), vec2<bool>(true, global2[_wgslsmith_index_u32(84868u, 15u)])))), -641f, global2[_wgslsmith_index_u32(72335u, 15u)])) - _wgslsmith_f_op_f32(488f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -656f))))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1529f, 1770f, 1633f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-858f, 333f, -1752f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1781f, 434f) + vec3<f32>(-238f, -1854f, 728f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-803f, -1798f, -511f)))) + vec3<f32>(_wgslsmith_div_f32(203f, -808f), _wgslsmith_f_op_f32(714f - -972f), _wgslsmith_f_op_f32(step(878f, 937f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(539f)) + -769f))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(811f, -1000f, global2[_wgslsmith_index_u32(u_input.b.x, 15u)]))))), ((vec3<u32>(u_input.c, 1u, u_input.c) << (vec3<u32>(1u, 0u, 16637u) % vec3<u32>(32u))) | countOneBits(vec3<u32>(4294967295u, u_input.b.x, 10872u))) >> (~vec3<u32>(u_input.b.x, 98514u, u_input.b.x) % vec3<u32>(32u)), u_input.b, select(!(!vec2<bool>(global2[_wgslsmith_index_u32(24629u, 15u)], true)), vec2<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 15u)], any(vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 15u)], global2[_wgslsmith_index_u32(1u, 15u)]))), -18166i >= _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a, global1.x, -1i), vec4<i32>(u_input.a, u_input.a, 0i, -8932i)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -503f))))), ~u_input.c);
    let var_2 = Struct_5(45025i, Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, var_1.c.a, 665f) * vec3<f32>(-360f, -1000f, -476f)) * vec3<f32>(-868f, 117f, var_1.b)), _wgslsmith_f_op_f32(exp2(1f)), var_1.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f - var_1.c.a), _wgslsmith_f_op_f32(step(-1501f, -1367f)))), ~1u), vec4<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.c, 4294967295u, 1u, var_1.e)), firstTrailingBit(vec4<u32>(16708u, 71386u, 75885u, u_input.b.x))), 15u)], !(!var_1.c.d.x), var_1.c.d.x, true), ~((u_input.a << (u_input.c % 32u)) & countOneBits(global1.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, var_1.d, -596f, var_1.d)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.a, var_1.c.a, var_1.c.a, var_1.c.a) * vec4<f32>(var_1.b, -414f, 883f, -272f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(420f, 810f, 798f, var_1.c.a)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.a.x, 399f, var_1.c.a, 942f))), true)), !select(vec4<bool>(true, false, global2[_wgslsmith_index_u32(46134u, 15u)], var_1.c.d.x), vec4<bool>(false, false, false, global2[_wgslsmith_index_u32(u_input.c, 15u)]), vec4<bool>(var_1.c.d.x, var_1.c.d.x, global2[_wgslsmith_index_u32(1u, 15u)], false)))), !select(vec3<bool>(var_1.c.d.x, global2[_wgslsmith_index_u32(10288u, 15u)], global2[_wgslsmith_index_u32(u_input.b.x, 15u)]), select(vec3<bool>(true, true, true), vec3<bool>(var_1.c.d.x, true, var_1.c.d.x), global2[_wgslsmith_index_u32(u_input.b.x, 15u)]), select(vec3<bool>(false, var_1.c.d.x, false), vec3<bool>(true, false, var_1.c.d.x), true))), var_1.c.b, var_1.c, var_1.c.b);
    global2 = array<bool, 15>();
    var var_3 = (vec4<u32>(var_2.c.x << (~4294967295u % 32u), var_2.d.b.x, countOneBits(~var_2.e.x), u_input.c) & (~(~vec4<u32>(4294967295u, 27758u, var_1.e, 0u)) >> (((vec4<u32>(29019u, var_1.e, 62637u, 81779u) ^ vec4<u32>(var_1.e, u_input.c, var_2.d.c.x, 0u)) | select(vec4<u32>(u_input.c, 61809u, u_input.c, 7269u), vec4<u32>(var_1.e, 1u, var_2.e.x, var_2.e.x), vec4<bool>(var_1.c.d.x, var_2.b.e.x, global2[_wgslsmith_index_u32(var_2.b.a.e, 15u)], global2[_wgslsmith_index_u32(21760u, 15u)]))) % vec4<u32>(32u)))) & min(~(~countOneBits(vec4<u32>(44649u, 68322u, var_1.e, var_2.b.a.e))), ~(max(vec4<u32>(11630u, 0u, var_2.e.x, var_1.e), vec4<u32>(var_1.c.c.x, 23795u, u_input.c, var_1.c.b.x)) >> (~vec4<u32>(u_input.c, 1u, var_1.c.c.x, var_1.c.c.x) % vec4<u32>(32u))));
    return var_2.b.d;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<f32>) -> vec2<f32> {
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 936f, arg_0.x, arg_0.x)) * vec4<f32>(1312f, -2972f, arg_1.x, -1091f)))), all(select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.c, 15u)], true, true), global2[_wgslsmith_index_u32(33084u, 15u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(1u, 15u)], global2[_wgslsmith_index_u32(60571u, 15u)], false, global2[_wgslsmith_index_u32(62416u, 15u)]), vec4<bool>(global2[_wgslsmith_index_u32(46533u, 15u)], global2[_wgslsmith_index_u32(4294967295u, 15u)], global2[_wgslsmith_index_u32(60109u, 15u)], global2[_wgslsmith_index_u32(u_input.c, 15u)]), global2[_wgslsmith_index_u32(u_input.b.x, 15u)]), vec4<bool>(global2[_wgslsmith_index_u32(0u, 15u)], global2[_wgslsmith_index_u32(1u, 15u)], global2[_wgslsmith_index_u32(1u, 15u)], global2[_wgslsmith_index_u32(u_input.c, 15u)])), vec4<bool>(arg_0.x == 1133f, true, true, all(vec3<bool>(true, false, true))), !vec4<bool>(global2[_wgslsmith_index_u32(49533u, 15u)], false, global2[_wgslsmith_index_u32(u_input.b.x, 15u)], global2[_wgslsmith_index_u32(u_input.b.x, 15u)]))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 675f, _wgslsmith_f_op_f32(-arg_1.x), -1198f) * _wgslsmith_f_op_vec4_f32(func_2())), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(557f, -588f, -1358f, arg_0.x), vec4<f32>(arg_0.x, -664f, arg_1.x, 1620f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-3022f, arg_0.x, -2258f, arg_1.x)) + vec4<f32>(_wgslsmith_f_op_f32(-1322f - -363f), _wgslsmith_div_f32(arg_1.x, 541f), 1199f, _wgslsmith_div_f32(285f, arg_0.x)))));
    let var_1 = Struct_5(-u_input.a, Struct_3(Struct_2(vec3<f32>(1905f, -354f, arg_0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-736f - var_0.d.x))), Struct_1(_wgslsmith_f_op_f32(abs(-118f)), ~u_input.b, vec3<u32>(u_input.b.x, 21986u, 1u) >> (vec3<u32>(6507u, u_input.c, u_input.c) % vec3<u32>(32u)), select(vec2<bool>(true, global2[_wgslsmith_index_u32(55289u, 15u)]), vec2<bool>(var_0.b, global2[_wgslsmith_index_u32(21073u, 15u)]), vec2<bool>(var_0.b, false))), 874f, u_input.b.x), select(!select(vec4<bool>(global2[_wgslsmith_index_u32(32455u, 15u)], var_0.b, global2[_wgslsmith_index_u32(0u, 15u)], var_0.b), vec4<bool>(var_0.b, true, true, true), false), !select(vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 15u)], true, true), vec4<bool>(global2[_wgslsmith_index_u32(1u, 15u)], var_0.b, global2[_wgslsmith_index_u32(62985u, 15u)], var_0.b), global2[_wgslsmith_index_u32(u_input.b.x, 15u)]), false & any(vec3<bool>(true, var_0.b, true))), -4173i, var_0.a, vec3<bool>(!any(vec2<bool>(var_0.b, true)), global2[_wgslsmith_index_u32(~min(0u, 14253u), 15u)], false)), ~u_input.b, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.x)) - _wgslsmith_f_op_f32(sign(arg_1.x))), vec3<u32>(_wgslsmith_clamp_u32(94015u, abs(u_input.c), _wgslsmith_mod_u32(u_input.b.x, 4294967295u)), _wgslsmith_dot_vec2_u32(u_input.b.yz, u_input.b.zx), u_input.c << (u_input.b.x % 32u)), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(16067u, 30121u), 1u), firstTrailingBit(54167u), u_input.c), select(select(vec2<bool>(var_0.b, global2[_wgslsmith_index_u32(u_input.b.x, 15u)]), vec2<bool>(true, true), global2[_wgslsmith_index_u32(33949u, 15u)]), select(select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 15u)], false), var_0.b), select(vec2<bool>(var_0.b, false), vec2<bool>(global2[_wgslsmith_index_u32(u_input.c, 15u)], false), var_0.b), select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, true), vec2<bool>(true, var_0.b))), select(vec2<bool>(true, true), select(vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 15u)]), vec2<bool>(false, false), vec2<bool>(var_0.b, var_0.b)), select(false, var_0.b, true)))), _wgslsmith_mod_vec3_u32(u_input.b, _wgslsmith_div_vec3_u32(~(~u_input.b), vec3<u32>(4294967295u, ~u_input.b.x, ~1u))));
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(arg_0.yx, _wgslsmith_f_op_vec2_f32(arg_0.zz + var_1.b.d.xy))) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1768f, arg_1.x)))), vec2<f32>(1f, 1f), select(vec2<bool>(true, true), var_1.d.d, var_1.b.e.xx))), arg_1.xz));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> StorageBuffer {
    global0 = arg_3.c.a;
    let var_0 = Struct_3(arg_3, vec4<bool>(!(arg_3.c.c.x < 30584u) && true, !(!all(arg_3.c.d)), false, false), ~_wgslsmith_div_i32(1i, _wgslsmith_sub_i32(-arg_2, -36365i)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(667f, _wgslsmith_f_op_f32(f32(-1f) * -374f), _wgslsmith_f_op_f32(-arg_1.c.a), arg_1.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1970f, arg_0.x, 1240f, arg_3.b) + vec4<f32>(arg_3.c.a, -1000f, arg_0.x, -639f)) - vec4<f32>(-307f, 1536f, arg_1.c.a, 1000f)) * vec4<f32>(-1000f, arg_3.c.a, -1171f, _wgslsmith_f_op_f32(func_3(arg_2, arg_1.c))))), select(!select(vec3<bool>(arg_3.c.d.x, false, global2[_wgslsmith_index_u32(arg_3.e, 15u)]), !vec3<bool>(arg_1.c.d.x, false, arg_3.c.d.x), true), !vec3<bool>(false, false, arg_3.c.d.x), vec3<bool>(global2[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(4294967295u, u_input.b.x, arg_1.e)), 15u)], true, !arg_1.c.d.x)));
    global2 = array<bool, 15>();
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(var_0.d));
    let var_2 = !(!(arg_3.c.a < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.b - 747f) + _wgslsmith_f_op_f32(-var_0.d.x))));
    return StorageBuffer(282f, 1u, _wgslsmith_f_op_f32(617f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -423f)))), _wgslsmith_div_vec2_u32(arg_1.c.c.zx, var_0.a.c.c.xz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -361f;
    let var_1 = ~_wgslsmith_div_vec4_u32(~(~vec4<u32>(u_input.c, u_input.b.x, u_input.b.x, 16969u) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 47009u, 0u), vec4<u32>(36253u, 104133u, u_input.b.x, 0u), vec4<u32>(0u, 19754u, 0u, 4294967295u))), vec4<u32>(1u, 45039u, ~u_input.c, ~(1u >> (u_input.c % 32u))));
    global2 = array<bool, 15>();
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + -2681f))));
    let var_2 = Struct_4(vec4<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-507f, var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(101f * var_0) + _wgslsmith_f_op_f32(-281f + -463f)) + -1119f), var_0), all(select(select(vec3<bool>(false, false, global2[_wgslsmith_index_u32(var_1.x, 15u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 15u)], global2[_wgslsmith_index_u32(var_1.x, 15u)], global2[_wgslsmith_index_u32(u_input.c, 15u)]), true), !vec3<bool>(global2[_wgslsmith_index_u32(73329u, 15u)], false, global2[_wgslsmith_index_u32(var_1.x, 15u)]), false)) & true, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_div_f32(-1127f, var_0), _wgslsmith_div_f32(1265f, -1263f), -652f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0), var_0, var_0, 375f)));
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.d.xzw + var_2.c.wyw))), _wgslsmith_f_op_vec3_f32(var_2.c.zxz * _wgslsmith_f_op_vec3_f32(var_2.c.xxz + _wgslsmith_f_op_vec3_f32(-var_2.c.wzx))))), Struct_2(var_2.d.wyy, var_2.a.x, Struct_1(var_2.d.x, _wgslsmith_div_vec3_u32(~var_1.zwz, var_1.xxx & vec3<u32>(var_1.x, 41256u, var_1.x)), ~u_input.b, !select(vec2<bool>(false, true), vec2<bool>(true, global2[_wgslsmith_index_u32(var_1.x, 15u)]), vec2<bool>(global2[_wgslsmith_index_u32(42406u, 15u)], global2[_wgslsmith_index_u32(var_1.x, 15u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-737f * _wgslsmith_f_op_f32(var_2.a.x * 1327f)), _wgslsmith_f_op_f32(-var_0)), ~var_1.x), abs(global1.x) >> (select(93945u, 4294967295u, all(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 15u)], true, global2[_wgslsmith_index_u32(u_input.b.x, 15u)], global2[_wgslsmith_index_u32(u_input.c, 15u)]), vec4<bool>(var_2.b, var_2.b, var_2.b, false), false))) % 32u), Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1136f), var_0, 834f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1168f, var_0, -883f) * _wgslsmith_f_op_vec3_f32(exp2(var_2.c.zyy)))), _wgslsmith_f_op_f32(round(185f)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.c.x))), var_1.zyy, countOneBits(~vec3<u32>(u_input.b.x, var_1.x, 4294967295u)), !vec2<bool>(true, global2[_wgslsmith_index_u32(var_1.x, 15u)])), _wgslsmith_f_op_vec2_f32(func_1(var_2.d.yzw, var_2.d.ywy)).x, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.b.zy, vec2<u32>(4277u, u_input.b.x)), var_1.x)));
}

