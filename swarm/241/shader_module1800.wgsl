struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<i32, 1> = array<i32, 1>(2147483647i);

var<private> global2: array<bool, 9> = array<bool, 9>(false, false, true, false, true, true, false, true, false);

var<private> global3: array<i32, 21> = array<i32, 21>(-1i, i32(-2147483648), 1i, 1i, 0i, -1i, 21462i, i32(-2147483648), -14573i, 2147483647i, 47433i, -70467i, 24739i, -25871i, 25025i, 1i, 0i, 2147483647i, 2147483647i, 2147483647i, 18164i);

var<private> global4: Struct_3 = Struct_3(5331u, Struct_2(0u, Struct_1(-240f, vec2<u32>(42886u, 25237u)), vec2<u32>(67142u, 4294967295u)));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2) -> vec3<bool> {
    global2 = array<bool, 9>();
    var var_0 = select(global3[_wgslsmith_index_u32(arg_1.c.x, 21u)], ~(0i ^ _wgslsmith_sub_i32(u_input.e, max(-9754i, 2147483647i))), global2[_wgslsmith_index_u32(abs(9600u), 9u)]);
    let var_1 = arg_1.b;
    global3 = array<i32, 21>();
    var var_2 = vec2<i32>(-41590i, _wgslsmith_clamp_i32(-(i32(-1i) * -global1[_wgslsmith_index_u32(global4.b.c.x, 1u)]), _wgslsmith_mult_i32(min(u_input.b.x, u_input.c.x), 0i << ((4294967295u ^ global0.x) % 32u)), global3[_wgslsmith_index_u32(~global4.a, 21u)]));
    return vec3<bool>(any(vec2<bool>(false, global2[_wgslsmith_index_u32(38978u, 9u)])), var_1.a >= var_1.a, global2[_wgslsmith_index_u32(abs(42188u), 9u)]);
}

fn func_2() -> u32 {
    global1 = array<i32, 1>();
    var var_0 = select(!select(!vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 9u)], global2[_wgslsmith_index_u32(28103u, 9u)], false), select(select(vec3<bool>(false, true, global2[_wgslsmith_index_u32(global4.a, 9u)]), vec3<bool>(true, true, global2[_wgslsmith_index_u32(68463u, 9u)]), global2[_wgslsmith_index_u32(4294967295u, 9u)]), func_3(vec3<f32>(-344f, global4.b.b.a, 639f), Struct_2(global4.b.c.x, Struct_1(-663f, global4.b.b.b), global4.b.b.b)), global2[_wgslsmith_index_u32(min(global0.x, 12897u), 9u)]), select(!vec3<bool>(global2[_wgslsmith_index_u32(global4.a, 9u)], global2[_wgslsmith_index_u32(global0.x, 9u)], true), !vec3<bool>(true, true, global2[_wgslsmith_index_u32(24459u, 9u)]), true)), select(!(!(!vec3<bool>(global2[_wgslsmith_index_u32(0u, 9u)], global2[_wgslsmith_index_u32(global4.a, 9u)], global2[_wgslsmith_index_u32(1u, 9u)]))), !(!select(vec3<bool>(global2[_wgslsmith_index_u32(global4.b.a, 9u)], global2[_wgslsmith_index_u32(21933u, 9u)], true), vec3<bool>(true, global2[_wgslsmith_index_u32(global4.a, 9u)], true), vec3<bool>(false, true, false))), select(!func_3(vec3<f32>(global4.b.b.a, 1123f, -373f), Struct_2(global4.a, global4.b.b, global4.b.c)), !vec3<bool>(true, true, global2[_wgslsmith_index_u32(66764u, 9u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(global4.b.a, 9u)], global2[_wgslsmith_index_u32(global4.b.b.b.x, 9u)], global2[_wgslsmith_index_u32(0u, 9u)]), !vec3<bool>(true, global2[_wgslsmith_index_u32(12889u, 9u)], true), global3[_wgslsmith_index_u32(global0.x, 21u)] != global3[_wgslsmith_index_u32(56175u, 21u)]))), vec3<bool>(func_3(vec3<f32>(_wgslsmith_f_op_f32(-global4.b.b.a), global4.b.b.a, -540f), global4.b).x, false, false));
    var var_1 = global4.b;
    var_0 = select(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.a, 1114f, global4.b.b.a) + vec3<f32>(var_1.b.a, -1586f, var_1.b.a)) * vec3<f32>(global4.b.b.a, var_1.b.a, 829f))), global4.b), !func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.b.b.a, global4.b.b.a, var_1.b.a))), Struct_2(_wgslsmith_sub_u32(global4.b.c.x, global4.a), var_1.b, var_1.c)), func_3(vec3<f32>(_wgslsmith_f_op_f32(global4.b.b.a * _wgslsmith_f_op_f32(-1136f * -893f)), 835f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1078f))), global4.b));
    var var_2 = var_1.b;
    return _wgslsmith_mod_u32(89348u, global4.b.c.x | ~15492u);
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = arg_0.b >> (~(~vec2<u32>(~1u, 1u)) % vec2<u32>(32u));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(sign(arg_0.a)), ~((min(global4.b.b.b, global4.b.c) | ~vec2<u32>(1u, var_0.x)) >> (global4.b.b.b % vec2<u32>(32u))));
    let var_2 = _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(u_input.a, 20934i) ^ (16006i << (global0.x % 32u)), _wgslsmith_mod_i32(-2147483647i, _wgslsmith_div_i32(global3[_wgslsmith_index_u32(var_1.b.x, 21u)], global3[_wgslsmith_index_u32(56741u, 21u)]))), vec2<i32>(global3[_wgslsmith_index_u32(var_1.b.x, 21u)], ~(-1565i) >> (~global4.a % 32u))), -5753i);
    global0 = vec2<u32>(~31393u, firstLeadingBit(func_2()));
    var_0 = var_1.b;
    return _wgslsmith_f_op_f32(trunc(520f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(579f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global4.b.b.a))), _wgslsmith_f_op_f32(func_1(global4.b.b)))), -553f));
    let var_1 = countOneBits(min(reverseBits(min(vec2<i32>(global3[_wgslsmith_index_u32(global0.x, 21u)], -1i), u_input.b.xx)), vec2<i32>(abs(2147483647i), global1[_wgslsmith_index_u32(~global0.x, 1u)]))) << ((_wgslsmith_clamp_vec2_u32(~global4.b.c, global4.b.c >> (abs(global4.b.c) % vec2<u32>(32u)), ~vec2<u32>(4294967295u, 25563u)) & abs(reverseBits(global4.b.c))) % vec2<u32>(32u));
    var var_2 = _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(abs(72025i), ~_wgslsmith_sub_i32(1i, 1i), 1i), max(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(0u, 21u)], var_1.x, 50287i), u_input.b), u_input.b.x, _wgslsmith_div_i32(-1i, var_1.x)), _wgslsmith_mult_vec3_i32(select(vec3<i32>(12663i, global3[_wgslsmith_index_u32(global0.x, 21u)], global3[_wgslsmith_index_u32(global0.x, 21u)]), u_input.c.zyw, vec3<bool>(true, global2[_wgslsmith_index_u32(32262u, 9u)], true)), _wgslsmith_add_vec3_i32(u_input.b, vec3<i32>(-2147483647i, 2147483647i, 2147483647i))))), _wgslsmith_div_vec3_i32(u_input.b, ~u_input.c.zyy), _wgslsmith_mod_vec3_i32(vec3<i32>((-1i << (global0.x % 32u)) >> (14107u % 32u), _wgslsmith_dot_vec2_i32(var_1, vec2<i32>(u_input.c.x, global1[_wgslsmith_index_u32(global4.a, 1u)])) >> (reverseBits(global4.a) % 32u), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.c.wz, vec2<i32>(-2147483647i, 1i)), vec2<i32>(1i, 1i))), u_input.b));
    global3 = array<i32, 21>();
    var var_3 = var_0.xz;
    var_2 = _wgslsmith_clamp_vec3_i32(u_input.c.yzw, vec3<i32>(72298i, -abs(~5895i), -(~u_input.e)), _wgslsmith_sub_vec3_i32(select(_wgslsmith_mod_vec3_i32(select(u_input.c.zwx, u_input.b, global2[_wgslsmith_index_u32(global4.a, 9u)]), vec3<i32>(0i, u_input.b.x, 1i) ^ vec3<i32>(var_1.x, 0i, var_2.x)), -vec3<i32>(-17571i, u_input.e, -1i) >> (vec3<u32>(1u, 12315u, 69830u) % vec3<u32>(32u)), !select(vec3<bool>(global2[_wgslsmith_index_u32(global4.b.a, 9u)], false, false), vec3<bool>(global2[_wgslsmith_index_u32(25392u, 9u)], global2[_wgslsmith_index_u32(global4.a, 9u)], global2[_wgslsmith_index_u32(global0.x, 9u)]), vec3<bool>(global2[_wgslsmith_index_u32(35693u, 9u)], global2[_wgslsmith_index_u32(global4.a, 9u)], global2[_wgslsmith_index_u32(global0.x, 9u)]))), u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(~(-_wgslsmith_dot_vec4_i32(u_input.c << (vec4<u32>(global0.x, global4.a, global0.x, global0.x) % vec4<u32>(32u)), vec4<i32>(2147483647i, 38788i, global1[_wgslsmith_index_u32(4294967295u, 1u)], -52681i))), abs(vec2<i32>(firstLeadingBit(_wgslsmith_mult_i32(15102i, global3[_wgslsmith_index_u32(global0.x, 21u)])), 2147483647i)), -select(~var_1, _wgslsmith_sub_vec2_i32(var_2.xx, vec2<i32>(-46444i, var_2.x)), var_3.x >= 283f) ^ var_2.xx, vec4<i32>(min(~(~2147483647i), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(var_2.x, -20214i, -1i), _wgslsmith_clamp_i32(-1i, -1i, var_2.x), ~global3[_wgslsmith_index_u32(8708u, 21u)])), -(i32(-1i) * -global3[_wgslsmith_index_u32(567u, 21u)]), ~(~_wgslsmith_dot_vec2_i32(var_1, vec2<i32>(-1i, -4786i))), ~select(_wgslsmith_mult_i32(global3[_wgslsmith_index_u32(global0.x, 21u)], -24505i), _wgslsmith_div_i32(-35770i, var_2.x), all(vec3<bool>(global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(global0.x, 9u)], true)))), ~(abs(_wgslsmith_div_vec3_u32(vec3<u32>(33875u, 0u, global0.x), vec3<u32>(global0.x, global4.b.a, global0.x))) ^ ~(~vec3<u32>(25806u, global4.b.c.x, 0u))));
}

