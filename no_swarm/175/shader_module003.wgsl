struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec2<f32>(-665f, 544f)), Struct_2(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec2<f32>(1507f, 1544f)), Struct_2(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec2<f32>(368f, -1570f)), Struct_2(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec2<f32>(-750f, 1049f)), Struct_2(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec2<f32>(-734f, -2813f)), Struct_2(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec2<f32>(546f, -482f)), Struct_2(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec2<f32>(293f, -525f)), Struct_2(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec2<f32>(530f, 218f)), Struct_2(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec2<f32>(1000f, 1159f)), Struct_2(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec2<f32>(-1164f, -3159f)));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> vec2<f32> {
    let var_0 = -(abs(u_input.c) >> (~_wgslsmith_clamp_vec2_u32(min(vec2<u32>(76856u, u_input.a), vec2<u32>(u_input.a, u_input.e)), ~vec2<u32>(u_input.e, 99467u), countOneBits(vec2<u32>(28281u, 50055u))) % vec2<u32>(32u)));
    var var_1 = arg_1;
    global0 = array<Struct_2, 10>();
    var_1 = arg_1;
    var_1 = arg_0;
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1701f, 367f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(1606f))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -491f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1096f, 295f) + vec2<f32>(-1264f, -1975f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1727f, -757f))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -424f) * vec2<f32>(289f, 1089f)))) * vec2<f32>(_wgslsmith_f_op_f32(312f + -445f), _wgslsmith_div_f32(490f, 1232f)))))));
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_3(Struct_2(vec4<bool>(true, true, true, true), !vec4<bool>(all(vec4<bool>(false, true, true, false)), true, true, any(vec4<bool>(false, true, true, false))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, -1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1000f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1207f, 180f) * vec2<f32>(-1272f, 1022f)) * _wgslsmith_f_op_vec2_f32(func_3(Struct_1(u_input.c.x, vec3<bool>(true, false, false)), Struct_1(-1i, vec3<bool>(true, true, true)), 67173u)))))), global0[_wgslsmith_index_u32(1u, 10u)], true);
    global0 = array<Struct_2, 10>();
    let var_1 = min(vec3<u32>(71147u, max(_wgslsmith_div_u32(u_input.a, ~u_input.b), ~arg_0.x), arg_0.x), arg_0);
    var var_2 = global0[_wgslsmith_index_u32(~arg_0.x, 10u)];
    var var_3 = vec3<bool>(true, all(!(!vec2<bool>(var_0.b.b.x, true))) == any(var_2.b), !(!var_2.b.x));
    return Struct_1(u_input.c.x, select(!(!vec3<bool>(true, var_0.b.a.x, var_2.b.x)), !select(vec3<bool>(true, var_0.a.b.x, false), !var_0.b.a.ywy, vec3<bool>(true, false, false)), vec3<bool>(!any(vec4<bool>(var_2.a.x, var_3.x, false, var_3.x)), var_2.b.x, !(var_0.a.c.x >= -238f))));
}

fn func_1(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_3) -> Struct_3 {
    var var_0 = arg_2.a;
    var var_1 = !select(select(arg_1, arg_2.b.b.zy, arg_1), !arg_2.a.b.xw, var_0.a.zx);
    var var_2 = func_2(vec3<u32>(1u, 31444u, 7026u));
    var_2 = Struct_1(-abs(var_2.a), select(vec3<bool>(true, !(var_0.c.x > arg_0), any(vec4<bool>(arg_2.c, false, false, var_1.x))), select(vec3<bool>(false, false, arg_1.x), !var_0.b.zxy, (var_2.a >> (u_input.a % 32u)) > 1i), any(func_2(~vec3<u32>(u_input.b, 1u, u_input.e)).b)));
    let var_3 = !(!(!(true && (arg_1.x || false))));
    return Struct_3(Struct_2(select(select(select(var_0.b, arg_2.a.a, var_1.x), var_0.b, vec4<bool>(var_0.b.x, arg_1.x, arg_1.x, false)), !(!arg_2.b.a), var_0.a), arg_2.a.a, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_2.a.c.x - -1000f), _wgslsmith_f_op_f32(1597f * arg_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.a.c + vec2<f32>(-1000f, -581f))))), Struct_2(select(vec4<bool>(any(arg_2.b.a), true, u_input.d >= u_input.b, all(var_2.b)), vec4<bool>(arg_2.c, !arg_1.x, !var_0.a.x, !var_1.x), var_0.b.x), !(!select(vec4<bool>(var_2.b.x, var_0.b.x, var_1.x, false), arg_2.b.b, var_2.b.x)), _wgslsmith_f_op_vec2_f32(-arg_2.a.c)), arg_2.b.a.x);
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec2<f32>, arg_3: i32) -> vec3<bool> {
    var var_0 = _wgslsmith_sub_u32(~u_input.d, ~_wgslsmith_sub_u32(~u_input.b | _wgslsmith_div_u32(u_input.d, 91482u), _wgslsmith_clamp_u32(~1u, countOneBits(9892u), 4294967295u)));
    var_0 = _wgslsmith_mod_u32(select(1u, u_input.b, !select(!arg_0.b.a.x, !arg_0.c, true)), ~((firstTrailingBit(85314u) & 63243u) | 171196u));
    var_0 = select(9976u, 0u, true);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.c.x));
    var var_2 = true;
    return arg_0.a.a.xxz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(u_input.c.x, ~_wgslsmith_div_i32(u_input.c.x, ~u_input.c.x), 0i);
    global0 = array<Struct_2, 10>();
    var_0 = _wgslsmith_mult_vec3_i32(~(~vec3<i32>(max(-1i, u_input.c.x), u_input.c.x, -var_0.x)), abs(select(vec3<i32>(u_input.c.x, _wgslsmith_mod_i32(0i, var_0.x), 1i), -vec3<i32>(27738i, -1i, -41351i), func_4(func_1(-377f, vec2<bool>(false, true), Struct_3(global0[_wgslsmith_index_u32(4294967295u, 10u)], Struct_2(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec2<f32>(462f, -146f)), false)), _wgslsmith_mod_i32(var_0.x, u_input.c.x), _wgslsmith_div_vec2_f32(vec2<f32>(-659f, 525f), vec2<f32>(1000f, 1101f)), countOneBits(u_input.c.x)))));
    let var_1 = vec3<u32>(_wgslsmith_mult_u32(((u_input.b | u_input.a) >> (min(26860u, u_input.b) % 32u)) ^ u_input.b, _wgslsmith_mod_u32(40455u, 1u)), _wgslsmith_add_u32(~abs(~u_input.b), 4294967295u), abs(u_input.d ^ 1u));
    var var_2 = firstLeadingBit(-(-vec3<i32>(-2147483647i, u_input.c.x, u_input.c.x) | ~vec3<i32>(var_0.x, var_0.x, -1i)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(484f - _wgslsmith_f_op_f32(f32(-1f) * -514f))), -468f));
    var var_4 = Struct_1(u_input.c.x, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-228f - _wgslsmith_f_op_f32(var_3.x - 1185f))), vec2<bool>(true, true), Struct_3(Struct_2(vec4<bool>(true, true, true, true), func_1(-649f, vec2<bool>(false, true), Struct_3(Struct_2(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec2<f32>(-435f, 142f)), Struct_2(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec2<f32>(1253f, -134f)), true)).a.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(491f, -537f))), func_1(1000f, vec2<bool>(true, true), func_1(-1131f, vec2<bool>(false, false), Struct_3(global0[_wgslsmith_index_u32(1u, 10u)], Struct_2(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec2<f32>(var_3.x, -156f)), false))).b, !func_1(1494f, vec2<bool>(true, true), Struct_3(Struct_2(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec2<f32>(var_3.x, var_3.x)), Struct_2(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec2<f32>(-669f, var_3.x)), true)).c)).a.a.xwx);
    let x = u_input.a;
    s_output = StorageBuffer((firstTrailingBit(max(vec4<u32>(42780u, 60795u, var_1.x, 10769u), vec4<u32>(0u, var_1.x, u_input.b, u_input.d))) | _wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 37699u, 46528u, var_1.x), _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, 52990u, var_1.x, 51156u), vec4<u32>(1u, 4294967295u, 37581u, 4294967295u)), max(vec4<u32>(var_1.x, 67068u, u_input.a, 1u), vec4<u32>(4294967295u, 72639u, u_input.d, 48252u)))) ^ _wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, var_1.x, u_input.e, u_input.b), max(abs(vec4<u32>(var_1.x, 4294967295u, 1u, u_input.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(80159u, 26107u, 6678u, u_input.d), vec4<u32>(34576u, u_input.e, var_1.x, 4294967295u)))), ~_wgslsmith_sub_u32(~u_input.b, 1u), vec4<i32>(var_0.x, -reverseBits(var_0.x), _wgslsmith_sub_i32(func_2(_wgslsmith_div_vec3_u32(vec3<u32>(0u, var_1.x, 1u), vec3<u32>(4294967295u, 1u, 0u))).a, ~(-5942i)), var_2.x), vec3<i32>(72876i, var_0.x, var_2.x));
}

