struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec3<bool>,
    c: Struct_1,
    d: vec2<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20> = array<u32, 20>(4294967295u, 32272u, 4294967295u, 22203u, 33664u, 0u, 0u, 36000u, 4294967295u, 49636u, 71064u, 14337u, 1u, 36534u, 112177u, 0u, 32263u, 4294967295u, 23828u, 10092u);

var<private> global1: vec4<i32> = vec4<i32>(-19651i, -745i, 1i, -13645i);

var<private> global2: u32 = 23592u;

var<private> global3: array<Struct_1, 20>;

var<private> global4: array<Struct_4, 23> = array<Struct_4, 23>(Struct_4(true, vec3<bool>(true, false, false), Struct_1(-20300i), vec2<bool>(false, true), Struct_1(0i)), Struct_4(true, vec3<bool>(true, true, true), Struct_1(1i), vec2<bool>(true, false), Struct_1(29594i)), Struct_4(true, vec3<bool>(true, false, true), Struct_1(0i), vec2<bool>(false, false), Struct_1(1i)), Struct_4(false, vec3<bool>(true, false, true), Struct_1(42262i), vec2<bool>(false, true), Struct_1(-1i)), Struct_4(false, vec3<bool>(true, false, false), Struct_1(i32(-2147483648)), vec2<bool>(false, true), Struct_1(-1i)), Struct_4(false, vec3<bool>(false, false, true), Struct_1(-24156i), vec2<bool>(true, true), Struct_1(8481i)), Struct_4(false, vec3<bool>(false, true, false), Struct_1(16286i), vec2<bool>(false, true), Struct_1(-26961i)), Struct_4(true, vec3<bool>(true, true, true), Struct_1(105783i), vec2<bool>(true, false), Struct_1(42985i)), Struct_4(true, vec3<bool>(false, false, true), Struct_1(-3932i), vec2<bool>(true, true), Struct_1(28302i)), Struct_4(false, vec3<bool>(false, false, true), Struct_1(0i), vec2<bool>(true, false), Struct_1(-20392i)), Struct_4(false, vec3<bool>(true, true, true), Struct_1(32393i), vec2<bool>(true, true), Struct_1(-52875i)), Struct_4(true, vec3<bool>(false, false, false), Struct_1(-3211i), vec2<bool>(true, true), Struct_1(1i)), Struct_4(false, vec3<bool>(false, true, true), Struct_1(-1i), vec2<bool>(false, true), Struct_1(32639i)), Struct_4(false, vec3<bool>(false, true, false), Struct_1(-11536i), vec2<bool>(false, false), Struct_1(1i)), Struct_4(true, vec3<bool>(false, true, false), Struct_1(1i), vec2<bool>(true, true), Struct_1(1i)), Struct_4(true, vec3<bool>(false, false, false), Struct_1(1i), vec2<bool>(true, false), Struct_1(47205i)), Struct_4(false, vec3<bool>(false, true, true), Struct_1(-9724i), vec2<bool>(false, true), Struct_1(0i)), Struct_4(true, vec3<bool>(false, true, false), Struct_1(i32(-2147483648)), vec2<bool>(true, false), Struct_1(2666i)), Struct_4(true, vec3<bool>(false, false, false), Struct_1(1i), vec2<bool>(true, false), Struct_1(2147483647i)), Struct_4(false, vec3<bool>(false, false, false), Struct_1(-13921i), vec2<bool>(false, false), Struct_1(27650i)), Struct_4(false, vec3<bool>(true, false, false), Struct_1(-21523i), vec2<bool>(false, true), Struct_1(-7379i)), Struct_4(false, vec3<bool>(true, false, false), Struct_1(-11103i), vec2<bool>(true, false), Struct_1(-927i)), Struct_4(true, vec3<bool>(false, true, true), Struct_1(-13770i), vec2<bool>(false, true), Struct_1(i32(-2147483648))));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: bool) -> vec2<i32> {
    var var_0 = global4[_wgslsmith_index_u32(30051u << (~(global0[_wgslsmith_index_u32(~96873u, 20u)] & ((u_input.a.x | 9211u) >> (global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(17396u, 20u)], 20u)] % 32u))) % 32u), 23u)];
    return reverseBits(vec2<i32>(var_0.c.a, global1.x));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec2<i32>, arg_3: vec3<bool>) -> Struct_3 {
    global4 = array<Struct_4, 23>();
    global2 = ~_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(0u, 246u)), ~u_input.a.zx >> (vec2<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], reverseBits(u_input.a.x)) % vec2<u32>(32u)));
    global0 = array<u32, 20>();
    global0 = array<u32, 20>();
    let var_0 = Struct_2(Struct_1(arg_0), u_input.a.wxx);
    return Struct_3(vec4<u32>(u_input.a.x, 0u, 1u, abs(u_input.a.x)) << (~_wgslsmith_sub_vec4_u32(abs(u_input.a), ~u_input.a) % vec4<u32>(32u)), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(~u_input.c, ~(-56419i), countOneBits(-58489i)), vec3<i32>(-1i, 1i, arg_0 >> (global0[_wgslsmith_index_u32(u_input.b, 20u)] % 32u)), max(~global1.ywy, ~global1.yyz)), abs(select(_wgslsmith_add_vec3_i32(global1.zwx, vec3<i32>(arg_2.x, 3123i, u_input.c)), vec3<i32>(u_input.c, -2147483647i, 22109i) ^ vec3<i32>(0i, arg_2.x, -41372i), select(arg_3, vec3<bool>(true, arg_1, true), true)))), select(~(~_wgslsmith_div_vec2_u32(var_0.b.zy, u_input.a.xz)), _wgslsmith_add_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(var_0.b.x, 20u)])), abs(min(u_input.a.xz, vec2<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], 1u)))), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(437f + -261f), -524f))), Struct_2(Struct_1(arg_0), ~select(~u_input.a.zyy, vec3<u32>(u_input.b, 33007u, u_input.b) & var_0.b, vec3<bool>(false, arg_3.x, false))));
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: i32, arg_3: Struct_1) -> Struct_3 {
    let var_0 = func_3(global1.x, true, func_2(true), vec3<bool>(true, true, true));
    var var_1 = !vec2<bool>(true, all(vec2<bool>(false, false)) && all(vec2<bool>(true, true)));
    global2 = 50288u;
    let var_2 = func_3(abs(min(abs(1i), ~_wgslsmith_mult_i32(arg_3.a, arg_0))), false, global1.yz, select(!vec3<bool>(all(vec2<bool>(false, var_1.x)), all(vec3<bool>(var_1.x, false, var_1.x)), all(vec4<bool>(false, var_1.x, true, false))), !(!vec3<bool>(var_1.x, var_1.x, true)), !(_wgslsmith_f_op_f32(-var_0.d) != _wgslsmith_f_op_f32(160f * -391f)))).e;
    var var_3 = 0u;
    return func_3(-42568i | _wgslsmith_div_i32(select(_wgslsmith_mod_i32(-2147483647i, var_0.b), 22222i, var_1.x), arg_3.a), any(vec2<bool>(var_1.x, select(var_2.b.x <= global0[_wgslsmith_index_u32(19206u, 20u)], any(vec2<bool>(var_1.x, var_1.x)), all(vec2<bool>(false, false))))), global1.yz | vec2<i32>(max(_wgslsmith_div_i32(-46671i, arg_3.a), ~arg_0), _wgslsmith_mult_i32(_wgslsmith_sub_i32(arg_2, -39015i), _wgslsmith_dot_vec3_i32(global1.zwz, vec3<i32>(var_0.b, -19459i, 7004i)))), vec3<bool>(var_1.x, true == var_1.x, var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~global1.zw;
    let var_1 = func_1(~(~(-23969i)), vec2<u32>(_wgslsmith_div_u32(34608u, ~21002u), u_input.b), -reverseBits(var_0.x), global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(4294967295u, 4294967295u << (max(8055u, global0[_wgslsmith_index_u32(u_input.a.x, 20u)]) % 32u)), 20u)]);
    var_0 = global1.wx;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.d)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d - var_1.d)) - var_1.d));
    var var_3 = abs(vec2<i32>(u_input.c, ~_wgslsmith_sub_i32(942i >> (global0[_wgslsmith_index_u32(20341u, 20u)] % 32u), -53346i)));
    var var_4 = vec4<bool>(any(!select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), true), vec4<bool>(true, false, false, true), 493f > var_1.d)), true, !any(vec3<bool>(true, 24126u >= global0[_wgslsmith_index_u32(0u, 20u)], true)), !(!(!all(vec3<bool>(true, true, true)))));
    var_4 = select(!(!vec4<bool>(true, all(vec4<bool>(var_4.x, true, true, false)), !var_4.x, var_4.x)), select(!(!(!vec4<bool>(false, var_4.x, false, var_4.x))), vec4<bool>(!var_4.x, any(select(vec2<bool>(true, true), vec2<bool>(false, true), var_4.wz)), true, !(!var_4.x)), vec4<bool>(true, !(true & var_4.x), select(var_4.x, any(var_4.xz), true), true)), select(vec4<bool>(any(!vec4<bool>(var_4.x, var_4.x, true, true)), _wgslsmith_f_op_f32(trunc(var_1.d)) > _wgslsmith_f_op_f32(-913f * var_1.d), true, !any(vec3<bool>(var_4.x, false, var_4.x))), select(!select(vec4<bool>(true, var_4.x, false, var_4.x), vec4<bool>(true, false, var_4.x, false), vec4<bool>(var_4.x, true, var_4.x, false)), select(vec4<bool>(false, false, var_4.x, var_4.x), vec4<bool>(false, var_4.x, false, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, var_4.x, true, true), var_4.x)), !vec4<bool>(false, var_4.x, var_4.x, var_4.x)), any(select(vec3<bool>(var_4.x, false, var_4.x), select(vec3<bool>(var_4.x, var_4.x, var_4.x), vec3<bool>(var_4.x, false, true), var_4.zzz), vec3<bool>(var_4.x, false, var_4.x)))));
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(func_2(any(select(select(vec4<bool>(var_4.x, true, var_4.x, false), vec4<bool>(var_4.x, true, var_4.x, true), var_4.x), !vec4<bool>(var_4.x, false, var_4.x, false), true))).x, _wgslsmith_mod_vec2_i32(global1.xx, global1.wx << (firstLeadingBit(~vec2<u32>(1u, 1u)) % vec2<u32>(32u))), abs(~(~var_1.a)));
}

