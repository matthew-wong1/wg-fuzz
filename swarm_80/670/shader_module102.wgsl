struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: i32,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 18>;

var<private> global1: f32 = 737f;

var<private> global2: Struct_2;

var<private> global3: u32 = 1u;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>) -> i32 {
    let var_0 = !global2.a.b;
    global1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(1f))));
    let var_1 = global2.c.x;
    var var_2 = min(vec2<u32>(_wgslsmith_clamp_u32(~max(global2.c.x, 1u), ~global2.c.x, (27287u << (global2.c.x % 32u)) | ~0u), 16048u), vec2<u32>(4294967295u, global2.a.e.x));
    return _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(arg_1.yz, vec2<i32>(global2.d, 2147483647i)) & abs(vec2<i32>(global2.d, arg_1.x)), vec2<i32>(-1i) * -global2.a.a.zx) & ~global2.a.a.zy, ~abs(arg_1.zy));
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: vec2<i32>) -> u32 {
    let var_0 = true;
    var var_1 = _wgslsmith_add_i32(max(~arg_2.x, countOneBits(u_input.a)), _wgslsmith_sub_i32(func_3(1354f, global0[_wgslsmith_index_u32(global2.c.x, 18u)]) ^ select(19246i, global2.d, true), 0i)) | min(-(~(-12976i) | max(global2.a.c, -1i)), -2147483647i);
    var var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(169f, -1000f, 1509f, -191f)) * vec4<f32>(-1569f, 1000f, -1040f, -425f)), _wgslsmith_div_vec4_f32(vec4<f32>(-2081f, 489f, -1005f, 328f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-290f, 1029f, 417f, 689f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1561f, -496f, 683f, 1000f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(483f, 492f, 657f, 1148f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1015f, 738f, 686f, -1234f)))))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -494f), _wgslsmith_div_f32(-2246f, -1069f), _wgslsmith_f_op_f32(-205f + 652f), _wgslsmith_f_op_f32(f32(-1f) * -873f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1337f, 872f, -850f, -1831f) + vec4<f32>(-1446f, 816f, -314f, -144f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-372f, -1000f, 438f, -210f), vec4<f32>(-1000f, -998f, -849f, 1204f)))))))));
    var var_3 = var_2.x;
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(floor(-136f)), _wgslsmith_f_op_f32(-var_2.x), 1000f))))));
    return _wgslsmith_mod_u32(103361u, 43702u);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: f32, arg_3: vec4<u32>) -> Struct_2 {
    global1 = -864f;
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(2105f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(ceil(-2598f)))));
    var var_1 = -2058i;
    var var_2 = Struct_1(abs(-global2.a.a ^ ~global2.a.a), !(var_0 > _wgslsmith_f_op_f32(-827f - var_0)), _wgslsmith_clamp_i32(global2.d, ~u_input.a, -1i), vec4<u32>(_wgslsmith_mod_u32(global2.a.e.x, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(arg_0.d, arg_3), 7590u)), global2.c.x, arg_0.d.x, abs(func_2(all(vec4<bool>(false, true, global2.a.b, global2.a.b)), ~arg_0.d.xxy, global2.a.a.zz))), vec2<u32>(max(arg_3.x, abs(arg_3.x) & arg_3.x), _wgslsmith_mult_u32(select(arg_0.e.x, firstLeadingBit(arg_3.x), all(arg_1)), global2.c.x)));
    global1 = 971f;
    return Struct_2(global2.a, false, _wgslsmith_clamp_vec2_u32(firstLeadingBit(arg_3.xw), ~(~vec2<u32>(var_2.e.x, 15170u)), vec2<u32>(1u, ~_wgslsmith_sub_u32(9197u, arg_3.x))), abs(-(~u_input.a) | max(51839i >> (arg_3.x % 32u), min(arg_0.a.x, 0i))));
}

fn func_1() -> Struct_1 {
    global2 = func_4(Struct_1((global2.a.a | _wgslsmith_sub_vec4_i32(global2.a.a, global2.a.a)) << (select(_wgslsmith_mult_vec4_u32(vec4<u32>(74857u, 4294967295u, global2.a.e.x, global2.a.d.x), global2.a.d), global2.a.d, true) % vec4<u32>(32u)), false, -2147483647i, vec4<u32>(25079u, ~global2.a.e.x & global2.c.x, (117514u >> (global2.a.e.x % 32u)) ^ _wgslsmith_mult_u32(4294967295u, global2.c.x), _wgslsmith_dot_vec3_u32(global2.a.d.yyx, ~vec3<u32>(global2.a.d.x, global2.a.d.x, 0u))), global2.a.e), vec3<bool>(global2.b && true, any(!select(vec2<bool>(true, false), vec2<bool>(true, global2.a.b), false)), _wgslsmith_f_op_f32(trunc(-503f)) < -503f), _wgslsmith_f_op_f32(-1879f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -437f) * 1f)), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), global2.c), 1u >> (global2.a.e.x % 32u), func_2(true, global2.a.d.zww, global2.a.a.xx), global2.a.d.x) & _wgslsmith_mod_vec4_u32(~global2.a.d, reverseBits(vec4<u32>(10143u, global2.c.x, 0u, global2.c.x))), ~vec4<u32>(0u, global2.a.d.x, _wgslsmith_add_u32(global2.a.d.x, global2.c.x), global2.a.d.x & 1u)));
    var var_0 = !global2.b;
    var var_1 = -vec4<i32>(u_input.a, u_input.a, _wgslsmith_sub_i32(-23190i, -2147483647i), global2.a.a.x);
    var var_2 = Struct_2(func_4(global2.a, vec3<bool>(!global2.b | (global2.a.e.x < global2.a.d.x), global2.a.b, 0i >= u_input.a), -291f, _wgslsmith_clamp_vec4_u32(~min(vec4<u32>(global2.a.d.x, global2.a.d.x, global2.c.x, global2.a.e.x), global2.a.d), countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(global2.a.d.x, 2147u, 0u, 4294967295u), vec4<u32>(global2.c.x, 28982u, 44653u, global2.c.x))), ~global2.a.d >> (~global2.a.d % vec4<u32>(32u)))).a, global2.a.b, (select(~vec2<u32>(global2.a.e.x, 19531u), vec2<u32>(global2.a.d.x, global2.c.x), any(vec3<bool>(false, true, global2.a.b))) << (_wgslsmith_add_vec2_u32(vec2<u32>(63811u, global2.a.e.x), firstLeadingBit(global2.c)) % vec2<u32>(32u))) << (vec2<u32>(90174u, global2.a.d.x) % vec2<u32>(32u)), reverseBits(~(-var_1.x & abs(u_input.a))));
    let var_3 = func_4(global2.a, vec3<bool>(false, true, var_2.a.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-621f - 317f)), 1292f), select(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, global2.a.d.x, 43630u, global2.c.x), abs(vec4<u32>(var_2.a.d.x, var_2.a.d.x, var_2.c.x, var_2.a.d.x))), vec4<u32>(0u, 57586u, func_2(var_2.b, var_2.a.d.yyw, _wgslsmith_mult_vec2_i32(vec2<i32>(1903i, var_1.x), global2.a.a.yx)), 51078u), _wgslsmith_dot_vec3_u32(~var_2.a.d.zzz, abs(global2.a.d.yxx)) > firstLeadingBit(abs(var_2.c.x))));
    return func_4(var_3.a, !(!(!(!vec3<bool>(true, true, var_3.b)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1311f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -287f))))), vec4<u32>(var_2.c.x, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(global2.c.x & 61929u, ~16770u, _wgslsmith_add_u32(0u, 1u)), ~var_2.a.e.x | _wgslsmith_dot_vec2_u32(global2.c, var_3.a.d.yw)), global2.c.x, func_2(var_2.a.b, vec3<u32>(~57426u, reverseBits(56039u), ~var_2.c.x), _wgslsmith_clamp_vec2_i32(min(vec2<i32>(u_input.a, var_3.a.a.x), var_1.zw), -var_3.a.a.yy, _wgslsmith_add_vec2_i32(var_2.a.a.zy, vec2<i32>(0i, var_3.d)))))).a;
}

fn func_5(arg_0: Struct_1) -> bool {
    global2 = func_4(func_4(global2.a, !vec3<bool>(arg_0.b | false, all(vec3<bool>(global2.a.b, arg_0.b, global2.b)), arg_0.b | global2.a.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-793f + 348f)), ~vec4<u32>(func_2(global2.a.b, vec3<u32>(global2.c.x, 52208u, 2781u), vec2<i32>(46137i, 17186i)), _wgslsmith_sub_u32(global2.a.e.x, global2.a.e.x), 9435u, global2.a.d.x)).a, vec3<bool>(true, global2.b, func_4(func_4(Struct_1(arg_0.a, false, 0i, global2.a.d, vec2<u32>(1u, global2.a.e.x)), select(vec3<bool>(arg_0.b, true, true), vec3<bool>(true, true, arg_0.b), vec3<bool>(false, false, arg_0.b)), -2315f, ~arg_0.d).a, vec3<bool>(false, false, 2147483647i < arg_0.c), 762f, func_4(arg_0, !vec3<bool>(global2.a.b, arg_0.b, true), _wgslsmith_f_op_f32(-607f - -625f), ~global2.a.d).a.d).b), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) + _wgslsmith_f_op_f32(min(-241f, 901f))), -922f) + 1248f), _wgslsmith_div_vec4_u32(vec4<u32>(max(arg_0.d.x, 102887u) & 5216u, ~(~arg_0.e.x), global2.c.x, firstLeadingBit(arg_0.e.x)), select(func_4(func_1(), vec3<bool>(false, false, false), _wgslsmith_f_op_f32(805f - 358f), _wgslsmith_sub_vec4_u32(global2.a.d, vec4<u32>(global2.c.x, 1u, 8660u, global2.a.d.x))).a.d, arg_0.d, !select(vec4<bool>(global2.b, global2.b, arg_0.b, global2.b), vec4<bool>(arg_0.b, false, false, arg_0.b), false))));
    var var_0 = false;
    let var_1 = ~(~abs(~(~94422u)));
    var var_2 = !vec4<bool>(any(!select(vec3<bool>(true, true, arg_0.b), vec3<bool>(true, global2.a.b, arg_0.b), false)), !any(select(vec2<bool>(false, false), vec2<bool>(true, global2.a.b), vec2<bool>(arg_0.b, true))), false, all(select(!vec3<bool>(global2.b, global2.b, arg_0.b), select(vec3<bool>(arg_0.b, true, arg_0.b), vec3<bool>(global2.a.b, false, false), vec3<bool>(true, false, arg_0.b)), select(global2.b, arg_0.b, global2.a.b))));
    var var_3 = Struct_2(Struct_1(select(~func_1().a, _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global2.d, u_input.a, 25315i, global2.a.a.x), arg_0.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.c, -56009i, u_input.a, arg_0.c), vec4<i32>(u_input.a, arg_0.c, -100791i, 8270i), arg_0.a)), !global2.a.b == false), any(!select(vec2<bool>(global2.b, true), vec2<bool>(var_2.x, true), arg_0.b)), max(_wgslsmith_dot_vec3_i32(arg_0.a.yxz, global0[_wgslsmith_index_u32(arg_0.d.x, 18u)]), ~arg_0.a.x) | _wgslsmith_clamp_i32(-arg_0.a.x, arg_0.a.x, ~(-1i)), vec4<u32>(func_1().d.x, var_1, ~26598u, 1078u), _wgslsmith_div_vec2_u32(~vec2<u32>(arg_0.d.x, arg_0.d.x), arg_0.e)), !(!var_2.x || func_4(func_1(), vec3<bool>(true, var_2.x, global2.b), -1252f, vec4<u32>(global2.a.e.x, 35840u, arg_0.e.x, global2.c.x)).a.b), vec2<u32>(reverseBits(var_1), ~var_1), firstLeadingBit(u_input.a));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1896f))))) <= _wgslsmith_div_f32(996f, -1000f);
}

fn func_6(arg_0: i32, arg_1: Struct_2, arg_2: vec3<u32>) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -906f);
    global2 = func_4(global2.a, vec3<bool>(reverseBits(arg_2.x) == 85523u, true, false), 1f, ~(~(arg_1.a.d & arg_1.a.d)) >> (_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(global2.a.d, global2.a.d), _wgslsmith_sub_vec4_u32(~arg_1.a.d, global2.a.d)) % vec4<u32>(32u)));
    let var_1 = arg_1.a;
    global0 = array<vec3<i32>, 18>();
    var var_2 = Struct_1(vec4<i32>(-38278i, ~u_input.a, ~_wgslsmith_add_i32(_wgslsmith_sub_i32(arg_0, 0i), global2.a.a.x), ~firstTrailingBit(_wgslsmith_clamp_i32(arg_0, 0i, 40739i))), false, -(~global2.d), arg_1.a.d, vec2<u32>(var_1.e.x, _wgslsmith_clamp_u32(~1u, ~(~var_1.d.x), _wgslsmith_add_u32(0u ^ global2.c.x, ~4294967295u))));
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1000f * 1000f), _wgslsmith_f_op_f32(floor(-1276f))))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-183f, -436f, true)))), _wgslsmith_f_op_f32(-551f * -633f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = 16003u;
    var var_0 = -u_input.a;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_6(select(~(~1i), -29690i, func_5(func_1())), func_4(func_4(func_1(), !vec3<bool>(global2.b, true, true), 1591f, select(global2.a.d, vec4<u32>(4294967295u, global2.c.x, global2.c.x, 73377u), true)).a, !vec3<bool>(false, global2.b, true), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(1387f, 1548f)), all(vec4<bool>(true, global2.b, false, global2.a.b)))), _wgslsmith_mult_vec4_u32(~vec4<u32>(global2.a.e.x, 72413u, 4294967295u, global2.c.x), countOneBits(global2.a.d))), func_4(global2.a, !select(vec3<bool>(global2.b, false, true), vec3<bool>(true, global2.a.b, global2.a.b), vec3<bool>(false, false, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-686f, -369f, global2.a.b))), vec4<u32>(~global2.c.x, 1u, global2.a.e.x, ~15864u)).a.d.yyw)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, 1026f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(393f, -1292f, 271f, var_1.x) - vec4<f32>(229f, 1283f, -283f, var_1.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, -177f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, 328f, -540f, var_1.x), vec4<f32>(-538f, 159f, var_1.x, -1858f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<f32>(-389f, 115f, var_1.x, -418f), global2.a.b)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-411f, -716f, 1025f, var_1.x)))))));
    global1 = var_2.x;
    let var_3 = func_4(Struct_1(global2.a.a, true | func_1().b, u_input.a, abs(_wgslsmith_sub_vec4_u32(func_1().d, global2.a.d | global2.a.d)), global2.c >> (~max(vec2<u32>(44615u, 38823u), global2.a.d.xw) % vec2<u32>(32u))), !vec3<bool>(false, true, any(vec2<bool>(true, false)) && global2.a.b), _wgslsmith_f_op_f32(-1f), ~func_1().d);
    let var_4 = Struct_1(-var_3.a.a, var_3.a.b, u_input.a, vec4<u32>(~(global2.a.d.x >> (var_3.c.x % 32u)), var_3.a.e.x >> (~_wgslsmith_dot_vec2_u32(global2.c, vec2<u32>(var_3.c.x, global2.a.d.x)) % 32u), _wgslsmith_add_u32(countOneBits(firstTrailingBit(4294967295u)), global2.a.e.x), firstLeadingBit(select(var_3.a.d.x, var_3.a.e.x, true) & 0u)), _wgslsmith_mult_vec2_u32(~((vec2<u32>(0u, var_3.a.d.x) & vec2<u32>(52358u, 9123u)) << (global2.a.e % vec2<u32>(32u))), ~(~firstLeadingBit(var_3.c))));
    let x = u_input.a;
    s_output = StorageBuffer(~global2.a.a.yyy, vec4<i32>(u_input.a >> (abs(max(0u, global2.a.d.x)) % 32u), ~(~(~global2.a.c)), -_wgslsmith_sub_i32(_wgslsmith_sub_i32(23902i, 20783i), global2.a.a.x), var_4.c), var_3.d);
}

