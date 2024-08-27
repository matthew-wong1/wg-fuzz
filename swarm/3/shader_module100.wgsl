struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7>;

var<private> global1: array<bool, 23> = array<bool, 23>(true, false, true, false, true, false, true, true, false, true, true, true, false, true, false, false, true, true, true, false, true, false, true);

var<private> global2: f32 = -1593f;

var<private> global3: vec2<f32> = vec2<f32>(-1597f, 571f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: vec4<u32>, arg_3: f32) -> bool {
    let var_0 = vec4<i32>(~_wgslsmith_mult_i32(arg_1, ~1i), arg_1, select(arg_1, arg_1, true), firstTrailingBit(arg_1));
    var var_1 = _wgslsmith_mult_vec3_u32(arg_2.xzy, ~_wgslsmith_sub_vec3_u32(~vec3<u32>(arg_2.x, u_input.b, 4294967295u), ~(~arg_2.xyw)));
    var_1 = max(~vec3<u32>(0u, u_input.b, arg_2.x) ^ ~arg_2.yxx, ~vec3<u32>(var_1.x, ~0u, 4294967295u)) << (vec3<u32>(var_1.x, 48596u, 18522u) % vec3<u32>(32u));
    var var_2 = arg_2;
    let var_3 = 2147483647i;
    return !all(select(vec3<bool>(global1[_wgslsmith_index_u32(arg_2.x, 23u)], 2147483647i != var_3, true), select(!vec3<bool>(false, global1[_wgslsmith_index_u32(7862u, 23u)], true), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 23u)], global1[_wgslsmith_index_u32(var_2.x, 23u)], global1[_wgslsmith_index_u32(0u, 23u)]), select(vec3<bool>(false, true, true), vec3<bool>(false, false, global1[_wgslsmith_index_u32(2110u, 23u)]), vec3<bool>(global1[_wgslsmith_index_u32(0u, 23u)], true, global1[_wgslsmith_index_u32(23607u, 23u)]))), !global1[_wgslsmith_index_u32(82u, 23u)] || global1[_wgslsmith_index_u32(var_1.x, 23u)]));
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = any(vec3<bool>(true, func_3(_wgslsmith_f_op_f32(-811f - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 7u)])), u_input.d, abs(_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.b, 0u, u_input.c), vec4<u32>(u_input.b, u_input.c, u_input.c, 1u))), -701f), arg_0.x));
    let var_1 = ~u_input.a | vec2<i32>(reverseBits(u_input.a.x), countOneBits(38615i));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(firstTrailingBit(78495u), 7u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 1u, u_input.b), vec3<u32>(31569u, 0u, 5545u)), 7u)] * _wgslsmith_f_op_f32(max(global3.x, global0[_wgslsmith_index_u32(4294967295u, 7u)]))))))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-861f)));
    global3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2, 544f), vec2<f32>(1f, 1f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.c, 7u)], global0[_wgslsmith_index_u32(3259u, 7u)]) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1121f, global3.x)))), vec2<f32>(396f, var_2), true)), select(arg_0.xy, !(!arg_0.yx), true))), vec2<f32>(_wgslsmith_f_op_f32(trunc(1f)), global0[_wgslsmith_index_u32(0u, 7u)]));
    return Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1212f + 1241f) - _wgslsmith_f_op_f32(round(var_2))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 7u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(470f)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(470f + var_2), -1050f, 1400f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1077f, -174f, global0[_wgslsmith_index_u32(30151u, 7u)])))), vec4<u32>(~u_input.b, min(firstTrailingBit(40436u), u_input.b), ~(~u_input.b), 1u) & max(vec4<u32>(53095u, u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(17966u, 0u), vec2<u32>(1u, 46022u)), _wgslsmith_mod_u32(4294967295u, 1258u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.c, u_input.b, u_input.b), min(vec4<u32>(u_input.c, u_input.b, 62903u, u_input.c), vec4<u32>(0u, u_input.c, 4294967295u, 0u)))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> bool {
    var var_0 = ~arg_0.a;
    global1 = array<bool, 23>();
    let var_1 = Struct_2(vec3<bool>(-588f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - global3.x), true, true), _wgslsmith_clamp_vec3_i32(~(~vec3<i32>(2230i, u_input.d, -12034i)), ~_wgslsmith_sub_vec3_i32(~vec3<i32>(22514i, 2147483647i, u_input.d), vec3<i32>(49297i, u_input.a.x, 25414i)), vec3<i32>(0i, 2147483647i, _wgslsmith_add_i32(1i, 1i))));
    var var_2 = vec3<u32>(arg_1.c.x, ~(~(~30618u)), 1u);
    var var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(~11092i, -_wgslsmith_clamp_i32(1i, -26785i & u_input.d, -u_input.a.x), ~(~0i), 0i), vec4<i32>(u_input.a.x, (-2147483647i >> (u_input.b % 32u)) << (1u % 32u), _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.a.x, var_1.b.x), min(-3350i, u_input.d)), max(_wgslsmith_clamp_i32(10558i, -2147483647i, 1i), var_1.b.x | -2147483647i)) | vec4<i32>(u_input.d ^ _wgslsmith_mod_i32(var_1.b.x, 6099i), firstLeadingBit(-var_1.b.x), -3609i << ((20026u | arg_1.c.x) % 32u), var_1.b.x));
    return any(vec2<bool>(false, !all(vec4<bool>(true, global1[_wgslsmith_index_u32(arg_1.c.x, 23u)], global1[_wgslsmith_index_u32(1u, 23u)], var_1.a.x))));
}

fn func_1(arg_0: bool, arg_1: u32) -> Struct_3 {
    var var_0 = !select(vec4<bool>(arg_0, any(!vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(u_input.c, 23u)])), func_4(Struct_3(u_input.b), func_2(vec3<bool>(true, false, global1[_wgslsmith_index_u32(42794u, 23u)]))), false), vec4<bool>(true, true, any(vec2<bool>(global1[_wgslsmith_index_u32(arg_1, 23u)], false)), !global1[_wgslsmith_index_u32(84438u, 23u)]), func_4(Struct_3(1u), func_2(vec3<bool>(true, true, true))));
    let var_1 = select(select(select(!vec4<bool>(var_0.x, true, false, arg_0), select(!vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(false, true, global1[_wgslsmith_index_u32(33210u, 23u)], true), func_4(Struct_3(u_input.b), Struct_1(vec3<f32>(733f, -745f, global0[_wgslsmith_index_u32(1u, 7u)]), vec3<f32>(global3.x, global3.x, 452f), vec4<u32>(arg_1, u_input.c, u_input.c, 1u)))), vec4<bool>(true, any(vec2<bool>(true, var_0.x)), arg_0 != global1[_wgslsmith_index_u32(u_input.b, 23u)], arg_0 | true)), select(vec4<bool>(true, false, false, u_input.a.x > 2147483647i), !vec4<bool>(false, global1[_wgslsmith_index_u32(arg_1, 23u)], arg_0, arg_0), true != var_0.x), !select(select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 23u)], global1[_wgslsmith_index_u32(71233u, 23u)], false), vec4<bool>(false, true, true, arg_0), vec4<bool>(arg_0, arg_0, true, false)), select(vec4<bool>(false, true, var_0.x, true), vec4<bool>(var_0.x, false, false, false), var_0.x), vec4<bool>(var_0.x, arg_0, arg_0, false))), select(!(!(!vec4<bool>(arg_0, var_0.x, false, var_0.x))), vec4<bool>(arg_0, !(!global1[_wgslsmith_index_u32(u_input.b, 23u)]), arg_0, true), select(!select(vec4<bool>(var_0.x, false, false, false), vec4<bool>(false, arg_0, global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(4294967295u, 23u)]), var_0.x), vec4<bool>(select(true, false, false), false, true, false && arg_0), arg_0)), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-23312i, -955i, -2147483647i, -29205i), vec4<i32>(u_input.a.x, u_input.d, u_input.a.x, u_input.a.x)) & ~vec4<i32>(0i, 10868i, u_input.a.x, 1i), vec4<i32>(-1i, reverseBits(u_input.a.x), 1i, -u_input.d)) < _wgslsmith_div_i32(~u_input.a.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, -2147483647i, u_input.d, -12918i), -vec4<i32>(-1i, u_input.a.x, u_input.a.x, 2147483647i))));
    let var_2 = global3.x;
    var var_3 = abs(_wgslsmith_add_u32(u_input.b, u_input.b));
    global0 = array<f32, 7>();
    return Struct_3(arg_1);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(21006u, 7u)] * 142f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3.x - -313f))), global0[_wgslsmith_index_u32(abs(firstTrailingBit(arg_1.a)), 7u)]))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(arg_1.a, 7u)], 1000f, 464f), vec3<f32>(global0[_wgslsmith_index_u32(1u, 7u)], -971f, global0[_wgslsmith_index_u32(61438u, 7u)]), vec3<bool>(global1[_wgslsmith_index_u32(0u, 23u)], false, arg_2))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(235f, -1453f, -606f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1457f, -1000f, -138f), vec3<f32>(376f, global0[_wgslsmith_index_u32(u_input.c, 7u)], global0[_wgslsmith_index_u32(38847u, 7u)]))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-228f, global3.x, -812f))), -49515i < u_input.a.x))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1009f), _wgslsmith_f_op_f32(floor(global3.x)), _wgslsmith_f_op_f32(-global3.x))));
    let var_1 = vec4<u32>(4294967295u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, reverseBits(3615u), arg_1.a, u_input.b), ~(~vec4<u32>(arg_1.a, 1u, 57009u, 0u))), u_input.b, ~4294967295u);
    var var_2 = select(vec2<bool>(arg_2, false | all(select(vec4<bool>(false, arg_2, true, arg_2), vec4<bool>(true, arg_2, global1[_wgslsmith_index_u32(var_1.x, 23u)], false), true))), select(!vec2<bool>(true, any(vec4<bool>(global1[_wgslsmith_index_u32(1u, 23u)], false, global1[_wgslsmith_index_u32(4294967295u, 23u)], arg_2))), vec2<bool>(select(true && global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(arg_1.a, 23u)], global3.x > global0[_wgslsmith_index_u32(u_input.b, 7u)]), !(!global1[_wgslsmith_index_u32(57030u, 23u)])), arg_2 & true), !vec2<bool>(true, any(!vec3<bool>(arg_2, arg_2, global1[_wgslsmith_index_u32(var_1.x, 23u)]))));
    let var_3 = Struct_3(u_input.c);
    global3 = vec2<f32>(-378f, var_0.x);
    return Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, -313f, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(29755u & arg_0.a, 4294967295u >> (var_3.a % 32u)), 7u)])), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-231f, global3.x, _wgslsmith_f_op_f32(floor(383f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, -1000f, global0[_wgslsmith_index_u32(1700u, 7u)]))), true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1607f, var_0.x))), vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), -2193f, global3.x)), vec3<bool>(var_2.x, any(!vec2<bool>(global1[_wgslsmith_index_u32(var_1.x, 23u)], true)), false))), var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global3.x, -834f, -577f))) + vec3<f32>(-1285f, 259f, global3.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 7u)], -1210f, 329f), vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 7u)], global3.x, global3.x))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(802f, global3.x, global0[_wgslsmith_index_u32(4294967295u, 7u)]), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 7u)], -439f, global0[_wgslsmith_index_u32(0u, 7u)]), vec3<f32>(-1228f, global3.x, global3.x)))))))), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_div_u32(1u, 76118u), 6251u, 45376u, countOneBits(~28842u)), vec4<u32>(_wgslsmith_add_u32(~4294967295u, u_input.c ^ u_input.c), ~u_input.c, 68891u, _wgslsmith_dot_vec2_u32(vec2<u32>(2634u, u_input.b), vec2<u32>(41375u, 9804u)))));
    global2 = global0[_wgslsmith_index_u32(~1185u, 7u)];
    let var_1 = func_5(func_1(global1[_wgslsmith_index_u32(abs(1u), 23u)], _wgslsmith_div_u32(var_0.c.x, var_0.c.x)), func_1((min(u_input.a.x, u_input.d) << (u_input.c % 32u)) < (u_input.a.x ^ u_input.d), var_0.c.x), global1[_wgslsmith_index_u32(select(u_input.b, _wgslsmith_dot_vec2_u32(~countOneBits(var_0.c.xz), var_0.c.wz), false), 23u)]);
    let var_2 = func_1(true, abs(~(countOneBits(0u) << (u_input.c % 32u))));
    global0 = array<f32, 7>();
    var var_3 = Struct_3(u_input.c);
    let var_4 = _wgslsmith_div_u32(var_1.c.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.b, u_input.c), ~var_3.a, var_2.a, _wgslsmith_dot_vec4_u32(vec4<u32>(40019u, 50255u, var_2.a, 1u), vec4<u32>(0u, 6329u, 24971u, 1u))), func_5(Struct_3(var_3.a), Struct_3(var_0.c.x), true).c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(var_0.a, vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -834f), all(vec4<bool>(global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(var_2.a, 23u)], global1[_wgslsmith_index_u32(1u, 23u)], true)))), 163f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(365f, -2539f) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(67227u, 7u)] - var_1.b.x)))), _wgslsmith_dot_vec2_i32(u_input.a, -min(vec2<i32>(u_input.d, -6744i), ~u_input.a)), ~(~_wgslsmith_mult_vec3_u32(~vec3<u32>(var_4, var_2.a, 1u), vec3<u32>(4294967295u, 0u, 37416u))), -vec2<i32>(firstTrailingBit(select(0i, u_input.a.x, true)), u_input.a.x), var_1.c.zx);
}

