struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec4<u32>,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
    c: u32,
    d: bool,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: vec3<u32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: Struct_2 = Struct_2(Struct_1(1017f, vec2<bool>(false, true), vec4<u32>(0u, 33123u, 905u, 21970u), vec4<f32>(-1091f, -1000f, 1465f, -169f), 4294967295u), Struct_1(615f, vec2<bool>(true, true), vec4<u32>(61082u, 17309u, 23533u, 12585u), vec4<f32>(-275f, -290f, 218f, 116f), 0u), Struct_1(-1611f, vec2<bool>(false, false), vec4<u32>(51969u, 4294967295u, 3383u, 18224u), vec4<f32>(-1314f, -968f, -1000f, -199f), 35712u), 911f, 1i);

var<private> global1: array<i32, 2>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0 + -579f), _wgslsmith_f_op_f32(f32(-1f) * -1259f), global0.c.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.a))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(global0.c.d.wyy, vec3<f32>(global0.c.d.x, arg_0, -784f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(151f, global0.a.d.x, arg_0))))), select(select(!vec3<bool>(global0.c.b.x, true, true), !vec3<bool>(global0.b.b.x, false, global0.c.b.x), true), vec3<bool>(true, true, true), true))), true, 0u, !(!(global0.a.c.x <= u_input.a)));
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a), var_0.a) + vec3<f32>(1835f, var_0.a.x, 928f)), _wgslsmith_sub_u32(u_input.a, _wgslsmith_mod_u32(~u_input.a, global0.b.c.x)) == global0.b.e, (countOneBits(_wgslsmith_sub_u32(u_input.a, var_0.c)) | ~_wgslsmith_clamp_u32(global0.b.c.x, 36560u, 0u)) >> (var_0.c % 32u), all(!global0.a.b));
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_0.a.x), global0.a.b, global0.a.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, 185f, 375f, -126f)))), u_input.a), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f - 198f), _wgslsmith_f_op_f32(-arg_0))), -1260f)), vec2<bool>(~u_input.a == 21573u, true), vec4<u32>(0u, ~(~16398u), global0.a.e, ~var_1.c), global0.b.d, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, global0.b.c.x), _wgslsmith_div_vec3_u32(global0.b.c.zzy, vec3<u32>(var_0.c, global0.b.c.x, var_0.c))), _wgslsmith_dot_vec4_u32(global0.a.c, abs(global0.c.c)))), global0.b, 675f, abs(-1i));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-global0.c.a), vec2<bool>(var_0.d != !var_0.d, var_1.d), reverseBits(firstTrailingBit(vec4<u32>(0u, 3235u, 1u, u_input.a))) << (~vec4<u32>(~global0.a.c.x, countOneBits(0u), var_0.c, _wgslsmith_div_u32(89558u, var_1.c)) % vec4<u32>(32u)), global0.c.d, 6851u);
    var var_3 = Struct_5(1u, Struct_4(vec3<f32>(_wgslsmith_f_op_f32(ceil(var_2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.a + var_0.a.x)), var_0.a.x), (4294967295u | ~var_0.c) <= ~(623u << (u_input.a % 32u)), _wgslsmith_mod_u32(u_input.a, _wgslsmith_sub_u32(select(4294967295u, var_2.e, var_1.b), 4294967295u)), true), firstTrailingBit(vec3<u32>(1u | u_input.a, 1u, 41280u)), var_1.b & var_1.b);
    return 1000f;
}

fn func_2(arg_0: i32) -> vec3<f32> {
    var var_0 = vec3<i32>(i32(-1i) * -19917i, i32(-1i) * -49077i, arg_0);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.b.a - global0.a.d.x), _wgslsmith_f_op_f32(global0.c.d.x * global0.d))))))), global0.b.d.x);
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global0.b.d.yy, vec2<f32>(1000f, 256f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global0.b.d.yx)), global0.b.d.yx))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1155f)), _wgslsmith_f_op_f32(-2537f * _wgslsmith_f_op_f32(f32(-1f) * -675f))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, global0.d));
    var_0 = ~_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, 2147483647i, 2147483647i) & abs(vec3<i32>(-59197i, global1[_wgslsmith_index_u32(4294967295u, 2u)], 1i)), select(vec3<i32>(2147483647i, 0i, 63448i), vec3<i32>(3703i, 25691i, 0i) ^ vec3<i32>(-65261i, 1i, var_0.x), false)), vec3<i32>(max(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, var_0.x), vec3<i32>(arg_0, -1i, arg_0)), 2147483647i), _wgslsmith_sub_i32(var_0.x, 1i), arg_0));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a.d.xzw)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(504f, var_2, 1087f), vec3<f32>(var_2, global0.b.d.x, var_2), global0.a.b.x)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-1007f)), _wgslsmith_f_op_f32(695f * var_1.x), _wgslsmith_div_f32(702f, -1078f)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(-1000f + 1092f), global0.b.b.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(var_2))))), var_1.x));
}

fn func_1() -> Struct_4 {
    var var_0 = global1[_wgslsmith_index_u32(u_input.a, 2u)];
    let var_1 = Struct_5(14961u, Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(~(-1i)))), global0.b.b.x, 132354u >> (_wgslsmith_sub_u32(global0.b.e, _wgslsmith_mod_u32(29938u, 18375u)) % 32u), !(_wgslsmith_add_i32(global0.e, global1[_wgslsmith_index_u32(3883u, 2u)]) == _wgslsmith_mult_i32(global0.e, global0.e))), reverseBits(global0.c.c.zxw), global0.b.b.x | !((global1[_wgslsmith_index_u32(4294967295u, 2u)] < global0.e) || (-1431f >= global0.d)));
    let var_2 = vec3<bool>(all(select(select(select(vec3<bool>(global0.c.b.x, true, false), vec3<bool>(false, var_1.b.d, false), var_1.b.d), !vec3<bool>(var_1.d, true, global0.a.b.x), true), !select(vec3<bool>(true, var_1.d, false), vec3<bool>(var_1.d, false, global0.b.b.x), false), false)), any(vec4<bool>(global0.b.b.x, var_1.b.d, var_1.b.b, global0.e >= global1[_wgslsmith_index_u32(var_1.b.c, 2u)])) | all(vec3<bool>(var_1.b.b, true, any(vec4<bool>(false, var_1.b.b, global0.c.b.x, global0.c.b.x)))), -global1[_wgslsmith_index_u32(13981u, 2u)] <= -11628i);
    var_0 = ~(reverseBits(abs(-2147483647i)) << (u_input.a % 32u));
    let var_3 = var_1.b.d || (true && all(select(vec2<bool>(var_1.b.b, false), !global0.b.b, true)));
    return Struct_4(vec3<f32>(_wgslsmith_f_op_f32(780f - -613f), _wgslsmith_f_op_f32(-global0.b.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-310f, 1387f)))), !(all(!vec4<bool>(var_1.d, global0.a.b.x, true, false)) & ((35797u << (var_1.b.c % 32u)) < abs(var_1.c.x))), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(var_1.c.yy, ~(global0.c.c.xz ^ var_1.c.zx)), var_1.c.x), !(!(!(!global0.a.b.x))));
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: vec2<u32>) -> StorageBuffer {
    let var_0 = arg_2.x;
    global0 = Struct_2(global0.c, global0.c, global0.c, -1000f, max(8089i & (_wgslsmith_add_i32(global0.e, global1[_wgslsmith_index_u32(global0.a.c.x, 2u)]) << (global0.a.e % 32u)), countOneBits(~(-1i))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1054f);
    global1 = array<i32, 2>();
    let var_2 = select(~max(select(vec3<i32>(global0.e, 49190i, global1[_wgslsmith_index_u32(112356u, 2u)]), vec3<i32>(9304i, 18380i, 2147483647i), arg_1) << (max(vec3<u32>(0u, 4294967295u, global0.a.e), global0.b.c.yxz) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(47975i, global1[_wgslsmith_index_u32(arg_0.c, 2u)], global0.e), vec3<i32>(global0.e, 5339i, -2147483647i)) | _wgslsmith_div_vec3_i32(vec3<i32>(-17140i, global1[_wgslsmith_index_u32(35038u, 2u)], -7804i), vec3<i32>(global1[_wgslsmith_index_u32(arg_2.x, 2u)], global0.e, -2147483647i))), ~_wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(2147483647i, global0.e, -1i)), max(vec3<i32>(global0.e, global1[_wgslsmith_index_u32(4294967295u, 2u)], global0.e), vec3<i32>(2147483647i, -54014i, -38997i))) << (vec3<u32>(_wgslsmith_mod_u32(u_input.a, 3968u), _wgslsmith_div_u32(_wgslsmith_add_u32(63654u, arg_2.x), u_input.a), arg_2.x) % vec3<u32>(32u)), vec3<bool>(((arg_0.c << (0u % 32u)) <= select(global0.a.c.x, arg_0.c, true)) != true, arg_1, false));
    return StorageBuffer(-2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.c;
    let var_1 = vec4<i32>(abs(~(global1[_wgslsmith_index_u32(45704u, 2u)] >> (u_input.a % 32u)) << (0u % 32u)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~max(~u_input.a, abs(1u)), var_0.c.x), 2u)], reverseBits(285i), -global1[_wgslsmith_index_u32(~(~0u ^ abs(global0.a.c.x)), 2u)]);
    let var_2 = Struct_5(u_input.a, Struct_4(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1353f, global0.d, global0.b.a)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.a, -753f, 246f))))), true, 4294967295u, global0.a.b.x), vec3<u32>(_wgslsmith_mult_u32(global0.b.c.x, 58948u), 0u, 4294967295u) ^ ~vec3<u32>(1u, select(u_input.a, var_0.e, global0.c.b.x), u_input.a), true);
    var var_3 = !(!vec2<bool>(true, any(vec2<bool>(global0.a.b.x, true)) | true));
    let var_4 = _wgslsmith_f_op_f32(972f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(global0.b.d.x, 296f, true)), global0.d, 4294967295u > global0.a.c.x)))));
    let x = u_input.a;
    s_output = func_4(func_1(), var_0.b.x, reverseBits(~_wgslsmith_sub_vec2_u32(~vec2<u32>(1u, u_input.a), _wgslsmith_clamp_vec2_u32(global0.b.c.yw, vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 0u)))));
}

