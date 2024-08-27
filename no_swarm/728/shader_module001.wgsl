struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: vec2<bool>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec2<u32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(29899u, vec2<u32>(15225u, 0u), 713f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: i32, arg_3: vec3<i32>) -> bool {
    global0 = Struct_1(global0.b.x, ~global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -633f) + _wgslsmith_f_op_f32(-arg_1.x))))));
    global0 = Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(reverseBits(u_input.b), _wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(arg_0.a, u_input.d.x, arg_0.b.x) >> (u_input.b % vec3<u32>(32u)))), u_input.b), ~vec2<u32>(23067u, countOneBits(~19349u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.c * -1230f))) + arg_0.c) * -426f));
    var var_0 = Struct_3(_wgslsmith_sub_i32(1i, ~firstLeadingBit(-1i)), Struct_2(global0.c, arg_1.x, Struct_1(_wgslsmith_mod_u32(1u, 26613u) >> (min(arg_0.b.x, 23853u) % 32u), ~global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + global0.c) * 803f)), !select(vec2<bool>(false, false), vec2<bool>(false, true), false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.c, arg_0.c, 248f, global0.c))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(619f, 135f, global0.c, 1000f), vec4<f32>(652f, 781f, global0.c, arg_1.x)))))), 33476u, Struct_2(-605f, _wgslsmith_f_op_f32(-1640f - 543f), Struct_1(_wgslsmith_mult_u32(1u, 44195u << (0u % 32u)), min(~arg_0.b, abs(vec2<u32>(0u, 130205u))), _wgslsmith_f_op_f32(min(arg_0.c, _wgslsmith_f_op_f32(floor(1234f))))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec4<f32>(arg_0.c, global0.c, arg_0.c, 154f)));
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.x, -1i, u_input.e.x, -select(1i, -54539i, true)), ~((abs(vec4<i32>(arg_2, 1i, var_0.a, 49763i)) | vec4<i32>(u_input.c.x, 2147483647i, 2147483647i, var_0.a)) & (vec4<i32>(arg_3.x, var_0.a, var_0.a, arg_3.x) & ~vec4<i32>(u_input.e.x, var_0.a, var_0.a, u_input.e.x))));
    var var_2 = (abs(~(-arg_3)) | (vec3<i32>(32978i, 22655i, ~(-5688i)) ^ -firstTrailingBit(arg_3))) ^ vec3<i32>(_wgslsmith_div_i32(1i, select(~arg_3.x, arg_3.x, var_0.b.d.x && false)), _wgslsmith_mult_i32(-min(-46197i, arg_2), ~(~u_input.e.x)), ~1i);
    return !var_0.d.d.x;
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_5) -> bool {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1f, arg_2.a.x)), arg_2.a.x);
    let var_1 = vec3<i32>(u_input.c.x, 1i, arg_0);
    var var_2 = global0.b.x;
    var_2 = u_input.b.x;
    var_2 = ~0u;
    return func_3(Struct_1(_wgslsmith_mult_u32(4294967295u, ~(44029u >> (u_input.b.x % 32u))), countOneBits(arg_2.b.xz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.x + 1401f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -187f)))), arg_2.a.zz, 1i, _wgslsmith_mult_vec3_i32(vec3<i32>(-68590i, _wgslsmith_dot_vec3_i32(u_input.c, arg_2.c), ~(-2147483647i >> (arg_2.b.x % 32u))), select(vec3<i32>(_wgslsmith_mod_i32(var_1.x, u_input.e.x), 1i, _wgslsmith_add_i32(-1i, 48610i)), max(-var_1, _wgslsmith_mod_vec3_i32(u_input.c, vec3<i32>(u_input.e.x, 2147483647i, arg_2.c.x))), all(!vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x)))));
}

fn func_1() -> Struct_1 {
    var var_0 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-829f + global0.c)) < -1968f);
    var var_1 = true;
    var_0 = !all(!select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(false, true, false, false), true));
    let var_2 = select(vec2<bool>(any(vec3<bool>(true, true, true)), select(select(true, true, false), global0.a <= 0u, true) | func_2(reverseBits(u_input.c.x), vec2<bool>(true, true), Struct_5(vec3<f32>(global0.c, -743f, -2604f), vec4<u32>(32193u, 4294967295u, 80642u, 43694u), vec3<i32>(u_input.e.x, 0i, u_input.e.x)))), vec2<bool>(true, true), select(!select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), false), any(vec3<bool>(true, any(vec3<bool>(true, true, true)), true))));
    return Struct_1(63694u, ~abs(~(~u_input.b.yz)), _wgslsmith_f_op_f32(-705f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.c)) + 821f), global0.c, true))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: i32) -> Struct_1 {
    global0 = arg_0;
    var var_0 = select(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), all(vec3<bool>(true, true, true)))), select(select(vec4<bool>(func_2(u_input.e.x, vec2<bool>(false, true), Struct_5(vec3<f32>(-828f, 977f, 1194f), vec4<u32>(arg_1.x, arg_1.x, 65092u, 6311u), vec3<i32>(29314i, arg_2, arg_2))), true, true, u_input.c.x > -23076i), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), false)), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, select(false, false, true), false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true))), !vec4<bool>(func_2(2147483647i, vec2<bool>(false, true), Struct_5(vec3<f32>(-455f, 232f, 363f), vec4<u32>(u_input.a, 25664u, global0.b.x, 4294967295u), vec3<i32>(-6217i, -1i, u_input.e.x))), true, true, true)), select(vec4<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), any(vec3<bool>(true, true, true)), any(vec2<bool>(true, true)), true), select(vec4<bool>(true, all(vec2<bool>(false, false)), arg_1.x > global0.b.x, all(vec2<bool>(false, true))), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_3(Struct_1(arg_0.b.x, vec2<u32>(arg_1.x, 4294967295u), arg_0.c), vec2<f32>(-1175f, -593f), u_input.e.x, u_input.c))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), true)), select(true, arg_0.c >= arg_0.c, true))));
    var var_1 = u_input.d.x;
    var var_2 = u_input.c;
    var var_3 = (_wgslsmith_f_op_f32(global0.c + -233f) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1044f * arg_0.c)), _wgslsmith_f_op_f32(abs(-2129f)))) == (-1594f != _wgslsmith_f_op_f32(arg_0.c - _wgslsmith_f_op_f32(global0.c * global0.c)));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(func_1(), func_1().b << (select(vec2<u32>(14684u, 0u) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, u_input.a), global0.b), _wgslsmith_mod_vec2_u32(global0.b, vec2<u32>(4294967295u, 1419u)), _wgslsmith_div_f32(global0.c, global0.c) <= 1158f) % vec2<u32>(32u)), firstLeadingBit(firstLeadingBit(-2147483647i)));
    let var_0 = (1i ^ ~firstTrailingBit(-1i >> (global0.a % 32u))) ^ 45989i;
    var var_1 = ~select(global0.a, _wgslsmith_clamp_u32(firstTrailingBit(~global0.a), abs(_wgslsmith_sub_u32(global0.b.x, 0u)), global0.a), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_2 = _wgslsmith_f_op_f32(select(global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1160f))), global0.c, true))), !(_wgslsmith_mod_u32(~u_input.d.x, u_input.a) >= global0.a)));
    let var_3 = !select(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true != any(vec2<bool>(true, true)), u_input.b.x == u_input.a, true), all(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), false)));
    var var_4 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(vec4<i32>(26565i, u_input.c.x, firstLeadingBit(u_input.e.x), 1i) >> ((_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 64374u, u_input.a, 79972u), vec4<u32>(global0.b.x, global0.a, global0.a, global0.b.x)) >> (select(vec4<u32>(790u, 35869u, 48799u, 1u), vec4<u32>(0u, u_input.a, 49087u, u_input.b.x), var_3.x) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(~(vec4<i32>(u_input.c.x, 4678i, 6890i, u_input.c.x) ^ vec4<i32>(-2147483647i, var_0, -1i, u_input.e.x)), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0, 0i, var_0, 58772i), vec4<i32>(u_input.c.x, -3795i, 7682i, -45371i), vec4<i32>(var_0, 66529i, u_input.e.x, var_0)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.e.x, u_input.c.x, var_0, u_input.c.x), vec4<i32>(27737i, 1i, 2147483647i, 0i))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-global0.c), global0.c, global0.c, -774f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.c, -234f, global0.c, global0.c))))) + vec4<f32>(-139f, _wgslsmith_f_op_f32(f32(-1f) * -2436f), _wgslsmith_f_op_f32(886f - -701f), _wgslsmith_f_op_f32(f32(-1f) * -1547f))), vec4<bool>(var_3.x, any(!var_3.zy), true, func_3(func_1(), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.c, -1148f))), abs(0i), vec3<i32>(var_0, 2147483647i, u_input.c.x))))));
}

