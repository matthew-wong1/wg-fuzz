struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: f32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(false, vec3<f32>(-1380f, -661f, -1000f), 1310f, vec2<f32>(-1438f, 1373f));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: f32) -> vec3<f32> {
    global0 = Struct_1(!any(!select(vec2<bool>(global0.a, true), vec2<bool>(global0.a, global1.a), global1.a)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(global1.b * _wgslsmith_f_op_vec3_f32(global1.b - _wgslsmith_div_vec3_f32(global1.b, global0.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.b.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(635f * 507f) + _wgslsmith_f_op_f32(ceil(arg_1))))), vec2<f32>(arg_1, global1.d.x));
    let var_0 = Struct_1(true, _wgslsmith_f_op_vec3_f32(-global1.b), arg_1, _wgslsmith_f_op_vec2_f32(-global0.d));
    global0 = var_0;
    var var_1 = Struct_1(global0.a, vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0.b.x)), -1455f), 501f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c, global0.c))) + _wgslsmith_f_op_f32(abs(-1267f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.d.x, -319f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.b.zz - vec2<f32>(680f, 1229f)))))));
    var var_2 = vec4<i32>(u_input.a.x, -23904i, _wgslsmith_div_i32(1i, u_input.a.x), abs(-u_input.a.x));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_1.d.x, global1.c)), _wgslsmith_f_op_f32(1585f + 3003f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1281f))), -1000f);
}

fn func_2() -> vec2<f32> {
    let var_0 = Struct_1(~u_input.b.x >= ~_wgslsmith_mult_u32(abs(1u), ~u_input.b.x), _wgslsmith_f_op_vec3_f32(func_3(reverseBits(u_input.b.x) | u_input.b.x, -481f)), -1351f, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2714f + -1621f) - global1.d.x), global0.d.x));
    global0 = Struct_1(u_input.a.x == -1i, _wgslsmith_f_op_vec3_f32(exp2(global0.b)), 441f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1501f), _wgslsmith_f_op_f32(-var_0.c))), 865f));
    global1 = var_0;
    global1 = Struct_1(all(vec3<bool>(global0.a, var_0.a, !global1.a)), var_0.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(806f, var_0.d.x))) + _wgslsmith_f_op_f32(-365f + _wgslsmith_div_f32(-525f, -612f))))), var_0.b.zz);
    global0 = var_0;
    return _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2143f)) + var_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.d.x))))), global0.c)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global0 = arg_0;
    global1 = Struct_1(global0.a, vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(1000f)), 185f)), -1659f, 425f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(761f * 1720f) + -470f)))), _wgslsmith_f_op_vec2_f32(func_2()));
    global1 = Struct_1(!(!(_wgslsmith_f_op_f32(trunc(arg_0.b.x)) != _wgslsmith_f_op_f32(round(global0.c)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-310f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(global0.c)), global1.b.x))), _wgslsmith_f_op_f32(ceil(arg_0.b.x))), _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_vec2_f32(sign(global1.d)));
    global0 = arg_0;
    var var_0 = -2147483647i ^ u_input.a.x;
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_1(((global1.a || true) & any(select(vec2<bool>(true, false), vec2<bool>(arg_0.a, global1.a), vec2<bool>(global0.a, true)))) && all(select(vec2<bool>(global0.a, global0.a), select(vec2<bool>(global1.a, global1.a), vec2<bool>(false, false), arg_0.a), select(vec2<bool>(arg_0.a, false), vec2<bool>(global1.a, false), global0.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.d.x, -1000f, -1457f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1214f, global0.b.x, global1.c)))))) + _wgslsmith_f_op_vec3_f32(func_3(u_input.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(arg_0.b.x))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.b.xy - global1.d)));
    global0 = func_1(func_1(Struct_1(!global0.a, arg_1.b, _wgslsmith_div_f32(734f, global0.d.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(187f, 1173f)))));
    var var_1 = u_input.a.x;
    var var_2 = arg_0;
    var_1 = _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(_wgslsmith_mult_i32(23397i, 1i), u_input.a.x, u_input.a.x << (0u % 32u), u_input.a.x & 2147483647i) | vec4<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(u_input.a.xy, u_input.a.xy), u_input.a.x, _wgslsmith_div_i32(-764i, -1i))), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, 47573i, u_input.a.x), reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, 42599i, -1i)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(56524u, u_input.b.x, u_input.b.x, 101005u), vec4<u32>(35963u, u_input.b.x, u_input.b.x, u_input.b.x)) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(~(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i)), max(vec4<i32>(0i, -7755i, -5685i, 1i), vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x)))));
    return var_0.c;
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = func_1(func_1(Struct_1(!(!global1.a), global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c - -2319f)), vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(min(482f, arg_1))))));
    var var_1 = vec4<bool>(true, select(!global1.a, !global0.a, global1.a && select(!var_0.a, !var_0.a, var_0.a | var_0.a)), var_0.a, var_0.a);
    global1 = Struct_1(global1.a, vec3<f32>(-1597f, -1873f, _wgslsmith_f_op_f32(select(global1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(567f * var_0.c)), false))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1655f, _wgslsmith_f_op_f32(-func_1(Struct_1(var_0.a, vec3<f32>(global0.d.x, arg_1, global0.d.x), 311f, arg_2.yy)).c)) * _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1264f))))), global1.d);
    var var_2 = Struct_1(false, arg_2.xxy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.c)) - -301f), vec2<f32>(var_0.d.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.x), 2254f))))));
    var var_3 = vec2<bool>(var_2.a, false);
    return func_1(Struct_1(false, vec3<f32>(-734f, 257f, _wgslsmith_f_op_f32(arg_2.x * -1229f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.d.x))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_0.b.xx)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(true, global0.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1399f)), _wgslsmith_div_f32(global1.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(global1.b.x))))), true)), vec2<f32>(236f, _wgslsmith_f_op_f32(min(-953f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.b.x)))))));
    global0 = func_5(17211u, _wgslsmith_f_op_f32(global1.d.x + _wgslsmith_f_op_f32(func_4(Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(-global0.b), 647f, global1.d), func_1(Struct_1(global1.a, vec3<f32>(-103f, -1579f, 1142f), global0.c, vec2<f32>(-1287f, global1.c)))))), vec4<f32>(_wgslsmith_f_op_f32(2861f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.c, global1.b.x)) * global0.b.x)), _wgslsmith_f_op_f32(min(global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(u_input.b.x, global1.b.x)).x + _wgslsmith_f_op_f32(-global0.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(697f + _wgslsmith_f_op_f32(trunc(-325f)))), _wgslsmith_f_op_f32(abs(global1.b.x))));
    global1 = Struct_1(_wgslsmith_sub_i32(-2147483647i, u_input.a.x) > 17886i, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b.x, 1409f) + global0.b.x)), -1754f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -211f))), _wgslsmith_f_op_f32(global1.b.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-901f, global0.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.c))))));
    let var_0 = Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(765f - 777f), global1.d.x, _wgslsmith_f_op_f32(select(global1.b.x, global1.c, global1.a))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.b + vec3<f32>(global0.d.x, 1040f, global0.d.x)))) * vec3<f32>(_wgslsmith_f_op_f32(-func_5(u_input.b.x, global1.b.x, vec4<f32>(1064f, global0.d.x, global1.b.x, 461f)).d.x), global1.b.x, _wgslsmith_f_op_f32(-1000f * global1.c))), _wgslsmith_f_op_f32(-484f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1337f, 530f, true))), _wgslsmith_f_op_f32(func_4(Struct_1(global0.a, vec3<f32>(1182f, global0.b.x, global0.c), 763f, global1.b.xx), Struct_1(global1.a, vec3<f32>(-244f, -1972f, global0.c), global0.c, global1.b.zz))), !global0.a))), _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_add_u32(~_wgslsmith_mod_u32(u_input.b.x, 1u), ~(u_input.b.x << (86908u % 32u))), global0.d.x)).yz);
    global0 = Struct_1(!any(select(vec2<bool>(false, global0.a), vec2<bool>(false, global1.a), vec2<bool>(true, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(var_0.c - 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1106f), var_0.c)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2089f * -590f), 1797f)), -1087f)), vec2<f32>(global1.b.x, -1100f));
    var var_1 = var_0;
    var_1 = Struct_1(-41585i < u_input.a.x, vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(115f - 1387f) - _wgslsmith_f_op_f32(-var_1.c)))), var_0.c), 1000f, var_1.b.yx);
    let x = u_input.a;
    s_output = StorageBuffer(min(vec3<i32>(u_input.a.x, u_input.a.x, 33363i), -(vec3<i32>(2147483647i, -38939i, u_input.a.x) | u_input.a)) >> (~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 14481u), vec3<u32>(49304u, u_input.b.x, u_input.b.x)), _wgslsmith_div_u32(u_input.b.x, u_input.b.x), u_input.b.x) % vec3<u32>(32u)));
}

