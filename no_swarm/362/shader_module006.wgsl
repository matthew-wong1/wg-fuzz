struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec4<i32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 4> = array<Struct_5, 4>(Struct_5(vec4<bool>(true, true, false, false), vec2<u32>(1u, 4294967295u), 4294967295u, true), Struct_5(vec4<bool>(false, false, false, false), vec2<u32>(7893u, 73977u), 1u, true), Struct_5(vec4<bool>(true, false, false, false), vec2<u32>(68363u, 4294967295u), 0u, false), Struct_5(vec4<bool>(true, false, false, true), vec2<u32>(1u, 30058u), 73587u, true));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec2<bool>) -> f32 {
    let var_0 = u_input.a.xx;
    global0 = array<Struct_5, 4>();
    var var_1 = arg_0;
    let var_2 = _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-1914i, var_0.x), -firstTrailingBit(-26401i), var_0.x);
    let var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0))) + arg_0), -679f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0 + arg_0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, 1000f) - vec3<f32>(2532f, arg_0, arg_0)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0), vec3<f32>(245f, arg_0, -622f))))));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(312f, arg_0, false))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1103f)))))));
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: bool, arg_3: vec2<f32>) -> u32 {
    global0 = array<Struct_5, 4>();
    var var_0 = Struct_2(~vec4<i32>(-7103i, reverseBits(2147483647i), u_input.a.x, 1i), vec3<bool>(arg_2, any(select(!vec3<bool>(true, arg_2, true), select(vec3<bool>(true, arg_2, arg_2), vec3<bool>(false, false, true), vec3<bool>(arg_2, true, arg_2)), !vec3<bool>(false, false, arg_2))), true));
    let var_1 = Struct_2(~vec4<i32>(u_input.a.x << (4294967295u % 32u), _wgslsmith_sub_i32(var_0.a.x, var_0.a.x), var_0.a.x, _wgslsmith_mult_i32(u_input.a.x, var_0.a.x)) >> (_wgslsmith_div_vec4_u32(~(~vec4<u32>(1u, 21999u, 1u, arg_0.x)), ~(~vec4<u32>(arg_0.x, 69668u, arg_0.x, arg_0.x))) % vec4<u32>(32u)), select(select(select(var_0.b, vec3<bool>(false, true, arg_2), var_0.b), var_0.b, true && select(true, var_0.b.x, true)), var_0.b, select(vec3<bool>(arg_2 || false, false, true), var_0.b, true)));
    let var_2 = Struct_4(var_1, ~arg_0.x, abs(abs(-_wgslsmith_div_vec4_i32(var_0.a, vec4<i32>(u_input.a.x, -27080i, 17872i, 2147483647i)))));
    let var_3 = global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec2_u32(firstTrailingBit(max(vec2<u32>(arg_0.x, 0u), arg_0)), vec2<u32>(var_2.b, 0u))), 4u)];
    return ~(~countOneBits(var_2.b));
}

fn func_2() -> i32 {
    var var_0 = vec2<bool>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(467f + -770f) * _wgslsmith_f_op_f32(f32(-1f) * -691f))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f * -1000f))) - -517f), any(vec3<bool>(select(any(vec2<bool>(true, true)), any(vec2<bool>(false, false)), true), !all(vec4<bool>(false, true, true, false)), true)));
    let var_1 = all(!vec3<bool>(false, var_0.x, false));
    global0 = array<Struct_5, 4>();
    var var_2 = Struct_1(true, ~func_4(~(~vec2<u32>(1u, 4294967295u)), 2271f, var_0.x, vec2<f32>(_wgslsmith_f_op_f32(func_3(-664f, vec3<bool>(true, var_0.x, var_0.x), Struct_2(vec4<i32>(u_input.a.x, -10935i, u_input.a.x, u_input.a.x), vec3<bool>(var_1, var_0.x, true)), vec2<bool>(true, true))), -758f)), -18139i, var_0.x, var_0.x);
    var var_3 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1669f, _wgslsmith_f_op_f32(exp2(1f)))), _wgslsmith_f_op_f32(667f * 1609f)), -1233f);
    return countOneBits(select(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(var_2.c, u_input.a.x, var_2.c, 2147483647i)) & _wgslsmith_mult_vec4_i32(vec4<i32>(var_2.c, -41013i, -28817i, var_2.c), vec4<i32>(26917i, -2147483647i, u_input.a.x, 20591i)), ~vec4<i32>(u_input.a.x, var_2.c, var_2.c, -24979i)), -7958i, false));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: i32) -> f32 {
    var var_0 = ~vec4<i32>(0i, _wgslsmith_mult_i32(u_input.a.x, max(arg_2, 18091i)), (u_input.a.x | 1i) << (arg_0.b % 32u), ~(~(-43149i))) | (-(vec4<i32>(arg_2, 2147483647i, 2147483647i, -1i) ^ max(vec4<i32>(34603i, arg_0.c, arg_0.c, 1i), vec4<i32>(2147483647i, 2064i, -13592i, arg_2))) & (reverseBits(vec4<i32>(arg_2, -7257i, -12163i, arg_0.c)) | max(vec4<i32>(-16010i, -2147483647i, arg_2, -2147483647i) ^ vec4<i32>(-15737i, -18985i, u_input.a.x, arg_0.c), vec4<i32>(0i, arg_2, u_input.a.x, 56521i))));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1770f) + _wgslsmith_f_op_f32(f32(-1f) * -1297f))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: u32, arg_3: Struct_4) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(func_5(Struct_1(!arg_3.a.b.x, firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_2, 26051u, 32467u), vec4<u32>(arg_2, 17123u, 4294967295u, arg_3.b)), arg_2)), func_2(), arg_0.x, arg_3.a.b.x), arg_3.b, -1i));
    let var_1 = arg_3;
    var var_2 = any(vec4<bool>(arg_0.x, !any(select(vec2<bool>(true, arg_0.x), var_1.a.b.xy, true)), all(arg_3.a.b.zx), arg_0.x));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-236f, 169f)));
    var_2 = !var_1.a.b.x;
    return _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(~(-16464i), firstTrailingBit(41625i), firstLeadingBit(arg_3.a.a.x) ^ _wgslsmith_div_i32(27806i, var_1.c.x), -1i), abs(arg_3.a.a) >> (vec4<u32>(arg_3.b >> (arg_2 % 32u), ~49631u, 30871u, ~arg_2) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(-6149i, -434i, -72498i, 14489i), -vec4<i32>(2147483647i, arg_1.x, u_input.a.x, var_1.a.a.x) & vec4<i32>(-22627i, var_1.c.x, arg_1.x, -3898i)), var_1.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 1i, u_input.a.x, 75452i) ^ vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -15391i), ~vec4<i32>(57497i, u_input.a.x, -23485i, 2147483647i)), vec4<i32>(u_input.a.x & u_input.a.x, -17319i, u_input.a.x, func_1(vec2<bool>(false, true), u_input.a.yz, 82998u, Struct_4(Struct_2(vec4<i32>(-1i, 1i, u_input.a.x, -9948i), vec3<bool>(false, false, true)), 0u, vec4<i32>(1i, -26089i, -25604i, 2147483647i))))) << (~firstTrailingBit(countOneBits(~9754u)) % 32u);
    var var_1 = Struct_4(Struct_2(abs(vec4<i32>(~u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 4470i, u_input.a.x, 33945i), vec4<i32>(19664i, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_add_i32(u_input.a.x, 0i), u_input.a.x)), vec3<bool>(true, true, true)), 15179u, abs(~vec4<i32>(countOneBits(-1i), u_input.a.x, func_1(vec2<bool>(true, false), vec2<i32>(4354i, u_input.a.x), 4294967295u, Struct_4(Struct_2(vec4<i32>(-33235i, u_input.a.x, u_input.a.x, u_input.a.x), vec3<bool>(false, false, true)), 1u, vec4<i32>(u_input.a.x, u_input.a.x, -16246i, u_input.a.x))), abs(u_input.a.x))));
    var var_2 = select(!(!var_1.a.b.xz), select(select(!select(var_1.a.b.zz, vec2<bool>(var_1.a.b.x, var_1.a.b.x), vec2<bool>(var_1.a.b.x, var_1.a.b.x)), vec2<bool>(true, var_1.a.a.x >= var_1.a.a.x), vec2<bool>(var_1.a.b.x && true, true)), var_1.a.b.zz, true), var_1.a.b.x);
    let var_3 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~max(select(var_1.b, 34255u, var_2.x), var_1.b), 17866u, var_1.b << (_wgslsmith_mult_u32(~var_1.b, var_1.b) % 32u)), 1u, vec3<u32>(~var_1.b, 29621u, _wgslsmith_div_u32(38920u, ~0u)), -19685i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-766f))), _wgslsmith_f_op_f32(floor(-584f)))));
}

