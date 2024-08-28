struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -143f;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32, arg_3: vec2<bool>) -> Struct_1 {
    global0 = 1060f;
    var var_0 = u_input.e.x;
    var var_1 = -16746i;
    var_1 = 0i;
    var_1 = u_input.b;
    return arg_0;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-441f, -267f, arg_1.a.a.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(835f, -968f, -626f), vec3<f32>(arg_0.a.a.x, 1408f, arg_1.a.a.x), vec3<bool>(true, arg_0.a.b, arg_0.a.b)))))))), arg_1.a.b | any(vec2<bool>(true, any(vec3<bool>(false, arg_0.a.b, arg_0.a.b)))));
    var var_1 = all(select(!(!vec3<bool>(true, var_0.b, arg_0.a.b)), select(select(vec3<bool>(true, var_0.b, var_0.b), !vec3<bool>(arg_1.a.b, arg_1.a.b, true), any(vec4<bool>(var_0.b, true, false, false))), vec3<bool>(var_0.b & arg_0.a.b, arg_1.a.b, true), true), select(!select(vec3<bool>(false, true, arg_0.a.b), vec3<bool>(false, true, false), arg_1.a.b), select(!vec3<bool>(true, var_0.b, var_0.b), !vec3<bool>(arg_0.a.b, true, false), vec3<bool>(false, true, true)), func_2(arg_1.a, arg_0, _wgslsmith_f_op_f32(-var_0.a.x), !vec2<bool>(var_0.b, var_0.b)).b)));
    var var_2 = countOneBits(_wgslsmith_sub_i32(min(1i, -select(-28667i, u_input.b, var_0.b)), 17261i));
    var_0 = func_2(func_2(arg_0.a, arg_0, arg_1.a.a.x, vec2<bool>(!all(vec4<bool>(var_0.b, var_0.b, false, false)), true)), Struct_2(arg_0.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.a.a.x * _wgslsmith_f_op_f32(-func_2(Struct_1(arg_1.a.a, true), arg_0, -141f, vec2<bool>(false, true)).a.x)))), !(!select(vec2<bool>(arg_0.a.b, true), vec2<bool>(false, false), select(false, arg_0.a.b, arg_1.a.b))));
    var_0 = arg_0.a;
    return arg_0.a;
}

fn func_1(arg_0: bool, arg_1: vec2<f32>) -> bool {
    var var_0 = Struct_2(func_2(Struct_1(vec3<f32>(arg_1.x, -1415f, arg_1.x), arg_0), Struct_2(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(892f, arg_1.x, 177f), vec3<f32>(arg_1.x, -298f, arg_1.x)), true)), 1437f, !vec2<bool>(arg_0, true)));
    var_0 = Struct_2(func_3(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(var_0.a.a + var_0.a.a), arg_0 || true)), Struct_2(func_2(func_2(Struct_1(var_0.a.a, var_0.a.b), Struct_2(Struct_1(vec3<f32>(var_0.a.a.x, 1825f, -823f), var_0.a.b)), var_0.a.a.x, vec2<bool>(false, false)), Struct_2(var_0.a), _wgslsmith_f_op_f32(-339f * var_0.a.a.x), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(false, var_0.a.b))))));
    let var_1 = var_0.a.a;
    global0 = -416f;
    var var_2 = _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(max(vec4<i32>(-40365i, u_input.b, u_input.b, 0i) ^ vec4<i32>(2147483647i, 13305i, u_input.b, u_input.b), -vec4<i32>(-1i, -2264i, -2147483647i, u_input.b)), _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(u_input.b, 0i, u_input.b, -59570i)), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b) & vec4<i32>(14144i, -1i, u_input.b, u_input.b))), ~vec4<i32>(_wgslsmith_clamp_i32(29130i, u_input.b, -10385i), u_input.b, firstLeadingBit(-4849i), -5688i)) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(min(9530i, u_input.b ^ 27670i), ~u_input.b ^ min(-31102i, -2147483647i), countOneBits(~(-30239i)), 1i ^ _wgslsmith_mod_i32(u_input.b, u_input.b)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(37287i, 2147483647i, 4155i, u_input.b), ~vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b) | select(vec4<i32>(1i, u_input.b, -2147483647i, -1226i), vec4<i32>(u_input.b, -1i, 2147483647i, u_input.b), true), ~vec4<i32>(u_input.b, -26975i, -2147483647i, 64862i)));
    return var_0.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1138f, 240f)) - -215f), 708f, -343f), any(vec4<bool>(_wgslsmith_f_op_f32(945f * 1272f) < _wgslsmith_f_op_f32(floor(-189f)), any(vec4<bool>(true, true, true, true)), true, !func_1(true, vec2<f32>(1243f, -750f)))));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-478f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -806f))), var_0.a.x), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(var_0.a.x, -1332f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -866f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(837f * var_0.a.x), var_0.a.x))), !(!select(vec3<bool>(false, var_0.b, true), vec3<bool>(false, var_0.b, var_0.b), var_0.b)))), true);
    var var_1 = countOneBits(vec4<i32>(-(~2147483647i), u_input.b, -u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-12347i, u_input.b), u_input.b, countOneBits(0i), reverseBits(-1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 16827i, u_input.b, u_input.b) << (vec4<u32>(u_input.a.x, u_input.e.x, 0u, 7107u) % vec4<u32>(32u)), ~vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)))));
    var var_2 = ~u_input.a.xzy;
    var var_3 = func_2(func_2(func_3(Struct_2(func_3(Struct_2(Struct_1(vec3<f32>(-423f, var_0.a.x, 290f), true)), Struct_2(Struct_1(vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x), false)))), Struct_2(func_2(Struct_1(var_0.a, var_0.b), Struct_2(Struct_1(var_0.a, true)), var_0.a.x, vec2<bool>(false, true)))), Struct_2(func_2(Struct_1(var_0.a, var_0.b), Struct_2(Struct_1(vec3<f32>(var_0.a.x, -1119f, var_0.a.x), var_0.b)), -1104f, vec2<bool>(false, false))), 841f, vec2<bool>(true, var_0.b)), Struct_2(func_3(Struct_2(func_2(Struct_1(var_0.a, false), Struct_2(Struct_1(var_0.a, var_0.b)), var_0.a.x, vec2<bool>(false, true))), Struct_2(Struct_1(var_0.a, var_0.b)))), -340f, select(select(vec2<bool>(var_0.b & true, any(vec3<bool>(var_0.b, var_0.b, false))), vec2<bool>(all(vec2<bool>(false, var_0.b)), !var_0.b), abs(-1i) >= _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 1i, u_input.b), vec3<i32>(1i, var_1.x, 17034i))), vec2<bool>(!any(vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b)), var_0.b), select(true, false, !all(vec2<bool>(var_0.b, var_0.b)))));
    let var_4 = _wgslsmith_div_vec3_u32(vec3<u32>(40755u, u_input.c.x, _wgslsmith_dot_vec4_u32(u_input.e, _wgslsmith_add_vec4_u32(reverseBits(u_input.e), u_input.a))), _wgslsmith_mod_vec3_u32((_wgslsmith_add_vec3_u32(vec3<u32>(29500u, 78777u, 22345u), vec3<u32>(u_input.a.x, 1u, 3284u)) >> (reverseBits(vec3<u32>(var_2.x, var_2.x, 1u)) % vec3<u32>(32u))) >> (select(~u_input.e.zyx, u_input.a.zwx, var_0.b) % vec3<u32>(32u)), countOneBits(u_input.e.zwz & min(u_input.a.wzw, vec3<u32>(32777u, 47671u, var_2.x)))));
    let var_5 = ~_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(var_1.x, var_1.x, 1i, -2147483647i) & vec4<i32>(var_1.x, u_input.b, -2147483647i, var_1.x), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, var_1.x, u_input.b, var_1.x), vec4<i32>(var_1.x, var_1.x, -1i, -2147483647i)), var_3.b), vec4<i32>(min(var_1.x, 1i), _wgslsmith_mult_i32(u_input.b, -24402i), -2147483647i, min(u_input.b, u_input.b)), -_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, var_1.x, -12612i, u_input.b), vec4<i32>(var_1.x, var_1.x, var_1.x, u_input.b))), _wgslsmith_clamp_vec4_i32(~(-vec4<i32>(u_input.b, var_1.x, 1i, u_input.b)), firstLeadingBit(vec4<i32>(-1i, var_1.x, 1862i, 1i)), reverseBits(select(vec4<i32>(2147483647i, u_input.b, u_input.b, 43945i), vec4<i32>(1i, 0i, var_1.x, -54135i), vec4<bool>(true, true, var_0.b, var_0.b)))), vec4<i32>(min(1606i, min(-30279i, 0i)), -1i, var_1.x, min(1i, 0i << (var_4.x % 32u))));
    let var_6 = vec2<bool>(var_0.b, !any(!select(vec2<bool>(true, var_3.b), vec2<bool>(true, var_3.b), false)));
    var_0 = func_2(func_2(func_2(func_2(Struct_1(vec3<f32>(-507f, var_0.a.x, 953f), false), Struct_2(Struct_1(vec3<f32>(-665f, 139f, 531f), var_0.b)), _wgslsmith_f_op_f32(max(-505f, 652f)), vec2<bool>(false, false)), Struct_2(func_3(Struct_2(Struct_1(vec3<f32>(1000f, var_3.a.x, var_0.a.x), true)), Struct_2(Struct_1(var_0.a, var_6.x)))), _wgslsmith_f_op_f32(-var_0.a.x), select(select(var_6, var_6, var_0.b), !vec2<bool>(var_6.x, var_0.b), false)), Struct_2(func_3(Struct_2(Struct_1(vec3<f32>(-1123f, var_0.a.x, 500f), var_6.x)), Struct_2(Struct_1(var_3.a, var_3.b)))), var_0.a.x, select(var_6, select(select(vec2<bool>(var_6.x, true), var_6, var_6), var_6, !vec2<bool>(var_0.b, true)), var_0.b)), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2138f, var_3.a.x, var_0.a.x))) * _wgslsmith_f_op_vec3_f32(var_3.a + var_0.a)), true)), _wgslsmith_f_op_f32(floor(var_0.a.x)), !(!select(vec2<bool>(var_6.x, var_0.b), var_6, false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(-15144i, _wgslsmith_mult_i32(var_5.x, ~(-3518i))));
}

