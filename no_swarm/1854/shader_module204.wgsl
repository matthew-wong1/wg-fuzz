struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_2,
    d: vec3<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 11>;

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(true, true, true, false)), Struct_1(vec4<bool>(false, false, false, false)), Struct_1(vec4<bool>(true, true, true, false)), Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(false, true, false, true)), Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(true, true, true, false)));

var<private> global2: array<vec4<u32>, 20> = array<vec4<u32>, 20>(vec4<u32>(4294967295u, 4294967295u, 70183u, 4278u), vec4<u32>(1u, 38310u, 0u, 52618u), vec4<u32>(15667u, 0u, 4294967295u, 16481u), vec4<u32>(4664u, 70445u, 18205u, 4294967295u), vec4<u32>(4511u, 4856u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 130108u, 3393u, 4294967295u), vec4<u32>(0u, 17700u, 89747u, 51355u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 10379u), vec4<u32>(69858u, 0u, 1u, 1u), vec4<u32>(13617u, 4294967295u, 34007u, 79406u), vec4<u32>(25281u, 0u, 2240u, 90513u), vec4<u32>(0u, 4294967295u, 4294967295u, 1u), vec4<u32>(4294967295u, 5852u, 15140u, 0u), vec4<u32>(0u, 2039u, 75277u, 4294967295u), vec4<u32>(4294967295u, 0u, 29938u, 31061u), vec4<u32>(1u, 0u, 0u, 4294967295u), vec4<u32>(1u, 4294967295u, 0u, 0u), vec4<u32>(4294967295u, 15884u, 20742u, 0u), vec4<u32>(4294967295u, 0u, 1u, 82813u), vec4<u32>(85279u, 18896u, 1u, 54052u));

var<private> global3: array<i32, 30>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: i32, arg_3: Struct_2) -> f32 {
    global0 = array<Struct_3, 11>();
    global3 = array<i32, 30>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, arg_1.x, 1113f), vec3<f32>(516f, arg_1.x, -1119f)) + _wgslsmith_div_vec3_f32(arg_1.zzw, arg_1.ywy)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_1.wyw)) + _wgslsmith_f_op_vec3_f32(-arg_1.zwx))))));
    let var_1 = false;
    var var_2 = any(!(!arg_3.b.xz));
    return arg_1.x;
}

fn func_3() -> vec4<u32> {
    global3 = array<i32, 30>();
    var var_0 = vec4<bool>(-_wgslsmith_sub_i32(u_input.b >> (4294967295u % 32u), global3[_wgslsmith_index_u32(0u, 30u)]) >= ~(-60303i), 1u < _wgslsmith_add_u32(~_wgslsmith_mod_u32(10266u, 1u), countOneBits(u_input.c)), true, true);
    var var_1 = vec4<u32>(u_input.d, _wgslsmith_clamp_u32(~(12796u | u_input.d), 36891u, reverseBits(u_input.d)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, _wgslsmith_mod_u32(1u, 1u)) >> (vec2<u32>(~20149u, ~45510u) % vec2<u32>(32u)), vec2<u32>(4294967295u, 0u) >> (select(abs(vec2<u32>(u_input.d, u_input.d)), reverseBits(vec2<u32>(23803u, u_input.c)), true) % vec2<u32>(32u))), firstTrailingBit(~(_wgslsmith_clamp_u32(u_input.d, u_input.d, 1u) >> (4294967295u % 32u))));
    var_0 = vec4<bool>(var_0.x, any(!(!select(vec2<bool>(var_0.x, var_0.x), var_0.zz, var_0.x))), true, any(!select(vec3<bool>(var_0.x, true, var_0.x), select(vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.xyx, vec3<bool>(var_0.x, var_0.x, var_0.x)), !var_0.x)));
    global3 = array<i32, 30>();
    return _wgslsmith_div_vec4_u32(global2[_wgslsmith_index_u32(~(~(~4294967295u)), 20u)], reverseBits(vec4<u32>(reverseBits(1u), 25491u, 4294967295u, _wgslsmith_add_u32(44744u, var_1.x & 4294967295u))));
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_4) -> vec2<bool> {
    let var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(~_wgslsmith_add_u32(abs(u_input.d), ~12683u), ~(~1u), ~u_input.c), _wgslsmith_div_vec3_u32(~abs(vec3<u32>(28876u, 14056u, 4294967295u) & vec3<u32>(28717u, u_input.c, 57783u)), vec3<u32>(_wgslsmith_mod_u32(0u, arg_1) << (4294967295u % 32u), ~select(27813u, 1u, true), 0u)));
    return select(arg_2.a.a.zw, !(!select(arg_2.a.a.yx, vec2<bool>(false, arg_2.a.a.x), select(vec2<bool>(false, false), vec2<bool>(arg_2.a.a.x, false), arg_0.x))), select(!(!(!vec2<bool>(arg_0.x, arg_2.a.a.x))), !select(!vec2<bool>(false, arg_2.a.a.x), vec2<bool>(false, arg_0.x), !vec2<bool>(arg_2.a.a.x, arg_2.a.a.x)), select(!select(vec2<bool>(true, false), vec2<bool>(arg_2.a.a.x, true), false), !vec2<bool>(false, arg_0.x), vec2<bool>(any(vec4<bool>(arg_0.x, arg_2.a.a.x, false, true)), true))));
}

fn func_2(arg_0: Struct_2) -> vec2<u32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-432f))), -979f, _wgslsmith_f_op_f32(-2054f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(437f, -450f)) * _wgslsmith_f_op_f32(-792f + 201f))));
    global0 = array<Struct_3, 11>();
    let var_1 = global0[_wgslsmith_index_u32(u_input.d, 11u)];
    var var_2 = select(func_4(vec3<bool>(var_1.c.b.x, !(var_0.x == -113f), all(select(vec4<bool>(arg_0.b.x, var_1.c.b.x, var_1.c.b.x, var_1.e.b.x), vec4<bool>(true, false, true, arg_0.b.x), vec4<bool>(true, false, true, true)))), select(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.d.x, 4294967295u), ~vec3<u32>(0u, var_1.d.x, var_1.d.x)), 62128u, !(var_0.x >= 785f)), Struct_4(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~var_1.d, vec3<u32>(1u, 22514u, 57016u)), 16u)], func_3())), vec2<bool>(all(vec4<bool>(var_1.e.b.x, true, true, false)), u_input.a.x != -3338i), any(!func_4(vec3<bool>(true, true, false), 2857u, Struct_4(Struct_1(vec4<bool>(var_1.c.b.x, false, true, true)), global2[_wgslsmith_index_u32(0u, 20u)]))));
    let var_3 = var_2.x;
    return vec2<u32>(firstLeadingBit(~1u), _wgslsmith_div_u32(~(~(~1u)), var_1.d.x ^ 69819u));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<u32>) -> vec4<bool> {
    global1 = array<Struct_1, 16>();
    global0 = array<Struct_3, 11>();
    global1 = array<Struct_1, 16>();
    global3 = array<i32, 30>();
    var var_0 = _wgslsmith_f_op_f32(abs(arg_0.b));
    return select(!(!vec4<bool>(39135i <= u_input.b, !arg_0.e.b.x, all(vec4<bool>(true, false, true, arg_0.e.b.x)), arg_0.e.b.x)), select(select(select(vec4<bool>(true, false, false, arg_0.c.b.x), !vec4<bool>(arg_0.c.b.x, arg_0.c.b.x, arg_0.c.b.x, arg_0.c.b.x), arg_0.c.b.x || arg_0.c.b.x), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, arg_0.e.b.x), arg_0.c.b.x), select(vec4<bool>(arg_0.e.b.x, arg_0.c.b.x, false, arg_0.c.b.x), vec4<bool>(false, arg_0.e.b.x, false, false), vec4<bool>(false, true, arg_0.e.b.x, arg_0.c.b.x)), vec4<bool>(true, true, arg_0.e.b.x, true)), vec4<bool>(arg_0.e.b.x, true, true, all(vec4<bool>(arg_0.c.b.x, false, true, false)))), vec4<bool>(false, true, false, true), vec4<bool>(any(!vec4<bool>(false, arg_0.c.b.x, false, true)), true, all(select(vec3<bool>(arg_0.e.b.x, false, false), arg_0.c.b, vec3<bool>(arg_0.c.b.x, true, arg_0.c.b.x))), true)), true);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 30>();
    let var_0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -686f))))), 1285f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-208f, 1f, true))), _wgslsmith_f_op_f32(-1000f * -339f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(func_1(vec2<u32>(u_input.c, u_input.d), vec4<f32>(2072f, 1709f, -1179f, -301f), 11877i, Struct_2(vec2<i32>(global3[_wgslsmith_index_u32(68486u, 30u)], 1i), vec3<bool>(false, false, false)))), _wgslsmith_f_op_f32(f32(-1f) * -1472f), -326f, -208f))))));
    var var_1 = Struct_1(func_5(global0[_wgslsmith_index_u32(1u, 11u)], _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.c, 27783u), ~vec2<u32>(u_input.d, 18047u)), func_2(Struct_2(vec2<i32>(u_input.a.x, 61684i), vec3<bool>(false, false, true))), ~abs(vec2<u32>(u_input.d, u_input.d)))));
    var var_2 = !vec3<bool>(any(vec2<bool>(u_input.b >= 1i, any(vec2<bool>(var_1.a.x, var_1.a.x)))), any(select(!var_1.a.yzw, vec3<bool>(false, false, var_1.a.x), true)), false);
    global1 = array<Struct_1, 16>();
    let var_3 = vec3<i32>(max(~_wgslsmith_sub_i32(_wgslsmith_add_i32(51746i, u_input.a.x), -51447i), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u << (u_input.c % 32u), func_2(Struct_2(vec2<i32>(-13828i, 0i), var_1.a.zxz)).x), 30u)]), abs(1i), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.b, -8967i), _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(u_input.d, 30u)], -2147483647i), firstTrailingBit(u_input.a.x), min(1i, global3[_wgslsmith_index_u32(8440u, 30u)])) << (~vec4<u32>(4294967295u, 4294967295u, u_input.c, 0u) % vec4<u32>(32u)), ~vec4<i32>(-47753i >> (u_input.d % 32u), u_input.b, _wgslsmith_mult_i32(-3494i, u_input.b), ~global3[_wgslsmith_index_u32(u_input.d, 30u)])));
    var var_4 = !(!select(!vec3<bool>(var_1.a.x, false, var_2.x), !var_1.a.wyy, var_1.a.yyw));
    let var_5 = _wgslsmith_f_op_vec2_f32(round(var_0.zz));
    var var_6 = Struct_3(var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(step(var_0.x, var_5.x))) - _wgslsmith_f_op_f32(ceil(-515f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), Struct_2(-var_3.zy, var_1.a.yzz), _wgslsmith_clamp_vec3_u32(min(~abs(vec3<u32>(u_input.c, 0u, 0u)), _wgslsmith_mod_vec3_u32(vec3<u32>(4546u, 39044u, 42399u), ~vec3<u32>(u_input.c, 0u, 1u))), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(37535u, u_input.c), 4294967295u), u_input.c, abs(0u)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.d, u_input.d, u_input.d), max(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, u_input.c, 4294967295u), vec3<u32>(u_input.c, u_input.d, u_input.d)), firstLeadingBit(vec3<u32>(u_input.d, 53394u, u_input.c))), vec3<u32>(select(0u, u_input.c, var_4.x), u_input.d, u_input.d << (1u % 32u)))), Struct_2(vec2<i32>(1i, 1i), select(var_1.a.wzx, var_1.a.zzz, var_4.x)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<i32>(select(firstLeadingBit(26043i), u_input.b, any(vec2<bool>(var_4.x, true))), -22488i, global3[_wgslsmith_index_u32(~var_6.d.x << (u_input.d % 32u), 30u)], -_wgslsmith_div_i32(35922i, var_3.x))), vec3<i32>(-(abs(u_input.b) & ~var_6.c.a.x), 18261i ^ var_3.x, select(abs(1i << (0u % 32u)), -14827i, !var_1.a.x)), 4294967295u);
}

