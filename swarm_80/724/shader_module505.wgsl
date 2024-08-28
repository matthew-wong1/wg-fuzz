struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true));

var<private> global1: Struct_1 = Struct_1(false, -571f);

var<private> global2: Struct_1;

var<private> global3: array<vec4<f32>, 13> = array<vec4<f32>, 13>(vec4<f32>(-567f, 152f, 1000f, 1000f), vec4<f32>(1493f, -588f, -1036f, -458f), vec4<f32>(-431f, 895f, -2751f, -404f), vec4<f32>(-1665f, -1567f, -788f, -385f), vec4<f32>(1147f, 1929f, -911f, 707f), vec4<f32>(517f, -468f, 422f, 707f), vec4<f32>(267f, 691f, 1163f, -1435f), vec4<f32>(841f, -1597f, 1167f, -2251f), vec4<f32>(-680f, 833f, 165f, -741f), vec4<f32>(-105f, 1000f, -493f, -109f), vec4<f32>(554f, 1923f, -334f, 1269f), vec4<f32>(2376f, -755f, 284f, 359f), vec4<f32>(400f, -160f, 679f, 1000f));

var<private> global4: Struct_2 = Struct_2(vec3<u32>(1u, 1u, 8706u), 0u);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1) -> bool {
    let var_0 = firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, 2147483647i), ~vec2<i32>(1i, 0i)), abs(i32(-1i) * -2147483647i)), _wgslsmith_sub_vec2_i32((vec2<i32>(14147i, 2147483647i) << (global4.a.zz % vec2<u32>(32u))) >> (reverseBits(global4.a.zx) % vec2<u32>(32u)), vec2<i32>(0i, -48986i))));
    global1 = arg_2;
    global2 = Struct_1(global2.a | true, global1.b);
    global0 = array<vec4<bool>, 2>();
    var var_1 = arg_2;
    return global1.a && global1.a;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: bool) -> u32 {
    let var_0 = _wgslsmith_add_vec4_i32(firstLeadingBit(-(vec4<i32>(2147483647i, -9331i, 1i, -12650i) << (vec4<u32>(5651u, 5070u, arg_0.x, global4.b) % vec4<u32>(32u)))) << (u_input.b % vec4<u32>(32u)), vec4<i32>(1i, abs(max(36680i, 2147483647i)), -_wgslsmith_clamp_i32(0i, 21832i, 2147483647i), ~(6924i << (arg_0.x % 32u))) >> (~countOneBits(~u_input.b) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.b, global1.b, 315f))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(386f, global1.b, global2.b) - vec3<f32>(global2.b, global1.b, 209f)))))))));
    let var_2 = select(var_0.xxy, abs(vec3<i32>(_wgslsmith_dot_vec3_i32(var_0.zyy, var_0.yyz), -var_0.x, ~1i)) << (global4.a % vec3<u32>(32u)), select(vec3<bool>(true, false, true), select(select(vec3<bool>(global2.a, global2.a, global2.a), !vec3<bool>(false, true, global1.a), vec3<bool>(arg_2.x, false, arg_2.x)), select(select(vec3<bool>(arg_3, true, arg_3), vec3<bool>(true, arg_3, arg_2.x), vec3<bool>(true, arg_2.x, true)), !vec3<bool>(true, true, arg_2.x), !arg_3), true), any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, arg_2.x), select(vec3<bool>(false, false, true), vec3<bool>(arg_3, global1.a, true), vec3<bool>(false, true, true))))));
    let var_3 = _wgslsmith_dot_vec2_u32(~vec2<u32>((arg_1.a.x & 4294967295u) & firstLeadingBit(u_input.a.x), ~1u), (~global4.a.yz ^ vec2<u32>(_wgslsmith_mod_u32(global4.b, global4.b), _wgslsmith_div_u32(25445u, arg_0.x))) & _wgslsmith_mult_vec2_u32(arg_0.zy, ~(arg_1.a.zy << (vec2<u32>(arg_1.a.x, 1u) % vec2<u32>(32u)))));
    let var_4 = -1i;
    return ~firstLeadingBit(global4.b);
}

fn func_2(arg_0: f32, arg_1: vec4<f32>) -> vec3<bool> {
    var var_0 = global4.a.x;
    let var_1 = Struct_2(global4.a, func_4(~vec3<u32>(74542u, ~12812u, ~1u), Struct_2(global4.a, 20827u), !select(vec2<bool>(false, true), !vec2<bool>(global1.a, true), global2.a), func_3(max(u_input.a.x, global4.b), vec3<u32>(84669u, 0u, u_input.b.x) | u_input.a, Struct_1(false, -733f))));
    let var_2 = Struct_1(global1.a, -348f);
    global1 = var_2;
    var var_3 = ~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(4653u, 0u), func_4(vec3<u32>(0u, 84791u, global4.b), var_1, vec2<bool>(false, global2.a), true), _wgslsmith_mod_u32(global4.a.x, global4.b)), vec3<u32>(33793u >> (var_1.b % 32u), _wgslsmith_mod_u32(1u, 18549u), ~global4.b)), ~_wgslsmith_sub_u32(~global4.a.x, global4.b & u_input.b.x));
    return vec3<bool>(global2.a, global2.a, false);
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_1(arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(arg_1.b - -223f)), _wgslsmith_f_op_f32(abs(-911f)), global1.a))));
    return Struct_1(true, global2.b);
}

fn func_1() -> Struct_2 {
    global1 = Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -834f))) + 270f));
    var var_0 = Struct_2(global4.a | select(select(_wgslsmith_div_vec3_u32(u_input.a, global4.a), u_input.a ^ vec3<u32>(u_input.b.x, 61055u, global4.b), false), _wgslsmith_sub_vec3_u32(vec3<u32>(63281u, u_input.a.x, global4.a.x), vec3<u32>(global4.a.x, u_input.a.x, global4.b)), global1.a), 37725u);
    global3 = array<vec4<f32>, 13>();
    var var_1 = func_5(select(!func_2(-1859f, _wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(1u, 13u)] + global3[_wgslsmith_index_u32(2212u, 13u)])), select(vec3<bool>(global1.a || global2.a, global1.a, false), !(!vec3<bool>(global2.a, true, global2.a)), select(vec3<bool>(false, global2.a, true), !vec3<bool>(true, false, global1.a), true)), any(vec4<bool>(false || global1.a, global1.a, true, select(true, global1.a, false)))), Struct_1(global1.a, global2.b), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(abs(-343f)), _wgslsmith_f_op_f32(round(global1.b)), 1105f), vec3<f32>(_wgslsmith_f_op_f32(365f - -916f), global2.b, -627f), select(!select(vec3<bool>(global2.a, true, false), vec3<bool>(global1.a, global2.a, true), vec3<bool>(global1.a, global1.a, true)), vec3<bool>(true, true, true), func_3(~62958u, ~u_input.b.xwx, Struct_1(true, global1.b))))), select(vec4<u32>(~_wgslsmith_div_u32(var_0.a.x, 10667u), _wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(global4.b, global4.b) << (vec2<u32>(4294967295u, u_input.b.x) % vec2<u32>(32u))), min(global4.b, 57453u), 0u), ~(~_wgslsmith_clamp_vec4_u32(u_input.b, vec4<u32>(u_input.a.x, var_0.a.x, global4.a.x, 6267u), u_input.b)), vec4<bool>(any(global0[_wgslsmith_index_u32(global4.b, 2u)]) != !global1.a, global1.a, true, any(global0[_wgslsmith_index_u32(~1u, 2u)]))));
    var var_2 = Struct_1(global1.a, global2.b);
    return Struct_2(global4.a | min(abs(~global4.a), ~var_0.a), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(reverseBits(780u), 13063u, ~var_0.b, ~global4.b), vec4<u32>(_wgslsmith_clamp_u32(1u, u_input.b.x, global4.a.x), 1u, var_0.b, global4.b)), vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a, global4.a), vec3<u32>(0u, var_0.b, u_input.b.x)), _wgslsmith_add_u32(var_0.a.x ^ 18663u, 35408u), reverseBits(var_0.b) & abs(u_input.b.x), reverseBits(min(u_input.b.x, u_input.a.x)))));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: vec2<f32>) -> Struct_2 {
    let var_0 = arg_2;
    var var_1 = Struct_1(!any(select(select(vec2<bool>(true, global1.a), vec2<bool>(true, false), vec2<bool>(global1.a, global2.a)), vec2<bool>(global1.a, global1.a), func_3(global4.b, vec3<u32>(4294967295u, 4294967295u, 75997u), Struct_1(global1.a, global1.b)))), _wgslsmith_f_op_f32(global2.b - 478f));
    global4 = Struct_2(~u_input.b.wwz, firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.a, _wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.b, 7707u, global4.a.x), vec3<u32>(0u, 4294967295u, 56416u))), max(25305u, ~arg_0.b))));
    return Struct_2(max(abs(abs(_wgslsmith_add_vec3_u32(u_input.a, u_input.a))), global4.a), ~min(0u, 75868u << (1u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_1(), Struct_2(global4.a, _wgslsmith_dot_vec4_u32(u_input.b, ~vec4<u32>(global4.b, global4.a.x, global4.b, global4.b))), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(countOneBits(22866i), min(9546i, -26499i), i32(-1i) * -1i), _wgslsmith_mod_vec3_i32(vec3<i32>(18873i, -5184i, -19532i), firstTrailingBit(vec3<i32>(1i, 50443i, 2147483647i)))), countOneBits(countOneBits(0i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, 1607f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-210f, global2.b) + vec2<f32>(global1.b, global2.b)) + _wgslsmith_div_vec2_f32(vec2<f32>(global2.b, global1.b), vec2<f32>(global1.b, global2.b)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b, _wgslsmith_f_op_f32(global2.b + global1.b)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(806f, 1000f))))));
    let var_1 = ~var_0.a;
    global4 = Struct_2(_wgslsmith_sub_vec3_u32(func_1().a, u_input.b.zzx), 93137u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-854f, global1.b) - vec2<f32>(403f, 1508f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2794f, -474f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b, global2.b))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(1313f, global1.b))))), global1.b, global1.b));
}

