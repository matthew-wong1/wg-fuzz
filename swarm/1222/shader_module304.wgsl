struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
    c: f32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 17386u;

var<private> global1: array<Struct_4, 16>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: f32, arg_1: Struct_4, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    var var_0 = _wgslsmith_add_u32(4294967295u, arg_1.d.x);
    return arg_2.b;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: f32, arg_3: Struct_2) -> Struct_4 {
    return Struct_4(Struct_3(-firstTrailingBit(firstTrailingBit(u_input.a.x)), min(u_input.c.x, 4294967295u), 23365u > _wgslsmith_mod_u32(arg_0.x >> (u_input.c.x % 32u), 4294967295u | arg_1.x)), vec4<bool>(true && !all(vec4<bool>(arg_3.a.x, false, true, true)), false, select(arg_3.a.x, (arg_1.x << (arg_1.x % 32u)) >= arg_1.x, any(arg_3.a)), arg_3.a.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_3.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1751f, arg_3.b.a, arg_3.a.x))), false)))), countOneBits(~vec3<u32>(1u, 1u, ~0u)));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: u32, arg_3: Struct_4) -> bool {
    global0 = select(func_2(func_2(vec2<u32>(75435u, ~1u), u_input.c.xx, 641f, Struct_2(vec3<bool>(arg_1.x, false, true), func_1(arg_3.c, global1[_wgslsmith_index_u32(arg_3.d.x, 16u)], Struct_2(arg_1.zyy, Struct_1(661f, u_input.b)), arg_3.c))).d.zz, select(vec2<u32>(4294967295u, 0u), u_input.c.yy, func_2(_wgslsmith_add_vec2_u32(u_input.c.yw, vec2<u32>(arg_3.d.x, 75368u)), u_input.c.zy ^ arg_3.d.yz, _wgslsmith_f_op_f32(-arg_3.c), Struct_2(vec3<bool>(false, arg_3.b.x, false), Struct_1(-1098f, u_input.a.x))).a.c), -1266f, Struct_2(arg_3.b.wwx, func_1(_wgslsmith_f_op_f32(-arg_3.c), Struct_4(arg_3.a, vec4<bool>(arg_3.a.c, arg_3.a.c, arg_3.a.c, arg_3.a.c), 1443f, arg_3.d), Struct_2(vec3<bool>(arg_3.b.x, false, true), Struct_1(arg_3.c, 2147483647i)), arg_3.c))).a.b, 6185u, arg_3.b.x);
    let var_0 = Struct_2(select(!func_2(~vec2<u32>(1u, arg_0), ~u_input.c.yw, _wgslsmith_f_op_f32(ceil(arg_3.c)), Struct_2(vec3<bool>(arg_1.x, arg_3.b.x, false), Struct_1(arg_3.c, 264i))).b.xzy, func_2(~_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, arg_0), u_input.c.ww), vec2<u32>(4294967295u, _wgslsmith_add_u32(0u, arg_3.a.b)), 519f, Struct_2(!arg_3.b.xxy, Struct_1(arg_3.c, arg_3.a.a))).b.yxz, arg_3.b.wxw), Struct_1(arg_3.c, ~(29993i | func_2(vec2<u32>(0u, 4294967295u), vec2<u32>(arg_3.d.x, arg_3.a.b), arg_3.c, Struct_2(vec3<bool>(arg_3.a.c, arg_3.a.c, arg_3.a.c), Struct_1(-2456f, arg_3.a.a))).a.a)));
    var var_1 = arg_3;
    global0 = firstLeadingBit(_wgslsmith_sub_u32(arg_2, _wgslsmith_add_u32(reverseBits(46094u), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_2, arg_2, var_1.a.b)), u_input.c.wwx))));
    let var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-273f * var_0.b.a), -302f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.b.a))), _wgslsmith_f_op_f32(sign(706f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1303f, var_1.c, 1485f), vec3<f32>(arg_3.c, 1664f, var_0.b.a))) + vec3<f32>(897f, _wgslsmith_f_op_f32(-var_1.c), -628f)), select(false, false | var_1.a.c, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.b.a, 228f, -1654f), vec3<f32>(1555f, 300f, 972f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.c, arg_3.c, 1000f))), var_0.a)))));
    return any(!(!arg_3.b.ww));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: bool, arg_3: i32) -> f32 {
    global1 = array<Struct_4, 16>();
    global0 = u_input.c.x;
    var var_0 = Struct_2(vec3<bool>(_wgslsmith_div_f32(676f, -103f) < arg_0.a, ~u_input.c.x < 1u, true), Struct_1(_wgslsmith_f_op_f32(abs(-1119f)), -2147483647i | firstTrailingBit(_wgslsmith_dot_vec3_i32(u_input.d.xww, vec3<i32>(-34474i, u_input.d.x, arg_3)))));
    global0 = ~u_input.c.x & 4294967295u;
    var var_1 = ~firstLeadingBit(~_wgslsmith_add_vec3_u32(u_input.c.xyy, vec3<u32>(u_input.c.x, arg_1.a.b, arg_1.d.x)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.b.a, -691f)) - _wgslsmith_div_f32(288f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)))), arg_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(-313f, _wgslsmith_f_op_f32(trunc(-1224f)), _wgslsmith_f_op_f32(465f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1(-298f, Struct_4(Struct_3(-2147483647i, 1u, true), vec4<bool>(false, true, true, false), -2427f, u_input.c.xyx), Struct_2(vec3<bool>(true, false, false), Struct_1(943f, -6402i)), -118f), func_2(u_input.c.wx, vec2<u32>(u_input.c.x, u_input.c.x), -267f, Struct_2(vec3<bool>(false, true, true), Struct_1(-452f, u_input.b))), func_3(4294967295u, vec4<bool>(true, true, false, true), u_input.c.x, global1[_wgslsmith_index_u32(0u, 16u)]), _wgslsmith_sub_i32(u_input.b, u_input.d.x))))));
    var var_1 = vec2<f32>(var_0.x, 1513f);
    var var_2 = _wgslsmith_dot_vec3_i32(u_input.d.zyw, _wgslsmith_div_vec3_i32(u_input.d.wzz, ~(~vec3<i32>(u_input.e.x, -14734i, u_input.e.x))));
    global0 = countOneBits(u_input.c.x);
    var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1711f, -588f, var_0.x)) + vec3<f32>(var_1.x, -1140f, var_1.x))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, 1236f, -176f)))))), select(true, true && any(vec4<bool>(false, true, true, false)), true))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-874f, _wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(var_0.x - var_1.x)) + vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(877f * 283f))), vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + -367f)), var_0.x))), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, any(vec2<bool>(true, true))), !(var_0.x < var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(func_2(_wgslsmith_mod_vec2_u32(max(u_input.c.wz, ~vec2<u32>(u_input.c.x, 40085u)), func_2(u_input.c.zz, ~vec2<u32>(u_input.c.x, 1u), 903f, Struct_2(vec3<bool>(true, false, false), Struct_1(var_1.x, u_input.d.x))).d.xz), firstTrailingBit(select(~u_input.c.yw, u_input.c.zx, true)), -1186f, Struct_2(vec3<bool>(true, u_input.c.x <= u_input.c.x, 589f <= var_1.x), func_1(var_0.x, global1[_wgslsmith_index_u32(~0u, 16u)], Struct_2(vec3<bool>(true, false, false), Struct_1(var_1.x, -1i)), _wgslsmith_f_op_f32(sign(1158f))))).a.b, vec4<f32>(-2201f, -720f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-308f, -614f), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(261f, 788f))), false)), -1049f), ~(~func_2(vec2<u32>(u_input.c.x, 11961u), vec2<u32>(u_input.c.x, u_input.c.x), _wgslsmith_f_op_f32(-var_0.x), Struct_2(vec3<bool>(false, false, true), Struct_1(-585f, u_input.e.x))).d.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1206f, var_1.x, _wgslsmith_f_op_f32(-var_1.x), var_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, 1048f, -283f, 435f)))))) + _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, -1529f, func_1(var_0.x, Struct_4(Struct_3(u_input.b, 18791u, true), vec4<bool>(false, false, false, true), -135f, vec3<u32>(63714u, 1u, 26104u)), Struct_2(vec3<bool>(true, true, true), Struct_1(-836f, 12834i)), 698f).a, 1347f), vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_0.x), -347f, -205f))));
}

