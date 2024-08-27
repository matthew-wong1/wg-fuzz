struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 14>;

var<private> global1: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(vec4<u32>(51457u, 78557u, 56195u, 13645u), Struct_2(vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i), Struct_1(52811i, 56514u, vec4<f32>(946f, 1099f, -1045f, -1452f), -1884f)), Struct_2(vec3<i32>(9908i, 2147483647i, 54759i), Struct_1(-15211i, 16320u, vec4<f32>(310f, 753f, 1000f, -690f), -1000f))), Struct_3(vec4<u32>(4294967295u, 1558u, 1u, 0u), Struct_2(vec3<i32>(3507i, 2147483647i, 11368i), Struct_1(2147483647i, 0u, vec4<f32>(-359f, -288f, 1019f, -567f), 904f)), Struct_2(vec3<i32>(1i, 2147483647i, 0i), Struct_1(2147483647i, 17691u, vec4<f32>(-823f, -1413f, 395f, -579f), 463f))));

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 28>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: bool, arg_1: vec3<bool>) -> bool {
    global3 = array<Struct_1, 28>();
    global1 = array<Struct_3, 2>();
    global1 = array<Struct_3, 2>();
    global0 = array<vec3<f32>, 14>();
    var var_0 = -1166f;
    return arg_0;
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec2<u32>, arg_3: f32) -> vec3<f32> {
    var var_0 = true;
    global1 = array<Struct_3, 2>();
    let var_1 = select(vec2<bool>(true, true), vec2<bool>(false, any(vec4<bool>(true, true, true, all(vec4<bool>(false, true, false, true))))), arg_1.x == _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, arg_2.x, 7200u, 0u) << (~vec4<u32>(arg_1.x, 60726u, 33554u, arg_0.a.x) % vec4<u32>(32u)), arg_0.a));
    var_0 = false;
    global0 = array<vec3<f32>, 14>();
    return _wgslsmith_f_op_vec3_f32(arg_0.b.b.c.xyz * global2.c.xyw);
}

fn func_4(arg_0: Struct_4, arg_1: vec3<f32>) -> f32 {
    global0 = array<vec3<f32>, 14>();
    let var_0 = Struct_2(~vec3<i32>(firstLeadingBit(countOneBits(-12866i)), 109477i, global2.a), Struct_1(reverseBits(-1i), ~40749u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1448f, arg_0.b.x, global2.d, 759f) + vec4<f32>(117f, -1418f, -331f, arg_0.b.x)) * _wgslsmith_f_op_vec4_f32(global2.c * global2.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-855f - arg_0.b.x)))));
    var var_1 = Struct_3(reverseBits(~vec4<u32>(~global2.b, 0u, reverseBits(global2.b), ~var_0.b.b)), Struct_2(u_input.a, Struct_1(-1i, _wgslsmith_mod_u32(0u, _wgslsmith_mult_u32(var_0.b.b, var_0.b.b)), vec4<f32>(_wgslsmith_div_f32(-447f, -736f), -1803f, _wgslsmith_f_op_f32(-1105f - 962f), _wgslsmith_f_op_f32(f32(-1f) * -100f)), arg_0.b.x)), Struct_2(~vec3<i32>(~u_input.a.x, global2.a << (17459u % 32u), u_input.c.x), var_0.b));
    global2 = Struct_1(global2.a, 4294967295u, vec4<f32>(_wgslsmith_div_f32(-1221f, _wgslsmith_f_op_f32(arg_0.b.x + -431f)), -145f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-892f)) - 451f), _wgslsmith_f_op_f32(-arg_1.x)), 1f);
    var var_2 = any(!vec4<bool>(true, true, arg_0.a.x, (var_0.b.b >= var_0.b.b) || (arg_1.x == -719f)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(vec4<u32>(global2.b, 1u, var_1.b.b.b, var_1.a.x), Struct_2(vec3<i32>(-2167i, global2.a, var_1.c.b.a), Struct_1(var_0.a.x, 51301u, vec4<f32>(411f, -878f, -849f, var_0.b.c.x), -758f)), var_0), vec2<u32>(_wgslsmith_sub_u32(0u, global2.b), var_1.a.x << (global2.b % 32u)), firstTrailingBit(~vec2<u32>(68715u, 58957u)), _wgslsmith_f_op_f32(-global2.c.x))).x * arg_1.x) - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.c.b.d + arg_0.b.x))), 218f))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<u32>) -> Struct_2 {
    global2 = Struct_1(arg_1.b.a, (min(~28422u, countOneBits(arg_0.b.b)) >> (0u % 32u)) ^ ~firstTrailingBit(0u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_4(vec3<bool>(true, true, false), vec2<f32>(720f, -1000f)), _wgslsmith_f_op_vec3_f32(func_3(global1[_wgslsmith_index_u32(83705u, 2u)], arg_2.xx, arg_2.yz, 383f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.b.c.x)) - _wgslsmith_f_op_f32(-arg_1.b.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-620f)) * -603f)), _wgslsmith_f_op_f32(-global2.c.x)), _wgslsmith_f_op_f32(exp2(arg_0.b.c.x)));
    var var_0 = Struct_4(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(arg_1.b.d, _wgslsmith_f_op_f32(-arg_1.b.c.x)), arg_1.b.d)));
    var var_1 = ~u_input.a.x;
    let var_2 = firstLeadingBit(abs(arg_0.b.b));
    return arg_1;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_2.a, arg_2.a, 2147483647i), vec3<i32>(-2147483647i, -25502i, -15064i)) & _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, u_input.a.x, 48806i), u_input.a), vec3<i32>(_wgslsmith_div_i32(17618i, 1i), arg_2.a | global2.a, ~1i)), -u_input.a.x, 28378i), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.x, arg_0.x), firstLeadingBit(arg_0), ~arg_1.zx)), vec2<u32>(~u_input.b, ~u_input.b | ~28504u)), 28u)]);
    let var_1 = func_5(Struct_2(select(var_0.a, _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, arg_2.a), vec3<i32>(-21809i, 0i, var_0.b.a)), firstTrailingBit(vec3<i32>(23770i, arg_2.a, arg_2.a)), _wgslsmith_clamp_vec3_i32(u_input.c, u_input.c, u_input.c)), func_2(false, select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)))), Struct_1(1i, ~(~3690u), vec4<f32>(930f, _wgslsmith_f_op_f32(var_0.b.c.x * -1000f), 1454f, 872f), _wgslsmith_f_op_f32(func_4(Struct_4(vec3<bool>(false, false, true), arg_2.c.xw), _wgslsmith_f_op_vec3_f32(func_3(global1[_wgslsmith_index_u32(arg_0.x, 2u)], arg_1.yy, vec2<u32>(0u, arg_0.x), var_0.b.c.x)))))), Struct_2(~u_input.a, Struct_1(2147483647i, arg_0.x, var_0.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.d * var_0.b.d)))), firstLeadingBit(~(~vec3<u32>(arg_2.b, u_input.b, 1u))));
    global1 = array<Struct_3, 2>();
    global3 = array<Struct_1, 28>();
    global2 = var_1.b;
    return var_1;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_4) -> f32 {
    let var_0 = arg_0.b;
    let var_1 = arg_1;
    let var_2 = func_1(~select(vec2<u32>(23043u, u_input.b) >> (vec2<u32>(55556u, 11569u) % vec2<u32>(32u)), ~(~vec2<u32>(global2.b, u_input.b)), vec2<bool>(!arg_1.a.x, false)), ~(vec4<u32>(~u_input.b, ~4294967295u, var_0.b, u_input.b) ^ abs(~vec4<u32>(u_input.b, arg_0.b.b, 20478u, var_0.b))), var_0);
    global2 = Struct_1(-var_0.a, arg_0.b.b, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-arg_0.b.c))), 1739f);
    global3 = array<Struct_1, 28>();
    return 932f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d) * -2635f), 286f)) + _wgslsmith_f_op_f32(1179f * -334f))));
    var var_1 = global0[_wgslsmith_index_u32(~1u | global2.b, 14u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global2.c, vec4<f32>(global2.c.x, var_0, var_0, var_1.x))))) + vec4<f32>(628f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) - _wgslsmith_f_op_f32(1605f - _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_6(func_1(vec2<u32>(1u, 4294967295u), vec4<u32>(global2.b, 89759u, 1867u, global2.b), Struct_1(-40456i, global2.b, global2.c, global2.c.x)), Struct_4(vec3<bool>(false, false, false), vec2<f32>(1000f, global2.d)))))), _wgslsmith_f_op_f32(func_4(Struct_4(vec3<bool>(true, true, false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_1.x))), vec3<f32>(_wgslsmith_f_op_f32(1030f - -198f), _wgslsmith_f_op_f32(select(-942f, global2.c.x, true)), -1000f)))));
    var var_3 = -u_input.c.yy;
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1514f), _wgslsmith_f_op_f32(func_4(Struct_4(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true)), var_2.yx), vec3<f32>(_wgslsmith_f_op_f32(step(func_5(Struct_2(vec3<i32>(-2147483647i, -1i, 4714i), global3[_wgslsmith_index_u32(global2.b, 28u)]), Struct_2(vec3<i32>(-2147483647i, -10713i, global2.a), Struct_1(u_input.a.x, 4294967295u, vec4<f32>(-713f, -1000f, -957f, var_2.x), -576f)), vec3<u32>(7329u, 4294967295u, 42170u)).b.d, _wgslsmith_f_op_f32(-var_2.x))), var_1.x, _wgslsmith_f_op_f32(global2.c.x * _wgslsmith_f_op_f32(select(var_0, 1249f, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x))))), global2.d);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_i32(-2147483647i, 16952i), vec2<i32>(2147483647i, 2147483647i));
}

