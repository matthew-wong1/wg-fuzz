struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6> = array<f32, 6>(241f, 2106f, -907f, 1290f, 911f, 933f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_4, arg_1: f32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.b.b.d.x - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.a.b.d.x)) + arg_1)));
    let var_1 = arg_0.a;
    var var_2 = 11935u;
    let var_3 = vec4<i32>(-(_wgslsmith_mod_i32(arg_0.a.c.x << (u_input.b.x % 32u), firstTrailingBit(-29992i)) ^ -(~u_input.d)), -(~var_1.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(0i, var_1.c.x) >> (~u_input.c % 32u), arg_0.b.c.x, arg_0.b.c.x, arg_0.a.c.x), u_input.a), -26824i);
    var_2 = u_input.c;
    return !(!arg_0.c);
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = Struct_1(vec4<bool>(select(true, false, any(vec3<bool>(false, true, false)) & false), func_3(Struct_4(Struct_2(vec4<bool>(true, false, true, true), Struct_1(vec4<bool>(false, false, false, false), vec3<bool>(false, true, true), true, vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 6u)], -402f)), vec3<i32>(u_input.d, 2147483647i, -18953i)), Struct_2(vec4<bool>(false, true, false, true), Struct_1(vec4<bool>(true, false, false, false), vec3<bool>(false, false, false), true, vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 6u)], -133f)), vec3<i32>(u_input.d, -6179i, u_input.a.x)), true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(208f, global0[_wgslsmith_index_u32(arg_0, 6u)], 1454f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 6u)]), _wgslsmith_f_op_f32(select(-1000f, -751f, true)))), !(!func_3(Struct_4(Struct_2(vec4<bool>(true, true, false, true), Struct_1(vec4<bool>(true, false, true, false), vec3<bool>(true, false, false), true, vec2<f32>(-1045f, -1488f)), u_input.a.xyy), Struct_2(vec4<bool>(false, true, false, true), Struct_1(vec4<bool>(true, true, false, true), vec3<bool>(false, false, false), true, vec2<f32>(global0[_wgslsmith_index_u32(1u, 6u)], 476f)), vec3<i32>(-2147483647i, 0i, u_input.a.x)), false, vec3<f32>(global0[_wgslsmith_index_u32(u_input.c, 6u)], global0[_wgslsmith_index_u32(25778u, 6u)], 489f)), global0[_wgslsmith_index_u32(4294967295u, 6u)])), u_input.b.x == max(~u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(u_input.b.x, u_input.c)))), select(!vec3<bool>(any(vec2<bool>(true, true)), true, true), vec3<bool>(_wgslsmith_f_op_f32(round(-1195f)) != _wgslsmith_f_op_f32(f32(-1f) * -312f), true, firstLeadingBit(14415i) >= _wgslsmith_dot_vec2_i32(u_input.a.xw, u_input.a.zw)), !any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false)))), select(true, true, true), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 6u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, arg_0, u_input.c), ~u_input.b.wzz), 6u)])), -367f));
    var var_1 = Struct_1(vec4<bool>(any(select(!var_0.a.xyx, vec3<bool>(var_0.c, true, var_0.c), false)), select(!all(vec3<bool>(true, true, false)), true, var_0.c), any(vec2<bool>(true, var_0.a.x)) && var_0.c, any(var_0.a)), vec3<bool>(any(!vec2<bool>(true, var_0.c)), all(!(!vec3<bool>(var_0.b.x, false, var_0.c))), any(var_0.a.wyz)), any(!select(vec3<bool>(true, true, true), !var_0.b, true)), var_0.d);
    let var_2 = -(~vec3<i32>(i32(-1i) * -u_input.a.x, u_input.d, u_input.a.x));
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(-300f, var_1.d.x, var_0.d.x, var_0.d.x), vec4<f32>(global0[_wgslsmith_index_u32(76159u, 6u)], -1503f, 1193f, var_0.d.x)))))))));
    global0 = array<f32, 6>();
    return Struct_1(select(vec4<bool>(any(var_0.a), any(!var_0.b), !var_1.b.x, !var_0.c & true), !select(select(var_1.a, var_1.a, var_1.c), var_0.a, !var_0.b.x), var_0.a), !(!(!vec3<bool>(false, var_0.b.x, false))), var_1.c, var_1.d);
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    var var_0 = ((_wgslsmith_div_i32(i32(-1i) * -1i, firstLeadingBit(u_input.d)) & u_input.d) & ((_wgslsmith_add_i32(u_input.a.x, -28816i) & 0i) & -2147483647i)) & u_input.d;
    return Struct_1(arg_1.a, select(vec3<bool>(!arg_0, false, false), func_2(~_wgslsmith_div_u32(u_input.c, u_input.c)).a.xyz, !arg_0), false, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 6u)] + 1000f) - _wgslsmith_f_op_f32(1486f - -153f))), -743f));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<u32>) -> Struct_4 {
    var var_0 = 4294967295u;
    let var_1 = false;
    global0 = array<f32, 6>();
    let var_2 = _wgslsmith_dot_vec2_u32(select(u_input.b.xx ^ arg_1.zy, arg_1.zx ^ _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, 84429u), vec2<u32>(48514u, 47376u)), any(vec2<bool>(var_1, all(vec3<bool>(true, true, true))))), ~(~vec2<u32>(98298u, 19132u) & vec2<u32>(u_input.c, _wgslsmith_mod_u32(arg_1.x, arg_1.x))));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-867f, 1248f, global0[_wgslsmith_index_u32(var_2, 6u)]))) + vec3<f32>(-394f, global0[_wgslsmith_index_u32(~u_input.b.x, 6u)], _wgslsmith_div_f32(-3555f, 854f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_1.x, 6u)] - -838f), -1053f, global0[_wgslsmith_index_u32(33721u, 6u)]) + vec3<f32>(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(32960u, 6u)], global0[_wgslsmith_index_u32(0u, 6u)])), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(arg_1.x, 6u)])), -1059f))), var_1));
    return Struct_4(Struct_2(vec4<bool>(abs(0u) >= (arg_1.x >> (arg_1.x % 32u)), _wgslsmith_f_op_f32(exp2(var_3.x)) != var_3.x, var_1, false), func_4(arg_1.x > ~var_2, func_2(var_2 << (var_2 % 32u))), abs(min(select(vec3<i32>(-2147483647i, arg_0.x, arg_0.x), u_input.a.xwz, true), vec3<i32>(2147483647i, u_input.d, 2147483647i)))), Struct_2(!select(func_4(var_1, Struct_1(vec4<bool>(var_1, var_1, true, false), vec3<bool>(true, false, false), var_1, vec2<f32>(209f, global0[_wgslsmith_index_u32(u_input.b.x, 6u)]))).a, !vec4<bool>(true, false, var_1, var_1), false), Struct_1(!(!vec4<bool>(false, false, var_1, var_1)), func_2(11035u).b, (false & var_1) || true, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3.x, global0[_wgslsmith_index_u32(arg_1.x, 6u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-523f, global0[_wgslsmith_index_u32(var_2, 6u)])), !vec2<bool>(true, var_1)))), -(_wgslsmith_mod_vec3_i32(u_input.a.wwz, vec3<i32>(arg_0.x, 26899i, -15044i)) << (~u_input.b.wxy % vec3<u32>(32u)))), !(!var_1), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1485f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(arg_1.x, 6u)], global0[_wgslsmith_index_u32(arg_1.x, 6u)]))), _wgslsmith_div_f32(func_2(var_2).d.x, 1970f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.a.wx, vec3<u32>(~u_input.c, _wgslsmith_mod_u32(~u_input.c >> (22560u % 32u), ~u_input.b.x & _wgslsmith_add_u32(u_input.b.x, 4294967295u)), _wgslsmith_mult_u32(~49424u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c, u_input.b.x), u_input.b.ywz)) | firstLeadingBit(~u_input.b.x)));
    var var_1 = Struct_4(Struct_2(vec4<bool>(true, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, var_0.a.c.x), vec2<i32>(u_input.a.x, var_0.b.c.x)) <= -2147483647i, true, true), Struct_1(select(!vec4<bool>(var_0.c, true, false, var_0.a.b.b.x), var_0.b.a, all(var_0.a.b.b)), select(vec3<bool>(var_0.b.a.x, var_0.c, var_0.a.b.b.x), !var_0.a.a.zyw, vec3<bool>(true, true, true)), var_0.a.b.a.x, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 6u)], global0[_wgslsmith_index_u32(8897u, 6u)])), vec2<f32>(2029f, global0[_wgslsmith_index_u32(u_input.b.x, 6u)])))), abs(~var_0.b.c ^ vec3<i32>(33226i, -1i, -15376i))), Struct_2(!(!(!var_0.a.a)), var_0.a.b, select(var_0.a.c, var_0.b.c, all(select(vec3<bool>(var_0.b.a.x, false, false), vec3<bool>(true, false, var_0.a.a.x), true)))), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.d)), var_0.d))));
    let var_2 = 40100u;
    let var_3 = vec2<i32>(12300i, var_1.b.c.x);
    let var_4 = var_0;
    global0 = array<f32, 6>();
    let var_5 = vec4<u32>(0u, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(_wgslsmith_mod_u32(85357u, var_2), u_input.b.x, var_2, u_input.b.x)) ^ ~reverseBits(65776u), ~(~_wgslsmith_sub_u32(1u, var_2) | 144626u), u_input.c & var_2);
    let var_6 = Struct_4(func_1(firstTrailingBit(vec2<i32>(abs(1i), -7735i << (1u % 32u))), select(vec3<u32>(firstLeadingBit(1u), var_2, u_input.c), ~vec3<u32>(var_5.x, 4294967295u, 8672u), !var_0.b.b.b.x)).b, Struct_2(!vec4<bool>(var_4.a.b.a.x | var_1.c, all(var_4.b.a.xx), false, !var_0.a.a.x), Struct_1(func_1(var_0.a.c.zz, firstTrailingBit(var_5.wzy)).b.b.a, !func_1(vec2<i32>(var_3.x, var_3.x), vec3<u32>(13445u, var_2, var_5.x)).b.a.wwx, false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-592f, var_4.a.b.d.x))), _wgslsmith_sub_vec3_i32(func_1(vec2<i32>(var_3.x, 49634i) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), abs(u_input.b.yxz)).a.c, u_input.a.xwz)), any(select(vec4<bool>(var_4.b.a.x, any(vec2<bool>(true, true)), any(var_1.a.b.a), var_4.c), vec4<bool>(true, u_input.a.x > var_1.a.c.x, true, var_1.b.a.x), true)), var_0.d);
    global0 = array<f32, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_sub_vec3_u32(~vec3<u32>(1u, var_5.x, 13118u), var_5.zzx & (vec3<u32>(48818u, var_2, u_input.c) >> (vec3<u32>(4131u, 1u, 1u) % vec3<u32>(32u))))), _wgslsmith_f_op_f32(868f * -796f), u_input.a.wz, abs(var_4.a.c ^ var_6.a.c));
}

