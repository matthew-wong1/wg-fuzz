struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1812f, 956f, 1365f);

var<private> global1: f32 = 426f;

var<private> global2: array<u32, 2> = array<u32, 2>(1u, 4294967295u);

var<private> global3: array<f32, 2> = array<f32, 2>(211f, -933f);

var<private> global4: bool = false;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: vec2<f32>) -> vec4<f32> {
    global4 = true;
    let var_0 = Struct_2(u_input.c, all(!vec3<bool>(false, -866f >= global0.x, true)));
    global4 = all(!vec3<bool>(var_0.b, all(vec3<bool>(false, var_0.b, var_0.b)), !var_0.b)) & false;
    let var_1 = all(!vec4<bool>(var_0.b, true, false, var_0.b));
    global1 = 264f;
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, global0.x, 397f, global3[_wgslsmith_index_u32(3827u, 2u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-701f, 1159f, global3[_wgslsmith_index_u32(arg_1.c.x, 2u)], -1000f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1031f, -1000f, global0.x))))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_1) -> i32 {
    let var_0 = vec3<bool>(true, true, true);
    let var_1 = vec2<i32>(-15038i, _wgslsmith_mod_i32(~(-9377i), arg_3.b.x));
    global0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, 1717f, global3[_wgslsmith_index_u32(arg_1, 2u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.yyz + arg_0.zyw) * _wgslsmith_f_op_vec3_f32(sign(arg_0.zzx)))))));
    let var_2 = _wgslsmith_f_op_f32(-885f + -945f) < global3[_wgslsmith_index_u32(arg_1, 2u)];
    var var_3 = global3[_wgslsmith_index_u32(~55520u, 2u)];
    return _wgslsmith_sub_i32(0i, i32(-1i) * -(i32(-1i) * -2147483647i));
}

fn func_2(arg_0: i32, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = ~vec3<i32>(func_4(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_sub_vec2_u32(u_input.b.zx, vec2<u32>(global2[_wgslsmith_index_u32(0u, 2u)], 1u)), Struct_3(vec3<f32>(2928f, global0.x, 1238f), vec4<i32>(0i, -2147483647i, 29818i, arg_1.x), vec2<u32>(u_input.b.x, 86603u), -1224f), global0.yz)), ~_wgslsmith_sub_u32(u_input.c.x, 1u), select(~vec4<i32>(-12794i, arg_0, 0i, -1i), vec4<i32>(2147483647i, arg_1.x, arg_1.x, 1i), true), Struct_1(~1u, -vec2<i32>(arg_0, arg_0), abs(vec4<i32>(arg_1.x, arg_0, arg_1.x, -2147483647i)))), -44371i, -(abs(arg_1.x) | arg_0));
    var var_1 = global0.zy;
    var var_2 = -(~(reverseBits(-vec2<i32>(var_0.x, -11582i)) << (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, global2[_wgslsmith_index_u32(1u, 2u)], u_input.a, u_input.b.x), vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 2u)], 1u, 38722u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(6450u, 2u)], 2u)])), ~global2[_wgslsmith_index_u32(25175u, 2u)]) % vec2<u32>(32u))));
    var var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -189f, 1000f))))))));
    let var_4 = vec3<bool>(any(vec4<bool>(true, true, true, true)), false, any(!(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)))));
    return Struct_1(min(~_wgslsmith_mod_u32(_wgslsmith_div_u32(0u, u_input.c.x), u_input.a << (0u % 32u)), _wgslsmith_div_u32(~firstLeadingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 2u)], 2u)]), ~4294967295u)), max(select(~vec2<i32>(1i, 2417i), vec2<i32>(~2147483647i, 48716i), _wgslsmith_f_op_f32(abs(global0.x)) != _wgslsmith_f_op_f32(var_3.x - -405f)), vec2<i32>(abs(_wgslsmith_div_i32(-41966i, var_2.x)), 1i)), _wgslsmith_div_vec4_i32(countOneBits(max(vec4<i32>(0i, var_2.x, 28442i, 33364i), select(vec4<i32>(5569i, 1i, arg_1.x, arg_0), vec4<i32>(var_2.x, arg_0, var_0.x, 18320i), vec4<bool>(true, true, var_4.x, false)))), vec4<i32>(arg_1.x, ~arg_1.x << (abs(u_input.b.x) % 32u), arg_1.x, _wgslsmith_clamp_i32(arg_0, 21750i, -54623i) | 1i)));
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    global4 = true || all(select(vec4<bool>(arg_1 == 0u, true, all(vec3<bool>(false, false, false)), global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 2u)] == global0.x), vec4<bool>(true, true, true, true), true));
    global4 = true;
    return func_2(arg_0, -arg_2.c.yx ^ countOneBits(arg_2.c.ww));
}

fn func_6(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: i32) -> vec3<f32> {
    let var_0 = _wgslsmith_div_i32(arg_2.b.x, -2147483647i) >> (~(~_wgslsmith_sub_u32(arg_2.c.x, 1u >> (arg_0.a % 32u))) % 32u);
    global2 = array<u32, 2>();
    let var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -288f), 1000f, -2510f), countOneBits(arg_2.b | (_wgslsmith_mod_vec4_i32(arg_1, vec4<i32>(arg_0.b.x, -2147483647i, -1i, arg_3)) >> (abs(u_input.c) % vec4<u32>(32u)))), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(u_input.b.zz, vec2<u32>(~1u, _wgslsmith_mult_u32(11064u, u_input.b.x))), ~(~(~u_input.b.xz))), 2264f);
    let var_2 = arg_0;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.a.x, 455f, true)));
    return _wgslsmith_f_op_vec4_f32(func_3(~vec2<u32>(global2[_wgslsmith_index_u32(~(~26229u), 2u)], ~23937u), var_1, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.d), arg_2.a.x))))).yyz;
}

fn func_7(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(vec4<u32>(func_2(73079i, select(vec2<i32>(arg_2.c.x, 36459i), vec2<i32>(arg_2.b.x, -1i), vec2<bool>(false, false))).a ^ ~4294967295u, 13162u, _wgslsmith_mult_u32(~(~81462u), _wgslsmith_div_u32(max(0u, 0u), ~global2[_wgslsmith_index_u32(u_input.b.x, 2u)])), arg_2.a), true);
    let var_1 = reverseBits(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(arg_2.b.x, -1i, arg_2.c.x, arg_2.b.x), arg_2.c), -arg_2.c));
    let var_2 = Struct_3(vec3<f32>(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1665u, 2u)], 2u)])))), global0.x, -1239f), _wgslsmith_mult_vec4_i32(vec4<i32>(~arg_2.c.x, ~_wgslsmith_sub_i32(var_1.x, -1i), _wgslsmith_mult_i32(var_1.x, var_1.x), _wgslsmith_sub_i32(var_1.x, 1i)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.b.x, 0i, arg_2.b.x, 55271i), vec4<i32>(-30847i, 1i, var_1.x, var_1.x)) >> (min(0u, 0u) % 32u), 0i, _wgslsmith_div_i32(3631i, arg_2.b.x), 49233i)), ~var_0.a.wx, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.c, var_0.a), 2u)] - -928f));
    var var_3 = select(vec3<bool>(all(vec3<bool>(true, all(vec4<bool>(var_0.b, false, true, var_0.b)), 79337u >= var_0.a.x)), all(vec3<bool>(true, true, true)), any(select(vec2<bool>(false, false), vec2<bool>(var_0.b, true), any(vec4<bool>(false, var_0.b, var_0.b, var_0.b))))), !(!vec3<bool>(any(vec3<bool>(var_0.b, true, var_0.b)), all(vec3<bool>(false, true, var_0.b)), var_0.b)), (any(vec4<bool>(true, false, true, true)) || var_0.b) & all(!vec4<bool>(var_0.b, true, true, var_0.b)));
    global0 = _wgslsmith_f_op_vec3_f32(arg_0 + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-364f, 357f, var_3.x)) * global3[_wgslsmith_index_u32(~1u, 2u)]), arg_1, arg_1) - arg_0));
    return Struct_2(var_0.a, true);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: u32, arg_3: vec2<u32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -596f);
    let var_1 = func_7(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_6(func_5(-2147483647i, 86402u, func_2(arg_1.x, vec2<i32>(-1i, arg_1.x))), -arg_1, Struct_3(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2259f, -1000f, global0.x))), firstLeadingBit(vec4<i32>(arg_1.x, 0i, arg_1.x, -9573i)), u_input.b.zx, global3[_wgslsmith_index_u32(~1u, 2u)]), arg_1.x & arg_1.x))), 1820f, func_5(_wgslsmith_div_i32(arg_1.x, arg_1.x) ^ 50489i, _wgslsmith_mult_u32(_wgslsmith_sub_u32(1u, _wgslsmith_add_u32(68436u, u_input.b.x)), arg_2), func_5(_wgslsmith_dot_vec4_i32(vec4<i32>(20715i, -45949i, arg_1.x, -1i), -vec4<i32>(14221i, arg_1.x, 80915i, 2147483647i)), u_input.b.x, Struct_1(~arg_3.x, _wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.x, arg_1.x), vec2<i32>(arg_1.x, -59014i)), vec4<i32>(arg_1.x, 1i, -4677i, -2147483647i)))));
    return Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 2u)]), _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 62064u), 2u)]))), -1342f), max(countOneBits(vec4<i32>(2147483647i, func_5(-1i, 23344u, Struct_1(59698u, vec2<i32>(arg_1.x, arg_1.x), arg_1)).c.x, arg_1.x ^ 1i, countOneBits(arg_1.x))), _wgslsmith_mod_vec4_i32(~select(vec4<i32>(0i, 6970i, 1i, arg_1.x), arg_1, true), select(vec4<i32>(arg_1.x, arg_1.x, arg_1.x, 57187i) >> (vec4<u32>(global2[_wgslsmith_index_u32(arg_3.x, 2u)], 4294967295u, arg_0.x, 0u) % vec4<u32>(32u)), arg_1, false))), ~firstLeadingBit(~vec2<u32>(arg_0.x, 4294967295u)), _wgslsmith_f_op_f32(round(var_0)));
}

fn func_8(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3) -> u32 {
    var var_0 = Struct_3(arg_2.a, vec4<i32>(-14613i, ~arg_1.b.x, -2147483647i >> (~_wgslsmith_mult_u32(u_input.b.x, arg_1.c.x) % 32u), _wgslsmith_div_i32(17253i, abs(~arg_2.b.x))), ~(~u_input.c.wy), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(850f, _wgslsmith_div_f32(func_1(arg_1.c, vec4<i32>(arg_1.b.x, arg_2.b.x, -2147483647i, arg_0.b.x), arg_2.c.x, arg_0.c).d, -257f), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d) * _wgslsmith_f_op_f32(635f - _wgslsmith_f_op_f32(floor(arg_2.a.x)))))));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(step(-769f, 1126f)), _wgslsmith_f_op_vec3_f32(func_6(func_2(arg_2.b.x, vec2<i32>(-arg_2.b.x, -1i)), abs(-_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.b.x, -1i, -7284i, arg_1.b.x), vec4<i32>(0i, arg_1.b.x, -2147483647i, 0i))), Struct_3(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -637f), global3[_wgslsmith_index_u32(65936u, 2u)], 526f), vec4<i32>(_wgslsmith_mod_i32(arg_1.b.x, arg_2.b.x), -2147483647i, countOneBits(var_0.b.x), _wgslsmith_mod_i32(arg_1.b.x, var_0.b.x)), ~(~var_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(arg_2.c.x, 2u)])))), var_0.b.x)).x, _wgslsmith_f_op_f32(global0.x - -343f));
    var_0 = func_1(u_input.c.wy, abs(~min(arg_2.b, arg_1.b)) >> (_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(11168u, arg_2.c.x, 40107u, 3362u)) << (reverseBits(u_input.c) % vec4<u32>(32u)), vec4<u32>(~arg_0.c.x, u_input.a, _wgslsmith_mod_u32(4294967295u, arg_2.c.x), var_0.c.x)) % vec4<u32>(32u)), _wgslsmith_div_u32(arg_2.c.x, ~(~0u)), vec2<u32>(arg_1.c.x, 22506u));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + -996f), global0.x);
    var var_2 = func_7(arg_1.a, global3[_wgslsmith_index_u32(arg_2.c.x, 2u)], Struct_1(global2[_wgslsmith_index_u32(0u, 2u)], -arg_1.b.yy, vec4<i32>(2147483647i, abs(~var_0.b.x), -42750i, ~arg_2.b.x)));
    return _wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(firstTrailingBit(arg_1.c), ~(arg_1.c | var_0.c)), countOneBits(var_2.a.xx));
}

fn func_9(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: Struct_3) -> StorageBuffer {
    global1 = arg_3.a.x;
    let var_0 = select(select(select(select(select(vec3<bool>(true, arg_1.b, false), vec3<bool>(arg_1.b, true, true), vec3<bool>(arg_1.b, false, arg_1.b)), vec3<bool>(true, true, true), !vec3<bool>(arg_1.b, false, arg_1.b)), select(!vec3<bool>(false, arg_1.b, false), !vec3<bool>(arg_1.b, true, arg_1.b), arg_1.b), true), select(!vec3<bool>(false, arg_1.b, arg_1.b), vec3<bool>(!arg_1.b, arg_1.b && arg_1.b, any(vec3<bool>(arg_1.b, arg_1.b, false))), false), select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, arg_1.b, arg_1.b), vec3<bool>(true, true, arg_1.b)), vec3<bool>(arg_1.b, true, arg_1.b), arg_1.b), !select(vec3<bool>(true, arg_1.b, arg_1.b), vec3<bool>(arg_1.b, true, arg_1.b), arg_1.b), !select(vec3<bool>(arg_1.b, arg_1.b, arg_1.b), vec3<bool>(true, arg_1.b, false), vec3<bool>(true, arg_1.b, true)))), !vec3<bool>(arg_1.b, all(select(vec2<bool>(true, true), vec2<bool>(arg_1.b, arg_1.b), vec2<bool>(false, arg_1.b))), true), !select(!vec3<bool>(arg_1.b, arg_1.b, arg_1.b), select(vec3<bool>(true, arg_1.b, arg_1.b), select(vec3<bool>(false, arg_1.b, arg_1.b), vec3<bool>(arg_1.b, arg_1.b, arg_1.b), vec3<bool>(true, arg_1.b, arg_1.b)), any(vec2<bool>(false, false))), ~arg_0.x > max(1u, arg_0.x)));
    var var_1 = _wgslsmith_clamp_u32(u_input.b.x, ~(~(arg_2.x ^ _wgslsmith_mult_u32(33062u, global2[_wgslsmith_index_u32(arg_2.x, 2u)]))), global2[_wgslsmith_index_u32(96212u >> (arg_3.c.x % 32u), 2u)]);
    var var_2 = arg_1.b;
    let var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(arg_3.a)) - arg_3.a) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1402f, global3[_wgslsmith_index_u32(arg_3.c.x, 2u)], -2933f), arg_3.a)))), -vec4<i32>(arg_3.b.x & (-2147483647i | arg_3.b.x), arg_3.b.x, ~func_5(5966i, arg_0.x, Struct_1(arg_0.x, arg_3.b.xx, arg_3.b)).c.x, firstTrailingBit(-24418i)), arg_3.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(930f))));
    return StorageBuffer(~_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.a.x, 4294967295u, arg_3.c.x), vec3<u32>(4294967295u, u_input.a, u_input.b.x)), u_input.c.zyw) | arg_1.a.zzx, func_7(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1398f, 709f, -231f)), global0.x, Struct_1(_wgslsmith_clamp_u32(~arg_3.c.x, _wgslsmith_mult_u32(arg_3.c.x, 0u), min(u_input.a, u_input.b.x)), ~var_3.b.wy, reverseBits(vec4<i32>(var_3.b.x, arg_3.b.x, arg_3.b.x, var_3.b.x)))).a.xy);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_9(vec2<u32>(max(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 2u)], 2u)] >> (u_input.a % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 2u)], 2u)], 63311u), vec2<u32>(0u, 0u))) >> (4294967295u % 32u), func_8(Struct_3(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 2u)], -754f, global0.x), vec3<f32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(49083u, 2u)], 2u)], global3[_wgslsmith_index_u32(4294967295u, 2u)], -636f))), max(vec4<i32>(0i, -43147i, 46228i, 0i), vec4<i32>(-38295i, -17258i, -2147483647i, -9662i)), ~u_input.b.zx, _wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.a, 2u)], global0.x)), func_1(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, u_input.b.x), u_input.b.yy), ~vec4<i32>(0i, 2147483647i, -27609i, -7502i), _wgslsmith_dot_vec3_u32(u_input.c.xxw, vec3<u32>(global2[_wgslsmith_index_u32(u_input.a, 2u)], global2[_wgslsmith_index_u32(u_input.a, 2u)], global2[_wgslsmith_index_u32(0u, 2u)])), u_input.b.xy), Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(0u, 2u)], 170f, -133f)), vec4<i32>(13662i, 1i, -18858i, -2147483647i) >> (u_input.c % vec4<u32>(32u)), _wgslsmith_clamp_vec2_u32(u_input.b.xz, vec2<u32>(30292u, u_input.b.x), u_input.c.ww), global3[_wgslsmith_index_u32(select(56502u, 20112u, true), 2u)]))), Struct_2(select(min(firstTrailingBit(u_input.c), _wgslsmith_div_vec4_u32(vec4<u32>(9515u, global2[_wgslsmith_index_u32(0u, 2u)], 25352u, 98506u), vec4<u32>(4294967295u, u_input.a, global2[_wgslsmith_index_u32(0u, 2u)], 4294967295u))), vec4<u32>(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(63645u, 2u)], 2u)], 2u)], 2u)], 82025u, 1u, ~u_input.b.x), false), any(vec2<bool>(true, true))), ~vec3<u32>(~abs(129863u), u_input.a, _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(16864u, 2u)] >> (54080u % 32u), ~u_input.c.x)), Struct_3(vec3<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-100f + -1195f)), _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_sub_vec2_u32(vec2<u32>(35531u, global2[_wgslsmith_index_u32(u_input.b.x, 2u)]), vec2<u32>(4294967295u, u_input.c.x)), Struct_3(vec3<f32>(240f, 679f, global0.x), vec4<i32>(0i, 0i, -2147483647i, -9566i), vec2<u32>(u_input.b.x, global2[_wgslsmith_index_u32(0u, 2u)]), global3[_wgslsmith_index_u32(u_input.a, 2u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(753f, global3[_wgslsmith_index_u32(7580u, 2u)]) + vec2<f32>(global0.x, global3[_wgslsmith_index_u32(u_input.b.x, 2u)])))).x, -2563f), -vec4<i32>(1i, 1i, 1i, 1i) ^ func_1(u_input.c.xz, ~vec4<i32>(-1i, -24639i, 6795i, 52503i), firstTrailingBit(global2[_wgslsmith_index_u32(u_input.c.x, 2u)]), vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(90996u, 2u)])).b, u_input.c.xy, 1413f));
}

