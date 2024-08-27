struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 922f;

var<private> global1: array<vec4<u32>, 18>;

var<private> global2: Struct_1 = Struct_1(vec4<u32>(4294967295u, 53814u, 4294967295u, 102381u), i32(-2147483648), vec2<i32>(28664i, 17644i), vec3<bool>(false, false, true));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: vec4<bool>, arg_3: bool) -> i32 {
    var var_0 = true;
    var var_1 = _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x));
    return _wgslsmith_clamp_i32(u_input.a.x, -(1i << (abs(global2.a.x) % 32u)) | (u_input.b | 1i), i32(-1i) * -40883i);
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-625f * _wgslsmith_f_op_f32(f32(-1f) * -720f))) - 253f);
    let var_1 = _wgslsmith_dot_vec4_i32(max(reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, u_input.a.x, arg_0, 2147483647i), min(vec4<i32>(u_input.a.x, 31955i, arg_0, arg_1.c.x), vec4<i32>(arg_0, -22138i, arg_0, global2.b)))), max(_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.b, u_input.a.x, 0i, global2.b), -vec4<i32>(30260i, 2147483647i, arg_0, 43383i)), max(reverseBits(vec4<i32>(global2.b, 52127i, arg_0, 55331i)), -vec4<i32>(global2.c.x, 0i, arg_1.b, -23112i)))), _wgslsmith_clamp_vec4_i32(max(countOneBits(vec4<i32>(global2.b, arg_1.b, -1i, -2147483647i)), -vec4<i32>(arg_0, arg_0, u_input.b, arg_0)), vec4<i32>(-13812i, ~2147483647i, u_input.b | ~u_input.a.x, 19450i), vec4<i32>(-1i) * -select(vec4<i32>(arg_1.b, u_input.b, global2.b, u_input.b), vec4<i32>(0i, global2.b, arg_0, -70592i), vec4<bool>(arg_1.d.x, false, global2.d.x, global2.d.x))));
    global1 = array<vec4<u32>, 18>();
    let var_2 = 7737i;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-738f, -639f, _wgslsmith_f_op_f32(-728f * -100f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(1103f, 989f, 671f), vec3<f32>(-1214f, 1172f, -1994f)))))));
    return vec2<i32>(-_wgslsmith_mult_i32(_wgslsmith_add_i32(arg_0, 0i), _wgslsmith_div_i32(1i, -2147483647i | global2.b)), arg_1.b);
}

fn func_2(arg_0: vec3<f32>) -> i32 {
    var var_0 = Struct_1(global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_mult_u32(firstTrailingBit(33328u), 1u), ~0u), 18u)], global2.b, firstLeadingBit(max(_wgslsmith_sub_vec2_i32(select(u_input.a.xy, u_input.a.zx, vec2<bool>(global2.d.x, global2.d.x)), countOneBits(vec2<i32>(global2.c.x, global2.b))), u_input.a.zz << (abs(vec2<u32>(global2.a.x, 0u)) % vec2<u32>(32u)))), vec3<bool>(!global2.d.x, global2.d.x, global2.d.x));
    var var_1 = abs(func_4(abs(func_3(_wgslsmith_f_op_vec2_f32(-arg_0.yy), true, !vec4<bool>(true, false, var_0.d.x, true), global2.d.x)), Struct_1(~vec4<u32>(global2.a.x, var_0.a.x, global2.a.x, global2.a.x), u_input.a.x, firstTrailingBit(var_0.c) & ~vec2<i32>(u_input.a.x, u_input.b), vec3<bool>(all(vec2<bool>(global2.d.x, global2.d.x)), !var_0.d.x, all(global2.d)))));
    let var_2 = -26457i;
    var var_3 = vec4<f32>(arg_0.x, 1292f, arg_0.x, arg_0.x);
    var_0 = Struct_1(~(~(~max(vec4<u32>(global2.a.x, 4294967295u, var_0.a.x, var_0.a.x), var_0.a))), u_input.a.x, ~(_wgslsmith_clamp_vec2_i32(func_4(-22030i, Struct_1(vec4<u32>(4294967295u, global2.a.x, 4294967295u, global2.a.x), -55993i, vec2<i32>(u_input.b, -1i), var_0.d)), var_0.c >> (vec2<u32>(var_0.a.x, var_0.a.x) % vec2<u32>(32u)), global2.c) & vec2<i32>(66212i, -2147483647i)), !select(!select(vec3<bool>(var_0.d.x, false, true), vec3<bool>(global2.d.x, true, var_0.d.x), true), select(vec3<bool>(true, global2.d.x, global2.d.x), vec3<bool>(var_0.d.x, false, false), global2.d.x), global2.d));
    return _wgslsmith_add_i32(min(-9147i, -var_0.c.x), 1i);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: f32) -> vec4<i32> {
    return vec4<i32>(~(-9431i) ^ _wgslsmith_mod_i32(u_input.b, ~(~u_input.b)), -func_2(vec3<f32>(_wgslsmith_div_f32(arg_2, arg_1.x), _wgslsmith_f_op_f32(arg_1.x * 1627f), arg_1.x)), u_input.b & 1i, arg_0.b);
}

fn func_5(arg_0: f32, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = vec2<bool>(false, !global2.d.x);
    var var_1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(abs(_wgslsmith_sub_i32(arg_1.x, arg_1.x)), 18806i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(1i, u_input.a.x, -18619i, u_input.a.x)), arg_1 >> (select(global1[_wgslsmith_index_u32(global2.a.x, 18u)], vec4<u32>(0u, global2.a.x, 23360u, global2.a.x), false) % vec4<u32>(32u)))), u_input.a, vec3<i32>(~(-21946i), firstLeadingBit(abs(26669i)), ~global2.c.x));
    var var_2 = var_0.x;
    var var_3 = vec4<i32>(u_input.a.x << (~(~reverseBits(48317u)) % 32u), firstLeadingBit(_wgslsmith_dot_vec2_i32(select(_wgslsmith_mod_vec2_i32(var_1.xy, u_input.a.xy), abs(vec2<i32>(60760i, var_1.x)), true), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(var_1.x, -37982i)))), 1i, ~(~abs(global2.b)));
    global1 = array<vec4<u32>, 18>();
    return Struct_1(global1[_wgslsmith_index_u32(21550u, 18u)], firstTrailingBit(u_input.a.x) & abs(-52926i), -(~u_input.a.yx >> (~(~global2.a.zy) % vec2<u32>(32u))), global2.d);
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    let var_0 = !(!(!(-u_input.a.x < (i32(-1i) * -2147483647i))));
    var var_1 = vec4<bool>(true, all(vec2<bool>(true, any(global2.d.xx))), var_0, false);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(692f, _wgslsmith_f_op_f32(select(-148f, -1205f, true)), _wgslsmith_f_op_f32(floor(1000f)), -1194f)), vec4<f32>(_wgslsmith_f_op_f32(153f - _wgslsmith_f_op_f32(-215f * -266f)), -969f, -365f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(611f)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2062f, 1000f, 1525f, 317f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(355f, 773f, -914f, -1520f), vec4<f32>(1555f, -1455f, 1000f, 591f), false))), vec4<f32>(-398f, -391f, _wgslsmith_f_op_f32(min(-592f, -545f)), _wgslsmith_div_f32(-792f, -780f)), max(global2.b, 2147483647i) != _wgslsmith_dot_vec2_i32(arg_0.c, vec2<i32>(arg_0.c.x, global2.b)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(101f, 176f, 1000f, 2263f), vec4<f32>(-237f, 198f, -401f, 996f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-659f, -761f, 1701f, -375f)))))));
    let var_3 = func_5(var_2.x, _wgslsmith_clamp_vec4_i32(vec4<i32>(-47145i, -1i | global2.b, countOneBits(abs(2147483647i)), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, u_input.b, global2.c.x), vec3<i32>(global2.b, arg_0.b, u_input.b), u_input.a), vec3<i32>(1i, 2147483647i, -2147483647i))), func_1(arg_0, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x)), _wgslsmith_f_op_vec2_f32(-var_2.yx)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -941f))), vec4<i32>(-firstLeadingBit(0i), ~16815i ^ (arg_0.b << (arg_0.a.x % 32u)), u_input.a.x >> (4294967295u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.c.x, global2.b, 1i), u_input.a) ^ func_2(vec3<f32>(1103f, 380f, -669f)))));
    global1 = array<vec4<u32>, 18>();
    return func_5(_wgslsmith_f_op_f32(-var_2.x), firstLeadingBit(select(vec4<i32>(~u_input.a.x, 8194i, u_input.a.x, max(u_input.a.x, u_input.b)), (vec4<i32>(20107i, 0i, u_input.b, global2.c.x) | vec4<i32>(u_input.b, -2147483647i, -45262i, var_3.c.x)) & vec4<i32>(-1i, var_3.b, -8250i, 39277i), !vec4<bool>(false, false, global2.d.x, false))));
}

fn func_7(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = ~abs(reverseBits(~vec2<u32>(4294967295u, 1u)));
    global2 = arg_1;
    var var_1 = func_6(arg_1);
    let var_2 = ~u_input.a;
    let var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-244f, _wgslsmith_f_op_f32(sign(444f)), _wgslsmith_f_op_f32(f32(-1f) * -490f), -1410f), vec4<f32>(-592f, _wgslsmith_f_op_f32(108f * -925f), 1000f, -120f), global2.d.x)))));
    return Struct_1(global1[_wgslsmith_index_u32(10661u, 18u)], ~var_1.c.x, select(var_1.c, var_2.zy, arg_1.d.yz), arg_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(countOneBits(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(global2.a.x, 26030u, 17246u, 4294967295u), vec4<u32>(20499u, global2.a.x, 1u, global2.a.x)))), select(-2147483647i, global2.b, global2.d.x) | u_input.b, -firstTrailingBit(min(vec2<i32>(global2.b, global2.b), _wgslsmith_add_vec2_i32(global2.c, global2.c))), select(!vec3<bool>(true, true, global2.d.x), !global2.d, !vec3<bool>(false, false, global2.d.x)));
    global0 = -676f;
    var var_0 = func_7(0u, func_6(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -574f)), ~func_1(Struct_1(vec4<u32>(global2.a.x, global2.a.x, global2.a.x, 0u), u_input.b, global2.c, global2.d), vec2<f32>(563f, -327f), 859f))));
    let var_1 = Struct_1(vec4<u32>(_wgslsmith_add_u32(firstLeadingBit(var_0.a.x), var_0.a.x), var_0.a.x, ~var_0.a.x, _wgslsmith_div_u32(0u, firstLeadingBit(1u))), 1i, vec2<i32>(-_wgslsmith_add_i32(var_0.b | 21504i, 2147483647i), 40088i ^ _wgslsmith_div_i32(global2.b, _wgslsmith_clamp_i32(52277i, 85937i, -45940i))), !(!var_0.d));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-264f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -3731f) - _wgslsmith_f_op_f32(-1342f + 977f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-378f)), -1283f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(399f * -450f), _wgslsmith_f_op_f32(460f * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2134f, -1122f) + _wgslsmith_f_op_f32(f32(-1f) * -448f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-524f))))));
    let var_2 = max(_wgslsmith_div_vec4_i32(~(~vec4<i32>(var_1.c.x, 2147483647i, 2147483647i, u_input.a.x)), vec4<i32>(var_0.b, 700i, global2.c.x, 22066i) << (func_6(var_1).a % vec4<u32>(32u))) ^ _wgslsmith_div_vec4_i32(-vec4<i32>(-56578i, var_0.c.x, 2147483647i, var_1.c.x), vec4<i32>(global2.b, 2206i, -16201i, var_1.c.x)), vec4<i32>(_wgslsmith_mult_i32(~30497i | var_1.b, _wgslsmith_add_i32(var_1.b, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1366i), vec2<i32>(-1i, -13563i)))), func_7(var_0.a.x, var_1).c.x, _wgslsmith_add_i32(u_input.a.x, ~firstLeadingBit(var_0.c.x)), -55638i));
    global1 = array<vec4<u32>, 18>();
    global0 = 1003f;
    var var_3 = vec4<bool>(all(var_0.d.zx), func_5(1f, vec4<i32>(-(~var_0.b), -4242i, var_2.x, min(var_0.c.x, 5082i))).d.x, false, !var_0.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(37903u, _wgslsmith_add_vec3_u32(var_0.a.yzz, select(vec3<u32>(~var_0.a.x, 31815u, 4294967295u << (var_0.a.x % 32u)), _wgslsmith_clamp_vec3_u32(global2.a.wyz, vec3<u32>(29393u, global2.a.x, 0u), var_1.a.xyz), vec3<bool>(!global2.d.x, true, func_7(44392u, var_1).d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -149f), 654f))));
}

