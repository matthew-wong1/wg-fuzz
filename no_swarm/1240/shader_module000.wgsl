struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12>;

var<private> global1: Struct_1 = Struct_1(572u);

var<private> global2: array<vec3<i32>, 15>;

var<private> global3: vec2<bool>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: vec3<f32>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_mult_u32(countOneBits(_wgslsmith_dot_vec2_u32(~arg_0.xw, arg_0.xz ^ arg_0.wz)), arg_1));
    let var_1 = var_0;
    let var_2 = vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(36432i, -u_input.c.x), u_input.c.x) >> (u_input.b % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, -59130i, u_input.c.x), vec3<i32>(u_input.c.x, -36938i, u_input.c.x)), -2147483647i, -26209i, max(u_input.c.x, 2147483647i)) | countOneBits(_wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x))), abs(vec4<i32>(~u_input.c.x, 1i, -u_input.c.x, u_input.c.x))), -countOneBits(max(7377i, -25738i)));
    var var_3 = Struct_2(max(~0u, _wgslsmith_add_u32(reverseBits(0u), var_1.a)), u_input.c, var_2.x, Struct_1(_wgslsmith_div_u32(firstTrailingBit(~1u), 1u)), Struct_1(abs(var_0.a)));
    let var_4 = max(~(~(~(~vec3<u32>(var_0.a, var_0.a, global0[_wgslsmith_index_u32(var_0.a, 12u)])))), ~arg_0.wxy);
    return 4294967295u;
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1111f));
    var_0 = _wgslsmith_f_op_f32(select(138f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2196f) + -773f), 1603f)), all(vec3<bool>(false | global3.x, abs(54668u) != func_3(vec4<u32>(1u, 17548u, 11038u, u_input.b), 20019u, vec3<f32>(-392f, -333f, -346f)), true))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-326f - _wgslsmith_f_op_f32(floor(773f))))) + 582f);
    var var_1 = vec3<bool>(any(select(!(!vec2<bool>(global3.x, global3.x)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(global3.x, global3.x), vec2<bool>(global3.x, global3.x)))), select(any(!(!vec4<bool>(true, false, false, global3.x))), global3.x, global3.x), all(!select(vec3<bool>(true, true, true), !vec3<bool>(false, global3.x, global3.x), all(vec3<bool>(true, false, false)))));
    var var_2 = -abs(firstLeadingBit(_wgslsmith_add_vec2_i32(u_input.c.ww, _wgslsmith_sub_vec2_i32(u_input.c.ww, vec2<i32>(u_input.c.x, u_input.c.x)))));
    return 1u;
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(round(arg_2.a.x));
    var var_1 = arg_2.d.x <= _wgslsmith_div_u32(1u ^ func_2(), _wgslsmith_clamp_u32(1u, ~(~u_input.a), ~_wgslsmith_add_u32(104577u, global1.a)));
    var var_2 = Struct_1(0u);
    let var_3 = select(!select(select(!vec3<bool>(false, true, global3.x), vec3<bool>(global3.x, global3.x, true), arg_0.x > arg_0.x), !(!vec3<bool>(true, false, global3.x)), !(!vec3<bool>(false, false, global3.x))), select(!vec3<bool>(!global3.x, true, false), vec3<bool>(false, false, select(global3.x, arg_2.c != 0i, any(vec4<bool>(global3.x, global3.x, global3.x, global3.x)))), vec3<bool>(!(!global3.x), true, all(vec4<bool>(false, false, global3.x, global3.x)))), !(!(!any(vec3<bool>(global3.x, true, true)))));
    var var_4 = arg_2;
    return Struct_2(global1.a, -((u_input.c << (min(vec4<u32>(4294967295u, var_4.d.x, global1.a, 95955u), vec4<u32>(0u, arg_2.d.x, u_input.a, 13837u)) % vec4<u32>(32u))) | _wgslsmith_add_vec4_i32(-vec4<i32>(arg_2.c, arg_2.c, var_4.c, arg_2.b.x), u_input.c)), var_4.c, Struct_1(~(~(18091u & arg_2.d.x))), Struct_1(~select(arg_2.d.x, ~0u, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~1u;
    global2 = array<vec3<i32>, 15>();
    var var_1 = (i32(-1i) * -6916i) >> (u_input.a % 32u);
    var var_2 = func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(640f, 258f, 127f, -1000f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, 695f, 1164f, -703f))), vec4<f32>(-496f, 1366f, -794f, -1894f), !vec4<bool>(true, true, global3.x, true))))), _wgslsmith_f_op_f32(f32(-1f) * -1411f), Struct_3(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1822f - -1307f), -745f, select(false, false, global3.x))), -1261f, _wgslsmith_f_op_f32(-1f)), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -u_input.c.zw, u_input.c.yw), -_wgslsmith_mod_i32(u_input.c.x, 2147483647i), vec3<u32>(abs(_wgslsmith_mod_u32(global1.a, 4294967295u)), global0[_wgslsmith_index_u32(17795u, 12u)] | u_input.b, ~max(38017u, 11536u))));
    let var_3 = func_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1729f + -496f) + _wgslsmith_f_op_f32(f32(-1f) * -1305f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -278f)), _wgslsmith_f_op_f32(max(124f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-342f - -378f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-143f)), 2229f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -602f))))) - -1618f), Struct_3(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(1160f, -1238f), _wgslsmith_f_op_f32(-1000f - 912f), -2113f))), ~_wgslsmith_mod_vec2_i32(vec2<i32>(var_2.b.x, 1i), var_2.b.wy), ~(-2270i), firstLeadingBit(~select(vec3<u32>(var_2.a, 1u, 1u), vec3<u32>(1u, u_input.a, 1u), vec3<bool>(false, false, global3.x)))));
    var var_4 = Struct_3(vec3<f32>(1f, 1f, 1f), -_wgslsmith_mod_vec2_i32(-(~var_2.b.yx), countOneBits(-vec2<i32>(-25522i, -34701i))), u_input.c.x, ~_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(var_2.d.a, 1u), firstLeadingBit(u_input.a), 15039u), _wgslsmith_div_vec3_u32(vec3<u32>(0u, var_2.d.a, global1.a), reverseBits(vec3<u32>(global1.a, u_input.b, 9980u)))));
    let var_5 = select(select(vec4<bool>(global3.x && true, true, true, false), select(select(!vec4<bool>(true, false, false, global3.x), vec4<bool>(global3.x, false, false, true), select(vec4<bool>(global3.x, global3.x, global3.x, false), vec4<bool>(false, false, global3.x, global3.x), vec4<bool>(false, global3.x, true, global3.x))), vec4<bool>(true, !global3.x, false, true), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_4.a.x, var_4.a.x, true))) <= _wgslsmith_f_op_f32(select(932f, -271f, var_3.c == -56929i))), !(!(!vec4<bool>(global3.x, false, global3.x, global3.x))), select(select(!vec4<bool>(global3.x, true, false, false), !vec4<bool>(global3.x, global3.x, global3.x, true), vec4<bool>(var_4.b.x < u_input.c.x, global3.x, true, true)), !vec4<bool>(global3.x, global3.x, any(vec2<bool>(false, false)), false), select(select(vec4<bool>(false, false, false, global3.x), select(vec4<bool>(false, true, true, true), vec4<bool>(global3.x, true, global3.x, true), vec4<bool>(true, global3.x, global3.x, false)), !vec4<bool>(global3.x, false, global3.x, global3.x)), !select(vec4<bool>(global3.x, global3.x, false, global3.x), vec4<bool>(true, true, true, global3.x), false), select(select(vec4<bool>(global3.x, true, false, false), vec4<bool>(global3.x, true, false, false), true), vec4<bool>(true, false, true, global3.x), vec4<bool>(global3.x, false, false, global3.x)))));
    let var_6 = Struct_3(vec3<f32>(-2091f, var_4.a.x, 1045f), -vec2<i32>(1i, ~var_2.b.x), var_4.b.x << (select(1u, var_4.d.x | ~48818u, any(!vec3<bool>(var_5.x, true, false))) % 32u), firstTrailingBit(vec3<u32>(~global0[_wgslsmith_index_u32(u_input.a, 12u)], min(27715u, 1796u), ~1u) & (var_4.d << (var_4.d % vec3<u32>(32u)))));
    let var_7 = Struct_1(_wgslsmith_div_u32(~var_4.d.x, 28686u));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.x, var_6.a);
}

