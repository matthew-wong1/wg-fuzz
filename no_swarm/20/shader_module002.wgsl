struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec4<u32>,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_2,
    d: vec2<i32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(vec2<f32>(347f, 512f), vec2<bool>(false, true));

var<private> global1: Struct_2;

var<private> global2: vec2<bool>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: vec3<i32>, arg_3: Struct_2) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global0.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, 158f) - global0.a) + vec2<f32>(-1244f, global0.a.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-921f, global0.a.x), global0.a, true)), vec2<bool>(arg_0.a.d | arg_3.a.x, true))), global1.a.yx)));
    global0 = Struct_5(global0.a, global1.a.yx);
    global0 = Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, global0.a.x)))) * var_0), arg_3.a.yw);
    let var_1 = vec4<i32>(~(1i << (select(arg_1, arg_0.a.c.x, true) % 32u)) ^ 2147483647i, 2147483647i, abs(50684i), u_input.a);
    global0 = Struct_5(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1134f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x))))), select(arg_3.a.zx, !select(vec2<bool>(false, true), !global0.b, select(vec2<bool>(arg_0.a.d, global0.b.x), arg_0.b.a.wz, global2.x)), arg_2.x <= u_input.c));
    return var_1.yyz << (~_wgslsmith_add_vec3_u32(~(vec3<u32>(arg_1, arg_0.a.c.x, arg_1) ^ vec3<u32>(arg_1, 4766u, arg_1)), select(~vec3<u32>(arg_1, 1u, arg_1), arg_0.a.c.wwy & vec3<u32>(arg_1, 4294967295u, 11196u), all(vec4<bool>(arg_3.a.x, false, arg_3.a.x, false)))) % vec3<u32>(32u));
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = countOneBits(u_input.b);
    global2 = !(!vec2<bool>(global0.b.x, global0.b.x));
    var var_1 = abs(~_wgslsmith_clamp_vec3_i32(~vec3<i32>(var_0.x, var_0.x, var_0.x), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.x, var_0.x, 2147483647i), vec3<i32>(u_input.a, u_input.b.x, 56187i)), vec3<i32>(var_0.x, 33827i, 2147483647i) << (vec3<u32>(4294967295u, 15059u, 1u) % vec3<u32>(32u)))) ^ _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(37719i, -1i, 1i), vec3<i32>(var_0.x, 1i, var_0.x)), ~vec3<i32>(1i, var_0.x, u_input.c)) << (vec3<u32>(~arg_0, arg_0, 34536u) % vec3<u32>(32u)), func_3(Struct_4(Struct_3(arg_0, Struct_2(vec4<bool>(global2.x, false, global1.a.x, global0.b.x)), vec4<u32>(0u, arg_0, arg_0, arg_0), global1.a.x), Struct_2(global1.a), Struct_2(global1.a), vec2<i32>(-6018i, 79802i)), 21088u, vec3<i32>(var_0.x | -41903i, reverseBits(2147483647i), _wgslsmith_sub_i32(var_0.x, var_0.x)), Struct_2(global1.a)), vec3<i32>(u_input.c, i32(-1i) * -var_0.x, max(-1i, ~var_0.x)));
    let var_2 = global1.a;
    global1 = Struct_2(!(!select(vec4<bool>(true, global0.b.x, global0.b.x, global1.a.x), select(vec4<bool>(false, false, global1.a.x, global1.a.x), global1.a, vec4<bool>(false, false, global2.x, global1.a.x)), global1.a.x)));
    return ~26375u;
}

fn func_4(arg_0: vec3<u32>) -> Struct_2 {
    let var_0 = countOneBits(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 31236i, -2147483647i), vec3<i32>(u_input.c, u_input.b.x, u_input.c)), vec3<i32>(_wgslsmith_sub_i32(u_input.c, u_input.a), ~(-1i), ~u_input.b.x)), vec3<i32>(u_input.b.x, countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, -22711i, u_input.b.x, u_input.a), vec4<i32>(u_input.b.x, -5646i, 31855i, u_input.b.x))), func_3(Struct_4(Struct_3(52124u, Struct_2(vec4<bool>(global1.a.x, global0.b.x, global2.x, global0.b.x)), vec4<u32>(8674u, arg_0.x, 43116u, 10709u), global2.x), Struct_2(global1.a), Struct_2(global1.a), u_input.b), reverseBits(1u), firstTrailingBit(vec3<i32>(u_input.b.x, 1i, 14261i)), Struct_2(global1.a)).x), -(~(-vec3<i32>(-2147483647i, -50681i, 2147483647i)))));
    var var_1 = Struct_1(-vec4<i32>(-(u_input.b.x | var_0.x), _wgslsmith_div_i32(u_input.b.x, 33138i), abs(-49156i), -9936i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-868f, global0.a.x, 545f)) * _wgslsmith_div_vec3_f32(vec3<f32>(944f, global0.a.x, global0.a.x), vec3<f32>(global0.a.x, global0.a.x, 1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, -1000f, global0.a.x) * vec3<f32>(global0.a.x, -2232f, global0.a.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(159f, -1000f, -454f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1543f, -808f, global0.a.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.a.x, -749f, -662f))), vec3<f32>(global0.a.x, global0.a.x, -422f)))), true);
    var_1 = Struct_1(select(var_1.a, _wgslsmith_mult_vec4_i32(~(-vec4<i32>(u_input.c, -2147483647i, u_input.a, -14721i)), var_1.a), all(select(!global0.b, vec2<bool>(true, false), select(vec2<bool>(false, global1.a.x), global0.b, global1.a.yy)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(755f * 829f), _wgslsmith_f_op_f32(-1868f * var_1.b.x)))), -916f, global0.a.x), vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x + -423f)), var_1.c.x), arg_0.x == 22129u);
    var var_2 = 1i;
    var_1 = Struct_1(var_1.a, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-963f + _wgslsmith_f_op_f32(f32(-1f) * -483f)), _wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1000f * var_1.b.x)))))), var_1.c, true);
    return Struct_2(select(!global1.a, !select(vec4<bool>(global1.a.x, var_1.d, false, false), !vec4<bool>(true, global2.x, global0.b.x, false), all(global1.a)), vec4<bool>(true, any(!vec2<bool>(false, global1.a.x)), all(!global1.a), global1.a.x || (arg_0.x == 24143u))));
}

fn func_1() -> i32 {
    var var_0 = abs(_wgslsmith_mult_i32(_wgslsmith_mult_i32(1i, ~u_input.b.x), _wgslsmith_mult_i32(select(-21640i, 0i, all(global1.a.zx)), -49522i)));
    global1 = func_4(reverseBits(vec3<u32>(firstTrailingBit(25480u), ~48550u, reverseBits(66811u))) & ~vec3<u32>(~32546u, func_2(30629u), 103317u));
    let var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(abs(global0.a)), vec2<bool>(((u_input.b.x > 1i) | (true != global2.x)) | true, select(any(global0.b) || (global2.x && true), global0.b.x, all(vec3<bool>(global0.b.x, global2.x, true)))));
    var var_2 = _wgslsmith_div_u32(41530u, _wgslsmith_clamp_u32(4294967295u, ~(~41001u), _wgslsmith_clamp_u32(0u, abs(51892u), func_2(8773u))) & 4294967295u);
    var_0 = select(~_wgslsmith_div_i32(u_input.b.x, func_3(Struct_4(Struct_3(1u, Struct_2(global1.a), vec4<u32>(1u, 0u, 4294967295u, 4294967295u), false), Struct_2(vec4<bool>(false, true, var_1.b.x, true)), Struct_2(global1.a), u_input.b), 0u, vec3<i32>(-1i, -4881i, u_input.a), Struct_2(global1.a)).x) & ~(-31912i), countOneBits(_wgslsmith_mod_i32(27843i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.c, 6191i, u_input.b.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, 2147483647i, u_input.b.x, -75670i), vec4<i32>(u_input.b.x, u_input.a, u_input.c, u_input.c), vec4<i32>(u_input.b.x, -2147483647i, 0i, -15947i))))), true);
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(min(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -24821i, -1483i), vec3<i32>(u_input.c, 13753i, -1i)), u_input.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(46018i, u_input.b.x), vec2<i32>(-1i, u_input.a)), -15955i, 1i) ^ vec4<i32>(i32(-1i) * -u_input.a, abs(u_input.c), u_input.b.x, -(~u_input.b.x)), vec4<i32>(-19582i >> (0u % 32u), ~_wgslsmith_mult_i32(u_input.a, 0i), _wgslsmith_add_i32(firstTrailingBit(-8148i >> (1u % 32u)), func_1()), func_1()));
    var var_1 = var_0.x > var_0.x;
    var var_2 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(global0.a)))))), global1.a.zx);
    let var_3 = Struct_4(Struct_3(firstLeadingBit(_wgslsmith_div_u32(1u, _wgslsmith_add_u32(33555u, 10970u))), func_4(vec3<u32>(~4294967295u, abs(1u), ~0u)), abs(~vec4<u32>(4294967295u, 0u, 39085u, 4294967295u)), false), func_4(~(~(~vec3<u32>(0u, 112158u, 51418u)))), func_4(firstTrailingBit(vec3<u32>(1u, 1u, 1u))), var_0.xx);
    var var_4 = _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(~u_input.b, min(vec2<i32>(-2147483647i, -22778i), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, -1i), vec2<i32>(u_input.c, -21267i)))), countOneBits(var_0.x)), _wgslsmith_mult_vec2_i32(~vec2<i32>(-17619i, func_3(Struct_4(Struct_3(var_3.a.a, var_3.c, vec4<u32>(0u, var_3.a.a, var_3.a.c.x, 1u), var_3.a.b.a.x), Struct_2(global1.a), Struct_2(global1.a), var_0.ww), 124996u, vec3<i32>(var_0.x, 11346i, 2147483647i), var_3.a.b).x), -u_input.b));
    var_4 = ~var_0.yz;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x, ~(~(~(~var_3.a.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global0.a * _wgslsmith_f_op_vec2_f32(-global0.a))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.a.x, var_2.a.x, -923f), vec3<f32>(-675f, -1855f, 410f), vec3<bool>(true, true, false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, global0.a.x, -1264f) * vec3<f32>(var_2.a.x, -871f, -1093f)))) + vec3<f32>(148f, _wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(var_2.a.x - global0.a.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1007f, var_2.a.x, var_2.a.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, 280f, global0.a.x) + vec3<f32>(-753f, -1328f, 2752f)) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.a.x, global0.a.x, var_2.a.x)))))), _wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1060f, -893f)))));
}

