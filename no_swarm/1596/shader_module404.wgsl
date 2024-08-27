struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(116f, 2385f);

var<private> global1: array<f32, 2> = array<f32, 2>(-134f, -668f);

var<private> global2: bool;

var<private> global3: u32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    return _wgslsmith_mod_vec4_i32(max(vec4<i32>(u_input.d.x, _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.c, u_input.b), u_input.a.x), arg_0.a.x, -3736i), firstTrailingBit(vec4<i32>(max(u_input.a.x, 11741i), min(u_input.c, -12416i), firstTrailingBit(u_input.d.x), 2147483647i))), select(arg_0.a, vec4<i32>(u_input.a.x, 53252i, arg_0.a.x, _wgslsmith_add_i32(u_input.d.x, 1i)), vec4<bool>(all(vec2<bool>(false, true)), any(vec3<bool>(true, false, true)), true, false)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)));
}

fn func_2(arg_0: Struct_4) -> f32 {
    var var_0 = Struct_2(~(vec3<u32>(arg_0.b | arg_0.b, ~35286u, max(17943u, 90289u)) << (~(~vec3<u32>(arg_0.b, arg_0.b, arg_0.b)) % vec3<u32>(32u))), arg_0.a, Struct_1(~min(vec4<i32>(u_input.c, -49852i, 20363i, u_input.b), _wgslsmith_sub_vec4_i32(arg_0.c.a, vec4<i32>(19546i, arg_0.c.a.x, -36995i, -24975i))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(206f * 1267f), _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(35306u, 2u)], -390f)), global1[_wgslsmith_index_u32(1u, 2u)], -1788f), vec4<f32>(global1[_wgslsmith_index_u32(1u, 2u)], -579f, _wgslsmith_f_op_f32(round(1215f)), _wgslsmith_div_f32(arg_0.c.b.x, -714f))))), select(_wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, arg_0.b), ~(~vec2<u32>(arg_0.b, 2587u)), vec2<u32>(arg_0.b, ~arg_0.b)), min(~(~vec2<u32>(4294967295u, arg_0.b)), ~vec2<u32>(arg_0.b, arg_0.b) << (vec2<u32>(0u, arg_0.b) % vec2<u32>(32u))), vec2<bool>(true, -712f < _wgslsmith_f_op_f32(239f * arg_0.a.b.x))));
    var_0 = Struct_2(vec3<u32>(arg_0.b, ~0u, var_0.d.x), Struct_1(-func_3(Struct_1(vec4<i32>(6659i, var_0.b.a.x, 1i, -2147483647i), arg_0.a.b)), vec4<f32>(846f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.b.x)), global1[_wgslsmith_index_u32(~7211u, 2u)], 1233f)), arg_0.c, var_0.a.zy);
    var var_1 = abs(~_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(14614u, 0u, 56840u, var_0.d.x)), vec4<u32>(var_0.d.x, 98815u, var_0.d.x, arg_0.b)), reverseBits(vec4<u32>(arg_0.b, 0u, 1u, 1506u)) << (~vec4<u32>(1u, var_0.a.x, 112046u, arg_0.b) % vec4<u32>(32u))));
    global3 = _wgslsmith_mult_u32(arg_0.b, var_1.x);
    let var_2 = Struct_2(~(~abs(var_0.a)), var_0.c, Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(17130i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.a.x, arg_0.c.a.x, arg_0.a.a.x, 0i), var_0.c.a), -u_input.d.x, 1865i), vec4<i32>(1i, var_0.b.a.x, -26400i, -46522i)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(53906u, 2u)], global1[_wgslsmith_index_u32(var_0.a.x, 2u)], var_0.b.b.x, var_0.b.b.x), vec4<f32>(arg_0.a.b.x, 1333f, global1[_wgslsmith_index_u32(5886u, 2u)], var_0.b.b.x)))))), vec2<u32>(0u, max(~reverseBits(arg_0.b), _wgslsmith_add_u32(var_0.d.x | arg_0.b, reverseBits(var_0.d.x)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-394f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + -357f) * _wgslsmith_f_op_f32(-global0.x)), var_2.c.a.x < arg_0.c.a.x)) - 1229f) - -1520f);
}

fn func_4(arg_0: vec2<f32>, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_4) -> vec4<i32> {
    global3 = ~arg_3.b;
    var var_0 = arg_3;
    let var_1 = _wgslsmith_mod_vec2_u32(countOneBits(countOneBits(firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.b, var_0.b), vec2<u32>(var_0.b, 1u))))), vec2<u32>(var_0.b, arg_3.b));
    let var_2 = ~(~vec3<u32>(1u, firstLeadingBit(4294967295u << (var_0.b % 32u)), max(~arg_3.b, select(arg_3.b, 0u, false))));
    let var_3 = Struct_4(Struct_1(~(-var_0.a.a), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, arg_0.x, 1092f, arg_0.x), var_0.a.b)) * var_0.a.b), _wgslsmith_f_op_vec4_f32(min(var_0.a.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-3186f, arg_1, 1116f, -870f)))), vec4<bool>(true, true, true, true)))), 60314u, var_0.c);
    return _wgslsmith_clamp_vec4_i32(~vec4<i32>(_wgslsmith_mult_i32(-22059i, i32(-1i) * -1i), -2147483647i, 1i, arg_2.x), _wgslsmith_sub_vec4_i32(arg_3.a.a, var_0.a.a), func_3(Struct_1(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(var_3.c.a, vec4<i32>(arg_2.x, var_0.a.a.x, arg_2.x, 1i)), var_0.c.a & arg_3.c.a), var_3.a.b)));
}

fn func_1(arg_0: vec4<bool>, arg_1: u32, arg_2: bool) -> Struct_4 {
    var var_0 = ~func_4(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1, 2u)]) * global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_1, 2u)] + -540f) + _wgslsmith_f_op_f32(func_2(Struct_4(Struct_1(vec4<i32>(u_input.d.x, 2147483647i, u_input.a.x, 0i), vec4<f32>(global0.x, -1370f, global0.x, global1[_wgslsmith_index_u32(arg_1, 2u)])), arg_1, Struct_1(vec4<i32>(u_input.d.x, 9999i, -40127i, u_input.a.x), vec4<f32>(-358f, global0.x, -391f, 1911f))))))), global0.x, _wgslsmith_add_vec2_i32(u_input.a.xy, u_input.a.yz), Struct_4(Struct_1(vec4<i32>(u_input.d.x, -2147483647i, u_input.a.x, 2147483647i), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, global0.x, global1[_wgslsmith_index_u32(1u, 2u)], 1000f)))), abs(~83547u), Struct_1(~u_input.a, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(740f, 577f, global0.x, -259f))))));
    var var_1 = vec4<i32>(var_0.x, 62201i, _wgslsmith_dot_vec2_i32(-(~var_0.xw), ~u_input.d.zy) | u_input.d.x, func_3(Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, u_input.d.x, var_0.x, 1i), vec4<i32>(-27408i, u_input.d.x, var_0.x, var_0.x)) << (vec4<u32>(3730u, arg_1, arg_1, arg_1) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(561f, global1[_wgslsmith_index_u32(4294967295u, 2u)], global1[_wgslsmith_index_u32(arg_1, 2u)], global0.x))))).x);
    var var_2 = arg_1;
    global3 = ~firstLeadingBit(arg_1);
    let var_3 = ~u_input.a.x;
    return Struct_4(Struct_1(vec4<i32>(-(~2147483647i), u_input.d.x, abs(~var_1.x), countOneBits(~u_input.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 705f, global0.x, 229f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(arg_1, 2u)], global0.x, 379f, global0.x)), var_3 != var_0.x)))), _wgslsmith_dot_vec2_u32(abs(select(vec2<u32>(1u, 23931u), abs(vec2<u32>(arg_1, arg_1)), vec2<bool>(arg_0.x, true))), vec2<u32>(arg_1, max(_wgslsmith_add_u32(arg_1, arg_1), ~41849u))), Struct_1(firstLeadingBit(firstTrailingBit(~vec4<i32>(-2147483647i, var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1082f, global0.x, global1[_wgslsmith_index_u32(arg_1, 2u)], -578f)))))));
}

fn func_5(arg_0: Struct_4) -> Struct_3 {
    global3 = 1u;
    let var_0 = func_1(!vec4<bool>(true, all(vec4<bool>(true, true, true, true)), true || any(vec4<bool>(false, false, false, true)), (arg_0.c.a.x >= 0i) & any(vec3<bool>(false, false, true))), 1u, -1124f <= global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~arg_0.b ^ 0u, arg_0.b), 2u)]).c.a.xw;
    let var_1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(max(arg_0.c.b.x, 790f)), global1[_wgslsmith_index_u32(4294967295u, 2u)]), 0i < -func_4(vec2<f32>(arg_0.a.b.x, -421f), global0.x, vec2<i32>(18911i, 20948i) ^ vec2<i32>(-2147483647i, u_input.c), arg_0).x, ~(~(~vec2<u32>(arg_0.b, 47225u))), _wgslsmith_div_vec3_u32(abs(~(~vec3<u32>(arg_0.b, arg_0.b, arg_0.b))), firstLeadingBit(min(vec3<u32>(arg_0.b, arg_0.b, 14828u), vec3<u32>(1u, 1u, 1u)) << (vec3<u32>(arg_0.b, arg_0.b, 0u) % vec3<u32>(32u)))), select(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, ~arg_0.b != ~4294967295u, _wgslsmith_add_i32(var_0.x, u_input.c) < (15395i << (arg_0.b % 32u)), true), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), all(vec2<bool>(true, true))), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))));
    var var_2 = global0.x;
    var var_3 = Struct_2(~var_1.d, arg_0.c, arg_0.c, firstTrailingBit(~(~vec2<u32>(arg_0.b, arg_0.b))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_sub_i32(0i, _wgslsmith_div_i32(~(~u_input.b), -(u_input.d.x | 11042i)));
    let var_1 = func_5(func_1(vec4<bool>(false, false, true, any(vec2<bool>(false, true))), ~(~(~1u)), false & (true & any(vec3<bool>(false, true, true)))));
    var var_2 = func_5(func_1(select(select(select(vec4<bool>(var_1.e.x, false, true, false), var_1.e, vec4<bool>(false, var_1.b, false, true)), select(var_1.e, vec4<bool>(var_1.b, false, true, var_1.e.x), false), var_1.b), !vec4<bool>(false, var_1.e.x, true, var_1.b), var_1.e), var_1.d.x, !var_1.e.x)).e.xyx;
    global3 = ~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, var_1.d.x, 80455u, var_1.c.x)), min(vec4<u32>(var_1.d.x, 1u, 0u, 0u), vec4<u32>(var_1.c.x, var_1.c.x, 33969u, 0u))) << (_wgslsmith_sub_u32(var_1.d.x, var_1.c.x) % 32u);
    let var_3 = Struct_4(func_1(vec4<bool>(any(select(var_1.e.wxy, vec3<bool>(var_2.x, var_1.e.x, var_1.b), false)), any(!var_1.e.wyz), var_2.x, true), 4294967295u, any(var_1.e)).c, _wgslsmith_mult_u32(var_1.d.x, _wgslsmith_dot_vec2_u32(var_1.c, vec2<u32>(~var_1.d.x, var_1.c.x))), func_1(select(vec4<bool>(false, true, true, var_2.x), !(!var_1.e), var_1.b), ~(~(~29412u)), true).c);
    global2 = false;
    let var_4 = var_3;
    let var_5 = var_1.c;
    var_2 = !var_1.e.xyy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(var_4.a.b.zw)), _wgslsmith_div_u32(var_4.b, var_3.b), 1u);
}

