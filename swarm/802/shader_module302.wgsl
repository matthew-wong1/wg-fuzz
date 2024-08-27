struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec2<i32>(-1i, -41677i), 289f, vec2<u32>(4294967295u, 1u)), Struct_1(vec2<i32>(-1i, 0i), -1764f, vec2<u32>(0u, 4294967295u)), Struct_1(vec2<i32>(-32240i, 34704i), -174f, vec2<u32>(7124u, 40676u)), Struct_1(vec2<i32>(23399i, -87771i), -293f, vec2<u32>(48916u, 4294967295u)), Struct_1(vec2<i32>(-37539i, -1i), -607f, vec2<u32>(4294967295u, 126882u)), Struct_1(vec2<i32>(-11628i, 11746i), 1593f, vec2<u32>(1u, 0u)), Struct_1(vec2<i32>(-1i, i32(-2147483648)), -145f, vec2<u32>(25355u, 23900u)), Struct_1(vec2<i32>(i32(-2147483648), 1i), 993f, vec2<u32>(43782u, 4294967295u)), Struct_1(vec2<i32>(-4234i, -51044i), 851f, vec2<u32>(39320u, 0u)), Struct_1(vec2<i32>(40853i, -16079i), 1248f, vec2<u32>(0u, 0u)), Struct_1(vec2<i32>(-68353i, -15401i), -881f, vec2<u32>(0u, 59171u)), Struct_1(vec2<i32>(i32(-2147483648), 42256i), -507f, vec2<u32>(1u, 20289u)), Struct_1(vec2<i32>(2147483647i, 2147483647i), -336f, vec2<u32>(4294967295u, 1u)), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), -1533f, vec2<u32>(9270u, 6748u)), Struct_1(vec2<i32>(-1i, -1i), 1206f, vec2<u32>(4294967295u, 10696u)), Struct_1(vec2<i32>(-1i, 1i), -1035f, vec2<u32>(1u, 27502u)), Struct_1(vec2<i32>(-4768i, 2147483647i), -2032f, vec2<u32>(89535u, 4294967295u)), Struct_1(vec2<i32>(16974i, 1i), -367f, vec2<u32>(4294967295u, 30755u)), Struct_1(vec2<i32>(-1i, 1i), 137f, vec2<u32>(0u, 62151u)), Struct_1(vec2<i32>(25525i, -34926i), 1108f, vec2<u32>(4294967295u, 435u)), Struct_1(vec2<i32>(1i, 8093i), -1784f, vec2<u32>(44282u, 27988u)), Struct_1(vec2<i32>(i32(-2147483648), -50291i), -961f, vec2<u32>(25594u, 0u)), Struct_1(vec2<i32>(26853i, 47868i), -852f, vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec2<i32>(i32(-2147483648), 25484i), 1448f, vec2<u32>(5421u, 25734u)), Struct_1(vec2<i32>(0i, i32(-2147483648)), 978f, vec2<u32>(57071u, 41741u)), Struct_1(vec2<i32>(-3622i, i32(-2147483648)), 569f, vec2<u32>(1u, 24620u)), Struct_1(vec2<i32>(1i, 62458i), 1000f, vec2<u32>(1u, 23142u)), Struct_1(vec2<i32>(1i, 40788i), -346f, vec2<u32>(6594u, 72363u)));

var<private> global1: vec2<f32> = vec2<f32>(1098f, 768f);

var<private> global2: array<Struct_2, 29>;

var<private> global3: Struct_2;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: f32, arg_3: i32) -> vec2<u32> {
    global3 = global2[_wgslsmith_index_u32(~1u, 29u)];
    global0 = array<Struct_1, 28>();
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(reverseBits(_wgslsmith_clamp_u32(80391u, global3.a, global3.a)), global3.a, abs(~4294967295u)), ~vec3<u32>(22630u, global3.d.c.x, 11349u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(~global3.c, select(global3.a, 45594u, false), ~global3.a), vec3<u32>(_wgslsmith_clamp_u32(global3.a, 22828u, 17234u), _wgslsmith_mult_u32(5077u, global3.a), abs(0u)))), 29u)];
    let var_1 = !any(vec2<bool>(true, false));
    var var_2 = ~(~vec3<u32>(var_0.d.c.x, 28614u, var_0.a)) >> (~vec3<u32>(~1u, ~1u, abs(~94847u)) % vec3<u32>(32u));
    return vec2<u32>(1u, ~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(var_0.d.c, ~var_2.yz), _wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, 3844u), ~41973u)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<bool>) -> bool {
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(global1.x, global1.x)), global3.d.b)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1930f, -278f), _wgslsmith_f_op_f32(select(global1.x, 470f, arg_1.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(488f, -1446f), vec2<f32>(-483f, -857f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.b, 1023f) + vec2<f32>(global1.x, 785f))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global3.b) * vec2<f32>(-353f, -731f))))))));
    global3 = global2[_wgslsmith_index_u32(select(_wgslsmith_add_u32(1u, 21823u), firstTrailingBit(_wgslsmith_dot_vec2_u32(global3.d.c, select(~vec2<u32>(34751u, 44555u), vec2<u32>(20038u, 1u), arg_0.x || true))), global3.d.b > -1140f), 29u)];
    global2 = array<Struct_2, 29>();
    var var_0 = ~firstTrailingBit(u_input.b.xx) << (select(select(_wgslsmith_add_vec2_u32(~global3.d.c, vec2<u32>(global3.a, 71669u)), select(vec2<u32>(global3.a, 72121u), vec2<u32>(global3.c, global3.a), false), !(!arg_1)), _wgslsmith_div_vec2_u32(func_3(_wgslsmith_f_op_f32(global3.b * 1398f), _wgslsmith_f_op_f32(global1.x * 1000f), global3.b, _wgslsmith_dot_vec4_i32(vec4<i32>(global3.d.a.x, u_input.b.x, 34842i, 8893i), vec4<i32>(-1i, u_input.b.x, u_input.a.x, 1i))), _wgslsmith_sub_vec2_u32(~vec2<u32>(global3.d.c.x, global3.c), ~global3.d.c)), select(select(arg_1.x == false, 1i > u_input.a.x, arg_1.x), false, min(2147483647i, global3.d.a.x) >= _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2147483647i, u_input.a.x), u_input.b))) % vec2<u32>(32u));
    global3 = Struct_2(1u, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.x))), global3.a, Struct_1(select(_wgslsmith_mod_vec2_i32(abs(vec2<i32>(u_input.b.x, global3.d.a.x)), vec2<i32>(1i, -1i)), u_input.b.zx, vec2<bool>(true, true && arg_1.x)), -1240f, ~select(firstLeadingBit(vec2<u32>(0u, 32721u)), abs(global3.d.c), any(vec4<bool>(true, arg_1.x, arg_0.x, false)))));
    return !(!(4385u < global3.c));
}

fn func_4(arg_0: bool, arg_1: vec4<u32>, arg_2: vec2<f32>) -> Struct_1 {
    global2 = array<Struct_2, 29>();
    let var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(global3.d.b, global3.b))));
    global2 = array<Struct_2, 29>();
    let var_2 = Struct_2(firstTrailingBit(~(~(~global3.a))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(global1.x)))))), abs(9713u), Struct_1(global3.d.a & ~_wgslsmith_mult_vec2_i32(u_input.a.zw, vec2<i32>(u_input.b.x, -1i)), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_div_vec2_u32(vec2<u32>(global3.a, arg_1.x ^ arg_1.x), vec2<u32>(global3.d.c.x >> (arg_1.x % 32u), ~global3.a))));
    return var_2.d;
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: bool, arg_3: Struct_2) -> Struct_2 {
    let var_0 = !vec2<bool>(u_input.b.x != _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(arg_3.d.a.x, u_input.b.x, -5814i)), vec3<i32>(-42379i, 46395i, global3.d.a.x)), arg_2);
    let var_1 = arg_3;
    let var_2 = func_4(!select(any(var_0), false, func_2(select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, true, var_0.x), false), select(var_0, var_0, vec2<bool>(arg_2, false)))), (reverseBits(reverseBits(vec4<u32>(11040u, 1u, 4294967295u, 0u))) ^ reverseBits(select(vec4<u32>(39560u, arg_3.d.c.x, 73425u, var_1.a), vec4<u32>(84479u, arg_3.a, 48620u, arg_1.x), arg_2))) >> ((vec4<u32>(arg_0, 4294967295u, 34928u, 0u & arg_3.d.c.x) >> (vec4<u32>(42510u, arg_1.x << (arg_1.x % 32u), ~78839u, 92495u >> (0u % 32u)) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(arg_3.d.b, -1000f), vec2<f32>(var_1.d.b, var_1.b)))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global3.d.b)) * global3.b))));
    var var_3 = !vec3<bool>(var_0.x && var_0.x, !(!all(var_0)), true);
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~53638u, 28u)];
    global3 = func_1(_wgslsmith_dot_vec2_u32(var_0.c, vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.d.c.x, global3.a), vec2<u32>(var_0.c.x, var_0.c.x)), _wgslsmith_sub_u32(var_0.c.x, 4294967295u)) & var_0.c), ~vec3<u32>(52278u, firstTrailingBit(var_0.c.x), ~153558u) & select(select(vec3<u32>(global3.c, 69612u, 47093u), abs(vec3<u32>(24575u, global3.c, global3.a)), true), _wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(global3.a, var_0.c.x, global3.a)), abs(vec3<u32>(global3.d.c.x, var_0.c.x, 88286u)), ~vec3<u32>(var_0.c.x, 4294967295u, global3.a)), true), true, Struct_2(global3.c, 1543f, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(84128u, 61552u, var_0.c.x), vec3<u32>(4066u, var_0.c.x, var_0.c.x)) & (vec3<u32>(76150u, var_0.c.x, global3.a) ^ vec3<u32>(48014u, var_0.c.x, var_0.c.x)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, global3.c, 0u), vec3<u32>(var_0.c.x, 1u, 0u))), global3.d));
    global2 = array<Struct_2, 29>();
    global3 = Struct_2(~max(10458u, 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(437f - 647f) * 474f)) + -1000f), _wgslsmith_sub_u32(57131u | _wgslsmith_clamp_u32(_wgslsmith_sub_u32(53791u, 1u), _wgslsmith_mod_u32(28676u, var_0.c.x), var_0.c.x << (82445u % 32u)), reverseBits(~(~1u))), global3.d);
    global3 = global2[_wgslsmith_index_u32(~(~global3.d.c.x), 29u)];
    let var_1 = global2[_wgslsmith_index_u32(~var_0.c.x, 29u)];
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(1u), ~(~var_1.a)), 29u)];
    let var_3 = func_1(4294967295u, vec3<u32>(36109u, var_2.d.c.x, 4294967295u), all(vec4<bool>(true, true, true, true)), Struct_2(~0u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3.b))), select(~var_0.c.x, var_0.c.x >> (0u % 32u), all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)))), Struct_1(var_0.a, global1.x, abs(select(vec2<u32>(global3.a, var_2.c), vec2<u32>(4294967295u, global3.d.c.x), vec2<bool>(true, true))))));
    var var_4 = global0[_wgslsmith_index_u32(~(~var_1.c), 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x, var_3.d.c, firstLeadingBit(_wgslsmith_sub_vec4_u32(~vec4<u32>(75046u, 0u, var_4.c.x, 4294967295u), vec4<u32>(var_2.a, ~103169u, var_4.c.x >> (var_3.d.c.x % 32u), var_1.a))), -_wgslsmith_add_i32(~(-var_1.d.a.x), global3.d.a.x), vec2<i32>(_wgslsmith_sub_i32(-_wgslsmith_mult_i32(u_input.a.x, u_input.b.x), _wgslsmith_clamp_i32(_wgslsmith_div_i32(var_1.d.a.x, 54268i), min(-21232i, 1i), var_0.a.x | var_0.a.x)), u_input.b.x));
}

