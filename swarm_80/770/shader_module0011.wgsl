struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: array<vec4<i32>, 5> = array<vec4<i32>, 5>(vec4<i32>(0i, 41208i, -16385i, 7120i), vec4<i32>(i32(-2147483648), -1i, 2147483647i, i32(-2147483648)), vec4<i32>(12005i, -35437i, -12071i, -70148i), vec4<i32>(i32(-2147483648), -1i, 2147483647i, i32(-2147483648)), vec4<i32>(-1i, i32(-2147483648), 6955i, 7486i));

var<private> global2: array<Struct_1, 1>;

var<private> global3: array<vec4<u32>, 8> = array<vec4<u32>, 8>(vec4<u32>(0u, 14273u, 54604u, 0u), vec4<u32>(4294967295u, 64800u, 18955u, 0u), vec4<u32>(4294967295u, 992u, 29219u, 29718u), vec4<u32>(21095u, 51266u, 1u, 4294967295u), vec4<u32>(57146u, 4294967295u, 1u, 1u), vec4<u32>(27204u, 47574u, 0u, 8334u), vec4<u32>(39281u, 0u, 1u, 2031u), vec4<u32>(4294967295u, 35363u, 79710u, 8291u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_1(~_wgslsmith_mult_u32(u_input.e.x, _wgslsmith_mult_u32(max(4294967295u, u_input.a.x), _wgslsmith_clamp_u32(u_input.e.x, u_input.b.x, u_input.b.x))), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(3582i, u_input.d.x, u_input.d.x) << (vec3<u32>(u_input.b.x, u_input.a.x, u_input.c.x) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x), vec3<i32>(2147483647i, u_input.d.x, u_input.d.x), vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x)) | -vec3<i32>(18511i, u_input.d.x, u_input.d.x)), -countOneBits(vec3<i32>(1i, u_input.d.x, 2147483647i) & vec3<i32>(u_input.d.x, 1i, u_input.d.x))), -472f);
    global0 = !(!select(vec2<bool>(any(vec3<bool>(true, true, false)), global0.x | true), select(!vec2<bool>(global0.x, true), select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, global0.x), true), true), vec2<bool>(all(vec4<bool>(true, global0.x, global0.x, false)), var_0.b.x > u_input.d.x)));
    var var_1 = vec3<bool>(global0.x, global0.x, !(true | global0.x));
    let var_2 = Struct_1(max(max(var_0.a, 62658u) >> ((var_0.a ^ u_input.a.x) % 32u), abs(_wgslsmith_add_u32(var_0.a, u_input.a.x))) & max(1u, u_input.e.x >> (67345u % 32u)), var_0.b, _wgslsmith_f_op_f32(-1596f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)))));
    var var_3 = var_2;
    return vec2<bool>(all(vec3<bool>(true, true, true)), any(!vec4<bool>(select(global0.x, true, global0.x), !var_1.x, true, any(vec2<bool>(true, var_1.x)))));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec3<f32>) -> vec4<u32> {
    global2 = array<Struct_1, 1>();
    global0 = select(func_3(), !func_3(), vec2<bool>(!global0.x, true));
    global1 = array<vec4<i32>, 5>();
    var var_0 = global2[_wgslsmith_index_u32(0u, 1u)];
    let var_1 = !vec2<bool>(false, !(true == any(vec3<bool>(true, false, false))));
    return _wgslsmith_mult_vec4_u32(~u_input.b, ~max(vec4<u32>(~1u, u_input.a.x, arg_1.a, 1u), u_input.b));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> i32 {
    global2 = array<Struct_1, 1>();
    global1 = array<vec4<i32>, 5>();
    var var_0 = func_2(1f, Struct_1(_wgslsmith_add_u32(73960u ^ (u_input.a.x | 23098u), 4294967295u), arg_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c)))), vec3<f32>(arg_2.c, 532f, _wgslsmith_f_op_f32(-arg_2.c)));
    var_0 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(43422u, 5981u), 8u)];
    return -13101i;
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.x, -819f, arg_3.c))), vec3<f32>(462f, -419f, arg_2.c)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_2.c, -557f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(580f, arg_2.c, arg_1.x) * vec3<f32>(-790f, 2730f, arg_3.c))))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_1.x)), _wgslsmith_div_f32(-681f, arg_2.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1845f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -615f))), (_wgslsmith_dot_vec2_i32(-arg_2.b.zx, select(vec2<i32>(-5358i, arg_2.b.x), vec2<i32>(2147483647i, arg_3.b.x), global0.x)) > _wgslsmith_sub_i32(reverseBits(42793i), select(0i, -1i, global0.x))) == (true == global0.x)));
    var var_1 = Struct_1(u_input.c.x, -vec3<i32>(_wgslsmith_add_i32(arg_3.b.x, 17353i) | ~(-42237i), 1i, i32(-1i) * -arg_0), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.x))))));
    var var_2 = Struct_1(~var_1.a, vec3<i32>(arg_2.b.x, -(~arg_0), _wgslsmith_sub_i32(arg_2.b.x, arg_3.b.x)), 1066f);
    var var_3 = vec3<i32>(1i, arg_2.b.x, _wgslsmith_div_i32(((-57167i << (var_1.a % 32u)) & -28953i) | _wgslsmith_mod_i32(-2147483647i, countOneBits(var_1.b.x)), (func_1(-6847i, 94820u, Struct_1(var_1.a, vec3<i32>(var_2.b.x, arg_3.b.x, u_input.d.x), 3264f)) >> (~13654u % 32u)) | u_input.d.x));
    let var_4 = -726f;
    return global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(var_1.a), ~arg_3.a) & max(u_input.b.wz, u_input.c.zz), _wgslsmith_add_vec2_u32(~u_input.b.yx, ~vec2<u32>(0u, 32666u)))), 1u)];
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<u32>, 8>();
    let var_0 = func_4(_wgslsmith_mult_i32(abs(_wgslsmith_div_i32(u_input.d.x, func_1(-53599i, 11656u, Struct_1(28955u, vec3<i32>(u_input.d.x, 1i, u_input.d.x), -655f)))), -2147483647i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(step(-1226f, -2549f)), -1072f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-608f, -330f)))), global0.x)) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-676f, 775f), vec2<f32>(1027f, -754f)), vec2<f32>(-948f, -2657f), true))))), global2[_wgslsmith_index_u32(5056u, 1u)], Struct_1(func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(270f, -341f)), _wgslsmith_f_op_f32(round(101f)))), Struct_1(0u, abs(vec3<i32>(u_input.d.x, 0i, u_input.d.x)), -1641f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1317f), _wgslsmith_f_op_f32(sign(1568f)), _wgslsmith_f_op_f32(f32(-1f) * -512f))).x, _wgslsmith_sub_vec3_i32(-vec3<i32>(37014i, u_input.d.x, u_input.d.x) << (firstTrailingBit(u_input.c) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(u_input.d.x, -71768i, -2147483647i)), ~vec3<i32>(0i, u_input.d.x, 11594i))), _wgslsmith_f_op_f32(select(-396f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1806f))), !(!global0.x)))));
    var var_1 = Struct_1(587u, vec3<i32>(firstLeadingBit(-(-3911i | u_input.d.x)), countOneBits(select(_wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(var_0.b.x, u_input.d.x)), _wgslsmith_add_i32(-3060i, var_0.b.x), false)), u_input.d.x << (reverseBits(39781u) % 32u)), 1022f);
    var var_2 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1810f, -494f)), vec2<f32>(var_1.c, -718f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1139f, 973f)) - _wgslsmith_div_vec2_f32(vec2<f32>(-158f, 1000f), vec2<f32>(674f, 1218f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, -1934f)), _wgslsmith_div_vec2_f32(vec2<f32>(-764f, -796f), vec2<f32>(var_0.c, var_0.c)))), select(vec2<bool>(!global0.x, global0.x), select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, false), u_input.d.x == u_input.d.x), select(select(vec2<bool>(global0.x, true), vec2<bool>(false, global0.x), vec2<bool>(global0.x, global0.x)), !vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x))))), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) + -957f), Struct_1(1u, -var_0.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-908f * var_1.c)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1723f, _wgslsmith_div_f32(var_0.c, var_1.c), _wgslsmith_f_op_f32(max(var_0.c, 171f))))), 11331u, u_input.b);
}

