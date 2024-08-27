struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: bool,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32> = array<bool, 32>(true, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, true, true, false, false, false, true, false, false, true, false, true, true);

var<private> global1: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec2<u32>(46426u, 17046u), vec4<i32>(1i, -29638i, 0i, 1i), false, vec3<i32>(i32(-2147483648), 19666i, 2235i)), Struct_1(vec2<u32>(4294967295u, 1u), vec4<i32>(64418i, 3646i, 59i, i32(-2147483648)), false, vec3<i32>(15611i, -20405i, 1i)), Struct_1(vec2<u32>(2231u, 0u), vec4<i32>(-19339i, -31251i, 2147483647i, 2147483647i), true, vec3<i32>(-58588i, -19326i, 21295i)), Struct_1(vec2<u32>(4294967295u, 64706u), vec4<i32>(35824i, 39533i, -5046i, 17416i), false, vec3<i32>(0i, -24401i, 47293i)), Struct_1(vec2<u32>(4294967295u, 29635u), vec4<i32>(-3821i, -42156i, 10611i, i32(-2147483648)), true, vec3<i32>(24243i, -14364i, 6221i)), Struct_1(vec2<u32>(95363u, 6090u), vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), 49790i), false, vec3<i32>(-38276i, 1i, 0i)), Struct_1(vec2<u32>(1u, 4294967295u), vec4<i32>(-1i, -10461i, -72570i, -47715i), true, vec3<i32>(45354i, 2147483647i, 19905i)), Struct_1(vec2<u32>(28152u, 11334u), vec4<i32>(0i, -20913i, -48801i, -1i), false, vec3<i32>(28003i, 2147483647i, -21484i)), Struct_1(vec2<u32>(0u, 28192u), vec4<i32>(i32(-2147483648), 1i, 7132i, 1i), false, vec3<i32>(1i, -21137i, -21705i)), Struct_1(vec2<u32>(4294967295u, 33981u), vec4<i32>(0i, i32(-2147483648), 0i, -30071i), false, vec3<i32>(0i, i32(-2147483648), -1i)), Struct_1(vec2<u32>(0u, 4294967295u), vec4<i32>(-1i, 2121i, 45957i, 2845i), true, vec3<i32>(-1i, 32749i, 2850i)), Struct_1(vec2<u32>(12972u, 54514u), vec4<i32>(-1i, 0i, -1i, 0i), false, vec3<i32>(-56361i, 21212i, 10412i)), Struct_1(vec2<u32>(84317u, 64717u), vec4<i32>(2147483647i, -33896i, -10952i, 77690i), false, vec3<i32>(i32(-2147483648), -43287i, i32(-2147483648))), Struct_1(vec2<u32>(1u, 102844u), vec4<i32>(1i, -26254i, i32(-2147483648), -7969i), false, vec3<i32>(1i, i32(-2147483648), -1i)), Struct_1(vec2<u32>(0u, 0u), vec4<i32>(9147i, 0i, 21170i, i32(-2147483648)), true, vec3<i32>(27302i, 0i, -24315i)), Struct_1(vec2<u32>(0u, 76914u), vec4<i32>(2147483647i, 37760i, 2147483647i, 14310i), false, vec3<i32>(-19170i, 21768i, 2058i)), Struct_1(vec2<u32>(1u, 1u), vec4<i32>(35659i, 61216i, -2409i, 660i), true, vec3<i32>(2147483647i, 31999i, 1i)), Struct_1(vec2<u32>(16687u, 49129u), vec4<i32>(0i, -29237i, 1i, -11065i), true, vec3<i32>(12634i, 2147483647i, -1i)), Struct_1(vec2<u32>(4294967295u, 0u), vec4<i32>(-30063i, i32(-2147483648), 2147483647i, 31248i), false, vec3<i32>(-24052i, 0i, 0i)), Struct_1(vec2<u32>(21903u, 2852u), vec4<i32>(0i, 1i, 1i, 2147483647i), false, vec3<i32>(-1i, i32(-2147483648), -434i)), Struct_1(vec2<u32>(1u, 100854u), vec4<i32>(7004i, 0i, 2147483647i, -14728i), false, vec3<i32>(50767i, 2147483647i, -21203i)), Struct_1(vec2<u32>(4294967295u, 1u), vec4<i32>(2147483647i, -30593i, -1i, 0i), true, vec3<i32>(-29839i, 2147483647i, -1i)), Struct_1(vec2<u32>(18309u, 1u), vec4<i32>(-15578i, 11891i, -1i, -8138i), false, vec3<i32>(30945i, -6325i, -1i)), Struct_1(vec2<u32>(23739u, 43959u), vec4<i32>(1i, 1i, 0i, 27926i), true, vec3<i32>(0i, 1i, -1i)), Struct_1(vec2<u32>(1u, 1u), vec4<i32>(55598i, 0i, i32(-2147483648), -1i), false, vec3<i32>(1i, 16366i, 36620i)));

var<private> global2: Struct_1 = Struct_1(vec2<u32>(1u, 70568u), vec4<i32>(1i, -8959i, 21940i, 0i), false, vec3<i32>(78459i, 1i, 0i));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> u32 {
    var var_0 = select(!global2.c, _wgslsmith_f_op_f32(f32(-1f) * -478f) >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-244f, 1242f))), 1075f)), global0[_wgslsmith_index_u32(~select(~(4294967295u << (u_input.a.x % 32u)), global2.a.x, true), 32u)]);
    let var_1 = global2.b.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1f, 1f, 1f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(403f, 290f, 404f) + vec3<f32>(327f, -463f, 1280f)), vec3<f32>(1f, 1f, 1f), vec3<bool>(false, global0[_wgslsmith_index_u32(global2.a.x, 32u)], global2.c))) + vec3<f32>(_wgslsmith_div_f32(-412f, 491f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(458f - 490f))) + vec3<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -309f)), 903f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-960f, -1000f)) * -519f))));
    var_0 = any(select(vec2<bool>(false, true), select(!vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 32u)]), select(!vec2<bool>(false, global0[_wgslsmith_index_u32(global2.a.x, 32u)]), select(vec2<bool>(global2.c, global0[_wgslsmith_index_u32(0u, 32u)]), vec2<bool>(false, false), global2.c), !global0[_wgslsmith_index_u32(1u, 32u)]), true), vec2<bool>(global2.c, any(vec4<bool>(false, global2.c, true, global2.c)))));
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, 4294967295u, 4294967295u, global2.a.x), vec4<u32>(4294967295u, u_input.a.x, 553u, 0u))), ~(~vec4<u32>(u_input.a.x, u_input.d.x, 30983u, 23699u))) << (~(vec4<u32>(global2.a.x, 77458u, u_input.b, 4294967295u) >> (firstLeadingBit(vec4<u32>(u_input.b, global2.a.x, 4294967295u, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u)), abs(~(max(vec4<u32>(u_input.b, u_input.d.x, global2.a.x, u_input.a.x), vec4<u32>(1u, global2.a.x, 4294967295u, 20393u)) << ((vec4<u32>(108146u, global2.a.x, 1u, 4294967295u) | vec4<u32>(57459u, u_input.a.x, u_input.b, global2.a.x)) % vec4<u32>(32u))))), 25u)];
    return 1u;
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec4<u32>) -> u32 {
    var var_0 = ~reverseBits(vec4<u32>(arg_2.a.x, 1u, arg_2.a.x, ~128679u ^ global2.a.x));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(450f, 1000f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -772f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1198f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(692f))))));
    global1 = array<Struct_1, 25>();
    var var_2 = !select(vec4<bool>(global0[_wgslsmith_index_u32(max(var_0.x, 64875u), 32u)] && any(vec4<bool>(global0[_wgslsmith_index_u32(64888u, 32u)], false, false, global2.c)), any(arg_1), !(global0[_wgslsmith_index_u32(var_0.x, 32u)] || arg_1.x), true), !vec4<bool>(any(vec4<bool>(arg_2.c, true, true, true)), all(arg_1), 32860i != arg_0, !global2.c), vec4<bool>(arg_2.c, !(var_1 >= 1000f), arg_1.x, any(vec2<bool>(arg_2.c, false))));
    global1 = array<Struct_1, 25>();
    return _wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(arg_3.xxx, vec3<u32>(_wgslsmith_dot_vec3_u32(arg_3.zxy, vec3<u32>(1u, arg_3.x, u_input.b)), arg_3.x, _wgslsmith_mult_u32(1u, arg_3.x))), vec3<u32>(~(arg_3.x << (1u % 32u)), ~38925u, _wgslsmith_div_u32(_wgslsmith_clamp_u32(arg_2.a.x, arg_3.x, var_0.x), 3429u)) & vec3<u32>(_wgslsmith_add_u32(27630u, u_input.b) & ~arg_3.x, u_input.b, _wgslsmith_mult_u32(1u, 1u)));
}

fn func_4(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: bool) -> u32 {
    let var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(39443u, u_input.b), ~(~1u)), u_input.d.x), vec2<u32>(func_3(firstTrailingBit(arg_2.b.x), vec2<bool>(true, true), Struct_1(firstTrailingBit(vec2<u32>(1u, 52752u)), _wgslsmith_mod_vec4_i32(arg_2.b, arg_2.b), any(vec3<bool>(global0[_wgslsmith_index_u32(0u, 32u)], false, arg_2.c)), reverseBits(vec3<i32>(u_input.c, 1i, global2.b.x))), vec4<u32>(u_input.a.x, 1u, 77188u, u_input.a.x)), u_input.b));
    let var_1 = arg_0;
    let var_2 = vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(arg_1, countOneBits(vec2<i32>(u_input.c, global2.b.x))), -(~vec2<i32>(-41121i, 0i)) << ((firstTrailingBit(arg_2.a) | _wgslsmith_add_vec2_u32(vec2<u32>(0u, arg_2.a.x), vec2<u32>(u_input.b, 10310u))) % vec2<u32>(32u))), 39317i, _wgslsmith_dot_vec4_i32(min(vec4<i32>(~arg_2.b.x, -2147483647i, _wgslsmith_mod_i32(arg_1.x, 0i), 1i), -(~arg_2.b)), ~select(vec4<i32>(-24500i, 87054i, global2.d.x, 2147483647i), firstTrailingBit(global2.b), select(vec4<bool>(true, true, false, true), vec4<bool>(global0[_wgslsmith_index_u32(global2.a.x, 32u)], arg_3, global0[_wgslsmith_index_u32(var_0.x, 32u)], arg_2.c), vec4<bool>(arg_2.c, false, arg_2.c, arg_3)))));
    var var_3 = _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(global2.b.x, arg_1.x, -1i), vec3<i32>(global2.d.x, -1i, 4251i))), vec3<i32>(arg_2.b.x, var_2.x, min(min(-2147483647i, 1i), _wgslsmith_sub_i32(85772i, global2.d.x)))), -_wgslsmith_sub_vec3_i32(-select(var_2, var_2, false), _wgslsmith_div_vec3_i32(~var_2, var_2)));
    let var_4 = global2.c || !arg_2.c;
    return 0u;
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    global0 = array<bool, 32>();
    var var_0 = 1u;
    let var_1 = global2.b.xyy;
    var var_2 = vec4<i32>(-1i) * -global2.b;
    var var_3 = global1[_wgslsmith_index_u32(func_4(-1000f, var_2.xw, global1[_wgslsmith_index_u32(func_3(~(-arg_0.x), !(!select(vec2<bool>(global0[_wgslsmith_index_u32(15720u, 32u)], false), vec2<bool>(global2.c, global2.c), global2.c)), Struct_1(_wgslsmith_mult_vec2_u32(global2.a ^ u_input.a, select(vec2<u32>(global2.a.x, u_input.a.x), global2.a, vec2<bool>(true, global2.c))), select(global2.b, select(vec4<i32>(-72219i, u_input.c, var_2.x, 2147483647i), global2.b, vec4<bool>(global2.c, false, true, global0[_wgslsmith_index_u32(global2.a.x, 32u)])), !global2.c), global0[_wgslsmith_index_u32(u_input.d.x, 32u)], ~var_2.wzx), ~vec4<u32>(abs(global2.a.x), u_input.b, func_2(), global2.a.x >> (u_input.b % 32u))), 25u)], true), 25u)];
    return global1[_wgslsmith_index_u32(select(~func_2(), select(~u_input.d.x, ~func_2(), firstTrailingBit(global2.d.x) <= min(arg_0.x, 18015i)), false) << (_wgslsmith_sub_u32(~_wgslsmith_add_u32(~var_3.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, 4294967295u), vec3<u32>(u_input.d.x, global2.a.x, 1u))), global2.a.x) % 32u), 25u)];
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec4<u32>(arg_0.a.x, abs(4912u), ~20019u >> (func_3(-1i, vec2<bool>(func_1(global2.b.zw).c, global2.c), func_1(vec2<i32>(global2.d.x, global2.d.x)), vec4<u32>(~arg_0.a.x, ~4294967295u, global2.a.x, ~0u)) % 32u), ~(~u_input.b));
    let var_1 = select(select(!select(select(vec2<bool>(false, global2.c), vec2<bool>(global0[_wgslsmith_index_u32(111270u, 32u)], arg_0.c), false), select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 32u)], global2.c), vec2<bool>(false, arg_0.c), vec2<bool>(true, true)), global2.d.x > 0i), select(vec2<bool>(select(global2.c, global0[_wgslsmith_index_u32(21886u, 32u)], true), 59392i > u_input.c), !vec2<bool>(arg_0.c, global0[_wgslsmith_index_u32(1u, 32u)]), vec2<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(arg_0.a.x, 32u)], global0[_wgslsmith_index_u32(21541u, 32u)])), true)), !(!vec2<bool>(arg_0.c, global0[_wgslsmith_index_u32(96376u, 32u)]))), select(!select(vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 32u)], global0[_wgslsmith_index_u32(6655u, 32u)]), !vec2<bool>(global2.c, arg_0.c), true), vec2<bool>(true, true), global2.c), !vec2<bool>(_wgslsmith_mod_i32(u_input.c, -36841i) < arg_0.d.x, false || (global2.c & true)));
    global1 = array<Struct_1, 25>();
    var var_2 = func_1(~vec2<i32>(51641i, 8287i)).c;
    global0 = array<bool, 32>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 17824i;
    var var_1 = global2.d.x;
    let var_2 = func_5(func_1(_wgslsmith_sub_vec2_i32(global2.d.yy, vec2<i32>(_wgslsmith_sub_i32(global2.b.x, global2.d.x), u_input.c))));
    var var_3 = global2.a.x;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1223f + _wgslsmith_f_op_f32(round(-1895f))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-980f)))));
    global0 = array<bool, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -156f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-770f)) * _wgslsmith_f_op_f32(588f - -777f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4, var_4, var_4, -449f) - vec4<f32>(-485f, -193f, var_4, -753f)))) - _wgslsmith_div_vec4_f32(vec4<f32>(741f, var_4, var_4, var_4), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-494f, var_4, -1000f, 1320f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_4, var_4), _wgslsmith_div_vec2_f32(vec2<f32>(var_4, var_4), vec2<f32>(107f, var_4))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4, var_4)))))));
}

