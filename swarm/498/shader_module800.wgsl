struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: f32,
    d: vec3<bool>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<Struct_4, 27> = array<Struct_4, 27>(Struct_4(vec4<f32>(-1307f, -2142f, -576f, -1000f), vec2<f32>(-608f, -224f)), Struct_4(vec4<f32>(708f, 1576f, 1231f, -534f), vec2<f32>(205f, -1115f)), Struct_4(vec4<f32>(-366f, -2103f, 690f, -3121f), vec2<f32>(491f, 150f)), Struct_4(vec4<f32>(-1000f, -1869f, 886f, -413f), vec2<f32>(-1000f, 1134f)), Struct_4(vec4<f32>(960f, 1000f, 895f, 197f), vec2<f32>(-423f, 583f)), Struct_4(vec4<f32>(153f, 107f, 767f, 477f), vec2<f32>(618f, -1995f)), Struct_4(vec4<f32>(234f, -511f, 163f, 1926f), vec2<f32>(1000f, 1099f)), Struct_4(vec4<f32>(136f, -439f, 1163f, -2044f), vec2<f32>(507f, 1362f)), Struct_4(vec4<f32>(-581f, -143f, -1066f, -1517f), vec2<f32>(2161f, 524f)), Struct_4(vec4<f32>(-1574f, 976f, 467f, 449f), vec2<f32>(129f, 120f)), Struct_4(vec4<f32>(-1355f, 1447f, 856f, -984f), vec2<f32>(-1177f, 319f)), Struct_4(vec4<f32>(-337f, -510f, 933f, -581f), vec2<f32>(-543f, -516f)), Struct_4(vec4<f32>(-486f, -126f, -620f, 852f), vec2<f32>(-862f, -267f)), Struct_4(vec4<f32>(1000f, 1787f, -610f, -570f), vec2<f32>(813f, -554f)), Struct_4(vec4<f32>(2032f, -376f, -693f, -878f), vec2<f32>(-631f, -1125f)), Struct_4(vec4<f32>(246f, 161f, 1000f, 1431f), vec2<f32>(-913f, -1499f)), Struct_4(vec4<f32>(-182f, -1000f, -457f, -619f), vec2<f32>(-931f, 1435f)), Struct_4(vec4<f32>(-454f, 294f, -1040f, 138f), vec2<f32>(-474f, 1004f)), Struct_4(vec4<f32>(956f, 1058f, -730f, 916f), vec2<f32>(182f, 1616f)), Struct_4(vec4<f32>(-792f, 120f, -1010f, -1403f), vec2<f32>(-1000f, 1287f)), Struct_4(vec4<f32>(347f, -1173f, -615f, 629f), vec2<f32>(803f, -1154f)), Struct_4(vec4<f32>(877f, 546f, 222f, 2191f), vec2<f32>(457f, -746f)), Struct_4(vec4<f32>(1000f, 644f, -576f, -810f), vec2<f32>(-797f, 699f)), Struct_4(vec4<f32>(576f, -353f, 1000f, -3172f), vec2<f32>(-1570f, 755f)), Struct_4(vec4<f32>(1129f, -762f, 1866f, -783f), vec2<f32>(255f, -132f)), Struct_4(vec4<f32>(-1205f, 298f, 795f, 956f), vec2<f32>(271f, -270f)), Struct_4(vec4<f32>(-1258f, 1300f, 3645f, -868f), vec2<f32>(119f, -1439f)));

var<private> global2: array<vec3<u32>, 14> = array<vec3<u32>, 14>(vec3<u32>(4294967295u, 47357u, 17700u), vec3<u32>(0u, 62528u, 4294967295u), vec3<u32>(0u, 29468u, 20450u), vec3<u32>(4294967295u, 17824u, 4294967295u), vec3<u32>(4294967295u, 76570u, 1u), vec3<u32>(57279u, 1u, 0u), vec3<u32>(29560u, 1810u, 4294967295u), vec3<u32>(53340u, 1u, 1u), vec3<u32>(13871u, 1u, 39931u), vec3<u32>(71209u, 1597u, 48379u), vec3<u32>(0u, 98073u, 53446u), vec3<u32>(27448u, 1u, 0u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(1u, 4294967295u, 15484u));

var<private> global3: array<bool, 19>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_5, arg_3: Struct_3) -> f32 {
    global3 = array<bool, 19>();
    var var_0 = arg_1.b;
    var var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(17218i, 1i, 28081i, 19055i) << (min(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 40292u, 4001u, 1u), vec4<u32>(arg_0.x, 1u, u_input.c.x, 34308u)), vec4<u32>(arg_1.c.x, 0u, 4294967295u, arg_1.c.x)) % vec4<u32>(32u)), ((vec4<i32>(-21304i, -41526i, 1i, 1i) & vec4<i32>(34168i, -9580i, -23833i, arg_3.a)) << (vec4<u32>(arg_0.x, 54192u, 24633u, arg_0.x) % vec4<u32>(32u))) ^ -abs(vec4<i32>(-15114i, arg_3.a, var_0.x, arg_3.a))), -vec4<i32>(-1i, max(-2147483647i, 0i), var_0.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, -16156i, 2147483647i, -41174i), vec4<i32>(31798i, arg_1.b.x, 2012i, u_input.a))));
    let var_2 = (var_0.xz | arg_1.b.zy) ^ arg_1.b.yz;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.b), arg_2.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.a.a.x * _wgslsmith_f_op_f32(f32(-1f) * -125f)), arg_2.a.a.x)) + _wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b + -1075f) * -464f)))));
}

fn func_2(arg_0: bool, arg_1: Struct_4, arg_2: f32, arg_3: u32) -> Struct_5 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2))), -853f), _wgslsmith_add_vec3_i32(vec3<i32>(reverseBits(u_input.a), u_input.e, u_input.a), vec3<i32>(-2147483647i, u_input.a, u_input.a)), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(global2[_wgslsmith_index_u32(arg_3, 14u)], global2[_wgslsmith_index_u32(arg_3, 14u)]), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 13364u, u_input.b.x), vec3<u32>(u_input.d.x, 1u, u_input.b.x)), ~vec3<u32>(arg_3, 0u, arg_3)), abs(global2[_wgslsmith_index_u32(0u >> (1u % 32u), 14u)]))));
    global0 = Struct_5(arg_1, 207f, var_0.a.a, select(global0.d, global0.d, !vec3<bool>(global3[_wgslsmith_index_u32(arg_3, 19u)], global3[_wgslsmith_index_u32(4294967295u, 19u)], arg_0)), false);
    var var_1 = global0.d;
    let var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, -299f, -1577f, 822f) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.a.a, 1040f, 293f, -2759f), vec4<f32>(-1438f, arg_1.a.x, var_0.a.a, -1000f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.a.yx)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a.b)))));
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(var_0.a.a * _wgslsmith_f_op_f32(func_3(select(vec2<u32>(var_0.a.c.x, 64151u), var_0.a.c.yy, global0.e), Struct_1(global0.a.a.x, var_0.a.b, vec3<u32>(72850u, arg_3, 44712u)), Struct_5(Struct_4(global0.a.a, vec2<f32>(var_2.b.x, -550f)), arg_2, global0.c, vec3<bool>(false, false, false), var_1.x), Struct_3(var_0.a.b.x)))), ~countOneBits(var_0.a.b | vec3<i32>(-9515i, -1i, -22083i)), ~firstLeadingBit(vec3<u32>(u_input.b.x, var_0.a.c.x, 4294967295u) & global2[_wgslsmith_index_u32(u_input.b.x, 14u)])));
    return Struct_5(Struct_4(vec4<f32>(var_3.a.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-698f, arg_2) - _wgslsmith_f_op_f32(round(-553f))), -686f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2)) - -371f)), var_2.b), -462f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(734f - var_3.a.a)) * var_0.a.a)), select(select(!global0.d, select(global0.d, !global0.d, any(vec3<bool>(var_1.x, true, var_1.x))), select(global0.d, global0.d, vec3<bool>(false, true, arg_0))), global0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b + -334f)) >= _wgslsmith_div_f32(global0.a.b.x, -219f)), global3[_wgslsmith_index_u32(max(~_wgslsmith_sub_u32(_wgslsmith_add_u32(arg_3, 26123u), _wgslsmith_mult_u32(u_input.d.x, u_input.d.x)), 1u), 19u)]);
}

fn func_4(arg_0: f32, arg_1: Struct_5) -> bool {
    var var_0 = ~(~u_input.d.x);
    global1 = array<Struct_4, 27>();
    var var_1 = global0.d;
    var var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(global0.a.b.x)))), arg_0), vec3<i32>(_wgslsmith_mult_i32(u_input.a, _wgslsmith_sub_i32(u_input.e, u_input.a)), _wgslsmith_mult_i32(u_input.e, 30681i), 2147483647i) | select(vec3<i32>(1i, 1i, 1i), ~(vec3<i32>(67498i, -2147483647i, u_input.e) << (global2[_wgslsmith_index_u32(1823u, 14u)] % vec3<u32>(32u))), vec3<bool>(true, func_2(false, global0.a, arg_1.a.b.x, 1u).d.x, global3[_wgslsmith_index_u32(u_input.c.x, 19u)])), ~vec3<u32>(u_input.b.x, 1u, _wgslsmith_mult_u32(u_input.d.x, select(57768u, u_input.c.x, global0.d.x))));
    var_0 = _wgslsmith_div_u32(var_2.c.x, 1u);
    return !all(func_2(!select(true, arg_1.d.x, global0.d.x), func_2(arg_1.e, global1[_wgslsmith_index_u32(var_2.c.x, 27u)], _wgslsmith_div_f32(arg_0, global0.c), firstTrailingBit(4294967295u)).a, arg_1.a.b.x, _wgslsmith_div_u32(_wgslsmith_add_u32(var_2.c.x, 0u), 1u)).d.yz);
}

fn func_1() -> Struct_4 {
    var var_0 = min(-46718i, 1i);
    var var_1 = vec3<bool>(false, any(select(vec3<bool>(global0.b > global0.b, global0.d.x != global3[_wgslsmith_index_u32(u_input.b.x, 19u)], !global3[_wgslsmith_index_u32(0u, 19u)]), global0.d, false)), !(global0.b < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.a.a.x)))));
    var_1 = select(global0.d, vec3<bool>(func_4(_wgslsmith_f_op_f32(1f + 850f), func_2(any(vec4<bool>(var_1.x, global3[_wgslsmith_index_u32(0u, 19u)], global0.e, true)), global1[_wgslsmith_index_u32(u_input.c.x, 27u)], _wgslsmith_f_op_f32(floor(-621f)), 0u & u_input.d.x)), false, !(global0.d.x && var_1.x) && (global3[_wgslsmith_index_u32(u_input.d.x, 19u)] | (global0.c <= global0.c))), func_2(global0.d.x, Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0.a.a, vec4<f32>(global0.c, 482f, -463f, global0.a.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(310f, 234f)) * global0.a.b)), 1366f, ~(1u | reverseBits(u_input.c.x))).d);
    let var_2 = false;
    var var_3 = global0.a.a;
    return global1[_wgslsmith_index_u32(min(u_input.c.x, u_input.d.x), 27u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(all(vec3<bool>(true, false, !global0.d.x)), global0.e, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global0.a.b.x, global0.a.b.x), _wgslsmith_f_op_f32(step(-1105f, global0.a.b.x)))) <= 1000f);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(max(169f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f))))), _wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(u_input.e, ~38388i, -u_input.e)), ~vec3<i32>(u_input.e, ~1i, _wgslsmith_sub_i32(4750i, -1i))), ~select(vec3<u32>(u_input.b.x, u_input.c.x, u_input.d.x) | ~global2[_wgslsmith_index_u32(u_input.d.x, 14u)], ~global2[_wgslsmith_index_u32(u_input.c.x >> (u_input.c.x % 32u), 14u)], _wgslsmith_f_op_f32(184f * global0.c) < _wgslsmith_f_op_f32(-global0.c)));
    global0 = Struct_5(func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c * _wgslsmith_f_op_f32(f32(-1f) * -922f)))), !global0.d, any(select(vec2<bool>(all(vec3<bool>(true, var_0.x, global3[_wgslsmith_index_u32(u_input.d.x, 19u)])), !global0.e), !(!vec2<bool>(var_0.x, global3[_wgslsmith_index_u32(4294967295u, 19u)])), vec2<bool>(true || global3[_wgslsmith_index_u32(0u, 19u)], global0.d.x))));
    var var_2 = vec4<u32>(3220u, _wgslsmith_mod_u32(~abs(var_1.c.x), _wgslsmith_mod_u32(u_input.c.x, 1u)), ~(~19249u), var_1.c.x);
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.a.x) + 339f)));
    var_2 = vec4<u32>(_wgslsmith_div_u32(var_2.x, abs(_wgslsmith_mult_u32(firstLeadingBit(27355u), var_2.x))), _wgslsmith_add_u32(countOneBits(9405u), 58143u), 0u | var_1.c.x, _wgslsmith_mod_u32(5615u, abs(min(u_input.c.x, 34142u)) ^ (firstTrailingBit(0u) | _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, 23733u, 48647u, 1u), vec4<u32>(u_input.d.x, 0u, u_input.d.x, 10303u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-_wgslsmith_dot_vec4_i32(-vec4<i32>(var_1.b.x, -1i, u_input.a, var_1.b.x), _wgslsmith_div_vec4_i32(vec4<i32>(var_1.b.x, var_1.b.x, -27381i, 22382i), vec4<i32>(var_1.b.x, u_input.e, u_input.e, u_input.e))), var_1.b.x, var_1.b.x, 0i), vec3<i32>(37722i, u_input.e, _wgslsmith_add_i32(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, var_1.b.x, 1i), vec3<i32>(0i, u_input.e, -2147483647i)))), _wgslsmith_clamp_i32(~reverseBits(var_1.b.x), ~(-2147483647i << ((var_2.x ^ 54783u) % 32u)), ~0i), 501f);
}

