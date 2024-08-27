struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -523f;

var<private> global1: array<vec4<u32>, 10>;

var<private> global2: u32 = 1u;

var<private> global3: bool = true;

var<private> global4: i32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1() -> Struct_2 {
    global1 = array<vec4<u32>, 10>();
    let var_0 = Struct_1(1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -632f)) + _wgslsmith_f_op_f32(306f + -1456f))), min(-(~vec4<i32>(32982i, 1i, -6271i, -2147483647i)), _wgslsmith_div_vec4_i32(-abs(vec4<i32>(2147483647i, 2147483647i, 1i, 0i)), -vec4<i32>(0i, -2147483647i, 8873i, -1i) >> (global1[_wgslsmith_index_u32(~4294967295u, 10u)] % vec4<u32>(32u)))));
    global3 = any(select(vec2<bool>(true, true), vec2<bool>(true, true), true));
    return Struct_2(vec3<bool>(any(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false)), false, !(u_input.a > (4294967295u >> (0u % 32u)))), var_0.c.x & ~var_0.c.x);
}

fn func_3() -> i32 {
    global3 = false;
    var var_0 = _wgslsmith_add_vec3_i32(min(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-16625i, -1i, -96080i), vec3<i32>(-24124i, 7700i, 22151i)), vec3<i32>(12319i, -2147483647i, -60444i) >> (vec3<u32>(u_input.a, 7642u, u_input.a) % vec3<u32>(32u))), firstLeadingBit(vec3<i32>(-1i, -1i, 11749i))), abs(~vec3<i32>(-1i, 29382i, 1i)) & vec3<i32>(-2147483647i, 22970i >> (u_input.a % 32u), 1i)) | ~_wgslsmith_clamp_vec3_i32(-vec3<i32>(-858i, 59027i, -1i), -firstTrailingBit(vec3<i32>(0i, -1778i, -2505i)), ~select(vec3<i32>(-25321i, -22244i, 1i), vec3<i32>(-2147483647i, 1i, 0i), false));
    var var_1 = 1i;
    global3 = false;
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-381f * _wgslsmith_f_op_f32(floor(-553f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -967f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f + 575f), _wgslsmith_f_op_f32(1323f + 116f))))))));
    return -_wgslsmith_mod_i32(_wgslsmith_clamp_i32(var_0.x << (24164u % 32u), 2147483647i, 6835i), _wgslsmith_add_i32(var_0.x | -2690i, var_0.x)) | _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(1i, firstTrailingBit(var_0.x)), var_0.x, -2147483647i, i32(-1i) * -14714i), vec4<i32>(-63943i, _wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, var_0.x, var_0.x, var_0.x), ~vec4<i32>(-11949i, 62980i, 1i, -25832i)), ~1i, -_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<i32>(var_0.x, var_0.x, 2147483647i, var_0.x))));
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-370f))), arg_3.b))));
    var var_0 = (arg_3.c.yz >> (vec2<u32>(~1u << (_wgslsmith_div_u32(u_input.a, 71926u) % 32u), u_input.a) % vec2<u32>(32u))) ^ -arg_3.c.xz;
    let var_1 = Struct_1(reverseBits(2147483647i), -1179f, vec4<i32>(min(_wgslsmith_sub_i32(-53781i, -2147483647i), arg_2.b) << (u_input.a % 32u), arg_3.c.x, firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_add_i32(var_0.x, 10849i), arg_1)), func_3()));
    global0 = _wgslsmith_f_op_f32(-2335f * arg_3.b);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_3.b)), 1000f);
    return arg_2;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> vec2<i32> {
    var var_0 = Struct_3(abs(-arg_2.c.x), min(4294967295u, u_input.a), _wgslsmith_mod_vec3_i32(max(_wgslsmith_div_vec3_i32(vec3<i32>(arg_3.b, arg_1.b, arg_3.b), arg_2.c.yxz), min(arg_2.c.wyw, arg_2.c.xyx)) ^ ~(arg_2.c.xyw << (vec3<u32>(u_input.a, 12757u, u_input.a) % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(abs(vec3<i32>(1773i, -1i, arg_1.b)), vec3<i32>(~(-17074i), _wgslsmith_div_i32(arg_2.c.x, -2147483647i), 0i))));
    let var_1 = func_2(!vec3<bool>(true, arg_1.a.x, true), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(arg_2.c.zy, _wgslsmith_mod_vec2_i32(firstTrailingBit(arg_2.c.zw), vec2<i32>(arg_2.a, 789i) | var_0.c.xz)), 0i << (u_input.a % 32u)), arg_1, Struct_1(9300i, _wgslsmith_f_op_f32(arg_2.b - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -576f), _wgslsmith_f_op_f32(-arg_2.b)))), vec4<i32>(arg_1.b, -arg_2.a, -1i, -1i)));
    let var_2 = arg_0;
    return _wgslsmith_clamp_vec2_i32(~vec2<i32>(_wgslsmith_mult_i32(10100i, countOneBits(-29937i)), min(_wgslsmith_mult_i32(var_1.b, 2147483647i), var_0.c.x ^ var_1.b)), abs(~(~var_0.c.zx)), arg_2.c.xz);
}

fn func_5(arg_0: vec2<i32>) -> Struct_3 {
    let var_0 = func_1();
    var var_1 = Struct_3(~abs(-(39491i ^ arg_0.x)), 19940u, vec3<i32>(-8072i, var_0.b, arg_0.x));
    var var_2 = select(true, false, var_0.a.x);
    global3 = var_0.a.x;
    var var_3 = vec4<bool>(any(vec4<bool>(u_input.a <= var_1.b, true, !var_0.a.x | false, !all(vec2<bool>(var_0.a.x, false)))), false, false, true);
    return Struct_3(-58879i, 1u, var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(select(vec2<i32>(-1i, 39208i), func_4(vec4<bool>(true, true, true, true), func_2(vec3<bool>(true, true, true), countOneBits(0i), func_1(), Struct_1(-116i, 2186f, vec4<i32>(48306i, -2147483647i, -26588i, -1i))), Struct_1(0i, -1470f, vec4<i32>(1i, 1i, 1i, 1i)), func_2(vec3<bool>(true, true, true), ~0i, func_1(), Struct_1(0i, 187f, vec4<i32>(-1i, 0i, 0i, 55867i)))), true));
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(211f, -1456f, true))))))));
    var var_1 = Struct_3(2147483647i, 45201u, ~_wgslsmith_clamp_vec3_i32(var_0.c, vec3<i32>(var_0.a, var_0.a, var_0.c.x), select(var_0.c, vec3<i32>(2147483647i, 2147483647i, var_0.a), func_1().a)));
    let var_2 = vec4<u32>(13240u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(8318u, ~u_input.a), ~_wgslsmith_add_u32(u_input.a, 4294967295u)), u_input.a, u_input.a), var_0.b, ~97018u);
    let var_3 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(max(var_1.c.x, var_0.a) ^ -2147483647i, firstLeadingBit(var_0.a ^ var_1.c.x)), vec2<i32>(~var_0.c.x, var_0.a)), _wgslsmith_f_op_f32(max(-290f, -1818f)), vec4<i32>(-var_1.c.x, -firstTrailingBit(-1i) & 3104i, var_1.c.x, _wgslsmith_mod_i32(firstTrailingBit(var_0.c.x), ~31001i)));
    let var_4 = _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a, 45638u), var_2.x), _wgslsmith_div_u32(reverseBits(8161u), max(_wgslsmith_sub_u32(var_0.b >> (var_0.b % 32u), abs(4294967295u)), var_0.b ^ _wgslsmith_div_u32(var_2.x, var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(func_5(_wgslsmith_sub_vec2_i32(-vec2<i32>(var_3.a, var_3.c.x), var_3.c.yy)).a, var_3.a), var_1.c.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1266f, -189f, 442f), vec3<f32>(679f, var_3.b, -2438f))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_3.b, -1157f, var_3.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(736f, -380f, var_3.b))), func_2(vec3<bool>(true, false, true), var_0.a, func_2(vec3<bool>(true, true, true), 20907i, Struct_2(vec3<bool>(false, false, true), -35933i), Struct_1(-1i, -743f, var_3.c)), Struct_1(1i, 1134f, var_3.c)).a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(601f, 164f, 187f) - vec3<f32>(-733f, -1473f, 1001f)) * vec3<f32>(-1456f, var_3.b, -556f)) * vec3<f32>(var_3.b, _wgslsmith_f_op_f32(sign(-1000f)), -241f))));
}

