struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(true, 0i, vec4<bool>(true, true, true, false)), Struct_2(true, -1i, vec4<bool>(false, true, false, true)), Struct_2(true, -68538i, vec4<bool>(false, true, false, false)), Struct_2(true, 1i, vec4<bool>(true, false, true, false)), Struct_2(true, 2147483647i, vec4<bool>(false, false, false, true)), Struct_2(true, 2147483647i, vec4<bool>(true, false, true, false)), Struct_2(true, -65761i, vec4<bool>(true, true, true, true)), Struct_2(true, 9698i, vec4<bool>(false, false, false, false)), Struct_2(false, 21815i, vec4<bool>(false, true, true, true)), Struct_2(false, 49312i, vec4<bool>(false, false, true, false)), Struct_2(true, 3228i, vec4<bool>(false, true, true, true)), Struct_2(true, 1i, vec4<bool>(false, true, true, true)), Struct_2(false, 2147483647i, vec4<bool>(false, true, false, false)), Struct_2(false, 2147483647i, vec4<bool>(false, true, false, false)), Struct_2(false, 2147483647i, vec4<bool>(true, true, true, true)), Struct_2(true, 0i, vec4<bool>(true, false, true, true)), Struct_2(true, -8577i, vec4<bool>(true, true, true, true)), Struct_2(false, 48276i, vec4<bool>(true, false, true, false)), Struct_2(false, -43430i, vec4<bool>(false, false, false, true)), Struct_2(true, 0i, vec4<bool>(true, false, true, true)), Struct_2(true, -5768i, vec4<bool>(false, true, true, false)), Struct_2(true, -27461i, vec4<bool>(true, false, false, false)), Struct_2(true, i32(-2147483648), vec4<bool>(true, true, true, false)), Struct_2(false, -37449i, vec4<bool>(false, false, true, false)));

var<private> global1: Struct_2;

var<private> global2: i32 = 0i;

var<private> global3: vec4<i32> = vec4<i32>(0i, 1i, i32(-2147483648), -104155i);

var<private> global4: vec4<bool> = vec4<bool>(true, false, true, true);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> bool {
    let var_0 = Struct_2(false, _wgslsmith_sub_i32(u_input.a.x, global3.x), vec4<bool>(select(!global4.x & global1.a, true, global4.x), global4.x, !(!(!global1.c.x)), all(global4.wyz)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-734f - _wgslsmith_f_op_f32(select(500f, 1296f, global1.a))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(314f - 355f), _wgslsmith_f_op_f32(max(-1043f, 1027f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1940f, -243f)) - _wgslsmith_f_op_f32(f32(-1f) * -726f)))));
    let var_2 = Struct_2(!global4.x, ~_wgslsmith_add_i32(2147483647i, global1.b), select(select(!select(global1.c, vec4<bool>(true, global1.c.x, false, false), vec4<bool>(false, true, global4.x, true)), vec4<bool>(true, false, true, true), !var_0.c), vec4<bool>(global1.b == 2147483647i, all(global1.c.zyw), global1.c.x, select(false, false, global1.c.x)), select(vec4<bool>(true, !global1.a, any(vec2<bool>(var_0.a, var_0.a)), all(vec2<bool>(global1.c.x, false))), select(!vec4<bool>(global1.c.x, true, global1.a, var_0.c.x), select(vec4<bool>(false, true, global4.x, false), global1.c, true), global4.x), vec4<bool>(!var_0.a, global1.c.x && var_0.a, true, select(global4.x, global1.c.x, var_0.a)))));
    var var_3 = Struct_1(select(vec3<bool>(!all(vec4<bool>(var_2.a, var_2.a, false, var_2.a)), true, global1.c.x), vec3<bool>(true, !global1.c.x && (var_0.a & true), !(!global1.a)), !(!var_2.a)), var_0.c, vec3<bool>(global1.c.x, true, _wgslsmith_div_f32(-1785f, _wgslsmith_f_op_f32(-var_1)) <= -163f), _wgslsmith_sub_i32(1i, global1.b));
    var var_4 = (max(abs(18190u), ~(~4294967295u)) >> (~4294967295u % 32u)) << ((firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, 4294967295u, 0u), firstTrailingBit(56041u))) << (0u % 32u)) % 32u);
    return false;
}

fn func_2(arg_0: vec3<i32>, arg_1: u32) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(4294967295u, 24u)];
    var var_1 = true;
    var var_2 = Struct_2(all(vec2<bool>(true, true)), _wgslsmith_add_i32(arg_0.x, firstLeadingBit(var_0.b)), vec4<bool>(func_3(), select(any(select(global1.c, vec4<bool>(var_0.a, false, false, false), false)), any(vec3<bool>(true, false, global4.x)) || func_3(), true), !(~arg_1 <= ~1u), false));
    let var_3 = true;
    let var_4 = Struct_1(vec3<bool>(true, false, any(!var_2.c)), global1.c, select(global1.c.wyy, select(var_2.c.wzw, global4.wxx, !var_2.c.xyx), select(!var_0.c.www, select(var_2.c.zwx, vec3<bool>(global4.x, false, false), var_2.c.zzz), true)), var_0.b);
    return var_2.c.x;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(502f, -366f), vec2<f32>(336f, 412f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(-1352f, 967f), vec2<f32>(-568f, 1963f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1084f, -113f))))))))));
    var var_1 = Struct_3(global3.x, min(1i, _wgslsmith_mult_i32(u_input.a.x >> (4294967295u % 32u), u_input.a.x << (4294967295u % 32u))) == u_input.a.x, vec4<i32>(-(global3.x | 28758i), 1i, ~1i, global1.b) | -(~reverseBits(vec4<i32>(14474i, 60076i, 0i, u_input.a.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(429f, _wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(var_0.x - var_0.x))), var_0.x)));
    let var_2 = ~2842i;
    let var_3 = select(global4.wxx, select(global4.www, !select(arg_0.c.zwy, vec3<bool>(arg_0.a, true, false), any(vec2<bool>(true, false))), vec3<bool>(global4.x, false, global1.c.x)), !(!select(select(vec3<bool>(var_1.b, arg_0.c.x, false), vec3<bool>(true, global1.c.x, true), global4.x), global4.zxw, select(global4.yyz, vec3<bool>(var_1.b, var_1.b, false), arg_0.c.zyz))));
    return vec4<f32>(_wgslsmith_f_op_f32(var_1.d + -1789f), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.d))), _wgslsmith_f_op_f32(var_1.d * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, -138f)))));
}

fn func_1(arg_0: vec4<bool>, arg_1: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_4(Struct_2(select(global1.c.x, false, select(arg_0.x, func_2(global3.xxz, arg_1), false)), 18546i, select(vec4<bool>(false, all(arg_0.ww), true, all(vec3<bool>(global4.x, arg_0.x, arg_0.x))), !(!global1.c), global1.c)), !(!(!(!arg_0.zw)))));
    var var_1 = _wgslsmith_mult_vec2_i32(~(-countOneBits(vec2<i32>(-32605i, global1.b))), ~global3.yz);
    global4 = select(!select(select(arg_0, vec4<bool>(false, false, arg_0.x, global1.a), vec4<bool>(global4.x, arg_0.x, true, true)), arg_0, global4.x), select(!(!vec4<bool>(false, global1.c.x, false, true)), !select(!global1.c, !arg_0, any(vec4<bool>(global4.x, arg_0.x, arg_0.x, false))), true), global1.c);
    var var_2 = select(vec2<bool>(true, true), select(!arg_0.xw, !global4.yx, vec2<bool>(!all(global1.c.xw), arg_0.x)), vec2<bool>(!(arg_0.x || !arg_0.x), !func_2(vec3<i32>(global3.x, 48561i, global3.x), ~arg_1)));
    var var_3 = _wgslsmith_f_op_f32(step(874f, -518f));
    return _wgslsmith_div_u32(~arg_1 | ~max(firstLeadingBit(66660u), _wgslsmith_mult_u32(66829u, 0u)), abs(select(firstTrailingBit(arg_1), abs(0u) | arg_1, -global1.b > 15590i)));
}

fn func_5(arg_0: u32) -> Struct_2 {
    let var_0 = Struct_2(!(-37975i > u_input.a.x), -global3.x, select(!vec4<bool>(false, arg_0 < 16693u, global1.a, !global4.x), select(global1.c, vec4<bool>(global1.c.x, global4.x, false, true), all(!vec2<bool>(global1.a, false))), true));
    global1 = Struct_2(func_3(), ~countOneBits(-47849i ^ (global1.b ^ var_0.b)), vec4<bool>(true, (global4.x && (arg_0 >= arg_0)) || true, !(false & global1.c.x), !global1.c.x));
    global4 = global1.c;
    var var_1 = 988f;
    var var_2 = var_0;
    return global0[_wgslsmith_index_u32(arg_0, 24u)];
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> Struct_3 {
    global2 = func_5(firstLeadingBit(112917u)).b;
    return Struct_3(-_wgslsmith_mult_i32(-2089i, func_5(4294967295u).b << (1u % 32u)), arg_1.b.x, reverseBits(min(firstLeadingBit(vec4<i32>(1202i, -2147483647i, u_input.a.x, 2147483647i)), vec4<i32>(10579i, global3.x, abs(u_input.a.x), min(16235i, 1i)))), -1105f);
}

fn func_7(arg_0: Struct_3, arg_1: bool) -> Struct_2 {
    global2 = -2147483647i;
    let var_0 = func_5(select(countOneBits(85351u), firstLeadingBit(1u), func_2(vec3<i32>(0i, -global1.b, -arg_0.c.x), firstTrailingBit(1u))));
    let var_1 = !(!all(var_0.c.xzy)) & func_2(_wgslsmith_mod_vec3_i32(-arg_0.c.ywx, vec3<i32>(~29478i, ~(-2147483647i), 27595i)), ~4294967295u);
    global1 = var_0;
    global0 = array<Struct_2, 24>();
    return func_5(abs(_wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(38811u, 26495u, 0u, 1u), vec4<u32>(53648u, 4294967295u, 4294967295u, 22701u)), abs(vec4<u32>(0u, 76864u, 1u, 98568u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(func_5(_wgslsmith_add_u32(~30186u, func_1(vec4<bool>(global4.x, true, global1.a, global4.x), 24266u))), Struct_1(vec3<bool>(false, global1.c.x, func_3()), global1.c, global4.zxy, ~max(global3.x, global1.b)), func_5(~_wgslsmith_clamp_u32(51447u, 0u, 1u)).b, 2147483647i), true);
    let var_1 = Struct_1(select(func_7(func_6(Struct_2(true, global3.x, var_0.c), Struct_1(vec3<bool>(false, global1.a, global1.c.x), vec4<bool>(global1.a, var_0.c.x, false, var_0.a), var_0.c.wxx, global3.x), _wgslsmith_dot_vec3_i32(global3.zzx, vec3<i32>(var_0.b, 2147483647i, global1.b)), var_0.b), false).c.www, func_5(firstTrailingBit(1u)).c.zzx, true), vec4<bool>(global4.x, !var_0.c.x, func_5(~(~55074u)).a, global1.a), !(!vec3<bool>(global3.x <= 2147483647i, false, false)), 2147483647i);
    global4 = select(!select(!func_5(14704u).c, var_0.c, vec4<bool>(func_2(vec3<i32>(1i, -1i, var_0.b), 4294967295u), var_0.c.x, !global1.c.x, true)), !(!var_0.c), func_5(select(abs(abs(22846u)), 0u, !var_0.a)).c);
    var var_2 = var_1;
    global4 = vec4<bool>(func_7(Struct_3(1i, global4.x, vec4<i32>(1i, 30602i, -2147483647i, _wgslsmith_clamp_i32(-1i, 0i, -82873i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1317f - 1391f))), !func_5(_wgslsmith_sub_u32(484u, 1u)).c.x).a, true || ((1u != _wgslsmith_dot_vec3_u32(vec3<u32>(35355u, 1u, 88447u), vec3<u32>(22676u, 46703u, 4294967295u))) != true), !select(true, global1.a, false), true);
    var var_3 = vec2<i32>(var_1.d, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(countOneBits(_wgslsmith_div_i32(var_1.d, -27341i)), 1i), abs(~var_0.b) >> (_wgslsmith_mult_u32(1u, 1u) % 32u), 16963i));
    let var_4 = Struct_3(global1.b, var_2.a.x, abs(max(-vec4<i32>(-1i, 12847i, global3.x, var_2.d), min(-vec4<i32>(var_3.x, 48312i, var_2.d, 0i), func_6(Struct_2(var_2.b.x, 2147483647i, vec4<bool>(var_0.c.x, global1.a, var_1.a.x, false)), Struct_1(var_2.c, var_1.b, global4.wzw, -2147483647i), 2147483647i, global1.b).c))), 1f);
    let var_5 = ~(~vec2<i32>(_wgslsmith_sub_i32(global3.x, var_2.d) & (var_3.x ^ global1.b), global3.x));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_i32(-8925i, var_5.x, u_input.a.x));
}

