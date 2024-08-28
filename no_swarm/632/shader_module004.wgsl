struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_2,
    d: f32,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(21659i, 1i);

var<private> global1: Struct_1 = Struct_1(15559i);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: Struct_4, arg_3: vec4<u32>) -> vec3<bool> {
    let var_0 = !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, global0.x != global0.x, true), vec4<bool>(true, 4294967295u >= arg_2.b, true, true)), vec4<bool>(!all(vec4<bool>(false, true, true, true)), all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false)), false, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.x)) - 662f) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-366f * arg_1.x) * arg_1.x));
    let var_1 = _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(~(vec3<i32>(-37882i, 2147483647i, -12810i) ^ vec3<i32>(global1.a, global0.x, -1i)), ~(~vec3<i32>(-1i, global1.a, arg_0.x)), _wgslsmith_add_vec3_i32(~vec3<i32>(143i, global0.x, 15538i), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 0i, 1i), vec3<i32>(10772i, 1i, global1.a)))) >> ((arg_3.yxx ^ vec3<u32>(~arg_3.x, ~101137u, 38904u)) % vec3<u32>(32u)), vec3<i32>(~(reverseBits(-1816i) & ~global0.x), ~arg_0.x, global0.x), max(~vec3<i32>(global1.a, _wgslsmith_mult_i32(-2147483647i, 0i), -2147483647i), ~(~vec3<i32>(41650i, -1i, global0.x))));
    var var_2 = ~_wgslsmith_dot_vec2_u32(min(arg_3.xx, _wgslsmith_add_vec2_u32(u_input.a.yx, vec2<u32>(7723u, 0u))), ~(~(~vec2<u32>(4294967295u, 1u))));
    var var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(arg_1.xw * arg_2.a), ~(~arg_2.c), 27852u);
    var var_4 = var_0.yx;
    return var_0.yxy;
}

fn func_4(arg_0: u32, arg_1: vec3<bool>) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(382f)))));
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 2008f) - vec2<f32>(-549f, var_0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) * vec2<f32>(270f, var_0)))) * vec2<f32>(_wgslsmith_f_op_f32(var_0 - 521f), _wgslsmith_f_op_f32(min(337f, -1389f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0)), 1000f))), u_input.a.x, abs(~arg_0));
    var var_2 = ~(~(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(100022u, 38217u, 4294967295u, 27937u), vec4<u32>(4294967295u, var_1.b, u_input.a.x, 1u)))));
    var var_3 = !arg_1.x;
    global0 = vec2<i32>(-(~(-(~2147483647i))), max(-2147483647i, ~(-firstTrailingBit(global1.a))));
    return select(~vec2<i32>(global1.a & firstLeadingBit(global1.a), global0.x), -(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, global1.a), vec2<i32>(-2147483647i, 2820i)), -vec2<i32>(global0.x, -2147483647i)) >> (countOneBits(var_2.zx) % vec2<u32>(32u))), vec2<bool>(!all(select(vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), vec4<bool>(false, false, false, arg_1.x), vec4<bool>(arg_1.x, false, true, arg_1.x))), arg_1.x));
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: vec3<i32>) -> bool {
    let var_0 = Struct_3(Struct_2(Struct_1(global1.a), arg_1), _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(u_input.a.x, 56915u)), vec2<u32>(select(1u, 9596u, true), ~u_input.a.x)), u_input.a.zx), Struct_2(Struct_1(arg_1.x << (~u_input.a.x % 32u)), ~vec2<i32>(global0.x << (arg_0 % 32u), _wgslsmith_div_i32(-91965i, 50826i))), 395f, arg_2);
    global1 = Struct_1(arg_1.x);
    var var_1 = Struct_2(var_0.c.a, var_0.e.xz);
    global0 = var_0.e.xz;
    var var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_add_i32(1i, -2147483647i)), reverseBits(var_0.c.b)), u_input.a.yz, Struct_2(Struct_1(-(~global0.x)), func_4(~(~u_input.a.x), select(vec3<bool>(true, true, true), func_3(arg_2.yy, vec4<f32>(var_0.d, var_0.d, var_0.d, var_0.d), Struct_4(vec2<f32>(var_0.d, var_0.d), 23984u, arg_0), vec4<u32>(12131u, 25751u, 4294967295u, 55120u)), arg_1.x >= -66741i))), _wgslsmith_f_op_f32(trunc(656f)), abs(var_0.e));
    return select(true, true, true) != true;
}

fn func_5(arg_0: u32, arg_1: vec2<bool>) -> Struct_2 {
    let var_0 = ~(~_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i ^ global1.a, ~global0.x), -countOneBits(vec2<i32>(0i, global1.a))));
    let var_1 = Struct_1(firstTrailingBit(abs(var_0.x)));
    global1 = var_1;
    var var_2 = ~abs(~_wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, arg_0), vec4<u32>(u_input.a.x, arg_0, 4294967295u, 8226u), arg_1.x), vec4<u32>(arg_0, arg_0, arg_0, 1u)));
    let var_3 = 0i;
    return Struct_2(Struct_1(var_3), ~var_0);
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: bool) -> vec2<i32> {
    global0 = firstLeadingBit(-vec2<i32>(-33479i & (-27817i >> (u_input.a.x % 32u)), global0.x));
    let var_0 = func_5(~u_input.a.x, vec2<bool>(func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(45562u, u_input.a.x), ~u_input.a.yx), vec2<i32>(-30527i, _wgslsmith_sub_i32(-2147483647i, 0i)), ~abs(vec3<i32>(14610i, global1.a, global1.a))), all(!select(vec4<bool>(arg_0, false, true, arg_0), vec4<bool>(true, arg_2, true, false), vec4<bool>(arg_0, arg_0, arg_0, true)))));
    global0 = vec2<i32>(1i << ((~_wgslsmith_add_u32(u_input.a.x, 49269u) & ~1u) % 32u), 20115i);
    let var_1 = arg_1;
    var var_2 = Struct_2(func_5(_wgslsmith_dot_vec4_u32(firstLeadingBit(reverseBits(vec4<u32>(1u, 17353u, 0u, 20147u))), vec4<u32>(0u, _wgslsmith_mult_u32(0u, 1u), _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(4294967295u, 98312u, 28455u)), u_input.a.x)), vec2<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, 64329u, u_input.a.x), vec4<u32>(u_input.a.x, 99853u, 4294967295u, u_input.a.x)) <= u_input.a.x, arg_2)).a, var_0.b);
    return _wgslsmith_div_vec2_i32(~(-vec2<i32>(func_4(u_input.a.x, vec3<bool>(true, false, false)).x, -2147483647i)), select(vec2<i32>(~(-24287i), _wgslsmith_div_i32(1i & global0.x, 1i)), -var_0.b, any(!vec3<bool>(true, arg_2, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1053f, 510f))))));
    global0 = firstTrailingBit(reverseBits(func_1(true, _wgslsmith_f_op_f32(-318f * _wgslsmith_f_op_f32(f32(-1f) * -176f)), false)));
    global0 = vec2<i32>(~global1.a, _wgslsmith_clamp_i32(global0.x, 0i, -14850i));
    let var_1 = Struct_2(func_5(min(~1048u, _wgslsmith_mod_u32(1u, 4294967295u)) >> (~(~u_input.a.x) % 32u), vec2<bool>(true, true)).a, abs(_wgslsmith_mult_vec2_i32(abs(vec2<i32>(global1.a, global1.a)), vec2<i32>(1i, -global0.x))));
    global1 = var_1.a;
    var var_2 = func_5(u_input.a.x, vec2<bool>(_wgslsmith_mod_u32(~4294967295u, 105356u) != _wgslsmith_mod_u32(22264u, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), any(vec2<bool>(true, true)))).a;
    let var_3 = Struct_3(var_1, vec2<u32>(u_input.a.x, ~firstLeadingBit(~4294967295u)), Struct_2(func_5(1u, func_3(min(vec2<i32>(var_1.b.x, var_2.a), vec2<i32>(var_2.a, var_1.a.a)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0, -891f, 1061f, var_0), vec4<f32>(var_0, -1404f, 1000f, var_0))), Struct_4(vec2<f32>(-833f, var_0), u_input.a.x, 47248u), _wgslsmith_mod_vec4_u32(vec4<u32>(2539u, 4294967295u, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, 23940u, u_input.a.x, u_input.a.x))).xy).a, vec2<i32>(_wgslsmith_add_i32(var_1.b.x, global0.x) ^ -2147483647i, abs(-global1.a))), _wgslsmith_f_op_f32(ceil(var_0)), vec3<i32>(global0.x, global1.a, func_5(abs(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x)), select(vec2<bool>(true, true), vec2<bool>(true, true), -227f > var_0)).a.a));
    let var_4 = vec4<u32>(4294967295u, ~firstLeadingBit(u_input.a.x), ~countOneBits(~u_input.a.x >> (1u % 32u)), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) - _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 1000f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1845f, var_0), vec2<f32>(-190f, 859f), false)))) * vec2<f32>(var_3.d, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_3.d, -1689f))))));
}

