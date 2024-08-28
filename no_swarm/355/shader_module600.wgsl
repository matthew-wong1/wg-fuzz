struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 2> = array<vec4<f32>, 2>(vec4<f32>(-574f, 1285f, -782f, -1065f), vec4<f32>(-1055f, -2923f, -958f, 643f));

var<private> global1: bool;

var<private> global2: array<Struct_1, 18>;

var<private> global3: array<bool, 19> = array<bool, 19>(false, true, false, true, false, true, true, true, true, false, false, true, true, false, false, false, false, false, false);

var<private> global4: array<Struct_1, 23>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> u32 {
    global1 = true;
    let var_0 = global3[_wgslsmith_index_u32(69810u, 19u)];
    var var_1 = 1u;
    let var_2 = 12550u;
    global3 = array<bool, 19>();
    return var_2 << (var_2 % 32u);
}

fn func_3() -> vec4<f32> {
    var var_0 = (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), firstLeadingBit(~vec2<u32>(13u, 45467u))) <= (1u | _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 58812u, 51510u), ~vec3<u32>(12798u, 0u, 4294967295u)))) && all(!vec2<bool>(all(vec3<bool>(false, false, false)), false));
    global4 = array<Struct_1, 23>();
    global3 = array<bool, 19>();
    let var_1 = vec4<bool>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(~14108u, ~4294967295u, firstLeadingBit(119956u)), vec3<u32>(1u, 1u, 1u)), 19u)], true, true, all(!select(vec3<bool>(global3[_wgslsmith_index_u32(1u, 19u)], false, global3[_wgslsmith_index_u32(54213u, 19u)]), vec3<bool>(true, true, global3[_wgslsmith_index_u32(4294967295u, 19u)]), !vec3<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 19u)], true))));
    var var_2 = min(countOneBits(abs(1i)), max(u_input.a.x, u_input.a.x)) > (u_input.a.x & u_input.a.x);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, 1u, 26766u), 1u), 2u)])) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(0u, 2u)])))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(max(4294967295u, 0u), 2u)])), _wgslsmith_f_op_vec4_f32(select(global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(1u, 4294967295u, 21781u), 2u)], vec4<f32>(-1058f, -208f, _wgslsmith_f_op_f32(round(133f)), -1010f), !select(vec4<bool>(false, var_1.x, global3[_wgslsmith_index_u32(16832u, 19u)], false), vec4<bool>(true, true, global3[_wgslsmith_index_u32(41411u, 19u)], var_1.x), vec4<bool>(var_1.x, global3[_wgslsmith_index_u32(11940u, 19u)], global3[_wgslsmith_index_u32(31127u, 19u)], false))))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<u32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_3()).yy;
    var var_1 = Struct_1(arg_1.a, arg_0, arg_1.c);
    global2 = array<Struct_1, 18>();
    var var_2 = Struct_1(arg_1.a, vec4<i32>(u_input.a.x, _wgslsmith_div_i32(~firstTrailingBit(var_1.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, 1i), ~vec3<i32>(-12957i, 0i, var_1.b.x))), firstTrailingBit(arg_1.b.x), _wgslsmith_clamp_i32(select(u_input.a.x, 2147483647i, false) & _wgslsmith_mult_i32(-2147483647i, arg_0.x), ~(-1i) << (1u % 32u), ~_wgslsmith_dot_vec2_i32(arg_1.b.wx, vec2<i32>(-1i, 47514i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-154f, arg_1.c.x, -1430f, -403f))))));
    var var_3 = Struct_1(arg_1.a, vec4<i32>(-_wgslsmith_dot_vec3_i32(reverseBits(u_input.a), vec3<i32>(arg_1.b.x, arg_1.b.x, u_input.a.x) | vec3<i32>(u_input.a.x, -12821i, arg_0.x)), arg_1.b.x, -40400i, 2229i), var_1.c);
    return !vec3<bool>(all(select(select(arg_1.a.wz, var_3.a.wx, var_3.a.x), var_2.a.zx, select(var_3.a.yy, vec2<bool>(true, arg_1.a.x), true))), var_1.a.x, any(var_3.a.zzx));
}

fn func_1(arg_0: Struct_1) -> vec4<i32> {
    global3 = array<bool, 19>();
    let var_0 = select(vec2<u32>(~2172u, func_2()), vec2<u32>(1u, 49681u), arg_0.a.ww);
    let var_1 = !func_4(_wgslsmith_mult_vec4_i32(arg_0.b, vec4<i32>(u_input.a.x, u_input.a.x, -38387i, arg_0.b.x) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 7120u, var_0.x, 29164u), vec4<u32>(33797u, 7324u, var_0.x, var_0.x)) % vec4<u32>(32u))), Struct_1(arg_0.a, reverseBits(vec4<i32>(22968i, -65825i, -4572i, arg_0.b.x)), _wgslsmith_f_op_vec4_f32(func_3())), (vec4<u32>(1897u, 25233u, var_0.x, 65622u) << ((vec4<u32>(var_0.x, 4294967295u, 4294967295u, 4294967295u) | vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x)) % vec4<u32>(32u))) << (vec4<u32>(min(25923u, var_0.x), var_0.x, _wgslsmith_mod_u32(16422u, 1u), 13525u) % vec4<u32>(32u)));
    let var_2 = -_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(select(arg_0.b, vec4<i32>(0i, arg_0.b.x, 0i, arg_0.b.x), arg_0.a.x), max(arg_0.b, _wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.a.x, -1i, arg_0.b.x), vec4<i32>(-1i, 2147483647i, u_input.a.x, u_input.a.x)))), -27508i);
    var var_3 = arg_0.c.x;
    return _wgslsmith_mult_vec4_i32(~(~vec4<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.x, -2147483647i, u_input.a.x, -66238i), arg_0.b), -3194i, var_2)), max(select(-vec4<i32>(var_2, -1i, 2147483647i, u_input.a.x), ~(~vec4<i32>(var_2, -1i, arg_0.b.x, arg_0.b.x)), vec4<bool>(var_1.x, !global3[_wgslsmith_index_u32(var_0.x, 19u)], true, true)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.b.x, u_input.a.x, var_2 << (var_0.x % 32u), -76634i), _wgslsmith_div_vec4_i32(vec4<i32>(7614i, 2147483647i, -18747i, -9265i), arg_0.b) << (min(vec4<u32>(var_0.x, 4294967295u, 6285u, 2747u), vec4<u32>(62440u, 0u, var_0.x, 18936u)) % vec4<u32>(32u)))));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    var var_0 = reverseBits(u_input.a.x);
    global1 = !(!(!(global3[_wgslsmith_index_u32(0u, 19u)] | global3[_wgslsmith_index_u32(61782u, 19u)]))) | all(arg_1.a);
    global4 = array<Struct_1, 23>();
    global2 = array<Struct_1, 18>();
    global1 = arg_1.a.x;
    return global2[_wgslsmith_index_u32(1u, 18u)];
}

fn func_6(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    global0 = array<vec4<f32>, 2>();
    let var_0 = Struct_1(func_5(~arg_3.b, func_5(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_3.b.x, u_input.a.x, arg_3.b.x, arg_3.b.x), vec4<i32>(u_input.a.x, arg_3.b.x, arg_0.b.x, u_input.a.x)) ^ -arg_3.b, func_5(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, 0i, arg_3.b.x), vec4<i32>(1i, u_input.a.x, u_input.a.x, arg_0.b.x)), func_5(vec4<i32>(arg_0.b.x, u_input.a.x, 0i, 1887i), arg_3, arg_1.x), arg_1.x), firstTrailingBit(arg_1.x)), 1u).a, arg_3.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_3.c.x), _wgslsmith_div_f32(-1091f, -225f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c.x)), arg_0.c.x) * func_5(~arg_0.b, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.x, arg_1.x, 1u), vec3<u32>(arg_1.x, 29256u, 4294967295u)), 23u)], arg_1.x).c));
    let var_1 = _wgslsmith_f_op_vec2_f32(arg_3.c.yz - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.c.x, 194f))));
    let var_2 = arg_1.x;
    let var_3 = 388f;
    return Struct_1(select(!arg_3.a, !var_0.a, true), ~arg_3.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), -341f, -805f, -459f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(~func_1(Struct_1(vec4<bool>(global3[_wgslsmith_index_u32(1u, 19u)], global3[_wgslsmith_index_u32(1u, 19u)], global3[_wgslsmith_index_u32(76013u, 19u)], global3[_wgslsmith_index_u32(96695u, 19u)]), vec4<i32>(1i, -1i, u_input.a.x, 0i), global0[_wgslsmith_index_u32(74769u, 2u)])), Struct_1(select(vec4<bool>(global3[_wgslsmith_index_u32(34880u, 19u)], false, false, true), vec4<bool>(true, global3[_wgslsmith_index_u32(51962u, 19u)], global3[_wgslsmith_index_u32(68978u, 19u)], true), true || global3[_wgslsmith_index_u32(0u, 19u)]), _wgslsmith_mult_vec4_i32(-vec4<i32>(0i, 2147483647i, u_input.a.x, 2147483647i), func_1(global2[_wgslsmith_index_u32(4294967295u, 18u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, -600f, -260f, -665f), vec4<f32>(627f, -474f, 1131f, 706f))))), min(_wgslsmith_mult_u32(select(1u, 1u, false), ~20249u), 1u)), select(vec4<u32>(~80834u, func_2(), abs(_wgslsmith_mod_u32(4294967295u, 1u)), min(32436u, 12610u)), vec4<u32>(1u, ~1166u, ~51418u, _wgslsmith_mod_u32(reverseBits(0u), 26988u)), select(!select(vec4<bool>(false, global3[_wgslsmith_index_u32(33698u, 19u)], global3[_wgslsmith_index_u32(4294967295u, 19u)], global3[_wgslsmith_index_u32(4294967295u, 19u)]), vec4<bool>(true, true, global3[_wgslsmith_index_u32(4294967295u, 19u)], global3[_wgslsmith_index_u32(1528u, 19u)]), global3[_wgslsmith_index_u32(4294967295u, 19u)]), select(func_5(vec4<i32>(u_input.a.x, -21655i, 23870i, 17552i), global2[_wgslsmith_index_u32(0u, 18u)], 0u).a, func_5(vec4<i32>(u_input.a.x, 102i, 2147483647i, 8307i), Struct_1(vec4<bool>(false, global3[_wgslsmith_index_u32(36323u, 19u)], false, true), vec4<i32>(u_input.a.x, 19829i, u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(0u, 2u)]), 0u).a, vec4<bool>(true, false, false, false)), !select(vec4<bool>(global3[_wgslsmith_index_u32(31713u, 19u)], true, false, global3[_wgslsmith_index_u32(23517u, 19u)]), vec4<bool>(false, global3[_wgslsmith_index_u32(83021u, 19u)], false, global3[_wgslsmith_index_u32(4294967295u, 19u)]), global3[_wgslsmith_index_u32(5558u, 19u)]))), vec4<bool>(true, false, global3[_wgslsmith_index_u32(reverseBits(~19793u), 19u)] == false, all(!(!vec4<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 19u)], false, false)))), global2[_wgslsmith_index_u32(~67159u, 18u)]);
    let var_1 = ~(~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(23443u, 89918u, 0u, 4294967295u)) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), vec4<u32>(1u, 1u, 1u, 1u)));
    var var_2 = min(vec2<u32>(_wgslsmith_mult_u32(max(var_1, 1u), _wgslsmith_mod_u32(1u, ~var_1)), ~29690u), vec2<u32>(~_wgslsmith_sub_u32(25529u, var_1), var_1));
    global3 = array<bool, 19>();
    let var_3 = ~select(1u, ~(~1u), global3[_wgslsmith_index_u32(~34715u, 19u)]);
    var var_4 = 46695u;
    global4 = array<Struct_1, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(select(reverseBits(u_input.a.yx), vec2<i32>(~u_input.a.x, _wgslsmith_sub_i32(-1i, u_input.a.x)), func_4(abs(var_0.b), Struct_1(vec4<bool>(var_0.a.x, false, var_0.a.x, var_0.a.x), var_0.b, vec4<f32>(var_0.c.x, -199f, -671f, var_0.c.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(5372u, var_2.x, var_3, var_2.x), vec4<u32>(var_1, var_3, var_1, 19253u), vec4<u32>(var_3, var_1, 9199u, 1u))).xz)), 4294967295u, u_input.a.x);
}

