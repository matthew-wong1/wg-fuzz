struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: f32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 14> = array<vec2<bool>, 14>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global1: f32;

var<private> global2: array<vec3<i32>, 8> = array<vec3<i32>, 8>(vec3<i32>(-5379i, 2147483647i, 1i), vec3<i32>(1i, 17103i, 0i), vec3<i32>(0i, i32(-2147483648), i32(-2147483648)), vec3<i32>(1i, 91900i, -1i), vec3<i32>(2147483647i, -1i, 1i), vec3<i32>(71486i, 94520i, 1i), vec3<i32>(480i, -22657i, -55561i), vec3<i32>(-31994i, -24031i, 1i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: bool, arg_3: f32) -> u32 {
    global1 = arg_3;
    var var_0 = Struct_1(arg_2, _wgslsmith_dot_vec4_i32(arg_1, _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, u_input.a.x, arg_1.x, -2147483647i), arg_1, select(vec4<i32>(1i, 2147483647i, 62399i, u_input.b.x), arg_1, arg_2)), u_input.a)));
    let var_1 = vec3<bool>(false, any(!select(vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(false, true, false), !var_0.a)), var_0.a);
    var var_2 = vec2<u32>(20734u, max(~46253u, _wgslsmith_mod_u32(33754u, min(arg_0.x, ~4294967295u))));
    var var_3 = Struct_1(all(vec3<bool>(!(arg_2 & false), abs(-7980i) == min(arg_1.x, -2147483647i), var_0.a)), -68754i);
    return var_2.x;
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_4 {
    var var_0 = vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(func_3(vec4<u32>(0u, u_input.c.x, u_input.c.x, u_input.c.x), u_input.a, true, -267f), u_input.c.x, 33484u, _wgslsmith_dot_vec2_u32(u_input.c.yy, u_input.c.wz)), vec4<u32>(~0u, ~3219u, _wgslsmith_clamp_u32(u_input.c.x, 17240u, u_input.c.x), u_input.c.x)), u_input.c.x, max(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, 0u), vec3<u32>(u_input.c.x, u_input.c.x, 50335u)) & ~0u, _wgslsmith_mod_u32(u_input.c.x, u_input.c.x ^ u_input.c.x)), u_input.c.x), firstTrailingBit(u_input.c.x));
    global0 = array<vec2<bool>, 14>();
    return Struct_4(Struct_2(Struct_1(any(!vec2<bool>(false, arg_1)), ~(~u_input.a.x))), Struct_1(arg_1 && any(select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(arg_1, arg_1, arg_1, false), false)), _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, -1i, 62573i, arg_0), reverseBits(select(u_input.a, vec4<i32>(2147483647i, 22406i, arg_0, arg_0), false)))), Struct_2(Struct_1(true, u_input.b.x)), _wgslsmith_f_op_f32(-1718f + 1558f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(703f * 406f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-395f - 422f), -987f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-430f, -584f, arg_1)) * -2813f))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_4) -> Struct_1 {
    global2 = array<vec3<i32>, 8>();
    global1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_2.e.x, -494f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(265f * -584f) - arg_0.d))))));
    var var_0 = Struct_3(arg_0.a.a, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.e.x, arg_0.e.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.e.x - 510f), _wgslsmith_f_op_f32(max(arg_0.e.x, -348f))))), _wgslsmith_f_op_vec3_f32(func_2(5367i, false).e * vec3<f32>(arg_2.d, -931f, _wgslsmith_f_op_f32(f32(-1f) * -1511f))))), 4536i);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(func_2(i32(-1i) * -18141i, arg_2.c.a.a).e.x)) - _wgslsmith_f_op_f32(round(arg_2.d)));
    let var_1 = select(vec3<bool>(!var_0.a.a, false, !arg_0.a.a.a), select(vec3<bool>(true, !var_0.a.a, !(arg_0.a.a.b <= 28737i)), !vec3<bool>(arg_0.c.a.a, !var_0.a.a, false), !select(select(vec3<bool>(false, true, var_0.a.a), vec3<bool>(false, true, false), vec3<bool>(true, false, arg_0.a.a.a)), !vec3<bool>(true, var_0.a.a, false), !vec3<bool>(true, false, arg_0.a.a.a))), select(select(!select(vec3<bool>(arg_0.a.a.a, var_0.a.a, true), vec3<bool>(var_0.a.a, false, true), vec3<bool>(true, arg_2.b.a, arg_1.a)), !vec3<bool>(arg_0.a.a.a, arg_1.a, false), select(!var_0.a.a, all(vec2<bool>(false, false)), !arg_0.a.a.a)), !vec3<bool>(0u <= u_input.c.x, arg_2.d <= 310f, var_0.b.x <= var_0.b.x), !(!(!vec3<bool>(true, arg_1.a, true)))));
    return func_2(_wgslsmith_clamp_i32(~select(-1i, -u_input.b.x, arg_0.b.a), abs(_wgslsmith_dot_vec3_i32(global2[_wgslsmith_index_u32(8021u ^ u_input.c.x, 8u)], global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x), 8u)])), u_input.b.x), arg_1.a).c.a;
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> vec4<f32> {
    var var_0 = arg_0.a;
    global2 = array<vec3<i32>, 8>();
    var var_1 = arg_2;
    var var_2 = u_input.a.yy;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(843f, -1047f, true)))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, 418f, arg_2)))))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2, -1827f, _wgslsmith_f_op_f32(f32(-1f) * -689f), arg_2))));
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    var var_0 = u_input.c.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_5(func_4(func_2(u_input.a.x, false), func_2(u_input.b.x, true).c.a, Struct_4(Struct_2(Struct_1(true, u_input.a.x)), Struct_1(true, u_input.b.x), Struct_2(Struct_1(true, u_input.b.x)), -1159f, vec3<f32>(arg_0.x, arg_0.x, -507f))), _wgslsmith_dot_vec4_i32(-u_input.a, abs(vec4<i32>(u_input.a.x, u_input.a.x, -23901i, 29745i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.x)) * _wgslsmith_f_op_f32(arg_0.x + 2587f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_5(Struct_1(true, _wgslsmith_clamp_i32(-18871i, u_input.b.x, u_input.b.x)), u_input.a.x, 728f)) - vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x))), 563f, arg_0.x, func_2(u_input.a.x, any(global0[_wgslsmith_index_u32(u_input.c.x, 14u)])).d)));
    return Struct_2(func_2(u_input.a.x, (-1816f != _wgslsmith_f_op_f32(floor(arg_0.x))) & true).c.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(false, u_input.b.x);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(max(-1012f, -384f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(308f, 372f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(796f - -1130f))), _wgslsmith_f_op_f32(f32(-1f) * -1131f)));
    var_0 = Struct_1(var_0.b <= 18111i, countOneBits(var_0.b));
    let var_2 = func_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -488f) + var_1.x), var_1.x));
    global2 = array<vec3<i32>, 8>();
    let var_3 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x)))), 340f, var_1.x, var_1.x), var_1.x, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -168f, 858f, -1057f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1403f, -767f, -842f, _wgslsmith_f_op_f32(884f * var_1.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1156f, 442f, var_1.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1225f, var_1.x, var_1.x, -254f)))))));
}

