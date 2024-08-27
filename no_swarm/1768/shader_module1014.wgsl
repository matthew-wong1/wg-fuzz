struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: f32,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31> = array<u32, 31>(41037u, 1679u, 29247u, 1u, 33597u, 29385u, 20898u, 12691u, 26771u, 0u, 1u, 4294967295u, 39257u, 22903u, 75709u, 2746u, 4294967295u, 24052u, 0u, 61781u, 115792u, 1u, 1u, 4294967295u, 4294967295u, 86370u, 11379u, 4294967295u, 591u, 121278u, 1u);

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(-394f, vec4<u32>(0u, 0u, 11580u, 0u), 0u, false, 30614i), Struct_1(542f, vec4<u32>(0u, 103066u, 1u, 67745u), 0u, true, -20102i), Struct_1(2506f, vec4<u32>(33720u, 4294967295u, 1u, 1869u), 38337u, true, -18456i), Struct_1(-814f, vec4<u32>(4294967295u, 33675u, 0u, 44191u), 1u, false, 0i), Struct_1(-427f, vec4<u32>(18116u, 4294967295u, 0u, 1u), 0u, false, 17183i), Struct_1(-535f, vec4<u32>(4294967295u, 54738u, 1u, 0u), 1u, false, i32(-2147483648)), Struct_1(1625f, vec4<u32>(14211u, 23218u, 4294967295u, 21066u), 11580u, false, 12780i), Struct_1(-1445f, vec4<u32>(1u, 0u, 4294967295u, 23656u), 13880u, false, 2984i), Struct_1(-1686f, vec4<u32>(4294967295u, 4294967295u, 1u, 43565u), 1u, true, 2147483647i), Struct_1(-1300f, vec4<u32>(0u, 14419u, 1u, 0u), 74174u, false, 63248i), Struct_1(-831f, vec4<u32>(4294967295u, 43032u, 4294967295u, 0u), 45555u, true, 2147483647i), Struct_1(-1073f, vec4<u32>(1u, 1u, 4294967295u, 1u), 0u, true, -6876i), Struct_1(1000f, vec4<u32>(1u, 1u, 4294967295u, 94014u), 1u, false, i32(-2147483648)), Struct_1(988f, vec4<u32>(4294967295u, 1u, 1u, 22456u), 0u, true, -11607i), Struct_1(-1549f, vec4<u32>(1u, 16315u, 3153u, 0u), 0u, false, -25103i), Struct_1(-161f, vec4<u32>(1u, 88724u, 4294967295u, 0u), 0u, true, 28008i), Struct_1(300f, vec4<u32>(19362u, 1u, 0u, 4294967295u), 4294967295u, true, -6500i), Struct_1(-2117f, vec4<u32>(29070u, 0u, 18318u, 1u), 5923u, false, 17100i), Struct_1(487f, vec4<u32>(4214u, 0u, 35853u, 57641u), 1u, true, i32(-2147483648)), Struct_1(-1102f, vec4<u32>(4294967295u, 4294967295u, 1u, 71187u), 1u, false, i32(-2147483648)), Struct_1(-1000f, vec4<u32>(6490u, 54770u, 0u, 4294967295u), 81736u, false, -3489i), Struct_1(-182f, vec4<u32>(5292u, 4176u, 45467u, 10571u), 0u, false, -1375i));

var<private> global2: Struct_1 = Struct_1(-541f, vec4<u32>(0u, 32465u, 28917u, 44141u), 74062u, false, 2147483647i);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = global2.c;
    var var_1 = Struct_2(vec4<bool>(global2.d != (arg_0 > 1000f), true, global2.d, true), ~u_input.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-616f)))), global2.b, global1[_wgslsmith_index_u32(30658u, 22u)]);
    let var_2 = 83312u;
    var_1 = Struct_2(var_1.a, 0i, global2.a, ~countOneBits(vec4<u32>(19122u, var_1.e.c, global2.c, 52476u)) | min(var_1.d, (vec4<u32>(71407u, var_2, 0u, 34589u) >> (vec4<u32>(global0[_wgslsmith_index_u32(var_1.e.c, 31u)], 46631u, 0u, 4294967295u) % vec4<u32>(32u))) >> (var_1.d % vec4<u32>(32u))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_1.e.b.yy, _wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(var_2, var_1.d.x)), vec2<u32>(1u, 1u), ~firstTrailingBit(var_1.d.zw))), 22u)]);
    global1 = array<Struct_1, 22>();
    return var_1.e.d;
}

fn func_2() -> i32 {
    let var_0 = Struct_2(vec4<bool>(any(vec4<bool>(!global2.d, any(vec3<bool>(global2.d, true, global2.d)), true, true)), global2.d, func_3(global2.a), any(vec4<bool>(74598u <= global2.b.x, true, all(vec3<bool>(false, global2.d, true)), global2.d))), ~(-2147483647i), global2.a, min(~(~(~vec4<u32>(1u, 4294967295u, global0[_wgslsmith_index_u32(60734u, 31u)], global0[_wgslsmith_index_u32(0u, 31u)]))), ~vec4<u32>(global0[_wgslsmith_index_u32(79917u, 31u)], global2.c, global2.c, ~global0[_wgslsmith_index_u32(global2.c, 31u)])), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global2.a)), _wgslsmith_div_f32(164f, global2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-107f))))), _wgslsmith_add_vec4_u32(vec4<u32>(~15277u, 67487u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4777u), vec2<u32>(global2.b.x, global0[_wgslsmith_index_u32(global2.b.x, 31u)])), 31u)], ~68113u), ~global2.b >> (firstLeadingBit(global2.b) % vec4<u32>(32u))), _wgslsmith_clamp_u32(~global0[_wgslsmith_index_u32(0u, 31u)] & 4294967295u, global0[_wgslsmith_index_u32(countOneBits(global2.b.x) & ~53955u, 31u)], 1u), global2.d, global2.e));
    global0 = array<u32, 31>();
    let var_1 = abs(global2.b.x);
    let var_2 = var_0;
    global1 = array<Struct_1, 22>();
    return var_0.e.e;
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    var var_0 = abs((~(~(-2147483647i)) ^ (firstTrailingBit(u_input.b.x) >> (1u % 32u))) & ~_wgslsmith_div_i32(func_2(), 1i));
    global0 = array<u32, 31>();
    global2 = global1[_wgslsmith_index_u32(0u, 22u)];
    let var_1 = Struct_2(select(select(!vec4<bool>(true, global2.d, false, global2.d), vec4<bool>(false | global2.d, global2.d, false, true), true & any(vec3<bool>(true, false, global2.d))), !select(!vec4<bool>(global2.d, global2.d, global2.d, true), vec4<bool>(global2.d, global2.d, global2.d, global2.d), vec4<bool>(false, global2.d, global2.d, global2.d)), select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, global2.d, true, global2.d), false), vec4<bool>(true, global2.d, false, global2.d), true), vec4<bool>(false, true, global2.d && global2.d, all(vec2<bool>(false, true))), vec4<bool>(global2.d, true, !global2.d, true))), -(i32(-1i) * -max(u_input.a.x, u_input.b.x)), -530f, global2.b, global1[_wgslsmith_index_u32(~1u, 22u)]);
    let var_2 = !vec2<bool>(all(select(!var_1.a.wwy, select(vec3<bool>(true, false, false), var_1.a.ywz, var_1.e.d), !var_1.e.d)), !(!all(var_1.a.yy)));
    return ~(~(~80814u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 976f;
    let var_1 = Struct_2(!vec4<bool>(true, global2.d, any(!vec4<bool>(global2.d, global2.d, global2.d, false)), !global2.d), u_input.a.x, -900f, _wgslsmith_sub_vec4_u32(min(~vec4<u32>(4294967295u, 35556u, 4294967295u, 4294967295u), global2.b), vec4<u32>(~(~4294967295u), func_1(~global2.b.xzx), 1u, ~abs(73870u))), Struct_1(_wgslsmith_f_op_f32(floor(var_0)), _wgslsmith_mult_vec4_u32(vec4<u32>(global2.c ^ global2.b.x, _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(10765u, 31u)], 54528u, 4294967295u), global2.b.x, 29131u), ~global2.b), _wgslsmith_dot_vec4_u32(global2.b << (vec4<u32>(global2.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.c, 31u)], 31u)], global2.b.x, 4294967295u) % vec4<u32>(32u)), ~global2.b), !global2.d, -u_input.a.x));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(359f * _wgslsmith_f_op_f32(sign(127f))), (~vec4<u32>(20983u, 4294967295u, 1u, 111891u) >> (select(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.e.c, 31u)], 31u)], var_1.d.x, 87252u, 62646u) ^ var_1.e.b, ~vec4<u32>(var_1.e.b.x, var_1.e.b.x, 61701u, global2.c), global2.d) % vec4<u32>(32u))) << (abs(var_1.e.b << (abs(var_1.d) % vec4<u32>(32u))) % vec4<u32>(32u)), global2.b.x, true, min(-2147483647i, var_1.b));
    var var_3 = Struct_2(select(var_1.a, !vec4<bool>(2178i < var_2.e, var_1.a.x, var_1.a.x & false, var_2.d), var_1.a), u_input.b.x, -1794f, _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(var_1.d, _wgslsmith_mod_vec4_u32(~global2.b, ~vec4<u32>(global2.b.x, global2.b.x, var_2.b.x, var_2.b.x))), select(global2.b, _wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(54873u, 79240u, var_2.b.x, 4294967295u)), var_2.b), var_1.a)), var_1.e);
    let var_4 = -1540f == var_2.a;
    var var_5 = _wgslsmith_mult_u32(0u, var_3.d.x);
    global2 = var_3.e;
    var var_6 = func_3(_wgslsmith_f_op_f32(global2.a + -376f)) | false;
    let x = u_input.a;
    s_output = StorageBuffer(1u, -vec2<i32>(1i, 2147483647i << (var_3.e.c % 32u)));
}

