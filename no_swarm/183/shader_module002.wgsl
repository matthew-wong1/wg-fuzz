struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: bool = false;

var<private> global2: vec4<bool> = vec4<bool>(true, false, true, true);

var<private> global3: array<f32, 19>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = vec2<i32>(~0i, 39291i);
    var var_1 = true != (((_wgslsmith_sub_u32(0u, u_input.b) >> (~31991u % 32u)) >= 0u) & select(global2.x, global2.x, any(!global2.wzy)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-944f, _wgslsmith_f_op_f32(ceil(-1006f)), _wgslsmith_f_op_f32(min(arg_0.a, -124f)), 267f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(52636u, 19u)], global3[_wgslsmith_index_u32(4294967295u, 19u)], arg_1.a, global3[_wgslsmith_index_u32(4294967295u, 19u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, 627f, 1904f, -1045f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1105f, arg_1.a, 2345f, 656f)))))));
    var var_3 = u_input.c.x;
    let var_4 = var_2.zxy;
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-222f, var_2.x, _wgslsmith_f_op_f32(floor(var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(714f, var_4.x, global2.x)) - -302f)), var_2, select(vec4<bool>(any(vec2<bool>(global2.x, true)), !global2.x, global0.x, true), vec4<bool>(global0.x, var_0.x != -2147483647i, all(vec3<bool>(global2.x, false, global0.x)), true), vec4<bool>(false, true, any(global2.xzx), !global2.x))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> bool {
    global2 = !vec4<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.c.x, 1u, 8797u) ^ vec4<u32>(1u, 59386u, 4294967295u, u_input.c.x), abs(vec4<u32>(0u, 11866u, 0u, u_input.c.x))) > _wgslsmith_clamp_u32(0u, _wgslsmith_mult_u32(u_input.b, u_input.c.x), firstTrailingBit(u_input.c.x)), global0.x, all(global2.ywy), all(vec4<bool>(true, global2.x, true, !global0.x)));
    var var_0 = firstLeadingBit(abs(29903u));
    let var_1 = 1u;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-264f + _wgslsmith_f_op_f32(-arg_2.a)) - -603f));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(arg_1.x + 2020f))))), _wgslsmith_f_op_f32(var_2.a - _wgslsmith_f_op_f32(f32(-1f) * -1207f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(max(u_input.c.x, ~u_input.c.x), 19u)]), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(arg_2.a))))), 1662f);
    return global2.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: i32, arg_2: vec3<f32>, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = vec3<bool>(!(arg_2.x == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 19u)]))), func_4(Struct_1(_wgslsmith_f_op_f32(round(arg_2.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(118f), Struct_1(-1433f))))), Struct_1(global3[_wgslsmith_index_u32(59068u, 19u)])), ((43948u ^ arg_0.x) << (4294967295u % 32u)) > ~1u);
    let var_1 = global2.xwy;
    var var_2 = _wgslsmith_f_op_vec3_f32(arg_2 - vec3<f32>(-1138f, global3[_wgslsmith_index_u32(~select(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 146666u, arg_0.x), vec4<u32>(58602u, 0u, 0u, 0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(86560u, 4294967295u), vec2<u32>(arg_0.x, u_input.c.x)), arg_3.x), 19u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, _wgslsmith_f_op_f32(1162f - arg_2.x), -148f));
    var var_4 = Struct_1(var_2.x);
    return Struct_1(170f);
}

fn func_5(arg_0: vec2<u32>, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = global2.x;
    let var_1 = arg_3;
    var var_2 = -_wgslsmith_mult_i32(firstTrailingBit(firstLeadingBit(u_input.a)), abs(~u_input.a));
    return func_2(countOneBits(arg_0), select(u_input.a, u_input.a, true), vec3<f32>(_wgslsmith_f_op_f32(max(-186f, 1309f)), _wgslsmith_f_op_f32(max(1139f, arg_3.a)), global3[_wgslsmith_index_u32(~0u, 19u)]), global0.zz);
}

fn func_1(arg_0: vec3<bool>) -> vec3<bool> {
    let var_0 = ~1u << (u_input.c.x % 32u);
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1000f, global3[_wgslsmith_index_u32(countOneBits(0u), 19u)])))), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(0u, 17514u), 19u)])));
    global2 = !select(select(!(!vec4<bool>(true, arg_0.x, arg_0.x, true)), vec4<bool>(u_input.b > 51298u, true, true, true), false), vec4<bool>(all(global2.wzw) || arg_0.x, true, !(!arg_0.x), _wgslsmith_clamp_i32(u_input.a, u_input.a, 29660i) > 29719i), true);
    let var_2 = func_5(u_input.c.yz, 754f, 4294967295u, func_2(~_wgslsmith_mod_vec2_u32(abs(u_input.c.yy), countOneBits(u_input.c.xx)), 2147483647i, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(279f, var_1.a, 1399f))))), !vec2<bool>(870f <= var_1.a, false)));
    let var_3 = countOneBits(select(select(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, -1i, 1i, u_input.a)), ~vec4<i32>(u_input.a, u_input.a, 7052i, -2147483647i), select(vec4<bool>(global2.x, false, false, true), vec4<bool>(true, arg_0.x, arg_0.x, global2.x), global2.x)) ^ vec4<i32>(-53990i & u_input.a, reverseBits(-13275i), _wgslsmith_clamp_i32(0i, -1i, u_input.a), 1i << (var_0 % 32u)), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, u_input.a, u_input.a, u_input.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, -1i), vec4<i32>(-1i, -19575i, u_input.a, -66272i), vec4<i32>(52839i, u_input.a, -39450i, u_input.a)), -vec4<i32>(-61100i, u_input.a, u_input.a, u_input.a)), vec4<i32>(max(-2147483647i, u_input.a), 0i, u_input.a, 10938i), !vec4<bool>(arg_0.x, true, true, true)), false));
    return select(arg_0, !(!vec3<bool>(all(vec3<bool>(global0.x, false, global0.x)), true, arg_0.x && false)), vec3<bool>(select(~24725i == (var_3.x | -9160i), any(vec2<bool>(true, true)), arg_0.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-427f)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -585f)), !global2.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(vec3<bool>(false, global2.x && (_wgslsmith_clamp_u32(1u, u_input.b, 52772u) <= u_input.c.x), any(!vec2<bool>(global2.x, global2.x))));
    global0 = select(vec3<bool>(global2.x, !any(!vec3<bool>(false, global2.x, global2.x)), !select(!global2.x, global2.x, !global0.x)), select(vec3<bool>(global0.x, global2.x, global0.x), global2.wyz, global0.x), global2.xwx);
    let var_0 = func_2(u_input.c.yx, 0i, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-811f, -580f, -1000f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(0u, 19u)], 429f, global3[_wgslsmith_index_u32(1u, 19u)]) - vec3<f32>(1000f, global3[_wgslsmith_index_u32(u_input.b, 19u)], 354f)), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(global3[_wgslsmith_index_u32(u_input.b, 19u)]), Struct_1(-1000f))).wxy)), !(!global2.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(0u, 19u)], -486f, global3[_wgslsmith_index_u32(u_input.b, 19u)])) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(2671f, global3[_wgslsmith_index_u32(u_input.b, 19u)], 594f))) * vec3<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b, 19u)]), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.c.x, 19u)]), -669f)), global2.x)), select(!vec2<bool>(!global2.x, true), !vec2<bool>(true, global2.x), global0.zx));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, global3[_wgslsmith_index_u32(u_input.b, 19u)])), _wgslsmith_f_op_f32(max(var_0.a, _wgslsmith_f_op_f32(max(-247f, -1217f))))), -409f, 356f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-899f - -1221f)), -137f, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(710f, 817f, global3[_wgslsmith_index_u32(u_input.c.x, 19u)], -444f)))) * vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3(var_0, Struct_1(648f))).x, -258f, -486f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b, 19u)])))), global0.x));
    global1 = !func_1(!vec3<bool>(global2.x, true, func_4(var_0, vec4<f32>(var_0.a, var_1.x, 935f, global3[_wgslsmith_index_u32(14110u, 19u)]), var_0))).x;
    let var_2 = 625f;
    let var_3 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(u_input.b, var_3, abs(35038u), u_input.c.x), vec3<i32>(u_input.a, u_input.a, u_input.a), -vec2<i32>(u_input.a, _wgslsmith_mult_i32(firstTrailingBit(13109i), 47181i)), abs(-17592i), 4294967295u);
}

