struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: u32,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10>;

var<private> global1: array<f32, 28> = array<f32, 28>(-1618f, -273f, 150f, 2095f, 717f, -291f, -323f, -866f, 961f, 700f, -1481f, 420f, 1411f, 668f, 649f, 264f, 714f, 668f, 1026f, 112f, 1170f, -1337f, 2020f, -728f, -843f, -368f, 2043f, -502f);

var<private> global2: i32;

var<private> global3: u32 = 27088u;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec4<f32> {
    global1 = array<f32, 28>();
    let var_0 = Struct_1(-1000f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(42021u, 28u)])), _wgslsmith_f_op_f32(sign(-309f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(30425u, 28u)] - global1[_wgslsmith_index_u32(u_input.a.x, 28u)]), -1339f))), 0u);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 28u)], 111f, var_0.b.x, global1[_wgslsmith_index_u32(u_input.c.x, 28u)])), var_0.b))));
    var var_2 = var_0.c;
    var var_3 = Struct_2(var_0, u_input.b.xz, ~(~4294967295u), _wgslsmith_f_op_f32(-1004f - -1745f), Struct_1(-383f, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(max(432f, global1[_wgslsmith_index_u32(var_0.c, 28u)])), _wgslsmith_f_op_f32(select(1000f, -1000f, false)), _wgslsmith_f_op_f32(f32(-1f) * -2451f), _wgslsmith_f_op_f32(var_0.a - var_0.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.b.x, -453f, global1[_wgslsmith_index_u32(u_input.c.x, 28u)], var_1.x))) - var_0.b), global0[_wgslsmith_index_u32(114244u, 10u)])), var_0.c));
    return _wgslsmith_f_op_vec4_f32(-var_0.b);
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> vec3<i32> {
    var var_0 = ~max(abs(select(min(vec3<i32>(-2147483647i, u_input.b.x, u_input.b.x), u_input.b.yxy), abs(u_input.b.yzx), select(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 10u)], global0[_wgslsmith_index_u32(5696u, 10u)]), vec3<bool>(true, false, arg_1), vec3<bool>(arg_1, global0[_wgslsmith_index_u32(arg_2.c, 10u)], true)))), u_input.b.zzx);
    let var_1 = arg_2;
    let var_2 = Struct_2(arg_2, ~select(u_input.b.wy, ~_wgslsmith_div_vec2_i32(vec2<i32>(var_0.x, u_input.b.x), vec2<i32>(var_0.x, u_input.b.x)), vec2<bool>(arg_1, !global0[_wgslsmith_index_u32(15119u, 10u)])), abs(arg_2.c), 949f, var_1);
    global2 = select(_wgslsmith_dot_vec3_i32(~countOneBits(firstLeadingBit(u_input.b.yzy)), _wgslsmith_div_vec3_i32(u_input.b.xwz & max(vec3<i32>(81351i, var_0.x, 5012i), u_input.b.zyz), -firstLeadingBit(u_input.b.xxw))), 1i, !all(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 10u)] & false, select(global0[_wgslsmith_index_u32(14300u, 10u)], false, arg_1), true)));
    let var_3 = -var_0.x;
    return _wgslsmith_div_vec3_i32(u_input.b.zzz, _wgslsmith_div_vec3_i32(u_input.b.xwy, abs(max(u_input.b.yyy, u_input.b.zxy))) << (select(u_input.a.xxw, _wgslsmith_div_vec3_u32(u_input.a.zwz, vec3<u32>(var_2.a.c, u_input.c.x, 56771u)) & firstTrailingBit(u_input.a.wzx), !select(vec3<bool>(global0[_wgslsmith_index_u32(var_2.c, 10u)], true, true), vec3<bool>(global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(0u, 10u)], false), vec3<bool>(global0[_wgslsmith_index_u32(17932u, 10u)], true, arg_1))) % vec3<u32>(32u)));
}

fn func_2(arg_0: vec3<i32>, arg_1: u32) -> Struct_2 {
    global3 = arg_1;
    var var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(16695u, 28u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.d, 28u)]) - -210f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.d, 28u)])) - global1[_wgslsmith_index_u32(41520u, 28u)]))), all(vec4<bool>(false, global0[_wgslsmith_index_u32(abs(16498u), 10u)], true, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_1, u_input.d, arg_1), vec4<u32>(arg_1, 1u, u_input.d, 24215u)) <= (arg_1 >> (0u % 32u)))), Struct_1(_wgslsmith_f_op_f32(436f + -1413f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(6343u, 28u)], global1[_wgslsmith_index_u32(34681u, 28u)], global1[_wgslsmith_index_u32(1u, 28u)], global1[_wgslsmith_index_u32(2894u, 28u)]) - vec4<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 28u)], -100f, 126f, 1318f)) * vec4<f32>(1000f, global1[_wgslsmith_index_u32(u_input.a.x, 28u)], 737f, 161f))), min(abs(_wgslsmith_div_u32(1u, u_input.d)), ~18557u)));
    var_0 = u_input.b.wwy | -vec3<i32>(-(var_0.x & var_0.x), var_0.x, arg_0.x);
    let var_1 = false;
    let var_2 = u_input.a.zyz;
    return Struct_2(Struct_1(global1[_wgslsmith_index_u32(42499u, 28u)], _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1058f, global1[_wgslsmith_index_u32(48793u, 28u)], 152f, global1[_wgslsmith_index_u32(u_input.c.x, 28u)]))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-745f, -187f, global1[_wgslsmith_index_u32(arg_1, 28u)], global1[_wgslsmith_index_u32(1u, 28u)]))))))), firstLeadingBit(4294967295u)), _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(select(~arg_0.xx, select(u_input.b.zw, u_input.b.xy, vec2<bool>(false, false)), false), -firstTrailingBit(var_0.xz)), abs(u_input.b.zz)), arg_1, _wgslsmith_f_op_f32(ceil(-684f)), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(904f + global1[_wgslsmith_index_u32(4294967295u, 28u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_3()), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(519f, global1[_wgslsmith_index_u32(1u, 28u)], global1[_wgslsmith_index_u32(u_input.a.x, 28u)], -1534f), vec4<f32>(192f, -149f, global1[_wgslsmith_index_u32(var_2.x, 28u)], 1723f))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 28u)], global1[_wgslsmith_index_u32(var_2.x, 28u)], global1[_wgslsmith_index_u32(arg_1, 28u)], global1[_wgslsmith_index_u32(u_input.c.x, 28u)]) + vec4<f32>(global1[_wgslsmith_index_u32(arg_1, 28u)], global1[_wgslsmith_index_u32(var_2.x, 28u)], 209f, global1[_wgslsmith_index_u32(var_2.x, 28u)]))), 56437u));
}

fn func_5(arg_0: Struct_2, arg_1: i32) -> f32 {
    let var_0 = select(true, -max(11107i, countOneBits(-2147483647i)) > _wgslsmith_dot_vec2_i32(vec2<i32>(50873i, abs(2147483647i)), -_wgslsmith_sub_vec2_i32(arg_0.b, u_input.b.zw)), select(!global0[_wgslsmith_index_u32(u_input.a.x, 10u)], global0[_wgslsmith_index_u32(1u, 10u)], !any(!vec4<bool>(false, true, global0[_wgslsmith_index_u32(51004u, 10u)], true))));
    global1 = array<f32, 28>();
    global2 = -countOneBits(~(-31706i) >> ((arg_0.c ^ ~4294967295u) % 32u));
    let var_1 = vec2<i32>(_wgslsmith_add_i32(select(-(i32(-1i) * -1i), -2147483647i, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~8348u, _wgslsmith_sub_u32(arg_0.c, 74033u)), 10u)]), 27493i), max(arg_1, arg_0.b.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.a)));
}

fn func_1() -> Struct_1 {
    let var_0 = countOneBits(u_input.a);
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_5(func_2(vec3<i32>(u_input.b.x, u_input.b.x, 38505i), 31361u), ~u_input.b.x)), -166f, any(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 10u)], true)))))));
    global0 = array<bool, 10>();
    global1 = array<f32, 28>();
    global0 = array<bool, 10>();
    return func_2(~u_input.b.xyy, _wgslsmith_add_u32(var_0.x, abs(~(~70109u)))).e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(), vec2<i32>(-(-2147483647i << (u_input.a.x % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b.ww)), 41451u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 28u)] * global1[_wgslsmith_index_u32(u_input.c.x, 28u)])))), Struct_1(-409f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-646f, global1[_wgslsmith_index_u32(4294967295u, 28u)], -896f, 470f) + vec4<f32>(global1[_wgslsmith_index_u32(0u, 28u)], global1[_wgslsmith_index_u32(u_input.c.x, 28u)], global1[_wgslsmith_index_u32(u_input.c.x, 28u)], -784f))), _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(27059u, 8732u)), ~(~vec2<u32>(u_input.d, 24541u)))));
    let var_1 = var_0.b.x;
    let var_2 = min(vec4<i32>(6066i, 1i, u_input.b.x, 26530i), select(firstLeadingBit(vec4<i32>(firstTrailingBit(var_0.b.x), ~u_input.b.x, _wgslsmith_mult_i32(var_1, 0i), -11519i)), vec4<i32>(u_input.b.x, u_input.b.x, min(-62737i, var_0.b.x), -2147483647i), select(vec4<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(1u, 10u)])), true, global0[_wgslsmith_index_u32(u_input.c.x, 10u)], global0[_wgslsmith_index_u32(~u_input.c.x, 10u)]), vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.c, u_input.a.x), vec2<u32>(0u, 30950u)), 10u)], false, var_0.a.c != 21993u, true), false)));
    let x = u_input.a;
    s_output = StorageBuffer(select(select(vec3<u32>(109435u, u_input.a.x, u_input.d), countOneBits(u_input.a.ywx), select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(u_input.c.x, 10u)], false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], global0[_wgslsmith_index_u32(var_0.c, 10u)], false), vec3<bool>(global0[_wgslsmith_index_u32(21969u, 10u)], global0[_wgslsmith_index_u32(72451u, 10u)], false))) ^ vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.a.c), vec2<u32>(0u, u_input.a.x)), 49774u, _wgslsmith_add_u32(var_0.a.c, u_input.c.x)), vec3<u32>(~_wgslsmith_clamp_u32(73756u, 0u, var_0.c), 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.d, 0u), vec3<u32>(var_0.a.c, u_input.d, 1u))), vec3<bool>(~var_0.e.c >= ~4294967295u, !any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 10u)], false, global0[_wgslsmith_index_u32(u_input.d, 10u)], global0[_wgslsmith_index_u32(3845u, 10u)])), var_0.e.a < _wgslsmith_f_op_f32(exp2(var_0.e.b.x)))), 40943u, 323f, vec3<i32>(~var_1 >> (var_0.a.c % 32u), func_2(vec3<i32>(reverseBits(-2147483647i), abs(var_0.b.x), 48441i), 11290u).b.x, 1i & -(var_1 ^ 44999i)));
}

