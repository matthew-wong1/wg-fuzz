struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec2<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(2147483647i, 2147483647i), vec3<u32>(4294967295u, 74290u, 54969u));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    global0 = Struct_1(max(~u_input.a & (vec2<i32>(14989i, 17127i) | (vec2<i32>(0i, -1511i) & vec2<i32>(global0.a.x, 40316i))), _wgslsmith_sub_vec2_i32(-global0.a, vec2<i32>(_wgslsmith_dot_vec2_i32(global0.a, global0.a), global0.a.x << (u_input.c % 32u)))), ~reverseBits(vec3<u32>(4294967295u, global0.b.x, u_input.c) >> (vec3<u32>(u_input.c, u_input.c, 4294967295u) % vec3<u32>(32u))));
    var var_0 = firstLeadingBit(vec4<i32>(-1i, u_input.a.x, -2103i, -41306i >> (min(~global0.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.x, 0u, u_input.c), global0.b)) % 32u)));
    let var_1 = Struct_1(select((min(vec2<i32>(0i, u_input.a.x), global0.a) >> (vec2<u32>(global0.b.x, 4294967295u) % vec2<u32>(32u))) & global0.a, ~max(countOneBits(vec2<i32>(u_input.a.x, 10064i)), u_input.a), true), abs(vec3<u32>(u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 5840u, global0.b.x, 1241u) << (vec4<u32>(0u, global0.b.x, 13834u, u_input.c) % vec4<u32>(32u)), ~vec4<u32>(72907u, 1u, 31831u, global0.b.x)), 1u)));
    var var_2 = Struct_2(!vec3<bool>(true, true && any(vec4<bool>(false, false, true, true)), var_0.x == u_input.a.x), false != any(vec2<bool>(true, true)), ~u_input.c, select(~_wgslsmith_add_i32(u_input.b, 1i), -2147483647i, false));
    var var_3 = var_1;
    return global0.b.x >> (firstLeadingBit(var_1.b.x) % 32u);
}

fn func_2(arg_0: Struct_3) -> f32 {
    let var_0 = firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u, ~max(7007u, 33594u), ~(4383u >> (arg_0.c.x % 32u))), abs(1u)));
    var var_1 = ~(vec3<u32>(_wgslsmith_div_u32(func_3(), ~var_0), 37437u, global0.b.x) ^ (select(vec3<u32>(var_0, 60291u, 0u), vec3<u32>(23648u, 10276u, 4294967295u) >> (global0.b % vec3<u32>(32u)), arg_0.a.b) >> (vec3<u32>(0u, 4294967295u >> (u_input.c % 32u), 0u) % vec3<u32>(32u))));
    let var_2 = vec2<u32>(u_input.c, _wgslsmith_dot_vec2_u32(~select(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 31813u), var_1.zx, vec2<u32>(1u, arg_0.c.x)), vec2<u32>(47627u, var_0), arg_0.a.a.xx), arg_0.c));
    let var_3 = Struct_1(u_input.a, (~(~vec3<u32>(4294967295u, var_2.x, var_0)) << (~(~vec3<u32>(1u, var_0, u_input.c)) % vec3<u32>(32u))) | vec3<u32>(firstTrailingBit(_wgslsmith_add_u32(0u, 1u)), firstLeadingBit(~var_0), global0.b.x));
    global0 = var_3;
    return -154f;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_1, arg_3: f32) -> vec2<i32> {
    let var_0 = arg_2.b;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b + _wgslsmith_f_op_f32(-arg_1.b)));
    let var_2 = arg_2;
    global0 = arg_2;
    var var_3 = !arg_1.a.a.x;
    return select(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -(vec2<i32>(arg_2.a.x, u_input.a.x) | vec2<i32>(arg_2.a.x, -22087i)), _wgslsmith_add_vec2_i32(select(global0.a, vec2<i32>(-40025i, u_input.b), arg_1.a.a.x) >> ((vec2<u32>(var_2.b.x, 0u) | arg_1.c) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(max(arg_2.a, u_input.a), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.d, 1688i), u_input.a)))), arg_2.a, select(arg_1.a.a.zx, !arg_0.a.xy, !select(select(arg_1.a.a.zy, arg_0.a.yx, vec2<bool>(false, true)), arg_1.a.a.yy, arg_1.a.a.zx)));
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    global0 = Struct_1(_wgslsmith_mult_vec2_i32(func_4(arg_0, Struct_3(arg_0, _wgslsmith_div_f32(-554f, 228f), firstTrailingBit(global0.b.zy), _wgslsmith_f_op_f32(func_2(Struct_3(arg_0, -1317f, vec2<u32>(u_input.c, 4294967295u), 1000f)))), Struct_1(vec2<i32>(10869i, u_input.a.x) ^ vec2<i32>(arg_0.d, arg_0.d), firstLeadingBit(vec3<u32>(57900u, arg_0.c, 15958u))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(207f))))), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 178i) & u_input.a, vec2<i32>(-1i, 5021i)), vec2<i32>(-1i, global0.a.x), _wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(arg_0.d, arg_0.d)))), countOneBits(global0.b));
    var var_0 = any(select(vec2<bool>(all(vec2<bool>(arg_0.a.x, arg_0.a.x)), true), !(!vec2<bool>(arg_0.a.x, arg_0.b)), true)) && false;
    var var_1 = -1562f;
    global0 = Struct_1(u_input.a, abs(vec3<u32>(u_input.c, firstTrailingBit(global0.b.x), 18696u)));
    let var_2 = reverseBits(global0.b.xx);
    return Struct_3(Struct_2(vec3<bool>(arg_0.b, any(vec3<bool>(true, true, true)), !any(vec4<bool>(false, false, true, arg_0.a.x))), !(-2147483647i <= firstLeadingBit(u_input.a.x)), ~1u, global0.a.x), 1204f, ~global0.b.xz, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(1118f, -165f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(195f, -217f)))), 121f));
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> vec3<bool> {
    let var_0 = func_1(Struct_2(vec3<bool>(arg_0.a.a.x && true, arg_0.a.b, arg_0.a.a.x), arg_0.a.a.x, 45533u, -1i)).a.d == func_1(arg_0.a).a.d;
    global0 = arg_2;
    let var_1 = select(arg_0.a.a.yz, arg_0.a.a.xz, var_0);
    let var_2 = Struct_2(select(arg_0.a.a, !vec3<bool>(!var_1.x, true, true), !vec3<bool>(23352i <= arg_2.a.x, true, true)), true, abs(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(arg_2.b.zy, global0.b.xz), vec2<u32>(arg_2.b.x, 1u))) | global0.b.x, -2147483647i);
    global0 = Struct_1(abs(~(global0.a ^ vec2<i32>(2147483647i, 23943i))) & vec2<i32>(func_1(func_1(Struct_2(var_2.a, var_1.x, 0u, 1590i)).a).a.d, -35922i), max(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(select(vec3<u32>(41054u, arg_3, arg_2.b.x), arg_2.b, false), ~global0.b), vec3<u32>(1u, firstLeadingBit(10153u), ~global0.b.x)), ~global0.b));
    return vec3<bool>(true, true, true);
}

fn func_6(arg_0: i32, arg_1: vec3<bool>) -> u32 {
    global0 = Struct_1(u_input.a, select(_wgslsmith_div_vec3_u32(global0.b, firstTrailingBit(global0.b)), ~_wgslsmith_div_vec3_u32(~global0.b, global0.b), arg_1.x));
    var var_0 = abs(_wgslsmith_div_vec2_u32(vec2<u32>(~u_input.c, u_input.c), reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 4294967295u), _wgslsmith_clamp_vec2_u32(global0.b.yy, vec2<u32>(0u, u_input.c), vec2<u32>(global0.b.x, u_input.c))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -504f, -1000f, 1000f), vec4<f32>(-1220f, -435f, 601f, -249f), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false)))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(294f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1261f) - -1000f), _wgslsmith_f_op_f32(-255f - -700f), _wgslsmith_f_op_f32(f32(-1f) * -171f)) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -906f), 1224f, _wgslsmith_f_op_f32(abs(205f)), -2902f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -461f, 1673f, 400f), vec4<f32>(630f, 942f, 413f, -249f), vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(var_1.x - -524f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-625f))) * 311f), _wgslsmith_f_op_f32(-1348f * -1181f), func_1(Struct_2(vec3<bool>(false, false, arg_1.x), 117302u <= var_0.x, var_0.x, u_input.b)).d)));
    var_1 = vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(func_1(Struct_2(vec3<bool>(arg_1.x, true, false), false, global0.b.x, 9184i)).a).b + _wgslsmith_f_op_f32(var_1.x + var_1.x))), -1145f, _wgslsmith_f_op_f32(max(-1676f, _wgslsmith_f_op_f32(-278f * var_1.x))));
    return global0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_6(-43055i, func_5(func_1(Struct_2(vec3<bool>(true, true, true), true, global0.b.x, u_input.a.x)), ~(global0.a.x & u_input.a.x), Struct_1(u_input.a, global0.b), u_input.c));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(798f - -962f), -1000f, true)), 1212f)) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1078f, 302f), vec2<f32>(-1251f, -253f)) + vec2<f32>(1f, 1f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(472f)) + -1870f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-818f - 288f), -712f, true))))));
    var_0 = _wgslsmith_dot_vec4_u32(~(~(~_wgslsmith_div_vec4_u32(vec4<u32>(9229u, global0.b.x, 72173u, u_input.c), vec4<u32>(u_input.c, global0.b.x, 33238u, u_input.c)))), ~(~vec4<u32>(global0.b.x, 29957u, u_input.c, 4294967295u) << (vec4<u32>(~1u, reverseBits(u_input.c), ~u_input.c, ~0u) % vec4<u32>(32u))));
    let var_2 = any(!vec4<bool>(all(vec4<bool>(true, true, true, true)), true, ~13214u > _wgslsmith_add_u32(u_input.c, 1u), any(vec3<bool>(true, true, false))));
    var var_3 = Struct_3(func_1(Struct_2(!func_1(Struct_2(vec3<bool>(false, var_2, false), false, global0.b.x, -2147483647i)).a.a, false, global0.b.x, _wgslsmith_add_i32(global0.a.x, ~global0.a.x))).a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1889f)))))), countOneBits(firstLeadingBit(vec2<u32>(func_3(), u_input.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(148f - var_1.x), global0.a.x < 33068i)), -606f)), -1037f));
    var_3 = Struct_3(Struct_2(var_3.a.a, true, ~(~1u), ~1664i), var_1.x, global0.b.yz & firstLeadingBit(~var_3.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1943f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1240f)) * _wgslsmith_f_op_f32(step(var_3.d, -485f)))) * _wgslsmith_f_op_f32(ceil(var_3.d))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.d, _wgslsmith_f_op_f32(sign(var_1.x)), var_3.d, _wgslsmith_f_op_f32(-var_3.d))))));
}

