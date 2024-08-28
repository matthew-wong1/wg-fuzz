struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: Struct_1,
    d: vec3<i32>,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_2,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<i32, 9> = array<i32, 9>(-16066i, i32(-2147483648), 2147483647i, 0i, 3095i, 2147483647i, 48871i, -1i, 6319i);

var<private> global2: vec4<u32> = vec4<u32>(0u, 12936u, 42933u, 54850u);

var<private> global3: array<i32, 15> = array<i32, 15>(36463i, 29813i, 1i, -9630i, 1i, 2147483647i, 32309i, 0i, 5024i, -42830i, -7195i, -81534i, -8741i, -37294i, 17729i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = arg_0.a.c.x;
    var var_1 = -(~(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, global3[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(29114u, 9u)], -1i), vec4<i32>(u_input.c.x, -44994i, u_input.c.x, arg_0.b.x))) >> (select(~min(vec4<u32>(arg_1.a.x, 2266u, 4294967295u, u_input.a.x), arg_0.c.a), ~u_input.a, vec4<bool>(arg_0.d.c.x & arg_0.e.x, true, select(arg_0.d.c.x, true, true), true)) % vec4<u32>(32u)));
    var var_2 = vec3<f32>(1f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -2021f));
    var var_3 = arg_0.d.a;
    var var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-260f, 1327f)));
    return arg_0.d.c;
}

fn func_2(arg_0: i32, arg_1: vec4<i32>) -> Struct_2 {
    global3 = array<i32, 15>();
    global2 = _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, firstTrailingBit(firstTrailingBit(abs(4294967295u))), max(global2.x, 8139u), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 22847u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b & u_input.a.x, global2.x, max(u_input.a.x, global2.x)))), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, reverseBits(54443u) >> (firstTrailingBit(global2.x) % 32u), _wgslsmith_clamp_u32(global2.x >> (global2.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(45102u, global2.x, global2.x, 10866u), u_input.a), ~u_input.a.x), ~(33755u | global2.x)), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global2.x, global2.x, u_input.b), vec4<u32>(u_input.a.x, 4294967295u, 39470u, u_input.a.x)))));
    var var_0 = select(!vec4<bool>(!any(vec4<bool>(true, false, true, false)), true, true, false), !select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(!vec4<bool>(true, select(true, true, false), false, true), select(vec4<bool>(true, true, true, true), !func_3(Struct_4(Struct_2(Struct_1(u_input.a), Struct_1(vec4<u32>(global2.x, 4294967295u, 4294967295u, global2.x)), vec4<bool>(true, false, true, false), Struct_1(u_input.a)), arg_1.ywy, Struct_1(u_input.a), Struct_2(Struct_1(vec4<u32>(0u, 4294967295u, 4294967295u, global2.x)), Struct_1(u_input.a), vec4<bool>(false, true, false, false), Struct_1(vec4<u32>(1u, 20154u, global2.x, 4294967295u))), vec2<bool>(true, true)), Struct_1(u_input.a)), vec4<bool>(true, global2.x < 52348u, true, true)), true));
    var_0 = !(!select(select(select(vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), func_3(Struct_4(Struct_2(Struct_1(u_input.a), Struct_1(vec4<u32>(u_input.a.x, global2.x, u_input.a.x, global2.x)), vec4<bool>(var_0.x, true, var_0.x, var_0.x), Struct_1(u_input.a)), vec3<i32>(-1i, 39144i, global3[_wgslsmith_index_u32(65881u, 15u)]), Struct_1(vec4<u32>(u_input.a.x, global2.x, u_input.b, u_input.b)), Struct_2(Struct_1(u_input.a), Struct_1(vec4<u32>(23558u, global2.x, 1u, u_input.b)), vec4<bool>(true, false, false, var_0.x), Struct_1(vec4<u32>(1u, global2.x, 36162u, 39236u))), var_0.zy), Struct_1(u_input.a)), func_3(Struct_4(Struct_2(Struct_1(u_input.a), Struct_1(u_input.a), vec4<bool>(true, var_0.x, var_0.x, true), Struct_1(u_input.a)), vec3<i32>(-1i, -3198i, global1[_wgslsmith_index_u32(4294967295u, 9u)]), Struct_1(vec4<u32>(u_input.b, u_input.b, 9367u, 0u)), Struct_2(Struct_1(vec4<u32>(global2.x, global2.x, 1u, global2.x)), Struct_1(u_input.a), vec4<bool>(false, var_0.x, var_0.x, false), Struct_1(u_input.a)), vec2<bool>(var_0.x, true)), Struct_1(vec4<u32>(global2.x, 52991u, u_input.b, 4294967295u)))), vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 15u)] == 44656i, any(vec2<bool>(var_0.x, var_0.x)), var_0.x, true), func_3(Struct_4(Struct_2(Struct_1(u_input.a), Struct_1(vec4<u32>(global2.x, global2.x, 8363u, 4294967295u)), vec4<bool>(true, true, var_0.x, true), Struct_1(vec4<u32>(1u, u_input.b, global2.x, 0u))), vec3<i32>(-1i, 2147483647i, -2147483647i), Struct_1(u_input.a), Struct_2(Struct_1(vec4<u32>(1u, global2.x, u_input.a.x, u_input.a.x)), Struct_1(u_input.a), vec4<bool>(var_0.x, true, var_0.x, var_0.x), Struct_1(u_input.a)), var_0.ww), Struct_1(vec4<u32>(u_input.b, 0u, 72614u, u_input.a.x)))));
    var_0 = vec4<bool>(select(true, !(!any(vec3<bool>(false, var_0.x, var_0.x))), !(!(!var_0.x))), var_0.x, var_0.x, false);
    return Struct_2(Struct_1(_wgslsmith_sub_vec4_u32(u_input.a, u_input.a)), Struct_1(~u_input.a), !(!(!(!vec4<bool>(true, var_0.x, false, var_0.x)))), Struct_1(_wgslsmith_div_vec4_u32(u_input.a, ~u_input.a)));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: u32) -> vec3<bool> {
    global3 = array<i32, 15>();
    global0 = 1125f != arg_0.x;
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + 425f) + -1150f), arg_0.x, all(!vec2<bool>(arg_0.x > -292f, false))));
    global2 = arg_1.a.a | _wgslsmith_sub_vec4_u32(firstTrailingBit(u_input.a), _wgslsmith_sub_vec4_u32(~(u_input.a ^ vec4<u32>(0u, 1u, u_input.a.x, 19555u)), vec4<u32>(1u, ~arg_1.a.a.x, 1u, 73625u)));
    global1 = array<i32, 9>();
    return vec3<bool>(arg_1.c.x, select(true | arg_1.c.x, arg_1.c.x, _wgslsmith_f_op_f32(-921f - _wgslsmith_f_op_f32(-arg_0.x)) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.x)))), true);
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = u_input.c.x;
    global0 = all(!func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, -423f))), _wgslsmith_div_vec2_f32(vec2<f32>(-162f, 807f), vec2<f32>(-433f, -738f)), vec2<bool>(true, true))), func_2(abs(global1[_wgslsmith_index_u32(arg_0.x, 9u)]), vec4<i32>(global3[_wgslsmith_index_u32(arg_0.x, 15u)], 2147483647i, global1[_wgslsmith_index_u32(u_input.b, 9u)], global3[_wgslsmith_index_u32(0u, 15u)])), 1u));
    let var_1 = -2147483647i | u_input.c.x;
    global3 = array<i32, 15>();
    var var_2 = Struct_3(var_1, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1315f - _wgslsmith_f_op_f32(f32(-1f) * -206f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1795f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -1757f), Struct_1(min(vec4<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(global2.zxw, vec3<u32>(111038u, arg_0.x, u_input.a.x)), 59054u >> (global2.x % 32u), 4294967295u), reverseBits(~u_input.a))), vec3<i32>(u_input.c.x, global1[_wgslsmith_index_u32(global2.x, 9u)], -1i), 0i);
    return Struct_2(Struct_1(firstTrailingBit(select(~vec4<u32>(global2.x, 23869u, var_2.c.a.x, u_input.a.x), ~var_2.c.a, func_2(23745i, vec4<i32>(-91127i, global3[_wgslsmith_index_u32(u_input.a.x, 15u)], var_1, u_input.c.x)).c))), Struct_1(~var_2.c.a), vec4<bool>(_wgslsmith_clamp_i32(0i, var_1, _wgslsmith_mod_i32(0i, -1i)) != _wgslsmith_sub_i32(u_input.c.x & -34717i, select(54528i, 0i, true)), true, true, true), Struct_1(min(reverseBits(var_2.c.a), vec4<u32>(global2.x, _wgslsmith_div_u32(arg_0.x, 19038u), ~1u, ~u_input.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 15>();
    var var_0 = 0u;
    global2 = ~(u_input.a | vec4<u32>(global2.x, _wgslsmith_div_u32(1u, u_input.a.x), 43622u, 5747u));
    let var_1 = vec2<u32>(35153u >> (global2.x % 32u), u_input.b | firstTrailingBit(0u));
    let var_2 = Struct_4(func_1(~(~(vec3<u32>(var_1.x, 23954u, u_input.b) >> (vec3<u32>(0u, 0u, u_input.b) % vec3<u32>(32u))))), -_wgslsmith_add_vec3_i32(abs(min(vec3<i32>(-11652i, 0i, 1i), vec3<i32>(-2147483647i, u_input.c.x, global3[_wgslsmith_index_u32(u_input.a.x, 15u)]))), vec3<i32>(_wgslsmith_mult_i32(-2147483647i, u_input.c.x), 34005i, ~global3[_wgslsmith_index_u32(11205u, 15u)])), func_2(-27926i, select(max(abs(vec4<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 15u)], 26922i, -1i, global3[_wgslsmith_index_u32(0u, 15u)])), vec4<i32>(42815i, global1[_wgslsmith_index_u32(0u, 9u)], 1i, 26310i)), vec4<i32>(_wgslsmith_mod_i32(2147483647i, u_input.c.x), _wgslsmith_add_i32(global3[_wgslsmith_index_u32(var_1.x, 15u)], global1[_wgslsmith_index_u32(var_1.x, 9u)]), -30334i, global3[_wgslsmith_index_u32(min(var_1.x, var_1.x), 15u)]), !func_3(Struct_4(Struct_2(Struct_1(u_input.a), Struct_1(u_input.a), vec4<bool>(true, false, true, true), Struct_1(vec4<u32>(u_input.b, 7194u, 1u, 431u))), vec3<i32>(0i, u_input.c.x, u_input.c.x), Struct_1(u_input.a), Struct_2(Struct_1(u_input.a), Struct_1(vec4<u32>(4294967295u, u_input.b, 0u, 14238u)), vec4<bool>(false, false, false, false), Struct_1(vec4<u32>(1u, var_1.x, 96769u, 1u))), vec2<bool>(false, false)), Struct_1(u_input.a)))).a, func_1(vec3<u32>(firstTrailingBit(global2.x ^ var_1.x), _wgslsmith_mult_u32(~4294967295u, global2.x), firstTrailingBit(16575u | u_input.b))), func_2(0i, vec4<i32>(8809i, _wgslsmith_dot_vec4_i32(vec4<i32>(2336i, 34850i, 81133i, -2147483647i), ~vec4<i32>(u_input.c.x, -1i, global3[_wgslsmith_index_u32(var_1.x, 15u)], -1i)), 2147483647i, 1i)).c.yy);
    let x = u_input.a;
    s_output = StorageBuffer(min(select((vec4<u32>(var_1.x, 63334u, u_input.b, var_2.c.a.x) << (vec4<u32>(global2.x, 45033u, var_2.d.d.a.x, global2.x) % vec4<u32>(32u))) << (min(vec4<u32>(var_2.c.a.x, global2.x, 4294967295u, 54718u), vec4<u32>(4294967295u, 0u, global2.x, 30979u)) % vec4<u32>(32u)), ~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(8904u, 4294967295u, 49169u), var_2.a.d.a.ywz) >= 37209u), vec4<u32>(u_input.a.x, 0u, var_1.x, var_2.d.b.a.x)), _wgslsmith_f_op_f32(sign(-183f)));
}

