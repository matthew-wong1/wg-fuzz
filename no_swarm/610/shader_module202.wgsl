struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec2<bool>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<i32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32) -> vec3<i32> {
    global1 = vec3<i32>(countOneBits(global1.x), global1.x, ~_wgslsmith_sub_i32(global1.x, i32(-1i) * -2147483647i));
    global0 = u_input.b.x;
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2062f, -945f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1858f, 552f))))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(461f * -264f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -704f), -1175f, false)), -1872f)))));
    let var_1 = Struct_1(abs(min(-vec3<i32>(-929i, 6277i, u_input.a), vec3<i32>(-2147483647i, u_input.a, u_input.a))) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(abs(6648i), u_input.a, 2147483647i), abs(-vec3<i32>(global1.x, u_input.a, global1.x))));
    var_0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-626f * var_0.x)), 1000f)));
    return vec3<i32>(~global1.x, select(-1i, -min(1i, max(-13295i, 2147483647i)), any(vec2<bool>(u_input.b.x != 0u, true))), i32(-1i) * -2147483647i);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(select(-1i, u_input.a, true), countOneBits(-2147483647i)), u_input.a, -_wgslsmith_add_i32(global1.x, u_input.a)), -42171i), reverseBits(global1.x ^ -58101i), vec2<bool>(false, true), all(select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true))) && true, Struct_1(reverseBits(max(_wgslsmith_mod_vec3_i32(vec3<i32>(global1.x, u_input.a, -2147483647i), vec3<i32>(-1i, u_input.a, global1.x)), -vec3<i32>(u_input.a, -60943i, -33507i)))));
    global0 = u_input.b.x;
    var_0 = Struct_2(i32(-1i) * -2147483647i, _wgslsmith_sub_i32(-_wgslsmith_add_i32(var_0.a, global1.x), u_input.a), select(!vec2<bool>(false, var_0.d), var_0.c, vec2<bool>(!(!var_0.c.x), false)), any(var_0.c), Struct_1(-var_0.e.a));
    var var_1 = func_3(u_input.b.x) & _wgslsmith_sub_vec3_i32(var_0.e.a, max(var_0.e.a, vec3<i32>(54198i, _wgslsmith_add_i32(u_input.a, global1.x), _wgslsmith_mod_i32(-5223i, var_0.a))));
    let var_2 = vec2<bool>(!all(!select(vec3<bool>(false, var_0.d, true), vec3<bool>(false, true, false), vec3<bool>(false, false, var_0.c.x))), all(!vec3<bool>(true, false && var_0.c.x, true)));
    return Struct_2(u_input.a, 31959i, select(vec2<bool>(true, true), vec2<bool>(var_0.c.x, true), false), !var_2.x, Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(-16438i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), var_0.e.a.yy), var_0.b), _wgslsmith_mod_vec3_i32(var_0.e.a | var_0.e.a, vec3<i32>(0i, 29476i, u_input.a)))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: vec4<i32>) -> vec3<i32> {
    let var_0 = func_2();
    let var_1 = _wgslsmith_div_vec3_u32(countOneBits(~u_input.b.xwy), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.x ^ u_input.b.x, u_input.b.x, arg_0.x), select(select(u_input.b.xxx, u_input.b.xzw, !vec3<bool>(var_0.d, false, true)), ~abs(vec3<u32>(32452u, 40346u, u_input.b.x)), true)));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-282f * 857f), 977f, _wgslsmith_f_op_f32(1018f * 311f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-545f, 186f, -916f), vec3<f32>(821f, -762f, -371f))))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-364f, 1000f, -278f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2034f, -537f, -1217f)))))));
    var var_3 = vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, 0i), vec2<i32>(arg_2.c.b, 2147483647i)) << (arg_0.x % 32u), -var_0.e.a.x) & ~_wgslsmith_add_i32(arg_2.c.e.a.x, 1i), -62665i, var_0.b);
    let var_4 = !(all(vec3<bool>(!arg_2.a.c.x, -39643i >= var_3.x, true)) | !all(select(vec3<bool>(var_0.d, var_0.d, true), vec3<bool>(false, arg_2.c.c.x, false), vec3<bool>(var_0.c.x, false, true))));
    return ~(vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(var_0.e.a, vec3<i32>(arg_3.x, 1i, arg_3.x), vec3<i32>(0i, 59540i, 1i))) >> (~(var_1 | u_input.b.xzz) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-604f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(188f)), _wgslsmith_div_f32(875f, -785f)))), ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(global1.yy, vec2<i32>(-1i, global1.x) ^ global1.yz), ~(~u_input.a), _wgslsmith_mult_i32(2489i & u_input.a, _wgslsmith_mult_i32(-36202i, u_input.a))), vec4<i32>(1i, abs(1i), _wgslsmith_dot_vec3_i32(func_1(min(u_input.b.yw, vec2<u32>(1u, u_input.b.x)), -vec4<i32>(u_input.a, 2814i, 38801i, global1.x), Struct_3(Struct_2(1i, u_input.a, vec2<bool>(false, false), true, Struct_1(vec3<i32>(-24209i, global1.x, u_input.a))), Struct_1(vec3<i32>(u_input.a, -60228i, 57676i)), Struct_2(-11595i, 1i, vec2<bool>(false, false), true, Struct_1(vec3<i32>(u_input.a, 56494i, 26864i)))), -vec4<i32>(20268i, global1.x, -16574i, global1.x)), vec3<i32>(-21689i, 0i, _wgslsmith_mod_i32(global1.x, 17415i))), u_input.a), global1.x, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-980f)) * _wgslsmith_f_op_f32(max(-845f, -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-358f)) + _wgslsmith_f_op_f32(round(-592f))) - -1745f)));
}

