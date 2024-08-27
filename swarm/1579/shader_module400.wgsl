struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: Struct_2,
    d: Struct_3,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<i32>, 14> = array<vec4<i32>, 14>(vec4<i32>(0i, -1i, 1i, 14680i), vec4<i32>(2147483647i, 1i, -61867i, 0i), vec4<i32>(-19521i, i32(-2147483648), -63207i, 34840i), vec4<i32>(-18915i, -53i, 29797i, 1i), vec4<i32>(0i, 27229i, 2147483647i, 0i), vec4<i32>(0i, -77668i, 68376i, 0i), vec4<i32>(-60214i, -59923i, 2147483647i, 16692i), vec4<i32>(2147483647i, 2147483647i, -31449i, 45954i), vec4<i32>(3555i, 1i, -17440i, -1i), vec4<i32>(-15221i, 5998i, -13890i, 10039i), vec4<i32>(-51540i, -5454i, 19144i, 26271i), vec4<i32>(2147483647i, -25776i, 5474i, 0i), vec4<i32>(-1i, 2147483647i, -1i, 1i), vec4<i32>(0i, 29061i, 26448i, 408i));

var<private> global2: vec4<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> f32 {
    let var_0 = true;
    var var_1 = Struct_3(0u, !vec3<bool>(!all(vec4<bool>(arg_1, false, arg_1, arg_1)), true, !select(var_0, false, false)));
    var var_2 = Struct_1(_wgslsmith_sub_vec3_i32(u_input.a, _wgslsmith_mult_vec3_i32(vec3<i32>(-36874i, -1i, -arg_0.a.x), abs(arg_0.a))));
    var var_3 = -1i;
    global0 = 4294967295u >> (_wgslsmith_add_u32(max(reverseBits(countOneBits(2033u)), u_input.b.x), ~u_input.c.x) % 32u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1198f))) * global2.x);
}

fn func_2(arg_0: Struct_4) -> bool {
    var var_0 = all(vec2<bool>(arg_0.c.a, arg_0.d.b.x)) & false;
    global0 = reverseBits(1u);
    global1 = array<vec4<i32>, 14>();
    global2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, _wgslsmith_f_op_f32(min(-893f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(Struct_1(u_input.a), false)))))), 1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(Struct_1(vec3<i32>(u_input.d.x, -12608i, u_input.d.x)), arg_0.d.b.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.x, -675f, 1339f, 1927f))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(772f, -1343f, -175f, arg_0.e.x))))))));
    var var_1 = Struct_2(arg_0.c.a);
    return all(arg_0.a.yw);
}

fn func_4(arg_0: vec2<f32>) -> Struct_3 {
    global1 = array<vec4<i32>, 14>();
    let var_0 = select(!vec4<bool>(all(vec2<bool>(true, true)), !any(vec3<bool>(false, false, false)), true, true), vec4<bool>(true, true, true, true), -2147483647i != -reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -130i, -2147483647i), global1[_wgslsmith_index_u32(u_input.b.x, 14u)])));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(sign(1036f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.x)))));
    var var_2 = Struct_3(u_input.b.x, !var_0.xxy);
    var var_3 = reverseBits(u_input.a.x);
    return Struct_3(~109805u, var_2.b);
}

fn func_5(arg_0: Struct_3, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = select(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(643f, global2.x), global2.xy))))).b, func_4(_wgslsmith_f_op_vec2_f32(-global2.wx)).b, !(true | any(select(vec4<bool>(true, arg_0.b.x, arg_0.b.x, true), vec4<bool>(true, false, false, arg_0.b.x), vec4<bool>(arg_0.b.x, arg_0.b.x, true, arg_0.b.x)))));
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, 1000f, global2.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(827f, 102f, 1707f, -583f) - vec4<f32>(global2.x, 680f, 1446f, -704f))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(1001f, -924f, global2.x, global2.x), vec4<f32>(global2.x, global2.x, 301f, 1038f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.x, 112f, 1379f, global2.x))))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.x, global2.x)) + _wgslsmith_f_op_f32(round(875f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(select(global2.x, _wgslsmith_f_op_f32(exp2(global2.x)), true))), global2.x, _wgslsmith_f_op_f32(-global2.x)));
    var var_1 = abs((firstTrailingBit(u_input.b) & ~vec4<u32>(100800u, 77317u, 36641u, arg_0.a)) & ~u_input.b);
    var var_2 = vec3<bool>(!(!any(select(arg_0.b, arg_0.b, false))), arg_0.b.x, arg_0.b.x);
    let var_3 = u_input.b.xxy;
    return Struct_1(select(u_input.a ^ u_input.a, -u_input.a >> (vec3<u32>(30734u, ~1u, u_input.b.x) % vec3<u32>(32u)), arg_0.b));
}

fn func_1() -> Struct_3 {
    global1 = array<vec4<i32>, 14>();
    let var_0 = u_input.c ^ u_input.c;
    let var_1 = func_5(func_4(_wgslsmith_f_op_vec2_f32(select(global2.wx, global2.yw, vec2<bool>(func_2(Struct_4(vec4<bool>(true, true, true, true), Struct_3(1u, vec3<bool>(true, true, true)), Struct_2(false), Struct_3(13499u, vec3<bool>(true, true, true)), global2.zx)), true)))), select(~vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a.yz, u_input.d), u_input.a.x), vec2<i32>(firstTrailingBit(15429i), i32(-1i) * -u_input.a.x), true));
    global1 = array<vec4<i32>, 14>();
    return func_4(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(global2.yy)))), vec2<f32>(global2.x, global2.x))))));
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_3) -> Struct_4 {
    let var_0 = arg_0.x;
    var var_1 = Struct_1(u_input.a);
    global1 = array<vec4<i32>, 14>();
    var_1 = Struct_1(~_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.a.x, 2147483647i, var_1.a.x << (12150u % 32u)), _wgslsmith_add_vec3_i32(countOneBits(u_input.a), u_input.a)));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(arg_0.x, var_0, arg_1.b.x)), _wgslsmith_f_op_f32(arg_0.x + var_0), 740f, 1218f))) + vec4<f32>(_wgslsmith_f_op_f32(floor(var_0)), 745f, _wgslsmith_f_op_f32(select(global2.x, _wgslsmith_f_op_f32(f32(-1f) * -1379f), arg_1.b.x)), _wgslsmith_f_op_f32(round(var_0))));
    return Struct_4(vec4<bool>(true, true, true, true), Struct_3((arg_1.a & max(0u, u_input.c.x)) << (~(1u ^ arg_1.a) % 32u), vec3<bool>(true, arg_1.b.x, any(!vec4<bool>(false, arg_1.b.x, true, false)))), Struct_2(false), func_4(_wgslsmith_f_op_vec2_f32(sign(arg_0.zz))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.zy * vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(u_input.a), arg_1.b.x)), 1347f))));
}

fn func_7(arg_0: i32, arg_1: Struct_4, arg_2: Struct_4) -> Struct_3 {
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.e.x)), 302f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global2.x)), _wgslsmith_f_op_f32(-arg_1.e.x)))));
    global1 = array<vec4<i32>, 14>();
    global0 = firstTrailingBit(min(u_input.b.x, _wgslsmith_add_u32(min(501u, ~arg_1.d.a), arg_1.d.a)));
    global1 = array<vec4<i32>, 14>();
    let var_0 = arg_1.a;
    return Struct_3(79004u, func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.e.x, arg_1.e.x), _wgslsmith_f_op_vec2_f32(sign(global2.wz))))).b);
}

fn func_8(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: u32) -> bool {
    let var_0 = abs(_wgslsmith_mult_vec2_i32(u_input.a.xx, vec2<i32>(-1i) * -(vec2<i32>(u_input.d.x, u_input.a.x) ^ u_input.a.zz)));
    var var_1 = Struct_1(arg_1.yyz);
    let var_2 = func_5(Struct_3(arg_0.a, !vec3<bool>(true, true, func_2(Struct_4(vec4<bool>(arg_0.b.x, arg_0.b.x, true, arg_0.b.x), Struct_3(4294967295u, vec3<bool>(arg_0.b.x, false, false)), Struct_2(false), arg_0, global2.wx)))), u_input.d);
    var var_3 = 1i;
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1145f, 1293f, -1262f, 353f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-1410f, -991f, global2.x, -839f), vec4<f32>(-580f, global2.x, 584f, 366f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.x, -1000f, 565f, global2.x))), vec4<f32>(-999f, global2.x, global2.x, 690f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, -1757f, 944f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-788f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1050f * -1652f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - -432f) * _wgslsmith_f_op_f32(-global2.x)), global2.x)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 14>();
    var var_0 = vec2<bool>(true, func_8(func_7(~(~u_input.a.x), func_6(vec4<f32>(1011f, global2.x, global2.x, 1146f), func_1()), Struct_4(func_6(vec4<f32>(452f, 2171f, global2.x, -764f), Struct_3(0u, vec3<bool>(false, false, false))).a, func_4(global2.yz), Struct_2(false), func_1(), _wgslsmith_f_op_vec2_f32(min(global2.wy, global2.yw)))), vec4<i32>(-2147483647i & u_input.d.x, u_input.d.x, -2147483647i, _wgslsmith_mult_i32(~1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-31839i, u_input.d.x, -1i), u_input.a))), ~u_input.b.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2044f - global2.x), 443f)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -424f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-694f))))))));
    let var_2 = Struct_2(true);
    global0 = ~func_7(u_input.d.x, Struct_4(vec4<bool>(var_0.x, -2147483647i > u_input.a.x, false, !var_2.a), Struct_3(_wgslsmith_div_u32(u_input.c.x, 4294967295u), func_1().b), var_2, func_4(global2.xy), _wgslsmith_f_op_vec2_f32(floor(global2.xy))), Struct_4(!func_6(vec4<f32>(global2.x, -1775f, 1749f, -401f), Struct_3(7777u, vec3<bool>(var_2.a, var_2.a, false))).a, func_4(vec2<f32>(var_1.x, 975f)), var_2, Struct_3(_wgslsmith_dot_vec3_u32(u_input.c.wzw, vec3<u32>(19157u, u_input.b.x, u_input.b.x)), vec3<bool>(true, true, var_2.a)), global2.ww)).a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-353f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-227f - _wgslsmith_f_op_f32(trunc(-1263f))), _wgslsmith_f_op_f32(418f + global2.x))), _wgslsmith_f_op_f32(f32(-1f) * -1686f)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(func_6(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, var_1.x, -1453f, -351f), vec4<f32>(var_1.x, var_1.x, -1097f, -387f))), Struct_3(u_input.c.x, vec3<bool>(var_2.a, false, var_2.a))).e, vec2<f32>(_wgslsmith_f_op_f32(-230f + -302f), -158f)))), vec3<i32>(-1i) * -(vec3<i32>(-1i, u_input.a.x, u_input.d.x) & firstLeadingBit(vec3<i32>(0i, -66381i, -39217i))), _wgslsmith_f_op_f32(step(1283f, _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(floor(1882f))))));
}

