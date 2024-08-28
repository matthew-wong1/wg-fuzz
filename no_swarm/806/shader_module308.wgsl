struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec3<bool>,
    d: vec3<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: vec3<i32>;

var<private> global2: Struct_1;

var<private> global3: vec4<u32> = vec4<u32>(4294967295u, 1u, 1u, 4294967295u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: f32) -> u32 {
    let var_0 = _wgslsmith_sub_vec4_u32(firstLeadingBit(countOneBits(~select(vec4<u32>(global3.x, u_input.b.x, arg_0.x, 95127u), vec4<u32>(26532u, 41723u, 16236u, 24972u), vec4<bool>(true, global2.d, global2.a, false)))), ~vec4<u32>(global2.b, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 147249u), global3.wyx), global2.b), global2.b, arg_0.x));
    var var_1 = global2.d;
    let var_2 = global2.a;
    let var_3 = arg_0;
    let var_4 = global1.x;
    return countOneBits(~(global3.x << (~0u % 32u)));
}

fn func_2(arg_0: vec4<i32>, arg_1: f32) -> vec3<bool> {
    let var_0 = Struct_2(global3.x);
    let var_1 = vec4<u32>(~countOneBits(u_input.c), min(~var_0.a, global3.x) << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, 1u), vec2<u32>(global3.x, global3.x)) % 32u), _wgslsmith_mult_u32(~_wgslsmith_mult_u32(1u, 8676u), 0u << (_wgslsmith_clamp_u32(global2.b, u_input.a.x, u_input.a.x) % 32u)), _wgslsmith_mod_u32(~(~global3.x), func_3(global3.wz, _wgslsmith_div_f32(-676f, -148f)))) ^ vec4<u32>(41868u ^ ~var_0.a, firstLeadingBit(var_0.a), countOneBits(global2.b), var_0.a);
    global2 = Struct_1(global2.a, _wgslsmith_add_u32(firstTrailingBit(firstLeadingBit(~var_1.x)), ~(~global3.x)), 4294967295u, false);
    global2 = Struct_1(true, global3.x, abs(u_input.c), global2.a);
    var var_2 = true;
    return !select(select(!vec3<bool>(global2.a, true, true), !select(vec3<bool>(global2.a, true, global2.d), vec3<bool>(global2.d, false, true), vec3<bool>(global2.a, false, true)), true), !select(vec3<bool>(false, false, global2.a), select(vec3<bool>(global2.d, false, false), vec3<bool>(global2.d, global2.d, false), global2.d), false), global2.a);
}

fn func_1() -> vec3<bool> {
    global0 = -(~_wgslsmith_dot_vec3_i32(-vec3<i32>(global1.x, global1.x, global1.x), vec3<i32>(1i, 16527i, 0i))) << ((~_wgslsmith_add_u32(4294967295u, 0u) << (abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(80472u, u_input.c), vec2<u32>(65942u, 0u))) % 32u)) % 32u);
    global1 = -max(_wgslsmith_mod_vec3_i32(vec3<i32>(-global1.x, ~0i, _wgslsmith_add_i32(-17029i, -45907i)), _wgslsmith_mod_vec3_i32(vec3<i32>(global1.x, -1i, 2147483647i) << (vec3<u32>(4812u, 0u, u_input.b.x) % vec3<u32>(32u)), -vec3<i32>(global1.x, global1.x, 61964i))), -_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(-5205i, global1.x, global1.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(global1.x, global1.x, global1.x), vec3<i32>(global1.x, global1.x, -2147483647i))));
    var var_0 = any(select(select(select(vec3<bool>(global2.a, global2.d, false), vec3<bool>(global2.a, false, true), func_2(vec4<i32>(-432i, 2147483647i, global1.x, global1.x), -368f)), vec3<bool>(true, true, true), true), !(!(!vec3<bool>(global2.d, global2.a, false))), vec3<bool>(true, true, all(!vec2<bool>(global2.a, true)))));
    var var_1 = Struct_3(select(vec3<bool>(global2.d, true, (true || global2.d) != global2.d), vec3<bool>(!(!global2.a), true, true), func_2(max(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, global1.x, global1.x, global1.x), vec4<i32>(global1.x, global1.x, 1i, global1.x)), vec4<i32>(global1.x, -37130i, global1.x, global1.x)), -997f)));
    global2 = Struct_1(!global2.d, ~_wgslsmith_mod_u32(7493u, countOneBits(1u)), 1u, true);
    return !vec3<bool>(global2.a, any(var_1.a), any(select(select(vec4<bool>(var_1.a.x, var_1.a.x, false, false), vec4<bool>(true, false, true, true), false), vec4<bool>(var_1.a.x, true, true, true), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(true, global2.a, global2.a), !select(select(select(vec3<bool>(global2.a, global2.a, true), vec3<bool>(global2.a, false, true), global2.d), !vec3<bool>(false, global2.d, false), true), !(!vec3<bool>(true, global2.d, true)), vec3<bool>(true, true, global2.d != true)), select(func_1(), !(!select(vec3<bool>(global2.d, global2.d, true), vec3<bool>(global2.a, true, true), global2.d)), !(!vec3<bool>(global2.a, false, false))));
    var var_1 = Struct_1(false, ~59595u, ~49097u, !(!(!(false & global2.d))));
    var var_2 = false;
    let var_3 = firstTrailingBit(-5750i | _wgslsmith_dot_vec4_i32(-(~vec4<i32>(global1.x, -30890i, 14002i, -37679i)), vec4<i32>(-global1.x, ~1i, -1i, max(global1.x, 18385i))));
    let var_4 = Struct_3(!vec3<bool>(true, any(vec2<bool>(true, true)), global2.a));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(select(~(~vec3<i32>(global1.x, var_3, var_3)), vec3<i32>(~global1.x, var_3 << (28306u % 32u), global1.x), func_2(vec4<i32>(2147483647i, 52639i, -36308i, var_3), -546f))), _wgslsmith_f_op_f32(abs(-220f)), u_input.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-156f * -734f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(142f)) - _wgslsmith_f_op_f32(f32(-1f) * -2699f)), _wgslsmith_f_op_f32(-102f - -1000f)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-800f, 1175f, -2485f))), _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -1500f, 814f), vec3<f32>(-868f, -117f, 608f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(270f, -1294f, 700f) - vec3<f32>(-615f, 1034f, -1041f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1394f, -1923f, 321f)))), !vec3<bool>(false, global2.a, false)))));
}

