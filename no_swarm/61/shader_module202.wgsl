struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14> = array<bool, 14>(false, false, true, true, false, true, true, true, false, false, true, true, true, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_1() -> bool {
    global0 = array<bool, 14>();
    var var_0 = ~countOneBits(-14288i);
    var_0 = -_wgslsmith_dot_vec4_i32(max(vec4<i32>(0i, -1i, 2147483647i, -23270i), vec4<i32>(2147483647i, 4225i, -45639i, 1862i)) & vec4<i32>(-43530i >> (u_input.a % 32u), _wgslsmith_mod_i32(22881i, 2147483647i), -7180i, 1i), vec4<i32>(-(i32(-1i) * -37015i), _wgslsmith_div_i32(_wgslsmith_clamp_i32(-56520i, 40218i, 0i), _wgslsmith_mult_i32(14923i, -1i)), ~min(-2147483647i, -15230i), -(~0i)));
    global0 = array<bool, 14>();
    var var_1 = 16373i;
    return global0[_wgslsmith_index_u32(u_input.c.x | ~(~153572u), 14u)] != all(!vec2<bool>(any(vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.d, 14u)])), true));
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = arg_0;
    let var_1 = Struct_1(!(!(!(!vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(74037u, 14u)])))), -758f);
    var var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-153f, -621f))))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, var_1.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, var_1.b))))))));
    var var_3 = _wgslsmith_clamp_vec2_u32(u_input.c.zz, vec2<u32>(~(~0u), 7666u), ~max(~u_input.c.yy, vec2<u32>(u_input.a, u_input.d))) | vec2<u32>(u_input.d, 0u ^ u_input.d);
    var var_4 = Struct_1(vec4<bool>(false, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~u_input.c.x >> (var_3.x % 32u), u_input.b.x, u_input.b.x), 14u)], var_1.a.x, false), _wgslsmith_f_op_f32(var_2.x + 1508f));
    return ~(~0u);
}

fn func_2(arg_0: f32, arg_1: f32) -> vec4<bool> {
    global0 = array<bool, 14>();
    global0 = array<bool, 14>();
    let var_0 = Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(func_3(~0i), 14u)], select(true, true, true), any(!select(vec4<bool>(global0[_wgslsmith_index_u32(65030u, 14u)], false, true, global0[_wgslsmith_index_u32(19337u, 14u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 14u)], false, false, true), vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.b.x, 14u)], false))), true), -771f);
    let var_1 = _wgslsmith_mult_vec3_i32(-vec3<i32>(1i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(45334i, -2147483647i), vec2<i32>(8541i, -2147483647i)), abs(i32(-1i) * -2147483647i)), vec3<i32>(1i, 1i, 1i));
    global0 = array<bool, 14>();
    return !(!var_0.a);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(select(select(!arg_2.a.x, true, global0[_wgslsmith_index_u32(~1u, 14u)]) || (all(arg_2.a.yz) | global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 0u), 14u)]), select(true, func_1(), func_1() || true), arg_0.a.x), arg_0.a.x, select(~vec4<i32>(-30892i, 7981i, 2147483647i, 0i) >> ((~vec4<u32>(1u, u_input.a, arg_1.x, arg_1.x) | arg_1) % vec4<u32>(32u)), ~(-vec4<i32>(-31023i, 2147483647i, -11282i, 2828i)) << (arg_1 % vec4<u32>(32u)), vec4<bool>(!func_2(-1294f, arg_0.b).x, !arg_2.a.x, !all(arg_0.a.yx), false)));
    var var_1 = var_0;
    var var_2 = Struct_2(arg_2.a.x, all(arg_2.a.yw), var_1.c & (var_1.c & var_1.c));
    var var_3 = arg_0.b;
    let var_4 = Struct_2(true, !any(arg_0.a.wy), var_1.c);
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>((1i << (select(u_input.b.x, u_input.d, global0[_wgslsmith_index_u32(2790u, 14u)]) % 32u)) | select(50556i, countOneBits(-60241i), true), -23062i, countOneBits(_wgslsmith_add_i32(_wgslsmith_clamp_i32(2143i, 20026i, 1i), ~1i))), countOneBits(_wgslsmith_div_vec3_i32(min(~vec3<i32>(-2147483647i, -29572i, -1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-8240i, -9947i, 1i), vec3<i32>(-54516i, -1i, -7948i), vec3<i32>(-13264i, 0i, 0i))), ~vec3<i32>(1i, 6610i, 0i))));
    let var_1 = ~vec3<i32>(-_wgslsmith_div_i32(~(-51468i), min(32277i, -16661i)), _wgslsmith_div_i32(firstTrailingBit(_wgslsmith_sub_i32(-51332i, -769i)), ~27998i >> (_wgslsmith_div_u32(24179u, u_input.b.x) % 32u)), ~32143i);
    var var_2 = func_4(Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(countOneBits(~u_input.d), 14u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.d, u_input.d) & ~4294967295u, 14u)], true, !func_1()), -1532f), abs(~(~(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.a, 4294967295u)))), Struct_1(select(select(vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 14u)], true, false), vec4<bool>(false, false, true, false), false), select(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 14u)], false, global0[_wgslsmith_index_u32(u_input.b.x, 14u)]), vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(u_input.b.x, 14u)]), u_input.a < 13245u), func_2(_wgslsmith_f_op_f32(569f - -1255f), -1478f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1532f, -2399f)))));
    var var_3 = Struct_1(select(vec4<bool>(func_4(Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 14u)], false, false, global0[_wgslsmith_index_u32(67065u, 14u)]), 814f), ~vec4<u32>(u_input.a, u_input.d, 4294967295u, u_input.a), Struct_1(vec4<bool>(var_2.a, var_2.a, var_2.a, var_2.a), -335f)).b, any(vec4<bool>(true, false, true, false)) && global0[_wgslsmith_index_u32(u_input.c.x, 14u)], true, func_2(_wgslsmith_f_op_f32(626f + 1062f), _wgslsmith_f_op_f32(abs(181f))).x), select(!select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 14u)], true, true, var_2.a), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 14u)], true, false), global0[_wgslsmith_index_u32(0u, 14u)]), vec4<bool>(true, true, false, true), !vec4<bool>(var_2.b, global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(u_input.d, 14u)], false)), var_2.b | true), 477f);
    var_3 = Struct_1(!(!select(var_3.a, vec4<bool>(var_2.b, var_2.b, false, var_3.a.x), any(var_3.a))), var_3.b);
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(1000f * var_3.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1463f, 792f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.b * var_3.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_3.b))))), _wgslsmith_f_op_f32(max(1613f, 559f)));
    var var_5 = select(var_2.c, -(~min(vec4<i32>(1i, -1i, var_2.c.x, var_1.x), _wgslsmith_mod_vec4_i32(vec4<i32>(var_1.x, var_2.c.x, var_2.c.x, -283i), var_2.c))), var_3.a);
    let var_6 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-554f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_3.b)))), _wgslsmith_f_op_f32(step(1000f, var_3.b))), vec3<f32>(var_4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1042f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + var_3.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x, 0i, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(116f * var_4.x))) + _wgslsmith_f_op_f32(exp2(var_4.x))), var_6.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_4.x)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_6.yy - vec2<f32>(var_3.b, _wgslsmith_f_op_f32(var_6.x + var_3.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1161f, var_3.b)))), 1347u);
}

