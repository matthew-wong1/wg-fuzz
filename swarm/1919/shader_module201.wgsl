struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12> = array<bool, 12>(true, false, false, true, true, false, false, true, true, true, false, false);

var<private> global1: vec2<i32>;

var<private> global2: array<vec4<f32>, 5> = array<vec4<f32>, 5>(vec4<f32>(269f, 949f, 919f, 829f), vec4<f32>(525f, 797f, -2131f, -659f), vec4<f32>(515f, 183f, -249f, 1000f), vec4<f32>(-181f, 1000f, 1000f, 644f), vec4<f32>(1292f, 1080f, -1188f, 103f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = Struct_4(Struct_1(firstTrailingBit(firstTrailingBit(global1.x)), 61495u, vec4<i32>(countOneBits(reverseBits(arg_1.c.x)), 7547i, _wgslsmith_div_i32(-2147483647i, _wgslsmith_sub_i32(arg_2.c.x, arg_2.a)), i32(-1i) * -16387i), ~(vec2<u32>(13647u, arg_1.e.x) >> (vec2<u32>(u_input.a.x, 0u) % vec2<u32>(32u))), arg_2.e), (u_input.a & _wgslsmith_mod_vec2_u32(~arg_3.e.wz, select(vec2<u32>(15183u, u_input.a.x), vec2<u32>(arg_2.d.x, 1u), vec2<bool>(global0[_wgslsmith_index_u32(arg_1.b, 12u)], true)))) << (vec2<u32>(20628u, 1u & arg_1.d.x) % vec2<u32>(32u)), arg_3, Struct_2(_wgslsmith_mod_i32(min(22805i, arg_3.a), -2147483647i) & countOneBits(-2147483647i)), global0[_wgslsmith_index_u32(arg_2.b, 12u)]);
    global0 = array<bool, 12>();
    var var_1 = vec4<i32>(1i, countOneBits(_wgslsmith_mod_i32(-_wgslsmith_mod_i32(3733i, arg_1.a), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.a, global1.x, -52249i, arg_3.a), vec4<i32>(arg_2.a, arg_2.a, arg_1.a, global1.x) & arg_2.c))), firstTrailingBit(_wgslsmith_div_i32(-1i, arg_2.a)), firstLeadingBit(global1.x & (firstTrailingBit(global1.x) >> (32505u % 32u))));
    global2 = array<vec4<f32>, 5>();
    var var_2 = global0[_wgslsmith_index_u32(max(_wgslsmith_mod_u32(101333u, 4294967295u), _wgslsmith_mult_u32(~(~1u), _wgslsmith_clamp_u32(firstTrailingBit(1u), ~max(arg_3.e.x, 55842u), ~(~arg_3.d.x)))), 12u)];
    return select(!select(!select(vec2<bool>(true, global0[_wgslsmith_index_u32(arg_3.e.x, 12u)]), vec2<bool>(false, false), vec2<bool>(var_0.e, global0[_wgslsmith_index_u32(u_input.a.x, 12u)])), !(!vec2<bool>(global0[_wgslsmith_index_u32(var_0.c.b, 12u)], false)), !vec2<bool>(false, var_0.e)), !select(vec2<bool>(arg_2.a < -1i, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 78864u)), 12u)]), !vec2<bool>(global0[_wgslsmith_index_u32(103352u, 12u)], global0[_wgslsmith_index_u32(7406u, 12u)]), any(vec3<bool>(true, true, true))), 493f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + -1226f) - -339f));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: f32) -> i32 {
    global0 = array<bool, 12>();
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, _wgslsmith_div_u32(u_input.a.x, arg_0.b)), 5u)])) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(1u, 5u)] - global2[_wgslsmith_index_u32(u_input.a.x, 5u)])), global2[_wgslsmith_index_u32(arg_0.e.x, 5u)], !vec4<bool>(true, global0[_wgslsmith_index_u32(65672u, 12u)], arg_1.x, false)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1176f, 2126f, arg_2, arg_2), vec4<f32>(-458f, arg_2, arg_2, -1254f), arg_1.x))) * _wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(min(26429u, arg_0.d.x), 5u)] * global2[_wgslsmith_index_u32(arg_0.d.x, 5u)])))), -973f >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-972f * 1531f), arg_2))));
    global2 = array<vec4<f32>, 5>();
    global1 = arg_0.c.wy;
    var_0 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(66598u, 24918u), 5u)];
    return 12113i;
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: bool) -> Struct_3 {
    global2 = array<vec4<f32>, 5>();
    var var_0 = _wgslsmith_mult_i32(-func_4(Struct_1(2147483647i, u_input.a.x, vec4<i32>(global1.x, -19409i, global1.x, -6620i), u_input.a, vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 110583u)), func_3(global2[_wgslsmith_index_u32(50836u, 5u)], Struct_1(global1.x, u_input.a.x, vec4<i32>(5815i, -1065i, 666i, arg_1), u_input.a, vec4<u32>(0u, 1u, 12017u, u_input.a.x)), Struct_1(global1.x, u_input.a.x, vec4<i32>(arg_1, 0i, -1i, -2147483647i), vec2<u32>(u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x)), Struct_1(-7929i, u_input.a.x, vec4<i32>(1i, -25283i, global1.x, 308i), u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 1u))), 288f), arg_1) & (arg_1 ^ _wgslsmith_sub_i32(min(~arg_1, -2147483647i), global1.x << (u_input.a.x % 32u)));
    return Struct_3(select(select(arg_0.xy, arg_0.wz, vec2<bool>(true, true)), !select(arg_0.yx, select(vec2<bool>(arg_0.x, true), arg_0.yz, arg_0.xx), true), arg_0.xx));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: i32, arg_3: vec2<u32>) -> Struct_4 {
    var var_0 = ~firstTrailingBit(~(~vec2<i32>(-1i, arg_2) | vec2<i32>(arg_0.a, global1.x)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1341f, -1672f), vec2<f32>(136f, -1915f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1468f, -983f))), vec2<f32>(_wgslsmith_div_f32(848f, 1000f), 232f)))) - vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-766f)), -817f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1744f, -2004f)), _wgslsmith_f_op_f32(sign(-228f)), false)))));
    var var_2 = func_2(!select(!(!vec4<bool>(true, false, global0[_wgslsmith_index_u32(arg_3.x, 12u)], true)), !(!vec4<bool>(true, true, global0[_wgslsmith_index_u32(arg_3.x, 12u)], true)), true), arg_0.a, false);
    var var_3 = -677f;
    var_2 = arg_1;
    return Struct_4(Struct_1(0i, 106308u, reverseBits(-(vec4<i32>(-1i, 0i, arg_0.a, var_0.x) | vec4<i32>(arg_2, 0i, arg_0.a, arg_2))), firstLeadingBit(~select(u_input.a, u_input.a, true)), ~_wgslsmith_mult_vec4_u32(select(vec4<u32>(46867u, 81520u, 10193u, 16713u), vec4<u32>(64833u, arg_3.x, 1u, u_input.a.x), vec4<bool>(true, false, false, true)), firstTrailingBit(vec4<u32>(1u, 4294967295u, u_input.a.x, 41483u)))), ~firstLeadingBit(min(vec2<u32>(arg_3.x, u_input.a.x), vec2<u32>(u_input.a.x, 47493u) | vec2<u32>(u_input.a.x, u_input.a.x))), Struct_1(global1.x, u_input.a.x, vec4<i32>(_wgslsmith_sub_i32(var_0.x, var_0.x), arg_2, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a, -89747i, var_0.x, global1.x), vec4<i32>(-1196i, var_0.x, -11022i, 53255i)), var_0.x & global1.x) ^ select(vec4<i32>(var_0.x, 49005i, -47106i, 28415i) >> (vec4<u32>(72014u, arg_3.x, 16214u, 11063u) % vec4<u32>(32u)), -vec4<i32>(70i, arg_0.a, var_0.x, arg_2), vec4<bool>(arg_1.a.x, false, false, var_2.a.x)), ~arg_3, _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, 4555u, 77359u, u_input.a.x), ~vec4<u32>(1u, u_input.a.x, arg_3.x, 45182u)), vec4<u32>(1u, 34791u, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 1u), reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, arg_3.x, u_input.a.x, 0u), vec4<u32>(arg_3.x, 4294967295u, arg_3.x, u_input.a.x))))), arg_0, any(select(select(vec4<bool>(true, true, var_2.a.x, var_2.a.x), !vec4<bool>(global0[_wgslsmith_index_u32(4603u, 12u)], var_2.a.x, true, false), !vec4<bool>(var_2.a.x, true, true, var_2.a.x)), !vec4<bool>(var_2.a.x, global0[_wgslsmith_index_u32(1u, 12u)], true, var_2.a.x), select(true, !global0[_wgslsmith_index_u32(u_input.a.x, 12u)], true))));
}

fn func_6(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: f32) -> vec4<u32> {
    var var_0 = vec4<u32>(4294967295u, 0u, 0u, arg_0.c.e.x);
    let var_1 = vec4<i32>(-684i, reverseBits(global1.x), global1.x, _wgslsmith_dot_vec2_i32(firstTrailingBit(~vec2<i32>(arg_0.d.a, 0i)) << (var_0.xz % vec2<u32>(32u)), vec2<i32>(arg_0.a.a, -2147483647i)));
    global2 = array<vec4<f32>, 5>();
    var_0 = vec4<u32>(_wgslsmith_mult_u32(~arg_0.a.b, reverseBits(var_0.x)), 45350u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, 38646u), countOneBits(~_wgslsmith_mult_u32(u_input.a.x, 1u))), max(~1u | ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, u_input.a.x, arg_0.b.x, arg_0.a.b), vec4<u32>(var_0.x, arg_0.a.e.x, 73433u, arg_0.a.b)), 29586u));
    let var_2 = func_5(arg_0.d, func_2(!select(!vec4<bool>(false, false, arg_0.e, false), vec4<bool>(false, global0[_wgslsmith_index_u32(var_0.x, 12u)], true, global0[_wgslsmith_index_u32(var_0.x, 12u)]), select(vec4<bool>(arg_0.e, false, arg_0.e, global0[_wgslsmith_index_u32(u_input.a.x, 12u)]), vec4<bool>(true, false, arg_0.e, global0[_wgslsmith_index_u32(24575u, 12u)]), global0[_wgslsmith_index_u32(32703u, 12u)])), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(1i, global1.x, -40704i, arg_0.a.c.x)), vec4<i32>(arg_0.a.a, 48728i, ~(-5816i), _wgslsmith_mult_i32(global1.x, arg_0.c.a))), arg_0.e), global1.x, vec2<u32>(arg_0.b.x, 4294967295u));
    return reverseBits(arg_0.c.e >> (select(arg_0.c.e, vec4<u32>(29785u, arg_0.c.e.x, abs(4254u), 1u), true) % vec4<u32>(32u)));
}

fn func_1(arg_0: i32) -> Struct_3 {
    let var_0 = Struct_1(arg_0, _wgslsmith_mult_u32(~u_input.a.x, u_input.a.x), ~(-_wgslsmith_mod_vec4_i32(vec4<i32>(global1.x, 1i, arg_0, 0i), vec4<i32>(arg_0, -39665i, 46462i, global1.x))) >> (func_6(func_5(Struct_2(80852i), func_2(vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], global0[_wgslsmith_index_u32(u_input.a.x, 12u)]), global1.x, true), _wgslsmith_sub_i32(2147483647i, 1i), reverseBits(vec2<u32>(0u, u_input.a.x))), vec4<f32>(754f, _wgslsmith_f_op_f32(905f - -1283f), _wgslsmith_f_op_f32(f32(-1f) * -103f), -1436f), _wgslsmith_f_op_f32(f32(-1f) * -348f)) % vec4<u32>(32u)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x << (u_input.a.x % 32u), ~674u, abs(u_input.a.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), ~vec3<u32>(62194u, 1u, u_input.a.x))), ~max(firstTrailingBit(0u), ~u_input.a.x)), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 37903u, u_input.a.x, 21144u), vec4<u32>(u_input.a.x, 0u, 0u, u_input.a.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(35951u, u_input.a.x, u_input.a.x, u_input.a.x))), ~func_5(Struct_2(global1.x), Struct_3(vec2<bool>(global0[_wgslsmith_index_u32(6835u, 12u)], global0[_wgslsmith_index_u32(u_input.a.x, 12u)])), global1.x, vec2<u32>(u_input.a.x, 4294967295u)).c.e) >> (vec4<u32>(u_input.a.x, 2918u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 18521u), vec3<u32>(u_input.a.x, 4294967295u, 1u)), vec3<u32>(u_input.a.x, 75625u, u_input.a.x)), 1u) % vec4<u32>(32u)));
    let var_1 = Struct_2(arg_0);
    var var_2 = Struct_3(select(vec2<bool>(true, true), !select(!vec2<bool>(global0[_wgslsmith_index_u32(var_0.d.x, 12u)], false), !vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 12u)]), true), !(global0[_wgslsmith_index_u32(0u, 12u)] | true)));
    var var_3 = func_5(Struct_2(func_5(Struct_2(-1i), func_2(select(vec4<bool>(true, var_2.a.x, var_2.a.x, var_2.a.x), vec4<bool>(false, true, false, true), var_2.a.x), _wgslsmith_mod_i32(2147483647i, global1.x), var_0.d.x == u_input.a.x), ~var_1.a | ~(-18341i), u_input.a).a.c.x), Struct_3(var_2.a), global1.x, var_0.d);
    return func_2(vec4<bool>(abs(var_3.b.x) < _wgslsmith_add_u32(abs(5775u), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), func_2(vec4<bool>(func_2(vec4<bool>(true, false, var_2.a.x, global0[_wgslsmith_index_u32(4294967295u, 12u)]), -11432i, true).a.x, true, !global0[_wgslsmith_index_u32(1u, 12u)], true), max(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a, -2147483647i), vec2<i32>(0i, var_1.a)), _wgslsmith_sub_i32(arg_0, var_3.a.c.x)), true | any(vec4<bool>(true, var_2.a.x, var_2.a.x, false))).a.x, any(vec3<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(var_3.a.d.x, 12u)], var_2.a.x, global0[_wgslsmith_index_u32(67395u, 12u)])), var_3.e && true, var_3.e & false)), true), countOneBits(_wgslsmith_mult_i32(-1546i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, -27680i, var_3.d.a), var_0.c.yzz)) >> (20181u % 32u)), var_3.e);
}

fn func_7(arg_0: Struct_3, arg_1: vec2<f32>) -> i32 {
    var var_0 = vec3<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(4913i, -9246i), func_4(func_5(Struct_2(38308i), arg_0, global1.x, u_input.a).c, vec2<bool>(arg_0.a.x, true), _wgslsmith_f_op_f32(arg_1.x + -815f)) >> (u_input.a.x % 32u)), _wgslsmith_dot_vec2_i32(-vec2<i32>(firstTrailingBit(global1.x), -global1.x), vec2<i32>(1i, global1.x) ^ reverseBits(vec2<i32>(global1.x, 0i))), _wgslsmith_clamp_i32(global1.x, _wgslsmith_sub_i32(global1.x, global1.x | -global1.x), -17467i));
    var var_1 = arg_0;
    global2 = array<vec4<f32>, 5>();
    var_1 = func_1(-1i);
    let var_2 = func_5(Struct_2(firstTrailingBit(abs(-10676i))), Struct_3(vec2<bool>(arg_0.a.x, !all(vec3<bool>(true, false, true)))), global1.x, ~countOneBits(u_input.a) | ~abs(max(vec2<u32>(0u, u_input.a.x), vec2<u32>(u_input.a.x, 36783u)))).a.c.zxw;
    return countOneBits(func_4(Struct_1(-46431i, min(_wgslsmith_add_u32(u_input.a.x, 1u), ~u_input.a.x), max(select(vec4<i32>(2147483647i, 0i, -5093i, 5271i), vec4<i32>(var_0.x, -1i, var_0.x, 6362i), vec4<bool>(var_1.a.x, var_1.a.x, true, true)), ~vec4<i32>(global1.x, 0i, -9911i, 54284i)), func_6(func_5(Struct_2(var_0.x), arg_0, var_2.x, u_input.a), global2[_wgslsmith_index_u32(u_input.a.x, 5u)], _wgslsmith_f_op_f32(abs(-382f))).xw, _wgslsmith_add_vec4_u32(abs(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u)), vec4<u32>(26572u, 0u, 9252u, 0u))), vec2<bool>(true, !all(vec4<bool>(var_1.a.x, false, var_1.a.x, false))), -442f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_1(func_7(func_1(_wgslsmith_mod_i32(global1.x, 0i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-808f, -1255f)) + vec2<f32>(-496f, -181f))), _wgslsmith_mult_u32(_wgslsmith_mult_u32(~4294967295u, func_6(Struct_4(Struct_1(global1.x, 8711u, vec4<i32>(46953i, global1.x, 10244i, global1.x), vec2<u32>(1u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), vec2<u32>(29703u, u_input.a.x), Struct_1(global1.x, u_input.a.x, vec4<i32>(25191i, global1.x, -8583i, global1.x), u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, 1u, 10529u)), Struct_2(-2147483647i), true), global2[_wgslsmith_index_u32(8936u, 5u)], -626f).x), 17899u), abs(~(~vec4<i32>(global1.x, -34177i, 5957i, 2147483647i))), ~u_input.a, vec4<u32>(func_6(Struct_4(Struct_1(global1.x, 4294967295u, vec4<i32>(global1.x, -24438i, -21202i, 5028i), u_input.a, vec4<u32>(u_input.a.x, 32046u, 0u, u_input.a.x)), u_input.a, Struct_1(global1.x, 4395u, vec4<i32>(3040i, global1.x, 1i, -31896i), vec2<u32>(1752u, 15230u), vec4<u32>(u_input.a.x, 19789u, 70376u, 1u)), Struct_2(0i), true), global2[_wgslsmith_index_u32(17350u, 5u)], -725f).x, u_input.a.x, ~(u_input.a.x | 4294967295u), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), ~vec4<u32>(u_input.a.x, u_input.a.x, 33282u, u_input.a.x)))), u_input.a, func_5(Struct_2(global1.x), func_1(~global1.x), global1.x, vec2<u32>(u_input.a.x, _wgslsmith_add_u32(10769u, 0u))).c, Struct_2(-37912i), true);
    var var_1 = ~var_0.a.e.xwy;
    var var_2 = func_5(Struct_2(2147483647i), Struct_3(func_1(global1.x).a), global1.x, ~var_0.c.d).a;
    var_1 = var_0.c.e.zwz;
    let var_3 = true && var_0.e;
    let x = u_input.a;
    s_output = StorageBuffer(35667i);
}

