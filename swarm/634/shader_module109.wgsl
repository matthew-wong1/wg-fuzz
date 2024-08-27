struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: bool,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(-55146i, Struct_1(vec3<u32>(5827u, 31699u, 48110u), 7683u, false, true, 4294967295u), vec3<bool>(false, false, false), vec3<i32>(2147483647i, -9230i, 0i)), Struct_2(1i, Struct_1(vec3<u32>(29259u, 59386u, 73842u), 4294967295u, false, false, 44236u), vec3<bool>(true, false, false), vec3<i32>(2147483647i, -39078i, 8011i)), Struct_2(67423i, Struct_1(vec3<u32>(17662u, 1u, 1u), 1u, false, false, 27909u), vec3<bool>(false, false, false), vec3<i32>(27332i, 16673i, 0i)), Struct_2(28950i, Struct_1(vec3<u32>(12665u, 4062u, 32505u), 8383u, true, true, 0u), vec3<bool>(false, true, false), vec3<i32>(2147483647i, i32(-2147483648), 27354i)), Struct_2(-1i, Struct_1(vec3<u32>(7924u, 1u, 0u), 835u, true, false, 2815u), vec3<bool>(true, true, true), vec3<i32>(1i, -54490i, 13688i)), Struct_2(-1i, Struct_1(vec3<u32>(18263u, 0u, 4294967295u), 7952u, true, false, 6099u), vec3<bool>(false, true, true), vec3<i32>(7831i, 0i, 16370i)), Struct_2(-149i, Struct_1(vec3<u32>(94086u, 4294967295u, 4294967295u), 92197u, false, true, 3738u), vec3<bool>(true, false, true), vec3<i32>(26911i, -1i, 0i)), Struct_2(1i, Struct_1(vec3<u32>(49693u, 4294967295u, 61564u), 1u, false, false, 69216u), vec3<bool>(false, true, false), vec3<i32>(i32(-2147483648), 2147483647i, 18124i)), Struct_2(18596i, Struct_1(vec3<u32>(1u, 1u, 4294967295u), 1u, false, true, 38546u), vec3<bool>(true, true, true), vec3<i32>(-31170i, 16606i, 1i)), Struct_2(-38561i, Struct_1(vec3<u32>(59759u, 1u, 1u), 0u, false, false, 1u), vec3<bool>(false, false, false), vec3<i32>(11292i, -1i, i32(-2147483648))), Struct_2(-30777i, Struct_1(vec3<u32>(1u, 53411u, 6327u), 89136u, false, false, 1162u), vec3<bool>(false, true, true), vec3<i32>(-12006i, -1i, 2147483647i)), Struct_2(2147483647i, Struct_1(vec3<u32>(26581u, 12621u, 1u), 40539u, false, true, 51004u), vec3<bool>(false, true, false), vec3<i32>(-1034i, i32(-2147483648), 13131i)), Struct_2(-26827i, Struct_1(vec3<u32>(17343u, 4294967295u, 35896u), 0u, true, true, 76403u), vec3<bool>(true, true, false), vec3<i32>(0i, -52052i, i32(-2147483648))), Struct_2(24303i, Struct_1(vec3<u32>(4294967295u, 0u, 59005u), 0u, false, false, 1u), vec3<bool>(false, false, true), vec3<i32>(5605i, i32(-2147483648), -39753i)), Struct_2(-1i, Struct_1(vec3<u32>(50232u, 4294967295u, 4294967295u), 13811u, true, false, 71043u), vec3<bool>(true, false, true), vec3<i32>(2147483647i, 1i, -38712i)), Struct_2(33758i, Struct_1(vec3<u32>(5923u, 18434u, 45291u), 4294967295u, false, true, 35775u), vec3<bool>(true, false, false), vec3<i32>(i32(-2147483648), 61925i, -1i)), Struct_2(35049i, Struct_1(vec3<u32>(4294967295u, 0u, 4294967295u), 72748u, true, true, 4294967295u), vec3<bool>(false, false, false), vec3<i32>(82874i, -23592i, i32(-2147483648))), Struct_2(2147483647i, Struct_1(vec3<u32>(1u, 31172u, 22694u), 0u, false, false, 0u), vec3<bool>(true, false, false), vec3<i32>(-22007i, 2147483647i, -35961i)), Struct_2(8456i, Struct_1(vec3<u32>(2206u, 6227u, 1u), 48104u, false, false, 75710u), vec3<bool>(false, true, true), vec3<i32>(-1i, 35887i, 0i)), Struct_2(32387i, Struct_1(vec3<u32>(67159u, 4294967295u, 27533u), 0u, true, true, 43792u), vec3<bool>(false, false, false), vec3<i32>(-1i, -14802i, -34265i)));

var<private> global2: Struct_2;

var<private> global3: u32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: f32) -> bool {
    var var_0 = !select(!vec4<bool>(select(arg_1.d, true, false), false, false, arg_1.d), vec4<bool>(select(global2.b.d, true, true || global0.x), !any(global2.c.zy), !any(vec2<bool>(false, global0.x)), any(select(vec2<bool>(global0.x, global0.x), global2.c.yz, true))), true | (false & !global0.x));
    var var_1 = global2.a;
    var var_2 = global2.a;
    var var_3 = Struct_2(2147483647i, arg_1, !var_0.yxw, ~_wgslsmith_div_vec3_i32(min(global2.d, global2.d), -global2.d) & abs(~select(global2.d, global2.d, vec3<bool>(false, true, global2.b.d))));
    global1 = array<Struct_2, 20>();
    return select(var_3.b.e > firstLeadingBit(_wgslsmith_div_u32(24577u << (var_3.b.b % 32u), arg_1.b & var_3.b.b)), !(!any(vec3<bool>(var_0.x, global0.x, global0.x))), !any(!select(vec4<bool>(true, false, var_0.x, var_3.c.x), vec4<bool>(var_3.b.c, global2.b.d, true, true), vec4<bool>(true, var_0.x, false, var_0.x))));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    global2 = Struct_2(u_input.a, arg_0.b, vec3<bool>(true, !arg_0.b.c & func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1081f, -1189f)), Struct_1(arg_0.b.a, arg_0.b.a.x, true, false, 90949u), 368f), false), -arg_0.d);
    var var_0 = select(vec2<bool>(global0.x, all(global2.c) | arg_0.c.x), !(!(!vec2<bool>(global0.x, false))), arg_0.c.x);
    let var_1 = Struct_1(vec3<u32>(_wgslsmith_mult_u32(arg_0.b.b, global2.b.b), min(~(arg_0.b.e >> (arg_0.b.a.x % 32u)), abs(firstTrailingBit(arg_0.b.e))), global2.b.e), 0u, any(!(!select(arg_0.c.yz, global2.c.xz, vec2<bool>(var_0.x, true)))), all(!vec3<bool>(any(arg_0.c), global0.x, true)), arg_0.b.b ^ max(1u, min(~10492u, 4294967295u >> (0u % 32u))));
    global2 = Struct_2(reverseBits(global2.d.x), Struct_1(var_1.a, ~select(max(49736u, 1u), var_1.e, true), false, !all(!global2.c.xz), arg_0.b.a.x), select(global2.c, select(select(select(vec3<bool>(var_0.x, false, true), vec3<bool>(var_1.c, global2.c.x, false), false), arg_0.c, all(vec3<bool>(true, global2.c.x, true))), !vec3<bool>(arg_0.b.d, var_0.x, true), !global2.c.x), select(arg_0.c, arg_0.c, !(false && arg_0.b.d))), -select(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(13322i, u_input.a, u_input.a, global2.d.x), vec4<i32>(1i, u_input.a, u_input.a, 1i)), -2147483647i, ~(-39582i)), _wgslsmith_sub_vec3_i32(vec3<i32>(global2.d.x, 17191i, arg_0.a), select(global2.d, vec3<i32>(u_input.a, u_input.a, 2147483647i), vec3<bool>(true, var_1.d, arg_0.c.x))), global2.c));
    let var_2 = arg_0.b.a.xx;
    return arg_0.b;
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> u32 {
    let var_0 = all(vec3<bool>(all(vec4<bool>(global2.b.c, !global2.c.x, global0.x, true)), arg_1.b.d | all(select(vec2<bool>(false, true), arg_1.c.xy, global0.x)), true));
    let var_1 = abs(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, ~_wgslsmith_div_u32(23509u, 4294967295u), 1u), ~vec3<u32>(1u, global2.b.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 21907u, arg_1.b.e, global2.b.b), vec4<u32>(18301u, global2.b.e, 22700u, 49432u)))));
    var var_2 = Struct_2(u_input.a, func_2(arg_1), arg_1.c, vec3<i32>(abs(-900i), _wgslsmith_div_i32(_wgslsmith_add_i32(reverseBits(global2.d.x), ~arg_0), u_input.a), arg_0 | min(~global2.a, global2.a)));
    global0 = select(select(select(arg_1.c.xy, !global2.c.xz, vec2<bool>(true || global0.x, false)), vec2<bool>(all(global2.c.xz), firstLeadingBit(global2.b.e) != global2.b.b), var_2.c.zx), select(global2.c.xz, vec2<bool>(arg_1.c.x, !(false != global2.b.d)), !(!all(arg_1.c.yz))), var_2.c.xx);
    let var_3 = 0u;
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.x;
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(~28525i, global2.d.x << (0u % 32u))), _wgslsmith_add_vec2_i32(global2.d.yx, vec2<i32>(-1i, u_input.a >> (1u % 32u)))), 1i);
    var_1 = _wgslsmith_clamp_i32(u_input.a, _wgslsmith_sub_i32(~2147483647i, _wgslsmith_mod_i32(-8632i, reverseBits(-2147483647i))), -32552i);
    var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a) | -global2.d.yz, global2.d.xz << (global2.b.a.yz % vec2<u32>(32u))) >> (_wgslsmith_clamp_u32(_wgslsmith_sub_u32(reverseBits(global2.b.a.x), func_1(1i, global1[_wgslsmith_index_u32(19710u, 20u)])), ~_wgslsmith_mult_u32(1u, global2.b.b), 63230u) % 32u);
    var var_2 = 1000f;
    var var_3 = vec4<bool>(false, true, !(!func_2(global1[_wgslsmith_index_u32(max(1u, 61674u), 20u)]).d), true);
    let var_4 = global2.b.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(1000f);
}

