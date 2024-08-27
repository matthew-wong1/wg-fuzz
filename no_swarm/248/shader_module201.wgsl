struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: f32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32) -> vec4<i32> {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1142f))))))));
    var var_0 = select(u_input.b.x, min(arg_1, 40974u), all(vec3<bool>(arg_0.x, all(select(vec2<bool>(false, true), arg_0.yx, true)), !(!global0.x))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(955f * 246f), -539f, -1431f, _wgslsmith_f_op_f32(select(-1000f, 161f, arg_0.x))))), _wgslsmith_f_op_f32(f32(-1f) * -252f), u_input.c.x, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-973f, -339f, -1170f, 2498f)))));
    var_1 = Struct_2(var_1.a, 275f, ~u_input.a.x, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_1.b)), _wgslsmith_f_op_f32(trunc(684f)), 559f, var_1.d.a.x) * _wgslsmith_f_op_vec4_f32(select(var_1.a.a, var_1.d.a, true)))));
    var var_2 = var_1.c;
    return max(~vec4<i32>(_wgslsmith_div_i32(var_1.c, 34544i), i32(-1i) * -var_1.c, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -11370i, var_1.c), vec4<i32>(-1i, -2147483647i, u_input.c.x, -11323i))), -(~var_1.c)), select(vec4<i32>(u_input.c.x, 1i, u_input.c.x, firstTrailingBit(var_1.c)) & ~(vec4<i32>(u_input.c.x, 21655i, 38085i, var_1.c) | vec4<i32>(u_input.c.x, u_input.a.x, -2147483647i, 41721i)), ~(~vec4<i32>(-1i, u_input.c.x, u_input.c.x, u_input.c.x)) & -abs(vec4<i32>(u_input.a.x, var_1.c, -70721i, -1i)), (~u_input.d > (arg_1 | 50277u)) == true));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec4_i32(max(vec4<i32>(19282i, _wgslsmith_div_i32(-22112i, 1i), u_input.a.x, -32463i), countOneBits(-vec4<i32>(u_input.a.x, arg_1.c, 2147483647i, arg_1.c))), _wgslsmith_add_vec4_i32(func_3(select(vec3<bool>(false, global0.x, true), vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, true, global0.x)), _wgslsmith_div_u32(39750u, arg_0.x)), -(vec4<i32>(1i, u_input.a.x, 0i, -4773i) & vec4<i32>(arg_1.c, u_input.a.x, u_input.a.x, u_input.c.x)))) | vec4<i32>(_wgslsmith_mult_i32(-arg_1.c << (_wgslsmith_mult_u32(arg_0.x, arg_0.x) % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(89682i, u_input.a.x, u_input.c.x), u_input.a) << (3402u % 32u)), arg_1.c, 19385i, arg_1.c);
    var var_1 = arg_1.a;
    var var_2 = arg_1.d.a.x;
    let var_3 = -1231f;
    var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_3, var_3))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(524f - 1541f), var_3))))));
    return arg_1;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = arg_0;
    global0 = select(vec3<bool>(all(!select(global0.xz, global0.zy, global0.xx)), global0.x, global0.x), !(!select(select(vec3<bool>(global0.x, true, true), vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, global0.x, global0.x)), select(vec3<bool>(true, false, global0.x), vec3<bool>(true, true, global0.x), vec3<bool>(true, global0.x, false)), select(false, global0.x, false))), select(!(!vec3<bool>(true, global0.x, true)), !vec3<bool>(global0.x, any(vec4<bool>(true, global0.x, global0.x, false)), false), !vec3<bool>(any(vec4<bool>(global0.x, global0.x, true, global0.x)), all(global0.zx), global0.x | global0.x)));
    let var_1 = -(~(vec4<i32>(1i, -29806i, -42708i, var_0.c) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, 7258u, u_input.d, u_input.b.x), vec4<u32>(u_input.d, 4294967295u, u_input.d, 23664u)) % vec4<u32>(32u))) | vec4<i32>(2147483647i, 2147483647i, u_input.c.x, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(0i, u_input.a.x, var_0.c, var_0.c)), ~vec4<i32>(41704i, arg_0.c, arg_0.c, 0i))));
    global1 = var_0.a.a.x;
    let var_2 = Struct_1(var_0.d.a);
    return var_0.a.a;
}

fn func_5(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> f32 {
    global1 = 327f;
    global0 = !(!select(vec3<bool>(false, false, !global0.x), !(!vec3<bool>(true, global0.x, arg_1)), select(select(vec3<bool>(true, global0.x, arg_1), vec3<bool>(global0.x, true, true), vec3<bool>(true, false, true)), vec3<bool>(arg_1, false, global0.x), !vec3<bool>(true, true, global0.x))));
    var var_0 = Struct_1(vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1040f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1015f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.x * -262f))))));
    var var_1 = arg_2;
    global0 = !select(select(!vec3<bool>(global0.x, global0.x, arg_1), vec3<bool>(all(vec3<bool>(arg_1, arg_1, false)), all(global0.xx), arg_1), select(!vec3<bool>(global0.x, global0.x, arg_1), !vec3<bool>(global0.x, arg_1, false), u_input.c.x < -1i)), !(!(!vec3<bool>(false, true, global0.x))), select(!select(vec3<bool>(false, global0.x, true), vec3<bool>(global0.x, arg_1, false), global0.x), !(!vec3<bool>(global0.x, false, true)), true));
    return _wgslsmith_div_f32(-971f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + var_0.a.x)))));
}

fn func_1(arg_0: u32) -> Struct_2 {
    global1 = _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(664f, -1324f, -1262f, -2347f)))) - _wgslsmith_f_op_vec4_f32(func_4(func_2(vec3<u32>(arg_0, 0u, 0u), Struct_2(Struct_1(vec4<f32>(-498f, 2234f, 413f, -1394f)), 339f, -41279i, Struct_1(vec4<f32>(534f, 610f, -1232f, 1404f)))), func_2(vec3<u32>(19829u, arg_0, 84388u), Struct_2(Struct_1(vec4<f32>(-670f, 1000f, -256f, -2357f)), -238f, u_input.a.x, Struct_1(vec4<f32>(-170f, 1000f, 2736f, 750f)))).a, Struct_1(vec4<f32>(109f, 825f, 1162f, -786f)))))), false, func_2(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.d, 9543u, 95661u) << (vec3<u32>(60869u, arg_0, u_input.d) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(max(vec3<u32>(arg_0, arg_0, 0u), vec3<u32>(0u, 44651u, arg_0)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 4294967295u, 37113u), vec3<u32>(3250u, arg_0, arg_0), vec3<u32>(6534u, 15848u, 36957u)))), Struct_2(Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(1842f, 859f, 786f, 217f), vec4<f32>(-615f, 1000f, -2309f, 154f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1000f, -302f)), _wgslsmith_f_op_f32(sign(-1000f))), u_input.c.x, Struct_1(vec4<f32>(-455f, -1000f, 1206f, 714f)))).a, ~abs(firstTrailingBit(5479u)) ^ _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0, u_input.d, arg_0, arg_0), vec4<u32>(u_input.b.x, 4294967295u, 0u, 12576u)), countOneBits(vec4<u32>(u_input.b.x, 39977u, arg_0, 1u))), vec4<u32>(select(arg_0, 0u, false), ~arg_0, arg_0, arg_0))));
    var var_0 = ~(~((~vec4<u32>(arg_0, arg_0, 1u, arg_0) & vec4<u32>(72628u, u_input.b.x, 1u, u_input.d)) >> ((~vec4<u32>(4294967295u, 59079u, 78445u, u_input.d) ^ max(vec4<u32>(0u, arg_0, 43099u, 0u), vec4<u32>(24345u, 4294967295u, 48932u, 39265u))) % vec4<u32>(32u))));
    let var_1 = any(vec3<bool>(global0.x, any(vec2<bool>(false, select(true, true, false))), all(select(global0.zy, !vec2<bool>(global0.x, global0.x), select(global0.yz, vec2<bool>(false, global0.x), global0.zx)))));
    return func_2(var_0.zwx, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-997f, 1000f, -480f, 2622f)), vec4<f32>(-1054f, -1158f, -716f, -1059f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(926f)), -732f)))), firstTrailingBit(-u_input.c.x), func_2(~min(vec3<u32>(u_input.d, var_0.x, u_input.d), var_0.wxz), func_2(reverseBits(var_0.xyz), func_2(vec3<u32>(var_0.x, 1u, 11u), Struct_2(Struct_1(vec4<f32>(1226f, 510f, -1495f, -486f)), -2173f, u_input.c.x, Struct_1(vec4<f32>(-587f, 305f, -1212f, -1000f)))))).a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(firstTrailingBit(u_input.d));
    let var_1 = 4294967295u;
    let var_2 = ~abs(~1u);
    let var_3 = var_0.d;
    let var_4 = _wgslsmith_dot_vec2_u32(vec2<u32>(~(firstTrailingBit(1821u) << (select(var_1, 1u, global0.x) % 32u)), 1u), vec2<u32>(1u, _wgslsmith_div_u32(u_input.d, ~(var_1 | var_1))));
    var var_5 = func_2(~firstLeadingBit(~vec3<u32>(var_4, 0u, var_1)), func_1((20479u ^ (var_1 ^ 4294967295u)) & (~var_1 << (1u % 32u)))).a;
    let x = u_input.a;
    s_output = StorageBuffer(~(-18194i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1477f)))));
}

