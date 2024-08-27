struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: bool,
    d: vec2<i32>,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 6> = array<Struct_4, 6>(Struct_4(Struct_2(242f)), Struct_4(Struct_2(-1146f)), Struct_4(Struct_2(-253f)), Struct_4(Struct_2(1000f)), Struct_4(Struct_2(-1221f)), Struct_4(Struct_2(-1000f)));

var<private> global1: array<bool, 14> = array<bool, 14>(false, false, false, true, false, false, true, true, true, true, true, false, false, true);

var<private> global2: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(0u, 1u, 4294967295u, 0u), vec4<u32>(41795u, 4294967295u, 20125u, 22604u), vec4<u32>(55410u, 4350u, 45943u, 10444u), vec4<u32>(1u, 72166u, 89826u, 4294967295u), vec4<u32>(115454u, 0u, 112357u, 4294967295u), vec4<u32>(46507u, 26154u, 74079u, 41957u), vec4<u32>(1u, 56830u, 31364u, 4294967295u), vec4<u32>(4294967295u, 25374u, 1u, 1u), vec4<u32>(85568u, 0u, 0u, 0u), vec4<u32>(62179u, 70666u, 50427u, 43936u), vec4<u32>(17639u, 0u, 40796u, 0u), vec4<u32>(0u, 4294967295u, 66272u, 0u), vec4<u32>(24402u, 0u, 0u, 2980u), vec4<u32>(49820u, 0u, 16315u, 1u), vec4<u32>(72203u, 103330u, 0u, 76057u), vec4<u32>(29262u, 0u, 1u, 0u), vec4<u32>(0u, 78370u, 82379u, 52418u), vec4<u32>(95787u, 55684u, 4294967295u, 4294967295u), vec4<u32>(12555u, 1u, 18094u, 1u), vec4<u32>(1u, 0u, 0u, 1u), vec4<u32>(68843u, 56140u, 1u, 81830u), vec4<u32>(17236u, 80555u, 28512u, 35645u), vec4<u32>(4294967295u, 7079u, 1u, 28683u), vec4<u32>(4294967295u, 9204u, 22591u, 1u), vec4<u32>(1u, 77035u, 7864u, 0u), vec4<u32>(0u, 0u, 0u, 24510u), vec4<u32>(19551u, 4294967295u, 1u, 0u), vec4<u32>(1u, 1u, 32580u, 1u));

var<private> global3: vec3<u32>;

var<private> global4: array<vec4<bool>, 8>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: vec3<i32>) -> u32 {
    let var_0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -311f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1331f) - -1843f))), global4[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~1u, _wgslsmith_sub_u32(~1u, 12706u)), 8u)], false, _wgslsmith_mult_vec2_i32(firstTrailingBit(arg_2.zx), vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(arg_2, vec3<i32>(-1i, arg_2.x, u_input.d)), firstTrailingBit(arg_2)), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, arg_2.x, u_input.d, arg_2.x), vec4<i32>(arg_2.x, -13922i, 1i, u_input.d)), ~vec4<i32>(-1i, arg_2.x, arg_2.x, u_input.d)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -445f, 1471f, 899f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-784f, -140f, -610f, 210f))), !vec4<bool>(arg_0, false, arg_0, arg_0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(334f, -493f), _wgslsmith_f_op_f32(abs(-579f)), _wgslsmith_f_op_f32(step(-892f, -237f)), _wgslsmith_div_f32(517f, 874f))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2072f, -218f, 939f, var_0.e.x)))))))) * _wgslsmith_f_op_vec4_f32(-var_0.e));
    var var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(990f, _wgslsmith_f_op_f32(var_0.e.x * var_1.x)), var_1.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_0.e.yx + vec2<f32>(-684f, var_1.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 313f) * vec2<f32>(-823f, var_1.x))))))));
    let var_3 = Struct_1(arg_2.x, abs(_wgslsmith_clamp_vec4_i32(-vec4<i32>(-2147483647i, arg_2.x, 2147483647i, arg_2.x), min(firstTrailingBit(vec4<i32>(var_0.d.x, 2147483647i, 0i, arg_2.x)), select(vec4<i32>(var_0.d.x, -18264i, var_0.d.x, 2147483647i), vec4<i32>(arg_2.x, arg_2.x, 2147483647i, 1437i), false)), reverseBits(~vec4<i32>(var_0.d.x, u_input.d, -1599i, var_0.d.x)))), ~vec4<u32>(u_input.a, countOneBits(4294967295u), _wgslsmith_sub_u32(global3.x, ~arg_1.x), global3.x), var_2.x);
    let var_4 = var_3;
    return arg_1.x;
}

fn func_4(arg_0: u32, arg_1: u32) -> vec4<bool> {
    let var_0 = Struct_1(u_input.d, vec4<i32>(0i, -9702i ^ firstTrailingBit(_wgslsmith_clamp_i32(-2147483647i, u_input.d, u_input.d)), _wgslsmith_mult_i32(u_input.d, u_input.d), -(52989i ^ firstLeadingBit(u_input.d))), global2[_wgslsmith_index_u32(~(~arg_0), 28u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(f32(-1f) * -1820f))))));
    global2 = array<vec4<u32>, 28>();
    let var_1 = ~vec2<u32>(~_wgslsmith_clamp_u32(18307u, 0u, 52929u), select(_wgslsmith_dot_vec4_u32(reverseBits(global2[_wgslsmith_index_u32(7865u, 28u)]), _wgslsmith_div_vec4_u32(global2[_wgslsmith_index_u32(global3.x, 28u)], vec4<u32>(var_0.c.x, var_0.c.x, arg_0, 1u))), arg_0, false));
    global0 = array<Struct_4, 6>();
    let var_2 = vec2<u32>(firstLeadingBit(select(min(4294967295u, arg_0), 12671u, any(global4[_wgslsmith_index_u32(89044u, 8u)]))), 4294967295u) ^ global3.xx;
    return global4[_wgslsmith_index_u32(~select(_wgslsmith_add_u32(~1u, var_1.x), _wgslsmith_mod_u32(global3.x ^ (115162u & global3.x), 0u), true && all(vec3<bool>(false, global1[_wgslsmith_index_u32(35300u, 14u)], false))), 8u)];
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> u32 {
    var var_0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2, _wgslsmith_f_op_f32(-1692f - arg_1.d))) + 1000f)));
    let var_1 = select(select(vec4<bool>(false, true | global1[_wgslsmith_index_u32(0u, 14u)], true, global1[_wgslsmith_index_u32(~(u_input.b.x << (58384u % 32u)), 14u)]), func_4(func_3(true, arg_1.c.zz, vec3<i32>(u_input.d, 1i, -20778i)), 12625u), func_4(1u, reverseBits(_wgslsmith_mod_u32(global3.x, 4294967295u)))), vec4<bool>(true && global1[_wgslsmith_index_u32(~arg_1.c.x, 14u)], global1[_wgslsmith_index_u32(27541u, 14u)], global1[_wgslsmith_index_u32(max(~arg_1.c.x << (15467u % 32u), 29682u), 14u)], global1[_wgslsmith_index_u32(4294967295u, 14u)]), vec4<bool>(true, true, false, true));
    var_0 = Struct_4(Struct_2(2180f));
    global2 = array<vec4<u32>, 28>();
    let var_2 = Struct_2(458f);
    return _wgslsmith_add_u32(1u, min(global3.x, 4294967295u));
}

fn func_1() -> StorageBuffer {
    global3 = _wgslsmith_clamp_vec3_u32(abs(~(~vec3<u32>(u_input.b.x, 35643u, global3.x)) << ((~vec3<u32>(23044u, global3.x, 17097u) << ((vec3<u32>(1u, u_input.a, 1u) | vec3<u32>(4294967295u, u_input.b.x, global3.x)) % vec3<u32>(32u))) % vec3<u32>(32u))), ~(~(vec3<u32>(4294967295u, global3.x, 0u) & vec3<u32>(u_input.a, u_input.b.x, 12032u))), vec3<u32>(_wgslsmith_dot_vec3_u32(countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.c, 4294967295u), vec3<u32>(88764u, global3.x, u_input.c), vec3<u32>(u_input.b.x, u_input.c, global3.x))), vec3<u32>(20835u, abs(532u), 11913u)), global3.x, u_input.a));
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-482f))) - 1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-347f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -2724f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -212f) * -1129f))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), 847f, global1[_wgslsmith_index_u32(func_2(Struct_2(-1373f), Struct_1(u_input.d, vec4<i32>(-10291i, u_input.d, -21962i, 2147483647i), vec4<u32>(u_input.a, 38412u, u_input.b.x, global3.x), var_0.x), var_0.x), 14u)]))) + _wgslsmith_f_op_f32(-var_0.x));
    var_1 = _wgslsmith_f_op_f32(min(-1225f, _wgslsmith_f_op_f32(f32(-1f) * -867f)));
    let var_2 = u_input.b;
    return StorageBuffer(i32(-1i) * -19575i, ~u_input.b.x, 0u, _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(global3.x, var_2.x), global3.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c, global3.x, global3.x), vec4<u32>(global3.x, var_2.x, var_2.x, var_2.x))), vec2<u32>(17217u, ~var_2.x), ~(~(~vec2<u32>(u_input.c, u_input.c)))), _wgslsmith_add_vec2_u32(min(vec2<u32>(max(4891u, u_input.b.x), ~9078u), ~u_input.b >> (countOneBits(vec2<u32>(var_2.x, 58946u)) % vec2<u32>(32u))), var_2));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(global3.x, 14u)];
    global1 = array<bool, 14>();
    let var_1 = ~select(global2[_wgslsmith_index_u32(~(~reverseBits(u_input.b.x)), 28u)], vec4<u32>(_wgslsmith_add_u32(2382u, u_input.b.x) ^ global3.x, _wgslsmith_sub_u32(_wgslsmith_add_u32(1u, global3.x), 4294967295u), _wgslsmith_mod_u32(_wgslsmith_div_u32(0u, u_input.b.x), 50959u), global3.x), vec4<bool>(all(vec4<bool>(false, global1[_wgslsmith_index_u32(global3.x, 14u)], false, global1[_wgslsmith_index_u32(global3.x, 14u)])), true, any(!global4[_wgslsmith_index_u32(u_input.c, 8u)]), global1[_wgslsmith_index_u32(~u_input.a, 14u)]));
    global2 = array<vec4<u32>, 28>();
    global2 = array<vec4<u32>, 28>();
    global4 = array<vec4<bool>, 8>();
    let x = u_input.a;
    s_output = func_1();
}

