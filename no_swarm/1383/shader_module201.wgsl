struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: Struct_3,
    d: Struct_3,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<i32> = vec4<i32>(57373i, -69528i, 1i, -1i);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec3<u32> {
    var var_0 = u_input.b.wx >> (~vec2<u32>(_wgslsmith_sub_u32(u_input.d, 1u), u_input.d) % vec2<u32>(32u));
    var var_1 = !(!global0.b);
    global1 = -(~u_input.c);
    let var_2 = Struct_3(2147483647i, vec3<u32>(6405u, 87200u, ~18450u), Struct_1(vec2<bool>(true, select(u_input.a, -1i, true) > global0.a), countOneBits(countOneBits(vec3<u32>(21986u, 4294967295u, u_input.d)) | vec3<u32>(1u, u_input.d, u_input.d)), ~vec2<u32>(firstTrailingBit(71567u), ~23682u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1470f, -990f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1737f - 1422f)))));
    let var_3 = Struct_2(~0i, any(vec2<bool>(true, true)) && true);
    return var_2.c.b << ((var_2.c.b << (vec3<u32>(7978u, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.d, var_2.b.x, var_2.c.c.x, u_input.d)), vec4<u32>(u_input.d, var_2.b.x, var_2.c.b.x, 51425u) << (vec4<u32>(53200u, var_2.b.x, 15338u, var_2.c.c.x) % vec4<u32>(32u))), u_input.d) % vec3<u32>(32u))) % vec3<u32>(32u));
}

fn func_2(arg_0: f32, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_4(~(-vec4<i32>(global0.a, u_input.a, u_input.a, global0.a)) << (((_wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, u_input.d, u_input.d), vec4<u32>(arg_1.x, arg_1.x, 73122u, u_input.d)) << (select(vec4<u32>(4294967295u, 4294967295u, arg_1.x, u_input.d), vec4<u32>(u_input.d, 57608u, 16724u, 1u), vec4<bool>(global0.b, global0.b, true, global0.b)) % vec4<u32>(32u))) | firstLeadingBit(vec4<u32>(45012u, 37341u, 125426u, 4219u))) % vec4<u32>(32u)), func_3(), Struct_3(global0.a, ~vec3<u32>(u_input.d, u_input.d, arg_1.x), Struct_1(!(!vec2<bool>(global0.b, false)), reverseBits(vec3<u32>(43275u, 69352u, u_input.d) >> (vec3<u32>(arg_1.x, arg_1.x, 1u) % vec3<u32>(32u))), abs(~vec2<u32>(18873u, 0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - arg_0))), Struct_3(0i, _wgslsmith_sub_vec3_u32(select(arg_1 ^ vec3<u32>(arg_1.x, 1u, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(27885u, arg_1.x, arg_1.x), arg_1), select(vec3<bool>(global0.b, global0.b, false), vec3<bool>(false, false, false), vec3<bool>(global0.b, false, global0.b))), ~arg_1), Struct_1(select(!vec2<bool>(true, global0.b), vec2<bool>(global0.b, false), !vec2<bool>(global0.b, global0.b)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, 1u, 29691u), arg_1) >> ((arg_1 << (vec3<u32>(u_input.d, u_input.d, 0u) % vec3<u32>(32u))) % vec3<u32>(32u)), arg_1.yz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-710f, 739f))))));
    let var_1 = vec2<f32>(var_0.d.c.d, _wgslsmith_f_op_f32(sign(911f)));
    let var_2 = -u_input.b | _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -var_0.a, vec4<i32>(firstLeadingBit(global0.a << (0u % 32u)), u_input.b.x, ~firstLeadingBit(-1i), -2147483647i), var_0.a);
    let var_3 = Struct_4(~vec4<i32>(_wgslsmith_add_i32(-2147483647i, var_0.c.a), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, -2147483647i, var_2.x), var_2.zzx), var_2.x ^ var_2.x, _wgslsmith_mod_i32(global1.x, -65294i)) | u_input.c, arg_1, Struct_3(var_2.x, vec3<u32>(var_0.b.x, 52155u, arg_1.x), Struct_1(!vec2<bool>(global0.b, global0.b), ~var_0.c.b, vec2<u32>(~104534u, _wgslsmith_add_u32(5093u, 34152u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.x)) - _wgslsmith_f_op_f32(step(732f, var_0.c.c.d))))), var_0.c);
    let var_4 = countOneBits(global1.x);
    return var_0.c.c;
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: Struct_2) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.d.c.d, -937f)) - _wgslsmith_f_op_f32(max(func_2(_wgslsmith_div_f32(arg_0.c.c.d, _wgslsmith_f_op_f32(f32(-1f) * -2909f)), firstTrailingBit(abs(arg_0.d.c.b))).d, func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-406f, 1117f, true)), _wgslsmith_f_op_f32(-1109f * 800f)), ~_wgslsmith_add_vec3_u32(vec3<u32>(29297u, arg_0.c.b.x, 1u), arg_0.d.b)).d)));
    var var_1 = Struct_1(!arg_0.c.c.a, arg_0.b, min(~func_3().xy, arg_0.c.c.c | arg_0.c.b.zz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, 1000f))));
    let var_2 = arg_2;
    return _wgslsmith_sub_vec4_i32(u_input.c, u_input.c >> (select(select(~vec4<u32>(68018u, 39799u, var_1.c.x, 21949u), select(vec4<u32>(var_1.c.x, 17259u, 31293u, u_input.d), vec4<u32>(4294967295u, var_1.b.x, 7718u, var_1.b.x), vec4<bool>(true, arg_1, arg_2.b, var_1.a.x)), arg_0.c.c.a.x), ~max(vec4<u32>(102136u, 4294967295u, u_input.d, 1u), vec4<u32>(u_input.d, arg_0.b.x, arg_0.b.x, 1u)), !select(vec4<bool>(arg_2.b, var_1.a.x, false, false), vec4<bool>(false, var_1.a.x, false, arg_0.c.c.a.x), vec4<bool>(false, false, false, true))) % vec4<u32>(32u)));
}

fn func_1() -> bool {
    var var_0 = Struct_1(vec2<bool>(true, !all(vec2<bool>(true, true))), vec3<u32>(u_input.d, _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 21771u, 41779u), ~vec3<u32>(u_input.d, 1u, 4294967295u)), max(1u, 12168u)), ~(~(~(~vec2<u32>(42509u, u_input.d)))), -400f);
    global1 = func_4(Struct_4(u_input.b, var_0.b, Struct_3(global0.a ^ -16068i, var_0.b, func_2(-584f, vec3<u32>(u_input.d, u_input.d, 17097u))), Struct_3(_wgslsmith_clamp_i32(u_input.a, global1.x, u_input.a) & -45573i, vec3<u32>(select(0u, 0u, global0.b), ~u_input.d, _wgslsmith_div_u32(u_input.d, 0u)), Struct_1(var_0.a, ~vec3<u32>(16328u, u_input.d, 0u), var_0.b.zy, -614f))), all(var_0.a), Struct_2(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.b, u_input.c, vec4<i32>(u_input.b.x, global0.a, -2147483647i, 1i)), vec4<i32>(1i, global0.a, -2147483647i, 2147483647i)) << (58967u % 32u), var_0.a.x && true));
    let var_1 = ~(-vec3<i32>(32056i, 15526i | global0.a, global1.x | global1.x)) ^ -u_input.c.yww;
    let var_2 = Struct_4(~(~u_input.c) >> (_wgslsmith_add_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.d, 24741u, u_input.d), vec4<u32>(u_input.d, var_0.b.x, 1u, u_input.d)), firstTrailingBit(reverseBits(vec4<u32>(var_0.b.x, 40957u, 0u, 35963u)))) % vec4<u32>(32u)), vec3<u32>(~u_input.d, var_0.c.x, ~36547u), Struct_3(~u_input.b.x, var_0.b, Struct_1(!vec2<bool>(true, global0.b), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, 0u, u_input.d), func_3()), countOneBits(~vec2<u32>(u_input.d, u_input.d)), -481f)), Struct_3(firstLeadingBit(2147483647i), var_0.b, Struct_1(!(!vec2<bool>(var_0.a.x, var_0.a.x)), vec3<u32>(func_3().x, ~u_input.d, countOneBits(38270u)), reverseBits(vec2<u32>(1u, 33345u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_0.d, var_0.d)))))));
    global0 = Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(-global0.a, firstLeadingBit(u_input.b.x) & (i32(-1i) * -15849i), _wgslsmith_mod_i32(global0.a, global0.a)), ~global1.zyx), any(func_2(_wgslsmith_f_op_f32(f32(-1f) * -1073f), vec3<u32>(0u, 23433u, var_2.d.b.x & 13384u)).a));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 815f;
    var var_1 = true | global0.b;
    var var_2 = func_1();
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(866f, var_0, -170f, 743f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(103f, -987f, var_0, 569f))))));
    var var_4 = Struct_2(_wgslsmith_add_i32(-2147483647i, ~_wgslsmith_dot_vec4_i32(-u_input.b, ~u_input.b)), true);
    var var_5 = _wgslsmith_mult_u32(17271u, _wgslsmith_mult_u32(firstTrailingBit(max(16422u, u_input.d)) ^ 1u, ~(~(~22046u))));
    let var_6 = Struct_5(vec4<i32>(_wgslsmith_mod_i32(-57105i, _wgslsmith_mult_i32(-global0.a, 528i)), -29213i, -(_wgslsmith_mult_i32(6322i, -1i) << (1u % 32u)), -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(-(~vec3<i32>(abs(0i), 21515i, _wgslsmith_mult_i32(global0.a, var_4.a))), u_input.d, _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 33562u, u_input.d) | vec3<u32>(u_input.d, u_input.d, 41536u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, 0u, 32419u), vec3<u32>(4294967295u, 0u, 1u))) >> (~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 99431u, u_input.d), vec3<u32>(u_input.d, u_input.d, 63101u)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(select(vec3<u32>(30214u, u_input.d, u_input.d), vec3<u32>(u_input.d, 0u, u_input.d), vec3<bool>(global0.b, false, var_4.b)), vec3<u32>(23339u, 1u, 1u)), ~(vec3<u32>(4294967295u, 1u, 0u) >> (vec3<u32>(u_input.d, u_input.d, 1u) % vec3<u32>(32u))))), _wgslsmith_f_op_f32(abs(var_3.x)), vec4<f32>(-566f, _wgslsmith_f_op_f32(-1079f * var_3.x), func_2(791f, select(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 0u, u_input.d), vec3<u32>(u_input.d, u_input.d, 28998u)), ~vec3<u32>(0u, u_input.d, u_input.d), vec3<bool>(false, global0.b, var_4.b))).d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0, _wgslsmith_div_f32(var_3.x, 760f), var_4.b)), -438f)));
}

