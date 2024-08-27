struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: array<vec4<u32>, 11> = array<vec4<u32>, 11>(vec4<u32>(25160u, 0u, 57714u, 1u), vec4<u32>(56688u, 4294967295u, 4294967295u, 49273u), vec4<u32>(74648u, 36420u, 4294967295u, 5858u), vec4<u32>(6694u, 65557u, 4294967295u, 18235u), vec4<u32>(10781u, 4294967295u, 52856u, 56406u), vec4<u32>(0u, 46879u, 50456u, 40529u), vec4<u32>(42012u, 0u, 244u, 23897u), vec4<u32>(84546u, 24413u, 0u, 40992u), vec4<u32>(0u, 0u, 19456u, 0u), vec4<u32>(0u, 42309u, 9810u, 4294967295u), vec4<u32>(76554u, 4569u, 11980u, 30937u));

var<private> global3: u32 = 6800u;

var<private> global4: array<vec3<bool>, 15> = array<vec3<bool>, 15>(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = arg_2;
    global2 = array<vec4<u32>, 11>();
    var var_1 = 0u >= _wgslsmith_div_u32(arg_2.b.x, ~abs(var_0.b.x));
    let var_2 = all(!arg_3);
    let var_3 = _wgslsmith_mod_i32(-2147483647i, ~(-2147483647i));
    return Struct_1(global0.c, var_0.b, arg_2.a, false, ~global1.b.x < arg_2.b.x);
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: bool) -> f32 {
    var var_0 = Struct_2(global1.a.yxz, Struct_1(!(!vec4<bool>(arg_2, false, arg_2, false)), func_1(52369i, _wgslsmith_div_vec2_f32(vec2<f32>(-1521f, -408f), vec2<f32>(-1729f, 215f)), func_1(u_input.b.x, vec2<f32>(-387f, 678f), Struct_1(vec4<bool>(arg_1, false, true, true), global1.b, global1.a, false, false), global1.a), global0.a).b & _wgslsmith_add_vec4_u32(~global2[_wgslsmith_index_u32(57688u, 11u)], global1.b), vec4<bool>(all(global1.c.yxz), select(global1.e || true, global0.e, true), all(vec3<bool>(arg_1, true, false)), global0.c.x), arg_1, false), vec4<i32>(u_input.c.x ^ 2147483647i, u_input.b.x, -1i, select(1i, ~u_input.d, select(false, func_1(2631i, vec2<f32>(-1189f, 1285f), Struct_1(vec4<bool>(arg_1, true, global1.c.x, global1.e), global1.b, vec4<bool>(false, global1.c.x, global1.d, global0.a.x), false, false), global0.a).c.x, arg_1))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-616f))));
    let var_2 = var_0.b;
    var var_3 = 4294967295u;
    var var_4 = Struct_2(global4[_wgslsmith_index_u32(0u, 15u)], Struct_1(func_1(_wgslsmith_mult_i32(-u_input.d, i32(-1i) * -13330i), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -445f)))), func_1(max(var_0.c.x, -5780i), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1, -1249f), vec2<f32>(869f, -394f))), Struct_1(vec4<bool>(var_2.c.x, true, global1.c.x, var_0.a.x), vec4<u32>(28645u, 1u, 28289u, 23705u), vec4<bool>(false, true, true, global0.e), var_0.b.e, false), vec4<bool>(true, var_0.a.x, global0.d, false)), vec4<bool>(true, true, any(vec3<bool>(global1.e, true, global1.c.x)), any(global0.c))).c, var_0.b.b, !vec4<bool>(!global1.d, arg_1, true, any(var_0.b.c)), !var_2.e, false), vec4<i32>(42157i, ~(_wgslsmith_sub_i32(u_input.c.x, 1i) | firstTrailingBit(var_0.c.x)), var_0.c.x, -10422i << (_wgslsmith_mult_u32(max(1u, 1u), var_2.b.x) % 32u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -602f));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> u32 {
    var var_0 = vec3<bool>(!any(!global0.a.ww), false != any(vec4<bool>(false, any(vec4<bool>(true, false, true, false)), global1.c.x, all(vec3<bool>(true, false, true)))), global0.a.x);
    global3 = _wgslsmith_add_u32(4294967295u, global0.b.x);
    let var_1 = -u_input.b.yzz;
    let var_2 = !(!select(vec3<bool>(false, !global0.e, 1i > arg_2), global0.a.wyx, global1.b.x == 1u));
    let var_3 = vec2<f32>(1487f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(~_wgslsmith_mod_u32(global1.b.x, u_input.e.x), 1397i != _wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_1.x, u_input.b.x), vec3<i32>(-1857i, -26609i, 1i)), true)) + -1000f));
    return ~arg_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(vec4<bool>(global0.e, false, global0.b.x == func_2(func_1(u_input.b.x, vec2<f32>(-862f, 1945f), Struct_1(vec4<bool>(false, true, global1.c.x, true), vec4<u32>(global1.b.x, u_input.e.x, 9465u, global0.b.x), vec4<bool>(false, global1.d, global1.a.x, false), global1.a.x, global0.e), global0.a), all(vec2<bool>(global1.a.x, global0.e)), _wgslsmith_clamp_i32(u_input.b.x, 9796i, 2147483647i)), any(vec4<bool>(true, all(vec3<bool>(global1.a.x, global0.c.x, false)), any(global4[_wgslsmith_index_u32(global0.b.x, 15u)]), global1.a.x))), ~countOneBits(_wgslsmith_clamp_vec4_u32(global0.b, select(vec4<u32>(43887u, 37069u, u_input.a, 27747u), vec4<u32>(global1.b.x, u_input.e.x, global0.b.x, 30552u), global0.c.x), _wgslsmith_sub_vec4_u32(global1.b, vec4<u32>(global0.b.x, u_input.a, 1221u, global0.b.x)))), global0.c, global0.a.x, global1.d);
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2385f, -898f, 954f, 655f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(229f, -732f, 1686f, -522f) + vec4<f32>(1000f, 1000f, -805f, -1399f)))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(ceil(var_0.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(global0.b.x, false, global1.c.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x)))), var_0.x)));
    let var_1 = !global1.a;
    let var_2 = false;
    global1 = func_1(_wgslsmith_dot_vec4_i32(abs(u_input.b), _wgslsmith_clamp_vec4_i32(firstLeadingBit(abs(vec4<i32>(u_input.d, -8539i, u_input.c.x, 1i))), vec4<i32>(-2147483647i, 2147483647i, u_input.c.x, 23714i & u_input.b.x), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.b, u_input.b), u_input.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-424f, 322f))))))), func_1(_wgslsmith_sub_i32((u_input.b.x ^ u_input.d) | 1i, u_input.b.x), var_0.yw, func_1(-u_input.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1274f, -963f))), Struct_1(!vec4<bool>(false, var_1.x, false, var_1.x), vec4<u32>(1u, u_input.a, global1.b.x, 42791u), vec4<bool>(var_1.x, global1.a.x, true, var_2), any(global0.a.ww), var_2), vec4<bool>(select(true, global1.a.x, false), true, true, func_1(2147483647i, var_0.zx, Struct_1(global0.c, vec4<u32>(886u, 1u, 1u, 4294967295u), var_1, global0.d, false), vec4<bool>(var_1.x, var_2, false, var_1.x)).a.x)), func_1(-1i, vec2<f32>(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(-1074f - var_0.x)), Struct_1(vec4<bool>(global1.d, true, true, var_1.x), global2[_wgslsmith_index_u32(global0.b.x, 11u)], select(global1.c, global1.c, var_2), any(vec2<bool>(global1.a.x, var_1.x)), !var_1.x), func_1(-u_input.c.x, _wgslsmith_div_vec2_f32(var_0.xx, var_0.zw), func_1(18250i, vec2<f32>(-1041f, -461f), Struct_1(vec4<bool>(global1.c.x, true, var_2, global1.a.x), global2[_wgslsmith_index_u32(global1.b.x, 11u)], vec4<bool>(global1.e, global1.d, false, true), global0.a.x, global0.c.x), vec4<bool>(var_1.x, false, global0.a.x, false)), var_1).a).c), !(!(!select(vec4<bool>(var_1.x, true, false, global1.a.x), var_1, var_1.x))));
    global4 = array<vec3<bool>, 15>();
    let var_3 = func_1(~32381i, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(1688f)), _wgslsmith_div_f32(var_0.x, 762f)) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 1390f)), vec2<f32>(-308f, var_0.x)))))), func_1(i32(-1i) * -u_input.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(245f, 1260f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1751f, var_0.x) + vec2<f32>(var_0.x, -959f)) - _wgslsmith_f_op_vec2_f32(var_0.yy + var_0.zy))), func_1(_wgslsmith_sub_i32(~u_input.b.x, 2147483647i), _wgslsmith_f_op_vec2_f32(var_0.xy - _wgslsmith_f_op_vec2_f32(-var_0.wz)), func_1(u_input.c.x, _wgslsmith_f_op_vec2_f32(floor(var_0.zw)), func_1(u_input.c.x, vec2<f32>(-1607f, 373f), Struct_1(vec4<bool>(var_2, var_1.x, true, var_2), global0.b, vec4<bool>(true, global1.c.x, global1.a.x, global0.a.x), true, true), vec4<bool>(global1.a.x, false, global1.c.x, false)), !global0.c), vec4<bool>(true, -593f > var_0.x, any(global1.c.ww), u_input.a != global1.b.x)), vec4<bool>(true, var_1.x, (-2147483647i & u_input.b.x) < u_input.b.x, var_1.x)), vec4<bool>(global0.d, true, any(!global0.a), false)).c.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.ywz, func_2(func_1(_wgslsmith_sub_i32(-2147483647i, 0i), _wgslsmith_f_op_vec2_f32(trunc(var_0.wy)), Struct_1(var_1, countOneBits(vec4<u32>(u_input.a, 17696u, global1.b.x, 1u)), !vec4<bool>(global0.e, var_1.x, true, var_1.x), u_input.d == u_input.c.x, true), var_1), all(!vec4<bool>(false, true, false, global1.e)), 1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-226f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) - -411f)));
}

