struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
    b: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
    c: vec2<u32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: f32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<bool, 20>;

var<private> global2: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_5, arg_1: bool, arg_2: Struct_4) -> i32 {
    let var_0 = Struct_2(true);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-453f + arg_0.b)));
    var var_2 = Struct_5(abs(min(vec3<u32>(arg_0.a.x, arg_2.c.x ^ 4294967295u, ~0u), vec3<u32>(1u, ~26370u, 43941u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1544f), arg_0.c.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-581f, arg_0.c.x, arg_0.b) - vec3<f32>(arg_0.c.x, -567f, 1409f)) - arg_0.c))));
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.c.xy), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(925f, var_2.b)))), _wgslsmith_f_op_vec2_f32(min(arg_0.c.zy, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, -907f) + vec2<f32>(arg_0.c.x, 218f))))));
    var var_4 = arg_2.a.x;
    return u_input.a;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: Struct_2) -> u32 {
    global1 = array<bool, 20>();
    let var_0 = arg_0.x;
    var var_1 = Struct_5(~vec3<u32>(global0.x, u_input.c.x, 1u), -569f, _wgslsmith_f_op_vec3_f32(arg_0 - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(arg_0)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -1000f, 1000f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.zxx)))));
    var var_2 = -firstLeadingBit(~_wgslsmith_mult_i32(func_3(Struct_5(var_1.a, var_0, var_1.c), true, Struct_4(vec4<bool>(false, false, true, global1[_wgslsmith_index_u32(global0.x, 20u)]), 48787i, vec2<u32>(1u, global0.x))), abs(-2147483647i)));
    var var_3 = Struct_1(var_1.a.yx, ~(~var_1.a), vec4<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1078f, arg_1.x)), _wgslsmith_f_op_f32(sign(arg_1.x)), _wgslsmith_f_op_f32(-var_0)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -595f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(227f)), _wgslsmith_f_op_f32(-983f - 1589f)))))));
    return 18681u;
}

fn func_1(arg_0: Struct_4) -> Struct_3 {
    let var_0 = 1000f;
    var var_1 = !vec3<bool>(true, !global1[_wgslsmith_index_u32(max(~u_input.c.x, func_2(vec3<f32>(443f, var_0, -1389f), vec4<f32>(-1000f, var_0, var_0, var_0), global2[_wgslsmith_index_u32(0u, 11u)])), 20u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.c.x, abs(1u)), 20u)]);
    let var_2 = Struct_1(vec2<u32>(_wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(u_input.b.yzz, vec3<u32>(arg_0.c.x, global0.x, arg_0.c.x)), u_input.b.zww), u_input.c.x), ~(~u_input.b.xxy), vec4<f32>(161f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(f32(-1f) * -896f)))), var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2089f * var_0) + _wgslsmith_f_op_f32(-var_0)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * var_0) - _wgslsmith_f_op_f32(-var_0)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, 1f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0, -1365f), vec2<f32>(var_0, var_0))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0, var_0), vec2<f32>(268f, var_0)))))));
    global2 = array<Struct_2, 11>();
    var var_3 = !arg_0.a;
    return Struct_3(min(0u, 4294967295u), false);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(min(1110f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -485f)))), -1403f)));
    let var_1 = -u_input.a;
    var var_2 = Struct_1(vec2<u32>(_wgslsmith_dot_vec2_u32(firstLeadingBit(_wgslsmith_sub_vec2_u32(u_input.b.wz, u_input.b.yz)), select(~u_input.c, u_input.b.zw, true)), 0u), ~(~_wgslsmith_mult_vec3_u32(u_input.b.zwx, u_input.b.ywz)), vec4<f32>(653f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(379f, 1585f)), 1481f, true))), -1747f), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1235f + _wgslsmith_f_op_f32(select(-856f, -161f, arg_1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1222f * -1066f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(722f, 863f))))));
    let var_3 = u_input.b;
    var var_4 = arg_1.a;
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(_wgslsmith_sub_vec2_u32(vec2<u32>(30217u, global0.x), vec2<u32>(~_wgslsmith_add_u32(u_input.b.x, global0.x), ~global0.x)), vec2<u32>(global0.x >> (~countOneBits(u_input.c.x) % 32u), 1u), select(!(!(!vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 20u)]))), !(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(global1[_wgslsmith_index_u32(global0.x, 20u)], global1[_wgslsmith_index_u32(u_input.b.x, 20u)]))), !all(select(vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 20u)], true), vec3<bool>(false, false, global1[_wgslsmith_index_u32(55264u, 20u)]), vec3<bool>(global1[_wgslsmith_index_u32(global0.x, 20u)], false, true)))));
    global0 = ~vec2<u32>(global0.x, _wgslsmith_dot_vec3_u32(func_4(!vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(70987u, 20u)], global1[_wgslsmith_index_u32(12016u, 20u)], global1[_wgslsmith_index_u32(u_input.c.x, 20u)]), func_1(Struct_4(vec4<bool>(global1[_wgslsmith_index_u32(global0.x, 20u)], true, global1[_wgslsmith_index_u32(u_input.b.x, 20u)], global1[_wgslsmith_index_u32(67736u, 20u)]), u_input.a, u_input.b.xy))), u_input.b.zxx));
    var var_0 = u_input.a;
    var var_1 = u_input.a;
    var var_2 = Struct_1(_wgslsmith_div_vec2_u32(firstTrailingBit(min(u_input.c, abs(vec2<u32>(62107u, 0u)))), ~reverseBits(u_input.c)), vec3<u32>(firstLeadingBit(~func_4(vec4<bool>(global1[_wgslsmith_index_u32(0u, 20u)], true, global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(4294967295u, 20u)]), Struct_3(41038u, global1[_wgslsmith_index_u32(0u, 20u)])).x), _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(4294967295u, 1u, 12598u), _wgslsmith_sub_u32(57876u, 0u)), ~firstTrailingBit(u_input.b.x)), func_4(!(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 20u)], global1[_wgslsmith_index_u32(u_input.b.x, 20u)], false, false)), Struct_3(_wgslsmith_sub_u32(u_input.c.x, 69229u), global1[_wgslsmith_index_u32(~4294967295u, 20u)])).x), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(568f, -1988f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(784f, 1299f))))) * vec2<f32>(-498f, _wgslsmith_div_f32(-981f, -534f))));
    var_2 = Struct_1(~(select(u_input.c, u_input.b.wy, global1[_wgslsmith_index_u32(0u, 20u)]) | u_input.b.zw) << (_wgslsmith_mod_vec2_u32(u_input.b.xx, _wgslsmith_mult_vec2_u32(~vec2<u32>(6602u, var_2.a.x), _wgslsmith_mult_vec2_u32(var_2.b.zy, u_input.b.yy))) % vec2<u32>(32u)), var_2.b, var_2.c, var_2.d);
    var_2 = Struct_1(select(vec2<u32>(0u, ~1u), select(vec2<u32>(_wgslsmith_mult_u32(var_2.a.x, var_2.a.x), max(u_input.c.x, 23463u)), _wgslsmith_sub_vec2_u32(var_2.a, var_2.b.zz), !select(vec2<bool>(true, global1[_wgslsmith_index_u32(35456u, 20u)]), vec2<bool>(global1[_wgslsmith_index_u32(global0.x, 20u)], global1[_wgslsmith_index_u32(global0.x, 20u)]), true)), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(~37579u, countOneBits(global0.x)), _wgslsmith_div_u32(abs(global0.x), ~u_input.c.x)), 20u)]), ~func_4(select(!vec4<bool>(global1[_wgslsmith_index_u32(48666u, 20u)], true, global1[_wgslsmith_index_u32(var_2.a.x, 20u)], false), vec4<bool>(global1[_wgslsmith_index_u32(17583u, 20u)], global1[_wgslsmith_index_u32(u_input.c.x, 20u)], global1[_wgslsmith_index_u32(0u, 20u)], false), select(vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(global0.x, 20u)], true), vec4<bool>(false, true, false, true), vec4<bool>(true, global1[_wgslsmith_index_u32(var_2.b.x, 20u)], false, false))), Struct_3(reverseBits(global0.x), true)), var_2.c, var_2.c.yy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(var_2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(666f - -236f) * -246f)), true)), u_input.a, _wgslsmith_f_op_f32(-var_2.c.x), u_input.b);
}

