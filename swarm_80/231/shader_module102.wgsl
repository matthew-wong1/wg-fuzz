struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec4<f32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec3<f32>,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: Struct_2,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<i32, 30> = array<i32, 30>(-1i, 2147483647i, -15542i, -1i, 34781i, 6927i, 1i, 2147483647i, -5557i, -1i, -1i, 290i, 39674i, 1i, -31880i, 1i, 0i, i32(-2147483648), -32210i, -1i, -1i, 1i, 3123i, -1i, 2147483647i, -1i, -1i, -46470i, 0i, 0i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_2) -> f32 {
    var var_0 = firstLeadingBit(vec3<i32>(arg_1.a.d.x, 1i, u_input.b.x) | vec3<i32>(arg_2.d.a.x, -abs(2147483647i), 1i));
    let var_1 = global0.d;
    var var_2 = Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_3.c.x * 350f))), arg_3.d.c.x)))), vec3<f32>(-549f, _wgslsmith_f_op_f32(-arg_2.c.x), global0.d.c.x), var_1.d.x, Struct_2(false, ~abs(_wgslsmith_dot_vec4_u32(global0.d.e, arg_1.a.e)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-770f)), _wgslsmith_f_op_f32(-898f * var_1.c.x), _wgslsmith_f_op_f32(471f + arg_3.c.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_1.a.c.zww, arg_2.d.c.xww))), Struct_1(countOneBits(select(arg_1.a.d, arg_3.d.a, arg_1.a.b.x)), arg_1.a.b, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(116f, -694f, arg_2.c.x, global0.d.c.x))), (arg_0 & global0.d.a) | _wgslsmith_add_vec4_i32(arg_0, arg_2.d.d), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.d.e.x, 40532u, 4294967295u, arg_2.d.e.x) | vec4<u32>(arg_1.a.e.x, 2725u, arg_1.a.e.x, 84730u), vec4<u32>(arg_3.b, 104637u, 9722u, 44155u))), ~vec4<u32>(~42675u, arg_2.b, _wgslsmith_mod_u32(12498u, var_1.e.x), _wgslsmith_dot_vec4_u32(vec4<u32>(43413u, arg_2.e.x, arg_1.a.e.x, 90808u), vec4<u32>(22044u, arg_1.a.e.x, arg_1.a.e.x, arg_1.a.e.x)))));
    global1 = array<i32, 30>();
    let var_3 = Struct_3(arg_1.a);
    return _wgslsmith_f_op_f32(-1f);
}

fn func_2() -> Struct_4 {
    let var_0 = !(!(!(!vec3<bool>(global0.a, global0.d.b.x, global0.a))));
    global1 = array<i32, 30>();
    let var_1 = Struct_1(~vec4<i32>(-22427i, _wgslsmith_clamp_i32(global0.d.d.x, u_input.a.x, _wgslsmith_mult_i32(u_input.b.x, global0.d.d.x)), ~(i32(-1i) * -27489i), _wgslsmith_sub_i32(-1i, u_input.b.x)), vec2<bool>(var_0.x, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(555f, -1127f, global0.d.c.x, global0.c.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.c.x, -401f, global0.d.c.x, global0.c.x) + _wgslsmith_div_vec4_f32(vec4<f32>(1416f, 389f, global0.c.x, global0.d.c.x), global0.d.c)))), vec4<i32>(1i, select(-2396i, 0i, true), global0.d.a.x, -_wgslsmith_clamp_i32(global0.d.d.x | global1[_wgslsmith_index_u32(global0.e.x, 30u)], 0i, reverseBits(u_input.a.x))), ~vec4<u32>(global0.b | 45422u, global0.b, _wgslsmith_mod_u32(global0.b, 37476u), ~global0.e.x) & vec4<u32>(global0.d.e.x, 82569u, select(4294967295u, _wgslsmith_mod_u32(global0.e.x, global0.e.x), var_0.x), ~(global0.d.e.x ^ 0u)));
    global0 = Struct_2(!(abs(reverseBits(0u)) != global0.b), min(118623u, 91001u), vec3<f32>(var_1.c.x, 258f, _wgslsmith_f_op_f32(-778f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c.x, 950f)))), global0.d, ~vec4<u32>(firstTrailingBit(~14810u), _wgslsmith_sub_u32(1u, 1u), abs(select(4294967295u, 1u, true)), _wgslsmith_mult_u32(15920u, ~var_1.e.x)));
    var var_2 = vec3<bool>(var_0.x, false | (u_input.a.x > (firstTrailingBit(-46793i) << (global0.e.x % 32u))), !all(select(global0.d.b, vec2<bool>(var_0.x, false), var_0.x)));
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_1.a, Struct_3(var_1), Struct_2(false, _wgslsmith_dot_vec4_u32(var_1.e, global0.e), vec3<f32>(global0.c.x, -1585f, var_1.c.x), var_1, var_1.e), Struct_2(false, var_1.e.x, _wgslsmith_f_op_vec3_f32(round(global0.c)), Struct_1(global0.d.a, vec2<bool>(false, var_2.x), global0.d.c, vec4<i32>(-15868i, var_1.d.x, global1[_wgslsmith_index_u32(125209u, 30u)], -1i), vec4<u32>(0u, 1u, 0u, var_1.e.x)), global0.d.e)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_1.c.yzz), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.c.x, var_1.c.x, global0.c.x), vec3<f32>(-1627f, 1385f, 674f)))))) * _wgslsmith_f_op_vec3_f32(sign(global0.d.c.wzx))), var_1.d.x, Struct_2(true, global0.e.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-128f, 986f) * global0.d.c.x), var_1.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(470f)), -1000f, all(var_0)))), Struct_1(firstLeadingBit(abs(vec4<i32>(7230i, -1i, -2147483647i, global1[_wgslsmith_index_u32(var_1.e.x, 30u)]))), select(var_0.xx, var_0.xz, all(vec3<bool>(true, var_1.b.x, var_1.b.x))), global0.d.c, abs(-global0.d.a), _wgslsmith_mult_vec4_u32(max(vec4<u32>(global0.b, 35189u, 1603u, 54836u), vec4<u32>(12369u, 30628u, var_1.e.x, 77840u)), reverseBits(global0.e))), firstTrailingBit(global0.d.e)));
}

fn func_4(arg_0: Struct_4) -> Struct_5 {
    global1 = array<i32, 30>();
    global0 = arg_0.d;
    let var_0 = select(vec4<bool>(true, !(global0.b <= 1u) & false, true, true), !select(select(select(vec4<bool>(global0.a, false, true, global0.a), vec4<bool>(arg_0.d.d.b.x, arg_0.d.d.b.x, false, arg_0.d.a), true), vec4<bool>(false, true, false, arg_0.d.d.b.x), select(vec4<bool>(global0.a, arg_0.d.d.b.x, false, arg_0.d.a), vec4<bool>(false, arg_0.d.d.b.x, arg_0.d.a, true), vec4<bool>(global0.d.b.x, arg_0.d.d.b.x, true, false))), !select(vec4<bool>(arg_0.d.d.b.x, true, true, global0.d.b.x), vec4<bool>(global0.a, true, false, false), true), true), true);
    var var_1 = arg_0.d;
    global0 = func_2().d;
    return Struct_5(select(vec2<bool>(all(var_0), arg_0.d.d.b.x), vec2<bool>(~26949u <= ~var_1.d.e.x, var_1.d.b.x), select(arg_0.d.d.b, var_0.zz, var_1.d.b)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_5, arg_2: Struct_5) -> vec2<u32> {
    var var_0 = !arg_2.a;
    let var_1 = func_2();
    global1 = array<i32, 30>();
    var var_2 = !select(!select(!vec4<bool>(var_1.d.a, arg_0.b.x, true, arg_0.b.x), !vec4<bool>(var_1.d.d.b.x, false, true, global0.a), select(vec4<bool>(arg_0.b.x, arg_2.a.x, arg_2.a.x, global0.d.b.x), vec4<bool>(false, true, true, var_0.x), vec4<bool>(arg_2.a.x, true, false, arg_1.a.x))), select(vec4<bool>(arg_2.a.x, true, 255f <= global0.d.c.x, true), vec4<bool>(global0.d.b.x == false, true, var_1.d.b < 898u, !global0.a), vec4<bool>(all(vec4<bool>(true, false, var_1.d.a, global0.a)), true, !arg_2.a.x, false != arg_2.a.x)), select(!select(vec4<bool>(arg_2.a.x, global0.a, true, false), vec4<bool>(true, var_0.x, arg_0.b.x, var_0.x), vec4<bool>(false, true, arg_1.a.x, var_0.x)), select(!vec4<bool>(false, true, arg_1.a.x, false), vec4<bool>(false, false, var_0.x, false), vec4<bool>(var_0.x, false, true, var_0.x)), any(!vec3<bool>(var_1.d.d.b.x, global0.d.b.x, false))));
    var var_3 = Struct_3(Struct_1(vec4<i32>(-1i, -min(arg_0.a.x, -19731i), var_1.c, -46854i | _wgslsmith_div_i32(var_1.d.d.d.x, -2147483647i)), vec2<bool>(true, arg_0.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-526f, arg_0.c.x, 1000f, arg_0.c.x)))))), _wgslsmith_clamp_vec4_i32(-_wgslsmith_add_vec4_i32(global0.d.a, global0.d.a), _wgslsmith_sub_vec4_i32(global0.d.a, _wgslsmith_div_vec4_i32(vec4<i32>(-1i, -67118i, 25194i, arg_0.a.x), global0.d.a)), arg_0.d), ~((global0.e << (global0.d.e % vec4<u32>(32u))) & ~vec4<u32>(1u, global0.d.e.x, 1u, global0.d.e.x))));
    return ~(countOneBits(arg_0.e.wx) & ~var_3.a.e.yy);
}

fn func_6(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: Struct_4) -> Struct_4 {
    global0 = arg_2.d;
    global1 = array<i32, 30>();
    global0 = func_2().d;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(426f, arg_2.d.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.d.d.c.x - arg_2.d.d.c.x), _wgslsmith_div_f32(arg_2.b.x, -870f)))) > _wgslsmith_f_op_f32(947f * global0.d.c.x);
    let var_1 = -_wgslsmith_div_i32(9206i, 1i);
    return arg_2;
}

fn func_1(arg_0: f32, arg_1: Struct_4, arg_2: vec2<bool>) -> vec4<bool> {
    let var_0 = arg_1.d.d;
    var var_1 = arg_1;
    global0 = arg_1.d;
    global1 = array<i32, 30>();
    var_1 = func_6(vec2<i32>(arg_1.c, ~_wgslsmith_mod_i32(~u_input.b.x, -u_input.a.x)), func_5(Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(18983u, 30u)], 2147483647i, arg_1.c, -2147483647i) | _wgslsmith_div_vec4_i32(arg_1.d.d.a, vec4<i32>(0i, 2147483647i, 3260i, var_0.d.x)), var_0.b, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(363f, 1000f, arg_0, global0.d.c.x), vec4<f32>(global0.d.c.x, -198f, -118f, -117f))), vec4<i32>(1i, _wgslsmith_clamp_i32(arg_1.c, var_0.d.x, -19008i), 2147483647i, -40902i), ~_wgslsmith_div_vec4_u32(global0.e, vec4<u32>(15750u, global0.e.x, 0u, 4294967295u))), func_4(func_2()), func_4(arg_1)), arg_1);
    return vec4<bool>(((-2147483647i | global1[_wgslsmith_index_u32(func_2().d.e.x, 30u)]) == ~(-var_0.d.x)) & !(!func_6(u_input.b.yx, vec2<u32>(4294967295u, var_1.d.e.x), arg_1).d.a), true, true, !func_4(func_6(~vec2<i32>(u_input.b.x, u_input.b.x), arg_1.d.e.zw, func_2())).a.x);
}

fn func_7(arg_0: vec4<bool>, arg_1: u32) -> u32 {
    var var_0 = ~(~global0.d.e.xyw);
    var_0 = global0.d.e.yzx;
    let var_1 = func_6(_wgslsmith_mod_vec2_i32(min(global0.d.a.yz, select(u_input.a, vec2<i32>(44339i, -1i), false)), vec2<i32>(-(2147483647i & global0.d.a.x), global1[_wgslsmith_index_u32(~global0.d.e.x, 30u)])), global0.e.yz, Struct_4(global0.c.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.c.x, global0.d.c.x, 2059f)))), _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.b.x, _wgslsmith_mult_i32(-7604i, global1[_wgslsmith_index_u32(104460u, 30u)])), ~(~(-60747i))), Struct_2(false, _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 12411u), var_0.zz), global0.c, global0.d, countOneBits(vec4<u32>(arg_1, 0u, 54024u, global0.e.x)))));
    var var_2 = Struct_5(var_1.d.d.b);
    var var_3 = abs(select(global0.d.e.x, ~min(67024u, var_0.x) ^ 5419u, var_1.d.a));
    return ~100940u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(-2147483647i);
    global1 = array<i32, 30>();
    var var_1 = global1[_wgslsmith_index_u32(min(_wgslsmith_mult_u32(func_7(!func_1(-205f, Struct_4(global0.d.c.x, global0.d.c.zwy, -2147483647i, Struct_2(global0.d.b.x, global0.d.e.x, vec3<f32>(global0.c.x, -305f, global0.c.x), Struct_1(global0.d.d, global0.d.b, global0.d.c, global0.d.a, global0.e), vec4<u32>(46004u, 0u, 4518u, 1u))), vec2<bool>(global0.d.b.x, false)), _wgslsmith_mod_u32(0u, global0.d.e.x)), ~_wgslsmith_sub_u32(reverseBits(41271u), 1u)), global0.b), 30u)];
    global1 = array<i32, 30>();
    let var_2 = var_0;
    global0 = func_6(vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(61205u, 30u)], -1i), u_input.a, vec2<i32>(27755i, 1i)) ^ countOneBits(vec2<i32>(var_0, -1i)), func_6(firstLeadingBit(vec2<i32>(-32925i, var_0)), global0.d.e.zy, Struct_4(331f, vec3<f32>(-143f, global0.c.x, -532f), global0.d.a.x, Struct_2(global0.d.b.x, global0.e.x, vec3<f32>(global0.d.c.x, global0.d.c.x, -155f), Struct_1(vec4<i32>(u_input.a.x, u_input.b.x, -8626i, var_2), vec2<bool>(global0.d.b.x, true), global0.d.c, vec4<i32>(-99172i, var_0, var_0, -4195i), global0.e), vec4<u32>(33214u, global0.d.e.x, 42281u, 27607u)))).d.d.d.ww), global0.d.a.x), ~_wgslsmith_mult_vec2_u32(vec2<u32>(~0u, ~global0.d.e.x), ~global0.d.e.zy), func_6(u_input.a, ~vec2<u32>(~global0.b, max(global0.d.e.x, global0.d.e.x)), func_2())).d;
    var var_3 = Struct_1(countOneBits(-min(vec4<i32>(var_0, 2147483647i, global1[_wgslsmith_index_u32(global0.b, 30u)], u_input.b.x), vec4<i32>(u_input.b.x, -4351i, global1[_wgslsmith_index_u32(global0.d.e.x, 30u)], 2147483647i))) ^ (global0.d.d & _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-10413i, global1[_wgslsmith_index_u32(global0.b, 30u)], -4591i, global0.d.a.x), vec4<i32>(global0.d.a.x, 15352i, var_2, u_input.a.x)), vec4<i32>(global1[_wgslsmith_index_u32(0u, 30u)], 2147483647i, -2147483647i, global1[_wgslsmith_index_u32(global0.e.x, 30u)]))), vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-global0.d.c), _wgslsmith_add_vec4_i32(~vec4<i32>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, global0.b), 30u)], var_2, ~var_2, -50954i >> (global0.e.x % 32u)), abs(max(vec4<i32>(14656i, 2147483647i, -30925i, var_2) | vec4<i32>(var_2, -1i, 2147483647i, 1i), global0.d.a))), global0.e);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.d.x);
}

