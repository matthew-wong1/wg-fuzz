struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec3<f32>,
    d: Struct_3,
    e: vec4<bool>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 31> = array<vec3<f32>, 31>(vec3<f32>(771f, -703f, 488f), vec3<f32>(-709f, 147f, 236f), vec3<f32>(-330f, -429f, -576f), vec3<f32>(561f, 495f, 1000f), vec3<f32>(-1244f, -503f, -717f), vec3<f32>(-638f, 1259f, 518f), vec3<f32>(1000f, -1578f, -1261f), vec3<f32>(-642f, -1000f, -1467f), vec3<f32>(-1000f, 1770f, 616f), vec3<f32>(668f, 495f, 325f), vec3<f32>(-454f, -561f, 326f), vec3<f32>(1677f, 340f, -1128f), vec3<f32>(-832f, 2322f, -428f), vec3<f32>(-2221f, -1059f, 381f), vec3<f32>(-860f, -1300f, 1198f), vec3<f32>(-2001f, -1025f, -625f), vec3<f32>(595f, 1110f, -1888f), vec3<f32>(-418f, 468f, -398f), vec3<f32>(-298f, 1817f, -840f), vec3<f32>(-170f, 1341f, -450f), vec3<f32>(-315f, -1061f, 875f), vec3<f32>(1000f, 871f, 561f), vec3<f32>(-285f, -1032f, -1112f), vec3<f32>(-1000f, -2091f, 1849f), vec3<f32>(-1760f, 420f, 1000f), vec3<f32>(-1079f, 254f, -442f), vec3<f32>(-434f, -1304f, 1000f), vec3<f32>(-1002f, -126f, -1589f), vec3<f32>(-334f, 639f, 1101f), vec3<f32>(798f, -1267f, -1000f), vec3<f32>(-725f, 1731f, 541f));

var<private> global1: array<f32, 32> = array<f32, 32>(174f, 858f, -430f, 440f, -663f, -1179f, 1581f, -311f, -695f, -218f, -655f, 1616f, 291f, -889f, -422f, -1618f, -1000f, 457f, 723f, 321f, 1183f, 1683f, 195f, -1000f, 527f, -786f, 131f, 134f, 1074f, 1508f, -244f, 865f);

var<private> global2: u32 = 1u;

var<private> global3: Struct_3;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2() -> u32 {
    global3 = Struct_3(select(vec4<bool>(true, !(global3.a.x || false), global3.a.x, _wgslsmith_clamp_u32(1u, u_input.c, 35600u) < ~u_input.c), global3.a, global3.a.x));
    var var_0 = !vec2<bool>(!global3.a.x, false | (u_input.d < (u_input.b & u_input.a.x)));
    var var_1 = max(u_input.a, u_input.a >> (vec2<u32>(4294967295u, 123625u) % vec2<u32>(32u)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(21440u, 32u)], global1[_wgslsmith_index_u32(21693u, 32u)]));
    global1 = array<f32, 32>();
    return ~u_input.c;
}

fn func_3(arg_0: Struct_5, arg_1: u32) -> Struct_3 {
    let var_0 = false;
    let var_1 = _wgslsmith_sub_vec2_u32(vec2<u32>(~countOneBits(arg_0.d), _wgslsmith_clamp_u32(1u, 1u, max(arg_1, 32288u))), vec2<u32>(u_input.c, ~(~4294967295u) ^ arg_0.d));
    var var_2 = vec4<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b, -41604i), arg_0.b.zzz), _wgslsmith_mod_i32(firstTrailingBit(u_input.b) ^ (-1i << (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1.x, arg_0.d), vec3<u32>(var_1.x, 15985u, arg_1)) % 32u)), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(arg_0.b, vec4<i32>(23131i, 1i, -1i, 0i)) >> (4294967295u % 32u), 2147483647i)), _wgslsmith_sub_i32(~(-23764i), u_input.a.x), arg_0.b.x | _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(-68830i, u_input.a.x), abs(-19897i)), firstLeadingBit(44940i)));
    var var_3 = select(select(!(!global3.a), select(!(!vec4<bool>(false, true, var_0, global3.a.x)), !(!vec4<bool>(true, global3.a.x, false, false)), !select(global3.a, vec4<bool>(false, true, false, false), global3.a)), var_0), select(vec4<bool>(any(select(vec3<bool>(false, true, global3.a.x), global3.a.zyw, var_0)), global3.a.x, any(vec3<bool>(false, false, global3.a.x)), all(select(global3.a, vec4<bool>(var_0, global3.a.x, true, var_0), true))), vec4<bool>(true, global3.a.x, !any(global3.a.yy), false), vec4<bool>(true, true, true, true)), true);
    let var_4 = countOneBits(func_2());
    return Struct_3(select(vec4<bool>(global3.a.x, (var_3.x && var_3.x) || all(vec4<bool>(true, global3.a.x, var_0, var_0)), global3.a.x, _wgslsmith_f_op_f32(-arg_0.c) != _wgslsmith_f_op_f32(947f + arg_0.c)), select(global3.a, select(select(vec4<bool>(global3.a.x, true, true, true), global3.a, global3.a), global3.a, false), !select(vec4<bool>(false, var_3.x, var_3.x, false), global3.a, var_0)), global3.a));
}

fn func_1() -> Struct_3 {
    global1 = array<f32, 32>();
    var var_0 = func_3(Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(577f, 520f)) - vec2<f32>(-1056f, _wgslsmith_f_op_f32(f32(-1f) * -218f))), _wgslsmith_mod_vec4_i32(~firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, u_input.b, 164i)), vec4<i32>(u_input.d, u_input.b, u_input.a.x, 0i) << (select(vec4<u32>(u_input.c, 21029u, u_input.c, u_input.c), vec4<u32>(61094u, u_input.c, u_input.c, 17686u), false) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(countOneBits(26475u), 32u)]))), 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(func_2(), u_input.c, 1u), abs(~(~vec3<u32>(70039u, 1u, u_input.c)))));
    return func_3(Struct_5(vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~u_input.c, 32u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-739f)) * -1373f)), vec4<i32>(-19724i, u_input.a.x, u_input.a.x ^ reverseBits(u_input.b), -42157i), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(func_2(), 32u)])), -252f)), ~4294967295u), countOneBits(4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_3(!global3.a);
    let var_0 = true;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 32u)]), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1147f, _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(1u, 32u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 32u)] - global1[_wgslsmith_index_u32(u_input.c, 32u)])))))), -512f);
    global3 = func_1();
    let var_2 = Struct_1(67080u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1575f, global1[_wgslsmith_index_u32(u_input.c, 32u)]))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-241f, var_1.x) * var_1.zy)), vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c, 32u)]), 1000f), ~(-26624i) >= u_input.a.x)), vec2<f32>(_wgslsmith_f_op_f32(exp2(var_1.x)), -2018f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(69643u, 32u)])));
}

