struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 27> = array<vec4<bool>, 27>(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false));

var<private> global1: i32 = 4572i;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec2<f32> {
    var var_0 = vec2<bool>(true, true);
    var var_1 = vec2<bool>(!var_0.x, ((arg_1.a.x & _wgslsmith_sub_i32(arg_1.a.x, arg_1.a.x)) > _wgslsmith_dot_vec2_i32(~vec2<i32>(-24150i, -26350i), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_0, arg_1.a.x), arg_1.a.yx))) && var_0.x);
    let var_2 = Struct_1(arg_1.a, arg_1.b, select(~vec4<u32>(u_input.d, 0u, 4294967295u, 34326u), ~reverseBits(vec4<u32>(u_input.b.x, 24978u, arg_1.c.x, u_input.b.x)), 714f >= _wgslsmith_f_op_f32(floor(546f))) & firstTrailingBit(~arg_1.c));
    global1 = ~abs(~(~arg_1.a.x));
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -2390f), false)), var_2.b.x))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_2.b, var_2.b, vec2<bool>(true, true))))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.b.x, arg_1.b.x), vec2<f32>(_wgslsmith_f_op_f32(sign(arg_1.b.x)), -819f), true))));
}

fn func_2() -> Struct_1 {
    global0 = array<vec4<bool>, 27>();
    global1 = -u_input.c.x;
    return Struct_1((reverseBits(vec4<i32>(u_input.a.x, -2147483647i, u_input.c.x, 2147483647i) ^ vec4<i32>(50028i, -1i, u_input.c.x, u_input.c.x)) & _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, 61475i, 1i, 31497i), vec4<i32>(26612i, u_input.c.x, -1i, u_input.c.x)), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.a.x) >> (vec4<u32>(u_input.d, u_input.d, 80432u, 143511u) % vec4<u32>(32u)))) | -reverseBits(vec4<i32>(11268i, u_input.c.x, -2147483647i, -8666i) | vec4<i32>(1i, -2147483647i, 0i, -8817i)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1234f, -1312f))), vec2<f32>(-1104f, 1007f)), _wgslsmith_f_op_vec2_f32(func_3(-9927i, Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, u_input.c.x, 1i), vec2<f32>(-666f, 707f), vec4<u32>(u_input.d, 76730u, 1u, 25746u)))), vec2<bool>(true, true))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -2145f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_mult_vec4_u32(vec4<u32>(~(25213u & u_input.b.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(59081u, u_input.d), ~u_input.b), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 97039u, 4294967295u, 44914u), abs(vec4<u32>(11429u, 4294967295u, u_input.b.x, u_input.b.x))), u_input.d), _wgslsmith_sub_vec4_u32(vec4<u32>(13008u, 13112u, u_input.d, 1u) << (vec4<u32>(u_input.d, u_input.d, 0u, u_input.d) % vec4<u32>(32u)), vec4<u32>(~4294967295u, u_input.b.x, ~0u, countOneBits(0u)))));
}

fn func_1(arg_0: u32) -> i32 {
    let var_0 = true;
    var var_1 = countOneBits(-_wgslsmith_clamp_vec2_i32(vec2<i32>(~19742i, reverseBits(2147483647i)), vec2<i32>(-39612i, i32(-1i) * -2147483647i), abs(u_input.a)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1327f, -279f), -168f, -1000f, _wgslsmith_f_op_f32(select(-2112f, 1000f, false))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(floor(var_2.xyx));
    var var_4 = func_2();
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.b.x);
    global1 = _wgslsmith_sub_i32(u_input.a.x >> ((23139u << ((u_input.b.x ^ (u_input.d << (u_input.b.x % 32u))) % 32u)) % 32u), 1i);
    global0 = array<vec4<bool>, 27>();
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(func_2().b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1029f + 601f)))))));
    let var_3 = Struct_1(vec4<i32>(14448i, _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(var_0, var_0)), ~vec2<i32>(-30271i, 2147483647i) & ~u_input.a), 429i, _wgslsmith_dot_vec2_i32(-firstTrailingBit(u_input.c), -u_input.c)), _wgslsmith_f_op_vec2_f32(func_3(6316i, func_2())), firstLeadingBit(vec4<u32>(u_input.d, countOneBits(u_input.b.x), select(u_input.b.x, u_input.d, true), select(u_input.b.x, u_input.b.x, true)) & ~(~vec4<u32>(1u, 64333u, u_input.d, u_input.b.x))));
    let var_4 = all(vec2<bool>(all(vec3<bool>(all(global0[_wgslsmith_index_u32(11460u, 27u)]), true, select(true, false, true))), true));
    var var_5 = _wgslsmith_sub_vec3_u32(vec3<u32>(~(~var_3.c.x) | ~(u_input.b.x | var_3.c.x), 69088u, ~_wgslsmith_mod_u32(var_3.c.x, 54889u)), select(min(vec3<u32>(99260u, var_3.c.x, var_3.c.x), max(var_3.c.zwx, vec3<u32>(63505u, u_input.d, 52684u))), reverseBits(~var_3.c.yyz), select(vec3<bool>(var_4, true, var_4), !vec3<bool>(false, var_4, false), var_4 || var_4)) | var_3.c.zxx);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~abs(min(var_0, u_input.c.x)), _wgslsmith_mod_i32(var_0, -1i), u_input.c.x | -1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_3.b, vec2<f32>(477f, var_3.b.x))))), ~vec2<u32>(var_5.x, _wgslsmith_mod_u32(_wgslsmith_sub_u32(0u, u_input.d), u_input.d)), func_1(_wgslsmith_mult_u32(~var_3.c.x, var_5.x)) & (-firstTrailingBit(26371i) << (var_5.x % 32u)));
}

