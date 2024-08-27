struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0i, vec3<u32>(3438u, 18276u, 47356u));

var<private> global1: vec3<u32> = vec3<u32>(4294967295u, 1u, 1u);

var<private> global2: array<vec4<i32>, 18>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(1000f, -1158f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - -101f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1005f, -925f) - vec2<f32>(-1830f, 871f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1661f, 1000f))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1327f, -146f)))))));
    var var_1 = arg_3;
    let var_2 = 8566i;
    let var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 875f, -315f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1000f, -553f, -1000f) - vec4<f32>(-668f, -2383f, var_0.x, var_0.x))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_0.x, var_0.x, -1000f) * vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1077f, var_0.x, var_0.x) * vec4<f32>(-620f, -562f, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 877f, 957f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-540f, -1433f, var_0.x, var_0.x)))))));
    let var_4 = arg_2;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -308f)));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = ~u_input.c;
    var var_1 = ~0u;
    let var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(387f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec2<bool>(arg_1.x, arg_1.x), 3673u, Struct_1(2147483647i, u_input.b.wxw), Struct_1(arg_0.x, global0.b))), _wgslsmith_f_op_f32(-296f * 144f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1f, _wgslsmith_div_f32(1000f, -702f))), _wgslsmith_f_op_f32(2172f - -2336f)), 1f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -273f)), 305f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1000f, -1456f)), -1485f))));
    let var_3 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-(arg_0.x | u_input.a.x), firstTrailingBit(~0i)), ~(2147483647i << (global1.x % 32u)) ^ 0i, 1402i, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -2147483647i, -1i), vec3<i32>(-11210i, -4658i, u_input.c)))), ~arg_0);
    var_0 = -62858i & min(var_3.x, arg_0.x);
    return Struct_1(abs(_wgslsmith_mult_i32(firstTrailingBit(~2147483647i), ~min(1i, u_input.a.x))), firstTrailingBit(firstLeadingBit(vec3<u32>(global0.b.x, ~global1.x, _wgslsmith_div_u32(4294967295u, u_input.b.x)))));
}

fn func_1(arg_0: bool, arg_1: vec4<u32>) -> u32 {
    let var_0 = func_2(~max(select(~u_input.a, u_input.a, !vec4<bool>(false, arg_0, false, arg_0)), _wgslsmith_div_vec4_i32(-global2[_wgslsmith_index_u32(arg_1.x, 18u)], ~vec4<i32>(global0.a, -1i, 59444i, -58156i))), !(!vec4<bool>(590i > u_input.a.x, true, arg_0, !arg_0)));
    var var_1 = global0.a;
    let var_2 = !select(select(select(select(vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(arg_0, false, false, true), vec4<bool>(arg_0, true, arg_0, false)), !vec4<bool>(arg_0, true, true, arg_0), arg_0), !(!vec4<bool>(arg_0, true, arg_0, false)), vec4<bool>(all(vec3<bool>(arg_0, false, true)), !arg_0, !arg_0, true && arg_0)), vec4<bool>(false, arg_0, true, false), vec4<bool>(arg_0, any(!vec4<bool>(true, false, true, arg_0)), !(global0.b.x != arg_1.x), select(false, true, !arg_0)));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-534f, -1574f, -922f))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1584f, 1110f, -1831f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1032f, 703f, -175f), vec3<f32>(1352f, -1238f, -235f), arg_0))))))));
    global0 = func_2(abs(vec4<i32>(_wgslsmith_clamp_i32(0i, -3571i, _wgslsmith_add_i32(u_input.a.x, 0i)), global0.a ^ -u_input.a.x, 43130i, -2147483647i)), vec4<bool>(true && all(select(var_2, var_2, true)), all(vec4<bool>(true, false, false, var_2.x)), var_2.x, arg_0));
    return ~_wgslsmith_sub_u32(var_0.b.x, 38388u);
}

fn func_4(arg_0: u32, arg_1: vec2<i32>) -> vec2<f32> {
    global1 = u_input.b.zxw;
    global0 = func_2(u_input.a, select(vec4<bool>(true, true, true, false), select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true)), true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true))), !any(vec2<bool>(true, false))), true));
    var var_0 = global2[_wgslsmith_index_u32(~1u, 18u)];
    let var_1 = _wgslsmith_mult_vec4_u32(~min(~u_input.b, _wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(4294967295u, 1u, global1.x, 0u)) >> (vec4<u32>(4294967295u, 4294967295u, u_input.d, global1.x) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(u_input.b >> (firstTrailingBit(u_input.b) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(func_1(false, vec4<u32>(4294967295u, 4294967295u, global0.b.x, 25752u)), _wgslsmith_dot_vec3_u32(u_input.b.yxy, u_input.b.ywz), _wgslsmith_add_u32(34357u, arg_0), global0.b.x), ~u_input.b, select(~vec4<u32>(1u, 4294967295u, arg_0, u_input.d), u_input.b | vec4<u32>(0u, global1.x, 49021u, 40072u), false))));
    let var_2 = false;
    return _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2010f + -644f)), _wgslsmith_f_op_f32(ceil(-1249f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-909f, -341f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1134f))))), vec2<f32>(-784f, -221f)));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    global0 = Struct_1(u_input.a.x, vec3<u32>(1u, ~countOneBits(arg_3.b.x), _wgslsmith_mult_u32(~(arg_3.b.x << (arg_2 % 32u)), ~global1.x)));
    let var_1 = arg_1;
    let var_2 = arg_0.x;
    global1 = min(select(global0.b, arg_1.b, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.b, u_input.b), ~vec4<u32>(62198u, 19037u, var_0.b.x, var_1.b.x)) != arg_1.b.x), ~firstTrailingBit(var_0.b));
    return Struct_1(2147483647i, global0.b & ~min(countOneBits(arg_3.b), vec3<u32>(4294967295u, 12016u, global1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(_wgslsmith_f_op_vec2_f32(func_4(select(global0.b.x, func_1(true, u_input.b), select(true, true, false)) << (41750u % 32u), u_input.a.yx)), func_2(-vec4<i32>(-global0.a, abs(5105i), u_input.a.x & 5i, 34202i), vec4<bool>(!all(vec4<bool>(true, false, false, true)), any(vec3<bool>(true, false, false)), true, true)), min(1u, ~u_input.b.x), func_2(countOneBits(vec4<i32>(global0.a & -31765i, -34936i, u_input.a.x, ~u_input.a.x)), vec4<bool>(true, any(vec2<bool>(true, true)), all(vec3<bool>(true, true, false)), true)));
    var var_0 = func_5(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(981f, _wgslsmith_f_op_f32(f32(-1f) * -1347f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-294f, -1316f) + vec2<f32>(-462f, 299f)))))), Struct_1(_wgslsmith_sub_i32(-global0.a, u_input.a.x), ~_wgslsmith_sub_vec3_u32(global0.b & u_input.b.wwx, ~vec3<u32>(global1.x, 1u, global0.b.x))), ~(~20114u), Struct_1(21353i, abs(select(~vec3<u32>(global1.x, 0u, 0u), ~vec3<u32>(4294967295u, 1u, 10663u), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false)))));
    global0 = func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f * -1000f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-972f, -148f))))), func_5(_wgslsmith_f_op_vec2_f32(func_4(1u, abs(u_input.a.zy & vec2<i32>(0i, -11641i)))), Struct_1(i32(-1i) * -1i, vec3<u32>(~u_input.d, _wgslsmith_sub_u32(var_0.b.x, 4294967295u), _wgslsmith_clamp_u32(var_0.b.x, 0u, var_0.b.x))), 4294967295u, func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-485f, -472f) + vec2<f32>(700f, 512f)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1767f, -307f)))), func_5(vec2<f32>(1407f, 1220f), func_5(vec2<f32>(-367f, 454f), Struct_1(-1i, u_input.b.yww), 15255u, Struct_1(-58713i, var_0.b)), 1u, func_5(vec2<f32>(1548f, 267f), Struct_1(var_0.a, vec3<u32>(1u, global1.x, global0.b.x)), u_input.d, Struct_1(global0.a, u_input.b.xxx))), firstTrailingBit(var_0.b.x), func_5(vec2<f32>(471f, 1395f), Struct_1(global0.a, vec3<u32>(4294967295u, 47239u, u_input.b.x)), global0.b.x, Struct_1(global0.a, vec3<u32>(0u, 71124u, var_0.b.x))))), 23599u, Struct_1(func_5(vec2<f32>(_wgslsmith_f_op_f32(step(-1970f, 487f)), -1993f), Struct_1(2147483647i, vec3<u32>(4294967295u, 1u, 47968u) >> (var_0.b % vec3<u32>(32u))), ~16258u, Struct_1(abs(global0.a), min(global0.b, vec3<u32>(global1.x, u_input.d, u_input.d)))).a, var_0.b));
    var var_1 = true;
    let var_2 = ~global0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(1u, 0u, 53029u << (1u % 32u)), func_2(u_input.a, select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true), select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true)), false), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true)), true))).b.x, (~_wgslsmith_dot_vec4_u32(u_input.b, u_input.b) ^ var_0.b.x) << (~(~1u) % 32u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-440f)) - _wgslsmith_f_op_f32(470f + -1216f)), -292f)));
}

