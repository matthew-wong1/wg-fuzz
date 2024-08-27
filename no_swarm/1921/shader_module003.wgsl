struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
    d: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21> = array<f32, 21>(-1356f, 549f, -324f, -1175f, -174f, -1409f, 1246f, -1572f, 617f, -113f, -786f, -1272f, -1000f, -319f, -649f, -403f, 1000f, 707f, -845f, -123f, 1532f);

var<private> global1: vec3<u32> = vec3<u32>(4294967295u, 4632u, 4294967295u);

var<private> global2: Struct_1 = Struct_1(-787f, vec4<u32>(86670u, 10840u, 4294967295u, 41364u), 2147483647i);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<u32>) -> vec2<i32> {
    let var_0 = Struct_2(!vec2<bool>(true, all(vec2<bool>(true, true))), firstLeadingBit(global2.c & -(u_input.a.x >> (arg_0.x % 32u))), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(12316u >> (global2.b.x % 32u), 21u)]))), select(~abs(global2.b), global2.b << (~vec4<u32>(1u, 16933u, 10061u, 0u) % vec4<u32>(32u)), select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), true)), reverseBits(countOneBits(1i))));
    var var_1 = firstLeadingBit(firstLeadingBit(~(global2.c >> (52953u % 32u))) >> (var_0.c.b.x % 32u));
    let var_2 = Struct_4(Struct_2(vec2<bool>(var_0.a.x, any(select(vec3<bool>(false, var_0.a.x, var_0.a.x), vec3<bool>(var_0.a.x, true, false), false))), var_0.c.c, Struct_1(_wgslsmith_f_op_f32(sign(var_0.c.a)), select(select(vec4<u32>(var_0.c.b.x, 5443u, var_0.c.b.x, var_0.c.b.x), vec4<u32>(var_0.c.b.x, global1.x, global2.b.x, var_0.c.b.x), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)), global2.b >> (global2.b % vec4<u32>(32u)), true), _wgslsmith_clamp_i32(-28689i, _wgslsmith_clamp_i32(19534i, -1i, -2147483647i), abs(2147483647i)))), false);
    var var_3 = _wgslsmith_sub_vec2_u32(firstLeadingBit(~(~var_2.a.c.b.yy)) | var_2.a.c.b.xw, ~(~(~var_2.a.c.b.yy)));
    var_1 = -firstLeadingBit(-43212i) | ~global2.c;
    return vec2<i32>(2147483647i, ~abs(select(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-30025i, var_2.a.b, global2.c, 0i), vec4<i32>(global2.c, var_2.a.b, -2147483647i, 1i)), select(false, var_0.a.x, var_0.a.x))));
}

fn func_4(arg_0: f32, arg_1: vec3<i32>, arg_2: vec2<bool>) -> vec3<bool> {
    global1 = ~vec3<u32>(_wgslsmith_div_u32(abs(_wgslsmith_mod_u32(global2.b.x, global1.x)), 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(94642u, ~5723u, abs(4294967295u)), global2.b.wwx), 10232u);
    var var_0 = arg_1.xx;
    var var_1 = 1u;
    let var_2 = reverseBits(1u);
    global2 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1.x, 21u)])), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.a))) * global0[_wgslsmith_index_u32(firstTrailingBit(1u), 21u)]))), ~global2.b << (~(~_wgslsmith_mult_vec4_u32(global2.b, global2.b)) % vec4<u32>(32u)), _wgslsmith_div_i32(global2.c, -40739i));
    return select(!vec3<bool>(!arg_2.x, true, global0[_wgslsmith_index_u32(76297u, 21u)] > _wgslsmith_f_op_f32(ceil(global2.a))), select(!select(vec3<bool>(true, true, arg_2.x), vec3<bool>(true, arg_2.x, arg_2.x), select(vec3<bool>(arg_2.x, arg_2.x, true), vec3<bool>(arg_2.x, arg_2.x, true), true)), vec3<bool>(true & (global2.a != arg_0), any(select(arg_2, arg_2, vec2<bool>(arg_2.x, true))), all(vec2<bool>(arg_2.x, arg_2.x))), !(!select(vec3<bool>(arg_2.x, false, arg_2.x), vec3<bool>(arg_2.x, arg_2.x, false), arg_2.x))), all(select(!select(vec3<bool>(arg_2.x, arg_2.x, arg_2.x), vec3<bool>(false, false, arg_2.x), false), !vec3<bool>(arg_2.x, arg_2.x, false), true)));
}

fn func_2() -> u32 {
    global0 = array<f32, 21>();
    global1 = _wgslsmith_add_vec3_u32(vec3<u32>(global1.x, _wgslsmith_mult_u32(max(46709u, ~1u), global1.x), _wgslsmith_add_u32(_wgslsmith_clamp_u32(18412u, 4719u, ~6445u), ~reverseBits(67672u))), global2.b.zwx);
    var var_0 = vec3<bool>(false, _wgslsmith_div_i32(-33802i, 1i) < min(i32(-1i) * -6544i, max(~u_input.a.x, abs(u_input.c))), true);
    var var_1 = true;
    var_0 = func_4(_wgslsmith_f_op_f32(-global2.a), vec3<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.a.yx) | func_3(global2.b.zyx), func_3(vec3<u32>(27043u, 7231u, global2.b.x))), _wgslsmith_clamp_i32(global2.c, abs(abs(u_input.c)), _wgslsmith_mult_i32(-u_input.b, -global2.c)), -1i), vec2<bool>(true, false));
    return (global1.x | global1.x) << (select(~(~global1.x) >> (global1.x % 32u), 14681u, var_0.x | true) % 32u);
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: i32) -> Struct_5 {
    var var_0 = vec3<u32>(global2.b.x, _wgslsmith_div_u32(func_2(), ~54940u), reverseBits(global1.x));
    var var_1 = !(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), false)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(105303u, 21u)] * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global2.a)), _wgslsmith_f_op_f32(step(1250f, global2.a))))))), vec4<u32>(0u, ~min(4294967295u, 4294967295u), global2.b.x, ~max(1u, var_0.x)), arg_0.x);
    var_1 = vec4<bool>(all(var_1.zz), !(!var_1.x) && !((var_1.x | var_1.x) && var_1.x), var_1.x, any(!func_4(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(var_0.x, 21u)], -818f)), vec3<i32>(global2.c, 71456i, arg_1), !vec2<bool>(true, var_1.x))));
    global1 = _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(global2.b.x, var_2.b.x, var_2.b.x, global1.x), global2.b), vec4<u32>(var_0.x, 1u, var_0.x, var_2.b.x)), var_2.b.x), ~global2.b.x, _wgslsmith_add_u32(global2.b.x, global2.b.x)), firstLeadingBit(~(~var_2.b.wyz)));
    return Struct_5(var_2, Struct_4(Struct_2(var_1.zy, select(1557i, 1i, true) >> (~39828u % 32u), Struct_1(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_mod_vec4_u32(vec4<u32>(var_2.b.x, 44291u, global2.b.x, 54239u), vec4<u32>(1u, 1u, 4294967295u, var_0.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global2.c, var_2.c, 1i), vec4<i32>(-6443i, 5984i, arg_0.x, global2.c)))), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(abs(1u), 21u)], _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(0u, 21u)], global2.a))) + _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(~global2.b.x, 21u)])))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-839f))), _wgslsmith_sub_vec4_u32(select(vec4<u32>(8648u, var_0.x, var_2.b.x, 4294967295u), vec4<u32>(global2.b.x, global2.b.x, global2.b.x, global2.b.x), var_2.b.x != 1u), global2.b), 1i));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_5) -> f32 {
    var var_0 = ~(abs(_wgslsmith_mult_vec2_i32(-u_input.a.xx, abs(vec2<i32>(36758i, global2.c)))) & u_input.a.zy);
    var var_1 = false;
    let var_2 = Struct_2(arg_1.b.a.a, countOneBits(_wgslsmith_dot_vec4_i32(countOneBits(max(vec4<i32>(52363i, 12547i, 2147483647i, u_input.b), vec4<i32>(arg_0.c, 9896i, u_input.c, 74478i))), reverseBits(vec4<i32>(u_input.a.x, global2.c, -2147483647i, global2.c) ^ vec4<i32>(u_input.b, -19536i, 50031i, var_0.x)))), func_1(-min(-vec3<i32>(-1i, u_input.b, 0i), u_input.a), 36496i, -10256i).d);
    return global0[_wgslsmith_index_u32(firstLeadingBit(10028u), 21u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1560i;
    var var_1 = _wgslsmith_f_op_f32(func_5(Struct_1(global2.a, select(global2.b, vec4<u32>(~37831u, 1u, min(global2.b.x, global2.b.x), ~0u), any(vec3<bool>(false, false, true)) && true), -1i & select(u_input.a.x, min(u_input.c, var_0), all(vec4<bool>(false, true, true, true)))), func_1(reverseBits(_wgslsmith_mult_vec3_i32(u_input.a, u_input.a)) >> (global2.b.zwx % vec3<u32>(32u)), firstTrailingBit(var_0 | u_input.b) >> (~(global1.x ^ 2802u) % 32u), ~var_0 >> (~0u % 32u))));
    let var_2 = _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(global2.b.x, 21u)]));
    let var_3 = func_1(u_input.a >> (select(~_wgslsmith_sub_vec3_u32(vec3<u32>(80667u, global2.b.x, 4294967295u), global2.b.wyw), abs(select(global2.b.zwz, global2.b.yzx, false)), true) % vec3<u32>(32u)), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(_wgslsmith_mod_i32(global2.c, var_0), _wgslsmith_mod_i32(global2.c, global2.c))), reverseBits(u_input.a.yz)), var_0).b.a;
    var var_4 = func_1(u_input.a, _wgslsmith_add_i32(_wgslsmith_sub_i32(max(5309i, var_0), -1i) | var_0, global2.c), _wgslsmith_mod_i32(-2147483647i, func_1(vec3<i32>(1i, i32(-1i) * -27111i, var_3.b), _wgslsmith_dot_vec3_i32(u_input.a >> (var_3.c.b.ywz % vec3<u32>(32u)), u_input.a), ~global2.c).a.c)).b.a;
    var_1 = var_3.c.a;
    let var_5 = !(!func_4(_wgslsmith_f_op_f32(169f * _wgslsmith_f_op_f32(func_5(Struct_1(var_4.c.a, var_3.c.b, u_input.b), Struct_5(Struct_1(1356f, vec4<u32>(global2.b.x, global1.x, 1u, global2.b.x), u_input.b), Struct_4(Struct_2(var_3.a, 2147483647i, Struct_1(global2.a, vec4<u32>(15376u, global2.b.x, 1u, var_3.c.b.x), global2.c)), var_3.a.x), global0[_wgslsmith_index_u32(1u, 21u)], Struct_1(-1000f, var_4.c.b, 9268i))))), vec3<i32>(0i << (global2.b.x % 32u), var_0 & var_4.b, var_4.b >> (var_3.c.b.x % 32u)), vec2<bool>(global2.c >= -2147483647i, all(var_4.a))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c.b.zw, -2147483647i);
}

