struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29>;

var<private> global1: array<i32, 30>;

var<private> global2: array<Struct_3, 3>;

var<private> global3: array<u32, 28> = array<u32, 28>(55666u, 0u, 4294967295u, 23919u, 0u, 57371u, 1u, 33449u, 68714u, 79578u, 4294967295u, 4294967295u, 0u, 15188u, 0u, 27032u, 43376u, 0u, 1u, 24525u, 4294967295u, 19727u, 512u, 1u, 4294967295u, 14155u, 62987u, 4294967295u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    global0 = array<bool, 29>();
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(700f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(288f, -641f)) - _wgslsmith_f_op_f32(abs(275f))), _wgslsmith_f_op_f32(f32(-1f) * -599f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1283f))))))));
    global2 = array<Struct_3, 3>();
    global3 = array<u32, 28>();
    var var_1 = ~vec4<u32>(~(~(~u_input.a)), ~abs(~31913u), 84406u, _wgslsmith_mult_u32(global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.a, 0u), 28u)], min(~global3[_wgslsmith_index_u32(u_input.a, 28u)], firstLeadingBit(70661u))));
    return 0u;
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    var var_0 = select(vec3<bool>(true, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 28u)], 29u)] || true, false), vec3<bool>(global0[_wgslsmith_index_u32(~(~(~u_input.a)), 29u)], global0[_wgslsmith_index_u32(~func_3(~vec2<u32>(global3[_wgslsmith_index_u32(u_input.a, 28u)], 0u)), 29u)], true), true);
    var var_1 = ~(vec2<u32>(global3[_wgslsmith_index_u32(~0u, 28u)], 0u) | ~(~vec2<u32>(44440u, 4294967295u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1703f, _wgslsmith_f_op_f32(min(-125f, -143f))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1695f, 1f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1787f, -191f), vec2<f32>(-1000f, -844f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-380f, 1034f) + vec2<f32>(-1000f, 316f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-928f, -2097f), vec2<f32>(-1585f, 942f)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1772f, 1880f), vec2<f32>(-1501f, 1921f), false)), vec2<f32>(1671f, 313f), true)))))));
    let var_3 = Struct_1(!global0[_wgslsmith_index_u32(abs(4294967295u), 29u)], min(~vec4<i32>(20270i, -1i, firstTrailingBit(-1i), reverseBits(arg_0.x)), vec4<i32>(global1[_wgslsmith_index_u32(~4294967295u, 30u)], -947i, 0i, _wgslsmith_mod_i32(16843i, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_1.x, 28u)], 30u)])) | -firstTrailingBit(vec4<i32>(arg_0.x, arg_0.x, -7887i, 73063i))), arg_0.zz);
    let var_4 = vec3<bool>(global0[_wgslsmith_index_u32(~(~global3[_wgslsmith_index_u32(~121570u, 28u)]), 29u)], select(var_0.x && any(select(vec4<bool>(false, var_3.a, global0[_wgslsmith_index_u32(var_1.x, 29u)], true), vec4<bool>(var_0.x, var_3.a, global0[_wgslsmith_index_u32(1u, 29u)], true), vec4<bool>(global0[_wgslsmith_index_u32(64349u, 29u)], var_3.a, var_3.a, var_3.a))), false, true), var_0.x);
    return Struct_2(!vec4<bool>(var_3.a, true, select(global0[_wgslsmith_index_u32(1u, 29u)], arg_0.x == -30884i, false), all(vec3<bool>(true, false, var_0.x))), abs(~((global3[_wgslsmith_index_u32(u_input.a, 28u)] >> (u_input.a % 32u)) | _wgslsmith_div_u32(u_input.a, 5877u))), !vec4<bool>(var_3.a, var_2.x != _wgslsmith_f_op_f32(f32(-1f) * -157f), var_4.x, true));
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    var var_0 = -932f;
    var var_1 = func_2(_wgslsmith_mod_vec3_i32(firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(-30574i, -34380i, -11709i), vec3<i32>(global1[_wgslsmith_index_u32(0u, 30u)], 38027i, global1[_wgslsmith_index_u32(1u, 30u)]))) & vec3<i32>(abs(-9083i), global1[_wgslsmith_index_u32(arg_1, 30u)] & global1[_wgslsmith_index_u32(1u, 30u)], firstTrailingBit(global1[_wgslsmith_index_u32(u_input.a, 30u)])), vec3<i32>(i32(-1i) * -2147483647i, ~_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(arg_0.b, 30u)]), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_1, ~arg_0.b), 30u)]))).a.zy;
    let var_2 = ~vec3<i32>(-21014i, min(_wgslsmith_dot_vec4_i32(-vec4<i32>(global1[_wgslsmith_index_u32(arg_1, 30u)], 2147483647i, global1[_wgslsmith_index_u32(arg_0.b, 30u)], 64380i), -vec4<i32>(-47278i, global1[_wgslsmith_index_u32(1u, 30u)], -2147483647i, global1[_wgslsmith_index_u32(u_input.a, 30u)])), ~_wgslsmith_add_i32(29360i, global1[_wgslsmith_index_u32(arg_1, 30u)])), -31669i);
    let var_3 = firstLeadingBit(_wgslsmith_dot_vec4_i32(~countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(var_2.x, 35i, var_2.x, var_2.x), vec4<i32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 28u)], 30u)], 0i, global1[_wgslsmith_index_u32(4294967295u, 30u)], -21333i))), max(-(vec4<i32>(var_2.x, 22153i, global1[_wgslsmith_index_u32(1u, 30u)], -2147483647i) << (vec4<u32>(1u, arg_1, 4294967295u, 109010u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(vec4<i32>(var_2.x, global1[_wgslsmith_index_u32(0u, 30u)], var_2.x, var_2.x) | vec4<i32>(var_2.x, 1i, -2147483647i, var_2.x), ~vec4<i32>(0i, 13064i, 1i, global1[_wgslsmith_index_u32(15360u, 30u)])))));
    let var_4 = arg_1;
    return Struct_1(true, vec4<i32>(var_3, 1i, ~var_3, -28341i), ~_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(select(vec2<i32>(var_2.x, 2147483647i), vec2<i32>(-1i, 2147483647i), var_1.x), var_2.zy), var_2.yy));
}

fn func_5(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = all(!select(vec2<bool>(true, select(false, true, false)), vec2<bool>(!arg_2.a, false), any(!vec2<bool>(arg_2.a, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(50606u, 28u)], 29u)]))));
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1, arg_1, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-868f - -1259f) - _wgslsmith_f_op_f32(floor(2151f))), _wgslsmith_f_op_f32(705f - _wgslsmith_f_op_f32(f32(-1f) * -1131f)))))));
    let var_2 = select(!all(func_2(vec3<i32>(arg_2.c.x, global1[_wgslsmith_index_u32(u_input.a, 30u)], arg_2.c.x)).c.zwx), select(!(!arg_2.a), !(-32348i != arg_2.b.x), (0u <= global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 28u)], 28u)]) || !global0[_wgslsmith_index_u32(24134u, 29u)]), all(vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 29u)] & global0[_wgslsmith_index_u32(u_input.a, 29u)]))) & func_4(func_2(arg_3.b.xwy), (firstLeadingBit(global3[_wgslsmith_index_u32(26063u, 28u)]) << ((u_input.a ^ 24318u) % 32u)) & ~(~u_input.a)).a;
    let var_3 = arg_3;
    var var_4 = !(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-988f - -1000f) + 440f))) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(650f)) - -479f))));
    return global3[_wgslsmith_index_u32(0u, 28u)];
}

fn func_6(arg_0: u32, arg_1: Struct_2, arg_2: u32, arg_3: Struct_4) -> Struct_2 {
    let var_0 = vec3<i32>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, _wgslsmith_mult_u32(~83041u, arg_2) | ~(~0u)), 30u)], global1[_wgslsmith_index_u32(0u, 30u)], _wgslsmith_dot_vec4_i32(-(reverseBits(vec4<i32>(global1[_wgslsmith_index_u32(35987u, 30u)], global1[_wgslsmith_index_u32(arg_1.b, 30u)], global1[_wgslsmith_index_u32(u_input.a, 30u)], 1i)) << ((vec4<u32>(62336u, arg_1.b, 36332u, 0u) ^ vec4<u32>(u_input.a, 1u, 4294967295u, 20371u)) % vec4<u32>(32u))), vec4<i32>(func_4(Struct_2(vec4<bool>(true, arg_1.a.x, false, false), 5896u, arg_1.c), ~1u).b.x, global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(arg_1.b, u_input.a), 30u)], firstTrailingBit(global1[_wgslsmith_index_u32(u_input.a, 30u)]) << (88681u % 32u), -1i)));
    let var_1 = arg_1;
    global1 = array<i32, 30>();
    global3 = array<u32, 28>();
    var var_2 = Struct_3(func_4(var_1, func_2(var_0).b), abs(vec3<u32>(~firstLeadingBit(1u), arg_2, abs(var_1.b | arg_1.b))), arg_1, var_1.c.x);
    return Struct_2(var_2.c.a, _wgslsmith_div_u32(max(47384u, ~1921u), ~arg_2), !arg_1.c);
}

fn func_1(arg_0: vec4<bool>) -> u32 {
    var var_0 = arg_0;
    var var_1 = func_6(func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-560f, -435f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-387f, -521f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-365f - 1000f), -538f, true)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1061f * -576f)))), func_4(func_2(vec3<i32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 28u)], 30u)], global1[_wgslsmith_index_u32(u_input.a, 30u)], global1[_wgslsmith_index_u32(14512u, 30u)])), global3[_wgslsmith_index_u32(u_input.a, 28u)] | 0u), Struct_1(true, _wgslsmith_mod_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 28u)], 30u)], -2147483647i, global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 28u)], 30u)]), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 30u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 28u)], 30u)], global1[_wgslsmith_index_u32(59394u, 30u)], global1[_wgslsmith_index_u32(29617u, 30u)])) >> (~vec4<u32>(1u, 4294967295u, u_input.a, global3[_wgslsmith_index_u32(21938u, 28u)]) % vec4<u32>(32u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 28u)], 30u)], 0i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-9851i, global1[_wgslsmith_index_u32(u_input.a, 30u)]), vec2<i32>(1i, global1[_wgslsmith_index_u32(4294967295u, 30u)]), vec2<i32>(global1[_wgslsmith_index_u32(71846u, 30u)], 5769i)), vec2<i32>(0i, -54710i) << (vec2<u32>(5120u, u_input.a) % vec2<u32>(32u))))), Struct_2(arg_0, global3[_wgslsmith_index_u32((u_input.a & 1u) | ~global3[_wgslsmith_index_u32(24951u, 28u)], 28u)], select(vec4<bool>(true, true, true, all(arg_0)), !(!arg_0), var_0.x)), ~global3[_wgslsmith_index_u32(4294967295u, 28u)], Struct_4(func_2(reverseBits(vec3<i32>(-2147483647i, -1i, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(37024u, 28u)], 30u)]) | vec3<i32>(9376i, global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 28u)], 30u)]))).c.wx));
    global1 = array<i32, 30>();
    var var_2 = Struct_4(vec2<bool>(var_0.x, !(!(!global0[_wgslsmith_index_u32(1u, 29u)]))));
    let var_3 = _wgslsmith_div_u32(u_input.a, ~global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~3923u, global3[_wgslsmith_index_u32(~var_1.b, 28u)], var_1.b), 28u)]);
    return ~0u | countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(u_input.a, global3[_wgslsmith_index_u32(0u, 28u)], 1u), 62084u), (vec2<u32>(u_input.a, 1u) & vec2<u32>(var_3, 11581u)) & select(vec2<u32>(u_input.a, 1u), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_3, 28u)], 28u)], 17704u), var_0.zz)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(~u_input.a, 28u)], func_1(vec4<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 28u)], 29u)], true, true, false)), ~0u) ^ abs(_wgslsmith_mult_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 28u)], 20752u, 95975u), vec3<u32>(18315u, global3[_wgslsmith_index_u32(4294967295u, 28u)], global3[_wgslsmith_index_u32(17387u, 28u)]))), ~vec3<u32>(33545u, 1u, ~50661u)) >> ((~_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(0u, 28u)], 34853u, 27525u), vec3<u32>(global3[_wgslsmith_index_u32(1u, 28u)], 15826u, u_input.a)), ~vec3<u32>(u_input.a, 34470u, 36108u)) & vec3<u32>(_wgslsmith_mult_u32(~1u, u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, 34755u, global3[_wgslsmith_index_u32(0u, 28u)]), min(vec4<u32>(global3[_wgslsmith_index_u32(4365u, 28u)], global3[_wgslsmith_index_u32(1u, 28u)], 47296u, 33957u), vec4<u32>(u_input.a, 16323u, 6655u, 27128u))), _wgslsmith_add_u32(global3[_wgslsmith_index_u32(countOneBits(global3[_wgslsmith_index_u32(u_input.a, 28u)]), 28u)], ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(47895u, 28u)], 28u)]))) % vec3<u32>(32u));
    global0 = array<bool, 29>();
    var var_1 = true;
    var var_2 = global2[_wgslsmith_index_u32(abs(1u), 3u)];
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -853f));
    var_1 = global0[_wgslsmith_index_u32(min(~min(firstLeadingBit(14889u), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, var_2.b.x), 28u)] << (u_input.a % 32u)), ~49533u), 29u)];
    global0 = array<bool, 29>();
    let var_4 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(0i, select(abs(vec3<u32>(0u, abs(13186u), var_0.x ^ u_input.a)), ~firstTrailingBit(_wgslsmith_clamp_vec3_u32(var_2.b, var_0, var_0)), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 29u)], !any(var_4.c), false)), _wgslsmith_mult_u32(1u, countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 14309u, 0u), vec3<u32>(global3[_wgslsmith_index_u32(49930u, 28u)], 1u, var_2.c.b)))) & _wgslsmith_sub_u32(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(var_4.b), ~25733u), 28u)], _wgslsmith_dot_vec3_u32(var_2.b >> (var_2.b % vec3<u32>(32u)), var_0 ^ var_0)));
}

