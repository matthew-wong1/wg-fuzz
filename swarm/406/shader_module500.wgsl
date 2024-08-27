struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 18> = array<vec3<i32>, 18>(vec3<i32>(1i, -6137i, -27739i), vec3<i32>(-1i, 8228i, -14826i), vec3<i32>(1i, 38485i, i32(-2147483648)), vec3<i32>(13304i, 0i, 58019i), vec3<i32>(7933i, -15005i, 1i), vec3<i32>(-1i, 2147483647i, 4747i), vec3<i32>(0i, 0i, 36369i), vec3<i32>(41143i, -39579i, 13820i), vec3<i32>(2147483647i, -1i, 40923i), vec3<i32>(-10085i, i32(-2147483648), 0i), vec3<i32>(26834i, 10304i, -4008i), vec3<i32>(1i, 1i, 1i), vec3<i32>(-1i, 1i, -18935i), vec3<i32>(-107784i, -42382i, -1i), vec3<i32>(25580i, i32(-2147483648), -233i), vec3<i32>(48503i, 1i, -1i), vec3<i32>(39932i, -5553i, 33147i), vec3<i32>(-1i, -29942i, 1i));

var<private> global1: array<Struct_2, 30>;

var<private> global2: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec2<i32>(1i, 1i), vec3<u32>(52630u, 33589u, 4294967295u), 1i, 24811i), Struct_1(vec2<i32>(0i, 658i), vec3<u32>(27477u, 9175u, 1u), -18391i, -1i), Struct_1(vec2<i32>(-16426i, -1i), vec3<u32>(26360u, 23006u, 44072u), -8906i, 20562i), Struct_1(vec2<i32>(13771i, -8236i), vec3<u32>(4294967295u, 25018u, 1u), 2147483647i, 591i), Struct_1(vec2<i32>(i32(-2147483648), -11904i), vec3<u32>(129350u, 1u, 29628u), -1i, -19089i), Struct_1(vec2<i32>(-1i, 2147483647i), vec3<u32>(55112u, 0u, 0u), 1i, -12415i));

var<private> global3: array<bool, 10> = array<bool, 10>(false, true, false, false, false, true, true, false, false, true);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec2<i32>) -> vec3<u32> {
    global2 = array<Struct_1, 6>();
    global3 = array<bool, 10>();
    global2 = array<Struct_1, 6>();
    var var_0 = global2[_wgslsmith_index_u32(u_input.a, 6u)];
    var var_1 = arg_2;
    return abs((_wgslsmith_sub_vec3_u32(var_0.b, vec3<u32>(arg_0.x, 1u, 4294967295u)) >> (max(min(vec3<u32>(var_0.b.x, 4294967295u, arg_1.a.b.x), vec3<u32>(u_input.b.x, 1u, arg_1.a.b.x)), vec3<u32>(31910u, var_0.b.x, 4294967295u)) % vec3<u32>(32u))) | vec3<u32>(reverseBits(4294967295u), ~4294967295u, 4294967295u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(959f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2001f - 496f)))))));
    global0 = array<vec3<i32>, 18>();
    global1 = array<Struct_2, 30>();
    var var_1 = var_0;
    var var_2 = Struct_2(arg_2, Struct_1(arg_1.a, _wgslsmith_mod_vec3_u32(vec3<u32>(0u, arg_0.b.x, 66676u), max(arg_1.b, arg_1.b)) >> (reverseBits(~vec3<u32>(arg_1.b.x, arg_0.b.x, arg_1.b.x)) % vec3<u32>(32u)), u_input.c.x, 0i), vec2<i32>(_wgslsmith_div_i32(2147483647i, _wgslsmith_add_i32(-30089i, 1i)), ~min(-9559i, _wgslsmith_mult_i32(arg_2.a.x, arg_1.c))));
    return vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_div_f32(-330f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, 1000f)))), var_0, -836f);
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> vec2<i32> {
    var var_0 = u_input.b.x;
    let var_1 = abs(13848i << (0u % 32u));
    let var_2 = func_3(~vec2<u32>(~1u, arg_3.b.x), Struct_2(Struct_1(u_input.c, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, arg_3.b.x, 1u), max(arg_1.b, vec3<u32>(13594u, 20024u, 82074u))), i32(-1i) * -4685i, -_wgslsmith_div_i32(arg_3.c, arg_3.a.x)), Struct_1(_wgslsmith_mod_vec2_i32(-arg_3.a, -arg_1.a), arg_1.b, ~var_1, _wgslsmith_dot_vec3_i32(vec3<i32>(-46741i, var_1, -32680i), _wgslsmith_sub_vec3_i32(global0[_wgslsmith_index_u32(50430u, 18u)], global0[_wgslsmith_index_u32(u_input.a, 18u)]))), -vec2<i32>(-43199i, 33212i)), vec2<i32>(-6783i, _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.c.x >> (arg_3.b.x % 32u), 11042i), _wgslsmith_clamp_i32(min(var_1, 2147483647i), ~(-1i), ~(-43560i)))));
    var var_3 = select(!(!vec3<bool>(-41720i != var_1, 19175i != arg_3.d, all(vec2<bool>(global3[_wgslsmith_index_u32(97126u, 10u)], false)))), !vec3<bool>(all(!vec2<bool>(true, global3[_wgslsmith_index_u32(var_2.x, 10u)])), any(select(vec3<bool>(global3[_wgslsmith_index_u32(1u, 10u)], global3[_wgslsmith_index_u32(118514u, 10u)], global3[_wgslsmith_index_u32(4294967295u, 10u)]), vec3<bool>(false, true, true), vec3<bool>(global3[_wgslsmith_index_u32(1u, 10u)], true, global3[_wgslsmith_index_u32(arg_1.b.x, 10u)]))), global3[_wgslsmith_index_u32(1u, 10u)]), vec3<bool>(false, select(true, true, _wgslsmith_f_op_f32(-arg_2) >= -802f), global3[_wgslsmith_index_u32(1u, 10u)]));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), -226f);
    return u_input.c;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1) -> vec4<f32> {
    global3 = array<bool, 10>();
    global3 = array<bool, 10>();
    var var_0 = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(arg_1, Struct_1(~vec2<i32>(-319i, arg_1.d), ~vec3<u32>(58450u, arg_1.b.x, 11180u), arg_1.d, arg_1.a.x | arg_1.d), Struct_1(arg_1.a, func_3(arg_1.b.xx, global1[_wgslsmith_index_u32(0u, 30u)], vec2<i32>(9155i, -24229i)), abs(13151i), arg_1.d)))), Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(~arg_1.a.x, 1i), _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(arg_1.a, vec2<i32>(arg_1.d, 0i)), abs(vec2<i32>(u_input.c.x, arg_1.d)))), vec3<u32>(~(u_input.a >> (arg_1.b.x % 32u)), 79304u, arg_1.b.x), u_input.c.x, select(~u_input.c.x, _wgslsmith_dot_vec3_i32(select(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], vec3<i32>(317i, arg_1.c, 1i), false), _wgslsmith_add_vec3_i32(global0[_wgslsmith_index_u32(u_input.a, 18u)], vec3<i32>(-8743i, 1i, 2147483647i))), any(vec2<bool>(true, true)))), 1323f, arg_1);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1444f, -117f, 848f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1604f, -100f, -424f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-586f, -1000f, 351f))))));
    let var_2 = vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.c.x, var_0.x, -2988i), ~vec4<i32>(38705i, var_0.x, var_0.x, var_0.x)), firstLeadingBit(-vec4<i32>(0i, u_input.c.x, 2147483647i, u_input.c.x))), _wgslsmith_mod_i32(~(2147483647i ^ arg_1.d), u_input.c.x)), _wgslsmith_mult_i32(u_input.c.x, abs(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(-56752i, var_0.x)), _wgslsmith_sub_i32(-1i, arg_1.d)))), ~_wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(0i), func_5(vec4<f32>(var_1.x, -1000f, 607f, 1434f), Struct_1(u_input.c, vec3<u32>(13252u, 16471u, 4294967295u), arg_1.c, var_0.x), 1000f, Struct_1(vec2<i32>(u_input.c.x, u_input.c.x), u_input.b.xyw, u_input.c.x, -16221i)).x, reverseBits(21201i)), _wgslsmith_mod_vec3_i32(~global0[_wgslsmith_index_u32(62545u, 18u)], vec3<i32>(0i, 8681i, var_0.x) >> (vec3<u32>(arg_1.b.x, 1u, arg_1.b.x) % vec3<u32>(32u)))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_1.x, var_1.x, 1159f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-974f, -464f, var_1.x, var_1.x) * vec4<f32>(var_1.x, -580f, var_1.x, var_1.x)), true)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, -1251f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, var_1.x, 229f, 692f))))))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -616f, -350f, var_1.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1387f, var_1.x, var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 202f, var_1.x, -1594f))))));
}

fn func_1() -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, -662f, -663f, -1841f))), _wgslsmith_f_op_vec4_f32(func_2(vec3<bool>(true, true, global3[_wgslsmith_index_u32(0u, 10u)]), Struct_1(u_input.c, vec3<u32>(0u, u_input.b.x, u_input.b.x), 36165i, 0i)))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1648f, 175f, -757f, -1571f))) * vec4<f32>(_wgslsmith_f_op_f32(ceil(-1704f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1155f, -1325f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-744f, -581f, 1125f, 1037f))))));
}

fn func_6(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: f32, arg_3: bool) -> f32 {
    global2 = array<Struct_1, 6>();
    let var_0 = Struct_1(vec2<i32>(105353i, 1i), vec3<u32>(1u, reverseBits(20091u), 10062u), ~arg_0.x, _wgslsmith_add_i32(firstLeadingBit(arg_0.x), _wgslsmith_add_i32(25504i, -u_input.c.x)) << ((u_input.a & ~_wgslsmith_mod_u32(u_input.a, 102329u)) % 32u));
    global1 = array<Struct_2, 30>();
    var var_1 = _wgslsmith_f_op_f32(step(arg_2, -1000f));
    var var_2 = Struct_1(vec2<i32>(~0i, 15842i), ~var_0.b >> (vec3<u32>(~var_0.b.x, ~(~46363u), ~var_0.b.x >> (6390u % 32u)) % vec3<u32>(32u)), _wgslsmith_mult_i32(abs(_wgslsmith_dot_vec4_i32(firstLeadingBit(arg_0), arg_0 << (u_input.b % vec4<u32>(32u)))), _wgslsmith_add_i32(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_0.a.x, arg_0.x, 2147483647i), vec4<i32>(-2147483647i, 19934i, var_0.d, 1i))), -5806i)), arg_0.x);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.x * 1f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 6>();
    global2 = array<Struct_1, 6>();
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, 4294967295u | ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, u_input.b.x), ~11711u)), 30u)];
    global2 = array<Struct_1, 6>();
    let var_1 = vec3<f32>(-3109f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1272f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-782f)) + -1320f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-439f, -1103f) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1751f, 203f, false))))))), _wgslsmith_div_f32(-1370f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_6(_wgslsmith_mult_vec4_i32(vec4<i32>(-20109i, -1i, u_input.c.x, var_0.a.a.x), vec4<i32>(var_0.c.x, u_input.c.x, u_input.c.x, -2147483647i)), _wgslsmith_f_op_vec4_f32(func_1()), _wgslsmith_div_f32(-1089f, -1000f), all(vec2<bool>(false, global3[_wgslsmith_index_u32(var_0.b.b.x, 10u)])))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-536f)))))));
    var var_2 = Struct_2(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(u_input.b, ~(~u_input.b)), 6u)], Struct_1(_wgslsmith_mult_vec2_i32(-vec2<i32>(2147483647i, u_input.c.x), vec2<i32>(-1i) * -u_input.c), select(_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(var_0.a.b.x, 24405u, var_0.b.b.x)), var_0.a.b ^ vec3<u32>(u_input.a, var_0.a.b.x, u_input.b.x)), abs(u_input.b.zzy), any(!vec4<bool>(true, false, global3[_wgslsmith_index_u32(0u, 10u)], false))), _wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.c.x, _wgslsmith_mod_i32(1i, var_0.c.x), u_input.c.x >> (4294967295u % 32u), var_0.b.c & var_0.b.c), firstTrailingBit(~vec4<i32>(-53654i, 0i, var_0.a.d, -80i))), _wgslsmith_div_i32(u_input.c.x, u_input.c.x)), vec2<i32>(u_input.c.x, 1053i));
    var var_3 = global1[_wgslsmith_index_u32(min(93407u, u_input.b.x), 30u)];
    let var_4 = !(!vec3<bool>(all(vec2<bool>(global3[_wgslsmith_index_u32(var_0.b.b.x, 10u)], false)), !global3[_wgslsmith_index_u32(~54472u, 10u)], global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.b.x, 0u), ~var_2.a.b.x), 10u)]));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

