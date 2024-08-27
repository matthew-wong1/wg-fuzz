struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_4,
    d: Struct_2,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: i32 = 0i;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: vec3<u32>, arg_3: u32) -> bool {
    let var_0 = firstTrailingBit(~(~abs(~arg_0.d.b.zz)));
    let var_1 = ~var_0;
    let var_2 = _wgslsmith_mult_vec3_i32(arg_0.b, firstTrailingBit(select(vec3<i32>(arg_1.x, 2147483647i, arg_1.x) << (vec3<u32>(0u, var_1.x, arg_0.d.b.x) % vec3<u32>(32u)), vec3<i32>(-1i, 6285i, arg_1.x), !arg_0.c.a.d))) & vec3<i32>(countOneBits(-1i), _wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(arg_0.c.c.yx, vec2<i32>(0i, arg_0.b.x)), -arg_0.c.c.x), 2147483647i), arg_0.c.c.x);
    var var_3 = arg_0.a;
    var var_4 = max(arg_1.wxw, vec3<i32>(~arg_0.b.x, (_wgslsmith_dot_vec4_i32(arg_0.c.c, vec4<i32>(var_2.x, 52987i, -26707i, u_input.c.x)) ^ (i32(-1i) * -1607i)) << (0u % 32u), _wgslsmith_clamp_i32(arg_1.x, -(-12903i >> (arg_0.c.a.b.x % 32u)), 38915i)));
    return global0.x != (_wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, 4294967295u)) & (vec2<u32>(arg_0.d.b.x, 20767u) << (var_0 % vec2<u32>(32u))), arg_2.zx) > var_0.x);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> vec4<bool> {
    global0 = select(select(vec2<bool>(true, true), select(arg_1.a.a.zx, !vec2<bool>(arg_1.a.d, true), func_3(Struct_3(arg_1.b.x, arg_1.c.yzy, Struct_2(Struct_1(vec4<bool>(true, true, global0.x, false), vec3<u32>(0u, 38325u, arg_1.a.b.x), arg_1.a.c, false), vec4<f32>(-798f, arg_1.b.x, 1000f, 219f), vec4<i32>(arg_1.c.x, 16675i, -1i, -38722i)), Struct_1(arg_1.a.a, vec3<u32>(1u, arg_0.b.x, arg_1.a.b.x), true, global0.x)), vec4<i32>(arg_1.c.x, arg_1.c.x, arg_1.c.x, u_input.c.x) & arg_1.c, arg_1.a.b, 60242u)), !arg_0.a.wz), vec2<bool>(!func_3(Struct_3(-599f, vec3<i32>(0i, 45920i, u_input.a), arg_1, arg_0), vec4<i32>(1i, arg_1.c.x, arg_1.c.x, arg_1.c.x), ~arg_0.b, 44186u), global0.x), !arg_1.a.a.xz);
    global0 = vec2<bool>(-2147483647i < -_wgslsmith_div_i32(arg_1.c.x, 32970i), arg_1.a.a.x || true);
    let var_0 = vec3<i32>(max(u_input.a, -1i), -15978i, _wgslsmith_mult_i32(arg_1.c.x, 18216i) >> (7976u % 32u));
    let var_1 = arg_0;
    global0 = arg_1.a.a.yy;
    return select(!(!(!vec4<bool>(true, arg_1.a.d, var_1.c, var_1.c))), !vec4<bool>(-u_input.c.x <= _wgslsmith_clamp_i32(arg_1.c.x, var_0.x, u_input.c.x), false, var_1.d, true), any(select(var_1.a.xxy, arg_0.a.zwz, arg_0.c)));
}

fn func_4(arg_0: bool) -> Struct_2 {
    var var_0 = Struct_1(!func_2(Struct_1(!vec4<bool>(true, arg_0, arg_0, arg_0), ~vec3<u32>(0u, 4294967295u, 1u), false, arg_0), Struct_2(Struct_1(vec4<bool>(false, arg_0, global0.x, true), vec3<u32>(31830u, 0u, 0u), global0.x, arg_0), _wgslsmith_f_op_vec4_f32(vec4<f32>(-492f, -203f, 1000f, -1080f) - vec4<f32>(817f, 115f, 268f, 904f)), u_input.b)), ~countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u))), global0.x, false);
    let var_1 = u_input.c.x;
    return Struct_2(Struct_1(var_0.a, vec3<u32>(max(countOneBits(var_0.b.x), ~var_0.b.x), _wgslsmith_mult_u32(1u, var_0.b.x), ~(~34243u)), !(!var_0.c), var_0.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(1034f, -1215f)), _wgslsmith_f_op_f32(f32(-1f) * -966f), _wgslsmith_f_op_f32(min(-196f, -1000f)), _wgslsmith_f_op_f32(min(150f, -656f))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(769f, -667f, 1325f, -187f))), vec4<f32>(-432f, 464f, 1072f, -1018f))))), u_input.b | -countOneBits(select(vec4<i32>(var_1, u_input.c.x, var_1, 2147483647i), u_input.b, var_0.a)));
}

fn func_1() -> bool {
    var var_0 = Struct_5(Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1374f)))), vec3<i32>(u_input.a, u_input.b.x, u_input.a), func_4(all(func_2(Struct_1(vec4<bool>(false, false, true, true), vec3<u32>(0u, 1u, 1976u), global0.x, false), Struct_2(Struct_1(vec4<bool>(false, global0.x, false, global0.x), vec3<u32>(17333u, 0u, 1u), false, global0.x), vec4<f32>(1003f, 2167f, 661f, -709f), vec4<i32>(-43776i, u_input.a, 3715i, 1i))))), Struct_1(!select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(global0.x, global0.x, global0.x, global0.x), global0.x), vec3<u32>(~0u, 0u, min(31768u, 49877u)), all(func_4(true).a.a.xx), select(global0.x, global0.x, global0.x) && true)), func_4(!(!global0.x)), Struct_4(1u & _wgslsmith_clamp_u32(~17843u, ~0u, ~1u), Struct_2(func_4(all(vec2<bool>(global0.x, true))).a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-316f, -1043f, 624f, -988f))), -reverseBits(vec4<i32>(u_input.a, -2147483647i, u_input.c.x, u_input.c.x)))), Struct_2(Struct_1(func_2(func_4(global0.x).a, func_4(false)), vec3<u32>(~4294967295u, 0u, select(4294967295u, 1u, false)), true, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(2268f, -1272f, -1582f, -1000f)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-273f, 512f, 1699f, -149f) * vec4<f32>(770f, 325f, 737f, -467f)), func_4(global0.x).b, func_4(true).a.a))), u_input.b), ~vec4<u32>(1u, 1u, func_4(true).a.b.x, ~(~33513u)));
    let var_1 = var_0.b.b.x;
    let var_2 = vec2<f32>(var_0.c.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(var_0.b.b.x * -429f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a.a), -2476f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1308f * 1005f))), _wgslsmith_f_op_f32(max(var_0.c.b.b.x, _wgslsmith_f_op_f32(-var_0.a.a))))));
    let var_3 = vec3<u32>(_wgslsmith_mod_u32(~var_0.b.a.b.x, ~_wgslsmith_dot_vec4_u32(var_0.e, var_0.e >> (var_0.e % vec4<u32>(32u)))), abs((select(0u, var_0.b.a.b.x, var_0.a.c.a.d) >> (func_4(false).a.b.x % 32u)) | ~28808u), var_0.d.a.b.x ^ _wgslsmith_add_u32(~_wgslsmith_add_u32(var_0.c.b.a.b.x, var_0.e.x), ~abs(4294967295u)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(!global0.x, !(true && global0.x), global0.x && (_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(u_input.c.x, 1i, 41694i, u_input.c.x)) <= firstTrailingBit(-19468i)), func_1());
    global0 = func_4(false).a.a.xz;
    var var_1 = abs(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), 1u << (1u % 32u)));
    let var_2 = Struct_5(Struct_3(_wgslsmith_f_op_f32(step(-973f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-510f)) + _wgslsmith_div_f32(644f, -905f)))), -(~select(u_input.c, vec3<i32>(u_input.c.x, u_input.c.x, 3922i), vec3<bool>(true, false, global0.x))), func_4(global0.x), func_4(true).a), func_4(true), Struct_4(1u, Struct_2(Struct_1(var_0, ~vec3<u32>(4294967295u, 37126u, 58240u), false, true), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-605f, -345f, 741f, 121f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-343f, -2822f, 190f, -772f))), !vec4<bool>(false, global0.x, false, global0.x))), vec4<i32>(abs(1i), u_input.a >> (1u % 32u), 2147483647i, _wgslsmith_clamp_i32(u_input.b.x, 9692i, -12400i)))), func_4(true), min(_wgslsmith_mult_vec4_u32(max(~vec4<u32>(7618u, 1u, 14153u, 188u), min(vec4<u32>(41031u, 76705u, 4294967295u, 1u), vec4<u32>(0u, 91342u, 50156u, 4294967295u))), select(countOneBits(vec4<u32>(17637u, 47397u, 0u, 5788u)), vec4<u32>(0u, 4087u, 4294967295u, 0u), true)), vec4<u32>(1u, 1u, 1u, 1u)));
    let var_3 = countOneBits(var_2.a.b.x);
    let var_4 = var_2.a;
    var var_5 = var_4.d.b.x;
    global0 = vec2<bool>(func_2(var_4.d, var_4.c).x, var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(min(var_3, u_input.c.x), ~var_4.c.a.b.x | ~1u);
}

