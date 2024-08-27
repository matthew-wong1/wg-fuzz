struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec2<bool>,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: i32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 7>;

var<private> global1: vec3<i32> = vec3<i32>(-15504i, -15376i, -1576i);

var<private> global2: vec2<f32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<bool>) -> bool {
    var var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(select(~_wgslsmith_clamp_i32(-43055i, global1.x, 1i), _wgslsmith_dot_vec4_i32(~vec4<i32>(-18956i, u_input.b, -19100i, global1.x), vec4<i32>(u_input.b, global1.x, u_input.b, global1.x)), any(select(vec4<bool>(false, true, true, arg_1.x), vec4<bool>(false, arg_1.x, true, true), false))), _wgslsmith_div_i32(-33838i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.b, 2147483647i, global1.x), 0i)), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(global1.zx, vec2<i32>(5176i, -2147483647i)), _wgslsmith_add_vec2_i32(vec2<i32>(global1.x, u_input.b), vec2<i32>(-85659i, -6804i))) << (67415u % 32u), reverseBits(0i) << (~min(u_input.a, 0u) % 32u)), vec4<i32>(-1i) * -vec4<i32>(abs(global1.x), u_input.b, -2147483647i, global1.x));
    let var_1 = min(_wgslsmith_mod_vec2_u32(~vec2<u32>(~4294967295u, _wgslsmith_mod_u32(12098u, u_input.a)), ~abs(reverseBits(vec2<u32>(u_input.a, 4294967295u)))), abs(firstLeadingBit(~vec2<u32>(13189u, u_input.a))));
    let var_2 = vec3<u32>(u_input.a, 46001u, firstLeadingBit(firstTrailingBit(u_input.a)));
    let var_3 = Struct_1(vec4<i32>(var_0.x, 1i | global1.x, i32(-1i) * -(i32(-1i) * -15636i), -572i), all(select(arg_1, !vec2<bool>(false, arg_1.x), !select(vec2<bool>(arg_1.x, false), vec2<bool>(true, arg_1.x), arg_1))), vec2<bool>(true, all(select(!vec3<bool>(arg_1.x, true, arg_1.x), select(vec3<bool>(false, true, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, true), vec3<bool>(false, false, arg_1.x)), vec3<bool>(arg_1.x, arg_1.x, arg_1.x)))), -39713i, ~_wgslsmith_mod_vec2_i32(var_0.yw, min(global1.xz, ~vec2<i32>(25212i, u_input.b))));
    var var_4 = select(!vec4<bool>((true && arg_1.x) && true, arg_1.x, true, var_3.c.x), !(!select(vec4<bool>(var_3.b, var_3.b, arg_1.x, arg_1.x), select(vec4<bool>(true, false, false, true), vec4<bool>(var_3.c.x, arg_1.x, true, arg_1.x), false), arg_1.x)), true);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)), -561f))) + global2.x) > arg_0.x;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<f32>) -> vec3<u32> {
    var var_0 = Struct_5(select(global1.x, u_input.b, any(arg_0)), _wgslsmith_div_vec2_f32(arg_1.zy, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -693f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1.x)), _wgslsmith_f_op_f32(-arg_1.x)))), -abs(~reverseBits(vec4<i32>(15957i, global1.x, -15321i, -2147483647i))), arg_1.zwz, Struct_1(reverseBits(min(~vec4<i32>(u_input.b, global1.x, -1i, u_input.b), -vec4<i32>(u_input.b, global1.x, 1i, 0i))), false, !select(arg_0.yz, vec2<bool>(arg_0.x, true), vec2<bool>(false, false)), -abs(2147483647i), _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.b, u_input.b), global1.xz), ~(~global1.yy))));
    var var_1 = !(!vec3<bool>(any(!vec4<bool>(arg_0.x, true, arg_0.x, true)), var_0.e.b, any(arg_0.zx)));
    let var_2 = var_0.e.a.yzw;
    var var_3 = global2.x;
    var var_4 = _wgslsmith_sub_vec2_u32(firstTrailingBit(max(vec2<u32>(6426u, ~u_input.a), _wgslsmith_mod_vec2_u32(max(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 5885u)), select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, u_input.a), true)))), select(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(26339u, u_input.a) & vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(1u, u_input.a), vec2<bool>(all(var_0.e.c), select(true, var_0.e.b, false))) >> (~(~vec2<u32>(33121u, u_input.a)) % vec2<u32>(32u)));
    return reverseBits(abs(vec3<u32>(1u, 1u, 8260u)));
}

fn func_2(arg_0: vec4<f32>) -> vec4<bool> {
    global0 = array<vec3<f32>, 7>();
    global0 = array<vec3<f32>, 7>();
    global0 = array<vec3<f32>, 7>();
    let var_0 = _wgslsmith_clamp_vec3_u32(countOneBits(firstTrailingBit(select(firstTrailingBit(vec3<u32>(u_input.a, 38562u, 4294967295u)), vec3<u32>(u_input.a, 44412u, u_input.a) & vec3<u32>(u_input.a, 1u, u_input.a), true))), vec3<u32>(_wgslsmith_div_u32(u_input.a, ~4294967295u), _wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(41363u, 22029u), 4294967295u), u_input.a), ~u_input.a), func_4(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1059f, global2.x, arg_0.x, -369f), vec4<f32>(-317f, arg_0.x, -574f, global2.x), false)), vec2<bool>(true, false))), vec4<f32>(_wgslsmith_f_op_f32(-888f * _wgslsmith_f_op_f32(f32(-1f) * -289f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.x, 544f))), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.x, -229f), -1000f), arg_0.x)));
    global1 = _wgslsmith_sub_vec3_i32(~firstLeadingBit(~(vec3<i32>(global1.x, -58990i, -1958i) << (vec3<u32>(1u, u_input.a, u_input.a) % vec3<u32>(32u)))), vec3<i32>(global1.x, 1i, u_input.b));
    return vec4<bool>(_wgslsmith_mod_i32(~(-2147483647i), _wgslsmith_clamp_i32(1i, ~(-29775i), _wgslsmith_mod_i32(u_input.b, 25164i))) > (reverseBits(global1.x) << (u_input.a % 32u)), func_3(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 369f, arg_0.x, global2.x)))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, false))) | true, global2.x > _wgslsmith_f_op_f32(min(-471f, global2.x)), true);
}

fn func_1(arg_0: u32, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: Struct_4) -> Struct_2 {
    var var_0 = countOneBits(4294967295u);
    let var_1 = ~(-firstTrailingBit(~vec3<i32>(2147483647i, 9824i, u_input.b)) ^ vec3<i32>(arg_1.x, reverseBits(81816i), arg_1.x));
    let var_2 = func_2(vec4<f32>(_wgslsmith_f_op_f32(-arg_3.a), 1067f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1278f, arg_3.a))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(455f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.a + -397f), _wgslsmith_f_op_f32(step(global2.x, global2.x))) - -313f)));
    var var_3 = vec2<i32>(~(~arg_1.x), _wgslsmith_mod_i32(abs((i32(-1i) * -52232i) | var_1.x), max(15534i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(var_1, vec3<i32>(-24774i, u_input.b, -1i)), 32876i, select(global1.x, arg_1.x, var_2.x)))));
    global2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(794f, _wgslsmith_f_op_f32(select(arg_3.a, arg_3.a, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * -1128f) + _wgslsmith_f_op_f32(-global2.x)), true))), arg_3.a);
    return Struct_2(Struct_1(abs(select(vec4<i32>(var_3.x, var_3.x, u_input.b, var_1.x), vec4<i32>(2147483647i, global1.x, global1.x, arg_1.x), var_2.x)), all(select(!vec3<bool>(false, false, var_2.x), !var_2.wzz, func_2(vec4<f32>(851f, global2.x, global2.x, -1364f)).zxx)), vec2<bool>(var_2.x != true, func_4(var_2.yxz, vec4<f32>(global2.x, 1893f, global2.x, arg_3.a)).x < min(arg_2.x, arg_2.x)), ~13157i, abs(max(_wgslsmith_div_vec2_i32(vec2<i32>(17087i, global1.x), global1.xy), vec2<i32>(var_1.x, var_3.x) & vec2<i32>(var_3.x, var_3.x)))), Struct_1(_wgslsmith_mult_vec4_i32(countOneBits(-vec4<i32>(global1.x, 0i, -1i, -3712i)), -vec4<i32>(var_3.x, var_3.x, -2147483647i, -2147483647i)), func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(940f, global2.x, -1703f, arg_3.a) * vec4<f32>(-531f, arg_3.a, 1288f, global2.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a, global2.x, arg_3.a, -736f))), var_2.xw), vec2<bool>(var_2.x, true), firstTrailingBit(19216i), firstTrailingBit(var_1.xz)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(41893u, ~global1.xy, vec3<u32>(_wgslsmith_div_u32(~u_input.a, 1u), (u_input.a >> (81324u % 32u)) | 0u, ~(u_input.a | 0u)), Struct_4(-1870f));
    let var_1 = func_1(_wgslsmith_add_u32(20941u & u_input.a, _wgslsmith_add_u32(~firstLeadingBit(4294967295u), ~u_input.a | _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 23530u), vec3<u32>(u_input.a, u_input.a, u_input.a)))), firstTrailingBit(vec2<i32>(-reverseBits(-2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.d, var_0.b.e.x), firstTrailingBit(var_0.a.e)))), ~(~vec3<u32>(1u, ~0u, u_input.a)), Struct_4(_wgslsmith_f_op_f32(min(global2.x, global2.x)))).a;
    var var_2 = 8331u;
    let var_3 = -2147483647i;
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, global2.x), vec2<f32>(global2.x, 1000f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1358f, -564f), vec2<f32>(global2.x, global2.x), var_0.a.b))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-925f, -1298f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-768f, global2.x) - vec2<f32>(global2.x, -1234f)), _wgslsmith_div_vec2_f32(vec2<f32>(231f, -841f), vec2<f32>(global2.x, global2.x))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-194f, global2.x)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1076f, -1355f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, -823f))))));
    let var_4 = select(vec3<bool>(true, true, all(select(!vec3<bool>(var_1.c.x, var_1.b, false), func_2(vec4<f32>(global2.x, -1393f, global2.x, global2.x)).xwx, vec3<bool>(false, false, var_1.b)))), select(!vec3<bool>(false, u_input.a <= 0u, u_input.b != u_input.b), !(!select(vec3<bool>(true, var_1.b, false), vec3<bool>(var_0.b.c.x, false, false), vec3<bool>(var_1.b, var_1.c.x, false))), !any(vec2<bool>(false, var_0.a.b))), !(!(!(!vec3<bool>(true, false, var_0.a.b)))));
    var var_5 = countOneBits(_wgslsmith_add_u32(1u, ~(~max(60170u, 41109u))));
    var var_6 = Struct_5(~(-2147483647i), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.x))))), _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_clamp_vec4_i32(firstTrailingBit(var_0.b.a & -var_0.a.a), vec4<i32>(u_input.b, 29285i, -26080i, 22629i), var_0.b.a), _wgslsmith_f_op_vec3_f32(select(global0[_wgslsmith_index_u32(35210u, 7u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 221f, global2.x)) * global0[_wgslsmith_index_u32(1u, 7u)]) - vec3<f32>(423f, _wgslsmith_div_f32(global2.x, global2.x), global2.x)), select(vec3<bool>(true, true, true), select(var_4, !vec3<bool>(var_1.c.x, var_1.c.x, true), var_0.b.b), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1915f, global2.x, global2.x, global2.x))).yyz))), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, 1u), ~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) | (~(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) ^ vec4<u32>(1u, 4294967295u, u_input.a, u_input.a)) << (abs(select(vec4<u32>(106577u, 4294967295u, 7781u, 75877u), vec4<u32>(34549u, 0u, 9646u, 1u), vec4<bool>(true, var_6.e.c.x, var_1.c.x, var_4.x))) % vec4<u32>(32u))));
}

