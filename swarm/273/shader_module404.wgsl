struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: u32,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 8701i;

var<private> global1: vec4<f32> = vec4<f32>(-422f, 266f, -174f, 257f);

var<private> global2: array<f32, 14> = array<f32, 14>(1431f, 2531f, 1125f, 1715f, -1458f, -1759f, -1002f, -929f, -563f, -1028f, -509f, 904f, 947f, -1214f);

var<private> global3: array<u32, 15> = array<u32, 15>(1u, 4294967295u, 1u, 1u, 17943u, 1u, 14495u, 3417u, 0u, 4294967295u, 0u, 1u, 54885u, 9390u, 4294967295u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec2<bool>, arg_3: vec4<u32>) -> vec3<f32> {
    global0 = -arg_0.b.x;
    let var_0 = Struct_3(vec4<bool>(arg_2.x, !any(select(vec4<bool>(true, false, false, arg_2.x), vec4<bool>(true, false, arg_2.x, arg_2.x), arg_2.x)), !(all(vec3<bool>(arg_2.x, true, false)) | false), true), ~arg_3.x, ~reverseBits(global3[_wgslsmith_index_u32(~u_input.d, 15u)]), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -821f), _wgslsmith_f_op_f32(ceil(-1803f)), _wgslsmith_div_f32(global1.x, 1571f), global2[_wgslsmith_index_u32(1u, 14u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-131f, 1000f, arg_0.a.x, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 15u)], 14u)])) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, -1078f, arg_0.a.x, arg_0.a.x) - arg_0.a)))), _wgslsmith_f_op_vec4_f32(arg_0.a + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(arg_0.a, vec4<f32>(global2[_wgslsmith_index_u32(arg_3.x, 14u)], global1.x, -532f, arg_0.a.x)), vec4<f32>(2018f, -1961f, 917f, 1840f), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)))), !(!(!arg_2.x)))), Struct_1(_wgslsmith_div_f32(-1140f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-144f - -106f))), global1.x));
    var var_1 = arg_0;
    let var_2 = vec2<i32>(~((u_input.c | _wgslsmith_mod_i32(-29078i, arg_0.b.x)) | -arg_0.b.x), 41768i);
    var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(var_0.d + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1882f, global1.x, var_1.a.x, -578f) * vec4<f32>(var_0.d.x, 2472f, var_1.a.x, -345f)) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(arg_0.a + arg_0.a), _wgslsmith_f_op_vec4_f32(exp2(var_0.d)))))), arg_0.b);
    return _wgslsmith_div_vec3_f32(arg_0.a.wwy, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.d.x, _wgslsmith_f_op_f32(select(var_0.e.a, -667f, true)), 237f), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0.e.a, 1106f))), _wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(arg_0.a.x))))))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: vec3<f32>) -> f32 {
    global1 = vec4<f32>(global2[_wgslsmith_index_u32(u_input.d, 14u)], global2[_wgslsmith_index_u32(0u, 14u)], -640f, global2[_wgslsmith_index_u32(4294967295u, 14u)]);
    global0 = _wgslsmith_dot_vec4_i32(-(~firstLeadingBit(vec4<i32>(u_input.a, -58466i, u_input.a, 52888i)) | vec4<i32>(countOneBits(-1i), countOneBits(-6548i), 1i & u_input.c, 1i)), ~vec4<i32>(-15930i, abs(17119i ^ u_input.b), firstLeadingBit(-2147483647i >> (0u % 32u)), u_input.a));
    var var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, global1.x, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(272f + 1000f) + _wgslsmith_f_op_f32(ceil(-434f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(2067u, 14u)]))) - 799f), arg_0.b), vec3<i32>(reverseBits(-6731i), u_input.b, -20129i));
    var var_1 = true;
    var var_2 = Struct_3(vec4<bool>(all(vec2<bool>(!arg_1, var_0.b.x != u_input.c)), !(!any(vec3<bool>(arg_1, false, false))), !(all(vec4<bool>(false, arg_1, false, true)) != !arg_1), arg_1 & !any(vec4<bool>(arg_1, false, arg_1, false))), ~31431u & _wgslsmith_mod_u32(33680u, global3[_wgslsmith_index_u32(abs(28270u), 15u)] ^ _wgslsmith_sub_u32(4294967295u, u_input.d)), firstLeadingBit(u_input.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_3.x - arg_0.b), global2[_wgslsmith_index_u32(18738u, 14u)], _wgslsmith_f_op_f32(1000f + global2[_wgslsmith_index_u32(34156u, 14u)]), _wgslsmith_f_op_f32(arg_3.x - arg_0.b))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a), _wgslsmith_div_vec4_f32(var_0.a, var_0.a)) + vec4<f32>(1472f, _wgslsmith_f_op_f32(f32(-1f) * -561f), _wgslsmith_f_op_f32(trunc(2024f)), arg_0.b))), arg_0);
    return _wgslsmith_f_op_f32(-arg_0.b);
}

fn func_2() -> Struct_2 {
    let var_0 = true;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.x, global1.x)) * _wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_f32(step(144f, 286f)), _wgslsmith_f_op_f32(sign(global1.x))), all(select(vec4<bool>(true, var_0, var_0, true), vec4<bool>(var_0, false, false, true), vec4<bool>(var_0, true, false, true))), 61867u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(vec4<f32>(1056f, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d, 15u)], 15u)], 14u)], 1173f, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d, 15u)], 14u)]), vec3<i32>(u_input.c, u_input.a, -28811i)), vec3<i32>(1i, 2147483647i, u_input.b), vec2<bool>(var_0, false), vec4<u32>(global3[_wgslsmith_index_u32(1u, 15u)], u_input.d, 0u, 0u))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(0u, 14u)], 522f, 436f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(~(1u << (u_input.d % 32u)), 14u)]))));
    let var_2 = vec4<bool>(true, true, true, !var_0);
    let var_3 = Struct_3(var_2, ~abs(9533u), 0u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-338f, -853f, global2[_wgslsmith_index_u32(u_input.d, 14u)], 503f), vec4<f32>(global1.x, -1485f, -978f, global1.x)))))))), Struct_1(_wgslsmith_div_f32(-462f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 14u)] - var_1.b)))), _wgslsmith_f_op_f32(ceil(184f))));
    var_1 = Struct_1(var_3.e.b, 948f);
    return Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_3.d))), _wgslsmith_add_vec3_i32(reverseBits(firstLeadingBit(-vec3<i32>(u_input.b, -51845i, -2147483647i))), ~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, 0i, 24610i), vec3<i32>(2147483647i, u_input.c, u_input.c)) >> (vec3<u32>(global3[_wgslsmith_index_u32(664u, 15u)] | 1u, 1u, ~global3[_wgslsmith_index_u32(var_3.c, 15u)]) % vec3<u32>(32u))));
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: u32) -> Struct_3 {
    var var_0 = arg_1.a;
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(min(3381u, u_input.d) << (4906u % 32u), 14u)])), _wgslsmith_f_op_f32(step(var_0.x, 952f)), global1.x, 1f));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.xxx)));
    var var_2 = Struct_1(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-763f)) + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d, 15u)], 14u)])));
    global0 = u_input.c;
    return Struct_3(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), firstTrailingBit(arg_2), arg_0 | (30117u ^ _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 32570u, 0u), vec3<u32>(arg_2, u_input.d, 1u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, 42013u, 25139u), vec3<u32>(4294967295u, arg_2, 1u)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(965f, 962f, -232f, global2[_wgslsmith_index_u32(u_input.d, 14u)]) + _wgslsmith_f_op_vec4_f32(-arg_1.a)))), arg_1.a), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)))), -1128f));
}

fn func_1() -> Struct_2 {
    let var_0 = func_5(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(~u_input.d, 15u)], _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(42710u, 4294967295u)), ~max(vec2<u32>(u_input.d, 29377u), vec2<u32>(7354u, u_input.d)))), 15u)], func_2(), u_input.d);
    let var_1 = 21733u;
    global0 = 1i;
    var var_2 = !any(func_5(var_1, Struct_2(var_0.d, _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.c), vec3<i32>(2147483647i, u_input.c, -1i))), ~4294967295u).a.ww);
    let var_3 = vec2<u32>(var_0.c & var_0.b, global3[_wgslsmith_index_u32(~(~var_1), 15u)]);
    return func_2();
}

fn func_6(arg_0: f32, arg_1: Struct_2, arg_2: bool) -> Struct_2 {
    var var_0 = 142f;
    var var_1 = reverseBits(~u_input.a) | min(-18232i | _wgslsmith_div_i32(-3414i, u_input.a), -u_input.a);
    let var_2 = arg_1;
    global2 = array<f32, 14>();
    var var_3 = _wgslsmith_f_op_vec3_f32(func_3(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(0u, 14u)], -1037f, -1000f, var_2.a.x)))), ~vec3<i32>(-4685i << (global3[_wgslsmith_index_u32(24550u, 15u)] % 32u), 2147483647i, -2147483647i)), firstLeadingBit(func_1().b), !select(!(!vec2<bool>(arg_2, arg_2)), select(vec2<bool>(false, arg_2), select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, arg_2), arg_2), select(vec2<bool>(arg_2, true), vec2<bool>(true, true), arg_2)), any(!vec3<bool>(arg_2, arg_2, false))), firstTrailingBit(abs(_wgslsmith_mult_vec4_u32(min(vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 15u)], 4698u, 4349u, u_input.d), vec4<u32>(1u, global3[_wgslsmith_index_u32(4294967295u, 15u)], 64975u, 4294967295u)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 4294967295u, global3[_wgslsmith_index_u32(23397u, 15u)], u_input.d), vec4<u32>(3044u, u_input.d, global3[_wgslsmith_index_u32(u_input.d, 15u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(26374u, 15u)], 15u)], 15u)], 15u)]))))))).xz;
    return var_2;
}

fn func_7(arg_0: Struct_2, arg_1: f32, arg_2: u32, arg_3: vec4<f32>) -> Struct_3 {
    var var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x + _wgslsmith_f_op_f32(-arg_1)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.x - -225f), _wgslsmith_f_op_vec3_f32(func_3(Struct_2(arg_3, vec3<i32>(-28805i, 2147483647i, arg_0.b.x)), vec3<i32>(arg_0.b.x, arg_0.b.x, -24053i), vec2<bool>(true, false), vec4<u32>(u_input.d, 1u, 62552u, 106391u))).x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) + _wgslsmith_f_op_f32(func_2().a.x + _wgslsmith_f_op_vec3_f32(func_3(arg_0, arg_0.b, vec2<bool>(false, false), vec4<u32>(4294967295u, 19779u, 0u, 0u))).x)), arg_0.a.x, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 14u)] - _wgslsmith_f_op_f32(func_4(Struct_1(-378f, arg_1), true, u_input.d, vec3<f32>(global1.x, -1482f, -179f))))), vec3<i32>(0i, _wgslsmith_dot_vec4_i32(max(vec4<i32>(-1i, 1i, 1i, -22675i), vec4<i32>(8793i, arg_0.b.x, -51565i, -19980i)), vec4<i32>(2147483647i, u_input.b, u_input.a, -1i)), func_6(944f, func_2(), true).b.x) & ((max(vec3<i32>(arg_0.b.x, u_input.c, arg_0.b.x), vec3<i32>(4515i, arg_0.b.x, arg_0.b.x)) & (arg_0.b & arg_0.b)) << (~vec3<u32>(u_input.d, arg_2, u_input.d) % vec3<u32>(32u))));
    let var_1 = arg_0;
    var var_2 = Struct_1(-272f, -1079f);
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~_wgslsmith_clamp_u32(arg_2, 105060u, u_input.d) ^ max(~u_input.d, ~1u)), _wgslsmith_mult_u32(u_input.d, arg_2)), 14u)];
    let var_4 = func_5(reverseBits(global3[_wgslsmith_index_u32(77817u, 15u)]), func_6(_wgslsmith_f_op_f32(func_5(_wgslsmith_add_u32(arg_2, u_input.d), func_2(), 1u).d.x * -498f), Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(arg_3)))), vec3<i32>(var_1.b.x, 1i, 0i) ^ vec3<i32>(-1i, u_input.c, arg_0.b.x)), !any(vec2<bool>(true, true))), _wgslsmith_mod_u32(max(reverseBits(arg_2 << (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(42832u, 15u)], 15u)], 15u)] % 32u)), global3[_wgslsmith_index_u32(firstLeadingBit(arg_2 | 3191u), 15u)]), abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, arg_2), countOneBits(vec2<u32>(global3[_wgslsmith_index_u32(1u, 15u)], 4294967295u)))))).d.zx;
    return Struct_3(func_5(select(4294967295u, (u_input.d & u_input.d) ^ 1u, false), var_1, 56233u).a, 4294967295u ^ reverseBits(u_input.d), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(29111u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, u_input.d, 16197u, global3[_wgslsmith_index_u32(62951u, 15u)]), vec4<u32>(83659u, u_input.d, arg_2, u_input.d)), ~global3[_wgslsmith_index_u32(u_input.d, 15u)]), max(~vec3<u32>(18476u, arg_2, u_input.d), vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d, 15u)], 15u)], 46105u, global3[_wgslsmith_index_u32(8849u, 15u)])), vec3<u32>(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 15u)], 15u)], 5883u), 4294967295u, u_input.d)), firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.d, 52303u), vec3<u32>(49741u, 1u, 4294967295u))) & vec3<u32>(global3[_wgslsmith_index_u32(countOneBits(global3[_wgslsmith_index_u32(0u, 15u)]), 15u)], 23445u >> (u_input.d % 32u), u_input.d << (30628u % 32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1249f, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 15u)], 15u)], 14u)], global1.x, arg_0.a.x) - vec4<f32>(-223f, var_1.a.x, arg_0.a.x, -1854f)) + _wgslsmith_f_op_vec4_f32(var_0.a - arg_3)) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(526f, 873f, var_1.a.x, -303f)))))), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * var_2.a) - -1362f), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(~arg_2, 14u)], 1538f))), var_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = func_7(func_6(_wgslsmith_div_f32(-2060f, global1.x), func_1(), var_0), -155f, _wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(~1u, ~global3[_wgslsmith_index_u32(35300u, 15u)]), u_input.d), ~78264u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(359f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(22384u, 14u)]), global2[_wgslsmith_index_u32(u_input.d, 14u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.x, global1.x))), false)), -753f, _wgslsmith_f_op_f32(min(722f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d, 15u)], 15u)], 14u)], global1.x)), _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(14220u, 15u)], 14u)])), true))))));
    global3 = array<u32, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(881f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.e.b, global2[_wgslsmith_index_u32(4294967295u, 14u)])) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-155f - -1866f)))), func_6(var_1.e.a, func_6(-1077f, Struct_2(var_1.d, select(vec3<i32>(-15990i, -2147483647i, u_input.c), vec3<i32>(u_input.b, u_input.c, 2147483647i), false)), true), var_1.a.x).b, _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(63119u, 1u), ~vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 15u)], 15u)], var_1.c)), vec2<u32>(~1u, _wgslsmith_mult_u32(1u, u_input.d))), vec2<u32>(u_input.d, ~var_1.b)), vec3<i32>(u_input.a, -2296i, reverseBits(u_input.c) ^ ~u_input.b) | vec3<i32>(2147483647i, func_6(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(1u, 14u)], var_1.d.x)), func_1(), false).b.x, u_input.b));
}

