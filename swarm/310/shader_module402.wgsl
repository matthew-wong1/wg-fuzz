struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(18161u, 44107u, 79965u);

var<private> global1: vec3<f32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = Struct_1(u_input.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1442f, _wgslsmith_div_f32(-1772f, 1271f)), 412f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global1.x)), -457f)), _wgslsmith_f_op_f32(min(global1.x, _wgslsmith_f_op_f32(-global1.x))))), ~reverseBits(global0.x));
    var var_1 = !(!(!(global1.x <= var_0.b.x) || true));
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.b.x + var_0.b.x))), global1.x, global1.x)), _wgslsmith_mult_u32(arg_0, _wgslsmith_mult_u32(0u, ~(~4294967295u))));
    var var_2 = _wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(min(global0.x, 3192u) ^ (global0.x << (arg_0 % 32u)), min(59931u, 0u) | reverseBits(arg_0))), ~global0.yy);
    let var_3 = _wgslsmith_f_op_f32(-779f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x + 390f) + _wgslsmith_f_op_f32(-534f + 732f)));
    return _wgslsmith_sub_i32(firstLeadingBit(firstTrailingBit(u_input.a.x)), var_0.a);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: u32, arg_3: vec2<i32>) -> vec4<u32> {
    let var_0 = ~(-(arg_1.x >> (arg_2 % 32u)) << (~global0.x % 32u)) << (global0.x % 32u);
    let var_1 = firstTrailingBit(_wgslsmith_mult_i32(u_input.a.x, ~arg_3.x));
    let var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~(~global0.zy), ~vec2<u32>(15656u, arg_2) & abs(global0.zy)), vec2<u32>(select(~0u, ~70905u, true) << (_wgslsmith_mod_u32(~arg_2, _wgslsmith_add_u32(global0.x, 12502u)) % 32u), select(_wgslsmith_mult_u32(1u, firstLeadingBit(4294967295u)), 4294967295u, true)));
    var var_3 = -reverseBits(min(abs(vec3<i32>(-38876i, u_input.a.x, arg_1.x)), ~select(arg_1, arg_1, vec3<bool>(true, false, false))));
    var_3 = arg_1;
    return ~_wgslsmith_div_vec4_u32(~(~vec4<u32>(arg_2, 12307u, var_2, var_2)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2, 5546u, arg_2, arg_2), ~vec4<u32>(25269u, 4294967295u, var_2, 4294967295u)));
}

fn func_2() -> Struct_1 {
    global0 = ~(~(_wgslsmith_div_vec3_u32(vec3<u32>(0u, global0.x, 4294967295u), vec3<u32>(1796u, 1u, global0.x)) ^ vec3<u32>(6848u, 8254u, 4294967295u))) & _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(~max(vec3<u32>(1u, global0.x, 11667u), vec3<u32>(global0.x, global0.x, global0.x)), _wgslsmith_mult_vec3_u32(~vec3<u32>(2484u, global0.x, global0.x), ~vec3<u32>(4294967295u, 120645u, 1807u))), vec3<u32>((49905u & global0.x) >> (global0.x % 32u), ~45595u, ~(~global0.x)));
    let var_0 = global1.x;
    let var_1 = func_4(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -107f), global1.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -630f), vec2<f32>(global1.x, -1212f), true))), vec3<i32>(func_3(global0.x), -29875i, u_input.a.x) & ~(-vec3<i32>(0i, u_input.a.x, -2147483647i)), global0.x, (vec2<i32>(u_input.a.x, -2147483647i) << (vec2<u32>(93565u, 4294967295u) % vec2<u32>(32u))) ^ (~u_input.a ^ u_input.a)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, global0.x, abs(global0.x), 105538u) ^ vec4<u32>(global0.x, abs(global0.x), global0.x, 28435u), abs(firstTrailingBit(~vec4<u32>(4294967295u, global0.x, 111875u, 1u))), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 1339u), vec2<u32>(global0.x, global0.x)), ~global0.x, 0u), ~vec4<u32>(38781u, 36596u, 1422u, global0.x))) % vec4<u32>(32u));
    global0 = var_1.wzz & (vec3<u32>(global0.x, _wgslsmith_sub_u32(~6099u, _wgslsmith_dot_vec2_u32(vec2<u32>(35068u, global0.x), global0.yz)), ~(~var_1.x)) | var_1.xwx);
    var var_2 = Struct_1(countOneBits(_wgslsmith_add_i32(~u_input.a.x, reverseBits(-1785i)) >> (firstTrailingBit(_wgslsmith_div_u32(global0.x, 21286u)) % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1330f, global1.x, global1.x, global1.x) * vec4<f32>(1231f, global1.x, 1631f, 296f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, -511f, global1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(652f, -593f, global1.x, global1.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, -325f, -290f))))), max(var_1.x, func_4(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global1.yx))), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, 0i), vec3<i32>(u_input.a.x, 0i, u_input.a.x)), var_1.x, _wgslsmith_sub_vec2_i32(min(vec2<i32>(u_input.a.x, 2147483647i), u_input.a), vec2<i32>(0i, u_input.a.x))).x));
    return Struct_1(1i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.b))), vec4<f32>(global1.x, -964f, _wgslsmith_f_op_f32(floor(-256f)), 266f)), ~countOneBits(~min(global0.x, global0.x)));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>) -> bool {
    let var_0 = arg_0.b.zw;
    var var_1 = true;
    var var_2 = func_2();
    var var_3 = global0.x;
    var var_4 = vec4<u32>(global0.x, ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(~1u, _wgslsmith_mult_u32(0u, var_2.c)), 37249u), ~reverseBits(arg_0.c), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(99268u, _wgslsmith_sub_u32(20006u, global0.x)), vec2<u32>(~global0.x, _wgslsmith_add_u32(var_2.c, global0.x)), vec2<u32>(~4294967295u, min(var_2.c, global0.x))), min(global0.xx, _wgslsmith_mod_vec2_u32(vec2<u32>(var_2.c, var_2.c), global0.zz)) << (global0.zz % vec2<u32>(32u))));
    return false;
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = !select(true, !(!(arg_0.b.x >= arg_0.b.x)), func_5(func_2(), vec3<f32>(_wgslsmith_f_op_f32(322f - arg_0.b.x), _wgslsmith_f_op_f32(sign(-1000f)), 258f)));
    var var_1 = abs(12581u);
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.b.yww - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -946f), _wgslsmith_f_op_f32(ceil(arg_0.b.x)), 1000f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(-342f, -236f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-742f)) * _wgslsmith_div_f32(178f, -1000f)))));
    global0 = _wgslsmith_mult_vec3_u32(countOneBits(~vec3<u32>(4294967295u, arg_0.c, _wgslsmith_clamp_u32(global0.x, arg_0.c, 0u))), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(~(~vec3<u32>(23492u, arg_0.c, 1u)), vec3<u32>(33708u >> (global0.x % 32u), global0.x | global0.x, ~11279u)), reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.c, global0.x, arg_0.c), vec3<u32>(arg_0.c, 136675u, 4626u) ^ vec3<u32>(0u, arg_0.c, 0u)))));
    let var_2 = func_2();
    return u_input.a.x;
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(2147483647i >> (global0.x % 32u), _wgslsmith_add_i32(-1i, min(-10003i, arg_0.a)), 1i, abs(3081i))), min(firstLeadingBit(-vec4<i32>(arg_0.a, -46468i, -45602i, -1i)), vec4<i32>(arg_0.a, func_2().a, 5119i, arg_0.a)));
    global1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_0.b.xxy, _wgslsmith_f_op_vec3_f32(vec3<f32>(-877f, -255f, -1299f) + arg_0.b.xwz), vec3<bool>(true, all(vec4<bool>(false, false, false, false)), false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, global1.x, 1000f) + vec3<f32>(global1.x, global1.x, -1482f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b.x, 139f) - _wgslsmith_f_op_f32(-global1.x)) - arg_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-977f, -982f))), _wgslsmith_f_op_f32(-1171f - -1000f))));
    var_0 = min(-firstLeadingBit(-vec4<i32>(arg_0.a, 0i, 1i, var_0.x)) >> (~vec4<u32>(min(7511u, 4294967295u), global0.x, global0.x, 1u) % vec4<u32>(32u)), ~vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(var_0.x, 1i), u_input.a.x), var_0.x, u_input.a.x, countOneBits(51357i)));
    let var_1 = ~select(reverseBits(abs(~vec4<u32>(17072u, 4294967295u, 4294967295u, 1u))), vec4<u32>(~(~1u), 4294967295u, ~117537u, min(abs(1u), _wgslsmith_mod_u32(global0.x, global0.x))), true || all(vec4<bool>(true, true, true, true)));
    var_0 = abs(select(vec4<i32>(u_input.a.x & _wgslsmith_clamp_i32(0i, arg_0.a, 65864i), u_input.a.x ^ -2147483647i, _wgslsmith_mod_i32(~0i, _wgslsmith_dot_vec2_i32(u_input.a, var_0.xy)), arg_0.a), vec4<i32>(16219i, -35427i, 1i, -u_input.a.x), true));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_1(func_1(Struct_1(-6314i, vec4<f32>(622f, -1048f, global1.x, global1.x), global0.x)) & ~u_input.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, -308f, global1.x, global1.x), vec4<f32>(global1.x, global1.x, global1.x, 1398f)))), 4294967295u));
    let var_1 = (i32(-1i) * -(~u_input.a.x)) > ~_wgslsmith_dot_vec2_i32(u_input.a, min(vec2<i32>(79419i, 0i), vec2<i32>(u_input.a.x, 63340i)));
    global1 = var_0.b.yzx;
    var var_2 = func_2().b.xxz;
    global1 = _wgslsmith_f_op_vec3_f32(-var_0.b.wyz);
    let var_3 = true;
    var var_4 = vec4<u32>(~firstTrailingBit(var_0.c), _wgslsmith_div_u32(~global0.x, ~1u), _wgslsmith_mult_u32(0u, global0.x), _wgslsmith_mult_u32(_wgslsmith_mod_u32(~var_0.c, 1u), select(~global0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(30623u, 4294967295u, global0.x), vec3<u32>(global0.x, global0.x, var_0.c)), any(vec4<bool>(true, true, true, true))))) ^ ~firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, global0.x, global0.x, 1u) << (vec4<u32>(var_0.c, global0.x, 0u, 73852u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(28145u, global0.x, 89739u, var_0.c), vec4<u32>(global0.x, var_0.c, global0.x, global0.x))));
    var var_5 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-var_0.b)));
    let var_6 = Struct_1(-(~(-23972i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.x), var_0.b.x)), var_5.x, var_2.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(951f, 883f))))), 2396u);
    let x = u_input.a;
    s_output = StorageBuffer(func_6(Struct_1(1i, vec4<f32>(1299f, var_5.x, func_6(Struct_1(u_input.a.x, var_6.b, var_4.x)).b.x, _wgslsmith_f_op_f32(var_0.b.x + global1.x)), _wgslsmith_sub_u32(35474u, 1u))).b.x, ~var_4.zzx, max(global0.yz, ~vec2<u32>(~0u, var_6.c)));
}

