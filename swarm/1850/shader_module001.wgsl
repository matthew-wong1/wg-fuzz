struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(-276f, 227f, 999f, -1307f), vec2<u32>(30843u, 0u));

var<private> global1: array<u32, 3>;

var<private> global2: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(Struct_1(vec4<f32>(-735f, -544f, 2244f, 596f), vec2<u32>(4294967295u, 4294967295u)), vec3<i32>(i32(-2147483648), 22886i, -32805i), vec3<u32>(75073u, 17675u, 4294967295u), vec4<bool>(true, false, true, true)), Struct_2(Struct_1(vec4<f32>(465f, 1313f, -750f, -1077f), vec2<u32>(41297u, 22909u)), vec3<i32>(0i, 1i, 1i), vec3<u32>(20364u, 35570u, 44921u), vec4<bool>(false, true, true, false)), Struct_2(Struct_1(vec4<f32>(2066f, 2611f, 669f, 485f), vec2<u32>(0u, 0u)), vec3<i32>(i32(-2147483648), -11163i, -1i), vec3<u32>(1u, 51053u, 6522u), vec4<bool>(true, false, true, false)), Struct_2(Struct_1(vec4<f32>(-1543f, 2001f, 489f, 500f), vec2<u32>(1u, 5006u)), vec3<i32>(1i, 9878i, -430i), vec3<u32>(0u, 0u, 0u), vec4<bool>(true, false, true, false)), Struct_2(Struct_1(vec4<f32>(-456f, -1509f, 618f, 128f), vec2<u32>(4294967295u, 1u)), vec3<i32>(-1i, i32(-2147483648), 22735i), vec3<u32>(4151u, 0u, 32814u), vec4<bool>(true, false, false, false)), Struct_2(Struct_1(vec4<f32>(-1460f, -2036f, -1665f, -288f), vec2<u32>(63952u, 39560u)), vec3<i32>(0i, 1i, 38820i), vec3<u32>(1u, 4294967295u, 4294967295u), vec4<bool>(false, false, true, false)), Struct_2(Struct_1(vec4<f32>(-326f, -488f, 976f, 421f), vec2<u32>(1u, 0u)), vec3<i32>(2147483647i, -40111i, 1390i), vec3<u32>(4294967295u, 1u, 35224u), vec4<bool>(true, true, false, true)), Struct_2(Struct_1(vec4<f32>(451f, -203f, -1301f, -1000f), vec2<u32>(0u, 4294967295u)), vec3<i32>(-20716i, 2667i, 16653i), vec3<u32>(4294967295u, 34029u, 1u), vec4<bool>(true, true, true, false)), Struct_2(Struct_1(vec4<f32>(402f, 1425f, -159f, -1308f), vec2<u32>(0u, 76815u)), vec3<i32>(0i, 1i, -26842i), vec3<u32>(8755u, 4294967295u, 1u), vec4<bool>(false, true, true, true)), Struct_2(Struct_1(vec4<f32>(-407f, 1237f, 1000f, -551f), vec2<u32>(15867u, 36278u)), vec3<i32>(-14301i, 0i, -6012i), vec3<u32>(1u, 56419u, 77337u), vec4<bool>(true, false, false, false)), Struct_2(Struct_1(vec4<f32>(-835f, 913f, 773f, -713f), vec2<u32>(55781u, 37992u)), vec3<i32>(32247i, -3753i, -24098i), vec3<u32>(0u, 37225u, 54753u), vec4<bool>(false, true, true, false)), Struct_2(Struct_1(vec4<f32>(-2210f, 290f, 845f, -973f), vec2<u32>(49948u, 95944u)), vec3<i32>(0i, 0i, 0i), vec3<u32>(39425u, 30804u, 1u), vec4<bool>(false, false, false, true)), Struct_2(Struct_1(vec4<f32>(-1084f, 1324f, -352f, 224f), vec2<u32>(61259u, 4294967295u)), vec3<i32>(-5916i, 1i, 0i), vec3<u32>(46538u, 109077u, 113333u), vec4<bool>(true, false, true, true)), Struct_2(Struct_1(vec4<f32>(-168f, 1859f, -114f, -136f), vec2<u32>(4294967295u, 1u)), vec3<i32>(i32(-2147483648), 26535i, i32(-2147483648)), vec3<u32>(0u, 1u, 1u), vec4<bool>(false, true, true, false)), Struct_2(Struct_1(vec4<f32>(1117f, -849f, -762f, -956f), vec2<u32>(1u, 53819u)), vec3<i32>(-1i, 20919i, i32(-2147483648)), vec3<u32>(63138u, 0u, 1u), vec4<bool>(false, false, true, true)), Struct_2(Struct_1(vec4<f32>(-2561f, -988f, 573f, 2222f), vec2<u32>(0u, 4294967295u)), vec3<i32>(1i, -17080i, 47634i), vec3<u32>(0u, 4294967295u, 4294967295u), vec4<bool>(true, false, true, false)), Struct_2(Struct_1(vec4<f32>(-511f, -671f, 1252f, 246f), vec2<u32>(47929u, 29268u)), vec3<i32>(27830i, -18711i, 1i), vec3<u32>(0u, 61246u, 48511u), vec4<bool>(false, true, false, true)), Struct_2(Struct_1(vec4<f32>(1332f, -491f, -654f, 1188f), vec2<u32>(0u, 57427u)), vec3<i32>(2147483647i, -2092i, 2147483647i), vec3<u32>(12482u, 62842u, 75201u), vec4<bool>(true, false, true, false)), Struct_2(Struct_1(vec4<f32>(797f, 650f, -1680f, -1069f), vec2<u32>(0u, 66129u)), vec3<i32>(-2959i, 9720i, 2147483647i), vec3<u32>(18545u, 21315u, 4294967295u), vec4<bool>(false, false, false, true)), Struct_2(Struct_1(vec4<f32>(2271f, 1835f, 238f, 1156f), vec2<u32>(1u, 2015u)), vec3<i32>(i32(-2147483648), -29621i, -20843i), vec3<u32>(31216u, 52590u, 1u), vec4<bool>(true, false, true, true)), Struct_2(Struct_1(vec4<f32>(-1000f, 668f, -1625f, 250f), vec2<u32>(1u, 31587u)), vec3<i32>(2147483647i, 0i, 2147483647i), vec3<u32>(84720u, 29230u, 1u), vec4<bool>(true, false, true, false)), Struct_2(Struct_1(vec4<f32>(-370f, -464f, 356f, 908f), vec2<u32>(72914u, 54935u)), vec3<i32>(22633i, 8846i, 25532i), vec3<u32>(0u, 1u, 107347u), vec4<bool>(true, false, false, true)), Struct_2(Struct_1(vec4<f32>(-962f, 216f, 381f, -747f), vec2<u32>(5791u, 0u)), vec3<i32>(i32(-2147483648), -6140i, 610i), vec3<u32>(0u, 1u, 4294967295u), vec4<bool>(true, false, false, true)), Struct_2(Struct_1(vec4<f32>(296f, 957f, -1245f, -1253f), vec2<u32>(27260u, 0u)), vec3<i32>(8686i, -45462i, -9742i), vec3<u32>(23352u, 1197u, 11120u), vec4<bool>(false, false, false, true)));

var<private> global3: vec3<i32> = vec3<i32>(1i, 22004i, -1i);

var<private> global4: vec4<u32> = vec4<u32>(30474u, 0u, 0u, 1u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32) -> u32 {
    global2 = array<Struct_2, 24>();
    var var_0 = reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(3015u, global0.b.x, global1[_wgslsmith_index_u32(39505u, 3u)], global4.x), vec4<u32>(12997u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4.x, 3u)], 3u)], ~(~38984u), _wgslsmith_add_u32(0u, _wgslsmith_add_u32(8255u, global1[_wgslsmith_index_u32(12149u, 3u)])))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, 115f, global0.a.x, global0.a.x)) * global0.a) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global0.a.x, -1527f, -599f) * global0.a)))), max(global0.b, vec2<u32>(23519u ^ global4.x, 68419u))), _wgslsmith_clamp_vec3_i32(max(u_input.b.zyz, u_input.b.wwz & (vec3<i32>(global3.x, -18055i, arg_0) & vec3<i32>(-2147483647i, -2147483647i, -63128i))), firstTrailingBit(countOneBits(~u_input.b.zzz)), u_input.b.yxx), global4.wxw, select(vec4<bool>(any(vec2<bool>(true, true)), all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), false)), true, any(vec4<bool>(true, false, false, true))), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2786f, -366f)) - global0.a.x) == global0.a.x));
    let var_2 = 246f;
    global0 = var_1.a;
    return _wgslsmith_add_u32(global1[_wgslsmith_index_u32(1u, 3u)], ~103281u);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: vec4<f32>, arg_3: u32) -> vec4<u32> {
    let var_0 = abs(global4.zz);
    global1 = array<u32, 3>();
    let var_1 = Struct_1(arg_2, vec2<u32>(17818u, select(~(global1[_wgslsmith_index_u32(59403u, 3u)] | arg_3), ~global4.x, all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -748f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(arg_2.x)))))) == 1227f;
    var var_3 = any(!vec3<bool>(var_2, any(vec4<bool>(var_2, false, var_2, var_2)) || var_2, any(vec4<bool>(true, var_2, false, var_2)) || true));
    return ~((vec4<u32>(4294967295u, ~1u, global1[_wgslsmith_index_u32(arg_0.x, 3u)], arg_3) ^ firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(12143u, global4.x, 26175u, 4294967295u), vec4<u32>(34852u, global4.x, var_1.b.x, 64062u)))) | _wgslsmith_add_vec4_u32(select(arg_0 ^ vec4<u32>(global0.b.x, var_1.b.x, 0u, 4294967295u), max(arg_0, vec4<u32>(74977u, 0u, 1u, 73221u)), false), vec4<u32>(4294967295u, abs(1u), 0u, arg_3)));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: vec3<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-arg_1.a.a);
    global3 = u_input.b.xxw;
    let var_1 = max(func_4(~countOneBits(~vec4<u32>(arg_0, 25951u, global4.x, global0.b.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a.a.x, 1000f, 1267f), arg_1.a.a.xwy)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.xyy), vec3<f32>(-555f, 1864f, arg_1.a.a.x), arg_1.b.x < global3.x))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(var_0 + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-749f, -386f, var_0.x, -639f), vec4<f32>(global0.a.x, var_0.x, 603f, -385f), arg_1.d.x))))), func_3(global3.x)), ~vec4<u32>(11062u, abs(7101u), 1u, ~0u));
    global4 = _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(var_1, vec4<u32>(4294967295u, global4.x, 1u, 0u) & ~var_1) & vec4<u32>(abs(~global1[_wgslsmith_index_u32(var_1.x, 3u)]), 26584u, arg_0 | var_1.x, 0u), abs(~var_1), _wgslsmith_add_vec4_u32(var_1, _wgslsmith_mult_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(1u, 3u)], global1[_wgslsmith_index_u32(5377u, 3u)], _wgslsmith_dot_vec2_u32(vec2<u32>(28338u, 4294967295u), vec2<u32>(arg_0, 1u)), 1u), vec4<u32>(0u, 57161u, ~0u, 63290u))));
    var var_2 = Struct_2(arg_1.a, _wgslsmith_add_vec3_i32(~arg_1.b, vec3<i32>(abs(_wgslsmith_clamp_i32(arg_1.b.x, global3.x, -9177i)), -45312i, arg_1.b.x)), countOneBits(vec3<u32>(~(~46394u), ~_wgslsmith_clamp_u32(arg_1.c.x, 1u, var_1.x), _wgslsmith_div_u32(63913u >> (var_1.x % 32u), ~global4.x))), select(arg_1.d, !(!vec4<bool>(false, arg_1.d.x, true, true)), arg_1.d.x));
    return -2147483647i;
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<i32>) -> u32 {
    let var_0 = arg_2.a;
    let var_1 = arg_1;
    global2 = array<Struct_2, 24>();
    global3 = vec3<i32>(1i ^ _wgslsmith_clamp_i32(countOneBits(global3.x), 1i << (_wgslsmith_div_u32(1u, 4294967295u) % 32u), -2147483647i), arg_2.b.x, _wgslsmith_mod_i32(-_wgslsmith_dot_vec3_i32(arg_0.zwz | vec3<i32>(60215i, global3.x, -5274i), arg_2.b), _wgslsmith_dot_vec3_i32(arg_3, ~vec3<i32>(13340i, 2147483647i, arg_2.b.x) ^ firstTrailingBit(vec3<i32>(-2147483647i, 1i, arg_2.b.x)))));
    let var_2 = ~min(_wgslsmith_clamp_i32(global3.x, _wgslsmith_div_i32(~1i, u_input.a), -firstLeadingBit(-2147483647i)), arg_3.x);
    return ~(~arg_1.b.x & var_1.b.x);
}

fn func_6(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_2, arg_3: u32) -> Struct_2 {
    let var_0 = arg_2.d.wzy;
    var var_1 = vec4<i32>(min(-1i, global3.x), arg_0.x, _wgslsmith_dot_vec2_i32(-(vec2<i32>(-17928i, global3.x) & u_input.b.zy), select(~arg_2.b.zx, vec2<i32>(arg_0.x, _wgslsmith_sub_i32(u_input.b.x, arg_2.b.x)), var_0.x == !arg_2.d.x)), 8549i);
    var var_2 = global0.a;
    let var_3 = vec4<u32>(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(17381u, 4294967295u)), ~_wgslsmith_mod_vec2_u32(~vec2<u32>(34726u, global4.x), vec2<u32>(global0.b.x, arg_2.a.b.x))), 30601u, func_5(u_input.b >> (((vec4<u32>(arg_2.c.x, arg_3, 0u, 53179u) ^ vec4<u32>(arg_2.a.b.x, 1948u, global1[_wgslsmith_index_u32(arg_3, 3u)], arg_3)) ^ vec4<u32>(25174u, global0.b.x, 25601u, 0u)) % vec4<u32>(32u)), arg_2.a, Struct_2(arg_2.a, _wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.b.x, global3.x, var_1.x), u_input.b.ywy), arg_2.c, arg_2.d), -min(vec3<i32>(14342i, 0i, -1i), var_1.zwx)), _wgslsmith_sub_u32(4294967295u, 0u));
    global0 = Struct_1(global0.a, ~var_3.xw);
    return global2[_wgslsmith_index_u32(arg_2.c.x, 24u)];
}

fn func_7(arg_0: Struct_2) -> Struct_2 {
    var var_0 = func_6(u_input.b.xyw, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-686f + global0.a.x) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.a.a.x)))), 138f), Struct_2(func_6(u_input.b.xww, _wgslsmith_f_op_f32(-arg_0.a.a.x), Struct_2(arg_0.a, -vec3<i32>(arg_0.b.x, -51705i, global3.x), vec3<u32>(arg_0.c.x, 0u, global4.x), select(vec4<bool>(arg_0.d.x, arg_0.d.x, true, arg_0.d.x), arg_0.d, arg_0.d.x)), abs(_wgslsmith_div_u32(70378u, 1u))).a, -arg_0.b, ~global4.yzy, vec4<bool>(!(arg_0.d.x || false), global0.a.x <= _wgslsmith_f_op_f32(1000f + arg_0.a.a.x), true, arg_0.d.x)), _wgslsmith_mult_u32(countOneBits(_wgslsmith_div_u32(~4294967295u, func_3(arg_0.b.x))), 4294967295u));
    global3 = max(vec3<i32>(var_0.b.x, 23236i, global3.x), -u_input.b.xzw);
    let var_1 = reverseBits(-(u_input.b.yw ^ firstLeadingBit(vec2<i32>(u_input.b.x, 1i)))) | (vec2<i32>(select(1i, arg_0.b.x, any(arg_0.d.wzw)), firstLeadingBit(0i)) | global3.xy);
    var var_2 = select(vec3<bool>(arg_0.d.x, !any(select(vec4<bool>(false, var_0.d.x, false, arg_0.d.x), var_0.d, true)), var_0.d.x), func_6(_wgslsmith_div_vec3_i32(-vec3<i32>(var_0.b.x, global3.x, arg_0.b.x), _wgslsmith_div_vec3_i32(var_0.b, u_input.b.yww & vec3<i32>(53444i, global3.x, 1i))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(arg_0.a.a.x)), -572f)), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(global4.x, 1u), ~(global0.b.x >> (global0.b.x % 32u))), 24u)], 22218u).d.yzx, false);
    let var_3 = ~var_0.b.x;
    return func_6(arg_0.b, var_0.a.a.x, Struct_2(Struct_1(global0.a, vec2<u32>(global1[_wgslsmith_index_u32(1u, 3u)], ~1u)), ~vec3<i32>(-1i, var_3, -2147483647i << (var_0.c.x % 32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(max(global0.b.x, 1u), 0u, _wgslsmith_dot_vec3_u32(global4.xww, vec3<u32>(global4.x, var_0.a.b.x, global0.b.x))), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 3u)], 3u)], var_0.a.b.x, 1u) >> (countOneBits(arg_0.c) % vec3<u32>(32u)), func_4(reverseBits(vec4<u32>(0u, 30728u, global4.x, 60302u)), arg_0.a.a.zwx, _wgslsmith_f_op_vec4_f32(-arg_0.a.a), 1u).zyz), var_0.d), 63326u);
}

fn func_1() -> Struct_1 {
    let var_0 = 155u;
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(-global0.a.x), 1343f, _wgslsmith_div_f32(940f, 269f))) + vec4<f32>(-468f, global0.a.x, _wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1417f)), global0.a.x)), ~max(~(~vec2<u32>(global4.x, 4294967295u)), global0.b));
    let var_1 = func_7(func_6(_wgslsmith_clamp_vec3_i32(firstLeadingBit(u_input.b.yxx), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 1i, -11323i), u_input.b.xzy), countOneBits(vec3<i32>(-76647i, u_input.b.x, u_input.a))) << (_wgslsmith_div_vec3_u32(vec3<u32>(var_0, global4.x, global0.b.x), ~global4.wxz) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-global0.a.x), global2[_wgslsmith_index_u32(func_5(vec4<i32>(global3.x, func_2(global0.b.x, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 3u)], 24u)], u_input.b.wwy), _wgslsmith_add_i32(1562i, u_input.a), 28306i), Struct_1(vec4<f32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x), vec2<u32>(global0.b.x, 59740u)), global2[_wgslsmith_index_u32(abs(15477u), 24u)], u_input.b.xxx), 24u)], global4.x));
    global2 = array<Struct_2, 24>();
    let var_2 = var_1.b.x;
    return func_6(func_6(var_1.b, 1402f, var_1, _wgslsmith_clamp_u32(19403u, var_1.a.b.x, global1[_wgslsmith_index_u32(global4.x, 3u)])).b, var_1.a.a.x, func_7(func_6(~select(u_input.b.wzw, u_input.b.wyx, vec3<bool>(var_1.d.x, var_1.d.x, var_1.d.x)), global0.a.x, var_1, 25670u)), global4.x).a;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = u_input.b.zwz;
    var var_0 = 20780u >> (firstTrailingBit(35549u) % 32u);
    global4 = vec4<u32>(12931u, _wgslsmith_dot_vec3_u32(global4.zww, vec3<u32>(0u, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(global4.zy, global4.xy), 1u), global1[_wgslsmith_index_u32(~(~global0.b.x), 3u)])), _wgslsmith_div_u32(~1u, _wgslsmith_div_u32(countOneBits(global1[_wgslsmith_index_u32(1u, 3u)]), global4.x)), ~(~global4.x));
    global0 = func_1();
    global1 = array<u32, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_i32(u_input.b.x, -(i32(-1i) * -2147483647i)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.a.www + vec3<f32>(-1000f, -307f, global0.a.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, -1667f, -1016f))), _wgslsmith_f_op_vec3_f32(global0.a.xyz * global0.a.zwy), false)), _wgslsmith_f_op_vec3_f32(-func_6(u_input.b.ywy, global0.a.x, func_7(Struct_2(Struct_1(global0.a, vec2<u32>(11283u, global1[_wgslsmith_index_u32(global0.b.x, 3u)])), vec3<i32>(-17427i, 1i, 1i), vec3<u32>(global4.x, 76164u, global1[_wgslsmith_index_u32(57746u, 3u)]), vec4<bool>(false, false, false, true))), 3745u).a.a.wwx))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0.a.x)), global0.a.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.a.wyw * vec3<f32>(985f, 1225f, -227f)) * global0.a.xzz)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-586f, 1223f, global0.a.x), vec3<f32>(454f, global0.a.x, 1983f)), _wgslsmith_f_op_vec3_f32(abs(global0.a.xxw)))));
}

