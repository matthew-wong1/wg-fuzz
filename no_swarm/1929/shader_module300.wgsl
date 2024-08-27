struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec3<u32>,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_5 {
    a: vec3<u32>,
    b: f32,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -441f;

var<private> global1: array<f32, 31> = array<f32, 31>(-126f, -1000f, -568f, 1401f, -268f, -210f, -222f, 702f, 133f, 146f, -1862f, -162f, -400f, -1460f, 2768f, 427f, 747f, 835f, 550f, 341f, -395f, 1057f, -1536f, -1387f, 1961f, -1000f, -525f, 974f, -2421f, 198f, 409f);

var<private> global2: vec2<bool> = vec2<bool>(false, true);

var<private> global3: vec3<u32>;

var<private> global4: vec4<u32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> f32 {
    global2 = !select(select(select(select(vec2<bool>(global2.x, false), vec2<bool>(global2.x, true), vec2<bool>(true, global2.x)), select(vec2<bool>(false, global2.x), vec2<bool>(false, global2.x), global2.x), select(vec2<bool>(global2.x, false), vec2<bool>(global2.x, global2.x), global2.x)), !select(vec2<bool>(global2.x, global2.x), vec2<bool>(true, global2.x), vec2<bool>(false, global2.x)), vec2<bool>(all(vec4<bool>(false, global2.x, global2.x, global2.x)), any(vec4<bool>(global2.x, global2.x, true, false)))), !select(vec2<bool>(global2.x, false), vec2<bool>(true, false), global2.x && global2.x), global2.x);
    let var_0 = !((~(~global3.x) | global3.x) < ~0u);
    let var_1 = -606f;
    let var_2 = Struct_4(_wgslsmith_add_u32(countOneBits(_wgslsmith_mod_u32(global4.x ^ 1u, firstLeadingBit(4294967295u))), ~(global4.x << ((global3.x & 1u) % 32u))), Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(185f, -1144f, global1[_wgslsmith_index_u32(8681u, 31u)]), vec3<f32>(var_1, var_1, global1[_wgslsmith_index_u32(u_input.a.x, 31u)]))), vec3<f32>(global1[_wgslsmith_index_u32(0u, 31u)], -1456f, global1[_wgslsmith_index_u32(global4.x, 31u)]), global2.x || var_0)), vec3<f32>(1000f, _wgslsmith_f_op_f32(var_1 + 285f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 31u)] * global1[_wgslsmith_index_u32(global3.x, 31u)])))), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(global3.zy, firstTrailingBit(u_input.a.yx)), vec2<u32>(~global3.x, global4.x)), ~u_input.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))) + var_1)), firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(global3.x, abs(13764u), ~global3.x), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(global4.ywz, u_input.a.zzx), global4.ywz), u_input.a.zyx)), vec4<bool>(!(!(global3.x != u_input.a.x)), _wgslsmith_f_op_f32(-var_1) > _wgslsmith_div_f32(_wgslsmith_div_f32(-1541f, 261f), _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(global3.x, 31u)]))), false, true), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_div_f32(-1246f, 285f), _wgslsmith_f_op_f32(sign(-354f))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-731f, 2304f, -625f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1[_wgslsmith_index_u32(17241u, 31u)], var_1, global1[_wgslsmith_index_u32(global4.x, 31u)]), vec3<f32>(global1[_wgslsmith_index_u32(489u, 31u)], var_1, var_1)))))), 1u, _wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.c.x, u_input.c.x ^ -8096i, _wgslsmith_sub_i32(u_input.d, -24360i), u_input.c.x), vec4<i32>(~(-26532i), u_input.d, -u_input.d, 1i)), global1[_wgslsmith_index_u32(max(min(global4.x, 52089u << (u_input.b % 32u)), 1u), 31u)]));
    global0 = var_2.e.a.x;
    return 1405f;
}

fn func_2() -> f32 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1415f, global1[_wgslsmith_index_u32(global4.x, 31u)], 298f))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(602f, global1[_wgslsmith_index_u32(global4.x, 31u)], -1200f), vec3<f32>(-701f, 951f, global1[_wgslsmith_index_u32(57266u, 31u)])))))), abs(~1u >> (global3.x % 32u)), 2147483647i, 1417f), vec3<i32>(~38115i, 28130i, firstTrailingBit(-2147483647i)), Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(u_input.a.x, 31u)])), -1317f, _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(58059u, 31u)]))))), ~_wgslsmith_add_u32(~23485u, _wgslsmith_div_u32(global3.x, 4294967295u)), 0i, 476f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-625f, 2355f, _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(u_input.b, 31u)])), _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(global4.x, 31u)])))), vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 31u)] + global1[_wgslsmith_index_u32(0u, 31u)])), -1603f, -246f)), -(firstLeadingBit(u_input.c) >> (~vec3<u32>(71162u, 0u, global3.x) % vec3<u32>(32u))));
    let var_1 = 1474f;
    let var_2 = global3.x;
    var_0 = Struct_3(Struct_1(var_0.c.a, global3.x, _wgslsmith_dot_vec3_i32(~(vec3<i32>(var_0.c.c, 2147483647i, 0i) ^ vec3<i32>(-25531i, var_0.e.x, u_input.d)), reverseBits(_wgslsmith_sub_vec3_i32(u_input.c, vec3<i32>(var_0.b.x, -2147483647i, u_input.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-469f - _wgslsmith_f_op_f32(-848f - var_0.c.a.x)) - global1[_wgslsmith_index_u32(min(24759u, 17407u), 31u)])), _wgslsmith_div_vec3_i32(select(countOneBits(~vec3<i32>(u_input.d, u_input.c.x, u_input.d)), _wgslsmith_clamp_vec3_i32(var_0.e, var_0.b, u_input.c), global2.x), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_add_i32(var_0.a.c, var_0.e.x), i32(-1i) * -29394i, _wgslsmith_sub_i32(2147483647i, 5307i)), ~countOneBits(u_input.c))), var_0.c, vec4<f32>(212f, -1514f, -803f, var_1), -var_0.e << (~global4.zyw % vec3<u32>(32u)));
    let var_3 = u_input.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.d.x)) * var_1))));
}

fn func_1(arg_0: Struct_4, arg_1: vec2<bool>) -> vec3<u32> {
    var var_0 = ~vec2<u32>(arg_0.c.x, 7911u);
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(4294967295u, 31u)])) - -2417f)), _wgslsmith_f_op_f32(-arg_0.b.d), global1[_wgslsmith_index_u32(~abs(~4294967295u), 31u)]) - vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 31u)], _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~arg_0.b.b, 31u)])));
    let var_2 = arg_0.d;
    var var_3 = global3.x;
    let var_4 = !(any(!(!arg_0.d.yzy)) & (var_2.x & arg_0.d.x));
    return ~(~_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(81973u, global4.x, 47358u), vec3<u32>(1u, 43851u, 4294967295u)), vec3<u32>(global3.x, global3.x, 4294967295u)) & vec3<u32>(global4.x, 0u | abs(arg_0.e.b), var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec3<u32>(4294967295u, global4.x, 4294967295u << (countOneBits(_wgslsmith_mod_u32(61460u, u_input.a.x)) % 32u)) & select((countOneBits(vec3<u32>(global3.x, 0u, u_input.a.x)) << (firstTrailingBit(vec3<u32>(u_input.a.x, 19950u, 25209u)) % vec3<u32>(32u))) >> ((func_1(Struct_4(0u, Struct_1(vec3<f32>(-1466f, -359f, 1000f), 11251u, u_input.c.x, -824f), vec3<u32>(17555u, 0u, 4387u), vec4<bool>(global2.x, global2.x, global2.x, true), Struct_1(vec3<f32>(global1[_wgslsmith_index_u32(79521u, 31u)], global1[_wgslsmith_index_u32(global3.x, 31u)], global1[_wgslsmith_index_u32(u_input.b, 31u)]), 56853u, u_input.c.x, -251f)), vec2<bool>(global2.x, true)) & ~vec3<u32>(45581u, 1u, 9903u)) % vec3<u32>(32u)), countOneBits(select(firstLeadingBit(u_input.a.www), ~vec3<u32>(53939u, 0u, global4.x), false)), vec3<bool>(global2.x, global2.x, global2.x));
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 31u)], -677f, -785f)))), ~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1195u, u_input.b), u_input.a.zz, vec2<u32>(0u, u_input.b)), max(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.a.x, 4344u))), select(u_input.c.x, -2147483647i << (global4.x % 32u), all(vec4<bool>(false, false, false, global2.x))), -1000f), vec3<i32>(-1i) * -select(-vec3<i32>(u_input.c.x, u_input.c.x, 0i), u_input.c, vec3<bool>(global2.x, false, false)));
    var var_1 = var_0.a;
    global1 = array<f32, 31>();
    let var_2 = Struct_3(Struct_1(var_1.a, countOneBits(20906u), select(-(u_input.c.x >> (global4.x % 32u)), firstLeadingBit(var_1.c), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1432f + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global3.x, 31u)])) + _wgslsmith_f_op_f32(var_0.a.d - 1000f))), firstLeadingBit(vec3<i32>(_wgslsmith_mod_i32(-var_0.a.c, var_1.c), -firstLeadingBit(var_1.c), -2147483647i)), var_0.a, vec4<f32>(_wgslsmith_f_op_f32(-511f - -1386f), var_0.a.a.x, 1078f, 698f), reverseBits(-(vec3<i32>(var_1.c, var_0.b.x, 10758i) | ~u_input.c)));
    var_0 = Struct_2(var_0.a, vec3<i32>(abs(1i), 1i, 1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.a.a.x), u_input.a.wzz, global3.x, _wgslsmith_div_f32(372f, var_0.a.a.x));
}

