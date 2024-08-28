struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(i32(-2147483648), 2147483647i, true), Struct_1(-1i, 52049i, true), Struct_1(-3721i, 7182i, true));

var<private> global1: u32;

var<private> global2: array<u32, 6> = array<u32, 6>(4294967295u, 0u, 4294967295u, 24873u, 4294967295u, 55696u);

var<private> global3: Struct_1;

var<private> global4: vec4<bool>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> u32 {
    global4 = select(vec4<bool>(global4.x, global4.x, all(vec2<bool>(true, true)) && (~global3.a >= ~31346i), any(!select(global4.wx, global4.yw, global4.wx))), vec4<bool>(false, -20956i >= _wgslsmith_clamp_i32(-2147483647i, 0i, global3.a), true, select(all(vec3<bool>(global4.x, global4.x, global4.x)), global4.x, !global4.x == any(vec3<bool>(true, global3.c, false)))), !(global3.c || true));
    global1 = _wgslsmith_dot_vec4_u32(~(~(~(vec4<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 6u)], u_input.c.x, 0u, u_input.c.x) ^ vec4<u32>(0u, u_input.d, u_input.d, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1251u, 6u)], 6u)])))), ~(vec4<u32>(0u, global2[_wgslsmith_index_u32(firstLeadingBit(0u), 6u)], u_input.b.x, _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(8312u, global2[_wgslsmith_index_u32(17895u, 6u)], u_input.b.x))) ^ select(~vec4<u32>(u_input.a, u_input.d, u_input.c.x, 1u), ~vec4<u32>(0u, 56943u, 6120u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(30275u, 6u)], 6u)]), vec4<bool>(false, false, global3.c, global4.x))));
    var var_0 = global3.a;
    global2 = array<u32, 6>();
    return ~(max(_wgslsmith_div_u32(u_input.a, _wgslsmith_sub_u32(1u, 1u)), u_input.c.x) ^ 12316u);
}

fn func_2() -> Struct_1 {
    var var_0 = reverseBits(global2[_wgslsmith_index_u32(0u, 6u)]);
    let var_1 = all(!global4.www);
    var var_2 = Struct_2(vec2<u32>(_wgslsmith_div_u32(func_3(1i), global2[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x) & abs(u_input.d), 6u)]), select(_wgslsmith_mod_u32(min(0u, 27922u), 1u), ~max(20313u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(10724u, 6u)], 6u)]), true)), global4.zwz, select(~min(31014u, 0u), u_input.d, global4.x & all(vec4<bool>(false, global3.c, global3.c, true))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~4461u), _wgslsmith_sub_u32(min(0u << (global2[_wgslsmith_index_u32(u_input.d, 6u)] % 32u), 1u), _wgslsmith_clamp_u32(0u, ~u_input.d, _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(37063u, 6u)], 1u)))), 3u)]);
    var_0 = _wgslsmith_div_u32(~(~(~func_3(23734i))), global2[_wgslsmith_index_u32(0u, 6u)]);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-216f)), -2052f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1615f - -1380f) * 131f) != _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1000f)))))), _wgslsmith_f_op_f32(sign(841f)), _wgslsmith_f_op_f32(trunc(972f)));
    return Struct_1(_wgslsmith_div_i32(_wgslsmith_mult_i32(firstTrailingBit(global3.b), global3.a), abs(_wgslsmith_sub_i32(global3.b, var_2.d.b))) & 1i, var_2.d.b, true);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    global4 = select(vec4<bool>(!((global3.a << (4294967295u % 32u)) < abs(0i)), global3.c, -1i != (-42986i ^ select(global3.a, arg_0.x, false)), global4.x), select(vec4<bool>(true, true, true, global4.x), vec4<bool>(all(!vec4<bool>(arg_1.c, arg_1.c, true, false)), false, false, any(global4.wxy)), select(vec4<bool>(func_2().c, true, false, global3.c), vec4<bool>(arg_1.c & false, true, arg_1.c, !global3.c), vec4<bool>(true, arg_1.a >= 0i, true, true | global3.c))), select(vec4<bool>(true, arg_1.c, arg_1.c, !all(global4.xwz)), !vec4<bool>(global3.c, select(true, global4.x, false), all(global4.zz), -8907i >= global3.b), !(!vec4<bool>(global3.c, global3.c, false, arg_1.c))));
    let var_0 = Struct_2(~vec2<u32>(4294967295u, _wgslsmith_sub_u32(~global2[_wgslsmith_index_u32(u_input.d, 6u)], firstLeadingBit(1u))), vec3<bool>(arg_1.c, global3.c, global3.c), select(_wgslsmith_sub_u32(abs(~1u), 1u), _wgslsmith_mod_u32(4294967295u ^ global2[_wgslsmith_index_u32(u_input.b.x ^ 0u, 6u)], ~u_input.a), all(!(!vec4<bool>(true, false, true, global3.c)))), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(62818u, 6u)], 3u)]);
    let var_1 = Struct_2(vec2<u32>(~(~1u), _wgslsmith_div_u32(func_3(global3.b), ~(~global2[_wgslsmith_index_u32(1u, 6u)]))), !(!select(vec3<bool>(false, false, true), vec3<bool>(global4.x, false, var_0.b.x), vec3<bool>(global3.c, false, true))), select(~func_3(min(-1i, var_0.d.b)), 21997u, true), var_0.d);
    global3 = Struct_1(countOneBits(arg_1.b), -_wgslsmith_dot_vec3_i32(min(vec3<i32>(-16406i, -3329i, 4555i), arg_0), select(arg_0, vec3<i32>(var_1.d.b, var_0.d.b, global3.b), true)) & 21104i, global3.c);
    var var_2 = ~(arg_0 ^ min(firstLeadingBit(_wgslsmith_mod_vec3_i32(arg_0, vec3<i32>(var_1.d.a, -43739i, var_0.d.b))), countOneBits(vec3<i32>(32337i, 1i, var_1.d.b))));
    return func_2();
}

fn func_1(arg_0: i32) -> vec4<bool> {
    var var_0 = 13318u;
    var var_1 = func_4(vec3<i32>(-2147483647i, min(2147483647i, arg_0 | 1i) & abs(_wgslsmith_div_i32(22662i, global3.b)), arg_0), func_2());
    let var_2 = -2110f;
    let var_3 = _wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(~arg_0, -1i)) >> (vec2<u32>(~global2[_wgslsmith_index_u32(min(global2[_wgslsmith_index_u32(u_input.a, 6u)], 61005u), 6u)], _wgslsmith_clamp_u32(1u, 1u, _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], 6u)], 6u)], 6u)], 544u))) % vec2<u32>(32u)), vec2<i32>(-65046i, max(-1i ^ ~arg_0, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(0i, 1i, -43656i), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 47244i), vec2<i32>(arg_0, -1i)), -13340i >> (u_input.b.x % 32u)))), vec2<i32>(_wgslsmith_mod_i32(var_1.b, _wgslsmith_div_i32(-37842i, 1i)), countOneBits(_wgslsmith_div_i32(firstLeadingBit(arg_0), arg_0))));
    let var_4 = Struct_2(~(~(~u_input.b)), vec3<bool>(true, var_1.c, select(true, !(global4.x && true), global3.c)), 9640u, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(~1u), global2[_wgslsmith_index_u32(~(~global2[_wgslsmith_index_u32(1u, 6u)]) >> (u_input.b.x % 32u), 6u)]), 3u)]);
    return vec4<bool>(global3.c, all(!var_4.b) && !func_2().c, any(!select(vec2<bool>(var_1.c, false), global4.zz, vec2<bool>(true, true))), !func_2().c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!global3.c);
    var var_1 = select(u_input.c.x, _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(47299u, 6u)], global2[_wgslsmith_index_u32(4294967295u, 6u)]), any(select(!vec4<bool>(global3.c, false, var_0, true), !select(vec4<bool>(false, global3.c, var_0, global4.x), vec4<bool>(false, false, true, global3.c), global4.x), !(!vec4<bool>(global3.c, false, false, false)))));
    global1 = u_input.b.x;
    global1 = ~26529u;
    global4 = select(select(func_1(global3.b), vec4<bool>(select(var_0, true, true), !(global3.a != global3.a), var_0, func_2().c | true), select(select(vec4<bool>(global4.x, false, false, false), !vec4<bool>(true, global3.c, global3.c, true), any(global4.ywz)), select(!vec4<bool>(global4.x, false, true, var_0), vec4<bool>(global3.c, true, global3.c, var_0), select(vec4<bool>(true, false, true, true), vec4<bool>(false, global3.c, false, global4.x), vec4<bool>(global3.c, global4.x, var_0, var_0))), true)), select(!(!vec4<bool>(global3.c, global3.c, false, global4.x)), select(vec4<bool>(!global3.c, true, any(vec2<bool>(false, var_0)), true), !(!vec4<bool>(false, global4.x, false, true)), global4.x), _wgslsmith_div_u32(1u, global2[_wgslsmith_index_u32(20085u, 6u)] | 0u) < ~13165u), select(true, !global4.x, any(vec3<bool>(true, u_input.c.x > global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4843u, 6u)], 6u)], 6u)], true))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c.xz ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(countOneBits(u_input.d), u_input.d), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, global2[_wgslsmith_index_u32(u_input.b.x, 6u)], u_input.c.x, u_input.c.x), vec4<u32>(0u, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 6u)], 6u)], 1u)), u_input.c.x), reverseBits(u_input.c.yx)));
}

