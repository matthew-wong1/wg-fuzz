struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_4 = Struct_4(vec3<u32>(17624u, 0u, 72458u));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_2) -> vec4<f32> {
    global1 = Struct_4(vec3<u32>(arg_0, ~(~0u), ~(~global1.a.x)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(599f, arg_2.c, arg_2.c, arg_2.b.a), vec4<f32>(arg_2.c, 179f, arg_2.a, 2030f))))))));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) * _wgslsmith_f_op_f32(-1069f - -763f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1468f) - _wgslsmith_f_op_f32(f32(-1f) * -1092f)))));
    global1 = Struct_4(global1.a);
    global0 = -1i;
    global1 = Struct_4(vec3<u32>(global1.a.x, 91788u, ~global1.a.x));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2078f))))));
    return 1f;
}

fn func_2(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: vec4<f32>) -> vec3<bool> {
    global1 = Struct_4(vec3<u32>(arg_0.a.x, 20380u, ~98938u << (~arg_1.x % 32u)));
    global0 = -48280i;
    global0 = ~u_input.a.x;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()));
    var var_1 = vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(102736u, 17690u), global1.a.xz), arg_0.a.x, abs(36508u), ~global1.a.x) | ~vec4<u32>(~(global1.a.x & arg_1.x), abs(firstLeadingBit(4503u)), 7541u, arg_1.x);
    return !vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -723f) <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1143f))), false, any(vec4<bool>(true, true, true, true)));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec4<bool>, arg_3: Struct_4) -> Struct_4 {
    let var_0 = Struct_2(-1124f, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2620f, -1447f, true))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(1904f)))))), _wgslsmith_f_op_f32(floor(694f)), ~_wgslsmith_div_vec2_i32(-vec2<i32>(-17015i, u_input.a.x), vec2<i32>(u_input.a.x, -1i)), vec2<f32>(1f, 1f));
    var var_1 = Struct_3(arg_3.a >> ((firstTrailingBit(firstLeadingBit(arg_3.a)) >> (arg_3.a % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2121f, _wgslsmith_f_op_vec4_f32(func_1(29868u, vec2<bool>(arg_0, true), var_0)).x, _wgslsmith_f_op_f32(f32(-1f) * -205f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.b.a, 393f, var_0.c), vec3<f32>(var_0.c, var_0.a, -625f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-910f, 252f, -1541f))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-1000f * -824f), _wgslsmith_f_op_f32(f32(-1f) * -1162f), var_0.b.a, _wgslsmith_f_op_f32(var_0.a * var_0.c)))))));
    global1 = Struct_4(firstTrailingBit(global1.a));
    let var_2 = _wgslsmith_f_op_f32(518f * var_0.a);
    let var_3 = Struct_3(arg_3.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.c.wzz, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_1.c.wxz, var_1.c.zyw) + var_1.c.zwx))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(1876f * var_1.b.x), 1000f, _wgslsmith_f_op_f32(exp2(var_2)), var_0.a), _wgslsmith_div_vec4_f32(var_1.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, -156f, -177f, 339f))), select(arg_2, vec4<bool>(arg_0, any(vec4<bool>(true, true, true, true)), select(arg_0, false, false), true), !arg_0 & all(arg_2.yzw)))));
    return Struct_4(abs(firstLeadingBit(arg_3.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(any(func_2(Struct_4(vec3<u32>(global1.a.x, global1.a.x, global1.a.x)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(global1.a.x, global1.a.x), global1.a.zx), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1876f, -474f, -1208f, 542f) + vec4<f32>(-151f, 1532f, -1014f, 141f)), _wgslsmith_f_op_vec4_f32(func_1(69476u, vec2<bool>(false, true), Struct_2(411f, Struct_1(620f), 898f, u_input.a.xx, vec2<f32>(-195f, 2286f)))), vec4<bool>(true, false, true, true))))), -(-u_input.a.x | 1i) & 0i, vec4<bool>(all(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false))), true, all(vec2<bool>(true, false)) & (_wgslsmith_add_u32(global1.a.x, global1.a.x) >= ~79935u), true), Struct_4(abs(max(select(vec3<u32>(13048u, 333u, global1.a.x), vec3<u32>(4294967295u, 78990u, 1u), vec3<bool>(true, true, true)), global1.a))));
    let var_0 = any(vec4<bool>(!(global1.a.x <= 3078u), false, (all(vec4<bool>(false, true, true, false)) == true) & true, false));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2151f)), 1392f)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_1(~global1.a.x, vec2<bool>(true, false), Struct_2(110f, Struct_1(1563f), 364f, vec2<i32>(1i, u_input.a.x), vec2<f32>(-1019f, -561f)))).x)), _wgslsmith_f_op_f32(func_3()), _wgslsmith_clamp_vec2_i32(~u_input.a.xx, min(vec2<i32>(i32(-1i) * -2147483647i, reverseBits(43258i)), vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.a.wzx, u_input.a.wyy), -2147483647i)), ~_wgslsmith_clamp_vec2_i32(u_input.a.xw, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(-29811i, -7787i)), -u_input.a.zy)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1565f, -1681f)))))))));
    let var_2 = !vec2<bool>(!func_2(Struct_4(global1.a), firstTrailingBit(global1.a.xy), vec4<f32>(var_1.a, 2540f, 1000f, var_1.e.x)).x, true);
    var var_3 = -1332f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f)));
    var_3 = !(!(-317f >= _wgslsmith_f_op_vec4_f32(func_1(global1.a.x << (31541u % 32u), !vec2<bool>(true, var_0), Struct_2(var_1.c, Struct_1(var_1.c), var_1.c, var_1.d, var_1.e))).x));
    global1 = Struct_4(~global1.a);
    global1 = func_4(!(any(select(vec3<bool>(false, var_0, false), vec3<bool>(var_2.x, var_0, var_0), vec3<bool>(false, var_2.x, false))) & true), 25752i, !vec4<bool>(_wgslsmith_f_op_f32(var_1.b.a - 623f) < -665f, _wgslsmith_f_op_f32(select(-497f, var_1.a, var_2.x)) > _wgslsmith_f_op_vec4_f32(func_1(6111u, vec2<bool>(true, true), var_1)).x, var_0 && true, false), func_4(false, var_1.d.x, !(!vec4<bool>(var_2.x, true, true, var_0)), Struct_4(global1.a)));
    var var_4 = Struct_2(var_1.b.a, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)), _wgslsmith_f_op_f32(-var_1.c))), _wgslsmith_f_op_f32(trunc(-1000f)), abs(~(-vec2<i32>(1i, u_input.a.x))), _wgslsmith_f_op_vec2_f32(-var_1.e));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(~global1.a.zz, firstTrailingBit(abs(global1.a.yz) & _wgslsmith_add_vec2_u32(vec2<u32>(global1.a.x, 4294967295u), global1.a.xz))), vec2<i32>(var_4.d.x, u_input.a.x), max(~abs(40863u), 1u), 438f);
}

