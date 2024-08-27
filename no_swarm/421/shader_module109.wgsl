struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<f32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29>;

var<private> global1: Struct_1;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<u32>) -> i32 {
    global1 = Struct_1(1878f, select(vec4<u32>(global1.b.x, (1u ^ global1.b.x) | ~43289u, 18160u, select(49697u, ~1548u, global1.e.x)), arg_0, select(select(!vec4<bool>(false, global0[_wgslsmith_index_u32(global1.b.x, 29u)], global0[_wgslsmith_index_u32(global1.b.x, 29u)], true), vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(u_input.b.x, 29u)]), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(32552u, 29u)], global1.e.x, true), vec4<bool>(global0[_wgslsmith_index_u32(global1.b.x, 29u)], true, global1.e.x, true), vec4<bool>(global1.e.x, global1.e.x, global1.e.x, true)), !vec4<bool>(global1.e.x, false, global1.e.x, global1.e.x), false), select(!vec4<bool>(global0[_wgslsmith_index_u32(31426u, 29u)], true, true, true), !vec4<bool>(false, true, global1.e.x, global1.e.x), select(vec4<bool>(global1.e.x, global1.e.x, false, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 29u)], global1.e.x, false, global1.e.x), false)))), _wgslsmith_div_i32(~(-2147483647i), -u_input.c) << ((_wgslsmith_add_u32(14224u, global1.b.x) | min(min(arg_0.x, global1.b.x), 0u)) % 32u), abs(_wgslsmith_clamp_i32(-20804i, global1.d, 0i) & 1i) << (10882u % 32u), !select(!global1.e, !global1.e, !global1.e));
    var var_0 = ~firstLeadingBit(firstLeadingBit(abs(1u)) >> (min(~1u, 0u) % 32u));
    let var_1 = Struct_1(163f, ~reverseBits(global1.b), countOneBits(~(~_wgslsmith_mult_i32(-1i, -26094i))), -(~_wgslsmith_add_i32(1i, global1.d)), !global1.e);
    var_0 = ~_wgslsmith_div_u32(777u, ~countOneBits(_wgslsmith_clamp_u32(8803u, 57921u, global1.b.x)));
    global1 = var_1;
    return 2147483647i;
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    global1 = Struct_1(192f, ~(global1.b << (abs(vec4<u32>(55153u, 139u, 1u, 19265u)) % vec4<u32>(32u))), -_wgslsmith_div_i32(0i, func_3(vec4<u32>(u_input.a.x, u_input.a.x, global1.b.x, u_input.a.x)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 8177u, 4294967295u, 39840u), vec4<u32>(34242u, global1.b.x, 1u, global1.b.x)) % 32u)), i32(-1i) * -1i, select(global1.e, !vec2<bool>(true, arg_0.x), !arg_0));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.a))), _wgslsmith_f_op_f32(global1.a * 1f))), ~(~(~global1.b & ~vec4<u32>(global1.b.x, 83280u, 0u, u_input.b.x))), _wgslsmith_clamp_i32(~global1.c, 1i, countOneBits(1i)), 94600i, arg_0);
    global0 = array<bool, 29>();
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-983f, -753f) * vec2<f32>(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1066f + -1000f) * global1.a)));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-755f, -764f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.a, -1427f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, var_0.a) * vec2<f32>(-185f, 696f)) - _wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, 2331f), vec2<f32>(1645f, -1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, var_1.x)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(25082u, 52288u), global1.b.x), 29u)]))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.a, global1.a)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1035f, 1578f))) - vec2<f32>(var_1.x, global1.a))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(759f, -555f), _wgslsmith_f_op_f32(226f * -1086f))))));
    return Struct_1(577f, global1.b, reverseBits(var_0.c), global1.d, vec2<bool>(global0[_wgslsmith_index_u32(0u, 29u)], all(!vec3<bool>(global0[_wgslsmith_index_u32(38273u, 29u)], true, global1.e.x))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = arg_0;
    var var_1 = func_2(global1.e);
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, -377f, -151f, global1.a))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.a, -1177f, arg_1.a, var_0.a))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(379f, -931f, -174f, -338f), vec4<f32>(1221f, global1.a, var_0.a, 933f), arg_1.e.x))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-588f * arg_1.a), _wgslsmith_f_op_f32(select(365f, 1034f, var_0.e.x)), arg_0.a, arg_0.a)))));
    var var_3 = arg_1;
    let var_4 = _wgslsmith_add_vec2_i32(-((vec2<i32>(arg_0.c, u_input.c) | vec2<i32>(-31640i, -10321i)) >> (arg_0.b.zz % vec2<u32>(32u))) << (min(~u_input.b.zx, ~countOneBits(vec2<u32>(67640u, 0u))) % vec2<u32>(32u)), u_input.d.xz);
    return func_2(var_3.e).b.x;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: bool, arg_3: Struct_1) -> i32 {
    var var_0 = func_2(func_2(vec2<bool>(true, all(!vec4<bool>(false, false, global0[_wgslsmith_index_u32(1u, 29u)], false)))).e);
    var var_1 = arg_3.a;
    var var_2 = countOneBits(~(~(~_wgslsmith_mult_vec3_u32(global1.b.wxx, vec3<u32>(24743u, arg_1, 4826u)))));
    var var_3 = arg_3;
    global0 = array<bool, 29>();
    return _wgslsmith_mult_i32(73703i, var_3.d) ^ _wgslsmith_mult_i32(-1i ^ _wgslsmith_clamp_i32(~var_3.d, 66498i, _wgslsmith_sub_i32(2147483647i, 0i)), abs(global1.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.b.x;
    global1 = Struct_1(global1.a, firstTrailingBit(~reverseBits(~vec4<u32>(global1.b.x, global1.b.x, 0u, global1.b.x))), -(i32(-1i) * -4576i), func_4(any(!select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 29u)], false, false), vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(global1.b.x, 29u)]), global0[_wgslsmith_index_u32(46941u, 29u)])), _wgslsmith_mult_u32(~(36179u << (1u % 32u)), func_1(Struct_1(-1042f, vec4<u32>(global1.b.x, 5474u, 39056u, 7584u), -14177i, u_input.d.x, global1.e), Struct_1(112f, global1.b, global1.d, u_input.d.x, global1.e)) ^ ~0u), global0[_wgslsmith_index_u32(select(~4294967295u, firstTrailingBit(1u), !global1.e.x), 29u)], func_2(!global1.e)), !vec2<bool>(any(vec3<bool>(true, false, global1.e.x)), (global0[_wgslsmith_index_u32(u_input.b.x, 29u)] == global1.e.x) && true));
    let var_1 = func_2(global1.e);
    var var_2 = any(func_2(global1.e).e);
    var var_3 = ~49883u;
    let var_4 = select(vec4<bool>(!((448f > global1.a) != any(vec4<bool>(global1.e.x, false, true, global1.e.x))), func_4(var_1.e.x, ~76127u, global1.e.x, func_2(global1.e)) < (1410i >> (~4294967295u % 32u)), var_1.e.x, !any(select(vec4<bool>(var_1.e.x, false, global1.e.x, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], false, var_1.e.x, true), true))), vec4<bool>(true, false, global1.e.x, true), all(vec3<bool>(!global1.e.x, true, all(vec4<bool>(global0[_wgslsmith_index_u32(4464u, 29u)], false, true, global0[_wgslsmith_index_u32(var_1.b.x, 29u)])))) | (true || global0[_wgslsmith_index_u32(~(~4294967295u), 29u)]));
    var_3 = ~max(51854u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.b.x, 81856u, u_input.a.x, 79897u), _wgslsmith_mod_vec4_u32(vec4<u32>(13314u, 40855u, 0u, var_1.b.x), global1.b))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.yxx, _wgslsmith_mult_u32(_wgslsmith_add_u32(~countOneBits(4294967295u), ~_wgslsmith_sub_u32(var_1.b.x, global1.b.x)), _wgslsmith_dot_vec4_u32(var_1.b, vec4<u32>(global1.b.x, global1.b.x, 0u, u_input.a.x) >> (~vec4<u32>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x) % vec4<u32>(32u)))), vec2<f32>(-1773f, global1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), vec3<u32>(78620u, _wgslsmith_mult_u32(0u << (func_2(vec2<bool>(global1.e.x, global0[_wgslsmith_index_u32(var_1.b.x, 29u)])).b.x % 32u), firstTrailingBit(u_input.a.x >> (u_input.a.x % 32u))), _wgslsmith_dot_vec3_u32(vec3<u32>(~73842u, abs(var_1.b.x), ~12750u), ~vec3<u32>(var_1.b.x, u_input.b.x, global1.b.x) << (vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u) % vec3<u32>(32u)))));
}

