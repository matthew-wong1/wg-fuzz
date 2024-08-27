struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1> = array<f32, 1>(934f);

var<private> global1: u32;

var<private> global2: Struct_1 = Struct_1(1u, vec2<i32>(0i, -20821i), vec3<f32>(1063f, -1235f, -493f), 1i, 154f);

var<private> global3: vec4<f32> = vec4<f32>(-495f, 1076f, -884f, -150f);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec2<bool>) -> vec2<i32> {
    var var_0 = Struct_1(~_wgslsmith_div_u32(40804u, reverseBits(~global2.a)), -_wgslsmith_div_vec2_i32(~(u_input.c.zw & u_input.a.xy), global2.b), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2422f, -219f, 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global2.e, global3.x))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global2.c), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(354f, global0[_wgslsmith_index_u32(2188u, 1u)], global0[_wgslsmith_index_u32(u_input.e.x, 1u)]), vec3<f32>(1000f, global0[_wgslsmith_index_u32(19804u, 1u)], 1139f))))))), vec3<f32>(1894f, _wgslsmith_f_op_f32(min(-419f, global3.x)), global3.x))), firstLeadingBit(u_input.c.x), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(min(firstTrailingBit(_wgslsmith_add_u32(42193u, u_input.e.x)), 1u), 1u)] - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-960f * _wgslsmith_f_op_f32(global2.e + global0[_wgslsmith_index_u32(global2.a, 1u)])))));
    var var_1 = 1099f;
    let var_2 = Struct_1(~_wgslsmith_dot_vec2_u32(~u_input.e, u_input.e), -_wgslsmith_mod_vec2_i32(-vec2<i32>(-21822i, var_0.d), u_input.a.xz), _wgslsmith_f_op_vec3_f32(round(global2.c)), reverseBits(global2.d), global3.x);
    var var_3 = ~_wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -u_input.c, vec4<i32>(_wgslsmith_dot_vec2_i32(abs(u_input.c.zx), -var_2.b), reverseBits(global2.b.x), -2147483647i, firstLeadingBit(2147483647i)));
    let var_4 = ~(-24161i);
    return _wgslsmith_add_vec2_i32(var_0.b, vec2<i32>(var_2.b.x, -5610i));
}

fn func_2() -> bool {
    let var_0 = global2.a;
    global2 = Struct_1(~u_input.e.x, _wgslsmith_sub_vec2_i32(func_3(vec2<bool>(true, true)), _wgslsmith_clamp_vec2_i32(firstTrailingBit(u_input.c.yw | vec2<i32>(1i, global2.b.x)), ~(~vec2<i32>(-2147483647i, -1i)), _wgslsmith_sub_vec2_i32(global2.b, vec2<i32>(46299i, -42244i)) << (u_input.e % vec2<u32>(32u)))), global2.c, -2147483647i, _wgslsmith_f_op_f32(-global3.x));
    var var_1 = !vec4<bool>(false, -min(global2.b.x, -1i) <= abs(2147483647i), true, any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true)));
    global1 = 37103u;
    let var_2 = u_input.d;
    return false;
}

fn func_1() -> Struct_1 {
    let var_0 = global2.a;
    let var_1 = true == !func_2();
    var var_2 = global3.x;
    var var_3 = Struct_1(select(u_input.e.x, _wgslsmith_add_u32(66878u, u_input.e.x >> (global2.a % 32u)), var_1 | true), global2.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(global2.c))))), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.b, -5920i, -1i), vec4<i32>(2147483647i, global2.b.x, 0i, u_input.d)), global2.b.x ^ -u_input.d), countOneBits(vec2<i32>(-2147483647i, global2.d) ^ vec2<i32>(u_input.b, -68651i)) ^ -(~vec2<i32>(u_input.d, u_input.a.x))), _wgslsmith_div_f32(1000f, -310f));
    let var_4 = Struct_1(4294967295u, -vec2<i32>(global2.d, var_3.d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c.x, global3.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(global2.e)), _wgslsmith_f_op_f32(floor(1000f)), true)))), u_input.a.x, global0[_wgslsmith_index_u32(u_input.e.x, 1u)]);
    return Struct_1(reverseBits(_wgslsmith_dot_vec2_u32(u_input.e | ~vec2<u32>(var_3.a, 14192u), u_input.e)), -(_wgslsmith_clamp_vec2_i32(~global2.b, -u_input.a.xy, vec2<i32>(2147483647i, -13123i)) & (vec2<i32>(-2147483647i, global2.d) ^ select(vec2<i32>(-2147483647i, u_input.a.x), var_3.b, var_1))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.c * global2.c) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global3.xwy), _wgslsmith_f_op_vec3_f32(abs(global3.xxz))))) - global3.wyy), global2.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.c.x) + _wgslsmith_div_f32(-1686f, 1167f)));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    global0 = array<f32, 1>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(arg_2.e + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.e))), _wgslsmith_f_op_f32(597f * _wgslsmith_f_op_f32(-281f + 163f)));
    var var_2 = var_0.b.x;
    var var_3 = _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(~(-34166i), arg_1.b.x, arg_1.d), ~(~vec3<i32>(var_0.b.x, 39784i, var_0.b.x))) | reverseBits(-u_input.a), ~vec3<i32>(34860i, func_1().d, u_input.b));
    return func_1();
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec3<bool>, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = max(~(u_input.a | ~(-vec3<i32>(-23408i, global2.d, u_input.a.x))), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global2.d & u_input.d, arg_1, -2147483647i), vec3<i32>(52319i, _wgslsmith_clamp_i32(-13673i, arg_0.b.x, -2147483647i), -1i)), abs(vec3<i32>(arg_1 >> (u_input.e.x % 32u), global2.d, arg_0.d))));
    let var_1 = u_input.e;
    var var_2 = 24271u;
    let var_3 = func_4(arg_1, func_1(), func_4(-32084i, func_4(_wgslsmith_add_i32(19168i, select(-19739i, -2147483647i, true)), Struct_1(~arg_0.a, _wgslsmith_add_vec2_i32(u_input.c.xw, arg_0.b), _wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(1u, 1u)], global3.x, global2.c.x), vec3<f32>(1110f, -1100f, 522f)), func_4(-24255i, Struct_1(arg_0.a, u_input.c.wz, vec3<f32>(218f, 765f, -1693f), global2.b.x, arg_0.c.x), arg_0).b.x, _wgslsmith_f_op_f32(758f - global3.x)), Struct_1(~3975u, func_4(0i, Struct_1(arg_3.x, vec2<i32>(global2.d, arg_0.b.x), vec3<f32>(-928f, global2.e, 1837f), 1i, global0[_wgslsmith_index_u32(114662u, 1u)]), arg_0).b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.e.x, 1u)], global3.x, -2336f)), 1i, -1042f)), func_4(~global2.d & (i32(-1i) * -1i), arg_0, arg_0)));
    var var_4 = min(_wgslsmith_clamp_i32(-(~var_3.b.x) >> (9560u % 32u), 7439i & ~max(var_0.x, var_0.x), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(u_input.c, ~u_input.c), _wgslsmith_sub_i32(global2.d, _wgslsmith_sub_i32(2147483647i, 21791i)))), abs(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(max(u_input.a, vec3<i32>(1i, var_0.x, 23838i)), -u_input.a), abs(_wgslsmith_sub_i32(arg_0.b.x, 19825i)))));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~((27413u >> (1u % 32u)) >> ((_wgslsmith_dot_vec2_u32(vec2<u32>(global2.a, u_input.e.x), vec2<u32>(global2.a, global2.a)) >> (~global2.a % 32u)) % 32u)), _wgslsmith_div_vec2_i32(global2.b, vec2<i32>(-13216i, global2.b.x)), vec3<f32>(global2.e, _wgslsmith_f_op_f32(-global2.e), _wgslsmith_f_op_f32(select(471f, global2.c.x, false))), -_wgslsmith_dot_vec2_i32(~select(vec2<i32>(-27673i, u_input.c.x), global2.b, true), global2.b), global0[_wgslsmith_index_u32(global2.a, 1u)]);
    let var_1 = func_5(func_4(min(-u_input.a.x, -1i), func_1(), func_1()), _wgslsmith_mult_i32(select(-(~u_input.b), min(var_0.d, var_0.b.x), (var_0.d <= -17973i) & true), 10657i), select(select(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), any(vec4<bool>(true, true, true, true))), select(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), vec3<bool>(true, false, func_2()), all(vec4<bool>(false, true, true, false))), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true))), vec2<u32>(func_4(~(-2147483647i), Struct_1(~var_0.a, _wgslsmith_mod_vec2_i32(var_0.b, vec2<i32>(5458i, global2.d)), _wgslsmith_f_op_vec3_f32(-global3.zwz), -var_0.b.x, -1280f), Struct_1(1u, func_1().b, var_0.c, u_input.a.x, global0[_wgslsmith_index_u32(reverseBits(146787u), 1u)])).a, 4294967295u | min(_wgslsmith_div_u32(global2.a, var_0.a), 43290u >> (u_input.e.x % 32u))));
    var var_2 = Struct_1(u_input.e.x, ~_wgslsmith_mod_vec2_i32(-firstTrailingBit(var_0.b), ~vec2<i32>(var_0.d, 63572i)), _wgslsmith_f_op_vec3_f32(floor(var_1.c)), _wgslsmith_dot_vec2_i32(var_0.b ^ -var_0.b, ~(~_wgslsmith_mod_vec2_i32(var_1.b, var_0.b))), _wgslsmith_f_op_f32(-func_1().e));
    var_2 = func_1();
    let var_3 = 1i;
    var_0 = var_1;
    let var_4 = false;
    global3 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.e - var_2.e), _wgslsmith_f_op_f32(select(global3.x, -1000f, var_4)))) + func_5(func_4(-2147483647i, Struct_1(6138u, var_0.b, var_0.c, var_0.b.x, -153f), Struct_1(30160u, var_1.b, var_0.c, var_2.d, global2.e)), _wgslsmith_add_i32(52244i, global2.b.x), select(vec3<bool>(false, var_4, true), vec3<bool>(false, var_4, var_4), vec3<bool>(var_4, true, var_4)), ~u_input.e).e), func_4(1i, func_5(Struct_1(9107u, var_0.b, vec3<f32>(354f, -1581f, var_1.c.x), -51903i, global0[_wgslsmith_index_u32(var_2.a, 1u)]), func_5(Struct_1(51841u, vec2<i32>(2147483647i, global2.d), vec3<f32>(144f, 1955f, var_0.c.x), 40516i, -265f), u_input.d, vec3<bool>(false, true, true), vec2<u32>(var_1.a, 2640u)).d, select(vec3<bool>(false, var_4, false), vec3<bool>(true, var_4, true), vec3<bool>(var_4, var_4, false)), u_input.e & u_input.e), func_4(global2.b.x, var_1, Struct_1(69796u, vec2<i32>(u_input.c.x, var_1.b.x), var_0.c, global2.d, -374f))).e, 754f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(288f * _wgslsmith_f_op_f32(f32(-1f) * -499f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    global3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(abs(var_0.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.c.x)) * _wgslsmith_f_op_f32(f32(-1f) * -132f)) * _wgslsmith_f_op_f32(-global2.c.x)), _wgslsmith_f_op_f32(-var_2.c.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(613f)) - _wgslsmith_f_op_f32(trunc(global2.c.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 1u)] - -299f) * _wgslsmith_f_op_f32(global2.c.x + var_2.c.x)) * _wgslsmith_f_op_f32(max(-2319f, func_1().e))) * -1049f), vec3<i32>(0i, min(~1i, abs(~(-1i))), var_2.d), _wgslsmith_div_f32(-1355f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1807f)) * _wgslsmith_f_op_f32(-var_2.c.x))));
}

