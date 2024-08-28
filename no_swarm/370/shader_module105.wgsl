struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 12> = array<vec4<bool>, 12>(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true));

var<private> global1: array<f32, 4> = array<f32, 4>(174f, -1288f, -108f, -1130f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(4294967295u, 4u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-897f + _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(9726u, 4u)], 618f, true))) * 1000f), _wgslsmith_f_op_f32(1f - 412f)));
    var var_1 = !(!(!vec4<bool>(any(vec3<bool>(true, true, false)), true, true, true)));
    let var_2 = vec3<i32>(-44805i, ~1i, _wgslsmith_sub_i32(-1i, min(2147483647i, -1i)));
    var var_3 = 15407i;
    var var_4 = u_input.a.x;
    return vec2<u32>(~(firstTrailingBit(~u_input.a.x) >> (u_input.a.x % 32u)), max(6678u, min(u_input.a.x, 46119u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<i32>) -> Struct_3 {
    global0 = array<vec4<bool>, 12>();
    global0 = array<vec4<bool>, 12>();
    var var_0 = Struct_3(arg_0.x);
    global0 = array<vec4<bool>, 12>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(101992u, 4u)], global1[_wgslsmith_index_u32(u_input.a.x, 4u)]), global1[_wgslsmith_index_u32(22158u, 4u)], 358f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1888f, global1[_wgslsmith_index_u32(var_0.a, 4u)], 881f))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2428f, global1[_wgslsmith_index_u32(4294967295u, 4u)], -220f)))))), vec4<bool>(false, func_2().x < _wgslsmith_add_u32(~var_0.a, arg_0.x), false, select(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 4u)] * 316f) == 471f, true, true != (502f <= global1[_wgslsmith_index_u32(4294967295u, 4u)]))), vec4<i32>(reverseBits(~(-16836i)), ~(~min(-1i, 6680i)), arg_1.x, 0i), _wgslsmith_mult_u32(117832u, arg_0.x));
    return Struct_3(24863u);
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.a.a.xy, arg_1.a.a.yy)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1838f, global1[_wgslsmith_index_u32(~1u, 4u)]))), arg_1.a.b.xx));
    let var_1 = Struct_2(arg_1.a, abs(u_input.a));
    var var_2 = func_3(select(min(~(~u_input.a), arg_1.b ^ var_1.b), _wgslsmith_mod_vec2_u32(func_2(), ~arg_1.b), !all(vec3<bool>(arg_1.a.b.x, true, true))), var_1.a.c);
    let var_3 = Struct_1(vec3<f32>(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x - global1[_wgslsmith_index_u32(reverseBits(arg_1.a.d), 4u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), var_1.a.a.x))), var_1.a.a.x), !(!(!vec4<bool>(true, false, true, arg_1.a.b.x))), _wgslsmith_mult_vec4_i32(~(-_wgslsmith_sub_vec4_i32(var_1.a.c, var_1.a.c)), arg_1.a.c), ~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(var_2.a, var_1.a.d, 77809u)), ~vec3<u32>(20429u, 47820u, 10135u)));
    var var_4 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.a.a.x, -2445f, global1[_wgslsmith_index_u32(64748u, 4u)], 780f)))))))));
    return arg_1.a;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> vec4<bool> {
    global1 = array<f32, 4>();
    let var_0 = func_1(max(arg_0.x, arg_1.c.x), Struct_2(func_1(-func_1(arg_0.x, Struct_2(Struct_1(vec3<f32>(-551f, global1[_wgslsmith_index_u32(u_input.a.x, 4u)], -1528f), arg_1.b, arg_1.c, 83693u), vec2<u32>(4294967295u, u_input.a.x))).c.x, Struct_2(Struct_1(vec3<f32>(arg_1.a.x, -1257f, global1[_wgslsmith_index_u32(3836u, 4u)]), global0[_wgslsmith_index_u32(u_input.a.x, 12u)], vec4<i32>(7879i, 1i, -18684i, arg_1.c.x), u_input.a.x), abs(u_input.a))), u_input.a));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1837f);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-549f, var_0.a.x, 465f) * vec3<f32>(arg_1.a.x, -1593f, -1000f)), _wgslsmith_f_op_vec3_f32(-arg_1.a))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-687f, arg_1.a.x, 324f), arg_1.a))))), !(!select(!vec4<bool>(false, var_0.b.x, true, true), vec4<bool>(false, true, true, arg_1.b.x), !var_0.b.x)), abs(max(vec4<i32>(-1i, -16684i, var_0.c.x, i32(-1i) * -2147483647i), vec4<i32>(-arg_1.c.x, arg_0.x, -2147483647i, max(94114i, var_0.c.x)))), 44428u);
    global1 = array<f32, 4>();
    return vec4<bool>(50000u != arg_1.d, false, var_0.b.x, ~(~(8413i | arg_0.x)) != ~(~(-2147483647i)));
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> StorageBuffer {
    global0 = array<vec4<bool>, 12>();
    var var_0 = !vec3<bool>(!(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(25435u, 4u)])) > -145f), all(vec4<bool>(2147483647i > arg_0.c.x, true, 56951u != u_input.a.x, !arg_0.b.x)), func_4(-vec4<i32>(arg_0.c.x, 39583i, arg_0.c.x, arg_0.c.x), Struct_1(vec3<f32>(global1[_wgslsmith_index_u32(arg_0.d, 4u)], arg_0.a.x, 147f), vec4<bool>(arg_0.b.x, arg_1, true, true), arg_0.c >> (vec4<u32>(arg_0.d, arg_0.d, u_input.a.x, 1u) % vec4<u32>(32u)), arg_0.d)).x);
    var var_1 = Struct_3(_wgslsmith_clamp_u32(16098u, select(min(4294967295u, arg_0.d), ~_wgslsmith_mult_u32(4769u, 12039u), var_0.x), u_input.a.x));
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(15899u, abs(arg_0.d)), 4u)] != _wgslsmith_f_op_f32(abs(1f));
    var_0 = arg_0.b.zxx;
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1014f, 388f, arg_0.a.x) * vec3<f32>(452f, global1[_wgslsmith_index_u32(var_1.a, 4u)], -1043f)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.a.x, global1[_wgslsmith_index_u32(arg_0.d, 4u)], 1291f))))), func_4(vec4<i32>(arg_0.c.x, -4620i, -30823i, arg_0.c.x), arg_0).xxy))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 4>();
    global0 = array<vec4<bool>, 12>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-502f))), global1[_wgslsmith_index_u32(u_input.a.x ^ (_wgslsmith_add_u32(reverseBits(0u), _wgslsmith_add_u32(u_input.a.x, 13805u)) >> (u_input.a.x % 32u)), 4u)], global1[_wgslsmith_index_u32(1u, 4u)]);
    let x = u_input.a;
    s_output = func_5(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), 356f, 429f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1079f, global1[_wgslsmith_index_u32(u_input.a.x, 4u)], var_0.x)))), select(func_4(vec4<i32>(1i, 1i, 1i, 1i), func_1(51927i, Struct_2(Struct_1(vec3<f32>(550f, global1[_wgslsmith_index_u32(11060u, 4u)], global1[_wgslsmith_index_u32(1u, 4u)]), vec4<bool>(false, true, false, true), vec4<i32>(33981i, 0i, 16032i, 0i), 65231u), vec2<u32>(0u, u_input.a.x)))), !global0[_wgslsmith_index_u32(abs(u_input.a.x), 12u)], global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, firstTrailingBit(u_input.a.x), 1u), 12u)]), ~(select(vec4<i32>(-1i, -289i, 25445i, -1i), vec4<i32>(0i, 13746i, -26368i, -36511i), false) << (~vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x) % vec4<u32>(32u))), ~4294967295u), true);
}

