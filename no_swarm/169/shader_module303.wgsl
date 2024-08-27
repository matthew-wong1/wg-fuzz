struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(false, -2347f, -972f, -490f), Struct_1(false, -567f, 655f, 1125f));

var<private> global1: vec3<bool> = vec3<bool>(false, false, true);

var<private> global2: array<vec3<u32>, 32>;

var<private> global3: i32 = 26008i;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: i32) -> bool {
    let var_0 = global1.zz;
    global0 = array<Struct_1, 2>();
    global3 = _wgslsmith_add_i32(_wgslsmith_clamp_i32(0i, abs(2147483647i), _wgslsmith_dot_vec3_i32(arg_0.xyw, arg_0.zyy)), abs(arg_1.x & countOneBits(-24574i)) >> (select(~_wgslsmith_dot_vec4_u32(vec4<u32>(4003u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 51792u, u_input.a.x)), u_input.a.x, select(global1.x, var_0.x || global1.x, true)) % 32u));
    let var_1 = Struct_3(Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(592f)))), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(step(-240f, _wgslsmith_div_f32(457f, -1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -935f) * _wgslsmith_f_op_f32(step(-424f, -2011f))) + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(554f, -1187f), _wgslsmith_f_op_f32(f32(-1f) * -696f))))), Struct_1(any(select(select(vec4<bool>(true, false, global1.x, true), vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(false, false, global1.x, false)), select(vec4<bool>(global1.x, false, global1.x, var_0.x), vec4<bool>(true, var_0.x, false, global1.x), var_0.x), !vec4<bool>(global1.x, false, global1.x, var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(882f)), _wgslsmith_f_op_f32(round(-247f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1211f * -276f), -253f)) + 271f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-535f)) + _wgslsmith_f_op_f32(-147f * -1464f)))), global0[_wgslsmith_index_u32(0u, 2u)], Struct_2(select(!select(vec4<bool>(true, global1.x, var_0.x, global1.x), vec4<bool>(var_0.x, global1.x, false, true), vec4<bool>(global1.x, var_0.x, false, var_0.x)), !select(vec4<bool>(var_0.x, true, false, global1.x), vec4<bool>(var_0.x, global1.x, var_0.x, var_0.x), global1.x), all(!vec2<bool>(var_0.x, global1.x))), 37578u), Struct_2(!(!select(vec4<bool>(var_0.x, global1.x, true, var_0.x), vec4<bool>(true, global1.x, false, false), vec4<bool>(true, var_0.x, false, global1.x))), ~_wgslsmith_clamp_u32(select(0u, 36611u, var_0.x), _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), u_input.a.x)));
    let var_2 = _wgslsmith_mod_vec4_i32(~_wgslsmith_sub_vec4_i32(max(_wgslsmith_add_vec4_i32(vec4<i32>(37540i, arg_1.x, 48179i, -44360i), arg_0), firstLeadingBit(vec4<i32>(-29229i, arg_1.x, arg_1.x, arg_2))), _wgslsmith_mult_vec4_i32(vec4<i32>(41611i, arg_1.x, u_input.b, arg_0.x), arg_0) >> (_wgslsmith_add_vec4_u32(vec4<u32>(var_1.d.b, var_1.e.b, u_input.a.x, 3312u), vec4<u32>(u_input.a.x, u_input.a.x, 1u, var_1.d.b)) % vec4<u32>(32u))), max(countOneBits(arg_0) ^ ~(-arg_0), _wgslsmith_mod_vec4_i32(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(14707i, arg_1.x, arg_2, arg_0.x), vec4<i32>(arg_2, 23033i, 2147483647i, arg_2))), arg_0)));
    return any(var_1.e.a.yyz);
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> Struct_2 {
    global1 = select(arg_0.a.xwz, !vec3<bool>(true, func_3(firstLeadingBit(vec4<i32>(u_input.b, u_input.b, 0i, 33718i)), -vec2<i32>(u_input.b, u_input.b), 0i), 4294967295u != max(1u, arg_0.b)), !(!arg_0.a.yxy));
    var var_0 = ~vec4<i32>(abs(u_input.b), -abs(u_input.b << (arg_0.b % 32u)), u_input.b, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b, -63969i, u_input.b), min(vec3<i32>(5478i, -103739i, u_input.b), vec3<i32>(u_input.b, -20499i, 8926i))), 1i));
    let var_1 = any(arg_0.a.zxz);
    let var_2 = u_input.a.x;
    let var_3 = 2147483647i;
    return Struct_2(select(arg_0.a, vec4<bool>(true, true, false, var_1), arg_1), 1u);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_4, arg_3: Struct_3) -> Struct_3 {
    return arg_3;
}

fn func_1() -> bool {
    var var_0 = func_4(max(_wgslsmith_mult_vec4_i32(~vec4<i32>(-34868i, u_input.b, u_input.b, -2147483647i) << ((vec4<u32>(u_input.a.x, 3767u, 3474u, u_input.a.x) & vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 1u)) % vec4<u32>(32u)), vec4<i32>(u_input.b, _wgslsmith_add_i32(1i, -2147483647i), u_input.b, max(-250i, u_input.b))), -_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -1i, -2147483647i, 0i), vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.b)) | -vec4<i32>(-2147483647i, u_input.b, u_input.b, u_input.b)), func_2(Struct_2(vec4<bool>(global1.x == false, u_input.a.x >= u_input.a.x, global1.x, !global1.x), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, 26213u, u_input.a.x), ~u_input.a.x)), !(!global1.x != global1.x)), Struct_4(global0[_wgslsmith_index_u32(1u, 2u)], Struct_1(global1.x, _wgslsmith_f_op_f32(-1149f - _wgslsmith_f_op_f32(sign(998f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1885f * 1000f) - 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(701f * 1039f))), reverseBits(-firstLeadingBit(-12683i))), Struct_3(Struct_1(true, _wgslsmith_f_op_f32(-643f - -1328f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-490f, 593f))), 721f), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~1u, u_input.a.x), 2u)], Struct_1((true | global1.x) && global1.x, 959f, 420f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1668f * 639f))), func_2(func_2(Struct_2(vec4<bool>(true, global1.x, true, true), 0u), true), global1.x & true), func_2(func_2(func_2(Struct_2(vec4<bool>(false, global1.x, true, global1.x), u_input.a.x), true), true), all(select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(true, true, global1.x), vec3<bool>(global1.x, false, global1.x))))));
    global2 = array<vec3<u32>, 32>();
    let var_1 = var_0.e.a.zzx;
    let var_2 = abs(u_input.a);
    let var_3 = _wgslsmith_div_vec2_i32(reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(-47623i, 2147483647i), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, 0i), vec2<i32>(u_input.b, 0i)), vec2<i32>(u_input.b, u_input.b)))), countOneBits(-(vec2<i32>(u_input.b, u_input.b) ^ reverseBits(vec2<i32>(-2147483647i, u_input.b)))));
    return select(any(vec3<bool>((2663i ^ var_3.x) == -34928i, global1.x, (var_2.x ^ u_input.a.x) >= _wgslsmith_add_u32(var_0.e.b, 4294967295u))), var_0.c.a, global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(vec4<bool>(func_1(), true == global1.x, -select(-2147483647i, -2147483647i, false) > u_input.b, !any(vec2<bool>(false, global1.x))));
    global0 = array<Struct_1, 2>();
    global1 = select(!select(!(!vec3<bool>(false, var_0, global1.x)), func_2(Struct_2(vec4<bool>(global1.x, false, false, false), 4294967295u), true).a.wzx, vec3<bool>(var_0, var_0 && true, true)), !func_2(Struct_2(select(vec4<bool>(true, var_0, false, var_0), vec4<bool>(global1.x, global1.x, true, global1.x), false), 1u), var_0).a.wwz, func_3(-vec4<i32>(-11712i, u_input.b, 18183i, -14096i), vec2<i32>(countOneBits(2147483647i), u_input.b ^ u_input.b), reverseBits(u_input.b)) != true);
    global2 = array<vec3<u32>, 32>();
    let var_1 = Struct_4(Struct_1(true, _wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 1177f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -668f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-566f - _wgslsmith_f_op_f32(sign(-578f))), _wgslsmith_f_op_f32(-770f * 1485f)))), func_4(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-16194i, -2147483647i) ^ vec2<i32>(u_input.b, u_input.b), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, -1i), vec2<i32>(u_input.b, u_input.b))), max(-37793i | u_input.b, select(u_input.b, u_input.b, true)), u_input.b, 1i), Struct_2(!func_2(Struct_2(vec4<bool>(var_0, global1.x, false, global1.x), u_input.a.x), true).a, ~_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 1u)), Struct_4(Struct_1(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -129f), 123f, 1257f), global0[_wgslsmith_index_u32(4294967295u, 2u)], _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 45968i, u_input.b, 30060i), vec4<i32>(u_input.b, -2147483647i, -1i, u_input.b)), vec4<i32>(u_input.b, u_input.b, u_input.b, -1i))), func_4(vec4<i32>(select(9636i, u_input.b, true), u_input.b, -u_input.b, firstLeadingBit(-4122i)), func_2(Struct_2(vec4<bool>(var_0, var_0, false, var_0), 4601u), func_3(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec2<i32>(-2147483647i, u_input.b), -30222i)), Struct_4(global0[_wgslsmith_index_u32(~u_input.a.x, 2u)], Struct_1(var_0, -628f, 1000f, 1300f), _wgslsmith_add_i32(2147483647i, u_input.b)), func_4(countOneBits(vec4<i32>(u_input.b, 2147483647i, u_input.b, u_input.b)), func_4(vec4<i32>(42171i, 34918i, u_input.b, -1i), Struct_2(vec4<bool>(var_0, var_0, false, false), 28038u), Struct_4(global0[_wgslsmith_index_u32(u_input.a.x, 2u)], global0[_wgslsmith_index_u32(u_input.a.x, 2u)], 0i), Struct_3(global0[_wgslsmith_index_u32(u_input.a.x, 2u)], global0[_wgslsmith_index_u32(u_input.a.x, 2u)], global0[_wgslsmith_index_u32(u_input.a.x, 2u)], Struct_2(vec4<bool>(global1.x, var_0, true, global1.x), 0u), Struct_2(vec4<bool>(var_0, global1.x, var_0, var_0), u_input.a.x))).d, Struct_4(global0[_wgslsmith_index_u32(u_input.a.x, 2u)], Struct_1(false, 579f, -655f, -1011f), u_input.b), Struct_3(Struct_1(false, -337f, -942f, -1381f), global0[_wgslsmith_index_u32(u_input.a.x, 2u)], global0[_wgslsmith_index_u32(6689u, 2u)], Struct_2(vec4<bool>(false, true, false, true), 0u), Struct_2(vec4<bool>(false, false, true, false), 0u))))).a, u_input.b);
    var var_2 = ~(~(~4294967295u));
    global2 = array<vec3<u32>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~max(~4323u, _wgslsmith_mult_u32(u_input.a.x, 4294967295u)), _wgslsmith_mod_u32(~u_input.a.x << (select(37055u, u_input.a.x, false) % 32u), select(u_input.a.x, 1u >> (u_input.a.x % 32u), var_0))), -2147483647i);
}

