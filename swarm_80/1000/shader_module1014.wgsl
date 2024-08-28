struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<i32>,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 27> = array<vec4<f32>, 27>(vec4<f32>(-963f, -884f, -1074f, 294f), vec4<f32>(-263f, -1213f, 798f, 935f), vec4<f32>(-426f, 505f, 507f, 1127f), vec4<f32>(1000f, 741f, -485f, -1493f), vec4<f32>(973f, 113f, 127f, 1369f), vec4<f32>(190f, 634f, 1061f, 401f), vec4<f32>(2151f, 464f, -1389f, 657f), vec4<f32>(168f, 887f, 118f, 1531f), vec4<f32>(-2467f, -629f, 1000f, 106f), vec4<f32>(844f, -1968f, -1169f, 1851f), vec4<f32>(-278f, 661f, -156f, 596f), vec4<f32>(-1343f, 667f, -775f, -1114f), vec4<f32>(-1303f, 180f, -676f, 192f), vec4<f32>(-1007f, -769f, -1235f, -465f), vec4<f32>(1680f, -724f, 351f, 2287f), vec4<f32>(-955f, 100f, -1331f, -517f), vec4<f32>(889f, -814f, 901f, 796f), vec4<f32>(-782f, 1360f, 2651f, -1594f), vec4<f32>(-139f, -381f, 1323f, -377f), vec4<f32>(-1624f, -1000f, 1000f, 903f), vec4<f32>(318f, 1336f, -1503f, -496f), vec4<f32>(-1688f, -350f, -446f, 483f), vec4<f32>(-1304f, -225f, 398f, 1574f), vec4<f32>(748f, -1282f, 316f, -281f), vec4<f32>(-130f, 1840f, -1000f, 820f), vec4<f32>(-325f, 2117f, 435f, 1455f), vec4<f32>(-894f, 1838f, -319f, -923f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: f32, arg_1: i32) -> f32 {
    let var_0 = any(vec4<bool>(!any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), any(vec3<bool>(true, true, true)) && true, all(vec3<bool>(true, true, true)) == (-5559i != u_input.a.x), _wgslsmith_mod_i32(39723i, ~arg_1) < u_input.a.x));
    let var_1 = Struct_1(any(vec2<bool>(true, var_0)), _wgslsmith_f_op_f32(sign(arg_0)), ~abs(u_input.a), _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(0u, 27u)]), _wgslsmith_mult_i32(~_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a.x, -68868i, u_input.a.x), ~vec3<i32>(0i, 0i, arg_1)), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-35992i, u_input.a.x, 15935i)), ~vec3<i32>(u_input.a.x, 1i, arg_1)), 1i)));
    var var_2 = var_1;
    var var_3 = vec2<bool>(var_0, all(!vec4<bool>(!var_1.a, var_0, false, any(vec3<bool>(false, false, false)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b + arg_0));
}

fn func_1(arg_0: vec4<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -117f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-867f - arg_0.x) - _wgslsmith_f_op_f32(ceil(arg_0.x)))))));
    let var_1 = vec3<i32>(u_input.a.x, ~_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, 9370i), vec4<i32>(u_input.a.x, u_input.a.x, -3389i, 0i)), vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x)), vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, u_input.a.x, 1i, -1i)), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, 1i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, -32627i))) >> (1u % 32u));
    var var_2 = Struct_2(~_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 0i, u_input.a.x, 2147483647i), vec4<i32>(u_input.a.x, -2147483647i, -15297i, 1i)), -u_input.a.x), Struct_1(any(vec4<bool>(false, all(vec3<bool>(true, true, false)), true, true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(var_0.x, -32127i)), _wgslsmith_f_op_f32(arg_0.x * 1184f)) * 775f), -var_1.xx << (vec2<u32>(1u, ~4294967295u) % vec2<u32>(32u)), global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~21439u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 21236u), vec2<u32>(19675u, 1u)), ~20533u), 27u)], reverseBits(u_input.a.x)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-arg_0.xwx))));
    var var_3 = -51417i;
    var_3 = i32(-1i) * -1i;
    return var_2.b.a;
}

fn func_3(arg_0: vec3<u32>) -> bool {
    var var_0 = all(select(vec3<bool>(true, true, true), vec3<bool>(select(14943u, 72956u, true) != 1u, true, _wgslsmith_mult_i32(u_input.a.x, 59974i) > 35776i), vec3<bool>(!func_1(vec4<f32>(359f, 638f, -106f, 758f)), all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false)), all(vec3<bool>(false, false, true)))));
    var var_1 = vec4<bool>(false || select(true, true, true), false, true, false);
    let var_2 = u_input.a.x;
    var_1 = !(!vec4<bool>(select(all(vec2<bool>(false, var_1.x)), any(vec2<bool>(var_1.x, var_1.x)), var_1.x && false), select(var_1.x & var_1.x, 1i <= u_input.a.x, var_1.x), true, !select(var_1.x, true, var_1.x)));
    var var_3 = Struct_3(var_1.wy);
    return var_3.a.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: bool) -> i32 {
    global0 = array<vec4<f32>, 27>();
    let var_0 = arg_1.x;
    global0 = array<vec4<f32>, 27>();
    global0 = array<vec4<f32>, 27>();
    let var_1 = vec4<bool>((~arg_1.x & _wgslsmith_div_u32(~0u, var_0)) <= ~_wgslsmith_sub_u32(3289u, _wgslsmith_dot_vec2_u32(arg_1.zy, vec2<u32>(arg_1.x, 0u))), false || arg_2.a.x, all(vec3<bool>(arg_3, false, true)), arg_0.a);
    return u_input.a.x;
}

fn func_5(arg_0: vec4<u32>, arg_1: bool, arg_2: vec3<i32>, arg_3: vec3<u32>) -> i32 {
    let var_0 = 8537i;
    var var_1 = vec2<i32>(21088i, _wgslsmith_clamp_i32(var_0, -2147483647i, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 60850i, 0i), abs(vec4<i32>(0i, -17011i, arg_2.x, arg_2.x)))));
    global0 = array<vec4<f32>, 27>();
    var var_2 = Struct_2(15888i, Struct_1(all(!select(vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(false, true, true, arg_1), arg_1)), -673f, vec2<i32>(59539i, countOneBits(var_0)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-386f, 657f, 564f, 1f))), 2147483647i), vec3<f32>(_wgslsmith_f_op_f32(select(-343f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(1746f, u_input.a.x)) - -147f), !arg_1)), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -895f)), arg_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -339f)));
    var var_3 = _wgslsmith_f_op_f32(var_2.b.b - _wgslsmith_f_op_f32(var_2.c.x + _wgslsmith_f_op_f32(1460f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.c.x, var_2.b.b, false)) - 154f))));
    return -u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 37277u;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(265f)) - 687f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(368f + _wgslsmith_f_op_f32(f32(-1f) * -988f)))), -669f);
    let var_2 = var_1;
    global0 = array<vec4<f32>, 27>();
    global0 = array<vec4<f32>, 27>();
    let var_3 = Struct_1(any(select(vec2<bool>(true, true), vec2<bool>(true, func_1(global0[_wgslsmith_index_u32(34158u, 27u)])), var_0 <= 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x * -499f), var_2.x))), abs(-vec2<i32>(1i, u_input.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(~4294967295u, 27u)] * global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(16609u, var_0), vec2<u32>(var_0, 0u)), 27u)]) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(35746u, 27u)] + vec4<f32>(var_2.x, -1000f, -790f, 1014f)) * vec4<f32>(var_2.x, var_1.x, var_1.x, -1056f)))), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.e, vec2<i32>(_wgslsmith_mult_i32(-u_input.a.x, -var_3.e) | _wgslsmith_mod_i32(-u_input.a.x, ~u_input.a.x), 1i), func_5(vec4<u32>(1u, countOneBits(var_0), 1u, var_0), true, vec3<i32>(0i & (-1i | var_3.c.x), func_4(var_3, ~vec3<u32>(var_0, var_0, 22587u), Struct_3(vec2<bool>(true, var_3.a)), func_3(vec3<u32>(var_0, 96602u, 19085u))), u_input.a.x), _wgslsmith_div_vec3_u32(select(~vec3<u32>(var_0, var_0, 4294967295u), ~vec3<u32>(1u, 1u, var_0), var_3.a), vec3<u32>(abs(var_0), ~4294967295u, var_0))), var_1.x);
}

