struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12> = array<bool, 12>(true, false, false, false, true, false, false, true, true, false, false, true);

var<private> global1: i32 = i32(-2147483648);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool) -> vec3<i32> {
    let var_0 = Struct_2(~u_input.d.zz, !vec3<bool>(u_input.a.x < _wgslsmith_clamp_u32(u_input.a.x, u_input.b.x, u_input.b.x), arg_0, !(!global0[_wgslsmith_index_u32(u_input.b.x, 12u)])), Struct_1(global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(6289u, 4294967295u, 0u)), vec3<u32>(13751u, 40623u, u_input.a.x) << (vec3<u32>(u_input.a.x, 0u, u_input.a.x) % vec3<u32>(32u)))), 12u)], vec4<bool>(true, max(u_input.a.x, u_input.a.x) >= ~u_input.a.x, true, select(arg_0, 64482i < u_input.d.x, true)), firstLeadingBit(~select(u_input.d, u_input.d, vec3<bool>(false, arg_0, true))), _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(-21996i, -2147483647i, -31388i, u_input.c)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 0i, 11930i, u_input.d.x), vec4<i32>(0i, u_input.c, 2147483647i, -1i), vec4<i32>(u_input.c, -26854i, u_input.d.x, -2147483647i)))));
    let var_1 = select(select(select(var_0.c.b, !(!vec4<bool>(false, arg_0, false, true)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, u_input.c, 1i), vec3<i32>(2147483647i, -1i, var_0.c.d.x)) != -1i), select(var_0.c.b, select(vec4<bool>(true, var_0.b.x, true, global0[_wgslsmith_index_u32(u_input.b.x, 12u)]), !var_0.c.b, true), u_input.b.x <= _wgslsmith_sub_u32(u_input.a.x, u_input.b.x)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(25699u, u_input.a.x, 1u, 5743u), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 4294967295u, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 21578u, u_input.a.x, 1u), vec4<u32>(u_input.b.x, 3414u, 30493u, 4294967295u)), abs(vec4<u32>(1u, u_input.b.x, 27370u, u_input.b.x)))), 12u)]), select(select(!(!var_0.c.b), var_0.c.b, arg_0), var_0.c.b, vec4<bool>(all(var_0.c.b.xwz), false, u_input.c == _wgslsmith_mod_i32(-12054i, u_input.d.x), true)), global0[_wgslsmith_index_u32(u_input.a.x, 12u)]);
    global0 = array<bool, 12>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -268f), -1644f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1468f)))) * vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(376f, 455f)))), 919f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -770f)))));
    var_2 = vec3<f32>(-1275f, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -671f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(283f, var_2.x) * -728f))));
    return var_0.c.d.xww;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    global0 = array<bool, 12>();
    let var_0 = _wgslsmith_f_op_f32(floor(-1957f));
    var var_1 = Struct_1(arg_2.c.a, !(!arg_2.c.b), _wgslsmith_sub_vec3_i32(abs(u_input.d) & vec3<i32>(~u_input.d.x, reverseBits(1i), _wgslsmith_add_i32(1i, -1i)), _wgslsmith_sub_vec3_i32(func_3(global0[_wgslsmith_index_u32(u_input.a.x, 12u)]), vec3<i32>(abs(u_input.d.x), arg_2.a.x, reverseBits(-2147483647i)))), arg_2.c.d);
    var_1 = arg_2.c;
    var var_2 = 0u >> (u_input.a.x % 32u);
    return arg_2.c;
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> Struct_2 {
    let var_0 = Struct_2(u_input.d.xy, select(vec3<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, 2431u), vec3<u32>(44855u, u_input.b.x, 37278u)) <= u_input.b.x, !(!global0[_wgslsmith_index_u32(0u, 12u)]), !(arg_1 < arg_1)), arg_0.b.yxw, !func_2(select(vec3<bool>(global0[_wgslsmith_index_u32(26328u, 12u)], true, arg_0.a), vec3<bool>(arg_0.a, false, global0[_wgslsmith_index_u32(u_input.b.x, 12u)]), true), func_2(vec3<bool>(false, false, arg_0.b.x), vec2<bool>(true, arg_0.b.x), Struct_2(vec2<i32>(u_input.d.x, 35675i), arg_0.b.xxw, Struct_1(true, vec4<bool>(true, global0[_wgslsmith_index_u32(45430u, 12u)], true, false), vec3<i32>(-1i, 1i, 2147483647i), vec4<i32>(1i, u_input.d.x, 1i, -25266i))), 1301f).b.wy, Struct_2(arg_0.d.xw, arg_0.b.zxy, Struct_1(global0[_wgslsmith_index_u32(arg_1, 12u)], arg_0.b, vec3<i32>(-2147483647i, -37324i, 2147483647i), arg_0.d)), -847f).b.xyz), func_2(select(select(arg_0.b.wzy, select(arg_0.b.wyw, arg_0.b.www, false), !arg_0.b.wwx), vec3<bool>(global0[_wgslsmith_index_u32(arg_1, 12u)] == false, arg_0.b.x, !arg_0.a), select(vec3<bool>(global0[_wgslsmith_index_u32(arg_1, 12u)], arg_0.b.x, global0[_wgslsmith_index_u32(u_input.b.x, 12u)]), func_2(arg_0.b.ywx, arg_0.b.wz, Struct_2(vec2<i32>(arg_0.c.x, -37322i), vec3<bool>(true, false, arg_0.b.x), arg_0), -1000f).b.zxx, all(vec3<bool>(true, true, global0[_wgslsmith_index_u32(arg_1, 12u)])))), arg_0.b.xx, Struct_2(-arg_0.c.zz, vec3<bool>(true, false, false), func_2(select(arg_0.b.xxy, vec3<bool>(global0[_wgslsmith_index_u32(25783u, 12u)], true, arg_0.b.x), arg_0.b.zzw), !vec2<bool>(arg_0.a, global0[_wgslsmith_index_u32(26103u, 12u)]), Struct_2(u_input.d.yx, vec3<bool>(true, false, arg_0.a), arg_0), -132f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(751f * -1032f) - -437f), _wgslsmith_f_op_f32(trunc(-1834f)))));
    global1 = -1i;
    global1 = var_0.c.d.x;
    global1 = func_2(select(vec3<bool>(any(!var_0.c.b.zx), true, select(global0[_wgslsmith_index_u32(1u, 12u)], var_0.c.a, arg_1 != 4294967295u)), var_0.c.b.zyz, var_0.b), select(!arg_0.b.ww, arg_0.b.ww, func_2(select(!vec3<bool>(false, true, global0[_wgslsmith_index_u32(4294967295u, 12u)]), func_2(arg_0.b.zzw, var_0.b.zy, var_0, 1077f).b.wzw, true), !vec2<bool>(arg_0.a, true), Struct_2(_wgslsmith_clamp_vec2_i32(arg_0.c.xx, vec2<i32>(2147483647i, -2147483647i), arg_0.c.xz), var_0.c.b.zyx, func_2(vec3<bool>(true, false, false), vec2<bool>(arg_0.a, false), var_0, 180f)), -776f).a), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1025f)), 283f)))).d.x;
    var var_1 = Struct_2(abs(~(~u_input.d.xx >> (~u_input.b % vec2<u32>(32u)))), var_0.b, Struct_1(arg_0.c.x < arg_0.c.x, func_2(!func_2(vec3<bool>(var_0.c.a, var_0.c.a, global0[_wgslsmith_index_u32(80669u, 12u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 12u)]), var_0, -322f).b.zwy, select(func_2(arg_0.b.yyx, vec2<bool>(var_0.b.x, arg_0.a), var_0, 1000f).b.xy, var_0.c.b.xz, !arg_0.b.zz), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1047f * 509f))).b, ~(-vec3<i32>(u_input.c, 19554i, var_0.a.x)), var_0.c.d));
    return Struct_2(select(u_input.d.yz, var_1.a, !var_0.c.b.zz), select(select(var_1.c.b.zyw, vec3<bool>(true, !var_0.c.a, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1, u_input.b.x), 12u)]), var_1.c.b.xxy), !func_2(var_0.b, select(vec2<bool>(false, var_0.c.b.x), vec2<bool>(var_0.b.x, true), arg_0.b.wz), Struct_2(vec2<i32>(-2147483647i, -9528i), vec3<bool>(global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(u_input.b.x, 12u)], arg_0.b.x), Struct_1(true, var_1.c.b, vec3<i32>(arg_0.d.x, u_input.c, 2147483647i), vec4<i32>(var_0.c.c.x, 43140i, -2147483647i, -30718i))), _wgslsmith_f_op_f32(step(1527f, -475f))).b.yxw, arg_0.b.xzx), Struct_1(global0[_wgslsmith_index_u32(arg_1, 12u)] && var_0.c.a, arg_0.b, arg_0.d.yyx, arg_0.d));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = func_2(!select(arg_2.b, arg_2.c.b.zyx, arg_2.b), !select(!(!arg_2.c.b.wz), !select(vec2<bool>(false, true), vec2<bool>(arg_0.x, true), vec2<bool>(arg_0.x, arg_2.b.x)), any(!vec3<bool>(true, false, global0[_wgslsmith_index_u32(73594u, 12u)]))), func_4(func_2(!arg_2.c.b.zzx, func_2(!arg_2.b, arg_2.b.yy, Struct_2(vec2<i32>(-1i, u_input.c), vec3<bool>(arg_2.c.b.x, false, false), arg_2.c), arg_1.x).b.xz, Struct_2(_wgslsmith_div_vec2_i32(vec2<i32>(arg_2.a.x, arg_2.c.d.x), u_input.d.yz), func_2(vec3<bool>(false, false, false), arg_2.c.b.xx, arg_2, 1243f).b.xxw, arg_2.c), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.x)))), ~(~u_input.b.x)), 396f);
    var var_1 = vec4<i32>(-_wgslsmith_add_i32(_wgslsmith_mod_i32(~2147483647i, u_input.c), firstLeadingBit(var_0.c.x)), u_input.d.x, 1i, func_2(func_4(Struct_1(all(vec3<bool>(var_0.b.x, true, false)), vec4<bool>(arg_2.b.x, arg_2.c.a, true, false), vec3<i32>(arg_2.c.c.x, var_0.c.x, arg_2.c.c.x) << (vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) % vec3<u32>(32u)), ~vec4<i32>(-1i, arg_2.a.x, u_input.d.x, 0i)), ~_wgslsmith_add_u32(u_input.a.x, u_input.b.x)).b, arg_0, func_4(Struct_1(false, var_0.b, _wgslsmith_clamp_vec3_i32(var_0.c, vec3<i32>(7055i, 2147483647i, var_0.c.x), arg_2.c.d.yzx), _wgslsmith_add_vec4_i32(vec4<i32>(-8313i, u_input.c, var_0.c.x, 48078i), var_0.d)), abs(u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-657f, 2637f))).d.x);
    var var_2 = vec3<u32>(~(~4294967295u), u_input.a.x, ~(~_wgslsmith_mult_u32(4294967295u, u_input.b.x))) >> ((vec3<u32>(0u, u_input.b.x & _wgslsmith_mod_u32(29473u, u_input.b.x), u_input.b.x) | ~vec3<u32>(~u_input.b.x, min(0u, u_input.a.x), u_input.b.x)) % vec3<u32>(32u));
    var var_3 = abs(-18891i);
    var var_4 = arg_2.c;
    return func_4(arg_2.c, ~1u);
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: vec4<bool>, arg_3: Struct_3) -> vec4<i32> {
    let var_0 = u_input.a.x;
    var var_1 = func_5(arg_0.b.yy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(559f))), _wgslsmith_f_op_f32(trunc(-780f)))), func_4(func_2(!arg_3.b.b.xww, arg_0.b.xx, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, 656f, arg_0.b.x)))), var_0));
    var var_2 = arg_3;
    var var_3 = true;
    var var_4 = select(vec4<bool>(true, any(func_5(!vec2<bool>(true, arg_0.b.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 654f) - vec2<f32>(-1172f, -146f)), func_4(var_2.b, 15771u)).b), true, false), func_2(!vec3<bool>(func_4(var_1.c, 0u).c.b.x, func_4(Struct_1(var_2.c, var_1.c.b, arg_3.a, arg_3.b.d), 4142u).b.x, true), arg_3.b.b.xw, Struct_2(vec2<i32>(func_4(var_1.c, var_0).c.c.x, arg_1), !func_4(Struct_1(false, arg_0.c.b, vec3<i32>(41195i, 1i, var_2.a.x), arg_3.b.d), var_0).b, func_2(arg_0.c.b.yyy, select(vec2<bool>(true, var_2.b.b.x), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], false), false), Struct_2(vec2<i32>(-18608i, arg_1), vec3<bool>(false, var_1.c.b.x, arg_0.b.x), var_2.b), _wgslsmith_f_op_f32(select(-548f, 3266f, arg_2.x)))), -687f).b, select(select(func_4(Struct_1(var_1.b.x, var_1.c.b, vec3<i32>(var_2.a.x, var_1.c.d.x, arg_0.a.x), vec4<i32>(arg_3.b.c.x, 1i, arg_0.a.x, arg_0.c.c.x)), ~var_0).c.b, func_5(select(var_1.b.zy, vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 12u)]), true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(489f, 1054f)), Struct_2(vec2<i32>(1i, -20319i), arg_3.b.b.ywx, Struct_1(arg_0.c.a, arg_3.b.b, vec3<i32>(-10490i, u_input.c, var_2.b.d.x), vec4<i32>(-29488i, var_1.c.c.x, var_2.a.x, 16732i)))).c.b, !select(arg_0.c.b, vec4<bool>(var_2.b.b.x, arg_3.b.a, true, arg_0.c.b.x), false)), var_2.b.b, false));
    return vec4<i32>(-25940i, 1i, var_1.a.x, _wgslsmith_mod_i32(~0i, min(var_2.a.x | -1i, arg_1))) | vec4<i32>(var_2.a.x, i32(-1i) * -(~32954i), func_3(false).x, func_3(select(true, !arg_3.c, true)).x);
}

fn func_6(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: bool, arg_3: vec4<i32>) -> vec4<i32> {
    var var_0 = select(!func_4(Struct_1(true, select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 12u)], true, true, true), vec4<bool>(arg_0.x, true, arg_0.x, true), false), vec3<i32>(0i, -17414i, arg_3.x), firstTrailingBit(vec4<i32>(arg_1.x, arg_3.x, -18648i, 0i))), firstLeadingBit(max(u_input.a.x, u_input.b.x))).c.b.xzw, vec3<bool>(all(!(!vec4<bool>(true, arg_0.x, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], global0[_wgslsmith_index_u32(u_input.b.x, 12u)]))), false || global0[_wgslsmith_index_u32(~max(u_input.b.x, u_input.b.x), 12u)], func_5(vec2<bool>(true, arg_2), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-676f, -127f))), func_4(Struct_1(arg_2, vec4<bool>(arg_0.x, true, false, false), vec3<i32>(1i, arg_1.x, arg_1.x), arg_3), 10129u)).c.b.x & arg_0.x), func_4(Struct_1(arg_0.x, select(select(vec4<bool>(false, arg_0.x, arg_0.x, arg_2), vec4<bool>(arg_0.x, true, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], false), true), select(vec4<bool>(false, true, true, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], true, arg_0.x, global0[_wgslsmith_index_u32(u_input.b.x, 12u)]), vec4<bool>(arg_2, arg_2, false, global0[_wgslsmith_index_u32(u_input.b.x, 12u)])), vec4<bool>(arg_2, arg_2, true, arg_2)), func_2(!vec3<bool>(arg_0.x, false, global0[_wgslsmith_index_u32(0u, 12u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 12u)]), Struct_2(u_input.d.zy, vec3<bool>(false, false, global0[_wgslsmith_index_u32(1u, 12u)]), Struct_1(arg_0.x, vec4<bool>(true, arg_2, global0[_wgslsmith_index_u32(89181u, 12u)], arg_0.x), u_input.d, vec4<i32>(2147483647i, -3683i, 0i, -31661i))), 1000f).d.yyz, vec4<i32>(func_5(arg_0, vec2<f32>(-229f, 1282f), Struct_2(vec2<i32>(61403i, -2147483647i), vec3<bool>(false, true, global0[_wgslsmith_index_u32(0u, 12u)]), Struct_1(false, vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], true, global0[_wgslsmith_index_u32(35130u, 12u)], true), vec3<i32>(u_input.c, u_input.d.x, -2147483647i), vec4<i32>(2147483647i, arg_3.x, 18843i, -17600i)))).a.x, -23228i, _wgslsmith_sub_i32(2075i, u_input.d.x), u_input.d.x)), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(36181u, u_input.b.x, 1u, u_input.b.x)), select(vec4<u32>(u_input.a.x, u_input.a.x, 55696u, u_input.b.x), vec4<u32>(1u, 1u, 1u, u_input.a.x), vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(19532u, 12u)]))), u_input.b.x)).b);
    global1 = func_2(!vec3<bool>(var_0.x, func_4(func_4(Struct_1(true, vec4<bool>(false, arg_0.x, var_0.x, var_0.x), vec3<i32>(arg_1.x, 2147483647i, arg_3.x), vec4<i32>(u_input.d.x, 25958i, arg_3.x, arg_3.x)), u_input.b.x).c, u_input.b.x).c.b.x, true), !func_2(func_5(func_5(var_0.yx, vec2<f32>(-1000f, 1198f), Struct_2(vec2<i32>(arg_3.x, 22507i), vec3<bool>(false, arg_2, false), Struct_1(var_0.x, vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 12u)], false, false, global0[_wgslsmith_index_u32(6288u, 12u)]), vec3<i32>(21132i, -30879i, u_input.d.x), arg_3))).b.zx, _wgslsmith_f_op_vec2_f32(vec2<f32>(104f, 732f) + vec2<f32>(1945f, 644f)), func_4(Struct_1(arg_2, vec4<bool>(true, true, true, false), u_input.d, vec4<i32>(arg_3.x, 29105i, arg_3.x, 2147483647i)), 4294967295u)).c.b.yxx, vec2<bool>(var_0.x, arg_2 || false), Struct_2(arg_1, select(vec3<bool>(false, false, arg_2), vec3<bool>(arg_2, true, false), vec3<bool>(arg_0.x, false, true)), func_2(vec3<bool>(var_0.x, true, arg_0.x), vec2<bool>(false, arg_0.x), Struct_2(vec2<i32>(11136i, arg_1.x), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 12u)], global0[_wgslsmith_index_u32(u_input.b.x, 12u)]), Struct_1(true, vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], arg_2, true, false), vec3<i32>(arg_1.x, arg_1.x, -8639i), vec4<i32>(1i, 4519i, -9397i, u_input.d.x))), 1000f)), -646f).b.yy, Struct_2(_wgslsmith_add_vec2_i32(func_5(var_0.xy, vec2<f32>(-1332f, 571f), Struct_2(vec2<i32>(arg_3.x, -3174i), vec3<bool>(false, true, arg_2), Struct_1(true, vec4<bool>(false, arg_0.x, false, true), vec3<i32>(arg_3.x, arg_1.x, arg_3.x), arg_3))).a, arg_3.yy) << (~u_input.b % vec2<u32>(32u)), !func_5(select(var_0.zx, var_0.yx, vec2<bool>(false, arg_2)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-273f, -765f), vec2<f32>(165f, 1946f))), func_4(Struct_1(true, vec4<bool>(arg_0.x, arg_2, arg_2, false), u_input.d, vec4<i32>(-2147483647i, 10655i, arg_1.x, 2962i)), 1u)).b, Struct_1((16206i >> (u_input.a.x % 32u)) >= _wgslsmith_mult_i32(arg_3.x, -2147483647i), vec4<bool>(arg_0.x, false, func_2(vec3<bool>(arg_2, false, true), vec2<bool>(false, false), Struct_2(u_input.d.yz, vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 12u)], arg_0.x, true), Struct_1(true, vec4<bool>(arg_2, false, true, arg_2), arg_3.zxw, arg_3)), -1020f).b.x, false), u_input.d, arg_3)), _wgslsmith_f_op_f32(round(1f))).c.x;
    global0 = array<bool, 12>();
    let var_1 = ~reverseBits(_wgslsmith_clamp_vec4_u32(~(vec4<u32>(u_input.b.x, u_input.b.x, 20790u, u_input.a.x) ^ vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 26967u, 40225u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(15829u, 13444u, 4294967295u, u_input.a.x), vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.b.x), vec4<u32>(75727u, 4294967295u, 61561u, 43643u))), ~(~vec4<u32>(72089u, 4294967295u, u_input.a.x, u_input.b.x))));
    var var_2 = var_1;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    var var_1 = select(_wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.d.x, countOneBits(17928i), ~(-1i), abs(-1i)), _wgslsmith_add_vec4_i32(func_6(vec2<bool>(true, true), -vec2<i32>(u_input.d.x, u_input.c), any(vec2<bool>(global0[_wgslsmith_index_u32(0u, 12u)], true)), func_1(Struct_2(u_input.d.xz, vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], false), Struct_1(true, vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], true, false), vec3<i32>(0i, u_input.c, u_input.c), vec4<i32>(2147483647i, u_input.d.x, 10174i, 76103i))), u_input.d.x, vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 12u)], false, false, global0[_wgslsmith_index_u32(0u, 12u)]), Struct_3(vec3<i32>(u_input.c, u_input.c, -3288i), Struct_1(true, vec4<bool>(true, false, global0[_wgslsmith_index_u32(1u, 12u)], false), u_input.d, vec4<i32>(u_input.d.x, 1i, 0i, u_input.d.x)), true))), func_5(vec2<bool>(true, false), vec2<f32>(1336f, -780f), Struct_2(u_input.d.yx, vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], false), Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(u_input.b.x, 12u)], global0[_wgslsmith_index_u32(1u, 12u)]), u_input.d, vec4<i32>(0i, 1i, u_input.c, u_input.d.x)))).c.d >> (max(vec4<u32>(u_input.a.x, u_input.b.x, 87774u, u_input.b.x), vec4<u32>(24380u, 49316u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)))), u_input.d.x, !all(!(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)], false, true))));
    let var_2 = vec4<i32>(_wgslsmith_mult_i32(-25366i, u_input.d.x) << (u_input.b.x % 32u), 15978i, min(firstTrailingBit(u_input.c), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, u_input.d.x), ~u_input.d.yx), 14992i)), 30571i);
    global0 = array<bool, 12>();
    let var_3 = vec2<i32>(-func_1(Struct_2(_wgslsmith_mult_vec2_i32(vec2<i32>(var_2.x, -1i), vec2<i32>(var_2.x, u_input.c)), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], global0[_wgslsmith_index_u32(u_input.b.x, 12u)], false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 12u)], global0[_wgslsmith_index_u32(u_input.b.x, 12u)], true), global0[_wgslsmith_index_u32(4294967295u, 12u)]), func_5(vec2<bool>(true, global0[_wgslsmith_index_u32(6195u, 12u)]), vec2<f32>(-198f, 106f), Struct_2(vec2<i32>(var_2.x, -18832i), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 12u)], false, true), Struct_1(global0[_wgslsmith_index_u32(67782u, 12u)], vec4<bool>(global0[_wgslsmith_index_u32(1u, 12u)], false, false, true), vec3<i32>(6814i, 2147483647i, u_input.c), vec4<i32>(-41225i, u_input.c, u_input.c, u_input.c)))).c), _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, var_2.x, u_input.d.x), vec3<i32>(var_2.x, u_input.c, -2147483647i)), vec4<bool>(false, true, true, !global0[_wgslsmith_index_u32(u_input.b.x, 12u)]), Struct_3(u_input.d >> (vec3<u32>(1u, u_input.a.x, u_input.b.x) % vec3<u32>(32u)), func_5(vec2<bool>(global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(u_input.a.x, 12u)]), vec2<f32>(-114f, -468f), Struct_2(vec2<i32>(var_2.x, -1i), vec3<bool>(global0[_wgslsmith_index_u32(1u, 12u)], false, false), Struct_1(false, vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(37484u, 12u)]), vec3<i32>(2147483647i, -2147483647i, -1i), vec4<i32>(0i, 0i, 0i, u_input.d.x)))).c, true)).x, 1172i);
    global1 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(287f, 591f))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1384f * -1986f), _wgslsmith_f_op_f32(f32(-1f) * -1119f))))), var_2.x, var_2.x);
}

