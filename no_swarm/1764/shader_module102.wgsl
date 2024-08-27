struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<i32>,
    d: vec2<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<f32> = vec2<f32>(-1000f, -811f);

var<private> global2: array<vec3<f32>, 24> = array<vec3<f32>, 24>(vec3<f32>(-427f, 194f, 1274f), vec3<f32>(-918f, 252f, 926f), vec3<f32>(-970f, -820f, -340f), vec3<f32>(-2954f, -1940f, -1184f), vec3<f32>(1000f, -1268f, -175f), vec3<f32>(-629f, -835f, 598f), vec3<f32>(-451f, 447f, -325f), vec3<f32>(1282f, 500f, -1368f), vec3<f32>(-379f, -121f, -528f), vec3<f32>(2635f, -1000f, -632f), vec3<f32>(282f, 2289f, -395f), vec3<f32>(-1713f, -113f, 1145f), vec3<f32>(167f, 1000f, 968f), vec3<f32>(-800f, -417f, 1913f), vec3<f32>(721f, -1433f, 812f), vec3<f32>(-295f, -358f, -774f), vec3<f32>(-744f, 2033f, -357f), vec3<f32>(-1753f, -268f, 363f), vec3<f32>(700f, -424f, 1034f), vec3<f32>(899f, -1000f, -224f), vec3<f32>(588f, 1385f, -1028f), vec3<f32>(1341f, -1063f, -1232f), vec3<f32>(1693f, -805f, 1569f), vec3<f32>(339f, -1177f, 219f));

var<private> global3: vec2<f32> = vec2<f32>(709f, -727f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = Struct_3(Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.a.x >> (4294967295u % 32u), u_input.a), vec2<u32>(abs(u_input.a), _wgslsmith_div_u32(arg_1.b.x, arg_1.a.x)), arg_1.b), vec2<u32>(60863u, 5200u), u_input.b, select(select(-vec4<i32>(u_input.e, u_input.e, arg_1.c.x, arg_1.c.x), ~vec4<i32>(u_input.e, u_input.b.x, 6983i, arg_1.c.x), false), _wgslsmith_sub_vec4_i32(min(u_input.b, vec4<i32>(arg_1.d.x, arg_1.c.x, -28604i, -8523i)), reverseBits(vec4<i32>(-1i, arg_1.c.x, arg_1.d.x, -24610i))), true)), Struct_2(firstLeadingBit(u_input.b.zx) ^ vec2<i32>(min(u_input.e, 0i), u_input.b.x)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-416f + _wgslsmith_f_op_f32(-global1.x))), arg_0.x, _wgslsmith_f_op_f32(floor(global1.x)), 1000f);
    let var_2 = Struct_3(Struct_1(arg_1.a, var_0.a.a, _wgslsmith_mult_vec4_i32(reverseBits(u_input.b), -vec4<i32>(-1i, var_0.a.c.x, u_input.b.x, arg_1.d.x)), ~(vec4<i32>(13041i, 18975i, u_input.e, -11374i) ^ vec4<i32>(20678i, var_0.a.d.x, var_0.a.d.x, 2147483647i))), var_0.b);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, -239f) - -677f));
    global1 = _wgslsmith_f_op_vec2_f32(-arg_0.zx);
    return var_0.a.c;
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<i32>) -> vec4<i32> {
    return arg_0;
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: bool, arg_3: bool) -> vec2<f32> {
    var var_0 = Struct_3(Struct_1(vec2<u32>((u_input.c.x << (u_input.c.x % 32u)) & ~u_input.d, ~(53365u ^ u_input.d)), vec2<u32>(u_input.c.x, 24822u), firstTrailingBit(func_3(func_2(vec3<f32>(458f, arg_0, 363f), Struct_1(u_input.c.wx, vec2<u32>(4453u, 27218u), u_input.b, u_input.b)), u_input.b.zwz)), vec4<i32>(u_input.e, _wgslsmith_add_i32(28070i, 39370i << (u_input.d % 32u)), reverseBits(i32(-1i) * -2147483647i), 83725i)), Struct_2(vec2<i32>(abs(_wgslsmith_div_i32(-27456i, arg_1)), ~u_input.b.x)));
    let var_1 = !select(!vec2<bool>(false, any(vec4<bool>(arg_3, arg_2, arg_2, arg_2))), select(select(vec2<bool>(false, arg_3), vec2<bool>(true, arg_2), any(vec4<bool>(false, false, true, false))), vec2<bool>(any(vec4<bool>(arg_2, true, true, false)), true), vec2<bool>(true, any(vec2<bool>(arg_2, arg_2)))), select(!vec2<bool>(arg_3, false), vec2<bool>(arg_3, true), select(!vec2<bool>(arg_2, true), select(vec2<bool>(arg_3, true), vec2<bool>(false, arg_3), true), arg_3)));
    var var_2 = var_0.b;
    var_0 = Struct_3(Struct_1(vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(1u, u_input.c.x, u_input.d, 1u)), _wgslsmith_mult_u32(~var_0.a.b.x, min(var_0.a.b.x, 4294967295u))), var_0.a.b, _wgslsmith_clamp_vec4_i32(select(-vec4<i32>(1232i, var_2.a.x, u_input.b.x, -1i), u_input.b ^ vec4<i32>(-24314i, -2147483647i, -20719i, u_input.b.x), false), vec4<i32>(-54886i, 1i, 0i, -1i), u_input.b), ~_wgslsmith_mod_vec4_i32(vec4<i32>(6123i, -65457i, arg_1, var_2.a.x), vec4<i32>(15282i, -54469i, var_0.b.a.x, 16410i)) ^ vec4<i32>(select(2147483647i, -28110i, true), 36876i, var_2.a.x, ~37556i)), Struct_2(reverseBits(u_input.b.xx)));
    global2 = array<vec3<f32>, 24>();
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(812f, 547f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -329f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-804f, global3.x), vec2<f32>(-316f, global1.x), vec2<bool>(arg_3, false))))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<f32>, 24>();
    global3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(524f, u_input.e, true, !(global3.x > global3.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, _wgslsmith_f_op_f32(-947f * -1213f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, global3.x)))) - vec2<f32>(913f, _wgslsmith_f_op_f32(select(global3.x, _wgslsmith_f_op_f32(821f + global3.x), false)))));
    global0 = 10108u > u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c.yzz, _wgslsmith_f_op_f32(-global3.x), (-(vec2<i32>(u_input.b.x, 1i) << (u_input.c.yz % vec2<u32>(32u))) & vec2<i32>(31618i, _wgslsmith_add_i32(u_input.b.x, -38808i))) ^ min(~(-vec2<i32>(-2147483647i, -2147483647i)), -(~vec2<i32>(-17291i, u_input.b.x))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global3.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-309f * 824f), -404f))))), vec3<u32>(~_wgslsmith_sub_u32(abs(27620u), u_input.c.x | u_input.c.x), ~u_input.d, min(1u, ~max(u_input.d, u_input.c.x))));
}

