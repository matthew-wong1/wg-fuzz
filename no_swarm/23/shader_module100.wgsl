struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<u32>, 9> = array<vec2<u32>, 9>(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 1u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 37280u), vec2<u32>(64433u, 5549u), vec2<u32>(0u, 4294967295u), vec2<u32>(142923u, 41952u), vec2<u32>(1u, 4294967295u));

var<private> global2: array<i32, 28> = array<i32, 28>(-34771i, i32(-2147483648), -1i, 35635i, -24439i, -53602i, 6390i, -8041i, 1i, -38598i, 0i, 1i, -18262i, 21208i, -1i, 19616i, -34309i, -453i, -8415i, 10337i, 0i, -1i, 1i, i32(-2147483648), 0i, i32(-2147483648), -1i, 0i);

var<private> global3: array<f32, 1>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32, arg_3: Struct_1) -> vec3<f32> {
    let var_0 = ~min(min(_wgslsmith_div_u32(global0.b.x, global0.b.x) << (~arg_1.a % 32u), ~55324u), _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.b.x, u_input.b.x), global0.b));
    global2 = array<i32, 28>();
    let var_1 = 37407u;
    let var_2 = _wgslsmith_div_u32(~firstLeadingBit(4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.x, var_0 << (_wgslsmith_sub_u32(arg_3.b.x, 28327u) % 32u), arg_0.b.x & 52143u), vec3<u32>(firstTrailingBit(_wgslsmith_mod_u32(arg_0.b.x, global0.b.x)), _wgslsmith_mult_u32(_wgslsmith_div_u32(arg_1.b, arg_3.b.x), global0.b.x), 2819u)));
    let var_3 = arg_1;
    return vec3<f32>(_wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~51972u, 127526u), ~min(global0.b, vec2<u32>(16592u, u_input.b.x))), 1u)])), _wgslsmith_div_f32(global3[_wgslsmith_index_u32(abs(reverseBits(39740u) | _wgslsmith_add_u32(var_2, 53000u)), 1u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(var_3.a, 1u)])), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1505f + -435f), 1742f, -1000f <= global3[_wgslsmith_index_u32(arg_1.a, 1u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(221f * -281f)));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: Struct_1) -> i32 {
    global2 = array<i32, 28>();
    var var_0 = arg_1.x;
    var var_1 = max(reverseBits(~6762u), firstTrailingBit(global0.b.x));
    global2 = array<i32, 28>();
    global1 = array<vec2<u32>, 9>();
    return arg_3.c.x;
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    global1 = array<vec2<u32>, 9>();
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec3<bool>(global0.d.x, true, global0.d.x), firstTrailingBit(vec2<u32>(global0.b.x, u_input.b.x)), countOneBits(global0.c) ^ vec2<i32>(0i, 34192i), !global0.a.zz), arg_2, -9410i, Struct_1(global0.a, vec2<u32>(u_input.b.x, arg_2.a), u_input.c, vec2<bool>(global0.d.x || false, true)))), _wgslsmith_div_vec3_i32(abs(~vec3<i32>(0i, arg_1, -34608i)) & vec3<i32>(arg_1, ~1i, arg_2.c), -_wgslsmith_mod_vec3_i32(~vec3<i32>(31757i, 31297i, -2147483647i), vec3<i32>(-1i, 6355i, -411i) & vec3<i32>(18636i, arg_2.c, -84429i))), Struct_2(_wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b, arg_2.b, global0.b.x, arg_2.a), vec4<u32>(u_input.b.x, arg_2.b, global0.b.x, 47908u))), ~(~u_input.b.x)), abs(firstLeadingBit(~arg_2.a)), i32(-1i) * -22766i), Struct_1(!vec3<bool>(any(vec2<bool>(true, global0.d.x)), all(global0.d), !global0.d.x), _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, 4294967295u), 9u)], ~vec2<u32>(arg_2.a, 4294967295u), global0.b), global0.b ^ (global1[_wgslsmith_index_u32(4294967295u, 9u)] >> (vec2<u32>(8397u, 4294967295u) % vec2<u32>(32u))), ~global0.b & vec2<u32>(arg_2.b, 4294967295u)), -u_input.c, global0.d));
    let var_1 = select(select(vec2<bool>(false, global0.d.x), select(vec2<bool>(global0.a.x, true), !global0.d, select(select(vec2<bool>(global0.d.x, global0.a.x), global0.a.xx, global0.a.x), !global0.d, true)), global0.d), vec2<bool>(true, global0.d.x), global0.a.x);
    var_0 = arg_1;
    var var_2 = Struct_1(vec3<bool>(!global0.d.x, global0.d.x, var_1.x), ~max(~u_input.b, reverseBits(global0.b)) & select(~vec2<u32>(4294967295u, 37887u), u_input.b, global0.d), u_input.c, !var_1);
    return Struct_2(abs(reverseBits(~firstLeadingBit(u_input.b.x))), 13529u >> (~_wgslsmith_mult_u32(global0.b.x, ~var_2.b.x) % 32u), -u_input.c.x);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    var var_0 = !select(select(!vec3<bool>(false, global0.d.x, true), global0.a, select(!global0.a, select(global0.a, global0.a, global0.d.x), any(vec3<bool>(true, false, global0.d.x)))), vec3<bool>(all(global0.a.xy), true, any(!vec4<bool>(true, true, global0.d.x, global0.d.x))), global0.d.x);
    var_0 = vec3<bool>(all(vec2<bool>(!(!var_0.x), true)), all(!(!var_0.zy)), var_0.x);
    var_0 = vec3<bool>((all(vec3<bool>(false, global0.a.x, true)) && (reverseBits(arg_1.a) > select(u_input.b.x, 1u, false))) || !var_0.x, -abs(_wgslsmith_div_i32(u_input.a, -42065i)) == _wgslsmith_add_i32(-10004i, select(u_input.c.x | 2147483647i, ~(-69399i), true)), false);
    var var_1 = global0.b.x;
    return _wgslsmith_div_u32(1u, abs(arg_2.a));
}

fn func_6(arg_0: Struct_2, arg_1: u32) -> Struct_2 {
    return Struct_2(0u, ~9832u << (_wgslsmith_div_u32(func_2(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b.x, 1u)]), -2147483647i << (arg_0.b % 32u), func_2(-258f, -2147483647i, Struct_2(43854u, 4294967295u, -66235i))).a, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, global0.b.x, arg_0.b), vec4<u32>(4294967295u, 29895u, arg_0.b, global0.b.x))) % 32u), -_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(37163u, 28u)], arg_0.c, arg_0.c), abs(vec3<i32>(-4518i, -2147483647i, -29422i))), _wgslsmith_clamp_vec3_i32(~vec3<i32>(-11289i, -2147483647i, arg_0.c), vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 28u)], -28543i, 52626i) ^ vec3<i32>(1i, u_input.c.x, global2[_wgslsmith_index_u32(u_input.b.x, 28u)]), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 2147483647i, global2[_wgslsmith_index_u32(1u, 28u)]), vec3<i32>(8281i, 2147483647i, 68286i)))));
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    var var_0 = func_6(Struct_2(_wgslsmith_mod_u32(min(_wgslsmith_div_u32(18239u, arg_0.x), ~1u), ~0u | ~u_input.b.x), func_5(_wgslsmith_sub_vec3_i32(vec3<i32>(-37108i, -2147483647i, u_input.a), -vec3<i32>(global0.c.x, 18021i, global0.c.x)), func_2(_wgslsmith_div_f32(1000f, global3[_wgslsmith_index_u32(0u, 1u)]), global0.c.x << (1u % 32u), Struct_2(3232u, 42093u, -2147483647i)), func_2(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 1u)]), 2147483647i, func_2(global3[_wgslsmith_index_u32(u_input.b.x, 1u)], global0.c.x, Struct_2(39031u, global0.b.x, 0i)))), max(max(u_input.c.x, u_input.c.x), global0.c.x)), func_2(-512f, min(-2147483647i, select(1i, -u_input.c.x, global0.a.x)), func_2(-577f, abs(global2[_wgslsmith_index_u32(min(4294967295u, 0u), 28u)]), Struct_2(arg_0.x >> (1u % 32u), u_input.b.x, global2[_wgslsmith_index_u32(global0.b.x, 28u)]))).a);
    let var_1 = arg_0;
    var var_2 = false;
    var var_3 = Struct_2(22782u, global0.b.x, -1i);
    let var_4 = var_0.a;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<bool>(!global0.a.x, false & global0.a.x, true && any(select(vec2<bool>(global0.a.x, true), global0.a.xy, global0.d.x))), global0.b, vec2<i32>(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.b.x, func_1(vec3<u32>(u_input.b.x, 4294967295u, 4294967295u)), 11020u), ~1u), 28u)], (global0.c.x ^ -26901i) << (1u % 32u)), !global0.a.zy);
    let var_1 = global0.c;
    global2 = array<i32, 28>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(u_input.b.x, 1u)])))), global3[_wgslsmith_index_u32(u_input.b.x, 1u)]));
    var_0 = Struct_1(select(var_0.a, vec3<bool>(var_0.d.x, true, var_0.d.x), global0.a.x), u_input.b, vec2<i32>(2147483647i, (-var_0.c.x ^ -23254i) | (func_2(687f, -2147483647i, Struct_2(2111u, var_0.b.x, 1i)).c & -u_input.c.x)), !var_0.a.xz);
    global0 = Struct_1(var_0.a, vec2<u32>(~0u, u_input.b.x), reverseBits(reverseBits(global0.c ^ abs(vec2<i32>(13550i, var_0.c.x)))), var_0.d);
    var_0 = Struct_1(select(var_0.a, !vec3<bool>(var_0.d.x, true, !var_0.a.x), !(!(false || global0.d.x))), var_0.b, firstTrailingBit(~(vec2<i32>(-1i, -56820i) | global0.c) >> (vec2<u32>(_wgslsmith_mod_u32(46502u, var_0.b.x), 914u) % vec2<u32>(32u))), !vec2<bool>(global0.d.x, !all(vec4<bool>(var_0.a.x, var_0.d.x, true, true))));
    let var_3 = Struct_2(111001u, ~firstLeadingBit(_wgslsmith_clamp_u32(min(1u, var_0.b.x), var_0.b.x, _wgslsmith_div_u32(8230u, u_input.b.x))), select(~1i, _wgslsmith_mult_i32(9550i, -_wgslsmith_mult_i32(20466i, 0i)), !((var_1.x << (4294967295u % 32u)) < _wgslsmith_add_i32(var_1.x, 0i))));
    let var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_0.b.x, 40167u, 41989u), vec4<u32>(var_0.b.x, 12705u, u_input.b.x, var_0.b.x)))), _wgslsmith_mult_u32(~(~_wgslsmith_mult_u32(96745u, u_input.b.x)), (func_1(vec3<u32>(1u, 90858u, var_4.a)) | ~52227u) & 0u), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(38206u, 1u)]))))), var_2.x, -535f, _wgslsmith_f_op_f32(sign(1000f))));
}

