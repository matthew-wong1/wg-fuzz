struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct Struct_5 {
    a: vec4<f32>,
    b: f32,
    c: vec2<f32>,
    d: vec4<u32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<u32>) -> vec4<u32> {
    let var_0 = false;
    let var_1 = arg_0.x;
    var var_2 = any(!select(vec4<bool>(true, false | var_0, all(vec4<bool>(true, var_0, true, var_0)), true), select(vec4<bool>(false, var_0, var_0, var_0), !vec4<bool>(var_0, var_0, var_0, false), !vec4<bool>(false, var_0, true, var_0)), select(vec4<bool>(var_0, false, var_0, var_0), !vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(var_0, true, var_0, true))));
    var var_3 = Struct_4(-1053f, Struct_3(_wgslsmith_div_vec4_u32(firstLeadingBit(arg_0), arg_0)));
    return vec4<u32>(_wgslsmith_dot_vec4_u32(arg_0, ~firstTrailingBit(~vec4<u32>(var_3.b.a.x, u_input.a.x, var_1, 4294967295u))), _wgslsmith_mod_u32(u_input.a.x, max(79794u, ~11624u)) << (_wgslsmith_sub_u32(countOneBits(4294967295u), firstTrailingBit(0u)) % 32u), 4294967295u, _wgslsmith_sub_u32(23569u, _wgslsmith_dot_vec4_u32(countOneBits(select(vec4<u32>(u_input.a.x, 4294967295u, arg_0.x, 6432u), arg_0, true)), var_3.b.a)));
}

fn func_2() -> vec4<i32> {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(630f, -2069f), 1182f)))), Struct_3(vec4<u32>(u_input.a.x, min(0u, 74621u), ~0u, u_input.a.x)));
    let var_1 = Struct_3(min(_wgslsmith_sub_vec4_u32(func_3(var_0.b.a), vec4<u32>(u_input.a.x, 3504u, 1u, var_0.b.a.x) ^ vec4<u32>(10601u, 22171u, 0u, 0u)) >> (_wgslsmith_clamp_vec4_u32(abs(var_0.b.a), ~vec4<u32>(u_input.a.x, 1u, 0u, 4294967295u), var_0.b.a) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_clamp_u32(firstTrailingBit(var_0.b.a.x), u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, 39379u)), 4294967295u, 1u, _wgslsmith_mult_u32(u_input.a.x, 4294967295u))));
    let var_2 = select(vec3<bool>(true, false, all(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), true))), vec3<bool>(!(_wgslsmith_f_op_f32(727f + -1652f) <= _wgslsmith_f_op_f32(sign(var_0.a))), false, any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), 1u <= var_0.b.a.x))), select(vec3<bool>(true, true, false), vec3<bool>(_wgslsmith_f_op_f32(var_0.a - 295f) >= _wgslsmith_f_op_f32(var_0.a - -1007f), false, 1i <= -u_input.b.x), any(vec2<bool>(true, true))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * var_0.a)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(777f - 1324f) + _wgslsmith_f_op_f32(var_0.a - var_0.a)), select(true, true, true))))));
    var var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(498f, -1393f), vec2<f32>(var_3.a, var_0.a))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a, -804f))))))), u_input.b.x, select(u_input.a.x, ~101594u, u_input.b.x == 14441i));
    return vec4<i32>(-1i, 0i, _wgslsmith_clamp_i32(min(53046i, ~(~u_input.b.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(~(-1178i), -2147483647i), abs(u_input.b.yx) >> (var_1.a.xx % vec2<u32>(32u))), u_input.c), 2147483647i);
}

fn func_1(arg_0: Struct_2) -> vec4<f32> {
    let var_0 = ~arg_0.c;
    let var_1 = arg_0.a.x;
    let var_2 = var_1;
    let var_3 = true;
    var var_4 = u_input.c & _wgslsmith_dot_vec4_i32(~func_2(), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, arg_0.b, 29845i, -1i), countOneBits(vec4<i32>(arg_0.b, arg_0.b, -22318i, 24971i))) & _wgslsmith_clamp_vec4_i32(u_input.b, -u_input.b, vec4<i32>(u_input.c, u_input.c, -1i, -1i) >> (vec4<u32>(79563u, 20867u, 1u, arg_0.c) % vec4<u32>(32u))));
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, var_2, var_1)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_1, 1673f), -499f, _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_div_f32(-360f, var_2)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-149f, 596f, var_1, -732f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(150f, -461f, _wgslsmith_f_op_f32(floor(422f)), var_2) + vec4<f32>(var_1, 377f, 1497f, _wgslsmith_div_f32(-1099f, arg_0.a.x)))), !(!vec4<bool>(true, var_3, false, true && var_3))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(!(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), vec3<bool>(true, true, true), vec3<bool>(true, true, all(vec2<bool>(false, true)))), !vec3<bool>(true, _wgslsmith_sub_i32(u_input.b.x, u_input.b.x) < firstLeadingBit(5378i), !any(vec2<bool>(false, true))), any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))));
    let var_1 = _wgslsmith_f_op_vec4_f32(func_1(Struct_2(vec2<f32>(-753f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1295f)))), _wgslsmith_sub_i32((i32(-1i) * -1i) << ((u_input.a.x >> (u_input.a.x % 32u)) % 32u), ~(-2147483647i)), u_input.a.x)));
    let var_2 = Struct_3(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 24936u), vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 25694u, 0u, 28922u), vec4<u32>(u_input.a.x, 32769u, u_input.a.x, 3593u)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u) & vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), vec4<u32>(1u, 0u, 8933u, 0u) | vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))) << ((vec4<u32>(u_input.a.x, max(1u, 26336u), 0u, ~7936u) >> (_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(14380u, 4294967295u, 23765u, 26052u)), vec4<u32>(u_input.a.x, 25738u, u_input.a.x, 0u), vec4<u32>(0u, 4294967295u, u_input.a.x, u_input.a.x) & vec4<u32>(0u, u_input.a.x, 55441u, 67859u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_vec4_f32(func_1(Struct_2(vec2<f32>(var_1.x, -1177f), u_input.c, 67405u))).x, any(select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, true, true), var_0.x)))))));
    var var_4 = 59968i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x << (_wgslsmith_mod_u32(~1u, firstTrailingBit(_wgslsmith_dot_vec2_u32(var_2.a.xx, var_2.a.xw))) % 32u), 17916u, var_1, u_input.b.zyw);
}

