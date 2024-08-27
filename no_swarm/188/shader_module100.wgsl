struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: i32 = 2147483647i;

var<private> global2: Struct_2;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: Struct_2) -> vec2<bool> {
    global2 = Struct_2(vec3<i32>(global2.c.b << (64443u % 32u), _wgslsmith_dot_vec3_i32(~(vec3<i32>(u_input.a.x, global0.c.b, global0.a.x) << (vec3<u32>(1u, 1u, 21084u) % vec3<u32>(32u))), abs(vec3<i32>(global2.b.c.x, global0.a.x, global2.a.x))), ~(-6255i)), Struct_1(-_wgslsmith_mult_i32(global0.b.b, global2.b.b | -2147483647i), arg_0.c.d.x, vec4<i32>(global2.c.a, _wgslsmith_add_i32(1i, -1i) ^ global2.c.b, -(~global2.a.x), arg_0.b.a), global2.c.c.yxy), arg_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-753f + 2232f), 664f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.d)) * _wgslsmith_f_op_f32(-1013f - _wgslsmith_div_f32(global0.d, arg_0.d)))));
    global2 = arg_0;
    let var_0 = arg_0;
    let var_1 = var_0.d;
    global2 = var_0;
    return vec2<bool>(false, all(vec4<bool>(true, true, true, true)));
}

fn func_3(arg_0: u32) -> vec3<bool> {
    global1 = -reverseBits(15458i);
    var var_0 = vec2<u32>(arg_0, arg_0);
    let var_1 = vec4<bool>(true, true, true, true);
    var var_2 = Struct_2(~global0.a, Struct_1(0i, global2.c.d.x, _wgslsmith_mod_vec4_i32(~vec4<i32>(global0.c.d.x, 8546i, 21037i, 0i) | vec4<i32>(0i, u_input.a.x, u_input.a.x, 2147483647i), global2.b.c), -vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-19979i, global2.a.x, global0.c.c.x), vec3<i32>(u_input.a.x, -7288i, -3805i)), _wgslsmith_clamp_i32(19121i, u_input.a.x, global2.a.x), abs(2147483647i))), Struct_1(global2.a.x, -1i & _wgslsmith_dot_vec2_i32(-global2.a.zy, global0.c.d.zz), global0.b.c, min(~(global2.c.d | global0.a), global2.c.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1263f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-463f))))));
    global2 = Struct_2(vec3<i32>(global0.b.c.x, u_input.a.x, 1i), global2.b, Struct_1(u_input.a.x, global2.b.a, -vec4<i32>(reverseBits(14375i), _wgslsmith_div_i32(12863i, u_input.a.x), -19038i, firstTrailingBit(-37752i)), ~var_2.b.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-645f, var_2.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.d, 1447f, true))))));
    return select(!select(var_1.wwz, vec3<bool>(true, func_2(Struct_2(vec3<i32>(u_input.a.x, global0.a.x, u_input.a.x), var_2.b, Struct_1(global2.c.b, global2.a.x, global2.b.c, vec3<i32>(0i, 0i, global2.b.c.x)), global2.d)).x, var_1.x), var_1.x), var_1.zwy, !var_1.wyz);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: u32) -> Struct_2 {
    global1 = _wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(global0.c.d.x, global2.c.c.x), max(u_input.a.xy, vec2<i32>(2147483647i, 14504i) ^ global0.c.d.yx)) >> ((~4294967295u | ~abs(arg_2)) % 32u));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(159f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -538f) * _wgslsmith_f_op_f32(f32(-1f) * -1652f)) + 749f))));
    var var_1 = _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(-vec2<i32>(-9190i, u_input.a.x), u_input.a.wz), ~(min(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.zy) | vec2<i32>(-11368i, -2147483647i))), _wgslsmith_sub_vec2_i32(~(~vec2<i32>(global0.c.c.x, 33820i)), global0.c.c.yz), -(global2.b.d.zx ^ select(vec2<i32>(-25636i, global2.b.a), _wgslsmith_sub_vec2_i32(vec2<i32>(global2.a.x, 1067i), global0.a.xz), !vec2<bool>(arg_1.x, arg_1.x))));
    global2 = Struct_2(firstLeadingBit(_wgslsmith_mult_vec3_i32(global0.a, ~vec3<i32>(29983i, var_1.x, var_1.x))), global2.b, Struct_1(var_1.x, 0i, -global0.c.c, abs(vec3<i32>(-1i) * -global2.b.d)), -713f);
    var var_2 = Struct_2(-reverseBits(abs(select(u_input.a.zzy, global2.a, vec3<bool>(arg_0.x, true, false)))), global0.c, Struct_1(_wgslsmith_clamp_i32(17647i, var_1.x, 33691i & _wgslsmith_clamp_i32(var_1.x, 19282i, global0.b.b)), u_input.a.x, ~(select(global0.b.c, u_input.a, vec4<bool>(false, arg_1.x, arg_0.x, false)) & reverseBits(vec4<i32>(global0.c.a, global2.c.d.x, -1i, global2.a.x))), global2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f))));
    return Struct_2(global0.b.d << (~(~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 47570u, arg_2), vec3<u32>(4294967295u, arg_2, 35816u))) % vec3<u32>(32u)), global2.b, var_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-866f)))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> vec4<f32> {
    global0 = func_4(func_2(Struct_2(vec3<i32>(2147483647i, countOneBits(-54684i), 1i), global0.c, global0.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_f_op_f32(arg_1.d - global2.d))))), select(func_3(92784u), vec3<bool>(!func_3(1935u).x, select(true, true, false), true), true), ~(~countOneBits(1u)));
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.d)))), global2.d);
    var var_1 = ~_wgslsmith_add_i32(arg_0.b.c.x & -2147483647i, -46022i) | 33111i;
    let var_2 = !func_3(_wgslsmith_sub_u32(4294967295u, reverseBits(1u))).xz;
    var var_3 = countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(min(4294967295u, ~86227u), max(~38575u, ~0u), 0u << (1u % 32u), 1u), vec4<u32>(0u, ~(~0u), ~1u, min(8061u >> (1u % 32u), 6242u))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1437f, -427f, var_0.x, arg_1.d) + vec4<f32>(arg_1.d, -123f, -1203f, global0.d)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(770f, global2.d, 566f, arg_0.d)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-499f, var_0.x, arg_0.d, var_0.x))), false)));
}

fn func_5(arg_0: vec4<f32>) -> u32 {
    var var_0 = Struct_2(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(reverseBits(global2.b.c.yyy), select(vec3<i32>(-2147483647i, global2.c.d.x, -25546i), vec3<i32>(u_input.a.x, global0.b.b, global0.b.c.x), true) << (vec3<u32>(4294967295u, 41343u, 0u) % vec3<u32>(32u))), max(max(~vec3<i32>(0i, u_input.a.x, 0i), vec3<i32>(2147483647i, u_input.a.x, -26140i)), countOneBits(vec3<i32>(global2.c.a, -1i, -2147483647i)) ^ firstTrailingBit(global0.b.d))), func_4(vec2<bool>(true && all(vec2<bool>(true, false)), !any(vec2<bool>(true, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec3<bool>(true, true, true))), select(~4294967295u, _wgslsmith_div_u32(45952u, 1u), true) ^ 1u).b, func_4(vec2<bool>(true, true), func_3(1u >> (1u % 32u)), ~1u).c, _wgslsmith_div_f32(global0.d, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(global0.d, global0.d))))));
    let var_1 = func_4(vec2<bool>(all(vec2<bool>(true, true)), true), !func_3(_wgslsmith_sub_u32(abs(4294967295u), 1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(abs(4294967295u), 2580u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 0u), vec3<u32>(4294967295u, 45865u, 32999u)) ^ 37618u, _wgslsmith_mod_u32(abs(36312u), 1u)), vec4<u32>(_wgslsmith_sub_u32(~13504u, 1u), ~(~0u), 6600u, 1u))).b;
    var var_2 = Struct_1(countOneBits(select(_wgslsmith_div_i32(8131i, reverseBits(-83476i)), _wgslsmith_mod_i32(global2.c.b, select(u_input.a.x, -24420i, false)), true)), var_0.c.d.x & -13368i, ~(~_wgslsmith_mult_vec4_i32(global0.c.c, global2.b.c)), min(max(var_1.c.wxx, vec3<i32>(-8144i, 15633i, 19198i) | vec3<i32>(1i, global2.c.d.x, var_1.a)), -vec3<i32>(~21645i, _wgslsmith_dot_vec4_i32(var_0.b.c, global0.c.c), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 106224i, global2.a.x, -2147483647i), vec4<i32>(global0.a.x, 6068i, 32011i, global0.a.x)))));
    var_0 = func_4(!select(vec2<bool>(false, select(true, false, false)), func_2(Struct_2(u_input.a.zww, var_1, global2.b, global0.d)), false), vec3<bool>(true, true, !(any(vec3<bool>(true, false, true)) && true)), 21668u);
    let var_3 = !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), false)), vec4<bool>(~var_0.c.b < -2147483647i, any(vec3<bool>(true, true, true)), true, _wgslsmith_f_op_f32(floor(621f)) != global2.d), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false))));
    return ~(~countOneBits(1u));
}

fn func_6(arg_0: u32, arg_1: i32, arg_2: Struct_2) -> i32 {
    global1 = arg_1;
    global2 = func_4(vec2<bool>(!all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false)), all(vec3<bool>(all(vec3<bool>(true, false, true)), true, u_input.a.x == -2147483647i))), vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d) * global0.d) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(118f + global2.d))), true, (all(vec2<bool>(false, true)) & all(vec4<bool>(true, true, false, false))) & true), select(arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(~40739u, abs(1u), reverseBits(120700u), ~1u), _wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(52989u, 4294967295u, 1644u, 4294967295u)), vec4<u32>(1u, arg_0, 0u, arg_0) >> (vec4<u32>(arg_0, 0u, arg_0, 34779u) % vec4<u32>(32u)))), false));
    global1 = max(_wgslsmith_dot_vec3_i32(~(-(~vec3<i32>(-2147483647i, 17850i, -3367i))), _wgslsmith_div_vec3_i32(global0.a ^ vec3<i32>(u_input.a.x, global0.b.c.x, u_input.a.x), arg_2.b.d)), 28115i);
    global2 = arg_2;
    let var_0 = arg_0;
    return arg_2.b.a & ~global2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_6(~func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2.d, global0.d, global2.d, global2.d), vec4<f32>(global0.d, -1384f, 1923f, global0.d)) + _wgslsmith_f_op_vec4_f32(func_1(Struct_2(vec3<i32>(global0.c.b, u_input.a.x, global2.a.x), global0.c, global0.b, 102f), Struct_2(vec3<i32>(u_input.a.x, u_input.a.x, 4855i), global2.b, global0.b, 773f), Struct_1(u_input.a.x, 43109i, global2.c.c, global2.a))))), -global2.b.c.x >> (~0u % 32u), func_4(vec2<bool>(true, true), func_3(1u), _wgslsmith_sub_u32(~1u, 1u)));
    global0 = func_4(!func_3(~4294967295u).xy, vec3<bool>(true, false, any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false))))), reverseBits(~max(func_5(vec4<f32>(global0.d, 787f, global0.d, 878f)), _wgslsmith_add_u32(85128u, 28399u))));
    var var_0 = -1i & _wgslsmith_sub_i32(-2147483647i, select(2147483647i, reverseBits(func_4(vec2<bool>(true, false), vec3<bool>(false, false, false), 48711u).c.a), all(vec2<bool>(false, true))));
    let var_1 = Struct_2(vec3<i32>(global2.b.a, u_input.a.x ^ ~(~global2.b.d.x), _wgslsmith_div_i32(38467i, ~max(u_input.a.x, global0.b.a))), func_4(vec2<bool>(false, any(vec2<bool>(false, true))), select(vec3<bool>(true, 1i <= global2.c.c.x, false), func_3(func_5(vec4<f32>(global0.d, -1072f, -1458f, 1235f))), true), countOneBits(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(342u, 12346u, 0u), abs(28383u)))).b, global2.b, global0.d);
    global1 = 11269i;
    global0 = Struct_2(vec3<i32>(2147483647i & ~_wgslsmith_mod_i32(var_1.a.x, 31051i), ~(-_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.x, global0.b.a), vec2<i32>(24361i, -1i))), 1i & u_input.a.x), Struct_1(32234i, -2549i, vec4<i32>(0i, global2.a.x, ~(i32(-1i) * -1i), _wgslsmith_mult_i32(~(-2147483647i), 1i)), _wgslsmith_sub_vec3_i32(vec3<i32>(97244i << (0u % 32u), -9053i, abs(var_1.b.a)), vec3<i32>(-1i) * -global0.a)), Struct_1(global2.b.a, 7819i, _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(~global0.c.c, vec4<i32>(global0.b.b, global0.a.x, -45128i, u_input.a.x)), global2.b.c), global0.b.c.xyz | _wgslsmith_mult_vec3_i32(-var_1.c.d, -vec3<i32>(global2.c.c.x, u_input.a.x, u_input.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -1252f));
    let var_2 = -global0.c.d;
    var var_3 = func_4(vec2<bool>(true, true), vec3<bool>(true, true, false), min(1u, 4294967295u)).c;
    let var_4 = vec3<u32>(~1u, 4294967295u, 69u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_4.x, 1u, 4294967295u, var_4.x), vec4<u32>(var_4.x, 1u, var_4.x, 119904u)), countOneBits(reverseBits(vec4<u32>(var_4.x, 35741u, 1u, 98336u))), select(~vec4<u32>(var_4.x, var_4.x, 40756u, 0u), ~vec4<u32>(var_4.x, var_4.x, var_4.x, 0u), all(vec4<bool>(false, true, true, true)))) >> ((select(vec4<u32>(49345u, 0u, var_4.x, 0u), ~vec4<u32>(var_4.x, 4294967295u, var_4.x, 0u), true) << (min(vec4<u32>(0u, var_4.x, var_4.x, var_4.x), vec4<u32>(0u, 5829u, 0u, 29150u) | vec4<u32>(var_4.x, 0u, var_4.x, var_4.x)) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.d))))), u_input.a.x);
}

