struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: i32,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<Struct_2, 8>;

var<private> global2: array<vec2<u32>, 19> = array<vec2<u32>, 19>(vec2<u32>(47079u, 49782u), vec2<u32>(0u, 2269u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 30924u), vec2<u32>(13259u, 79251u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 55495u), vec2<u32>(4294967295u, 0u), vec2<u32>(3074u, 15818u), vec2<u32>(1u, 901u), vec2<u32>(4294967295u, 1697u), vec2<u32>(0u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 10035u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 45297u), vec2<u32>(4294967295u, 24994u), vec2<u32>(18871u, 21128u));

var<private> global3: array<vec2<i32>, 28> = array<vec2<i32>, 28>(vec2<i32>(8379i, -59378i), vec2<i32>(32388i, 0i), vec2<i32>(73776i, 24410i), vec2<i32>(i32(-2147483648), -17816i), vec2<i32>(42167i, i32(-2147483648)), vec2<i32>(1i, -44055i), vec2<i32>(1i, 2147483647i), vec2<i32>(-56973i, i32(-2147483648)), vec2<i32>(-11799i, -1i), vec2<i32>(2147483647i, 29720i), vec2<i32>(74810i, -4472i), vec2<i32>(-25490i, -39182i), vec2<i32>(-301i, 0i), vec2<i32>(39425i, -1i), vec2<i32>(1i, 0i), vec2<i32>(-18571i, i32(-2147483648)), vec2<i32>(-1i, -65358i), vec2<i32>(2147483647i, 0i), vec2<i32>(1i, 37236i), vec2<i32>(58875i, -12228i), vec2<i32>(0i, -11632i), vec2<i32>(1i, 31878i), vec2<i32>(0i, 0i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(8068i, 29960i), vec2<i32>(-30546i, 1i), vec2<i32>(-24115i, 0i), vec2<i32>(-45161i, 22916i));

var<private> global4: array<bool, 22>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec2<i32> {
    let var_0 = u_input.c;
    let var_1 = Struct_3(~vec3<u32>(_wgslsmith_mod_u32(~19331u, min(u_input.d.x, u_input.c)), ~_wgslsmith_div_u32(var_0, 12082u), abs(~62774u)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(max(global0.x, -424f)))))), (1i | _wgslsmith_dot_vec3_i32(max(u_input.e.xxy, vec3<i32>(2147483647i, u_input.e.x, u_input.b.x)), abs(u_input.e.zwz))) << (_wgslsmith_dot_vec4_u32(~(vec4<u32>(53194u, u_input.c, u_input.d.x, 12685u) | vec4<u32>(1u, u_input.d.x, 1u, 4294967295u)), u_input.d) % 32u), _wgslsmith_f_op_f32(ceil(-1276f)), ~0u);
    let var_2 = vec4<bool>(!any(vec2<bool>(true, var_1.e == u_input.c)), global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(select(firstLeadingBit(53801u), 88000u, false), 87811u), var_1.a.x), 22u)], global4[_wgslsmith_index_u32(0u, 22u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.d)) * _wgslsmith_f_op_f32(-global0.x)))) == 1005f);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.b.x, -1259f, _wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, var_1.d) + vec3<f32>(1326f, var_1.b.x, global0.x))))), !vec3<bool>(global4[_wgslsmith_index_u32(u_input.d.x, 22u)] || true, true, all(var_2.xyy)))));
    var var_4 = Struct_2(Struct_1(max(_wgslsmith_add_vec2_i32(u_input.e.wx, u_input.b | vec2<i32>(var_1.c, -2147483647i)), ~min(vec2<i32>(var_1.c, var_1.c), global3[_wgslsmith_index_u32(1u, 28u)])), ~select(_wgslsmith_add_u32(2833u, var_1.a.x), ~u_input.c, all(var_2))), Struct_1(min(select(~global3[_wgslsmith_index_u32(var_1.e, 28u)], vec2<i32>(var_1.c, 1i), global4[_wgslsmith_index_u32(var_1.a.x, 22u)] == false), vec2<i32>(abs(var_1.c), select(u_input.a, 29782i, true))), var_1.a.x), reverseBits(~firstLeadingBit(var_1.a)) << (~(u_input.d.wyz << (_wgslsmith_sub_vec3_u32(var_1.a, vec3<u32>(var_0, var_0, 25420u)) % vec3<u32>(32u))) % vec3<u32>(32u)), all(select(var_2.zww, !(!var_2.yyz), true)));
    return _wgslsmith_add_vec2_i32(global3[_wgslsmith_index_u32(4294967295u, 28u)], _wgslsmith_div_vec2_i32(u_input.b, _wgslsmith_div_vec2_i32(var_4.a.a, vec2<i32>(u_input.a, -9694i)) << (vec2<u32>(u_input.d.x, 0u) % vec2<u32>(32u)))) | u_input.e.wz;
}

fn func_2() -> bool {
    var var_0 = Struct_2(Struct_1(-u_input.e.xw ^ (func_3() | ~vec2<i32>(u_input.a, u_input.a)), _wgslsmith_sub_u32(u_input.c, reverseBits(_wgslsmith_add_u32(u_input.c, 0u)))), Struct_1(-(~global3[_wgslsmith_index_u32(1u, 28u)]) << (vec2<u32>(~u_input.c, ~u_input.d.x) % vec2<u32>(32u)), abs(0u)), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 48880u, 13066u), select(u_input.d.xzy, u_input.d.wzw, vec3<bool>(global4[_wgslsmith_index_u32(u_input.c, 22u)], false, global4[_wgslsmith_index_u32(u_input.c, 22u)])))), all(vec3<bool>(all(!vec4<bool>(global4[_wgslsmith_index_u32(u_input.c, 22u)], true, global4[_wgslsmith_index_u32(0u, 22u)], true)), u_input.c >= (u_input.c & 3912u), false)));
    global4 = array<bool, 22>();
    var var_1 = var_0.a;
    var var_2 = global1[_wgslsmith_index_u32(~(~u_input.c), 8u)];
    var_1 = Struct_1(var_1.a | (var_2.b.a >> (var_0.c.xy % vec2<u32>(32u))), (~(~u_input.d.x) | reverseBits(74062u)) >> (var_1.b % 32u));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(585f, _wgslsmith_f_op_f32(round(-1000f)))))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - global0.x))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), 1167f)), global0.x)));
}

fn func_1(arg_0: bool, arg_1: vec3<bool>) -> f32 {
    var var_0 = vec4<bool>(arg_1.x, func_2(), !arg_1.x, false);
    let var_1 = true;
    var var_2 = Struct_2(Struct_1(-_wgslsmith_mod_vec2_i32(abs(global3[_wgslsmith_index_u32(3711u, 28u)]), vec2<i32>(0i, -28114i)), ~_wgslsmith_clamp_u32(u_input.c, min(u_input.d.x, 4294967295u), 1u)), Struct_1(~u_input.e.wz << (global2[_wgslsmith_index_u32(1u, 19u)] % vec2<u32>(32u)), u_input.d.x), u_input.d.yyw, false);
    var_0 = select(vec4<bool>(!all(vec2<bool>(true, true)), !any(arg_1), var_0.x, all(vec3<bool>(func_2(), false, false))), select(vec4<bool>(all(vec3<bool>(false, var_1, true)), any(select(vec4<bool>(var_1, false, true, false), vec4<bool>(arg_1.x, false, true, false), arg_1.x)), false, all(arg_1.zz) || all(vec4<bool>(true, var_1, true, var_0.x))), select(select(!vec4<bool>(true, global4[_wgslsmith_index_u32(4960u, 22u)], false, false), select(vec4<bool>(arg_0, true, false, true), vec4<bool>(true, var_0.x, var_0.x, global4[_wgslsmith_index_u32(u_input.c, 22u)]), var_2.d), vec4<bool>(arg_0, global4[_wgslsmith_index_u32(1u, 22u)], var_2.d, var_2.d)), !(!vec4<bool>(false, var_2.d, false, var_0.x)), !(!vec4<bool>(false, var_0.x, false, true))), vec4<bool>(select(var_0.x, true, false), true, arg_0, select(true, true, var_1 | false))), !(!select(u_input.b.x <= u_input.e.x, var_2.d == true, var_0.x)));
    global1 = array<Struct_2, 8>();
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(!(all(vec2<bool>(global4[_wgslsmith_index_u32(u_input.d.x, 22u)], global4[_wgslsmith_index_u32(0u, 22u)])) && false), vec3<bool>(false, global4[_wgslsmith_index_u32(~u_input.d.x, 22u)], true))));
    global2 = array<vec2<u32>, 19>();
    var var_1 = select(select(!vec2<bool>(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.d.x, 62498u), 22u)], global4[_wgslsmith_index_u32(u_input.d.x, 22u)] == global4[_wgslsmith_index_u32(47759u, 22u)]), vec2<bool>(global4[_wgslsmith_index_u32(~u_input.d.x, 22u)], any(select(vec4<bool>(global4[_wgslsmith_index_u32(u_input.d.x, 22u)], global4[_wgslsmith_index_u32(1u, 22u)], global4[_wgslsmith_index_u32(1u, 22u)], false), vec4<bool>(global4[_wgslsmith_index_u32(0u, 22u)], global4[_wgslsmith_index_u32(19279u, 22u)], true, global4[_wgslsmith_index_u32(u_input.d.x, 22u)]), global4[_wgslsmith_index_u32(89380u, 22u)]))), false), select(select(!select(vec2<bool>(global4[_wgslsmith_index_u32(0u, 22u)], global4[_wgslsmith_index_u32(u_input.c, 22u)]), vec2<bool>(false, global4[_wgslsmith_index_u32(u_input.c, 22u)]), vec2<bool>(global4[_wgslsmith_index_u32(44424u, 22u)], false)), select(select(vec2<bool>(false, global4[_wgslsmith_index_u32(4294967295u, 22u)]), vec2<bool>(false, global4[_wgslsmith_index_u32(u_input.c, 22u)]), vec2<bool>(global4[_wgslsmith_index_u32(u_input.c, 22u)], global4[_wgslsmith_index_u32(25192u, 22u)])), !vec2<bool>(global4[_wgslsmith_index_u32(16693u, 22u)], global4[_wgslsmith_index_u32(1u, 22u)]), vec2<bool>(global4[_wgslsmith_index_u32(39454u, 22u)], true)), global4[_wgslsmith_index_u32((u_input.d.x & u_input.c) & 1u, 22u)]), !vec2<bool>(all(vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.c, 22u)], global4[_wgslsmith_index_u32(17146u, 22u)], false)), !global4[_wgslsmith_index_u32(76171u, 22u)]), !(!vec2<bool>(global4[_wgslsmith_index_u32(0u, 22u)], global4[_wgslsmith_index_u32(u_input.c, 22u)]))), global4[_wgslsmith_index_u32(select(min(_wgslsmith_div_u32(56528u, u_input.c) | ~u_input.d.x, ~0u), countOneBits(_wgslsmith_mod_u32(21362u, u_input.d.x)), !global4[_wgslsmith_index_u32(u_input.c, 22u)]), 22u)]);
    var var_2 = -1i;
    let var_3 = Struct_2(Struct_1(-(~_wgslsmith_add_vec2_i32(global3[_wgslsmith_index_u32(u_input.c, 28u)], u_input.b)), ~u_input.c), Struct_1(abs(vec2<i32>(-46174i, u_input.b.x) << (u_input.d.yy % vec2<u32>(32u))), 14017u), u_input.d.ywx, true);
    let x = u_input.a;
    s_output = StorageBuffer(~(abs(countOneBits(u_input.d.x)) << (abs(43070u) % 32u)), 799f, 0i & var_3.a.a.x, ~_wgslsmith_mult_u32(~(~0u), ~_wgslsmith_div_u32(var_3.b.b, var_3.a.b)), -u_input.b.x);
}

