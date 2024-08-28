struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec4<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14> = array<i32, 14>(2964i, -1i, 0i, 29159i, 20035i, 1i, -1i, i32(-2147483648), 0i, 2147483647i, 0i, -45414i, 0i, -32606i);

var<private> global1: bool;

var<private> global2: array<u32, 24>;

var<private> global3: Struct_3 = Struct_3(vec4<u32>(28809u, 37882u, 49638u, 0u), Struct_2(vec2<u32>(1667u, 4294967295u)), vec4<bool>(false, false, true, true), Struct_2(vec2<u32>(6098u, 0u)));

var<private> global4: array<i32, 8> = array<i32, 8>(10790i, 1i, -1i, 8006i, i32(-2147483648), 8622i, -1i, 0i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_3) -> vec4<bool> {
    var var_0 = Struct_1(select(vec3<bool>(false, global3.c.x, all(select(vec2<bool>(true, true), vec2<bool>(true, true), arg_0.c.xx))), vec3<bool>(!arg_0.c.x, false, arg_0.c.x), true), global3.d.a.x, ~(~vec3<i32>(_wgslsmith_sub_i32(1i, global4[_wgslsmith_index_u32(1772u, 8u)]), -global0[_wgslsmith_index_u32(global3.d.a.x, 14u)], _wgslsmith_clamp_i32(8385i, -36052i, global0[_wgslsmith_index_u32(u_input.b, 14u)]))), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-39896i | global4[_wgslsmith_index_u32(u_input.b, 8u)], i32(-1i) * -2147483647i), ~(~global0[_wgslsmith_index_u32(global3.b.a.x, 14u)])), global0[_wgslsmith_index_u32(9991u, 14u)], _wgslsmith_add_i32(firstLeadingBit(-global0[_wgslsmith_index_u32(arg_0.a.x, 14u)]), ~global0[_wgslsmith_index_u32(arg_0.a.x, 14u)] << (global3.b.a.x % 32u))));
    var var_1 = Struct_1(vec3<bool>(select(min(global4[_wgslsmith_index_u32(global3.a.x, 8u)], var_0.c.x), 19750i, all(vec4<bool>(true, global3.c.x, var_0.a.x, false))) <= 12679i, false, true), var_0.b, _wgslsmith_add_vec3_i32(-vec3<i32>(global4[_wgslsmith_index_u32(u_input.b, 8u)], global4[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(5256u, 14u)]) >> (~arg_0.a.zxz % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.d.x, 27396i, global4[_wgslsmith_index_u32(21272u, 8u)]) >> (vec3<u32>(var_0.b, 95233u, arg_0.d.a.x) % vec3<u32>(32u)), var_0.d, var_0.d)) ^ select(~vec3<i32>(global0[_wgslsmith_index_u32(global3.d.a.x, 14u)], 21069i, 0i), max(_wgslsmith_div_vec3_i32(var_0.d, vec3<i32>(var_0.c.x, 0i, 2147483647i)), _wgslsmith_div_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(71157u, 14u)], 1i, 2147483647i), vec3<i32>(-6992i, global0[_wgslsmith_index_u32(4294967295u, 14u)], 8480i))), var_0.a.x), reverseBits(_wgslsmith_div_vec3_i32(abs(var_0.c), vec3<i32>(12561i, var_0.c.x, 2147483647i))));
    let var_2 = vec4<f32>(-236f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1000f, -825f)))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1466f), _wgslsmith_f_op_f32(ceil(-119f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(836f - 318f) + _wgslsmith_f_op_f32(sign(826f))))), _wgslsmith_f_op_f32(max(-802f, -1188f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1942f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -473f) + 1986f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(262f, _wgslsmith_f_op_f32(1000f + -374f)))))));
    global0 = array<i32, 14>();
    global2 = array<u32, 24>();
    return vec4<bool>(_wgslsmith_f_op_f32(min(var_2.x, var_2.x)) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_2.x, var_2.x, var_1.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -453f), any(arg_0.c.wz))), var_2.x), all(!global3.c.yzz), global3.c.x, true);
}

fn func_2() -> Struct_3 {
    var var_0 = select(select(vec4<bool>(!(global3.a.x <= 73446u), all(vec4<bool>(false, global3.c.x, global3.c.x, global3.c.x)), (-35200i & global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 24u)], 8u)]) == global4[_wgslsmith_index_u32(1u, 8u)], !(!global3.c.x)), !select(select(vec4<bool>(global3.c.x, true, true, global3.c.x), global3.c, true), func_3(Struct_3(vec4<u32>(5793u, 3321u, u_input.a.x, 33655u), Struct_2(vec2<u32>(4294967295u, global3.d.a.x)), vec4<bool>(global3.c.x, false, true, true), Struct_2(global3.b.a))), global3.c.x), global2[_wgslsmith_index_u32(~global3.b.a.x & (0u ^ global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.b.a.x, 24u)], 24u)]), 24u)] > abs(~4294967295u)), select(global3.c, vec4<bool>(true, true, true, true), !(!global3.c)), select(!global3.c, global3.c, !global3.c.x));
    var var_1 = Struct_1(vec3<bool>(u_input.a.x != select(_wgslsmith_dot_vec3_u32(vec3<u32>(8112u, 39737u, 20217u), u_input.a), u_input.a.x, true), ~global3.d.a.x > u_input.b, any(global3.c)), 0u, countOneBits(vec3<i32>(select(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 50803i, 32565i), vec3<i32>(1i, global0[_wgslsmith_index_u32(u_input.a.x, 14u)], -1i)), global4[_wgslsmith_index_u32(19630u, 8u)] >> (global2[_wgslsmith_index_u32(1u, 24u)] % 32u), true && var_0.x), min(-26439i, max(global4[_wgslsmith_index_u32(71021u, 8u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 24u)], 14u)])), 1i)), -abs(vec3<i32>(i32(-1i) * -14921i, -16140i, global4[_wgslsmith_index_u32(21368u, 8u)])));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -999f))));
    var_0 = global3.c;
    let var_3 = Struct_1(!select(var_1.a, global3.c.zzw, true), 4294967295u, vec3<i32>(var_1.d.x, var_1.d.x, ~(var_1.c.x << (global2[_wgslsmith_index_u32(global3.a.x, 24u)] % 32u))) | ~(~reverseBits(var_1.c)), select(-var_1.d, var_1.d, any(global3.c.zx)));
    return Struct_3(~(vec4<u32>(1u, var_1.b, 34335u, ~4294967295u) & (vec4<u32>(4294967295u, 1u, 53033u, var_1.b) << ((vec4<u32>(19436u, 4294967295u, var_3.b, 43196u) | vec4<u32>(19166u, var_1.b, global3.d.a.x, 12760u)) % vec4<u32>(32u)))), Struct_2(u_input.a.yy), !(!vec4<bool>(true, false & var_1.a.x, true, true)), global3.d);
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_3, arg_3: i32) -> Struct_1 {
    let var_0 = -1005f;
    var var_1 = 13467i;
    let var_2 = Struct_1(global3.c.wzz, 0u, _wgslsmith_clamp_vec3_i32(-(firstTrailingBit(vec3<i32>(-2147483647i, -2147483647i, global4[_wgslsmith_index_u32(4294967295u, 8u)])) << (~u_input.a % vec3<u32>(32u))), abs(vec3<i32>(-1i) * -vec3<i32>(24037i, 1i, -72286i)), min(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(1932i, -1i, arg_3)), vec3<i32>(arg_1, global4[_wgslsmith_index_u32(1u, 8u)], arg_1)), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_1, -30263i, arg_1), vec3<i32>(-1i, global0[_wgslsmith_index_u32(u_input.a.x, 14u)], 0i)))), abs(-vec3<i32>(~global0[_wgslsmith_index_u32(31590u, 14u)], _wgslsmith_add_i32(-16916i, 1i), -30816i)));
    var_1 = -12558i;
    let var_3 = -var_2.d.yy;
    return var_2;
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = ~abs(4294967295u);
    global4 = array<i32, 8>();
    global2 = array<u32, 24>();
    return func_4(all(select(global3.c, select(global3.c, !vec4<bool>(false, global3.c.x, global3.c.x, true), !vec4<bool>(false, false, true, global3.c.x)), !global3.c)), 0i, func_2(), ~_wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(21212u, 14u)], 77935i), ~global4[_wgslsmith_index_u32(16472u, 8u)]), firstTrailingBit(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(21701u, 14u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.b.a.x, 24u)], 14u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_div_u32(~u_input.b, reverseBits(~global2[_wgslsmith_index_u32(u_input.a.x, 24u)])));
    let var_1 = var_0.a.yy;
    var var_2 = ~(~global3.a);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(round(-384f)), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1264f, -444f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -661f)));
    let var_4 = func_2();
    var var_5 = global3.d.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(vec2<i32>(66339i, -global0[_wgslsmith_index_u32(7427u, 14u)] ^ var_0.c.x), abs(-min(var_0.d.yy, vec2<i32>(-41474i, -1i)))), ~var_4.b.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, -122f, var_3.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-445f, var_3.x, 1110f, var_3.x) + vec4<f32>(var_3.x, var_3.x, 783f, var_3.x))))));
}

