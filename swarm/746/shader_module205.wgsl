struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 18>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_2) -> vec3<u32> {
    global0 = array<vec2<u32>, 18>();
    var var_0 = ~(~firstTrailingBit(select(~vec4<i32>(u_input.b, u_input.c, u_input.a.x, 1i), select(vec4<i32>(u_input.b, u_input.c, -65995i, -1i), vec4<i32>(-1i, u_input.a.x, 2147483647i, -1i), vec4<bool>(false, true, arg_3.a.c, arg_3.a.c)), !arg_2)));
    var var_1 = ~(~abs(reverseBits(countOneBits(vec2<i32>(var_0.x, var_0.x)))));
    var_0 = vec4<i32>(1i, abs(u_input.c), _wgslsmith_dot_vec2_i32((vec2<i32>(var_1.x, 15385i) << (_wgslsmith_mod_vec2_u32(arg_3.a.e, vec2<u32>(4294967295u, arg_0.x)) % vec2<u32>(32u))) | u_input.a.yy, abs(abs(min(u_input.a.zy, var_0.yx)))), abs(var_1.x));
    let var_2 = _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(1i, u_input.b, -1i, var_1.x), vec4<i32>(-42295i, var_0.x, 12817i, var_1.x)) | (firstTrailingBit(vec4<i32>(-7044i, 49186i, u_input.c, var_0.x)) | -vec4<i32>(1i, u_input.c, var_0.x, var_0.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, u_input.b, 10122i, var_0.x << (arg_3.a.a % 32u)), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, u_input.b, u_input.b, var_1.x), vec4<i32>(-1i, u_input.c, -30673i, var_1.x))))), abs(~vec4<i32>(var_1.x, -1i, -var_1.x, u_input.b << (72062u % 32u))));
    return reverseBits((countOneBits(vec3<u32>(arg_0.x, 13614u, 0u) | vec3<u32>(0u, arg_3.a.b, arg_0.x)) << (min(reverseBits(vec3<u32>(4294967295u, arg_3.a.a, arg_0.x)), ~vec3<u32>(arg_3.a.a, arg_0.x, arg_0.x)) % vec3<u32>(32u))) >> (_wgslsmith_sub_vec3_u32(min(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.x, 24518u, arg_3.a.e.x), vec3<u32>(1u, arg_0.x, 4294967295u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, arg_0.x, arg_3.a.a), vec3<u32>(arg_0.x, 36891u, arg_3.a.b), vec3<u32>(arg_0.x, 62213u, 18559u))), vec3<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 1u), vec3<u32>(arg_0.x, arg_3.a.a, arg_0.x)), select(28485u, 1u, arg_3.a.c))) % vec3<u32>(32u)));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>) -> f32 {
    var var_0 = vec3<u32>(countOneBits(~0u), 62787u, _wgslsmith_clamp_u32(1u, arg_0.a.e.x >> (arg_0.a.b % 32u), ~arg_0.a.e.x << (_wgslsmith_mult_u32(0u, arg_0.a.b) % 32u))) ^ func_3(~(~firstLeadingBit(global0[_wgslsmith_index_u32(37651u, 18u)])), _wgslsmith_f_op_f32(-arg_0.a.d), vec4<bool>(true, !(!arg_0.a.c), !any(vec4<bool>(true, arg_1.x, false, true)), false), Struct_2(Struct_1(12121u, ~1u, true, 901f, global0[_wgslsmith_index_u32(0u, 18u)])));
    let var_1 = Struct_1((_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.x, arg_0.a.e.x), abs(arg_0.a.e)) ^ abs(~43581u)) & 9246u, arg_0.a.b | _wgslsmith_clamp_u32(55388u, _wgslsmith_sub_u32(var_0.x, arg_0.a.e.x), arg_0.a.e.x), true, arg_0.a.d, vec2<u32>(~(~abs(0u)), 0u));
    let var_2 = -164i;
    var_0 = vec3<u32>(arg_0.a.e.x, 49011u, var_1.a);
    global0 = array<vec2<u32>, 18>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-454f + var_1.d) + _wgslsmith_f_op_f32(trunc(-570f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(290f, arg_0.a.d)) - _wgslsmith_f_op_f32(exp2(var_1.d))))) + arg_0.a.d);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = arg_2;
    let var_1 = Struct_2(Struct_1(1u, 4294967295u, var_0.a.c, 344f, firstTrailingBit(global0[_wgslsmith_index_u32(var_0.a.a, 18u)])));
    global0 = array<vec2<u32>, 18>();
    let var_2 = !vec2<bool>(var_0.a.c, !(arg_1.x < max(-20441i, 2147483647i)));
    global0 = array<vec2<u32>, 18>();
    return Struct_2(Struct_1(var_0.a.b, var_1.a.a, true, _wgslsmith_f_op_f32(var_1.a.d + _wgslsmith_f_op_f32(484f * _wgslsmith_f_op_f32(-2016f - arg_0.x))), var_1.a.e));
}

fn func_1() -> bool {
    let var_0 = func_4(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-315f, -125f))))), -1005f, -1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(17204u, 39516u, false, -523f, vec2<u32>(1u, 0u))), vec3<bool>(true, false, true)))), _wgslsmith_f_op_f32(trunc(1f))))), u_input.a, Struct_2(Struct_1(64869u, 25229u, all(vec3<bool>(false, false, true)) | true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-851f, -280f, false))), global0[_wgslsmith_index_u32(4294967295u, 18u)] | (vec2<u32>(1u, 45495u) ^ global0[_wgslsmith_index_u32(5220u, 18u)]))));
    let var_1 = var_0;
    var var_2 = vec2<bool>(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.d, var_1.a.d, 672f, 304f)) * vec4<f32>(-1181f, var_0.a.d, var_0.a.d, -478f))), _wgslsmith_mod_vec3_i32(u_input.a, select(vec3<i32>(u_input.a.x, u_input.c, -1i), u_input.a << (vec3<u32>(4294967295u, 0u, 0u) % vec3<u32>(32u)), true)), var_1).a.c, var_1.a.c || all(vec3<bool>(!var_1.a.c, !var_1.a.c, !var_0.a.c)));
    let var_3 = var_1;
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_3.a.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.d) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -873f))), _wgslsmith_f_op_f32(-935f + _wgslsmith_f_op_f32(var_0.a.d * -801f))))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 18>();
    global0 = array<vec2<u32>, 18>();
    let var_0 = Struct_1(0u, ~(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(24829u, 1u, 7939u), vec3<u32>(34594u, 1u, 1u)), _wgslsmith_mult_u32(1u, 1u)) ^ 6103u), func_1() & true, -1580f, vec2<u32>(abs(~1u) ^ select(_wgslsmith_clamp_u32(1u, 34504u, 0u), 31431u, func_4(vec4<f32>(-352f, 496f, 434f, 455f), u_input.a, Struct_2(Struct_1(22906u, 1u, true, 663f, global0[_wgslsmith_index_u32(1u, 18u)]))).a.c), ~29302u));
    global0 = array<vec2<u32>, 18>();
    let var_1 = vec2<bool>(any(!(!vec2<bool>(var_0.c, var_0.c))), any(!vec2<bool>(all(vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c)), !var_0.c)));
    global0 = array<vec2<u32>, 18>();
    let var_2 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(round(1247f)), _wgslsmith_f_op_f32(-var_0.d)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -917f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_0.d, var_0.d)), _wgslsmith_f_op_f32(abs(-838f)), u_input.c < 685i))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.b, ~abs(firstLeadingBit(u_input.a.x)), -36653i, u_input.b), func_4(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) * _wgslsmith_f_op_f32(floor(344f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(var_0.b, var_0.b, var_1.x, 569f, vec2<u32>(var_0.a, var_0.e.x))), vec3<bool>(true, true, var_0.c))), _wgslsmith_f_op_f32(floor(var_0.d)))), _wgslsmith_div_f32(var_2.x, 197f)), abs(~vec3<i32>(u_input.a.x, u_input.b, u_input.a.x)), Struct_2(var_0)).a.a, vec3<u32>(var_0.b, 104752u, 1u), ~24241i);
}

