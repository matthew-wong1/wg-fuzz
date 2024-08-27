struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: i32,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec4<bool>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = select(!global1.zzy, vec3<bool>(all(select(vec3<bool>(true, global1.x, global1.x), select(vec3<bool>(arg_1.a, global1.x, true), global0.a, true), select(global0.a, global1.zzz, false))), all(global1.wwx), true), (u_input.c.x == 1u) || true);
    var var_1 = Struct_2(arg_1, vec3<i32>(-1i) * -abs(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, arg_1.c, -25895i), vec3<i32>(-28734i, -8042i, arg_1.c))));
    let var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(-_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, var_1.a.c, -2147483647i, arg_1.c)), -1548i), -u_input.a.zx) & u_input.a.x;
    let var_3 = abs(-abs(2147483647i) | var_2);
    global0 = Struct_3(global0.a);
    return vec3<bool>(true, !all(vec3<bool>(arg_1.d.x < 1257f, true, true)), var_0.x);
}

fn func_2(arg_0: Struct_2) -> vec4<bool> {
    global0 = Struct_3(!select(func_3(_wgslsmith_f_op_f32(exp2(arg_0.a.e)), arg_0.a), global1.zyz, vec3<bool>(true, u_input.c.x == u_input.c.x, true)));
    global0 = Struct_3(global1.wxx);
    return vec4<bool>(abs(select(-10894i, -2147483647i, false)) <= _wgslsmith_mult_i32(1i, -1i), true, -36781i != u_input.a.x, false);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<bool>) -> Struct_2 {
    global0 = Struct_3(!global1.xyy);
    global1 = select(func_2(Struct_2(Struct_1(true, vec4<i32>(2147483647i, u_input.a.x, arg_0.x, -2147483647i), firstTrailingBit(-1i), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(556f, -2094f, 1529f, -791f), vec4<f32>(560f, 1156f, 993f, 768f), arg_1)), _wgslsmith_f_op_f32(-1284f + 296f)), (vec3<i32>(1i, 2147483647i, 0i) ^ u_input.a.xxx) << (_wgslsmith_add_vec3_u32(u_input.c, u_input.c) % vec3<u32>(32u)))), select(arg_1, vec4<bool>(false, all(global0.a.yz), firstTrailingBit(u_input.c.x) == countOneBits(u_input.c.x), any(vec2<bool>(global0.a.x, false))), !global0.a.x), vec4<bool>(true, all(vec4<bool>(global0.a.x, arg_1.x, u_input.d > 53709u, true)), false, all(vec4<bool>(global1.x, true, global0.a.x || true, all(global0.a.yz)))));
    global0 = Struct_3(func_2(Struct_2(Struct_1(true, ~vec4<i32>(-2147483647i, 2147483647i, -1i, -13952i), u_input.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-668f, -1639f, 1144f, -303f)), 1544f), vec3<i32>(1i, 1i, _wgslsmith_add_i32(-1i, -2147483647i)))).yyz);
    global0 = Struct_3(global1.xwx);
    let var_0 = Struct_3(global1.zxy);
    return Struct_2(Struct_1(~(u_input.d << (u_input.c.x % 32u)) <= ~(~4294967295u), u_input.a, countOneBits(1i), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1598f, 1042f, 835f, 1000f) - vec4<f32>(-625f, 513f, -615f, -787f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-863f, 1771f, 1247f, 377f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(303f, 506f, -139f, -1471f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(237f)))), abs(select(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, -1i, u_input.b), vec3<i32>(arg_0.x, arg_0.x, u_input.a.x)) | max(u_input.a.xzw, arg_0), vec3<i32>(u_input.b, _wgslsmith_clamp_i32(u_input.a.x, 51884i, -13356i), u_input.a.x), vec3<bool>(!global1.x, false, func_3(1067f, Struct_1(true, u_input.a, arg_0.x, vec4<f32>(1743f, -1328f, -299f, 1000f), 514f)).x))));
}

fn func_1() -> vec4<bool> {
    let var_0 = func_4(u_input.a.wzy, !(!(!func_2(Struct_2(Struct_1(global1.x, u_input.a, u_input.b, vec4<f32>(-445f, -385f, -963f, -903f), 1913f), vec3<i32>(u_input.a.x, u_input.a.x, 1i))))));
    global0 = Struct_3(vec3<bool>(func_2(Struct_2(func_4(vec3<i32>(1i, 2147483647i, u_input.a.x), vec4<bool>(true, false, global0.a.x, global1.x)).a, abs(var_0.a.b.wwz))).x, any(func_2(Struct_2(Struct_1(global1.x, var_0.a.b, 1i, var_0.a.d, -683f), vec3<i32>(u_input.b, u_input.a.x, var_0.b.x)))), false));
    global1 = select(select(!vec4<bool>(!global1.x, false, any(global0.a), !global1.x), vec4<bool>(abs(16220u) == abs(u_input.d), all(vec4<bool>(false, var_0.a.a, global0.a.x, var_0.a.a)), true, true & (var_0.a.d.x == 1472f)), true), select(vec4<bool>(var_0.a.a, true, !(false != var_0.a.a), !var_0.a.a != false), vec4<bool>(true, false, global0.a.x, true), !var_0.a.a), func_2(Struct_2(func_4(vec3<i32>(2147483647i, var_0.b.x, 18706i) << (u_input.c % vec3<u32>(32u)), !vec4<bool>(false, false, global0.a.x, global0.a.x)).a, _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.b.x, -1i, -20366i), vec3<i32>(u_input.a.x, u_input.b, 1i)), abs(var_0.a.b.zww)))).x);
    let var_1 = _wgslsmith_mult_u32(0u, ~u_input.d);
    var var_2 = firstLeadingBit(-_wgslsmith_mult_vec4_i32(-vec4<i32>(var_0.a.c, 56877i, u_input.b, var_0.a.b.x), vec4<i32>(16160i, var_0.b.x, 2147483647i, 12543i) << (~vec4<u32>(11448u, var_1, 4294967295u, 4294967295u) % vec4<u32>(32u))));
    return select(vec4<bool>(func_4(u_input.a.ywz ^ u_input.a.yww, select(vec4<bool>(false, global1.x, true, false), !vec4<bool>(var_0.a.a, true, var_0.a.a, var_0.a.a), true)).a.a, true, any(!vec4<bool>(true, global1.x, var_0.a.a, global0.a.x)), true), vec4<bool>(((0u >> (u_input.d % 32u)) & ~u_input.c.x) != 4294967295u, var_0.a.a, global1.x, false), vec4<bool>(-(u_input.b & u_input.b) > (1146i >> (1u % 32u)), true, true, var_1 <= _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(var_1, 1u)), u_input.c.xz)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(!vec4<bool>(true, all(select(global1.zzx, global1.yxw, global1.wwx)), false, !all(global0.a)), !vec4<bool>(false, !(u_input.b > u_input.b), !global0.a.x, all(!vec4<bool>(global1.x, global1.x, global0.a.x, true))), select(select(func_1(), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, global1.x), select(vec4<bool>(false, global1.x, global1.x, global0.a.x), vec4<bool>(false, false, global0.a.x, global1.x), vec4<bool>(global0.a.x, global0.a.x, global0.a.x, false))), all(func_2(Struct_2(Struct_1(true, u_input.a, 56805i, vec4<f32>(1288f, 1206f, 372f, -1410f), -925f), u_input.a.yyw)).zwy)), vec4<bool>(any(select(vec2<bool>(global0.a.x, false), vec2<bool>(global0.a.x, false), global0.a.xz)), 0u > _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 4294967295u), vec2<u32>(5579u, u_input.d)), !(!global0.a.x), true & (29919i != u_input.b)), !(!select(vec4<bool>(global1.x, global1.x, false, true), vec4<bool>(global1.x, global0.a.x, global1.x, true), vec4<bool>(global0.a.x, false, global0.a.x, global1.x)))));
    let var_0 = ~7217i;
    let var_1 = Struct_2(Struct_1(global0.a.x, select(vec4<i32>(-4806i, 43331i, u_input.b, u_input.b) & vec4<i32>(u_input.a.x, var_0, u_input.b, u_input.a.x), u_input.a, func_2(Struct_2(Struct_1(true, vec4<i32>(0i, 20074i, 26464i, 33362i), -2147483647i, vec4<f32>(-1470f, 1716f, 926f, -1239f), 357f), u_input.a.wyx))), _wgslsmith_mult_i32(-u_input.b, ~(u_input.a.x << (u_input.c.x % 32u))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1633f, 753f)) + _wgslsmith_f_op_f32(f32(-1f) * -500f)), -729f, -448f, 694f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -391f)))))), vec3<i32>(var_0, -(i32(-1i) * -var_0), u_input.b));
    var var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(704f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(323f, _wgslsmith_f_op_f32(var_1.a.e + var_1.a.d.x))))), vec2<i32>(1i >> (firstLeadingBit(reverseBits(1u)) % 32u), -21091i), var_2.a.d, vec4<i32>(-1i) * -var_2.a.b);
}

