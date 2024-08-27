struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3> = array<i32, 3>(31431i, -9211i, -1i);

var<private> global1: array<vec2<f32>, 12>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: f32, arg_1: u32) -> vec4<f32> {
    var var_0 = Struct_4(~max(_wgslsmith_div_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 3u)], -22309i, u_input.a, global0[_wgslsmith_index_u32(u_input.b, 3u)]), vec4<i32>(u_input.d, 54243i, -8492i, u_input.c)) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(31129u, 3u)], global0[_wgslsmith_index_u32(1u, 3u)], 1i, -57747i), vec4<i32>(-1i, u_input.d, -1i, 40084i)), firstLeadingBit(vec4<i32>(0i, -6664i, -2147483647i, global0[_wgslsmith_index_u32(u_input.b, 3u)]) ^ vec4<i32>(34765i, -34436i, global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(u_input.b, 3u)]))));
    var_0 = Struct_4(~var_0.a);
    var var_1 = Struct_4(_wgslsmith_div_vec4_i32(reverseBits(~(var_0.a >> (vec4<u32>(23049u, u_input.b, 4612u, 0u) % vec4<u32>(32u)))), var_0.a));
    var var_2 = Struct_2(Struct_1(1u), Struct_1(0u), false, vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(arg_0, arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -883f)))), arg_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(arg_0)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -721f), arg_0)));
    let var_3 = vec3<bool>(var_2.c, select(21786i > (_wgslsmith_sub_i32(25267i, u_input.d) ^ _wgslsmith_mult_i32(41361i, 853i)), false, (_wgslsmith_f_op_f32(-arg_0) < _wgslsmith_f_op_f32(step(-1071f, 883f))) | !var_2.c), true);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + var_2.d.x), _wgslsmith_f_op_f32(arg_0 + arg_0)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(select(-154f, 391f, var_2.c)), var_2.d.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.d) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0))), arg_0, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-600f, -1306f))), var_2.d.x)));
}

fn func_2() -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3(-2026f, ~28507u))))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -270f), _wgslsmith_f_op_f32(-442f * _wgslsmith_f_op_f32(1556f - -955f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-873f - 752f)), _wgslsmith_f_op_f32(-708f + 1054f)))));
    global1 = array<vec2<f32>, 12>();
    let var_1 = Struct_1(u_input.b);
    global1 = array<vec2<f32>, 12>();
    var var_2 = true;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(499f * _wgslsmith_div_f32(-1101f, var_0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1563f) * _wgslsmith_f_op_f32(floor(var_0.b.x))), false))), -1314f));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec2<u32>, arg_3: bool) -> Struct_4 {
    global1 = array<vec2<f32>, 12>();
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(u_input.b, 12u)] - global1[_wgslsmith_index_u32(8119u, 12u)]);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1045f, -1014f, -144f, var_1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -184f, var_1.x)))) + vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x), var_1.x, _wgslsmith_f_op_f32(519f * -779f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, _wgslsmith_f_op_f32(var_1.x + 1927f), var_1.x, _wgslsmith_div_f32(1357f, 1384f)))) + vec4<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(abs(var_1.x))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-221f, var_2.x, -214f, var_2.x), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.x, 473f, var_1.x, var_2.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, var_2.x, 993f, 400f), vec4<f32>(582f, var_1.x, -576f, -519f)))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(var_2.x, var_2.x), _wgslsmith_f_op_f32(abs(-448f))), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(sign(702f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(179f))), var_2.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.x, -397f, var_1.x, var_2.x), vec4<f32>(945f, -679f, var_1.x, var_2.x))), _wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, -751f, var_2.x, var_2.x), vec4<f32>(var_2.x, var_2.x, var_2.x, 333f)))))));
    return Struct_4(arg_0.a);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2) -> vec2<bool> {
    var var_0 = arg_1.b;
    global1 = array<vec2<f32>, 12>();
    var var_1 = arg_1.b;
    var var_2 = Struct_2(Struct_1(4294967295u), Struct_1(_wgslsmith_div_u32(_wgslsmith_add_u32(min(arg_1.b.a, 4899u), 60781u), countOneBits(20856u ^ u_input.b))), true, _wgslsmith_f_op_vec4_f32(arg_1.d * vec4<f32>(arg_1.d.x, -211f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-225f, -637f) * 1000f), arg_1.d.x)));
    global0 = array<i32, 3>();
    return select(!(!select(select(vec2<bool>(var_2.c, arg_1.c), vec2<bool>(false, false), var_2.c), select(vec2<bool>(false, false), vec2<bool>(var_2.c, true), vec2<bool>(true, false)), select(true, var_2.c, false))), vec2<bool>(var_2.c, var_2.c), arg_1.c || var_2.c);
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_4) -> vec3<u32> {
    let var_0 = _wgslsmith_clamp_i32(-min(arg_0.x, abs(min(-23576i, global0[_wgslsmith_index_u32(59085u, 3u)]))), firstTrailingBit(~u_input.a), reverseBits(0i));
    var var_1 = _wgslsmith_clamp_i32(min(2147483647i, firstLeadingBit(0i)), u_input.c, reverseBits(_wgslsmith_add_i32(-global0[_wgslsmith_index_u32(arg_2.a, 3u)], arg_0.x) & _wgslsmith_mod_i32(-2147483647i, _wgslsmith_mult_i32(u_input.d, arg_3.a.x))));
    let var_2 = true;
    var var_3 = false;
    var var_4 = arg_3;
    return _wgslsmith_clamp_vec3_u32(firstLeadingBit(_wgslsmith_add_vec3_u32(min(vec3<u32>(u_input.b, 54570u, arg_1.a), ~vec3<u32>(u_input.b, 43256u, arg_1.a)), _wgslsmith_clamp_vec3_u32(min(vec3<u32>(u_input.b, arg_1.a, 39828u), vec3<u32>(arg_2.a, 19806u, arg_1.a)), vec3<u32>(u_input.b, arg_2.a, 0u) & vec3<u32>(arg_2.a, arg_2.a, 22839u), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.a, 4294967295u, arg_2.a), vec3<u32>(arg_1.a, 44171u, arg_1.a))))), ~max(vec3<u32>(8499u, arg_1.a, 29791u), ~vec3<u32>(59728u, 70668u, 1u)) << (abs(~(~vec3<u32>(61797u, 83563u, arg_2.a))) % vec3<u32>(32u)), ~vec3<u32>(1u, arg_2.a, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 47586u), _wgslsmith_add_vec2_u32(vec2<u32>(arg_1.a, 1u), vec2<u32>(u_input.b, 1u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 3>();
    let var_0 = Struct_1(u_input.b);
    var var_1 = func_5(select(vec2<i32>(global0[_wgslsmith_index_u32(~u_input.b, 3u)], ~u_input.a), ~_wgslsmith_mult_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(1u, 3u)], u_input.c), countOneBits(vec2<i32>(-14692i, global0[_wgslsmith_index_u32(16979u, 3u)]))), select(func_4(func_1(Struct_4(vec4<i32>(u_input.c, u_input.c, 0i, -19336i)), Struct_4(vec4<i32>(-5483i, global0[_wgslsmith_index_u32(var_0.a, 3u)], 1i, -1i)), vec2<u32>(0u, 4294967295u), true), Struct_2(var_0, Struct_1(35931u), false, vec4<f32>(-1000f, -615f, -1783f, -227f))), select(func_4(Struct_4(vec4<i32>(5833i, 12983i, u_input.a, u_input.c)), Struct_2(Struct_1(48972u), Struct_1(u_input.b), true, vec4<f32>(606f, -1414f, 848f, 272f))), vec2<bool>(false, false), all(vec2<bool>(false, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), Struct_1(max(min(0u >> (0u % 32u), ~var_0.a), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.a, u_input.b, 4294967295u), vec3<u32>(57841u, 6349u, 27841u)))), var_0, Struct_4((vec4<i32>(-5269i, 37501i, global0[_wgslsmith_index_u32(1u, 3u)], 1i) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 53001u, 49460u, var_0.a), vec4<u32>(1584u, 0u, 0u, var_0.a)) % vec4<u32>(32u))) & ~(vec4<i32>(107814i, global0[_wgslsmith_index_u32(var_0.a, 3u)], 15589i, global0[_wgslsmith_index_u32(4294967295u, 3u)]) & vec4<i32>(global0[_wgslsmith_index_u32(var_0.a, 3u)], -20697i, 50228i, global0[_wgslsmith_index_u32(1u, 3u)]))));
    var var_2 = false;
    var_2 = (all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)))) | true) && true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1379f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-572f + _wgslsmith_f_op_f32(-561f + -963f)))), abs(abs(-2147483647i)));
}

