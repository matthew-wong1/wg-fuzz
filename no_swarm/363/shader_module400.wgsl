struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16>;

var<private> global1: array<vec2<u32>, 21> = array<vec2<u32>, 21>(vec2<u32>(0u, 29581u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 11740u), vec2<u32>(40656u, 4782u), vec2<u32>(43546u, 46165u), vec2<u32>(3149u, 0u), vec2<u32>(6802u, 40817u), vec2<u32>(4294967295u, 54738u), vec2<u32>(50865u, 35705u), vec2<u32>(24156u, 1u), vec2<u32>(2844u, 13695u), vec2<u32>(4294967295u, 39584u), vec2<u32>(29967u, 4294967295u), vec2<u32>(7839u, 98250u), vec2<u32>(1u, 21680u), vec2<u32>(0u, 94639u), vec2<u32>(18719u, 29214u), vec2<u32>(61754u, 4294967295u), vec2<u32>(2888u, 0u), vec2<u32>(59222u, 16067u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: f32, arg_3: Struct_2) -> vec4<i32> {
    return -vec4<i32>(countOneBits(-1i), -13346i << (~(~arg_0) % 32u), u_input.b, u_input.b);
}

fn func_2(arg_0: i32, arg_1: u32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_clamp_vec4_i32(abs(func_3(u_input.a, vec4<f32>(2403f, global0[_wgslsmith_index_u32(0u, 16u)], 1000f, global0[_wgslsmith_index_u32(4294967295u, 16u)]), global0[_wgslsmith_index_u32(0u, 16u)], Struct_2(global0[_wgslsmith_index_u32(arg_1, 16u)]))), min(vec4<i32>(arg_0, arg_0, 2147483647i, -6444i) << (vec4<u32>(u_input.a, 63097u, 36638u, 4294967295u) % vec4<u32>(32u)), vec4<i32>(u_input.b, arg_0, 1i, -14821i)), select(vec4<i32>(u_input.b, u_input.b, 1i, -1i), ~vec4<i32>(0i, 19963i, 9044i, 62894i), true)) << (~abs(~vec4<u32>(0u, 36533u, 4294967295u, arg_1)) % vec4<u32>(32u)), vec2<u32>(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(0u, 93514u, 19088u)) >> ((vec3<u32>(0u, u_input.a, u_input.a) & vec3<u32>(27485u, 4294967295u, 1u)) % vec3<u32>(32u)), vec3<u32>(countOneBits(u_input.a), 6163u, u_input.a ^ 1u)), ~(58193u ^ _wgslsmith_mod_u32(0u, arg_1))), firstTrailingBit(~(_wgslsmith_sub_u32(arg_1, 60750u) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 4294967295u, arg_1), vec3<u32>(35987u, 1u, 9967u)))));
    var_0 = Struct_1(vec4<i32>(~select(_wgslsmith_mult_i32(arg_0, 9723i), arg_0, true), reverseBits(var_0.a.x), _wgslsmith_sub_i32(u_input.b, var_0.a.x), 1i), vec2<u32>(firstTrailingBit(~38583u), min(_wgslsmith_dot_vec4_u32(vec4<u32>(4215u, 4294967295u, var_0.b.x, 0u), vec4<u32>(36120u, 4294967295u, 0u, 0u)), firstTrailingBit(var_0.b.x))) << (max(var_0.b, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 12247u), vec2<u32>(u_input.a, arg_1), global1[_wgslsmith_index_u32(5530u, 21u)]) | _wgslsmith_div_vec2_u32(vec2<u32>(var_0.b.x, var_0.b.x), global1[_wgslsmith_index_u32(0u, 21u)])) % vec2<u32>(32u)), _wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(0u, arg_1, u_input.a)), vec3<u32>(var_0.b.x, arg_1, 77221u)), u_input.a), _wgslsmith_sub_u32(~abs(44417u), 36991u & select(23123u, 9530u, false)), _wgslsmith_mult_u32(_wgslsmith_add_u32(24460u, 1u), 12396u)));
    global1 = array<vec2<u32>, 21>();
    var var_1 = 473f;
    var var_2 = vec3<i32>(func_3(50810u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-332f, 825f, -2448f, -1000f)))), -551f, Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(70983u, _wgslsmith_mod_u32(u_input.a, 19269u)), 16u)])).x, ~min(u_input.b << (54183u % 32u), _wgslsmith_add_i32(u_input.b, 22494i)) | var_0.a.x, _wgslsmith_dot_vec4_i32(var_0.a, ~var_0.a >> ((reverseBits(vec4<u32>(var_0.c, 8279u, var_0.c, arg_1)) & firstTrailingBit(vec4<u32>(var_0.c, arg_1, arg_1, 83861u))) % vec4<u32>(32u))));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 16u)])))) + global0[_wgslsmith_index_u32(arg_1, 16u)])));
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = vec3<u32>(13663u, 40919u, 33177u);
    let var_1 = true;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-572f, global0[_wgslsmith_index_u32(1u, 16u)])), arg_1.a) - arg_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(~max(1i, 7365i), 10900u))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(1u, 16u)], _wgslsmith_f_op_f32(arg_1.a - 138f))))))), arg_1.a);
    var var_3 = 0u;
    var_3 = _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 1u, 26251u, 64272u), vec4<u32>(var_0.x, 1u, u_input.a, var_0.x)), abs(vec4<u32>(u_input.a, 75445u, 58595u, u_input.a))) ^ firstLeadingBit(reverseBits(~37093u)), _wgslsmith_mod_u32(_wgslsmith_add_u32(var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(86948u, u_input.a, 13492u, 0u), ~vec4<u32>(u_input.a, 0u, var_0.x, 5353u))), 1u));
    return Struct_1(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(u_input.b, 0i, arg_0, arg_0)) << (~vec4<u32>(40199u, u_input.a, var_0.x, u_input.a) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 1i, 222i, 2147483647i), vec4<i32>(u_input.b, arg_0, arg_0, 8823i)), vec4<i32>(2147483647i, arg_0, arg_0, u_input.b) >> (vec4<u32>(var_0.x, 12139u, 90734u, 4294967295u) % vec4<u32>(32u)))), vec4<i32>(u_input.b, min(firstTrailingBit(25349i), _wgslsmith_mod_i32(arg_0, 37636i)), ~arg_0, u_input.b)), global1[_wgslsmith_index_u32(23275u, 21u)], 0u);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: f32, arg_3: Struct_1) -> Struct_2 {
    var var_0 = arg_0;
    let var_1 = Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.b, 0i, u_input.b), var_0.a), ~arg_0.b, arg_3.b.x);
    let var_2 = vec2<u32>(4297u, firstLeadingBit(~var_0.b.x));
    let var_3 = vec4<i32>(-_wgslsmith_div_i32(u_input.b, ~var_1.a.x), ((min(var_1.a.x, 2147483647i) & arg_3.a.x) | ~countOneBits(-1i)) | 2147483647i, i32(-1i) * -44847i, i32(-1i) * -(~(-2147483647i)));
    global1 = array<vec2<u32>, 21>();
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) - arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(abs(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.b, -1i, u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, 2147483647i), vec3<i32>(-26493i, u_input.b, -2147483647i)), u_input.b)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 16u)])))), select(select(!select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(u_input.b == -1i, true), vec2<bool>(true, true)), vec2<bool>(all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false))), false), select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true))), 1345f, Struct_1(-reverseBits(countOneBits(vec4<i32>(u_input.b, 0i, u_input.b, -11768i))), _wgslsmith_mod_vec2_u32(countOneBits(global1[_wgslsmith_index_u32(65163u, 21u)]), global1[_wgslsmith_index_u32(u_input.a >> (u_input.a % 32u), 21u)]) ^ func_1(-1i, Struct_2(-1266f)).b, ~76797u));
    var var_1 = vec3<bool>(_wgslsmith_div_u32(1u, ~20931u) >= _wgslsmith_mult_u32(countOneBits(u_input.a), 1u), true, false);
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, 854f, _wgslsmith_f_op_f32(-func_4(func_1(u_input.b, Struct_2(-2131f)), !vec2<bool>(var_1.x, var_1.x), -761f, func_1(u_input.b, Struct_2(global0[_wgslsmith_index_u32(u_input.a, 16u)]))).a)) - vec3<f32>(488f, var_0.a, _wgslsmith_f_op_f32(-var_0.a)));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-509f * _wgslsmith_f_op_f32(-var_0.a))))));
    let var_4 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), 16u)]))) * _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(u_input.a, 16u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(-(vec4<i32>(u_input.b, u_input.b, -2147483647i, 1i) | vec4<i32>(u_input.b, -10921i, 1i, -2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 38557i, u_input.b, u_input.b), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, -6047i), vec4<i32>(19071i, 1i, u_input.b, u_input.b)))), abs(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(29170i, u_input.b, u_input.b, 1i), vec4<i32>(18532i, 4944i, 3986i, 1i))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.zx)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_2.xy)) - var_2.yz) * var_2.xz)), _wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_add_u32(u_input.a, 54841u), 1u), global1[_wgslsmith_index_u32(30871u, 21u)]), _wgslsmith_dot_vec3_i32(~(~(~vec3<i32>(1i, u_input.b, 2147483647i))), select(min(firstLeadingBit(vec3<i32>(u_input.b, u_input.b, -22034i)), vec3<i32>(2147483647i, 10072i, u_input.b)), -_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, u_input.b, 40601i), vec3<i32>(u_input.b, u_input.b, -16333i)), vec3<bool>(true, true, var_1.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(-var_2.x), true | (var_1.x || true))));
}

