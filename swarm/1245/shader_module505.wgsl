struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<u32>, 19> = array<vec3<u32>, 19>(vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(5499u, 1u, 6415u), vec3<u32>(4294967295u, 4189u, 0u), vec3<u32>(24307u, 1664u, 4294967295u), vec3<u32>(1u, 4294967295u, 38556u), vec3<u32>(7484u, 2965u, 1u), vec3<u32>(33645u, 53405u, 1u), vec3<u32>(495u, 0u, 4294967295u), vec3<u32>(1u, 31267u, 34745u), vec3<u32>(12337u, 0u, 31453u), vec3<u32>(4294967295u, 1u, 49155u), vec3<u32>(88161u, 4294967295u, 1u), vec3<u32>(36929u, 0u, 4294967295u), vec3<u32>(71989u, 12703u, 21347u), vec3<u32>(1u, 1733u, 32687u), vec3<u32>(4991u, 4294967295u, 124252u), vec3<u32>(0u, 20342u, 13179u), vec3<u32>(4294967295u, 1u, 71417u), vec3<u32>(4294967295u, 23511u, 36316u));

var<private> global2: array<vec3<u32>, 26>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = arg_2;
    global1 = array<vec3<u32>, 19>();
    global1 = array<vec3<u32>, 19>();
    let var_1 = select(!(!select(!arg_2.b, arg_2.b, select(arg_2.b, vec4<bool>(true, false, var_0.b.x, var_0.b.x), vec4<bool>(var_0.b.x, arg_2.b.x, arg_2.b.x, false)))), vec4<bool>(any(!arg_2.b.yz), all(var_0.b.zy), false, all(arg_2.b)), arg_2.b);
    var var_2 = arg_2;
    return var_1;
}

fn func_4(arg_0: Struct_1) -> vec3<i32> {
    return vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(select(arg_0.a, ~(-29423i), arg_0.b.x), 0i), arg_0.a, 0i), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(-(~vec4<i32>(-5106i, arg_0.a, arg_0.a, 1i)), ~(~vec4<i32>(-1i, arg_0.a, 25166i, 1i))), vec4<i32>(-551i, _wgslsmith_dot_vec2_i32(min(vec2<i32>(2147483647i, 15486i), vec2<i32>(-2664i, -5404i)), -vec2<i32>(-45257i, arg_0.a)), arg_0.a, arg_0.a)), min(~(i32(-1i) * -arg_0.a), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(7517i, arg_0.a), vec2<i32>(-2147483647i, 0i)))));
}

fn func_2() -> vec3<i32> {
    var var_0 = func_4(Struct_1(-4386i, select(select(func_3(vec4<f32>(1441f, 2118f, -389f, 513f), 475f, Struct_1(1i, vec4<bool>(false, false, true, true))), vec4<bool>(true, false, true, false), func_3(vec4<f32>(227f, -1310f, 710f, 1000f), -1589f, Struct_1(36421i, vec4<bool>(false, true, false, false)))), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, u_input.a != u_input.b.x, true))));
    global2 = array<vec3<u32>, 26>();
    let var_1 = 41683u;
    global0 = -150f;
    var_0 = vec3<i32>(5502i, var_0.x, _wgslsmith_dot_vec4_i32((vec4<i32>(2147483647i, var_0.x, 1i, -1i) & vec4<i32>(var_0.x, -1i, 48651i, -4953i)) ^ -(~vec4<i32>(var_0.x, var_0.x, -28223i, 0i)), -firstLeadingBit(firstLeadingBit(vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x)))));
    return max(-(~_wgslsmith_clamp_vec3_i32(max(vec3<i32>(var_0.x, 2147483647i, -1i), vec3<i32>(2380i, var_0.x, var_0.x)), ~vec3<i32>(var_0.x, -2147483647i, -2147483647i), ~vec3<i32>(-2147483647i, var_0.x, 1i))), vec3<i32>(-12056i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 30599i, _wgslsmith_add_i32(-27323i, var_0.x)), vec3<i32>(-828i, firstLeadingBit(var_0.x), -16544i)), _wgslsmith_add_i32(-21435i, firstTrailingBit(var_0.x))));
}

fn func_5(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(808f, 272f, -119f, 384f))) - vec4<f32>(_wgslsmith_f_op_f32(-1455f * 461f), 1142f, 1303f, 915f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-445f, -595f, -393f, 499f) - vec4<f32>(-1329f, -493f, 345f, 1000f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-661f, 2372f, -384f, -207f) * vec4<f32>(1454f, 1000f, -789f, 645f))), vec4<f32>(1f, 1f, 1f, 1f)), select(vec4<bool>(true, true, true, true), arg_2.b, any(vec4<bool>(arg_2.b.x, true, arg_2.b.x, arg_2.b.x))))));
    let var_1 = arg_2;
    var var_2 = Struct_1(var_1.a, !vec4<bool>(false, true, select(1u, 4294967295u, false) > u_input.a, var_1.b.x));
    let var_3 = ~abs(min(vec4<u32>(arg_1, ~5488u, ~arg_1, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, 18322u), vec4<u32>(u_input.a, 1u, arg_1, 25201u))));
    var_2 = Struct_1(~(~1i), var_2.b);
    return max(_wgslsmith_dot_vec4_i32(-abs(-vec4<i32>(arg_2.a, arg_0.x, 47805i, var_1.a)), vec4<i32>((var_2.a << (0u % 32u)) << (arg_1 % 32u), ~0i, -_wgslsmith_sub_i32(var_1.a, 75785i), min(arg_2.a, arg_2.a))), arg_0.x);
}

fn func_1(arg_0: u32) -> StorageBuffer {
    var var_0 = func_5(select(_wgslsmith_div_vec3_i32(max(vec3<i32>(-1i, -2147483647i, -45649i), vec3<i32>(-2147483647i, 51789i, -37931i) << (global1[_wgslsmith_index_u32(43879u, 19u)] % vec3<u32>(32u))), func_2() ^ vec3<i32>(-17748i, -12372i, 1i)), -_wgslsmith_mult_vec3_i32(vec3<i32>(0i, -1i, -19256i), -vec3<i32>(58553i, 2147483647i, 1i)), vec3<bool>(true, select(true, false, false) || true, any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true))))), ~(~_wgslsmith_sub_u32(25978u, ~arg_0)), Struct_1(max(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 44808i, 1i, 2147483647i), vec4<i32>(-63047i, 2147483647i, 2147483647i, 1i)), -2147483647i), 2147483647i), select(vec4<bool>(any(vec4<bool>(false, true, true, false)), true, all(vec3<bool>(true, true, true)), true), !func_3(vec4<f32>(-266f, 1000f, 1306f, 790f), -815f, Struct_1(-2147483647i, vec4<bool>(false, true, false, false))), vec4<bool>(true, true, true, true))));
    var var_1 = firstLeadingBit(-2147483647i);
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(458f, _wgslsmith_f_op_f32(1000f - -1851f))), 891f, 1f));
    var var_3 = Struct_1(-_wgslsmith_add_i32(~_wgslsmith_div_i32(-2147483647i, 1i), _wgslsmith_sub_i32(func_4(Struct_1(0i, vec4<bool>(false, false, false, true))).x, _wgslsmith_add_i32(-2789i, 0i))), func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(470f - -1074f), _wgslsmith_div_f32(var_2.x, 546f), var_2.x) + vec4<f32>(311f, -146f, _wgslsmith_f_op_f32(f32(-1f) * -1029f), _wgslsmith_f_op_f32(trunc(285f)))), _wgslsmith_f_op_f32(var_2.x * var_2.x), Struct_1(35619i, vec4<bool>(true, true, true, true))));
    let var_4 = var_3.b.ywy;
    return StorageBuffer(1209f, -(~(~select(vec3<i32>(-4588i, -66332i, 23142i), vec3<i32>(var_3.a, 0i, 1i), var_3.b.wzy))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -abs(-(~(-2147483647i))) << ((~(~u_input.a | max(4294967295u, u_input.b.x)) >> (u_input.a % 32u)) % 32u);
    var var_1 = countOneBits(_wgslsmith_dot_vec2_u32(u_input.b.zx, vec2<u32>(~147229u, u_input.b.x << (4294967295u % 32u))));
    let var_2 = reverseBits(~(~u_input.a) >> (~18294u % 32u));
    let x = u_input.a;
    s_output = func_1(14135u);
}

