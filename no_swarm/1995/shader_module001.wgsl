struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> u32 {
    var var_0 = 0u;
    var_0 = arg_1.a.x;
    let var_1 = select(vec3<bool>(any(select(vec2<bool>(true, arg_1.b), vec2<bool>(arg_1.b, arg_1.b), arg_1.b)) || true, (arg_1.b && (true || arg_1.b)) || !any(vec4<bool>(false, false, true, false)), arg_1.b), vec3<bool>(arg_0 <= _wgslsmith_f_op_f32(1990f + -1059f), all(vec3<bool>(arg_1.b, arg_1.b, false)) | arg_1.b, any(vec4<bool>(any(vec2<bool>(arg_1.b, arg_1.b)), !arg_1.b, arg_1.b, true))), select(select(!select(vec3<bool>(arg_1.b, false, arg_1.b), vec3<bool>(arg_1.b, true, arg_1.b), vec3<bool>(arg_1.b, arg_1.b, true)), select(!vec3<bool>(arg_1.b, arg_1.b, arg_1.b), !vec3<bool>(arg_1.b, arg_1.b, arg_1.b), select(vec3<bool>(false, arg_1.b, arg_1.b), vec3<bool>(arg_1.b, true, true), vec3<bool>(true, true, false))), select(vec3<bool>(false, arg_1.b, arg_1.b), !vec3<bool>(true, false, arg_1.b), select(arg_1.b, true, true))), vec3<bool>(false, arg_1.b, any(select(vec2<bool>(arg_1.b, arg_1.b), vec2<bool>(arg_1.b, false), vec2<bool>(true, arg_1.b)))), vec3<bool>(true, (arg_1.b | false) | all(vec2<bool>(arg_1.b, false)), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -46331i, u_input.d), vec3<i32>(1i, -23862i, u_input.a)) >= _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, 5128i, 42022i, u_input.d), vec4<i32>(u_input.d, u_input.d, u_input.a, u_input.a)))));
    var var_2 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 - arg_0), _wgslsmith_f_op_f32(arg_0 - arg_0))))));
    let var_3 = true;
    return arg_1.a.x;
}

fn func_2() -> bool {
    let var_0 = Struct_3(Struct_1((vec4<u32>(u_input.b.x, 1u, 1u, u_input.c) | (vec4<u32>(u_input.c, 86254u, 4294967295u, 76317u) | vec4<u32>(u_input.b.x, 115924u, u_input.b.x, 38478u))) >> (abs(_wgslsmith_div_vec4_u32(vec4<u32>(28520u, 1u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.c, u_input.c, 4294967295u, 19756u))) % vec4<u32>(32u)), true), Struct_2(Struct_1(~(~vec4<u32>(u_input.c, 0u, 33987u, 0u)), true), Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.c), vec4<u32>(u_input.b.x, u_input.c, u_input.b.x, u_input.c)) >> (~vec4<u32>(u_input.c, u_input.b.x, u_input.c, 37128u) % vec4<u32>(32u)), all(vec4<bool>(false, false, true, true)) | true), Struct_1(vec4<u32>(24183u, u_input.b.x, func_3(-418f, Struct_1(vec4<u32>(0u, u_input.c, u_input.c, u_input.c), true)), ~72640u), true), u_input.a), _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(step(517f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -200f) * _wgslsmith_f_op_f32(-1000f - -2473f)))))));
    var var_1 = abs(_wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec2_u32(max(select(var_0.a.a.yw, vec2<u32>(84290u, u_input.c), var_0.b.b.b), ~u_input.b), select(~vec2<u32>(52562u, 4294967295u), vec2<u32>(var_0.b.a.a.x, 0u), vec2<bool>(false, var_0.b.b.b)))));
    var var_2 = _wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.c))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) + var_0.c) > var_0.c;
    let var_4 = 4294967295u;
    return true;
}

fn func_1() -> vec4<f32> {
    let var_0 = vec3<bool>(any(!select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true))), all(vec3<bool>(true, all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false))), !any(vec3<bool>(false, false, false)))), all(vec2<bool>(true, func_2())));
    let var_1 = var_0.x;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1814f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(340f, _wgslsmith_f_op_f32(f32(-1f) * -1808f)))) * 407f));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-570f - _wgslsmith_div_f32(-700f, var_2.x)) - var_2.x), -400f)) + -1492f);
    var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(f32(-1f) * -778f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * var_2.x) * var_2.x)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(599f, var_2.x) * vec2<f32>(1726f, 468f)) - vec2<f32>(var_2.x, var_2.x))) + vec2<f32>(-2710f, _wgslsmith_f_op_f32(-var_2.x))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), 860f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-113f, 221f, true)) + _wgslsmith_f_op_f32(ceil(var_2.x))), var_2.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-278f, var_2.x, -918f, -696f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-432f, -821f, -965f, 814f))))))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(851f * 125f), _wgslsmith_div_f32(-165f, 386f), -325f, _wgslsmith_f_op_f32(f32(-1f) * -1231f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1085f, -1429f, -262f, 1982f))), _wgslsmith_f_op_vec4_f32(func_1())), vec4<bool>(true, true, true, func_2()))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-339f, 1677f, -2311f, -258f) + vec4<f32>(-1090f, 243f, 355f, -1000f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(746f, 218f, 205f, 452f), vec4<f32>(-210f, -885f, 812f, -699f), false))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(641f, 460f, -900f, 161f)))))))));
    let var_1 = ~vec3<i32>(-min(u_input.a, -29024i), ~2147483647i, abs(~0i)) & (vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(-vec3<i32>(u_input.a, 2147483647i, u_input.d), vec3<i32>(u_input.a, -34166i, -7706i)));
    let var_2 = Struct_2(Struct_1(vec4<u32>(_wgslsmith_div_u32(11389u, _wgslsmith_add_u32(u_input.c, 0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 1u), vec2<u32>(u_input.b.x, 70701u) & u_input.b), u_input.b.x & countOneBits(u_input.c), ~_wgslsmith_clamp_u32(1u, 0u, u_input.b.x)), true), Struct_1(vec4<u32>(83042u, ~(1u >> (u_input.b.x % 32u)), 8159u, func_3(_wgslsmith_f_op_f32(step(-145f, var_0.x)), Struct_1(vec4<u32>(0u, 1u, u_input.c, 4797u), false))), !(true | func_2())), Struct_1(vec4<u32>(~(~17468u), 29304u, u_input.b.x << (select(u_input.c, 83174u, true) % 32u), u_input.c), any(select(vec2<bool>(true, false), vec2<bool>(false, false), true)) | (all(vec4<bool>(false, true, false, true)) && true)), ~u_input.a);
    var var_3 = Struct_4(var_0.wz);
    var_3 = Struct_4(var_3.a);
    var var_4 = reverseBits(_wgslsmith_div_vec3_i32(min(vec3<i32>(u_input.a, var_1.x >> (var_2.b.a.x % 32u), u_input.a | -24426i), ~var_1), -select(var_1, var_1, all(vec4<bool>(true, false, false, var_2.c.b)))));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_vec4_f32(func_1()).x, _wgslsmith_f_op_f32(ceil(var_3.a.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_0.x)))), -754f));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-638f - var_0.x), _wgslsmith_f_op_f32(abs(var_0.x)))), var_3.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_3.a.x, _wgslsmith_f_op_f32(select(-446f, var_3.a.x, var_2.b.b)))) - _wgslsmith_f_op_f32(sign(585f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1460f - 817f)) + -541f))), -1334f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_3.a.x, var_0.x), var_0.yxw)) - var_0.yxy))), _wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(1u), var_2.b.a.x, ~(1912u << (u_input.c % 32u)), var_2.c.a.x), var_2.a.a), vec4<u32>(abs(1u), countOneBits(1u), 1u, max(_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_mult_u32(0u, 11893u)), ~u_input.b.x)), vec4<i32>(_wgslsmith_mult_i32(8436i, ~min(u_input.d, var_4.x)), 44885i, -abs(-var_2.d), var_2.d), 56757u);
}

