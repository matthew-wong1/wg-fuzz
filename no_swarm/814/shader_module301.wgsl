struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_2,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<i32, 9>;

var<private> global2: array<Struct_3, 30>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> bool {
    let var_0 = ~(vec3<i32>(-2147483647i >> (~u_input.a.x % 32u), abs(i32(-1i) * -6564i), -14610i >> (u_input.a.x % 32u)) >> (_wgslsmith_mult_vec3_u32(select(u_input.a.xyy, select(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), vec3<u32>(10339u, u_input.a.x, u_input.a.x), vec3<bool>(true, true, false)), all(vec2<bool>(true, false))), max(vec3<u32>(4294967295u, u_input.a.x, 48343u), ~vec3<u32>(u_input.a.x, 1u, 12799u))) % vec3<u32>(32u)));
    let var_1 = Struct_2(vec2<u32>(select(78299u, u_input.a.x, false), ~u_input.a.x), Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), _wgslsmith_clamp_i32(1i, 61213i, -2147483647i) <= firstTrailingBit(2147483647i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-804f, 643f, 1000f, 615f) * vec4<f32>(-1223f, 787f, 133f, -1637f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-947f, 1455f, -788f, -836f), vec4<f32>(403f, 686f, 2107f, -580f), vec4<bool>(false, true, true, false)))) - vec4<f32>(_wgslsmith_f_op_f32(abs(1712f)), -1925f, 1f, -1010f))), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(412f, _wgslsmith_f_op_f32(floor(385f)), -112f, _wgslsmith_f_op_f32(262f + 492f))))), Struct_1(select(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(268f, 965f, 801f, -718f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-974f, -1162f, 1000f, 232f))), vec4<bool>(false, false, false, false)))))));
    let var_2 = ~(i32(-1i) * -2147483647i);
    var var_3 = vec2<u32>(u_input.a.x, u_input.a.x);
    var_3 = ~var_1.a ^ vec2<u32>(~53347u, u_input.a.x);
    return !(!all(!select(var_1.c.a, var_1.c.a, true)));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_1) -> bool {
    global1 = array<i32, 9>();
    let var_0 = Struct_4(Struct_2(u_input.a.wz, Struct_1(vec2<bool>(true, func_3()), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2.b))), arg_2, Struct_1(!(!vec2<bool>(arg_1.x, true)), _wgslsmith_f_op_vec4_f32(-arg_2.b))), Struct_3(true, arg_0.b), Struct_2(~vec2<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), ~4294967295u), arg_2, arg_2, Struct_1(vec2<bool>(func_3(), 2147483647i < global1[_wgslsmith_index_u32(u_input.a.x, 9u)]), _wgslsmith_f_op_vec4_f32(arg_2.b * vec4<f32>(arg_2.b.x, 1407f, arg_2.b.x, arg_2.b.x)))), ~firstLeadingBit(firstTrailingBit(~u_input.a.xx)));
    var var_1 = vec2<bool>(any(select(arg_2.a, select(!vec2<bool>(true, arg_1.x), var_0.a.c.a, !arg_2.a), var_0.a.d.a)), any(vec4<bool>(arg_0.a, !select(arg_1.x, false, false), !(arg_2.a.x && var_0.b.a), arg_0.b == _wgslsmith_add_i32(global1[_wgslsmith_index_u32(24603u, 9u)], global1[_wgslsmith_index_u32(u_input.a.x, 9u)]))));
    var_1 = select(select(!select(!vec2<bool>(var_0.c.c.a.x, false), select(arg_2.a, vec2<bool>(arg_2.a.x, var_1.x), false), true), var_0.c.d.a, _wgslsmith_f_op_f32(-3100f * _wgslsmith_f_op_f32(arg_2.b.x * 1661f)) > -135f), !select(select(select(vec2<bool>(var_0.c.b.a.x, false), var_0.c.b.a, arg_1.x), var_0.a.b.a, vec2<bool>(false, false)), vec2<bool>(var_1.x && false, true), (global1[_wgslsmith_index_u32(4294967295u, 9u)] < global1[_wgslsmith_index_u32(4294967295u, 9u)]) || var_1.x), vec2<bool>(var_0.a.c.a.x, any(!arg_2.a)));
    let var_2 = min(u_input.a.xxx, u_input.a.xxy);
    return var_1.x;
}

fn func_2() -> vec3<u32> {
    global0 = reverseBits(1u);
    let var_0 = !func_4(Struct_3(true, global1[_wgslsmith_index_u32(~(~3462u), 9u)]), select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), false), false), Struct_1(vec2<bool>(func_3(), true), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(838f, -544f, 2359f, -1000f))))));
    global0 = min(1u, min(_wgslsmith_clamp_u32(select(reverseBits(98052u), reverseBits(u_input.a.x), var_0), 4294967295u, ~1u), ~u_input.a.x ^ 1u));
    var var_1 = abs(50069u) ^ u_input.a.x;
    let var_2 = 497f;
    return ~(~u_input.a.xwx);
}

fn func_5(arg_0: vec3<u32>) -> Struct_1 {
    global2 = array<Struct_3, 30>();
    global0 = u_input.a.x;
    global0 = 4294967295u;
    global1 = array<i32, 9>();
    global2 = array<Struct_3, 30>();
    return Struct_1(vec2<bool>(true & (global1[_wgslsmith_index_u32(~u_input.a.x, 9u)] > ~0i), func_4(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, arg_0.x), 30u)], vec2<bool>(true, true), Struct_1(vec2<bool>(true, true), vec4<f32>(-625f, 777f, -1526f, 1068f))) && select(false, true, true)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2192f, 1510f, 657f, -196f) - vec4<f32>(-1000f, 2348f, 1000f, 1859f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-301f, -324f, -370f, 1211f)), true)))))));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec3<bool>) -> vec2<f32> {
    var var_0 = !select(arg_1.d.a.x, !all(arg_2.zz), true);
    var var_1 = 13470i;
    var var_2 = countOneBits(~firstTrailingBit(_wgslsmith_div_vec4_i32(-vec4<i32>(12459i, global1[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(0u, 9u)], 43917i), vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(u_input.a.x, 9u)], 10294i, 8576i))));
    var var_3 = arg_1;
    var_3 = Struct_2(firstLeadingBit(~arg_1.a), func_5(func_2()), Struct_1(arg_1.b.a, vec4<f32>(arg_1.b.b.x, -430f, arg_1.c.b.x, _wgslsmith_f_op_f32(-arg_1.b.b.x))), Struct_1(!(!arg_1.d.a), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(var_3.c.b, vec4<f32>(var_3.d.b.x, var_3.d.b.x, -1222f, 1000f))))));
    return arg_1.d.b.xz;
}

fn func_6(arg_0: vec2<f32>, arg_1: vec3<bool>) -> Struct_2 {
    global2 = array<Struct_3, 30>();
    var var_0 = Struct_2(u_input.a.wx, Struct_1(arg_1.zz, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-702f, arg_0.x, arg_0.x, 1261f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1490f, arg_0.x, arg_0.x, arg_0.x))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 541f), vec4<f32>(-362f, -1186f, -879f, arg_0.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 933f), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -1291f))))), Struct_1(func_5(firstTrailingBit(func_2())).a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -2373f, arg_0.x, 1662f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, -1433f, 1000f)))), func_5(_wgslsmith_mult_vec3_u32(~abs(vec3<u32>(u_input.a.x, 72551u, 4294967295u)), _wgslsmith_sub_vec3_u32(vec3<u32>(51394u, u_input.a.x, u_input.a.x), select(vec3<u32>(77572u, u_input.a.x, u_input.a.x), vec3<u32>(32514u, 63983u, 1u), arg_1.x)))));
    var var_1 = ~vec2<i32>(2147483647i, global1[_wgslsmith_index_u32(97200u, 9u)]);
    let var_2 = Struct_3(select(true, all(var_0.b.a), _wgslsmith_mod_i32(_wgslsmith_div_i32(var_1.x, var_1.x), -1i) == (_wgslsmith_mod_i32(var_1.x, 0i) ^ 2147483647i)), _wgslsmith_div_i32(var_1.x, var_1.x));
    var var_3 = func_5(abs(vec3<u32>(~40062u, u_input.a.x, u_input.a.x)));
    return Struct_2(~max(var_0.a, vec2<u32>(_wgslsmith_mult_u32(var_0.a.x, 55824u), _wgslsmith_add_u32(var_0.a.x, var_0.a.x))), Struct_1(vec2<bool>(true, var_3.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_3.b - var_3.b) - vec4<f32>(var_3.b.x, -262f, -1108f, -2516f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.c.b)))), func_5(~(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.a.x, 1u), vec3<u32>(0u, 4294967295u, 17503u)) | _wgslsmith_div_vec3_u32(u_input.a.zzy, vec3<u32>(93948u, 0u, 22601u)))), Struct_1(!vec2<bool>(var_0.b.a.x, var_3.a.x), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-608f * -1436f))), _wgslsmith_f_op_f32(-arg_0.x), var_0.d.b.x, _wgslsmith_div_f32(var_3.b.x, -741f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1282f, -733f) + vec2<f32>(-2131f, 106f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(vec3<u32>(45483u, 4294967295u, u_input.a.x), Struct_2(u_input.a.wy, Struct_1(vec2<bool>(false, true), vec4<f32>(465f, -170f, -1825f, -737f)), Struct_1(vec2<bool>(false, true), vec4<f32>(215f, 1100f, 1000f, -724f)), Struct_1(vec2<bool>(false, false), vec4<f32>(-724f, 1004f, 158f, 1060f))), vec3<bool>(false, false, false))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1057f, 1460f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1790f, -796f))))), !vec3<bool>(false, true, !any(vec2<bool>(false, true))));
    global2 = array<Struct_3, 30>();
    let var_1 = _wgslsmith_f_op_vec3_f32(var_0.c.b.xyx * _wgslsmith_f_op_vec3_f32(step(var_0.d.b.zzz, var_0.c.b.yzw)));
    global2 = array<Struct_3, 30>();
    var var_2 = global2[_wgslsmith_index_u32(func_2().x, 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(61048u, _wgslsmith_f_op_vec2_f32(sign(var_1.yz)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec2_f32(func_1(vec3<u32>(var_0.a.x, 1u, 1u), func_6(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.b.x, 836f) - vec2<f32>(157f, -466f)), !vec3<bool>(var_0.b.a.x, false, false)), vec3<bool>(true, true, true))).x)));
}

