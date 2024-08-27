struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_3;

var<private> global2: vec4<i32> = vec4<i32>(24395i, i32(-2147483648), i32(-2147483648), 9995i);

var<private> global3: Struct_2;

var<private> global4: array<u32, 15>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<u32> {
    var var_0 = Struct_3(Struct_1(vec4<bool>(true, select(global3.a.a.x, global3.a.a.x, true), false, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.c.x, global3.b.b))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1418f), _wgslsmith_f_op_f32(abs(-1000f)))), true), 24625u, global3.b, global1.d);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global3.c.x, global1.d.b), _wgslsmith_f_op_vec2_f32(select(global3.c.yy, global3.c.xz, vec2<bool>(true, true)))) + _wgslsmith_f_op_vec2_f32(global3.c.yz - global3.c.zx));
    global3 = Struct_2(Struct_1(select(var_0.d.a, !select(global3.a.a, var_0.c.a, false), all(var_0.a.a.yww)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.b, 1178f)), _wgslsmith_f_op_f32(199f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d.b) - _wgslsmith_f_op_f32(global1.a.c + global3.a.b))), true), Struct_1(!(!global3.a.a), _wgslsmith_f_op_f32(f32(-1f) * -173f), _wgslsmith_f_op_f32(-583f + -896f), false), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(round(-796f)), _wgslsmith_f_op_f32(-1103f - -165f), _wgslsmith_f_op_f32(-1445f - var_1.x)))) - global3.c), all(!select(global0.wy, !global1.d.a.yy, vec2<bool>(global3.d, true))));
    let var_2 = ~var_0.b;
    let var_3 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(select(global2.x, 38647i, !global1.a.d) | (firstTrailingBit(2147483647i) & _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -3261i), vec2<i32>(global2.x, u_input.a))), global2.x << (var_2 % 32u)), -u_input.a);
    return ~countOneBits(min(_wgslsmith_add_vec3_u32(vec3<u32>(0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(11448u, 15u)], 15u)], 1u) & vec3<u32>(global4[_wgslsmith_index_u32(4294967295u, 15u)], global1.b, 0u), vec3<u32>(var_2, var_2, 21306u) ^ vec3<u32>(global1.b, 24880u, 0u)), min(max(vec3<u32>(var_2, 1u, 18226u), vec3<u32>(global4[_wgslsmith_index_u32(23637u, 15u)], 51085u, 1u)), vec3<u32>(77931u, global1.b, global1.b))));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: i32, arg_3: vec3<u32>) -> bool {
    global3 = Struct_2(global1.a, Struct_1(vec4<bool>(global1.a.a.x, any(select(global3.a.a.xx, vec2<bool>(global0.x, false), vec2<bool>(arg_0, global0.x))), false, !(!global3.a.d)), _wgslsmith_f_op_f32(-global1.d.b), global3.c.x, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1182f, _wgslsmith_f_op_f32(global1.c.b * -1107f), global1.d.b, 2025f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.c, global3.a.c, 1198f, 744f)))) + vec4<f32>(2339f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.c.x) - _wgslsmith_f_op_f32(1576f * global1.d.c)), global3.c.x, -763f)), true);
    global0 = global1.d.a;
    var var_0 = _wgslsmith_add_i32(_wgslsmith_mult_i32(0i, _wgslsmith_add_i32(u_input.b.x, u_input.b.x)) >> (min(4294967295u, ~global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(64351u, 15u)], arg_1, arg_1), 15u)]) % 32u), -1i);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(269f - global3.c.x)), 378f)) <= _wgslsmith_div_f32(-1903f, _wgslsmith_f_op_f32(abs(-484f)));
    var var_2 = Struct_2(Struct_1(select(select(vec4<bool>(var_1, global1.a.d, true, var_1), !global1.d.a, !vec4<bool>(global0.x, false, true, false)), vec4<bool>(all(global1.c.a.xzz), global3.b.a.x, !var_1, global3.a.b < 851f), _wgslsmith_f_op_f32(616f + global1.c.b) <= _wgslsmith_f_op_f32(ceil(global1.c.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.c.c + 334f)))), 547f, true && global3.d), Struct_1(vec4<bool>(true, true, global3.d, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.c.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global3.b.b)) - global3.c.x)), global3.a.b, true), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-global3.b.b), global1.d.b, global1.c.b, _wgslsmith_f_op_f32(round(723f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global3.c.x, global3.a.b), global3.b.c, _wgslsmith_f_op_f32(1698f * 622f), _wgslsmith_f_op_f32(518f + global1.c.c))))), all(select(global1.c.a, global1.c.a, !(!arg_0))));
    return global0.x || global1.c.a.x;
}

fn func_2() -> f32 {
    global2 = (select(-vec4<i32>(2147483647i, global2.x, global2.x, 35464i), _wgslsmith_div_vec4_i32(vec4<i32>(global2.x, u_input.a, -45344i, global2.x) & vec4<i32>(-20264i, -2147483647i, 2147483647i, 1i), reverseBits(vec4<i32>(u_input.b.x, 2147483647i, 1i, global2.x))), vec4<bool>(select(true, global3.b.a.x, true), all(global3.a.a.xz), true, true)) | min(vec4<i32>(u_input.a, -38763i, 53811i, global2.x) << (vec4<u32>(47943u, global1.b, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1.b, 15u)], 15u)], 35397u) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, global2.x, 1i, global2.x), firstTrailingBit(vec4<i32>(u_input.b.x, u_input.a, u_input.a, 2147483647i))))) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(7297u ^ _wgslsmith_mult_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 15u)], 15u)], 4294967295u), 0u, ~(~0u), global4[_wgslsmith_index_u32(6528u, 15u)]), ~(~(~vec4<u32>(1u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1.b, 15u)], 15u)], 15u)], global1.b, 77676u)))) % vec4<u32>(32u));
    var var_0 = Struct_1(select(vec4<bool>(!(true & global3.a.a.x), true, !global0.x, !(global3.a.a.x | true)), global3.a.a, func_4(false, global1.b, ~(-2147483647i), func_3() << (~vec3<u32>(global4[_wgslsmith_index_u32(global1.b, 15u)], 0u, global1.b) % vec3<u32>(32u)))), global3.a.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global3.a.b, -1000f)), _wgslsmith_f_op_f32(-1135f * global3.a.b)) + -405f), global3.c.x), false);
    global2 = firstLeadingBit(vec4<i32>(_wgslsmith_dot_vec4_i32(~firstLeadingBit(vec4<i32>(u_input.a, global2.x, 1i, u_input.a)), vec4<i32>(u_input.a, _wgslsmith_mod_i32(56680i, -12074i), ~global2.x, 39967i >> (global1.b % 32u))), ~(~global2.x) ^ global2.x, -(global2.x & u_input.a) >> (_wgslsmith_mod_u32(global4[_wgslsmith_index_u32(~22736u, 15u)], 0u) % 32u), _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, _wgslsmith_mult_i32(2147483647i, u_input.b.x) & -1i)));
    var var_1 = Struct_3(global1.d, 133339u, global1.d, global3.b);
    var var_2 = global2.yy ^ global2.xz;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(global1.d.b))))) - -769f)));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: u32) -> vec3<bool> {
    let var_0 = global0.zy;
    let var_1 = Struct_2(global3.a, global1.d, vec4<f32>(-657f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), -3063f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(289f))))), !var_0.x);
    let var_2 = global3.b.a.zzx;
    var var_3 = _wgslsmith_add_vec2_u32(vec2<u32>(min(1u, 4294967295u >> (global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(abs(0u), 15u)], 15u)] % 32u)), arg_2), _wgslsmith_div_vec2_u32(vec2<u32>(21981u, _wgslsmith_div_u32(arg_2 << (1u % 32u), 16245u)), vec2<u32>(4294967295u, abs(8321u ^ global4[_wgslsmith_index_u32(1u, 15u)]))));
    var var_4 = vec2<bool>(global0.x, all(vec2<bool>((0u > global4[_wgslsmith_index_u32(0u, 15u)]) | true, var_1.b.d)));
    return !(!select(var_1.b.a.wxx, global0.wzx, !select(vec3<bool>(true, false, false), vec3<bool>(var_1.d, false, global3.a.d), global1.a.a.zxy)));
}

fn func_5(arg_0: vec3<bool>) -> Struct_3 {
    let var_0 = Struct_3(global1.a, 1u, global3.b, global3.a);
    var var_1 = ~(~max(countOneBits(-2147483647i), select(1130i, -2147483647i, false) | 0i));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(min(~(~u_input.b.x), abs(u_input.b.x)), _wgslsmith_clamp_i32(2147483647i, 2147483647i, -countOneBits(global2.x)), abs(global1.b)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2666f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.c))), _wgslsmith_f_op_f32(var_0.c.c * var_0.d.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2361f + var_0.d.c), _wgslsmith_f_op_f32(round(1772f))))));
    var var_2 = 1u;
    let var_3 = ~reverseBits(~max(vec2<u32>(var_0.b, global1.b) ^ vec2<u32>(var_0.b, global1.b), ~vec2<u32>(0u, 4294967295u)));
    let var_4 = !func_1(_wgslsmith_div_i32(global2.x, _wgslsmith_mod_i32(global2.x, -38110i) & _wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, global2.x, global2.x), u_input.b)), ~(select(2147483647i, global2.x, global0.x) ^ -2147483647i), ~0u);
    var var_5 = global3.a.a;
    var_5 = select(select(vec4<bool>(!(var_0.d.a.x && false), true, true, var_4.x), !select(select(vec4<bool>(var_4.x, var_0.d.a.x, var_5.x, false), global3.a.a, global3.b.a), vec4<bool>(var_5.x, var_4.x, var_5.x, true), vec4<bool>(global1.a.a.x, var_0.d.a.x, global0.x, var_4.x)), vec4<bool>(!func_4(global3.a.d, global1.b, 2147483647i, vec3<u32>(4294967295u, var_0.b, 1u)), false, !global1.a.d & true, false)), vec4<bool>(499f <= _wgslsmith_f_op_f32(-1040f - _wgslsmith_f_op_f32(-var_1.x)), var_4.x, false, any(vec3<bool>(all(global1.d.a.wyw), var_5.x && var_4.x, global0.x))), all(vec3<bool>(true, any(!global1.a.a), func_1(global2.x, 0i, firstTrailingBit(var_3.x)).x)));
    let var_6 = true;
    var var_7 = Struct_3(Struct_1(!(!vec4<bool>(var_6, var_4.x, true, var_5.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -287f)), global3.c.x), var_1.x, global0.x), ~_wgslsmith_mod_u32(0u, ~_wgslsmith_div_u32(var_0.b, 4294967295u)), var_0.a, global3.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_3, _wgslsmith_f_op_f32(floor(140f)), _wgslsmith_div_vec4_u32(max(vec4<u32>(~1u, var_0.b >> (global4[_wgslsmith_index_u32(4294967295u, 15u)] % 32u), 90015u << (var_0.b % 32u), ~global4[_wgslsmith_index_u32(var_0.b, 15u)]), ~firstTrailingBit(vec4<u32>(4294967295u, global4[_wgslsmith_index_u32(var_3.x, 15u)], 49080u, 4294967295u))), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_3.x, global4[_wgslsmith_index_u32(var_0.b, 15u)], var_7.b, 34407u), _wgslsmith_div_vec4_u32(vec4<u32>(13199u, var_0.b, 1268u, 26791u), vec4<u32>(var_0.b, 0u, 1u, var_3.x))), vec4<u32>(var_7.b, abs(1u), ~1u, ~111916u))), countOneBits(max(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_3.x, var_7.b, var_3.x), vec3<u32>(10717u, var_7.b, global1.b)), vec3<u32>(var_7.b, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.b, var_7.b, 4294967295u), vec3<u32>(28173u, global4[_wgslsmith_index_u32(73962u, 15u)], global4[_wgslsmith_index_u32(global1.b, 15u)])), global4[_wgslsmith_index_u32(var_0.b, 15u)] | var_3.x))), 4294967295u);
}

