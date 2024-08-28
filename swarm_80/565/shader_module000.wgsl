struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14> = array<i32, 14>(-23787i, -97110i, 36071i, 0i, -1i, 848i, -1i, i32(-2147483648), -29486i, 2147483647i, -6151i, 20563i, 35865i, -17678i);

var<private> global1: array<f32, 19> = array<f32, 19>(-176f, 475f, -811f, 709f, -630f, -1123f, -1857f, -454f, -1000f, 183f, 319f, -120f, -3412f, 577f, 470f, -1313f, -789f, -619f, 123f);

var<private> global2: u32 = 4294967295u;

var<private> global3: Struct_2 = Struct_2(Struct_1(301f, vec4<f32>(1529f, 1127f, -547f, -1254f), -15121i, -808f, -1289f));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> bool {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -266f), vec4<f32>(arg_0.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.d) - global1[_wgslsmith_index_u32(4294967295u, 19u)]), global3.a.e, _wgslsmith_f_op_f32(abs(1368f))), ~(-17963i), -154f, -1596f));
    var var_1 = ~vec4<i32>(~1i, -select(firstTrailingBit(-54957i), ~global3.a.c, 551f == global1[_wgslsmith_index_u32(45551u, 19u)]), ~var_0.a.c, _wgslsmith_dot_vec2_i32(~_wgslsmith_clamp_vec2_i32(vec2<i32>(global3.a.c, -41151i), vec2<i32>(-42597i, 29597i), vec2<i32>(u_input.a, -2147483647i)), ~_wgslsmith_mod_vec2_i32(vec2<i32>(arg_1, 2147483647i), vec2<i32>(0i, -21145i))));
    let var_2 = Struct_4(false, 751f, Struct_3(vec2<i32>(arg_1, -13504i)));
    global2 = firstTrailingBit(_wgslsmith_mult_u32(~(~(~34254u)), 1u));
    var var_3 = vec4<f32>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~min(vec2<u32>(0u, 63282u), vec2<u32>(4294967295u, 1u)), select(abs(vec2<u32>(0u, 2122u)), reverseBits(vec2<u32>(88580u, 0u)), var_2.a | var_2.a)), ~44343u), 19u)], global1[_wgslsmith_index_u32(0u, 19u)], _wgslsmith_f_op_f32(-arg_0.a.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1645f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a.b.x))))));
    return !var_2.a;
}

fn func_2(arg_0: f32) -> Struct_4 {
    let var_0 = Struct_3(-vec2<i32>(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(~13336u, 14u)], ~global0[_wgslsmith_index_u32(0u, 14u)]), global3.a.c));
    global0 = array<i32, 14>();
    var var_1 = vec4<bool>(true, all(select(vec3<bool>(all(vec2<bool>(true, false)), -1i < u_input.a, false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true))), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), false), func_3(Struct_2(global3.a), global0[_wgslsmith_index_u32(1u, 14u)])), vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(16406u, 19u)] <= global1[_wgslsmith_index_u32(73942u, 19u)]))), !all(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), false)));
    global1 = array<f32, 19>();
    var_1 = !select(vec4<bool>(true, true, _wgslsmith_f_op_f32(max(global3.a.b.x, global3.a.e)) == _wgslsmith_f_op_f32(1076f + 323f), select(false, true, var_1.x && var_1.x)), !vec4<bool>(!var_1.x, var_1.x, true, var_1.x), !var_1.x);
    return Struct_4(var_1.x, 1000f, Struct_3(reverseBits(~reverseBits(vec2<i32>(-20671i, 31289i)))));
}

fn func_1() -> Struct_4 {
    var var_0 = global3.a.b.zxz;
    let var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(761f - 444f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(371f, global1[_wgslsmith_index_u32(1u, 19u)], true))))));
    global3 = Struct_2(global3.a);
    var_0 = vec3<f32>(var_1.b, -1031f, var_1.b);
    global3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-202f * -117f)))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.a.b.x, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(77300u, 19u)] * 1000f), 362f, -237f))), firstLeadingBit(~global3.a.c), global1[_wgslsmith_index_u32(~(~(~4294967295u)), 19u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global3.a.e, -245f))), -1000f)));
    return Struct_4(false, global3.a.d, func_2(_wgslsmith_f_op_f32(-1875f + _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(77330u, 38671u), 19u)])))).c);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: f32, arg_3: vec4<bool>) -> u32 {
    global0 = array<i32, 14>();
    let var_0 = arg_1.c.a;
    global3 = arg_0;
    global2 = _wgslsmith_mult_u32(select(firstTrailingBit(abs(55086u)), ~abs(41315u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 56209u), vec2<u32>(1u, 17927u)) > _wgslsmith_mod_u32(4294967295u, 21038u)), 0u) ^ ~(~_wgslsmith_mod_u32(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 29034u), vec2<u32>(4294967295u, 4294967295u))));
    var var_1 = Struct_3(countOneBits(vec2<i32>(-2147483647i, func_1().c.a.x)));
    return _wgslsmith_div_u32(~_wgslsmith_sub_u32(min(14921u, 64824u), 1u) << ((1u >> (_wgslsmith_sub_u32(4294967295u, firstTrailingBit(59406u)) % 32u)) % 32u), firstLeadingBit(4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = max(~75987u, _wgslsmith_sub_u32(~(~abs(27593u)), _wgslsmith_mult_u32(func_4(Struct_2(Struct_1(-1111f, global3.a.b, 2147483647i, global3.a.d, -1033f)), func_1(), _wgslsmith_f_op_f32(ceil(-1394f)), vec4<bool>(true, true, true, false)), abs(1u))));
    global1 = array<f32, 19>();
    var var_0 = ~_wgslsmith_clamp_vec4_u32(reverseBits(reverseBits(~vec4<u32>(81715u, 4294967295u, 54410u, 67516u))), min(~abs(vec4<u32>(0u, 1u, 0u, 103101u)), vec4<u32>(36885u, 0u, ~26546u, 4294967295u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 0u, 15548u, 53414u), ~select(vec4<u32>(81672u, 16745u, 42715u, 16280u), vec4<u32>(36138u, 20410u, 1u, 71738u), false)));
    global1 = array<f32, 19>();
    let var_1 = Struct_4(0i <= global0[_wgslsmith_index_u32(var_0.x, 14u)], _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(reverseBits(~(~var_0.x)), 19u)])), Struct_3(_wgslsmith_add_vec2_i32(~vec2<i32>(u_input.a, u_input.a), abs(vec2<i32>(-13914i, 223i)))));
    var var_2 = global3.a;
    var var_3 = -34794i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_1.b)))), -717f, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~58056u, 47664u >> (1u % 32u), 1u), 19u)])), ~((-vec4<i32>(0i, global3.a.c, 0i, var_1.c.a.x) & vec4<i32>(u_input.a, global3.a.c, var_1.c.a.x, -52399i)) & (-vec4<i32>(-25514i, var_2.c, -2147483647i, var_1.c.a.x) | vec4<i32>(var_2.c, var_2.c, u_input.a, var_2.c))), ~_wgslsmith_dot_vec4_i32(~(-vec4<i32>(-31951i, -1i, 1i, var_1.c.a.x)), vec4<i32>(max(-42761i, global0[_wgslsmith_index_u32(0u, 14u)]), ~global0[_wgslsmith_index_u32(4294967295u, 14u)], -1i, _wgslsmith_mod_i32(var_2.c, u_input.a))), _wgslsmith_dot_vec4_i32(-vec4<i32>(reverseBits(-24313i), var_1.c.a.x, _wgslsmith_dot_vec2_i32(var_1.c.a, var_1.c.a), 0i), -select(vec4<i32>(global3.a.c, -1i, -1i, var_1.c.a.x) ^ vec4<i32>(-9225i, global3.a.c, global3.a.c, 17517i), abs(vec4<i32>(0i, 0i, var_1.c.a.x, 2147483647i)), select(vec4<bool>(var_1.a, var_1.a, true, var_1.a), vec4<bool>(var_1.a, var_1.a, true, var_1.a), vec4<bool>(var_1.a, false, false, var_1.a)))));
}

