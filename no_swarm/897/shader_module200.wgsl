struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec3<u32>,
    d: f32,
    e: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15>;

var<private> global1: array<Struct_2, 8>;

var<private> global2: array<i32, 9>;

var<private> global3: bool;

var<private> global4: vec4<bool> = vec4<bool>(false, false, true, true);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_3, arg_3: Struct_2) -> u32 {
    return arg_2.c.a.x;
}

fn func_3() -> vec4<bool> {
    let var_0 = ~reverseBits(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 9u)], 23896i, 42549i, -74922i)), vec4<i32>(~u_input.c.x, -global2[_wgslsmith_index_u32(34648u, 9u)], 1i, global2[_wgslsmith_index_u32(2259u, 9u)] << (64173u % 32u))));
    global4 = !vec4<bool>(false != any(!vec4<bool>(true, global4.x, true, true)), any(vec2<bool>(false, true)), global4.x, true);
    let var_1 = Struct_5(true, Struct_3(global4.x, 0i, Struct_1(vec3<u32>(1u, 1u, 1u), vec3<u32>(select(0u, 1u, true), abs(71452u), 1u)), -(var_0 | ~vec4<i32>(-1i, var_0.x, 0i, var_0.x))));
    let var_2 = Struct_2(select(vec4<i32>(-1937i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(global2[_wgslsmith_index_u32(10275u, 9u)], -2147483647i, -1i), var_0.zzx, var_1.b.a), var_1.b.d.wzx), 1i << (_wgslsmith_mod_u32(81714u, var_1.b.c.b.x) % 32u), -global2[_wgslsmith_index_u32(0u, 9u)] << (~1u % 32u)), var_1.b.d, any(!select(vec3<bool>(global4.x, var_1.a, global4.x), global4.yyy, var_1.b.a))), _wgslsmith_div_i32(abs(-u_input.a), -41183i));
    var var_3 = !any(!select(select(vec2<bool>(global4.x, false), vec2<bool>(global4.x, var_1.a), global4.yz), vec2<bool>(var_1.a, false), global4.x));
    return select(select(select(select(!vec4<bool>(true, true, var_1.b.a, var_1.b.a), !vec4<bool>(false, false, global4.x, var_1.a), !vec4<bool>(false, true, true, var_1.a)), vec4<bool>(true, var_1.b.a | false, any(global4.zw), false), vec4<bool>(var_1.a, var_1.b.a && false, var_0.x >= var_0.x, !var_1.a)), select(!(!vec4<bool>(false, true, var_1.a, global4.x)), !vec4<bool>(false, var_1.a, true, global4.x), any(global4.zyw)), select(!vec4<bool>(false, var_1.b.a, false, var_1.b.a), vec4<bool>(var_1.b.a, all(global4.yz), global4.x, true | global4.x), select(vec4<bool>(var_1.b.a, true, true, global4.x), !vec4<bool>(var_1.a, global4.x, global4.x, true), all(global4.yy)))), !select(vec4<bool>(any(global4.zww), var_1.b.a, true, true), !(!vec4<bool>(global4.x, false, false, var_1.a)), vec4<bool>(global4.x, true, all(global4.xw), any(vec4<bool>(true, true, true, global4.x)))), !select(!(!vec4<bool>(global4.x, var_1.a, true, var_1.b.a)), select(select(vec4<bool>(true, global4.x, false, global4.x), vec4<bool>(false, true, global4.x, true), vec4<bool>(var_1.b.a, true, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, var_1.a, global4.x, var_1.a), true), true), (var_2.a.x == u_input.d) && any(vec3<bool>(global4.x, var_1.a, false))));
}

fn func_2(arg_0: u32) -> i32 {
    var var_0 = ~(~(~(~select(vec4<u32>(arg_0, 4294967295u, 1u, 0u), vec4<u32>(arg_0, arg_0, 4294967295u, 39464u), false))));
    var_0 = countOneBits(~vec4<u32>(_wgslsmith_mod_u32(firstLeadingBit(4294967295u), arg_0), abs(~var_0.x), ~(~arg_0), ~abs(var_0.x)));
    global4 = !func_3();
    global3 = !global4.x;
    global4 = !func_3();
    return ~_wgslsmith_dot_vec4_i32(select(abs(vec4<i32>(u_input.d, -1i, global2[_wgslsmith_index_u32(arg_0, 9u)], -6017i)) >> (~vec4<u32>(19301u, 32779u, 4294967295u, arg_0) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(~vec4<i32>(8025i, -2147483647i, -2815i, 24267i), -vec4<i32>(global2[_wgslsmith_index_u32(arg_0, 9u)], global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(var_0.x, 9u)], 0i), ~vec4<i32>(global2[_wgslsmith_index_u32(arg_0, 9u)], 0i, global2[_wgslsmith_index_u32(34560u, 9u)], -40848i)), !func_3()), reverseBits(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(38480i, 2147483647i, global2[_wgslsmith_index_u32(1u, 9u)], 0i), vec4<i32>(u_input.a, u_input.b.x, 39100i, global2[_wgslsmith_index_u32(var_0.x, 9u)])), -vec4<i32>(2147483647i, -2147483647i, u_input.a, global2[_wgslsmith_index_u32(var_0.x, 9u)]), _wgslsmith_clamp_vec4_i32(vec4<i32>(-10295i, 1i, global2[_wgslsmith_index_u32(82607u, 9u)], 0i), vec4<i32>(-2147483647i, -2147483647i, global2[_wgslsmith_index_u32(arg_0, 9u)], u_input.c.x), vec4<i32>(u_input.a, 1i, global2[_wgslsmith_index_u32(arg_0, 9u)], u_input.b.x)))));
}

fn func_4(arg_0: Struct_5, arg_1: vec3<bool>, arg_2: u32, arg_3: Struct_3) -> Struct_5 {
    global3 = !select(!all(!vec3<bool>(global4.x, arg_1.x, true)), false, true);
    global0 = array<f32, 15>();
    global3 = select(true, arg_3.a, any(vec2<bool>(min(-4467i, arg_0.b.b) == countOneBits(1i), true)));
    global0 = array<f32, 15>();
    var var_0 = Struct_4(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 0u, abs(arg_3.c.b.x)), vec3<u32>(~arg_0.b.c.a.x, arg_0.b.c.a.x, func_1(vec4<f32>(global0[_wgslsmith_index_u32(arg_2, 15u)], global0[_wgslsmith_index_u32(56591u, 15u)], global0[_wgslsmith_index_u32(17628u, 15u)], global0[_wgslsmith_index_u32(arg_3.c.b.x, 15u)]), 1i, Struct_3(arg_1.x, u_input.b.x, arg_0.b.c, vec4<i32>(arg_0.b.d.x, 2147483647i, 0i, global2[_wgslsmith_index_u32(0u, 9u)])), global1[_wgslsmith_index_u32(arg_3.c.a.x, 8u)])), reverseBits(arg_3.c.a & vec3<u32>(52358u, 47086u, 4294967295u))), arg_3.c.a), Struct_2(_wgslsmith_div_vec4_i32(~vec4<i32>(-57008i, -2147483647i, -2147483647i, 0i), -(vec4<i32>(-1959i, 38294i, arg_0.b.d.x, 0i) << (vec4<u32>(arg_3.c.b.x, 24726u, 144424u, arg_3.c.a.x) % vec4<u32>(32u)))), -max(_wgslsmith_mult_i32(4403i, -13670i), ~1i)), ~arg_3.c.b, 175f, arg_3.c);
    return Struct_5(arg_3.a, arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(abs(~vec4<u32>(func_1(vec4<f32>(-2640f, global0[_wgslsmith_index_u32(4294967295u, 15u)], -286f, global0[_wgslsmith_index_u32(39203u, 15u)]), global2[_wgslsmith_index_u32(4294967295u, 9u)], Struct_3(global4.x, u_input.a, Struct_1(vec3<u32>(98007u, 4294967295u, 43662u), vec3<u32>(23705u, 1u, 1u)), vec4<i32>(u_input.c.x, u_input.d, u_input.d, u_input.b.x)), global1[_wgslsmith_index_u32(4294967295u, 8u)]), 1u, 1u, 0u)));
    let var_1 = func_4(Struct_5(true, Struct_3(false, _wgslsmith_add_i32(func_2(4294967295u), abs(u_input.a)), Struct_1(min(var_0.zxw, vec3<u32>(3446u, 63459u, 1651u)), ~vec3<u32>(16877u, 1u, 95937u)), _wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.a, u_input.d, 13642i, u_input.d), max(vec4<i32>(global2[_wgslsmith_index_u32(var_0.x, 9u)], global2[_wgslsmith_index_u32(var_0.x, 9u)], u_input.c.x, u_input.b.x), vec4<i32>(24231i, global2[_wgslsmith_index_u32(9911u, 9u)], global2[_wgslsmith_index_u32(4294967295u, 9u)], u_input.d)), vec4<i32>(u_input.c.x, -9755i, 2147483647i, 0i) >> (vec4<u32>(42484u, var_0.x, 30055u, var_0.x) % vec4<u32>(32u))))), !global4.yxz, ~_wgslsmith_sub_u32(4294967295u, var_0.x), Struct_3(global4.x, i32(-1i) * -2147483647i, Struct_1(vec3<u32>(abs(58008u), firstTrailingBit(var_0.x), var_0.x), vec3<u32>(_wgslsmith_div_u32(var_0.x, 4294967295u), 28523u | var_0.x, _wgslsmith_mult_u32(var_0.x, 58126u))), ~vec4<i32>(u_input.b.x << (29343u % 32u), 1i, 37083i >> (var_0.x % 32u), _wgslsmith_sub_i32(u_input.c.x, global2[_wgslsmith_index_u32(var_0.x, 9u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit((~var_1.b.d.xw ^ _wgslsmith_sub_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(0u, 9u)], u_input.b.x), var_1.b.d.zy)) >> ((countOneBits(var_1.b.c.b.yz) | vec2<u32>(0u, 50534u)) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(20287u, 15u)])), global0[_wgslsmith_index_u32(~30918u, 15u)], _wgslsmith_f_op_f32(sign(1375f))), vec4<f32>(-664f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 15u)]), _wgslsmith_f_op_f32(f32(-1f) * -166f), -1217f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1186f)) * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_1.b.c.b.x, 15u)] * -744f)), global0[_wgslsmith_index_u32(1u, 15u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(var_1.b.c.b.x, 15u)], _wgslsmith_f_op_f32(sign(-319f)), true)) * _wgslsmith_f_op_f32(f32(-1f) * -130f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(16509u, 15u)], -493f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), -635f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~var_0.x, 15u)] * _wgslsmith_f_op_f32(f32(-1f) * -187f)) * _wgslsmith_div_f32(1252f, global0[_wgslsmith_index_u32(func_4(var_1, global4.xwz, 0u, Struct_3(false, 1i, var_1.b.c, var_1.b.d)).b.c.b.x, 15u)])), _wgslsmith_f_op_f32(-433f + global0[_wgslsmith_index_u32(0u >> (~var_1.b.c.a.x % 32u), 15u)])));
}

