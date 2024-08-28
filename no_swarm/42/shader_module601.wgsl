struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<bool>,
    d: vec2<f32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 135447u, 4294967295u, 1u);

var<private> global1: array<vec4<u32>, 5> = array<vec4<u32>, 5>(vec4<u32>(1u, 1u, 21646u, 45903u), vec4<u32>(25124u, 6058u, 4294967295u, 1u), vec4<u32>(35487u, 0u, 1u, 1u), vec4<u32>(81077u, 1381u, 1u, 69653u), vec4<u32>(1u, 4294967295u, 4294967295u, 1u));

var<private> global2: Struct_2 = Struct_2(0i, Struct_1(-1810f, 64656i, vec4<i32>(i32(-2147483648), 21786i, i32(-2147483648), -15097i), -262f, -203f), vec2<bool>(false, false), vec2<f32>(-613f, -131f), vec2<f32>(-640f, 862f));

var<private> global3: array<u32, 16> = array<u32, 16>(6282u, 43856u, 1u, 4294967295u, 105768u, 27573u, 76310u, 4294967295u, 1u, 53986u, 18015u, 1u, 0u, 52403u, 0u, 77554u);

var<private> global4: vec2<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: f32) -> vec2<i32> {
    let var_0 = Struct_2(u_input.e.x, Struct_1(-1000f, u_input.d.x, _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, -1024i, -39838i, u_input.e.x) << (vec4<u32>(u_input.b.x, global3[_wgslsmith_index_u32(8260u, 16u)], global0.x, 22074u) % vec4<u32>(32u)), ~vec4<i32>(-1i, global2.a, global2.b.b, u_input.e.x), -_wgslsmith_clamp_vec4_i32(vec4<i32>(61965i, -11746i, 8425i, u_input.e.x), vec4<i32>(u_input.e.x, 2147483647i, 84632i, -46824i), vec4<i32>(u_input.e.x, -2147483647i, u_input.d.x, u_input.e.x))), 833f, -2379f), vec2<bool>(global2.c.x, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(288f, global2.b.e)), _wgslsmith_f_op_f32(-global2.e.x))) - global2.e), global2.e);
    return vec2<i32>(-1i) * -(-max(vec2<i32>(-2147483647i, var_0.a), vec2<i32>(1i, 2147483647i)) >> (_wgslsmith_sub_vec2_u32(~global0.wy, ~global0.ww) % vec2<u32>(32u)));
}

fn func_3(arg_0: i32) -> vec4<f32> {
    global2 = Struct_2(global2.b.b << (4294967295u % 32u), global2.b, global2.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global2.d, global2.e))) * _wgslsmith_f_op_vec2_f32(-global2.e))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global4.x, global2.b.e), vec2<f32>(global2.e.x, global4.x))) + global2.e))));
    let var_0 = ~(~global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(~18284u, 16u)], firstLeadingBit(~global3[_wgslsmith_index_u32(global0.x, 16u)])), 16u)]);
    var var_1 = Struct_2(countOneBits(~arg_0), Struct_1(-720f, min(arg_0, countOneBits(-11669i) & -global2.b.c.x), countOneBits(~vec4<i32>(arg_0, 0i, global2.a, -2147483647i) << (global1[_wgslsmith_index_u32(global0.x, 5u)] % vec4<u32>(32u))), 554f, -761f), !vec2<bool>(false, global2.c.x), global2.e, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.d + global2.d) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1454f, 829f), global2.e))) * vec2<f32>(_wgslsmith_f_op_f32(floor(global2.d.x)), _wgslsmith_f_op_f32(trunc(341f))))));
    var var_2 = select(!vec4<bool>(any(vec4<bool>(true, var_1.c.x, var_1.c.x, false)), true, select(!global2.c.x, true, true), all(var_1.c)), !(!select(!vec4<bool>(false, false, global2.c.x, true), select(vec4<bool>(false, false, var_1.c.x, global2.c.x), vec4<bool>(global2.c.x, true, global2.c.x, true), vec4<bool>(true, true, var_1.c.x, var_1.c.x)), global2.c.x)), var_1.c.x);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(global2.d.x)), -888f)), _wgslsmith_f_op_f32(global2.d.x + -1116f))) - _wgslsmith_f_op_f32(round(1432f))), global2.a, vec4<i32>(u_input.d.x, u_input.e.x, countOneBits(_wgslsmith_mult_i32(~6126i, 29006i)), i32(-1i) * -firstLeadingBit(-17509i)), -718f, _wgslsmith_f_op_f32(min(-1124f, var_1.d.x)));
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.e.x)) * _wgslsmith_f_op_f32(-global4.x)), _wgslsmith_f_op_f32(global2.e.x * var_1.e.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1055f)))), 1170f)), var_1.e.x);
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: bool, arg_3: vec4<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_dot_vec4_u32(~global1[_wgslsmith_index_u32(global0.x, 5u)], firstLeadingBit(reverseBits(abs(vec4<u32>(1u, u_input.c, global0.x, 132918u)))));
    let var_1 = !(!(!(-1i >= _wgslsmith_div_i32(global2.a, u_input.e.x))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -687f)))), ~(_wgslsmith_div_i32(-1i, _wgslsmith_dot_vec4_i32(global2.b.c, u_input.d)) >> (~(~1u) % 32u)), -_wgslsmith_mod_vec4_i32(vec4<i32>(global2.a, reverseBits(-51685i), u_input.d.x, -43858i), -global2.b.c), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.b.d, -133f)), _wgslsmith_f_op_f32(f32(-1f) * -1555f));
    var_2 = global2.b;
    var var_3 = ~u_input.b;
    return Struct_2(arg_0.x, global2.b, vec2<bool>(arg_1, !arg_2), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(476f, arg_3.x)), arg_3.wz)))), _wgslsmith_f_op_vec2_f32(step(global2.e, global2.e)));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_2) -> Struct_2 {
    global0 = _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, _wgslsmith_div_u32(4294967295u, 1u), global0.x, ~17409u), _wgslsmith_div_vec4_u32(firstLeadingBit(global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(1u, 16u)], global0.x), 5u)]), max(vec4<u32>(arg_0.x, 1u, global3[_wgslsmith_index_u32(countOneBits(arg_0.x), 16u)], global3[_wgslsmith_index_u32(global0.x, 16u)]), ~vec4<u32>(0u, 4294967295u, 4294967295u, arg_0.x))));
    let var_0 = select(_wgslsmith_mult_i32(-41865i, countOneBits(-_wgslsmith_mult_i32(global2.b.c.x, arg_1.b.b))), u_input.d.x | _wgslsmith_dot_vec2_i32(~(~u_input.e.xy), vec2<i32>(global2.a >> (17572u % 32u), arg_1.a | -1i)), (((0u | global0.x) > _wgslsmith_div_u32(0u, 29505u)) | !select(false, arg_1.c.x, global2.c.x)) == (_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.e.x, 1519f)) >= _wgslsmith_f_op_f32(abs(-1773f))));
    let var_1 = func_4(vec2<i32>(2147483647i << ((_wgslsmith_clamp_u32(u_input.c, global3[_wgslsmith_index_u32(global0.x, 16u)], global3[_wgslsmith_index_u32(74458u, 16u)]) ^ (u_input.b.x >> (4294967295u % 32u))) % 32u), 45304i), !arg_1.c.x && !global2.c.x, false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_vec4_f32(func_3(u_input.d.x)).x, _wgslsmith_f_op_f32(exp2(global4.x)), _wgslsmith_f_op_f32(global4.x + global4.x)) * vec4<f32>(_wgslsmith_f_op_f32(abs(global4.x)), _wgslsmith_div_f32(1334f, -933f), _wgslsmith_f_op_f32(select(arg_1.b.e, global4.x, global2.c.x)), -995f)) - vec4<f32>(func_4(vec2<i32>(-1i, u_input.d.x), all(vec2<bool>(global2.c.x, global2.c.x)), true, vec4<f32>(global2.b.a, -1425f, global4.x, 1000f)).d.x, _wgslsmith_f_op_f32(step(2206f, _wgslsmith_f_op_f32(sign(-869f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -770f) - global4.x), func_4(~arg_1.b.c.zx, true, global2.c.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1081f, -646f, global4.x, -593f))).d.x))).c;
    var var_2 = global2.b;
    var_2 = Struct_1(arg_1.b.a, abs(func_2(all(!vec4<bool>(var_1.x, true, true, true)), _wgslsmith_f_op_vec4_f32(func_3(var_2.b & arg_1.b.c.x)).x, _wgslsmith_f_op_f32(-1440f + _wgslsmith_f_op_f32(arg_1.d.x + -150f))).x), (vec4<i32>(-33816i, ~2147483647i, u_input.e.x | 1i, var_2.b) << (~vec4<u32>(u_input.b.x, 9322u, global3[_wgslsmith_index_u32(4294967295u, 16u)], arg_0.x) % vec4<u32>(32u))) & _wgslsmith_sub_vec4_i32(-(~vec4<i32>(global2.a, global2.a, 5250i, var_2.c.x)), countOneBits(~u_input.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.b.a))), _wgslsmith_f_op_f32(global2.e.x + arg_1.b.d));
    return arg_1;
}

fn func_1() -> u32 {
    var var_0 = -8123i;
    var var_1 = func_5(_wgslsmith_div_vec3_u32(abs(vec3<u32>(~4294967295u, ~53035u, max(u_input.a, 1u))), ~global0.wxw), func_4(~_wgslsmith_mult_vec2_i32(func_2(global2.c.x, global2.b.d, global2.d.x), vec2<i32>(6849i, u_input.d.x)), global2.c.x, global2.d.x >= _wgslsmith_div_f32(global2.b.e, -303f), _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_div_i32(global2.a, global2.a) ^ -25771i))));
    global4 = _wgslsmith_f_op_vec2_f32(sign(var_1.d));
    var var_2 = func_5(global0.xxw, func_4(var_1.b.c.zz, !(!func_5(vec3<u32>(global0.x, global3[_wgslsmith_index_u32(u_input.c, 16u)], global3[_wgslsmith_index_u32(1u, 16u)]), Struct_2(-2109i, global2.b, vec2<bool>(global2.c.x, true), vec2<f32>(global2.b.e, -328f), var_1.e)).c.x), any(select(global2.c, global2.c, any(vec3<bool>(global2.c.x, global2.c.x, false)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3(0i >> (1u % 32u)))))));
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(542f, var_1.e.x, var_2.e.x)) - vec3<f32>(-603f, -1215f, global4.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-917f + -1063f), _wgslsmith_f_op_f32(594f + global4.x), _wgslsmith_div_f32(global2.d.x, var_2.e.x))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.a, var_2.b.e, global2.d.x) * vec3<f32>(2054f, global2.b.d, var_2.e.x))), vec3<f32>(-613f, _wgslsmith_f_op_f32(-global2.e.x), var_2.d.x)))));
    return _wgslsmith_sub_u32(global0.x, abs(max(_wgslsmith_sub_u32(global0.x, u_input.b.x), 5016u) | 0u));
}

fn func_6(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec3<f32>) -> Struct_2 {
    let var_0 = select(vec4<bool>(true, true, arg_1.x, any(vec4<bool>(global2.c.x && arg_1.x, arg_2.c.x, false, true))), select(vec4<bool>(all(arg_1) || arg_1.x, any(!arg_1), func_4(arg_2.b.c.yy, true, arg_1.x, vec4<f32>(arg_2.e.x, arg_3.x, -1000f, -2115f)).c.x || !arg_2.c.x, global2.c.x), select(!(!vec4<bool>(true, true, false, arg_1.x)), !(!vec4<bool>(false, true, arg_2.c.x, true)), !vec4<bool>(false, global2.c.x, global2.c.x, false)), !(!select(vec4<bool>(global2.c.x, true, false, true), vec4<bool>(true, arg_1.x, arg_2.c.x, arg_1.x), global2.c.x))), select(!select(select(vec4<bool>(false, arg_2.c.x, arg_2.c.x, global2.c.x), vec4<bool>(arg_1.x, global2.c.x, arg_2.c.x, arg_1.x), vec4<bool>(false, global2.c.x, false, arg_2.c.x)), !vec4<bool>(true, false, global2.c.x, true), false), !(!(!vec4<bool>(false, global2.c.x, false, false))), !vec4<bool>(!arg_1.x, global2.c.x, arg_1.x && true, true)));
    let var_1 = func_4(vec2<i32>(_wgslsmith_div_i32(1i, arg_2.b.b) >> (1u % 32u), u_input.d.x) | (vec2<i32>(-1i) * -u_input.e.zx), any(!vec3<bool>(arg_2.c.x, true, true)), any(select(var_0, vec4<bool>(any(vec4<bool>(var_0.x, global2.c.x, arg_2.c.x, arg_1.x)), any(var_0.zwz), var_0.x, all(vec4<bool>(var_0.x, var_0.x, var_0.x, arg_1.x))), vec4<bool>(!arg_2.c.x, false, all(var_0.yxx), false))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(994f, global4.x, arg_3.x, _wgslsmith_f_op_f32(abs(global4.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1329f + 1892f)), _wgslsmith_f_op_f32(arg_2.e.x - _wgslsmith_f_op_f32(trunc(global4.x))), 617f, _wgslsmith_f_op_f32(3080f + _wgslsmith_f_op_f32(min(global4.x, global4.x)))), vec4<bool>(!global2.c.x, arg_1.x, !var_0.x && (arg_0 >= arg_0), global3[_wgslsmith_index_u32(63871u, 16u)] <= ~u_input.a))));
    global4 = arg_2.d;
    let var_2 = func_5(global0.yzw, var_1);
    var var_3 = func_4(var_2.b.c.xy, var_2.c.x || select(true, var_0.x, ~arg_0 > (4294967295u << (u_input.a % 32u))), (true | (38970u >= arg_0)) == true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, -1000f, 1658f, arg_2.d.x) - vec4<f32>(1280f, arg_2.e.x, var_2.b.e, var_2.d.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(484f, -396f, 1829f, global4.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, 1012f, var_2.b.e, global4.x) - vec4<f32>(1326f, global4.x, arg_3.x, var_1.e.x))))));
    return Struct_2(-(~(-global2.b.b)), Struct_1(arg_2.d.x, var_1.a, ~var_2.b.c, _wgslsmith_div_f32(arg_2.d.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.e.x - arg_2.d.x), _wgslsmith_f_op_f32(var_2.b.a + arg_3.x), true))), 799f), vec2<bool>(select(false, var_2.e.x < _wgslsmith_f_op_f32(-global2.e.x), func_4(vec2<i32>(-53323i, 2147483647i) ^ u_input.e.xw, all(vec4<bool>(true, arg_1.x, true, arg_2.c.x)), u_input.b.x <= u_input.b.x, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(565f, 370f, var_1.b.e, var_1.e.x), vec4<f32>(-826f, 122f, 1831f, global4.x)))).c.x), !(!var_0.x)), global2.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.e)), var_3.d) * arg_3.zx));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec2_u32(u_input.b, vec2<u32>(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0.x, 1u) >> ((global0.x >> (0u % 32u)) % 32u), 16u)], 1785u));
    global3 = array<u32, 16>();
    var var_1 = func_6(countOneBits(func_1()), !vec3<bool>(true, true, global2.c.x), Struct_2(u_input.e.x, global2.b, vec2<bool>(!global2.c.x, ~0u < _wgslsmith_sub_u32(1u, global0.x)), _wgslsmith_f_op_vec2_f32(-func_4(global2.b.c.zy, false, any(vec4<bool>(global2.c.x, false, global2.c.x, global2.c.x)), _wgslsmith_div_vec4_f32(vec4<f32>(global4.x, global2.d.x, 1032f, -543f), vec4<f32>(353f, -304f, global4.x, global4.x))).e), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.d - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(2262f, global2.b.e)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-185f + 487f) + global2.b.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + global2.b.a) * _wgslsmith_f_op_vec4_f32(func_3(-1i)).x), _wgslsmith_div_f32(_wgslsmith_div_f32(-2103f, 1000f), func_5(vec3<u32>(1u, 0u, 21583u), Struct_2(1i, Struct_1(global2.b.d, u_input.e.x, vec4<i32>(global2.a, 0i, global2.a, global2.a), -804f, 335f), global2.c, global2.d, vec2<f32>(global4.x, -1000f))).b.a))));
    global4 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global2.d + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.d, vec2<f32>(global2.e.x, 524f)) + var_1.d))));
    let var_2 = global2.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, var_1.b.c & ~select(-var_1.b.c, -vec4<i32>(1i, -2147483647i, -1i, var_1.b.b), !vec4<bool>(var_1.c.x, true, true, false)), _wgslsmith_add_vec2_i32(vec2<i32>(~(-11927i), global2.a), -((global2.b.c.wz << (u_input.b % vec2<u32>(32u))) ^ func_2(false, 1026f, var_1.d.x))), _wgslsmith_sub_vec2_u32(~_wgslsmith_add_vec2_u32(u_input.b, max(vec2<u32>(21031u, 43675u), u_input.b)), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, var_0.x), u_input.b), vec2<u32>(91484u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.x, 16u)], 16u)])) | ~_wgslsmith_sub_vec2_u32(global0.yw, global0.xw)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(789f - global4.x))))));
}

