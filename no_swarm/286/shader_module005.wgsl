struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec2<i32>,
    d: vec3<bool>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(1i, -37706i, -33050i);

var<private> global1: array<i32, 4> = array<i32, 4>(-1i, -22027i, 27784i, i32(-2147483648));

var<private> global2: f32 = -878f;

var<private> global3: array<vec4<bool>, 22>;

var<private> global4: vec4<i32> = vec4<i32>(72405i, 23398i, 2147483647i, 20308i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> i32 {
    var var_0 = Struct_1(countOneBits(firstLeadingBit(vec4<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x)) | countOneBits(arg_0.a)), _wgslsmith_div_f32(-331f, _wgslsmith_f_op_f32(-arg_0.b)), ~(-global4.xx), vec3<bool>(all(vec2<bool>(false && arg_0.d.x, true)), arg_0.d.x, global4.x == countOneBits(u_input.a)), global0.x);
    var var_1 = var_0.d.x;
    global3 = array<vec4<bool>, 22>();
    let var_2 = abs(_wgslsmith_dot_vec4_u32(abs(_wgslsmith_div_vec4_u32(var_0.a, ~vec4<u32>(var_0.a.x, arg_0.a.x, var_0.a.x, arg_0.a.x))), _wgslsmith_clamp_vec4_u32(var_0.a, vec4<u32>(var_0.a.x, ~arg_0.a.x, var_0.a.x, var_0.a.x), countOneBits(vec4<u32>(var_0.a.x, 19417u, var_0.a.x, arg_0.a.x)))));
    var var_3 = Struct_1(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(select(reverseBits(var_0.a), arg_0.a, select(global3[_wgslsmith_index_u32(5874u, 22u)], vec4<bool>(true, false, arg_0.d.x, arg_0.d.x), global3[_wgslsmith_index_u32(var_0.a.x, 22u)])), vec4<u32>(var_0.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, arg_0.a.x, var_0.a.x, arg_0.a.x), var_0.a), var_2, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2, 0u, 1u), vec3<u32>(arg_0.a.x, 1u, 54487u)))), ~(arg_0.a & vec4<u32>(54313u, var_0.a.x, var_2, arg_0.a.x)) >> (vec4<u32>(var_0.a.x | var_2, 1u, firstLeadingBit(arg_0.a.x), 39853u) % vec4<u32>(32u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1002f), _wgslsmith_f_op_f32(var_0.b + arg_0.b)))))), arg_0.c, arg_0.d, _wgslsmith_div_i32(i32(-1i) * -u_input.a, arg_1));
    return arg_1 | u_input.a;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_1(arg_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.b + arg_0.b), _wgslsmith_f_op_f32(arg_1.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(871f))))), firstTrailingBit(vec2<i32>(arg_1.e, arg_0.c.x)), vec3<bool>(!(firstTrailingBit(arg_1.a.x) > _wgslsmith_add_u32(1u, arg_0.a.x)), !(global1[_wgslsmith_index_u32(abs(arg_1.a.x), 4u)] <= -global1[_wgslsmith_index_u32(arg_1.a.x, 4u)]), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1000f, 1000f), arg_0.b)) != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(279f + -127f)))), func_3(arg_1, -28451i));
    global3 = array<vec4<bool>, 22>();
    global4 = countOneBits(abs(-(~max(vec4<i32>(arg_0.e, var_0.e, 1i, -1i), vec4<i32>(arg_0.e, global1[_wgslsmith_index_u32(var_0.a.x, 4u)], 0i, -2147483647i)))));
    var var_1 = firstLeadingBit(~(~vec4<u32>(29500u, min(1u, 18533u), arg_2, var_0.a.x)));
    let var_2 = Struct_1(vec4<u32>(arg_2, arg_2 & _wgslsmith_mult_u32(arg_1.a.x, _wgslsmith_mod_u32(var_0.a.x, 30459u)), 4294967295u, ~arg_1.a.x), -1415f, vec2<i32>(14903i << (var_1.x % 32u), 2147483647i), arg_1.d, -(select(-global4.x, abs(global1[_wgslsmith_index_u32(arg_0.a.x, 4u)]), !arg_0.d.x) >> (_wgslsmith_mult_u32(0u, 41608u >> (arg_1.a.x % 32u)) % 32u)));
    return var_2;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: f32, arg_3: u32) -> u32 {
    global3 = array<vec4<bool>, 22>();
    global2 = _wgslsmith_div_f32(arg_2, -453f);
    var var_0 = true;
    var var_1 = func_2(Struct_1(~arg_1, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-308f, 500f)), arg_2))), global4.xx, !arg_0.wyz, 0i), Struct_1(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, arg_1.x), vec3<u32>(4294967295u, arg_3, arg_3)), select(arg_1.x, arg_1.x, arg_0.x), ~arg_1.x, 47043u) ^ arg_1, _wgslsmith_f_op_f32(max(-295f, 856f)), global4.xz, vec3<bool>(arg_0.x, any(arg_0.xz), _wgslsmith_mult_i32(-2147483647i, global4.x) == u_input.a), -(_wgslsmith_div_i32(global4.x, global0.x) & -10153i)), arg_1.x >> (29490u % 32u));
    let var_2 = Struct_1(~((vec4<u32>(29674u, arg_1.x, 23767u, 0u) | (arg_1 & arg_1)) & (~arg_1 << (vec4<u32>(0u, arg_3, var_1.a.x, var_1.a.x) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(abs(arg_2)), -_wgslsmith_div_vec2_i32(vec2<i32>(-2088i, ~u_input.a), -reverseBits(vec2<i32>(var_1.e, global4.x))), !vec3<bool>(false, true | (-1045f < var_1.b), any(arg_0)), _wgslsmith_mod_i32(global4.x, -_wgslsmith_mod_i32(-var_1.c.x, abs(global4.x))));
    return var_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(!(!vec4<bool>(true, true, true, global4.x > 19097i)), ~vec4<u32>(abs(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 41259u)) & 31080u, _wgslsmith_clamp_u32(~0u, ~1187u, 4294967295u), ~(~4294967295u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -376f))), ~116183u);
    global0 = _wgslsmith_clamp_vec3_i32(global4.zzz, vec3<i32>(global1[_wgslsmith_index_u32(~(~37586u), 4u)], -firstTrailingBit(_wgslsmith_mod_i32(2147483647i, 4267i)), abs(firstTrailingBit(global4.x) & 0i)), vec3<i32>(-(~(-global4.x)), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a, -1i, -43413i), vec4<i32>(-2147483647i, 32927i, global0.x, 1i)) >> (109941u % 32u)), u_input.a));
    var var_1 = Struct_1(min(vec4<u32>(19570u, select(~4294967295u, ~55524u, true), ~reverseBits(68476u), 24661u), ~vec4<u32>(0u, 1u, func_1(global3[_wgslsmith_index_u32(70945u, 22u)], vec4<u32>(4294967295u, 4294967295u, 1u, 29438u), 2250f, 42238u), 1u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -472f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-648f)), _wgslsmith_f_op_f32(round(-1216f)))))), vec2<i32>(-u_input.a, global0.x), select(vec3<bool>(global0.x == -global4.x, 1i < global4.x, true), !vec3<bool>(false, true, global0.x < 34484i), vec3<bool>(true, any(vec3<bool>(false, false, true)), select(func_2(Struct_1(vec4<u32>(1u, 9205u, 4294967295u, 4294967295u), 815f, vec2<i32>(2147483647i, global4.x), vec3<bool>(false, true, false), global1[_wgslsmith_index_u32(4294967295u, 4u)]), Struct_1(vec4<u32>(59945u, 13591u, 44719u, 29133u), -1000f, vec2<i32>(-20341i, global0.x), vec3<bool>(false, false, true), global4.x), 100317u).d.x, all(vec2<bool>(false, false)), all(vec4<bool>(true, true, true, true))))), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -25201i, -global4.x, -9704i), vec4<i32>(_wgslsmith_mult_i32(global4.x & 0i, 7105i), global4.x, max(-global1[_wgslsmith_index_u32(0u, 4u)], 31921i), -2147483647i)));
    global2 = 703f;
    global4 = abs(_wgslsmith_div_vec4_i32(vec4<i32>(func_3(func_2(Struct_1(vec4<u32>(0u, 4294967295u, 1u, var_1.a.x), var_1.b, vec2<i32>(-2147483647i, global0.x), vec3<bool>(false, false, var_1.d.x), -1i), Struct_1(vec4<u32>(var_1.a.x, var_1.a.x, var_1.a.x, 1u), var_1.b, vec2<i32>(global1[_wgslsmith_index_u32(51024u, 4u)], u_input.a), var_1.d, -2147483647i), var_1.a.x), -56524i), global4.x, _wgslsmith_div_i32(-18695i, _wgslsmith_dot_vec4_i32(vec4<i32>(global4.x, 1i, 1i, u_input.a), vec4<i32>(global0.x, -2147483647i, var_1.e, global4.x))), ~(global0.x ^ u_input.a)), vec4<i32>(_wgslsmith_mod_i32(firstTrailingBit(-29601i), func_2(Struct_1(vec4<u32>(0u, 3118u, var_1.a.x, var_1.a.x), -329f, vec2<i32>(global4.x, var_1.c.x), var_1.d, -2147483647i), Struct_1(vec4<u32>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x), var_1.b, vec2<i32>(global0.x, 2147483647i), var_1.d, 2147483647i), 1u).c.x), (-2147483647i << (0u % 32u)) >> (reverseBits(var_1.a.x) % 32u), firstTrailingBit(2147483647i), -8773i)));
    global1 = array<i32, 4>();
    let var_2 = Struct_1(vec4<u32>(countOneBits(var_1.a.x), _wgslsmith_dot_vec2_u32(max(var_1.a.zw, vec2<u32>(var_1.a.x, var_1.a.x)), ~vec2<u32>(43218u, 106281u)) << (_wgslsmith_clamp_u32(53555u, var_1.a.x, ~1u) % 32u), _wgslsmith_div_u32(_wgslsmith_div_u32(var_1.a.x, var_1.a.x) << (~var_1.a.x % 32u), 52667u), firstTrailingBit(var_1.a.x)), -275f, vec2<i32>(-1i) * -select(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(0i, u_input.a), global0.xy), select(vec2<i32>(global1[_wgslsmith_index_u32(var_1.a.x, 4u)], -1i), vec2<i32>(global1[_wgslsmith_index_u32(0u, 4u)], -1447i), true), var_1.d.x), var_1.d, -_wgslsmith_add_i32(-(~global1[_wgslsmith_index_u32(22237u, 4u)]), _wgslsmith_dot_vec3_i32(vec3<i32>(-13279i, var_1.c.x, -25764i), select(global4.yxy, vec3<i32>(global0.x, -2147483647i, -1i), var_1.d.x))));
    let var_3 = 19918u;
    let var_4 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(-76622i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(496f, var_1.b, _wgslsmith_f_op_f32(floor(var_1.b)), var_1.b)), min(_wgslsmith_mult_i32(var_2.e, -70465i), ~u_input.a));
}

