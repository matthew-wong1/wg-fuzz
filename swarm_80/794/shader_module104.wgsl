struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(Struct_1(vec3<bool>(true, false, true), -1000f, 39345i), -475f, vec3<i32>(1i, 9044i, i32(-2147483648))), Struct_3(Struct_1(vec3<bool>(false, false, false), 1043f, 1727i), -2766f, vec3<i32>(41800i, 2147483647i, 0i)), Struct_3(Struct_1(vec3<bool>(false, true, true), 1000f, -22425i), 551f, vec3<i32>(3571i, 2147483647i, -41740i)), Struct_3(Struct_1(vec3<bool>(false, true, false), 1352f, 40253i), -321f, vec3<i32>(1i, 56879i, -8276i)), Struct_3(Struct_1(vec3<bool>(false, false, true), 362f, 0i), -455f, vec3<i32>(-10521i, 1i, i32(-2147483648))), Struct_3(Struct_1(vec3<bool>(false, false, true), 290f, -1i), 520f, vec3<i32>(11426i, 16667i, -26017i)), Struct_3(Struct_1(vec3<bool>(true, true, true), -1119f, -29848i), -1651f, vec3<i32>(-16904i, -1i, -4299i)), Struct_3(Struct_1(vec3<bool>(true, true, false), -452f, 0i), 989f, vec3<i32>(2147483647i, 2147483647i, 0i)), Struct_3(Struct_1(vec3<bool>(true, true, false), -1051f, -9134i), 206f, vec3<i32>(-1i, i32(-2147483648), 1i)), Struct_3(Struct_1(vec3<bool>(true, false, false), -662f, 1722i), 1104f, vec3<i32>(-26866i, -58489i, -1i)), Struct_3(Struct_1(vec3<bool>(false, false, false), -384f, -1i), -1000f, vec3<i32>(1i, -11581i, 2147483647i)), Struct_3(Struct_1(vec3<bool>(false, false, true), 127f, -24784i), -1053f, vec3<i32>(-4020i, 8434i, -1i)), Struct_3(Struct_1(vec3<bool>(false, true, true), -217f, 0i), 627f, vec3<i32>(-1i, 49129i, i32(-2147483648))), Struct_3(Struct_1(vec3<bool>(true, true, false), 1194f, 19727i), -611f, vec3<i32>(-10061i, i32(-2147483648), 0i)), Struct_3(Struct_1(vec3<bool>(true, true, false), -464f, 0i), -342f, vec3<i32>(8690i, i32(-2147483648), 599i)), Struct_3(Struct_1(vec3<bool>(true, false, false), -157f, i32(-2147483648)), -2009f, vec3<i32>(0i, 2147483647i, 782i)), Struct_3(Struct_1(vec3<bool>(true, false, false), 1236f, i32(-2147483648)), -300f, vec3<i32>(65480i, -29618i, 0i)), Struct_3(Struct_1(vec3<bool>(true, true, false), 387f, 1i), -680f, vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648))), Struct_3(Struct_1(vec3<bool>(true, true, false), 1456f, -22179i), 627f, vec3<i32>(0i, -3712i, -1i)));

var<private> global1: array<Struct_3, 29>;

var<private> global2: Struct_2;

var<private> global3: f32 = 1214f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> f32 {
    global0 = array<Struct_3, 19>();
    let var_0 = ~(-13332i);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(907f, arg_0.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-355f, arg_0.b))))))));
    var var_2 = vec2<bool>(any(!(!select(vec3<bool>(arg_3.a.x, true, true), vec3<bool>(arg_0.a.x, arg_3.a.x, arg_0.a.x), arg_0.a.x))), arg_3.a.x);
    let var_3 = Struct_2(vec2<u32>(global2.a.x, 57763u) >> (global2.a % vec2<u32>(32u)));
    return -538f;
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    global0 = array<Struct_3, 19>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 499f, -1054f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1407f, 485f, -115f))))), vec3<f32>(959f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-440f)))), _wgslsmith_f_op_f32(-1276f * _wgslsmith_f_op_f32(func_3(Struct_1(vec3<bool>(false, false, true), -694f, u_input.b), Struct_1(vec3<bool>(arg_0.x, arg_0.x, true), 893f, u_input.b), u_input.a, Struct_1(vec3<bool>(true, arg_0.x, arg_0.x), -317f, 47857i))))))));
    global1 = array<Struct_3, 29>();
    return 1000f;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_2 {
    global3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1402f, arg_1.x), _wgslsmith_f_op_f32(max(-340f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, 381f, false)))))))));
    var var_0 = Struct_2(~(~vec2<u32>(abs(arg_2.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.a.x, 906u, global2.a.x), vec3<u32>(127u, arg_2.a.x, global2.a.x)))));
    var var_1 = 1496f;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x * arg_1.x), _wgslsmith_f_op_f32(-arg_0.x)) - 275f)) - arg_0.x);
    var_1 = -276f;
    return Struct_2(~firstTrailingBit(~vec2<u32>(2359u, 0u) & vec2<u32>(arg_2.a.x, var_0.a.x)));
}

fn func_1() -> Struct_1 {
    global1 = array<Struct_3, 29>();
    global2 = func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -266f)), _wgslsmith_f_op_f32(-1750f * -195f), -1861f, _wgslsmith_f_op_f32(floor(932f))) * vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -278f), -141f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1175f, -1060f)), _wgslsmith_f_op_f32(-1703f * _wgslsmith_f_op_f32(func_2(vec2<bool>(false, false)))), 1383f)), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1436f, -1302f)))), _wgslsmith_f_op_f32(func_3(Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -1365f), i32(-1i) * -5796i), Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -328f), max(u_input.a, u_input.a)), 0i >> (~global2.a.x % 32u), Struct_1(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), _wgslsmith_f_op_f32(1000f + -787f), -4149i))), _wgslsmith_f_op_f32(-629f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_1(vec3<bool>(false, true, false), 1000f, u_input.b), Struct_1(vec3<bool>(false, false, true), 892f, 1i), -2147483647i, Struct_1(vec3<bool>(false, true, false), 1039f, u_input.a))))))), Struct_2(global2.a));
    let var_0 = reverseBits(~max(~vec4<u32>(global2.a.x, 16320u, 4294967295u, 4294967295u), vec4<u32>(global2.a.x, global2.a.x, global2.a.x, 25576u))) >> (~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.a.x, 4294967295u, global2.a.x), max(vec3<u32>(global2.a.x, global2.a.x, global2.a.x), vec3<u32>(global2.a.x, 26842u, 14269u))), _wgslsmith_clamp_u32(global2.a.x, 57068u, 4294967295u), global2.a.x, ~60539u | ~global2.a.x) % vec4<u32>(32u));
    let var_1 = Struct_3(Struct_1(vec3<bool>(true, true, true), 1f, _wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, -31990i, 2361i, u_input.b), _wgslsmith_clamp_vec4_i32(-vec4<i32>(-2147483647i, u_input.a, 2147483647i, u_input.b), -vec4<i32>(u_input.a, u_input.b, 2147483647i, 0i), vec4<i32>(u_input.b, u_input.a, u_input.b, -24967i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1000f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -876f)))), select(~vec3<i32>(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-15972i, -35642i), vec2<i32>(1i, u_input.b)), i32(-1i) * -2147483647i), ~(~vec3<i32>(u_input.b, 57206i, u_input.b) | abs(vec3<i32>(2563i, u_input.b, u_input.a))), true));
    var var_2 = func_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.a.b, var_1.a.b))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.b + var_1.a.b))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.b))), -990f, var_1.a.b), vec3<f32>(389f, _wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-695f))))), func_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, var_1.a.b, var_1.b, var_1.a.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(551f, 635f, 2531f, -430f)))))), vec3<f32>(_wgslsmith_div_f32(-348f, var_1.a.b), var_1.b, 1119f), Struct_2(reverseBits(var_0.wx))));
    return Struct_1(!var_1.a.a, var_1.a.b, select(abs(-2147483647i & reverseBits(var_1.a.c)), max(u_input.b, ~1427i), true));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec3<u32>, arg_3: bool) -> Struct_2 {
    var var_0 = ~(vec4<i32>(~_wgslsmith_mult_i32(arg_1, 35613i), arg_0.c, arg_0.c, i32(-1i) * -11944i) >> (~_wgslsmith_mod_vec4_u32(vec4<u32>(global2.a.x, arg_2.x, 42848u, global2.a.x), vec4<u32>(0u, 4294967295u, 4294967295u, global2.a.x)) % vec4<u32>(32u)));
    let var_1 = firstLeadingBit(~_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, arg_1, arg_0.c, 17482i), ~vec4<i32>(1i, 1i, 20887i, -6655i), ~vec4<i32>(arg_1, var_0.x, u_input.b, u_input.b)) >> (vec4<u32>(~24144u, 92849u, ~33271u, _wgslsmith_clamp_u32(54012u, ~arg_2.x, 1u)) % vec4<u32>(32u)));
    var_0 = _wgslsmith_mod_vec4_i32(var_1, abs(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -1311i, ~(-48692i), -4039i), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(63803i, u_input.b, arg_0.c, var_0.x), var_1)))));
    let var_2 = Struct_3(arg_0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.b)) * _wgslsmith_f_op_f32(func_3(arg_0, Struct_1(arg_0.a, -118f, 82764i), u_input.a, arg_0)))))), var_1.xxz);
    var var_3 = select(func_1().a.xx, !select(arg_0.a.xy, !select(vec2<bool>(true, var_2.a.a.x), vec2<bool>(true, true), vec2<bool>(var_2.a.a.x, false)), true), select(select(select(vec2<bool>(true, false), !vec2<bool>(true, arg_3), true), func_1().a.xz, vec2<bool>(any(var_2.a.a.xz), !arg_0.a.x)), !vec2<bool>(select(arg_3, arg_0.a.x, false), arg_3), _wgslsmith_add_i32(firstTrailingBit(-1i), -14314i) > -_wgslsmith_add_i32(arg_0.c, 2147483647i)));
    return Struct_2(abs(max(firstLeadingBit(firstLeadingBit(global2.a)), global2.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_5(func_1(), _wgslsmith_clamp_i32(83437i, -2147483647i, i32(-1i) * -2147483647i), ~vec3<u32>(global2.a.x, 0u, global2.a.x), all(!vec4<bool>(false, true, true, all(vec3<bool>(false, true, false)))));
    global1 = array<Struct_3, 29>();
    let var_0 = any(vec3<bool>(any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), !((1u >> (global2.a.x % 32u)) < (global2.a.x << (1u % 32u))), true));
    let var_1 = vec3<bool>(true, all(func_1().a), any(vec4<bool>(true, true, true, true)));
    let var_2 = ~select(global2.a, vec2<u32>(68083u, select(~40671u, _wgslsmith_clamp_u32(35723u, global2.a.x, 67440u), all(vec3<bool>(false, var_1.x, var_1.x)))), !select(vec2<bool>(var_1.x, false), !var_1.yy, any(var_1.xx)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(reverseBits(vec3<u32>(~38202u, 19736u, ~0u))));
}

