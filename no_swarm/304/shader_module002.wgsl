struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec2<f32>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1058f;

var<private> global1: Struct_2;

var<private> global2: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(1i, -808f, vec4<u32>(32225u, 0u, 4294967295u, 4294967295u), i32(-2147483648), 1u), Struct_2(-1i, -215f, vec4<u32>(98197u, 44642u, 37329u, 42240u), -1i, 80783u), Struct_2(i32(-2147483648), -1510f, vec4<u32>(25741u, 0u, 0u, 1u), -33248i, 40032u), Struct_2(-68641i, -1044f, vec4<u32>(11282u, 51650u, 0u, 0u), 30341i, 37335u), Struct_2(2147483647i, -2463f, vec4<u32>(1u, 2206u, 4294967295u, 1u), 30499i, 1273u), Struct_2(-1i, -970f, vec4<u32>(1u, 4294967295u, 2858u, 84756u), 18264i, 4294967295u), Struct_2(29658i, -1545f, vec4<u32>(0u, 45556u, 0u, 47744u), i32(-2147483648), 21963u), Struct_2(0i, -2226f, vec4<u32>(85801u, 75272u, 4294967295u, 37211u), 2884i, 1u), Struct_2(38892i, -1000f, vec4<u32>(0u, 22233u, 83248u, 35299u), -12809i, 1u), Struct_2(748i, 786f, vec4<u32>(0u, 0u, 69608u, 75073u), -1i, 4294967295u), Struct_2(43907i, 414f, vec4<u32>(0u, 84790u, 20245u, 1u), i32(-2147483648), 29565u), Struct_2(24354i, 2285f, vec4<u32>(1u, 4294967295u, 0u, 1u), -1i, 0u), Struct_2(42857i, 1096f, vec4<u32>(31600u, 4294967295u, 53164u, 38959u), -23966i, 44182u), Struct_2(1i, -373f, vec4<u32>(63776u, 12498u, 0u, 31735u), 0i, 1u), Struct_2(i32(-2147483648), 652f, vec4<u32>(10447u, 11742u, 56177u, 4294967295u), -1i, 4294967295u), Struct_2(-28248i, -1000f, vec4<u32>(36663u, 1u, 13804u, 100462u), 38662i, 7848u), Struct_2(23427i, -540f, vec4<u32>(0u, 13641u, 5153u, 32481u), -18069i, 1u), Struct_2(1i, -356f, vec4<u32>(4294967295u, 109389u, 60920u, 44821u), 2147483647i, 77845u), Struct_2(-23618i, -705f, vec4<u32>(1u, 96610u, 1u, 23993u), -37025i, 1u), Struct_2(-3564i, 284f, vec4<u32>(66166u, 85675u, 73081u, 4294967295u), 1i, 27925u), Struct_2(-1i, 1787f, vec4<u32>(25921u, 1u, 0u, 48013u), -7240i, 1u), Struct_2(-1i, 1205f, vec4<u32>(0u, 27427u, 55322u, 0u), 1i, 0u), Struct_2(-26036i, 1446f, vec4<u32>(0u, 0u, 0u, 4294967295u), 18054i, 10694u), Struct_2(i32(-2147483648), -1125f, vec4<u32>(0u, 27454u, 65166u, 4044u), 47117i, 28865u), Struct_2(-31837i, -1084f, vec4<u32>(45327u, 0u, 0u, 1u), 32317i, 38259u), Struct_2(i32(-2147483648), -855f, vec4<u32>(1u, 1u, 10212u, 1u), 42350i, 0u), Struct_2(-1i, 1000f, vec4<u32>(4294967295u, 0u, 36911u, 44988u), 66546i, 80714u), Struct_2(-7382i, -769f, vec4<u32>(19662u, 6348u, 4294967295u, 3094u), -61965i, 4294967295u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_sub_u32(44533u, _wgslsmith_mod_u32(~global1.e, firstLeadingBit(_wgslsmith_dot_vec2_u32(~u_input.b, global1.c.zz))));
    let var_1 = -2147483647i;
    global1 = Struct_2(global1.a, _wgslsmith_f_op_f32(f32(-1f) * -435f), global1.c, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(select(vec3<i32>(global1.a, global1.d, var_1), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, 8640i, 38599i), vec3<i32>(u_input.c, u_input.c, 2147483647i)), true), ~vec3<i32>(u_input.c, u_input.c, 33758i) << ((global1.c.wzw >> (vec3<u32>(var_0, global1.c.x, 0u) % vec3<u32>(32u))) % vec3<u32>(32u))), -(~vec3<i32>(var_1, -6310i, 1811i) << (vec3<u32>(0u, 11571u, 1u) % vec3<u32>(32u)))), 70715u);
    var var_2 = Struct_4(0i);
    global2 = array<Struct_2, 28>();
    return -1023f;
}

fn func_2(arg_0: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(sign(-758f)), 845f, _wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(max(638f, global1.b)))))));
    let var_1 = global2[_wgslsmith_index_u32(~max(1u, 0u), 28u)];
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1776f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1250f * _wgslsmith_f_op_f32(func_3())) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), all(vec3<bool>(all(vec3<bool>(false, true, false)), false, true)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(-491f, 785f), _wgslsmith_f_op_f32(-global1.b)), _wgslsmith_f_op_f32(min(global1.b, _wgslsmith_f_op_f32(arg_0.b * var_1.b)))))))));
    let var_3 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(-450i, 0i), vec2<i32>(var_1.d, 2147483647i) | vec2<i32>(-1i, 33782i)), var_1.d, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.d, -19248i, u_input.c, 16037i), vec4<i32>(-2147483647i, -26027i, 2147483647i, global1.a)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, 47434i, global1.a, -4968i), vec4<i32>(global1.d, global1.a, 21745i, u_input.c)))), vec3<i32>(-1i) * -vec3<i32>(1i, var_1.a, -69758i)), u_input.b.x, true | all(select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true), vec2<bool>(true, true))), (_wgslsmith_div_u32(_wgslsmith_add_u32(var_1.c.x, u_input.b.x), ~var_1.e) != global1.e) | false, u_input.d > _wgslsmith_dot_vec3_u32(firstTrailingBit(global1.c.zyz << (vec3<u32>(1u, var_1.e, 29490u) % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(~var_1.c.ywz, ~global1.c.ywz)));
    global1 = Struct_2(0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(arg_0.b, var_2)), -173f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.b, _wgslsmith_f_op_f32(arg_0.c.x - var_1.b), select(true, var_3.d, var_3.e))))), min(max(select(vec4<u32>(0u, 46778u, 0u, 1u), vec4<u32>(global1.c.x, 14135u, 1u, var_1.c.x), vec4<bool>(var_3.c, true, var_3.d, false)) << (select(var_1.c, vec4<u32>(4294967295u, 4294967295u, var_1.c.x, 4294967295u), false) % vec4<u32>(32u)), ~global1.c), min(global1.c, _wgslsmith_clamp_vec4_u32(var_1.c, vec4<u32>(1u, global1.e, var_1.c.x, u_input.a.x), var_1.c)) >> (global1.c % vec4<u32>(32u))), max(21287i, -19732i), _wgslsmith_mult_u32(countOneBits(4294967295u), max(~abs(u_input.a.x), 0u)));
    return ~global1.c.x;
}

fn func_1() -> Struct_2 {
    global2 = array<Struct_2, 28>();
    var var_0 = Struct_5(Struct_2(2147483647i, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.b - -601f))))), firstTrailingBit(global1.c), -2147483647i, _wgslsmith_add_u32(func_2(Struct_3(1226f, global1.b, vec2<f32>(2003f, -1187f))), 50135u)));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) - -199f)), global1.b);
    let var_1 = countOneBits(select(_wgslsmith_div_u32(~25287u, firstTrailingBit(1u)), ~global1.e, true));
    let var_2 = all(!(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), false))));
    return var_0.a;
}

fn func_4(arg_0: Struct_5) -> vec4<bool> {
    global1 = func_1();
    var var_0 = false;
    global1 = func_1();
    let var_1 = select(!select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, true), false)), vec2<bool>(true, true), true), !select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, false)), global1.c.x <= 87167u), false), true);
    var var_2 = select(select(select(var_1, select(vec2<bool>(false, true), vec2<bool>(true, false), !var_1.x), select(select(vec2<bool>(false, false), var_1, var_1), select(vec2<bool>(var_1.x, true), vec2<bool>(var_1.x, var_1.x), var_1), select(vec2<bool>(false, var_1.x), var_1, vec2<bool>(var_1.x, false)))), vec2<bool>(all(vec2<bool>(false, true)), false), true), var_1, !vec2<bool>(var_1.x, true));
    return select(vec4<bool>(all(!select(vec3<bool>(false, true, var_2.x), vec3<bool>(var_2.x, true, var_2.x), vec3<bool>(true, true, true))), -849f == _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.a.b - -1152f), _wgslsmith_f_op_f32(arg_0.a.b - arg_0.a.b))), (all(vec3<bool>(true, var_1.x, false)) || true) | any(vec3<bool>(var_1.x, false, true)), any(select(!vec3<bool>(true, true, var_1.x), select(vec3<bool>(true, true, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, true, true)), !vec3<bool>(true, false, var_1.x)))), vec4<bool>(true == var_1.x, var_1.x, any(var_1), var_1.x || any(var_1)), !vec4<bool>(all(select(vec2<bool>(var_1.x, true), var_1, var_2.x)), var_2.x, var_1.x, var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.b;
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, _wgslsmith_f_op_f32(step(1374f, global1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -253f) + global1.b)));
    let var_2 = func_4(Struct_5(func_1()));
    var var_3 = reverseBits(global1.c.yww);
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.b))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_4 = global1.a;
    global0 = _wgslsmith_f_op_f32(-global1.b);
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(global1.e, ~_wgslsmith_div_u32(var_3.x, 4294967295u), ~(~u_input.b.x)), -_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(global1.d, global1.d), -vec2<i32>(u_input.c, u_input.c)), -vec2<i32>(60739i, -1i), vec2<i32>(u_input.c, 1i) << (global1.c.xy % vec2<u32>(32u))), -_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(u_input.c, global1.d, -1i)), _wgslsmith_mod_vec3_i32(-vec3<i32>(-1i, u_input.c, 2471i), ~vec3<i32>(global1.d, -2147483647i, u_input.c)), _wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.c, u_input.c, 6494i), ~vec3<i32>(u_input.c, global1.d, 2147483647i))), _wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(u_input.c, u_input.c, 5596i)), ~_wgslsmith_mult_vec3_i32(vec3<i32>(global1.d, global1.d, -23131i), vec3<i32>(global1.d, u_input.c, u_input.c))) & _wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(global1.a, global1.d, global1.d)), (vec3<i32>(u_input.c, 1i, u_input.c) ^ vec3<i32>(-1i, u_input.c, global1.d)) ^ vec3<i32>(u_input.c, u_input.c, 2147483647i)), global1.c);
}

