struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<f32, 15> = array<f32, 15>(-922f, 1639f, 1000f, -638f, -1406f, 1249f, 959f, 3664f, -805f, 1233f, -940f, 1309f, 1000f, -776f, 566f);

var<private> global2: Struct_1 = Struct_1(-12111i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> i32 {
    global1 = array<f32, 15>();
    var var_0 = select(~(~1u), 7026u, true);
    var var_1 = vec3<f32>(307f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(55903u, 15u)], global1[_wgslsmith_index_u32(53188u, 15u)]))))), -229f);
    global1 = array<f32, 15>();
    let var_2 = var_1.x;
    return 2147483647i << (_wgslsmith_div_u32(1u, _wgslsmith_mod_u32(39969u, ~_wgslsmith_clamp_u32(u_input.d.x, 490u, u_input.d.x))) % 32u);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec3<i32>) -> vec4<bool> {
    var var_0 = arg_1;
    global1 = array<f32, 15>();
    var var_1 = vec2<bool>(false, all(!select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(true, true, false, true)))));
    let var_2 = arg_1;
    let var_3 = var_0.a;
    return vec4<bool>(all(select(select(vec2<bool>(false, true), vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, true)), vec2<bool>(any(vec4<bool>(var_1.x, true, var_1.x, var_1.x)), !var_1.x), select(vec2<bool>(false, false), !vec2<bool>(false, var_1.x), !vec2<bool>(false, var_1.x)))), any(vec2<bool>(var_1.x, all(vec2<bool>(false, true)))) | (u_input.d.x == u_input.d.x), true, all(vec2<bool>(!any(vec2<bool>(false, var_1.x)), select(true, true, false))));
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = Struct_1(-2147483647i);
    global0 = 5791u;
    let var_1 = select(select(vec4<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), !all(vec2<bool>(false, true)), all(select(vec2<bool>(false, false), vec2<bool>(false, true), false)), true), func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 584f, arg_0.x)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, -147f, arg_0.x), vec3<f32>(arg_0.x, -359f, -1337f), true))), Struct_1(func_3()), u_input.c >> (vec4<u32>(u_input.a, 31936u, 0u, u_input.d.x) % vec4<u32>(32u)), ~min(u_input.c.xwx, vec3<i32>(32355i, u_input.c.x, global2.a))), !any(vec3<bool>(true, true, true))), vec4<bool>(true, func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 15u)], arg_0.x, -343f)), Struct_1(u_input.b), firstTrailingBit(_wgslsmith_mult_vec4_i32(u_input.c, u_input.c)), _wgslsmith_add_vec3_i32(u_input.c.wyw, _wgslsmith_mod_vec3_i32(u_input.c.yzx, vec3<i32>(-1i, -1i, var_0.a)))).x, func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.x, -1000f, -1769f))) - vec3<f32>(415f, global1[_wgslsmith_index_u32(u_input.a, 15u)], global1[_wgslsmith_index_u32(u_input.d.x, 15u)])), Struct_1(16124i), u_input.c, ~u_input.c.yzz).x, true), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 15u)] == 147f, true, 0i != _wgslsmith_mod_i32(u_input.b, u_input.c.x), any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false))));
    let var_2 = global1[_wgslsmith_index_u32(36791u, 15u)];
    let var_3 = u_input.a;
    return Struct_1(var_0.a);
}

fn func_1(arg_0: vec3<i32>, arg_1: i32) -> vec4<i32> {
    global1 = array<f32, 15>();
    global2 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 15u)], global1[_wgslsmith_index_u32(u_input.a, 15u)]))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -698f) + vec2<f32>(1000f, -497f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 15u)], global1[_wgslsmith_index_u32(u_input.d.x, 15u)]), vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 15u)], -726f)))))));
    global1 = array<f32, 15>();
    global1 = array<f32, 15>();
    let var_0 = -u_input.c.yyz;
    return vec4<i32>(firstLeadingBit(1i), ~(i32(-1i) * -2147483647i), i32(-1i) * -1i, arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec3<i32>(i32(-1i) * -2147483647i, u_input.c.x | (_wgslsmith_dot_vec3_i32(u_input.c.ywx, u_input.c.zxw) >> (_wgslsmith_div_u32(u_input.d.x, u_input.a) % 32u)), _wgslsmith_sub_i32(_wgslsmith_add_i32(global2.a & 43648i, ~(-49927i)), i32(-1i) * -u_input.b)), _wgslsmith_sub_i32((reverseBits(-8232i) & -u_input.e.x) & ~38715i, -32565i));
    var_0 = -vec4<i32>(reverseBits(-2147483647i), ~2147483647i, _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_div_i32(var_0.x, u_input.e.x), global2.a ^ 15271i), func_2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, global1[_wgslsmith_index_u32(u_input.d.x, 15u)]), vec2<f32>(830f, -545f)))).a), var_0.x);
    var var_1 = ~u_input.d.xz;
    var_0 = vec4<i32>(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-(u_input.b | var_0.x), _wgslsmith_div_i32(func_3(), _wgslsmith_sub_i32(-22048i, u_input.e.x)), ~0i), -u_input.c.zwy), -38658i, (_wgslsmith_clamp_i32(-1i, u_input.b, reverseBits(2147483647i)) ^ 1i) | var_0.x);
    var var_2 = Struct_1(10530i);
    global1 = array<f32, 15>();
    var var_3 = true;
    var var_4 = func_1(vec3<i32>(~(i32(-1i) * -global2.a), -reverseBits(_wgslsmith_clamp_i32(-1i, 2147483647i, 19321i)), firstTrailingBit(abs(~u_input.c.x))), -2147483647i).yxw;
    let var_5 = func_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(var_1.x, 15u)], global1[_wgslsmith_index_u32(var_1.x, 15u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(849f, -347f)))) * vec2<f32>(-2011f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 15u)] - global1[_wgslsmith_index_u32(0u, 15u)]))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-42355i), select(vec3<i32>(_wgslsmith_clamp_i32(-global2.a, abs(var_2.a), i32(-1i) * -2147483647i), -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 548i, 6946i) | vec3<i32>(-1i, u_input.b, var_4.x), func_1(vec3<i32>(11068i, -48918i, u_input.e.x), var_0.x).yyy)), vec3<i32>(13294i, u_input.c.x, func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-222f, 798f))).a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(778f)))) < _wgslsmith_f_op_f32(abs(886f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(827f, global1[_wgslsmith_index_u32(3469u, 15u)], 1398f, global1[_wgslsmith_index_u32(u_input.d.x, 15u)]) * vec4<f32>(global1[_wgslsmith_index_u32(11306u, 15u)], global1[_wgslsmith_index_u32(63800u, 15u)], 1372f, -220f))))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1[_wgslsmith_index_u32(var_1.x, 15u)], _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(4294967295u, 15u)])), 955f, global1[_wgslsmith_index_u32(~13676u, 15u)]), vec4<f32>(global1[_wgslsmith_index_u32(var_1.x << (var_1.x % 32u), 15u)], _wgslsmith_f_op_f32(floor(-383f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 15u)]), global1[_wgslsmith_index_u32(u_input.a, 15u)])))), var_0.zzy, u_input.a);
}

