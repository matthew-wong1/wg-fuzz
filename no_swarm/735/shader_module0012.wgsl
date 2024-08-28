struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec4<u32>,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 452f;

var<private> global1: vec2<f32> = vec2<f32>(-1243f, 1898f);

var<private> global2: array<Struct_4, 28> = array<Struct_4, 28>(Struct_4(Struct_3(Struct_1(vec3<i32>(0i, 9382i, i32(-2147483648)), -715f), -1055f, vec4<u32>(62627u, 62909u, 0u, 1u), 0u, Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, -1i), -1235f)), 24650i), Struct_4(Struct_3(Struct_1(vec3<i32>(64706i, 2147483647i, 0i), -1000f), 382f, vec4<u32>(5855u, 35867u, 7052u, 75971u), 1u, Struct_1(vec3<i32>(0i, 0i, 1i), -970f)), 52785i), Struct_4(Struct_3(Struct_1(vec3<i32>(3427i, i32(-2147483648), -1i), -171f), -752f, vec4<u32>(47200u, 4294967295u, 3794u, 4294967295u), 0u, Struct_1(vec3<i32>(-17174i, 28549i, 914i), 512f)), 21224i), Struct_4(Struct_3(Struct_1(vec3<i32>(-1i, -1i, -11448i), 221f), -276f, vec4<u32>(78736u, 4294967295u, 1u, 46314u), 8305u, Struct_1(vec3<i32>(0i, i32(-2147483648), 34311i), 439f)), i32(-2147483648)), Struct_4(Struct_3(Struct_1(vec3<i32>(1i, -1135i, 715i), 1000f), -3033f, vec4<u32>(43725u, 0u, 4294967295u, 1u), 6256u, Struct_1(vec3<i32>(5440i, -1i, -13323i), 608f)), 7599i), Struct_4(Struct_3(Struct_1(vec3<i32>(25178i, -8330i, 26440i), -1933f), -2086f, vec4<u32>(613u, 4294967295u, 0u, 11781u), 0u, Struct_1(vec3<i32>(2147483647i, 1899i, 14967i), 702f)), -6077i), Struct_4(Struct_3(Struct_1(vec3<i32>(-58184i, i32(-2147483648), 33653i), 1000f), -213f, vec4<u32>(42u, 24151u, 1u, 0u), 42340u, Struct_1(vec3<i32>(1i, -31551i, 2147483647i), 973f)), 0i), Struct_4(Struct_3(Struct_1(vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), 1710f), -1000f, vec4<u32>(4294967295u, 40321u, 4294967295u, 0u), 58233u, Struct_1(vec3<i32>(1i, -4484i, i32(-2147483648)), -1230f)), -42232i), Struct_4(Struct_3(Struct_1(vec3<i32>(11410i, 1i, 34997i), -1248f), -597f, vec4<u32>(0u, 25376u, 4294967295u, 18355u), 22635u, Struct_1(vec3<i32>(-24607i, i32(-2147483648), 2147483647i), -1448f)), 2147483647i), Struct_4(Struct_3(Struct_1(vec3<i32>(i32(-2147483648), 59334i, 21857i), 2305f), -1000f, vec4<u32>(30336u, 73924u, 47007u, 13731u), 11375u, Struct_1(vec3<i32>(2147483647i, -1i, -1i), 124f)), 2147483647i), Struct_4(Struct_3(Struct_1(vec3<i32>(1i, -11604i, -61287i), -301f), -1000f, vec4<u32>(0u, 4294967295u, 48125u, 0u), 1u, Struct_1(vec3<i32>(2147483647i, -8098i, i32(-2147483648)), 1860f)), -43171i), Struct_4(Struct_3(Struct_1(vec3<i32>(0i, 1i, 2147483647i), -1749f), 1328f, vec4<u32>(12918u, 0u, 91179u, 4294967295u), 26891u, Struct_1(vec3<i32>(7151i, -12576i, 18593i), -116f)), 0i), Struct_4(Struct_3(Struct_1(vec3<i32>(1i, -10823i, 23594i), -1000f), 597f, vec4<u32>(107u, 1u, 4294967295u, 1u), 27867u, Struct_1(vec3<i32>(11665i, 0i, -70779i), 658f)), -21812i), Struct_4(Struct_3(Struct_1(vec3<i32>(-18862i, 2147483647i, -45050i), 1000f), -730f, vec4<u32>(4064u, 0u, 46433u, 4294967295u), 4294967295u, Struct_1(vec3<i32>(31906i, -1i, -16543i), 908f)), -43843i), Struct_4(Struct_3(Struct_1(vec3<i32>(-12569i, 37622i, -1i), 491f), -1000f, vec4<u32>(52602u, 4294967295u, 16426u, 50127u), 4294967295u, Struct_1(vec3<i32>(-44523i, 38776i, -1i), 491f)), 2147483647i), Struct_4(Struct_3(Struct_1(vec3<i32>(0i, 0i, 0i), -2142f), -500f, vec4<u32>(15950u, 4294967295u, 15706u, 0u), 54827u, Struct_1(vec3<i32>(-1i, i32(-2147483648), 2774i), 279f)), -6551i), Struct_4(Struct_3(Struct_1(vec3<i32>(-15205i, 4628i, 2147483647i), -1678f), -507f, vec4<u32>(0u, 3486u, 74956u, 9792u), 584u, Struct_1(vec3<i32>(-33380i, 1i, i32(-2147483648)), 1335f)), 19573i), Struct_4(Struct_3(Struct_1(vec3<i32>(2147483647i, -35012i, 15212i), -404f), -132f, vec4<u32>(30501u, 0u, 1u, 7935u), 4462u, Struct_1(vec3<i32>(-1i, 0i, 2147483647i), 623f)), 23823i), Struct_4(Struct_3(Struct_1(vec3<i32>(2147483647i, -7359i, -29961i), -331f), -197f, vec4<u32>(3637u, 4294967295u, 62665u, 4294967295u), 1u, Struct_1(vec3<i32>(i32(-2147483648), 1i, -45474i), -1000f)), 2147483647i), Struct_4(Struct_3(Struct_1(vec3<i32>(-54605i, -30598i, -6145i), 1586f), -1057f, vec4<u32>(17655u, 0u, 47601u, 8185u), 1192u, Struct_1(vec3<i32>(i32(-2147483648), 1i, -24275i), 665f)), 2147483647i), Struct_4(Struct_3(Struct_1(vec3<i32>(-40848i, -41992i, -5221i), 1009f), -1000f, vec4<u32>(37139u, 56376u, 4294967295u, 58814u), 27309u, Struct_1(vec3<i32>(2147483647i, -1i, 2147483647i), -2207f)), 1i), Struct_4(Struct_3(Struct_1(vec3<i32>(i32(-2147483648), -43234i, 42247i), 1000f), 1060f, vec4<u32>(94752u, 114405u, 27323u, 1u), 34503u, Struct_1(vec3<i32>(-1i, 1i, 0i), -2376f)), -45184i), Struct_4(Struct_3(Struct_1(vec3<i32>(-42359i, 0i, 0i), -1127f), -754f, vec4<u32>(4294967295u, 18514u, 53822u, 97945u), 0u, Struct_1(vec3<i32>(i32(-2147483648), 76180i, 2147483647i), 294f)), i32(-2147483648)), Struct_4(Struct_3(Struct_1(vec3<i32>(-52268i, -1i, 32779i), -1145f), -792f, vec4<u32>(4294967295u, 1u, 10969u, 4294967295u), 59066u, Struct_1(vec3<i32>(4207i, i32(-2147483648), 1i), 536f)), -68435i), Struct_4(Struct_3(Struct_1(vec3<i32>(1i, 4123i, 8611i), -1839f), -1000f, vec4<u32>(1u, 20217u, 1u, 52551u), 0u, Struct_1(vec3<i32>(2147483647i, 1i, 26483i), -648f)), -7009i), Struct_4(Struct_3(Struct_1(vec3<i32>(2147483647i, 2147483647i, -36054i), -992f), 142f, vec4<u32>(4294967295u, 0u, 73331u, 99828u), 63884u, Struct_1(vec3<i32>(-2152i, 35199i, -18138i), 1215f)), i32(-2147483648)), Struct_4(Struct_3(Struct_1(vec3<i32>(-35861i, 29477i, -40425i), 160f), 1364f, vec4<u32>(1u, 13388u, 57419u, 20082u), 27623u, Struct_1(vec3<i32>(-39382i, 61543i, -1i), -241f)), i32(-2147483648)), Struct_4(Struct_3(Struct_1(vec3<i32>(5431i, -818i, -21990i), 1000f), 798f, vec4<u32>(524u, 73055u, 22390u, 48131u), 4294967295u, Struct_1(vec3<i32>(2147483647i, 1i, -1i), 513f)), 1i));

var<private> global3: Struct_3;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    let var_0 = global3.a;
    var var_1 = select(vec3<bool>(all(vec2<bool>(true, true)), ~global3.c.x < arg_0.x, true || any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)))), vec3<bool>(true, true, true), global3.e.b < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b))));
    return _wgslsmith_div_u32(19505u, max(global3.c.x, arg_0.x));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_5 {
    let var_0 = arg_3;
    var var_1 = _wgslsmith_f_op_f32(max(1303f, -1924f));
    let var_2 = global3.c.wxx;
    var var_3 = Struct_2(var_0.a);
    let var_4 = !select(select(!select(arg_1, arg_1, arg_1), arg_1, vec3<bool>(all(arg_1), arg_2.x, false)), vec3<bool>(true, any(vec2<bool>(false, arg_1.x)), true), arg_1);
    return Struct_5(global2[_wgslsmith_index_u32(60951u, 28u)], 12910u);
}

fn func_1(arg_0: bool) -> bool {
    let var_0 = func_3(func_2(global3.c), vec3<bool>(true, arg_0, any(vec3<bool>(!arg_0, arg_0, true))), vec2<bool>(!(arg_0 & false) || !(!arg_0), false), Struct_2(global3.e));
    var var_1 = var_0.a.a.c.zyx;
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.x)))), -946f));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(var_0.a.a.b, global1.x)), 1f))));
    global3 = var_0.a.a;
    return arg_0 & (1u >= reverseBits(~_wgslsmith_div_u32(4294967295u, u_input.a.x)));
}

fn func_4(arg_0: vec4<bool>) -> Struct_3 {
    let var_0 = func_3(~global3.d, !arg_0.xxx, arg_0.xz, Struct_2(Struct_1(reverseBits(vec3<i32>(-2147483647i, global3.e.a.x, global3.a.a.x)), -717f))).a.a;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1551f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1766f - -1102f)));
    let var_1 = vec2<bool>(arg_0.x, arg_0.x);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_4(select(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), true)), vec4<bool>(global3.b != global3.a.b, true, true, false)), vec4<bool>(any(vec2<bool>(true, true)), _wgslsmith_sub_u32(global3.c.x, u_input.a.x) <= _wgslsmith_add_u32(u_input.a.x, global3.c.x), true, !func_1(true)), vec4<bool>(true, any(vec2<bool>(true, false)), false, all(vec2<bool>(true, false)))));
    global1 = vec2<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_4(vec4<bool>(true, true, false, false)).a.b) * _wgslsmith_f_op_f32(step(1592f, 1000f))));
    var var_0 = func_3(func_3(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.a.xz & global3.c.xy, vec2<u32>(1u, global3.c.x) | global3.c.zw), 49257u), vec3<bool>(true, true, true), vec2<bool>(true, true), Struct_2(global3.e)).a.a.c.x, vec3<bool>(false, (global3.a.b > _wgslsmith_f_op_f32(-global1.x)) && !select(true, true, false), any(select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, true)))), !select(vec2<bool>(any(vec4<bool>(true, true, false, false)), true), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_2(global3.a));
    let var_1 = Struct_2(Struct_1(_wgslsmith_mult_vec3_i32(-vec3<i32>(global3.a.a.x, global3.a.a.x, -1i), max(var_0.a.a.e.a, vec3<i32>(global3.e.a.x, var_0.a.a.e.a.x, var_0.a.a.a.a.x))) & countOneBits(-global3.a.a), global3.a.b));
    global2 = array<Struct_4, 28>();
    let var_2 = var_0.a;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, 521f, var_2.a.b))));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(var_2.a.e.a.x), _wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 1u, 1u), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, ~44618u, 1u), vec3<u32>(~4294967295u, ~var_0.b, _wgslsmith_clamp_u32(global3.d, 0u, 48223u)))), ~61241u, -global3.a.a.x, _wgslsmith_add_vec3_i32(~(~var_1.a.a), var_2.a.e.a) & ~(~var_0.a.a.e.a));
}

