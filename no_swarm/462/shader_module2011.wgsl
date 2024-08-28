struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<bool>(true, false));

var<private> global1: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global2: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(228f, Struct_1(35751i, vec4<u32>(64132u, 41712u, 48792u, 73389u), true), Struct_1(2147483647i, vec4<u32>(29176u, 786u, 4294967295u, 4294967295u), true)), Struct_2(637f, Struct_1(2043i, vec4<u32>(9502u, 16946u, 1u, 80475u), true), Struct_1(1i, vec4<u32>(4294967295u, 4294967295u, 61416u, 0u), true)), Struct_2(-582f, Struct_1(-31574i, vec4<u32>(1u, 28310u, 19791u, 39955u), true), Struct_1(i32(-2147483648), vec4<u32>(4294967295u, 25636u, 4294967295u, 101890u), false)), Struct_2(714f, Struct_1(2147483647i, vec4<u32>(4294967295u, 29721u, 1u, 4294967295u), false), Struct_1(i32(-2147483648), vec4<u32>(1u, 32908u, 22241u, 4294967295u), false)), Struct_2(-1739f, Struct_1(-19874i, vec4<u32>(36866u, 4294967295u, 10990u, 4294967295u), false), Struct_1(2147483647i, vec4<u32>(1u, 0u, 51261u, 4294967295u), true)), Struct_2(-631f, Struct_1(-16061i, vec4<u32>(0u, 11361u, 7657u, 24600u), false), Struct_1(5853i, vec4<u32>(13330u, 24820u, 5877u, 0u), true)), Struct_2(1000f, Struct_1(0i, vec4<u32>(4294967295u, 3733u, 28456u, 4294967295u), false), Struct_1(-7456i, vec4<u32>(60223u, 33035u, 8867u, 0u), true)), Struct_2(-768f, Struct_1(-28637i, vec4<u32>(121985u, 4294967295u, 42109u, 4294967295u), false), Struct_1(20863i, vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u), true)), Struct_2(-1381f, Struct_1(44459i, vec4<u32>(1u, 1u, 13054u, 25133u), true), Struct_1(-1i, vec4<u32>(4294967295u, 45839u, 96869u, 4294967295u), false)), Struct_2(326f, Struct_1(0i, vec4<u32>(1453u, 92259u, 0u, 29462u), true), Struct_1(2879i, vec4<u32>(4294967295u, 4294967295u, 33466u, 1u), true)), Struct_2(-348f, Struct_1(-15304i, vec4<u32>(1u, 1u, 5779u, 32307u), true), Struct_1(i32(-2147483648), vec4<u32>(1u, 23295u, 0u, 0u), true)), Struct_2(-664f, Struct_1(49722i, vec4<u32>(51741u, 4294967295u, 10694u, 11068u), false), Struct_1(0i, vec4<u32>(1u, 47790u, 10984u, 3010u), false)), Struct_2(1504f, Struct_1(-7838i, vec4<u32>(27862u, 1u, 4294967295u, 1u), false), Struct_1(2147483647i, vec4<u32>(1u, 0u, 4645u, 703u), false)));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2) -> u32 {
    var var_0 = -363f;
    var var_1 = _wgslsmith_add_i32(u_input.a.x, firstTrailingBit(reverseBits(-41294i)) ^ (i32(-1i) * -1i));
    let var_2 = !vec3<bool>(arg_1.c.c, false, global1.x);
    global0 = arg_0.c;
    let var_3 = var_2;
    return _wgslsmith_sub_u32(26914u, _wgslsmith_mod_u32(abs(~(~1u)), ~arg_1.c.b.x));
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    var var_0 = Struct_3(global0.a);
    let var_1 = arg_0.b.yzz;
    var var_2 = true;
    var var_3 = Struct_4(func_3(Struct_4(4264u, arg_0, Struct_3(!vec2<bool>(global1.x, global1.x))), global2[_wgslsmith_index_u32(0u, 13u)]), Struct_1(1i, min(vec4<u32>(firstTrailingBit(28497u), arg_0.b.x, _wgslsmith_add_u32(u_input.b, 64397u), countOneBits(2519u)), reverseBits(vec4<u32>(1u, 1u, arg_0.b.x, 77737u) & vec4<u32>(48480u, arg_0.b.x, u_input.b, u_input.b))), (_wgslsmith_add_u32(4294967295u, arg_0.b.x) | ~4294967295u) > _wgslsmith_div_u32(u_input.b, u_input.b)), Struct_3(vec2<bool>(true, true)));
    global2 = array<Struct_2, 13>();
    return var_3.c;
}

fn func_1() -> Struct_4 {
    global0 = Struct_3(vec2<bool>(global1.x, false));
    global0 = func_2(Struct_1(-6208i, abs(~vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b)) << (~(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) >> (vec4<u32>(0u, u_input.b, u_input.b, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u)), !global1.x));
    var var_0 = func_2(Struct_1(_wgslsmith_dot_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(39763i, 0i, 1i, u_input.a.x)), -(vec4<i32>(-35169i, u_input.a.x, -18271i, u_input.a.x) >> (vec4<u32>(u_input.b, u_input.b, u_input.b, 1u) % vec4<u32>(32u)))), ~min(vec4<u32>(65283u, u_input.b, 1u, u_input.b), vec4<u32>(10850u, 1u, 26346u, u_input.b)) | _wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(u_input.b, 44947u, u_input.b, 0u)), global1.x));
    var var_1 = vec2<bool>(true, global0.a.x);
    var var_2 = !func_2(Struct_1(u_input.a.x, ~(vec4<u32>(u_input.b, 3227u, 0u, u_input.b) ^ vec4<u32>(u_input.b, 1u, u_input.b, u_input.b)), true)).a;
    return Struct_4(u_input.b, Struct_1(2147483647i, min(~countOneBits(vec4<u32>(1267u, 0u, u_input.b, u_input.b)), vec4<u32>(1u, u_input.b | 4294967295u, 1622u, ~u_input.b)), !(all(vec4<bool>(var_1.x, false, false, var_2.x)) && global0.a.x)), func_2(Struct_1(u_input.a.x, _wgslsmith_add_vec4_u32(vec4<u32>(1u, 66354u, u_input.b, u_input.b), vec4<u32>(1u, u_input.b, u_input.b, u_input.b)) << ((vec4<u32>(u_input.b, 1u, u_input.b, 25539u) & vec4<u32>(u_input.b, 81515u, 4294967295u, u_input.b)) % vec4<u32>(32u)), any(vec4<bool>(false, true, global0.a.x, global1.x)) | (var_2.x || false))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec3<i32>) -> Struct_4 {
    var var_0 = select(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(arg_0.b.yww, _wgslsmith_add_vec3_u32(arg_0.b.xww, vec3<u32>(arg_1.a, 56581u, 78772u))), vec3<u32>(abs(u_input.b), _wgslsmith_dot_vec2_u32(arg_1.b.b.zz, arg_1.b.b.yy), u_input.b)), arg_0.b.xyx, select(!select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(true, arg_1.b.c, global1.x), false), vec3<bool>(!global1.x, true, !arg_0.c), true)) ^ arg_0.b.yww;
    let var_1 = func_2(Struct_1(~(-2147483647i), vec4<u32>(var_0.x, 99235u, _wgslsmith_add_u32(var_0.x, 54735u), ~arg_1.b.b.x & ~arg_1.a), global1.x));
    var var_2 = func_1().b;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -833f)))), func_1().b, Struct_1(var_2.a, _wgslsmith_sub_vec4_u32(~select(arg_1.b.b, vec4<u32>(arg_0.b.x, var_0.x, 43427u, 53045u), vec4<bool>(false, global1.x, var_1.a.x, arg_0.c)), arg_1.b.b), false));
    var var_4 = Struct_2(326f, var_3.b, Struct_1(43185i, _wgslsmith_add_vec4_u32(~countOneBits(var_2.b), _wgslsmith_div_vec4_u32(vec4<u32>(0u, var_0.x, 38804u, var_2.b.x) | vec4<u32>(0u, var_2.b.x, 4294967295u, 46577u), var_3.b.b)), select(-1i <= arg_2.x, var_3.b.c, !(global0.a.x || arg_0.c))));
    return Struct_4(_wgslsmith_mult_u32(u_input.b, abs(25363u)), Struct_1(2147483647i, var_3.c.b, var_2.c), func_2(Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-10088i, var_3.c.a, -1i, 34715i), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.b.a, -1i, 0i, 2147483647i), vec4<i32>(arg_2.x, -1i, -2147483647i, 18253i), vec4<i32>(1i, var_4.c.a, var_3.c.a, var_3.b.a))), ~vec4<u32>(arg_1.b.b.x, 68676u, 53712u, var_3.b.b.x), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(2147483647i, _wgslsmith_mod_vec4_u32(vec4<u32>(~46672u, _wgslsmith_add_u32(u_input.b, 0u), ~u_input.b, 0u), vec4<u32>(45610u, u_input.b, u_input.b, u_input.b)), false), func_1(), _wgslsmith_div_vec3_i32(max(max(~vec3<i32>(u_input.a.x, u_input.a.x, 42993i), -vec3<i32>(-55822i, u_input.a.x, u_input.a.x)), ~(vec3<i32>(u_input.a.x, 7642i, 1i) | vec3<i32>(-1i, u_input.a.x, 61442i))), vec3<i32>(abs(select(-2147483647i, 29123i, false)), 1i, ~u_input.a.x)));
    global1 = vec4<bool>(true, global0.a.x, global0.a.x, any(!(!select(vec4<bool>(var_0.c.a.x, false, var_0.c.a.x, global0.a.x), vec4<bool>(var_0.b.c, global0.a.x, false, global1.x), vec4<bool>(true, true, global0.a.x, false)))));
    let var_1 = u_input.b;
    var var_2 = global0.a;
    var var_3 = var_0;
    global2 = array<Struct_2, 13>();
    var_3 = func_1();
    let var_4 = var_3.b.a;
    var var_5 = vec4<u32>(var_3.a << (var_1 % 32u), var_1, 4294967295u, var_1) & ~(~(~vec4<u32>(1u, 45333u, var_3.a, var_3.b.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(1i, 18137i, func_1().b.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1013f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1787f, -388f, -345f, -1615f)))))));
}

