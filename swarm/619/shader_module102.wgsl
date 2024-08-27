struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
    c: vec3<f32>,
    d: vec3<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-415f, 597f, 150f, 405f);

var<private> global1: array<u32, 23> = array<u32, 23>(20718u, 40485u, 1u, 90769u, 1u, 1u, 25279u, 1u, 25990u, 1u, 0u, 4294967295u, 3698u, 4294967295u, 4294967295u, 36839u, 4294967295u, 0u, 0u, 4294967295u, 56298u, 1u, 4294967295u);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: i32) -> i32 {
    let var_0 = _wgslsmith_add_i32(arg_1.b.x, arg_1.b.x);
    let var_1 = select(vec3<bool>(true, !all(select(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, false, true, arg_0.x), vec4<bool>(arg_0.x, false, arg_0.x, true))), true), select(!select(select(vec3<bool>(arg_0.x, false, true), arg_0, false), vec3<bool>(false, true, arg_0.x), true), vec3<bool>(_wgslsmith_f_op_f32(-global0.x) > global0.x, arg_0.x, any(arg_0.yz)), vec3<bool>(~18431i >= _wgslsmith_sub_i32(var_0, 2147483647i), all(arg_0), any(arg_0.yz))), vec3<bool>(true || all(select(vec4<bool>(arg_0.x, arg_0.x, false, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(false, true, false, arg_0.x))), true, (arg_2 < (var_0 | arg_2)) != ((global0.x < 1000f) & false)));
    var var_2 = global0.x;
    var var_3 = 1608f;
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -380f, 138f, -280f) - vec4<f32>(-1357f, -2131f, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1118f, 807f, 2105f, global0.x) - vec4<f32>(-348f, -103f, global0.x, -484f)), vec4<bool>(false, true, true, var_1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 316f, 1488f, global0.x) * vec4<f32>(1000f, global0.x, global0.x, -743f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, global0.x))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.x, 304f, global0.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1090f, global0.x, 1240f, global0.x) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-560f, global0.x, -455f, global0.x), vec4<f32>(-725f, 1000f, -278f, global0.x), var_1.x))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-546f, _wgslsmith_f_op_f32(global0.x * -1666f), -968f, _wgslsmith_div_f32(-1629f, 1598f))) + vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x))), global0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.x * -1000f))))));
    return arg_1.c.a.x;
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(~u_input.a.xz, _wgslsmith_sub_vec2_i32(vec2<i32>(func_3(vec3<bool>(false, true, false), Struct_2(vec2<u32>(global1[_wgslsmith_index_u32(0u, 23u)], u_input.c), vec2<i32>(u_input.d, u_input.a.x), Struct_1(u_input.b.zx, vec4<u32>(u_input.c, u_input.c, global1[_wgslsmith_index_u32(u_input.c, 23u)], u_input.c))), u_input.a.x), 1i), select(min(u_input.b.yz, vec2<i32>(u_input.d, u_input.b.x)), vec2<i32>(u_input.b.x, u_input.d), true))), _wgslsmith_sub_vec2_i32(~_wgslsmith_mult_vec2_i32(min(vec2<i32>(u_input.a.x, u_input.b.x), vec2<i32>(1i, -25091i)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.d), vec2<i32>(-13584i, u_input.b.x))), u_input.a.yz));
    global1 = array<u32, 23>();
    global0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - global0.x)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-298f)) + _wgslsmith_f_op_f32(-1042f * global0.x))), 815f), vec4<f32>(global0.x, -719f, 1461f, -212f)));
    global1 = array<u32, 23>();
    let var_1 = !select(vec3<bool>(all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), true)), any(vec2<bool>(true, true)), true), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), true), !vec3<bool>(u_input.c <= 3358u, true, true));
    return Struct_2(vec2<u32>(13714u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.c, global1[_wgslsmith_index_u32(0u, 23u)]), vec3<u32>(4294967295u, 46957u, global1[_wgslsmith_index_u32(145u, 23u)])) >> (abs(vec3<u32>(5760u, global1[_wgslsmith_index_u32(1u, 23u)], u_input.c)) % vec3<u32>(32u)), ~vec3<u32>(4294967295u, u_input.c, u_input.c))), reverseBits(firstLeadingBit(-vec2<i32>(1i, u_input.d))), Struct_1(vec2<i32>(1i, _wgslsmith_mod_i32(u_input.b.x, _wgslsmith_mod_i32(8563i, u_input.b.x))), _wgslsmith_mult_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(u_input.c, 23u)], 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 23u)], 23u)], u_input.c), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 93637u, 17980u, u_input.c), vec4<u32>(1552u, 103172u, 4294967295u, 4294967295u) >> (vec4<u32>(u_input.c, 23714u, 0u, 4294967295u) % vec4<u32>(32u))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32) -> bool {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-515f * -750f), _wgslsmith_div_f32(-642f, global0.x), global0.x))));
    var var_0 = arg_1.b.zz;
    var var_1 = false;
    var var_2 = func_2().c;
    global1 = array<u32, 23>();
    return true;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<i32>) -> Struct_4 {
    var var_0 = vec4<i32>(u_input.a.x, -_wgslsmith_div_i32(0i, reverseBits(max(arg_2.x, u_input.b.x))), -select(_wgslsmith_mod_i32(-1i << (arg_0.b.x % 32u), _wgslsmith_sub_i32(arg_0.a.x, -2147483647i)), i32(-1i) * -20604i, func_4(func_2(), arg_0, -arg_2.x)), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(11092i, 28727i), ~arg_0.a), ~_wgslsmith_sub_vec2_i32(~arg_2.xx, vec2<i32>(2147483647i, 2147483647i))));
    let var_1 = func_2();
    global0 = vec4<f32>(537f, global0.x, _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * global0.x) + _wgslsmith_f_op_f32(trunc(global0.x)))))), _wgslsmith_f_op_f32(f32(-1f) * -1016f));
    global1 = array<u32, 23>();
    global0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -220f), -1791f, global0.x, _wgslsmith_f_op_f32(402f + global0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, 252f, global0.x, global0.x))) * vec4<f32>(global0.x, global0.x, global0.x, -1497f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1986f, global0.x, -232f, global0.x) + vec4<f32>(global0.x, global0.x, global0.x, global0.x)))))));
    return Struct_4(-36928i, arg_1, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) - 1477f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-120f - -568f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1052f, 324f, global0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-2321f, -1000f, global0.x), global0.xxy) * _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, 238f, -117f), global0.wwz))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, global0.x, global0.x, global0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1686f, global0.x, 409f, -1565f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, global0.x, global0.x, -899f))))), vec4<f32>(-495f, -511f, -1529f, global0.x)))));
}

fn func_5(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: f32) -> i32 {
    var var_0 = vec3<i32>(50610i, -2147483647i, arg_0.a);
    global0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(arg_0.e + arg_0.e)));
    var var_1 = arg_1.x;
    global1 = array<u32, 23>();
    var var_2 = vec2<i32>(_wgslsmith_add_i32(reverseBits(func_3(select(arg_0.b, vec3<bool>(true, true, false), arg_0.b.x), Struct_2(vec2<u32>(78173u, 4294967295u), var_0.yz, Struct_1(u_input.b.xz, vec4<u32>(88068u, 37213u, 10034u, global1[_wgslsmith_index_u32(0u, 23u)]))), -arg_0.a)), arg_0.a), -1i);
    return _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.a, u_input.b), i32(-1i) * -abs(~(-2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!vec3<bool>(true, any(vec2<bool>(false, false)), true)));
    var var_1 = _wgslsmith_mult_vec3_i32(u_input.b, ~(~(u_input.a ^ vec3<i32>(-1i, u_input.d, 0i))));
    var var_2 = false;
    var_1 = ~abs(vec3<i32>(func_5(func_1(Struct_1(vec2<i32>(25019i, u_input.a.x), vec4<u32>(57895u, 756u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 23u)], 23u)], 23u)], 79654u)), vec3<bool>(true, var_0.x, var_0.x), vec3<i32>(u_input.a.x, var_1.x, var_1.x)), select(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3097u, 23u)], 23u)], global1[_wgslsmith_index_u32(0u, 23u)], 4294967295u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], u_input.c, 1u, global1[_wgslsmith_index_u32(0u, 23u)]), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), 993f), _wgslsmith_mult_i32(countOneBits(-25252i), -u_input.d), 31301i));
    var var_3 = func_1(func_2().c, vec3<bool>(true, var_0.x, var_0.x), vec3<i32>(var_1.x, i32(-1i) * -2147483647i, 1i));
    let var_4 = all(select(!(!select(vec4<bool>(var_3.b.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, false, var_3.b.x, false), vec4<bool>(var_0.x, var_0.x, true, var_3.b.x))), vec4<bool>(false, !var_3.b.x, false, var_0.x), !(!(!vec4<bool>(var_3.b.x, var_3.b.x, true, false)))));
    let var_5 = Struct_3(_wgslsmith_mod_vec2_u32(vec2<u32>(countOneBits(0u), 1u << (_wgslsmith_div_u32(u_input.c, 0u) % 32u)), min(vec2<u32>(global1[_wgslsmith_index_u32(select(u_input.c, u_input.c, var_4), 23u)], 2327u), vec2<u32>(u_input.c, 1u))));
    let var_6 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1229f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_3.d.x), _wgslsmith_f_op_f32(global0.x - global0.x))) * _wgslsmith_f_op_f32(-334f * var_3.e.x))) * _wgslsmith_f_op_f32(f32(-1f) * -1629f));
    let x = u_input.a;
    s_output = StorageBuffer(select(~(-(~vec4<i32>(1i, -62654i, u_input.b.x, var_3.a))), firstLeadingBit(-vec4<i32>(-48672i, -2147483647i, var_3.a, 26574i)), vec4<bool>(true, func_4(Struct_2(var_5.a, vec2<i32>(-28877i, u_input.b.x), Struct_1(u_input.a.zx, vec4<u32>(4294967295u, var_5.a.x, var_5.a.x, 21288u))), Struct_1(var_1.zx, vec4<u32>(4294967295u, u_input.c, 74728u, var_5.a.x)), 43085i), !all(vec4<bool>(var_0.x, false, var_3.b.x, true)), true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), -2603f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-920f, global0.x, all(vec2<bool>(var_3.b.x, true))))), true)));
}

