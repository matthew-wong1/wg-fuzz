struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 14868u;

var<private> global1: Struct_3;

var<private> global2: array<u32, 9>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_3) -> u32 {
    var var_0 = Struct_3(vec4<u32>(_wgslsmith_mod_u32(abs(arg_1.d.c), ~14450u), 7890u, ~global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0.c.x, 42451u, global2[_wgslsmith_index_u32(arg_2.a.x, 9u)]), 9u)], ~314u) & (select(vec4<u32>(global1.d.c, 13215u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.a.c, 9u)], 9u)], 59280u) << (vec4<u32>(4294967295u, arg_2.b.c, 49482u, 4294967295u) % vec4<u32>(32u)), u_input.c ^ arg_3.a, select(vec4<bool>(global1.c.x, true, arg_0.a.e.x, false), vec4<bool>(false, arg_1.c.x, arg_2.c.x, arg_0.a.e.x), vec4<bool>(false, global1.c.x, global1.b.e.x, global1.c.x))) >> (firstLeadingBit(u_input.c & vec4<u32>(arg_2.b.c, 25392u, 4294967295u, arg_0.c.x)) % vec4<u32>(32u))), Struct_1(global1.c, 2147483647i, 1u, global1.d.b, !arg_2.b.a), !vec3<bool>(arg_3.b.a.x | all(vec4<bool>(true, arg_2.c.x, arg_0.a.a.x, false)), false, true), global1.d);
    var var_1 = true;
    var var_2 = Struct_1(arg_1.c, _wgslsmith_dot_vec4_i32(select(~vec4<i32>(arg_2.d.d, var_0.d.d, arg_1.b.d, u_input.a), vec4<i32>(global1.b.d, 33172i >> (arg_3.b.c % 32u), ~arg_1.d.d, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.b.b, 45791i, arg_0.a.b, 18741i), vec4<i32>(0i, var_0.b.b, 1i, 17295i))), select(select(vec4<bool>(false, false, arg_3.d.a.x, arg_2.d.e.x), vec4<bool>(arg_0.a.a.x, arg_3.c.x, true, var_0.b.a.x), global1.b.a.x), select(vec4<bool>(false, arg_1.b.e.x, var_0.c.x, arg_2.c.x), vec4<bool>(true, arg_1.b.a.x, global1.d.a.x, var_0.b.e.x), var_0.b.a.x), !vec4<bool>(true, true, arg_3.c.x, true))), _wgslsmith_sub_vec4_i32(-vec4<i32>(-23518i, var_0.b.b, global1.d.b, 2147483647i), -(vec4<i32>(18273i, -2147483647i, 22422i, global1.d.d) ^ vec4<i32>(-63374i, global1.d.d, 43111i, arg_3.d.b)))), global1.b.c, 31857i, !(!vec3<bool>(true & global1.c.x, true, false || arg_0.a.e.x)));
    var var_3 = arg_0;
    global0 = firstLeadingBit(4294967295u);
    return abs(1u);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: vec4<bool>) -> vec3<bool> {
    var var_0 = countOneBits(countOneBits(~firstLeadingBit(u_input.c.www))) >> (vec3<u32>(~_wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, 1u), global1.a.xy)), _wgslsmith_add_u32(0u, _wgslsmith_mult_u32(func_3(Struct_2(global1.b, 1396f, arg_1), Struct_3(u_input.c, global1.b, vec3<bool>(true, global1.b.a.x, true), Struct_1(arg_2.yzy, global1.d.b, 82554u, 1i, vec3<bool>(arg_2.x, true, arg_2.x))), Struct_3(u_input.c, global1.d, global1.b.e, global1.d), Struct_3(vec4<u32>(18691u, global1.d.c, 31326u, global2[_wgslsmith_index_u32(arg_1.x, 9u)]), Struct_1(arg_2.zwz, global1.d.d, 20480u, global1.d.b, arg_2.xwy), vec3<bool>(global1.d.e.x, true, true), global1.b)), 1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(1u, 9u)], _wgslsmith_div_u32(4294967295u, 4294967295u), 26908u), ~u_input.c.wxy)) % vec3<u32>(32u));
    var var_1 = countOneBits(_wgslsmith_mult_vec4_i32(firstTrailingBit(~vec4<i32>(arg_0.x, global1.b.d, u_input.a, 28633i)), reverseBits(vec4<i32>(u_input.a, 1i, 1i, 39095i))) | _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(-4039i, u_input.d, arg_0.x, arg_0.x) & vec4<i32>(arg_0.x, arg_0.x, global1.d.b, 35568i)), -vec4<i32>(arg_0.x, 44570i, 5220i, u_input.a)));
    global0 = ~(reverseBits(reverseBits(~global2[_wgslsmith_index_u32(arg_1.x, 9u)])) | 18876u);
    var_0 = _wgslsmith_sub_vec3_u32(~firstTrailingBit(~(~vec3<u32>(25701u, var_0.x, var_0.x))), vec3<u32>(~53555u, ~var_0.x ^ _wgslsmith_dot_vec3_u32(vec3<u32>(global1.b.c, u_input.e, 8311u), arg_1), arg_1.x));
    return !(!arg_2.zxx);
}

fn func_1() -> u32 {
    var var_0 = ~vec2<i32>(_wgslsmith_mod_i32(u_input.d << (u_input.c.x % 32u), ~2147483647i), firstTrailingBit(i32(-1i) * -22333i)) >> (vec2<u32>(global2[_wgslsmith_index_u32(1u, 9u)], ~global1.a.x) % vec2<u32>(32u));
    global0 = u_input.e;
    let var_1 = Struct_3(u_input.c, global1.d, func_2(-(~vec3<i32>(-2147483647i, -51246i, 37652i)) ^ (vec3<i32>(global1.d.b, 0i, u_input.d) << (u_input.c.xxx % vec3<u32>(32u))), u_input.c.xzz, !vec4<bool>(true, global1.c.x, global1.b.a.x, false)), Struct_1(!vec3<bool>(true, true, all(vec3<bool>(false, false, false))), -(~abs(9689i)), u_input.b, _wgslsmith_mult_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a, -57637i), vec3<i32>(-10745i, u_input.d, u_input.a)), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -1i, 0i, u_input.d), vec4<i32>(u_input.d, global1.b.d, global1.b.b, global1.b.d)), max(vec4<i32>(var_0.x, -2147483647i, 1i, var_0.x), vec4<i32>(global1.b.b, var_0.x, u_input.a, 34317i)))), select(!vec3<bool>(true, global1.d.e.x, global1.d.a.x), vec3<bool>(global1.d.e.x, global1.d.b >= 12927i, global1.d.a.x), select(!vec3<bool>(true, global1.d.a.x, true), global1.b.a, true))));
    let var_2 = global1.a.wzz;
    let var_3 = Struct_2(global1.d, -2050f, u_input.c.wwx);
    return ~var_3.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.d.b;
    let var_1 = ~firstLeadingBit(~firstLeadingBit(vec2<i32>(26656i, 16684i)) >> ((_wgslsmith_add_vec2_u32(global1.a.xy, vec2<u32>(global2[_wgslsmith_index_u32(0u, 9u)], 1u)) << (u_input.c.yw % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_2 = vec3<u32>(~(~func_1()), 1343u, _wgslsmith_add_u32(17344u, 39573u));
    var var_3 = global1.b;
    global1 = Struct_3(reverseBits(global1.a), Struct_1(global1.b.e, select((global1.d.b ^ -1i) ^ global1.d.d, 4813i, global1.c.x), u_input.c.x | _wgslsmith_mod_u32(48497u, ~29971u), _wgslsmith_dot_vec3_i32(-(~vec3<i32>(2147483647i, var_3.d, -12817i)), -(vec3<i32>(global1.d.d, 23916i, u_input.d) << (vec3<u32>(global2[_wgslsmith_index_u32(global1.a.x, 9u)], var_2.x, 0u) % vec3<u32>(32u)))), select(!(!global1.d.e), global1.c, false)), var_3.e, Struct_1(vec3<bool>(false, global1.c.x, true), 7493i, _wgslsmith_mod_u32(select(var_3.c, var_3.c, false) | 8124u, ~_wgslsmith_add_u32(global2[_wgslsmith_index_u32(19084u, 9u)], var_3.c)), ((i32(-1i) * -1i) >> (var_2.x % 32u)) & ~_wgslsmith_dot_vec4_i32(vec4<i32>(14853i, -24835i, global1.b.d, 0i), vec4<i32>(-1i, 40248i, 5687i, global1.b.b)), global1.c));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.e) ^ vec2<u32>(0u, 153353u), abs(global1.a.yy))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-615f, 1245f, -484f)), vec3<f32>(-782f, -464f, -1000f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-1000f - -1280f), _wgslsmith_f_op_f32(f32(-1f) * -1341f), _wgslsmith_f_op_f32(1000f - -436f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1358f, -414f, 264f), vec3<f32>(1551f, -791f, -554f))), global1.b.c >= max(u_input.b, var_3.c))))));
}

