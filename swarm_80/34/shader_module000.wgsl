struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<f32>(2245f, -474f, -1762f, -1177f), vec4<bool>(false, false, true, false), Struct_1(vec4<f32>(1125f, 216f, 998f, 947f)));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<i32>) -> Struct_2 {
    return Struct_2(global0.c.a, global0.b, Struct_1(global0.a));
}

fn func_3(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_2) -> Struct_2 {
    global0 = Struct_2(arg_2.a, select(!vec4<bool>(false, all(global0.b.xxy), true, arg_0), func_2(global0.a.xw, -vec2<i32>(u_input.a, u_input.a) ^ abs(vec2<i32>(-2006i, 20464i))).b, arg_2.b.x || false), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1385f), arg_2.c.a.x)), -firstLeadingBit(countOneBits(vec2<i32>(u_input.a, u_input.a)))).c);
    global0 = Struct_2(global0.c.a, vec4<bool>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(-56197i, u_input.a)), vec2<i32>(-2147483647i, 56743i)) > (34619i | -u_input.a), false, true | (arg_2.a.x >= _wgslsmith_f_op_f32(-arg_2.c.a.x)), any(!select(vec4<bool>(arg_0, false, arg_2.b.x, false), arg_2.b, true))), arg_2.c);
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(arg_2.a.x * arg_2.c.a.x), -160f, _wgslsmith_f_op_f32(-global0.c.a.x), _wgslsmith_f_op_f32(floor(global0.a.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a - vec4<f32>(490f, global0.a.x, 1275f, global0.a.x)) - _wgslsmith_f_op_vec4_f32(floor(arg_2.c.a)))))), func_2(vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.c.a.x)))), vec2<i32>(1i, 1i) >> (~vec2<u32>(arg_1.x, arg_1.x) % vec2<u32>(32u))).b, Struct_1(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1084f, 259f))), firstTrailingBit(reverseBits(vec2<i32>(5599i, u_input.a)))).c.a));
    global0 = arg_2;
    var var_1 = _wgslsmith_div_vec2_i32(~(~(firstLeadingBit(vec2<i32>(u_input.a, u_input.a)) >> (arg_1.wy % vec2<u32>(32u)))), vec2<i32>(-(~u_input.a), _wgslsmith_clamp_i32(u_input.a ^ -9976i, ~0i, 16103i)) >> (vec2<u32>(firstTrailingBit(arg_1.x), 1u) % vec2<u32>(32u)));
    return Struct_2(var_0.c.a, vec4<bool>(all(select(arg_2.b.yz, select(var_0.b.wx, vec2<bool>(var_0.b.x, global0.b.x), var_0.b.x), func_2(vec2<f32>(308f, var_0.c.a.x), vec2<i32>(0i, var_1.x)).b.x)), all(vec2<bool>(false, false)), any(!vec4<bool>(false, false, arg_0, arg_2.b.x)), !var_0.b.x), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.c.a.x, arg_2.a.x), vec2<f32>(890f, -150f))) + global0.c.a.zz), vec2<i32>(abs(var_1.x), 20678i) << ((_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(arg_1.x, 76228u)) | (arg_1.wx >> (vec2<u32>(arg_1.x, 0u) % vec2<u32>(32u)))) % vec2<u32>(32u))).c);
}

fn func_1() -> f32 {
    var var_0 = func_3(global0.b.x, ~(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 15849u, 1u), vec4<u32>(0u, 42290u, 0u, 0u)))), func_2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -650f), global0.a.x), global0.c.a.xz), (vec2<i32>(u_input.a, u_input.a) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))) >> (countOneBits(vec2<u32>(47704u, 0u)) % vec2<u32>(32u))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-848f, -1192f, _wgslsmith_f_op_f32(-global0.a.x), -1000f))), global0.b, func_3(true, vec4<u32>(1u, 1u, 1u, 1u), Struct_2(var_0.c.a, vec4<bool>(select(var_0.b.x, var_0.b.x, global0.b.x), var_0.a.x > global0.a.x, !global0.b.x, true), func_3(any(var_0.b.wyy), ~vec4<u32>(19293u, 64329u, 1u, 44661u), func_3(true, vec4<u32>(4294967295u, 9586u, 10846u, 120394u), Struct_2(var_0.a, vec4<bool>(true, true, var_0.b.x, var_0.b.x), global0.c))).c)).c);
    var var_2 = var_0.c;
    global0 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-1130f + -470f), var_2.a.x, _wgslsmith_f_op_f32(sign(1199f)), -505f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-247f, -760f, var_2.a.x, 927f))))), select(!vec4<bool>(var_0.b.x, !global0.b.x, true, func_2(var_0.a.wx, vec2<i32>(u_input.a, u_input.a)).b.x), var_0.b, var_0.b), var_0.c);
    global0 = Struct_2(var_0.c.a, global0.b, var_0.c);
    return global0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(global0.c.a, vec4<bool>(u_input.a != reverseBits(1i), any(vec2<bool>(true, false)), true && global0.b.x, all(vec3<bool>(global0.b.x || false, global0.b.x, all(vec3<bool>(global0.b.x, false, false))))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-1f), global0.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.a.x - 346f))), _wgslsmith_f_op_f32(func_1()))));
    global0 = Struct_2(func_3(true, _wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(67755u, 104007u, 61364u, 14728u), vec4<u32>(47416u, 1u, 38493u, 18418u), vec4<u32>(0u, 3448u, 1u, 4294967295u)), vec4<u32>(1u, 1205u, 0u, 4294967295u))), Struct_2(vec4<f32>(-1000f, _wgslsmith_f_op_f32(min(global0.a.x, global0.a.x)), -220f, _wgslsmith_div_f32(451f, global0.c.a.x)), vec4<bool>(false, true, all(global0.b.zzw), global0.b.x), Struct_1(_wgslsmith_f_op_vec4_f32(-global0.a)))).a, global0.b, func_3(true, vec4<u32>(1u, 1u, 1u, 1u) >> (firstTrailingBit(select(vec4<u32>(62708u, 72610u, 4294967295u, 1u), vec4<u32>(1u, 1u, 34934u, 0u), false)) % vec4<u32>(32u)), func_3(all(global0.b.wx) | true, vec4<u32>(1u, 1u, 1u, 1u), Struct_2(global0.c.a, !global0.b, Struct_1(global0.a)))).c);
    global0 = func_3(true, ~reverseBits(vec4<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, 37998u), vec4<u32>(13971u, 1175u, 63690u, 58655u)), ~1u, 11938u)), func_3(any(vec3<bool>(true, false, true)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 27939u), vec2<u32>(59111u, 19976u)), _wgslsmith_mod_u32(1u, 37364u >> (0u % 32u)), 1u, ~_wgslsmith_div_u32(4294967295u, 20892u)), Struct_2(_wgslsmith_div_vec4_f32(func_2(vec2<f32>(global0.c.a.x, 865f), vec2<i32>(-1i, u_input.a)).c.a, _wgslsmith_f_op_vec4_f32(global0.a * vec4<f32>(global0.c.a.x, 1339f, global0.c.a.x, 565f))), global0.b, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, -1000f, global0.c.a.x, global0.a.x) * vec4<f32>(1000f, global0.a.x, global0.c.a.x, 391f))))));
    var var_0 = !global0.b.wyx;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), -870f)) - _wgslsmith_div_f32(global0.c.a.x, _wgslsmith_f_op_f32(func_1()))), -370f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-748f, global0.c.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1526f)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(f32(-1f) * -1341f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1217f * global0.c.a.x)))), 950f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.x, -1048f))), -139f) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 473f, global0.c.a.x, -1027f) * _wgslsmith_f_op_vec4_f32(global0.a - global0.a)) + global0.a))));
    let var_2 = ~(~(~vec2<u32>(1u, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a, vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, 65328u, var_2.x, 58453u), vec4<u32>(14080u, var_2.x, 1u, 112989u)), ~var_2.x, ~4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, 46835u) & var_2, ~var_2)) << (var_2 % vec2<u32>(32u)), _wgslsmith_f_op_f32(-1f), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(min(firstTrailingBit(vec4<u32>(65213u, 36891u, 21814u, var_2.x)), firstTrailingBit(vec4<u32>(85091u, var_2.x, 0u, var_2.x))), ~vec4<u32>(24383u, var_2.x, 23666u, var_2.x) & ~vec4<u32>(var_2.x, 30795u, var_2.x, 1u)), 47589u), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-224f, _wgslsmith_f_op_f32(f32(-1f) * -365f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x)))))));
}

