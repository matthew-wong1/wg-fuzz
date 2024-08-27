struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1469f, 772f, -678f);

var<private> global1: array<vec3<u32>, 31>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<f32>) -> i32 {
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-arg_0.x), global0.x) * vec3<f32>(_wgslsmith_f_op_f32(global0.x - 504f), 1000f, 472f));
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(arg_0.x + 1623f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.x)))))));
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-401f - global0.x) - arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1058f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-621f - var_0)))), _wgslsmith_f_op_f32(f32(-1f) * -1022f)));
    var var_1 = firstLeadingBit(~(-1i));
    var var_2 = 31880u;
    return ~(~u_input.a.x) << (u_input.b.x % 32u);
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    global1 = array<vec3<u32>, 31>();
    let var_0 = vec3<i32>(abs(~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -17348i, 24127i, u_input.c.x), vec4<i32>(u_input.a.x, 2147483647i, 1i, 1i))), _wgslsmith_clamp_i32(u_input.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 29579i), u_input.a.yy) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 35615i, -1i, -28457i), vec4<i32>(28780i, 9804i, u_input.a.x, u_input.c.x)), func_3(_wgslsmith_div_vec2_f32(global0.yx, global0.yx))), ~1i) >> ((_wgslsmith_div_vec3_u32(select(_wgslsmith_sub_vec3_u32(global1[_wgslsmith_index_u32(arg_0.x, 31u)], vec3<u32>(559u, 42854u, 37531u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b.xyx), vec3<bool>(false, false, false)), arg_0) >> (_wgslsmith_mult_vec3_u32(arg_0, _wgslsmith_sub_vec3_u32(~global1[_wgslsmith_index_u32(68220u, 31u)], u_input.b.zxx)) % vec3<u32>(32u))) % vec3<u32>(32u));
    global0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) * vec3<f32>(-593f, global0.x, 600f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1557f + global0.x), _wgslsmith_f_op_f32(round(299f)), _wgslsmith_div_f32(global0.x, -108f))))));
    global1 = array<vec3<u32>, 31>();
    var var_1 = Struct_1(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.a, u_input.a), reverseBits(u_input.a), -_wgslsmith_mult_vec3_i32(min(vec3<i32>(u_input.a.x, 1i, -35923i), vec3<i32>(-35159i, u_input.a.x, var_0.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(27802i, 53158i, -1i), vec3<i32>(u_input.c.x, var_0.x, var_0.x), vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i)))), var_0, -(-vec2<i32>(u_input.c.x, 1i) << (firstLeadingBit(~vec2<u32>(1u, 21218u)) % vec2<u32>(32u))), _wgslsmith_sub_u32(u_input.b.x, ~arg_0.x >> (~arg_0.x % 32u)));
    return Struct_1(u_input.a, -var_0, var_0.zx, 40927u);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1138f, global0.x) * vec3<f32>(global0.x, global0.x, global0.x))), vec3<f32>(-1959f, global0.x, _wgslsmith_f_op_f32(-323f - global0.x)), arg_3))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(896f - 1434f), _wgslsmith_f_op_f32(global0.x + 2131f))) - _wgslsmith_f_op_f32(-1261f + 500f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(1000f, global0.x)), _wgslsmith_f_op_f32(-global0.x), !arg_3)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1463f))), arg_3)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.x, global0.x)), global0.x))));
    let var_0 = Struct_2(-(~(-arg_0.c.x) | 20632i), -(~arg_2.a.x), !select(!select(vec4<bool>(false, true, arg_3, false), vec4<bool>(false, arg_3, arg_3, arg_3), false), select(!vec4<bool>(arg_3, false, false, arg_3), vec4<bool>(arg_3, true, true, arg_3), all(vec4<bool>(true, arg_3, arg_3, true))), all(vec3<bool>(true, arg_3, true))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, global0.x, 676f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -178f))), _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, -2078f, -271f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -170f, global0.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1398f, global0.x, -2330f), vec3<f32>(151f, 2983f, global0.x), false)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, -1649f, 777f), vec3<f32>(-517f, global0.x, -987f)))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, global0.x) - _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -155f, -236f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, -1000f, global0.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1047f, global0.x, global0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 711f, -1222f)), vec3<bool>(arg_3, false, var_0.c.x))))));
    global1 = array<vec3<u32>, 31>();
    global1 = array<vec3<u32>, 31>();
    return func_2(vec3<u32>(4294967295u, arg_1.x, ~_wgslsmith_div_u32(41686u, _wgslsmith_dot_vec3_u32(vec3<u32>(7082u, arg_2.d, 21215u), u_input.b.xzw))));
}

fn func_1(arg_0: i32) -> u32 {
    var var_0 = !(!vec3<bool>(all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(ceil(global0.x)) > _wgslsmith_f_op_f32(f32(-1f) * -530f), all(vec4<bool>(true, true, true, true))));
    global0 = vec3<f32>(-1126f, _wgslsmith_f_op_f32(f32(-1f) * -642f), -595f);
    var var_1 = func_4(func_2(_wgslsmith_mult_vec3_u32(global1[_wgslsmith_index_u32(1u, 31u)], u_input.b.yyy)), vec3<u32>(~41476u, _wgslsmith_add_u32(~u_input.b.x, u_input.b.x), 4294967295u) >> (u_input.b.zyx % vec3<u32>(32u)), func_2(abs(countOneBits(vec3<u32>(u_input.b.x, 1u, 25260u)))), true);
    let var_2 = Struct_2(_wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.a.x) << (vec2<u32>(25659u, u_input.b.x) % vec2<u32>(32u)), var_1.c)), ~_wgslsmith_mult_i32(u_input.a.x, 9732i) | 54308i), 13092i, select(!(!vec4<bool>(true, var_0.x, var_0.x, var_0.x)), !vec4<bool>(true, false, var_0.x, select(true, false, var_0.x)), vec4<bool>(true, true, !select(var_0.x, false, var_0.x), var_0.x)));
    var_0 = select(select(select(var_2.c.xww, vec3<bool>(true, true, false), select(var_2.c.x, global0.x >= global0.x, all(var_2.c))), !vec3<bool>(select(var_2.c.x, var_0.x, true), true, any(vec3<bool>(false, var_0.x, var_0.x))), var_0.x), select(select(vec3<bool>(select(var_0.x, false, var_2.c.x), any(vec4<bool>(true, true, true, false)), !var_2.c.x), !(!vec3<bool>(false, false, var_2.c.x)), select(!vec3<bool>(var_0.x, false, false), !vec3<bool>(true, var_0.x, false), !vec3<bool>(false, var_2.c.x, var_0.x))), var_2.c.wxz, false), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -614f)), 344f, var_0.x)) >= global0.x);
    return _wgslsmith_dot_vec2_u32(u_input.b.xw, ~vec2<u32>(func_4(Struct_1(u_input.a, vec3<i32>(-2147483647i, arg_0, 32861i), var_1.a.zx, 54268u), vec3<u32>(20559u, 3881u, 4294967295u), Struct_1(u_input.a, vec3<i32>(2147483647i, u_input.c.x, arg_0), vec2<i32>(25032i, var_1.c.x), u_input.b.x), false).d, var_1.d ^ u_input.b.x)) << (select(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), ~var_1.d ^ firstLeadingBit(var_1.d & u_input.b.x), all(!var_2.c.yz)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var_0 = u_input.b;
    var_0 = u_input.b;
    var_0 = _wgslsmith_mod_vec4_u32(select(select(u_input.b, reverseBits(u_input.b), vec4<bool>(false, true, true, true)), vec4<u32>(_wgslsmith_sub_u32(var_0.x, 120292u), _wgslsmith_add_u32(u_input.b.x | 0u, 4294967295u), _wgslsmith_dot_vec2_u32(abs(u_input.b.yz), var_0.xx), func_1(u_input.c.x)), vec4<bool>(false, true, any(vec2<bool>(true, false)), false)), ~firstTrailingBit(u_input.b));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1921f, global0.x, false)))), -448f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-607f, 684f), _wgslsmith_f_op_f32(trunc(-1839f))))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -683f, -1312f))))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(round(-152f)), _wgslsmith_f_op_f32(global0.x + -2973f), _wgslsmith_f_op_f32(global0.x - 203f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, 1149f, global0.x), vec3<f32>(global0.x, -525f, 108f))))), vec3<f32>(_wgslsmith_f_op_f32(global0.x + 639f), _wgslsmith_f_op_f32(-868f + -725f), _wgslsmith_f_op_f32(-184f - global0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(836f, global0.x, _wgslsmith_f_op_f32(round(global0.x))) * vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(global0.x)))), 525f, global0.x)), global0.x, 1i >> (1u % 32u));
}

