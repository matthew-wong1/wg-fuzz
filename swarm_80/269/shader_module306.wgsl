struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: i32,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(Struct_2(Struct_1(337f), vec4<f32>(-1140f, -1093f, 427f, -1513f)), Struct_1(722f)), Struct_3(Struct_2(Struct_1(-1000f), vec4<f32>(151f, -114f, -927f, -860f)), Struct_1(-722f)), Struct_3(Struct_2(Struct_1(-1214f), vec4<f32>(-1061f, -996f, 1000f, -973f)), Struct_1(1514f)), Struct_3(Struct_2(Struct_1(1471f), vec4<f32>(-1000f, -167f, 1337f, 124f)), Struct_1(995f)), Struct_3(Struct_2(Struct_1(-499f), vec4<f32>(-634f, 946f, -1000f, -391f)), Struct_1(-509f)), Struct_3(Struct_2(Struct_1(125f), vec4<f32>(-1748f, 104f, -1594f, 1152f)), Struct_1(-1340f)));

var<private> global1: f32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>) -> i32 {
    let var_0 = 671f;
    let var_1 = Struct_1(-612f);
    global0 = array<Struct_3, 6>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2229f + 999f), 218f));
    global0 = array<Struct_3, 6>();
    return arg_0.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: Struct_4) -> Struct_4 {
    var var_0 = vec3<i32>(firstLeadingBit(func_3(u_input.b.yw)), -_wgslsmith_sub_i32(~1i, ~(-69150i)), func_3(abs(_wgslsmith_add_vec2_i32(vec2<i32>(-34110i, arg_2.e), u_input.b.zw >> (vec2<u32>(3221u, u_input.c) % vec2<u32>(32u))))));
    let var_1 = vec3<f32>(2092f, _wgslsmith_f_op_f32(605f + 1259f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.d))), arg_2.d));
    var var_2 = Struct_2(Struct_1(arg_2.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, -255f, var_1.x, var_1.x))) * vec4<f32>(var_1.x, -217f, _wgslsmith_f_op_f32(var_1.x - 1614f), _wgslsmith_f_op_f32(floor(-1000f))))));
    let var_3 = abs(~(_wgslsmith_add_vec4_u32(vec4<u32>(50643u, 4294967295u, u_input.c, u_input.c), vec4<u32>(6628u, arg_1.x, arg_1.x, arg_1.x)) >> (reverseBits(vec4<u32>(u_input.c, arg_1.x, 8345u, u_input.c)) % vec4<u32>(32u))) << (~(~vec4<u32>(1u, 1u, arg_1.x, u_input.c) >> (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, arg_1.x, arg_1.x, 28847u), vec4<u32>(0u, arg_1.x, 1u, u_input.c)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var_0 = u_input.b.yxw;
    return Struct_4(arg_2.a, ~arg_2.b, abs(-_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -2147483647i) << (var_3.yy % vec2<u32>(32u)), -vec2<i32>(1i, 2160i))), _wgslsmith_f_op_f32(-1000f - -336f), u_input.a);
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: f32) -> Struct_2 {
    global0 = array<Struct_3, 6>();
    var var_0 = func_2(!vec4<bool>(-1i != _wgslsmith_mult_i32(7839i, arg_1.e), u_input.a == -60485i, true, true), countOneBits(~(~(~vec3<u32>(0u, 41397u, u_input.c)))), Struct_4(func_2(select(!vec4<bool>(true, true, arg_0, false), vec4<bool>(false, false, false, true), false), _wgslsmith_sub_vec3_u32(vec3<u32>(42688u, u_input.c, u_input.c), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, u_input.c, 16281u), vec3<u32>(u_input.c, u_input.c, u_input.c))), Struct_4(arg_1.a, u_input.b.x, i32(-1i) * -26724i, arg_1.a.a.a, -2147483647i)).a, ~select(_wgslsmith_mod_i32(27772i, arg_1.e), u_input.a, true), 0i, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))))), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-264i, u_input.b.x, u_input.a, u_input.b.x)), u_input.b)));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(911f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d))))) * -812f);
    let var_1 = arg_1.a.b.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(arg_1.a.b.wyz))));
    return var_0.a;
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(min(744f, _wgslsmith_f_op_f32(222f - _wgslsmith_f_op_f32(min(-1335f, -1352f))))));
    return func_4(arg_0, func_2(!select(select(vec4<bool>(false, false, true, arg_2.x), vec4<bool>(false, false, arg_2.x, arg_2.x), true), !vec4<bool>(arg_0, true, arg_2.x, false), !arg_2.x), _wgslsmith_mult_vec3_u32(vec3<u32>(~81752u, 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(1u, 1u))), select(vec3<u32>(u_input.c, u_input.c, u_input.c), select(vec3<u32>(4472u, 1u, 91993u), vec3<u32>(1u, u_input.c, u_input.c), arg_0), !vec3<bool>(false, arg_0, true))), Struct_4(Struct_2(Struct_1(var_0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.a, var_0.a, var_0.a))), u_input.a, -2147483647i, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -605f), 534f)), arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a, var_0.a, all(vec4<bool>(true, arg_2.x, true, true)))) + var_0.a)));
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: f32) -> Struct_1 {
    global0 = array<Struct_3, 6>();
    var var_0 = arg_0.a.b;
    var var_1 = 775f;
    let var_2 = min(vec3<i32>(u_input.b.x, (-20422i ^ select(u_input.a, u_input.a, arg_1)) << (u_input.c % 32u), u_input.b.x), firstLeadingBit(u_input.b.xxw & u_input.b.yzz));
    let var_3 = select(~(~vec2<u32>(36644u, 0u)), vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.c, 22605u, u_input.c)), vec3<u32>(u_input.c, u_input.c, 4294967295u)), u_input.c), countOneBits(firstLeadingBit(max(u_input.c, u_input.c)))), !(!vec2<bool>(-902f < arg_2, select(false, true, false))));
    return arg_0.a.a;
}

fn func_6(arg_0: Struct_1) -> Struct_3 {
    let var_0 = u_input.b.xy;
    var var_1 = true;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a));
    global0 = array<Struct_3, 6>();
    let var_2 = -5319i;
    return Struct_3(Struct_2(arg_0, vec4<f32>(arg_0.a, _wgslsmith_div_f32(_wgslsmith_div_f32(-972f, -614f), _wgslsmith_div_f32(arg_0.a, -1065f)), _wgslsmith_f_op_f32(func_5(Struct_3(Struct_2(arg_0, vec4<f32>(arg_0.a, 1429f, arg_0.a, arg_0.a)), arg_0), false, arg_0.a).a * _wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.a, arg_0.a))))), Struct_1(516f));
}

fn func_7(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_4 {
    global0 = array<Struct_3, 6>();
    let var_0 = Struct_4(func_6(Struct_1(arg_2.a)).a, -205i, _wgslsmith_mult_i32(~(-29799i), -44779i & u_input.b.x), -864f, reverseBits(-2147483647i));
    global1 = _wgslsmith_f_op_f32(abs(arg_1.a.a.a));
    var var_1 = vec3<f32>(arg_0.a.b.x, -987f, -1000f);
    let var_2 = true;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_6(func_5(Struct_3(func_1(false, vec2<i32>(u_input.b.x, u_input.a), vec3<bool>(true, true, false)), Struct_1(-2353f)), true, 672f)), func_6(func_1(false, _wgslsmith_mod_vec2_i32(-u_input.b.xx, vec2<i32>(0i, u_input.a)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))).a), func_2(vec4<bool>(any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), true)), all(vec3<bool>(false, true, true)), true, select(all(vec3<bool>(true, true, true)), true, true)), countOneBits(vec3<u32>(u_input.c, abs(1u), abs(40265u))), Struct_4(Struct_2(func_1(true, u_input.b.wy, vec3<bool>(true, true, false)).a, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1302f, 880f, 668f, 1035f) - vec4<f32>(810f, -1627f, -1769f, -1000f))), min(func_3(vec2<i32>(u_input.b.x, u_input.b.x)), -15839i), -u_input.a, _wgslsmith_f_op_f32(func_5(global0[_wgslsmith_index_u32(33711u, 6u)], true, -958f).a + -2413f), -9790i)).a.a, _wgslsmith_sub_vec3_i32(vec3<i32>(~(i32(-1i) * -53400i), 1096i, _wgslsmith_mult_i32(~u_input.a, ~u_input.a)), ~(u_input.b.yyy >> (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, u_input.c, 1u), vec3<u32>(1u, u_input.c, u_input.c)) % vec3<u32>(32u)))));
    var var_1 = func_4(select(!select(false, true, true), true, !(u_input.c >= u_input.c)) & !(!any(vec2<bool>(true, true))), Struct_4(func_4(all(vec2<bool>(false, false)) != all(vec2<bool>(true, false)), func_2(vec4<bool>(false, true, false, true), vec3<u32>(38224u, u_input.c, u_input.c), func_7(Struct_3(var_0.a, Struct_1(var_0.a.b.x)), global0[_wgslsmith_index_u32(u_input.c, 6u)], Struct_1(var_0.d), vec3<i32>(u_input.b.x, u_input.a, 2547i))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-383f, -303f)))), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.a, 10982i, u_input.b.x, -2147483647i), u_input.b), vec4<i32>(func_3(vec2<i32>(u_input.b.x, 2147483647i)), -1i, min(var_0.c, 0i), var_0.b)), func_7(func_6(func_2(vec4<bool>(false, false, true, true), vec3<u32>(15922u, 27236u, 9461u), Struct_4(Struct_2(var_0.a.a, var_0.a.b), var_0.c, var_0.b, var_0.a.b.x, 0i)).a.a), Struct_3(var_0.a, Struct_1(var_0.d)), var_0.a.a, u_input.b.ywz).c, _wgslsmith_f_op_f32(var_0.a.a.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a.a.a)))), _wgslsmith_clamp_i32(~(-2147483647i), _wgslsmith_add_i32(u_input.a, var_0.e), ~u_input.b.x) & abs(-var_0.b)), var_0.a.a.a);
    var var_2 = _wgslsmith_div_f32(129f, 125f);
    var var_3 = vec3<bool>(!(!(any(vec2<bool>(false, false)) | (u_input.c <= u_input.c))), any(select(vec2<bool>(true, true), vec2<bool>(true, false), true)), !(var_0.c <= -(u_input.a | 1i)));
    var var_4 = Struct_2(Struct_1(var_1.a.a), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1588f, var_0.a.a.a, _wgslsmith_f_op_f32(max(var_0.a.b.x, 716f)), -131f))));
    var var_5 = func_2(!(!vec4<bool>(true, true && var_3.x, true, false)), ~vec3<u32>(abs(~u_input.c), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, 4294967295u), vec3<u32>(4294967295u, 1u, 0u))), Struct_4(func_6(Struct_1(_wgslsmith_f_op_f32(abs(1482f)))).a, 2147483647i, _wgslsmith_mod_i32(-1i, func_3(u_input.b.xz) << (_wgslsmith_mod_u32(53630u, u_input.c) % 32u)), _wgslsmith_f_op_f32(min(-362f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.a)))), var_0.e ^ (1i & u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

