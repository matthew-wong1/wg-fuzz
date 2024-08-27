struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec2<i32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

var<private> global1: array<Struct_1, 29>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    var var_0 = Struct_1(!(!select(!arg_0.a, vec2<bool>(arg_0.a.x, false), vec2<bool>(arg_0.a.x, arg_0.a.x))), _wgslsmith_mod_i32(_wgslsmith_mult_i32(arg_0.c.x, 0i), -22292i), vec2<i32>(u_input.a, arg_0.c.x) | reverseBits(vec2<i32>(-arg_0.b, max(46077i, -5041i))), _wgslsmith_f_op_vec2_f32(arg_0.d - _wgslsmith_f_op_vec2_f32(arg_0.d - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d.x, 257f) * vec2<f32>(arg_0.d.x, -914f))))));
    var var_1 = arg_0;
    var_1 = global1[_wgslsmith_index_u32(~(global0[_wgslsmith_index_u32(u_input.b.x, 16u)] >> (18417u % 32u)), 29u)];
    var_0 = global1[_wgslsmith_index_u32(4294967295u, 29u)];
    var var_2 = ~u_input.b;
    return -var_0.c;
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    global0 = array<u32, 16>();
    var var_0 = Struct_1(vec2<bool>(true, true), -19589i, -func_3(global1[_wgslsmith_index_u32(abs(4294967295u), 29u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_0.yy)) * vec2<f32>(-1439f, _wgslsmith_f_op_f32(abs(1528f)))));
    let var_1 = Struct_1(vec2<bool>(!var_0.a.x, var_0.a.x & (_wgslsmith_f_op_f32(round(var_0.d.x)) > _wgslsmith_div_f32(arg_0.x, 829f))), -var_0.c.x, vec2<i32>(1i, _wgslsmith_add_i32(firstLeadingBit(0i), var_0.c.x)) ^ vec2<i32>(~(u_input.a << (4294967295u % 32u)), -_wgslsmith_div_i32(-27651i, -20169i)), _wgslsmith_f_op_vec2_f32(trunc(var_0.d)));
    var_0 = var_1;
    global1 = array<Struct_1, 29>();
    return Struct_1(vec2<bool>(!any(!vec4<bool>(false, var_1.a.x, false, var_1.a.x)), false), _wgslsmith_sub_i32(~_wgslsmith_mult_i32(i32(-1i) * -1i, u_input.a & u_input.a), var_0.c.x), func_3(var_1), _wgslsmith_f_op_vec2_f32(select(var_1.d, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(191f, arg_0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_0.d, arg_0.yy)) + vec2<f32>(-1000f, var_1.d.x)), vec2<bool>(var_1.a.x, true))), var_0.a)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = -419f;
    let var_1 = Struct_1(!vec2<bool>(1i < firstTrailingBit(arg_0.b), true), u_input.a, vec2<i32>(arg_3, _wgslsmith_add_i32(0i, u_input.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_2.d, vec2<f32>(418f, arg_2.d.x)) - vec2<f32>(arg_0.d.x, 1544f)));
    var var_2 = arg_1;
    var var_3 = _wgslsmith_dot_vec2_i32(-firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(13491i, arg_1.b), arg_0.c, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, arg_1.b), vec2<i32>(arg_0.c.x, arg_1.c.x)))), ~arg_1.c);
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_1.d.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x)))))), var_1.d.x);
    return arg_1;
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> bool {
    var var_0 = func_4(Struct_1(select(arg_2.a, arg_2.a, true), -u_input.a, ~vec2<i32>(arg_1, min(-38575i, 59263i)), arg_2.d), func_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-113f, arg_2.d.x, -719f) * vec3<f32>(-1070f, arg_2.d.x, arg_2.d.x)), vec3<f32>(-1177f, arg_0, arg_2.d.x)))))), arg_2, arg_1);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_0)))), -1007f, arg_0, var_0.d.x);
    var_0 = global1[_wgslsmith_index_u32(2649u, 29u)];
    var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.x, 763f, var_1.x, arg_0)))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1334f, 319f)), _wgslsmith_f_op_f32(-3019f - _wgslsmith_f_op_f32(-arg_0)), 969f, 1000f)))));
    var var_2 = -(~countOneBits(vec3<i32>(0i, arg_2.c.x, u_input.a)) << (vec3<u32>(17275u, 1u, 1u) % vec3<u32>(32u))) ^ vec3<i32>(2147483647i, 30761i, abs(firstLeadingBit(arg_2.b)));
    return any(vec2<bool>(any(select(!vec4<bool>(false, true, var_0.a.x, var_0.a.x), select(vec4<bool>(true, false, true, false), vec4<bool>(var_0.a.x, arg_2.a.x, false, arg_2.a.x), vec4<bool>(var_0.a.x, arg_2.a.x, arg_2.a.x, true)), vec4<bool>(true, true, true, true))), true));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    return func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1358f), arg_1.d.x, -114f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.d.x, arg_1.d.x, arg_2.d.x), vec3<f32>(arg_2.d.x, 635f, -611f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(!vec4<bool>(true, !all(vec3<bool>(false, false, false)), _wgslsmith_f_op_f32(floor(-337f)) > -715f, func_1(322f, u_input.a, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(44989u, 16u)], 29u)]) && false), Struct_1(func_4(Struct_1(vec2<bool>(true, false), reverseBits(-16837i), reverseBits(vec2<i32>(u_input.a, u_input.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1266f, -305f))), global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(1u, 29u)], ~(~u_input.a)).a, u_input.a & (u_input.a & u_input.a), -(vec2<i32>(-1i, u_input.a) & vec2<i32>(u_input.a, 2147483647i)) >> (countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 9526u), vec2<u32>(u_input.d.x, 33490u), vec2<u32>(0u, global0[_wgslsmith_index_u32(u_input.b.x, 16u)]))) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(624f, -1646f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 462f)), func_1(-126f, u_input.a, Struct_1(vec2<bool>(true, false), 2147483647i, vec2<i32>(u_input.a, -80512i), vec2<f32>(-1495f, 289f))))))), Struct_1(vec2<bool>(true, true), i32(-1i) * -1i, vec2<i32>(2147483647i, u_input.a), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-666f, -545f)))));
    let var_1 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.d.x, var_0.d.x, var_0.d.x), vec3<f32>(var_0.d.x, 1471f, var_0.d.x)) + vec3<f32>(var_0.d.x, var_0.d.x, var_0.d.x)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, -527f, var_0.d.x))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.d.x), var_1.d.x)) * _wgslsmith_f_op_f32(-var_1.d.x)), var_1.d.x, -1876f, var_1.d.x));
    global1 = array<Struct_1, 29>();
    global1 = array<Struct_1, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_u32(1u, _wgslsmith_mult_u32(u_input.c.x, 35296u)) >> (~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(0u, 4294967295u, 4294967295u)), u_input.b.x & u_input.c.x, 8371u) % 32u), vec2<i32>(-2147483647i, var_0.c.x), _wgslsmith_f_op_f32(667f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.x + -691f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_0.d)) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1639f) + -1978f), func_5(select(vec4<bool>(false, false, var_1.a.x, var_0.a.x), vec4<bool>(false, false, false, var_0.a.x), var_1.a.x), Struct_1(vec2<bool>(var_1.a.x, var_0.a.x), -35604i, vec2<i32>(u_input.a, 28195i), var_1.d), var_1).d.x)), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(0i, var_0.b, 0i)), vec3<i32>(-7060i, var_1.b, -3776i) & vec3<i32>(-1i, var_0.c.x, var_0.c.x)), _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-9493i, var_1.c.x, var_0.b), vec3<i32>(-82448i, -2147483647i, -50334i)), vec3<i32>(var_0.b, var_1.c.x, 7245i), vec3<i32>(var_0.b, var_1.b, var_0.b) & vec3<i32>(u_input.a, var_0.c.x, 1539i))) | 2147483647i);
}

