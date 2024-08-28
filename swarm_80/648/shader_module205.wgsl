struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
    c: Struct_3,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: Struct_2;

var<private> global2: array<f32, 8>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    global2 = array<f32, 8>();
    let var_0 = select(!select(!select(vec4<bool>(global1.a, false, global1.a, false), vec4<bool>(global1.a, global1.a, global1.a, global1.a), global1.a), !(!vec4<bool>(true, global1.a, global1.a, global1.a)), vec4<bool>(select(global1.a, global1.a, global1.a), global1.a, false, any(vec2<bool>(global1.a, global1.a)))), select(vec4<bool>(true, true, true, _wgslsmith_dot_vec2_u32(vec2<u32>(1640u, 0u), vec2<u32>(18343u, 0u)) > ~61u), vec4<bool>(any(vec3<bool>(false, true, global1.a)), true, firstTrailingBit(0i) <= firstTrailingBit(u_input.a), global1.a), select(vec4<bool>(any(vec2<bool>(false, false)), all(vec2<bool>(global1.a, global1.a)), global1.b.x == global2[_wgslsmith_index_u32(1u, 8u)], global1.a | global1.a), vec4<bool>(true, all(vec2<bool>(global1.a, global1.a)), false, all(vec3<bool>(true, global1.a, true))), vec4<bool>(!global1.a, true, all(vec2<bool>(global1.a, true)), true))), select(vec4<bool>(true, false, true, true), !(!(!vec4<bool>(global1.a, false, global1.a, false))), vec4<bool>(any(!vec4<bool>(global1.a, global1.a, global1.a, global1.a)), true, global1.a, global1.a && true)));
    var var_1 = (vec2<i32>(-1i) * -(~vec2<i32>(u_input.d.x, -60826i))) ^ _wgslsmith_add_vec2_i32(reverseBits(vec2<i32>(_wgslsmith_div_i32(u_input.a, u_input.a), u_input.a)), -(~vec2<i32>(-23075i, -28234i)));
    var var_2 = Struct_3(~(~firstLeadingBit(vec2<u32>(4294967295u, 0u))) ^ vec2<u32>(34894u, _wgslsmith_dot_vec2_u32(~vec2<u32>(25813u, 9937u), vec2<u32>(67935u, 1u))), -696f, 35377u);
    let var_3 = Struct_5(Struct_4(Struct_1(all(select(vec4<bool>(var_0.x, var_0.x, false, global1.a), vec4<bool>(false, var_0.x, global1.a, false), true)), ~vec2<i32>(-18636i, u_input.a), _wgslsmith_div_i32(i32(-1i) * -2147483647i, abs(53860i)), max(var_1.x, i32(-1i) * -13518i))), u_input.a << (_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(74385u, var_2.c, 35677u), vec3<u32>(var_2.c, var_2.c, 4294967295u)) | (1u ^ var_2.a.x), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_2.a.x, var_2.a.x, 1u), vec3<u32>(var_2.c, var_2.c, var_2.a.x)), vec3<u32>(var_2.c, var_2.a.x, 4294967295u) | vec3<u32>(0u, 9097u, 13265u))) % 32u), Struct_3(_wgslsmith_sub_vec2_u32(firstTrailingBit(~var_2.a), vec2<u32>(var_2.a.x, var_2.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-514f, _wgslsmith_f_op_f32(abs(var_2.b)))) * 1165f), var_2.a.x), countOneBits(~(~vec4<i32>(u_input.d.x, -1i, 2147483647i, 0i) << (vec4<u32>(4294967295u, 0u, var_2.a.x, var_2.a.x) % vec4<u32>(32u)))), _wgslsmith_div_vec3_u32(~max(vec3<u32>(4294967295u, var_2.a.x, 0u), vec3<u32>(1u, 15010u, 4294967295u)), _wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(var_2.c, var_2.a.x, var_2.a.x)), reverseBits(vec3<u32>(1u, var_2.a.x, var_2.c)))) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(22370u, var_2.c), var_2.a, true), ~vec2<u32>(13195u, 55817u)), var_2.a.x, var_2.a.x) % vec3<u32>(32u)));
    return var_3.a.a.a;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(func_3(), global1.b);
    let var_1 = Struct_5(Struct_4(Struct_1(true, u_input.d, 2147483647i, ~u_input.c)), -1i, Struct_3(select(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(103059u, 4294967295u), vec2<u32>(93566u, 4294967295u)), vec2<u32>(1u, 1u)), vec2<u32>(1u, 1u), select(vec2<bool>(false, true), select(vec2<bool>(true, global1.a), vec2<bool>(global1.a, var_0.a), vec2<bool>(true, true)), false)), var_0.b.x, 42066u), _wgslsmith_clamp_vec4_i32(vec4<i32>(firstLeadingBit(1i), 1i, _wgslsmith_mult_i32(u_input.d.x, -26550i), ~u_input.d.x), ~(~reverseBits(vec4<i32>(5514i, u_input.a, u_input.d.x, 34006i))), vec4<i32>(~1i, 2147483647i, 1i, ~_wgslsmith_add_i32(1i, u_input.a))), vec3<u32>(_wgslsmith_div_u32(1u, ~0u), 20734u, abs(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(11017u, 1u), 3524u, ~26339u))));
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(global1.b));
    var var_3 = var_1.d >> (select(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.c.c, 43944u, var_1.e.x, 8689u) << (vec4<u32>(var_1.c.c, var_1.e.x, 4697u, 4294967295u) % vec4<u32>(32u)), vec4<u32>(var_1.e.x, 0u, var_1.c.c, var_1.e.x)), ~(~(~vec4<u32>(32891u, 4294967295u, var_1.e.x, var_1.e.x))), vec4<bool>(!var_1.a.a.a, var_0.a, global1.a, func_3())) % vec4<u32>(32u));
    var var_4 = var_0;
    return Struct_1(global1.a && all(select(select(vec2<bool>(var_1.a.a.a, false), vec2<bool>(global1.a, false), true), vec2<bool>(var_1.a.a.a, true), select(vec2<bool>(false, var_1.a.a.a), vec2<bool>(false, var_4.a), vec2<bool>(var_4.a, var_4.a)))), u_input.d, -_wgslsmith_add_i32(~_wgslsmith_clamp_i32(1i, 13458i, u_input.d.x), var_1.a.a.b.x), 1i);
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    global2 = array<f32, 8>();
    let var_0 = -vec3<i32>(~(~arg_0.c | ~u_input.a), max(_wgslsmith_sub_i32(u_input.b, 1i), u_input.c), abs(~countOneBits(u_input.a)));
    global0 = min(_wgslsmith_add_i32(42779i, _wgslsmith_div_i32(-17159i, var_0.x >> (4294967295u % 32u))), -2147483647i);
    global1 = Struct_2(false, vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(692f, -916f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(11243u, 8u)]))), global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(287f, _wgslsmith_f_op_f32(select(1550f, 826f, global1.a)))))));
    let var_1 = Struct_4(Struct_1((true != arg_1) || true, min(arg_0.b, (var_0.yy & arg_0.b) ^ vec2<i32>(var_0.x, arg_0.b.x)), 0i, -418i));
    return func_2();
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_4) -> u32 {
    var var_0 = Struct_4(func_2());
    var var_1 = Struct_3(vec2<u32>(37675u, 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-695f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) + global1.b.x))), select(~select(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 1u)), 1u, any(arg_0.zy)), 1u, false));
    let var_2 = Struct_5(Struct_4(func_1(func_2(), true)), 0i, Struct_3(firstTrailingBit(~vec2<u32>(0u, 4294967295u) ^ min(var_1.a, var_1.a)), _wgslsmith_f_op_f32(f32(-1f) * -420f), 3791u), ~(~_wgslsmith_add_vec4_i32(~vec4<i32>(arg_1.a.d, -4048i, -9808i, u_input.b), _wgslsmith_mult_vec4_i32(vec4<i32>(37472i, var_0.a.d, -1i, -1i), vec4<i32>(arg_1.a.c, -1i, 0i, 1i)))), vec3<u32>(1u, 4468u, _wgslsmith_mult_u32(~abs(var_1.c), ~6150u)));
    var var_3 = Struct_2(!(false == (!arg_1.a.a != false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(global1.b, vec4<f32>(572f, var_1.b, var_1.b, -608f))) + vec4<f32>(global2[_wgslsmith_index_u32(var_1.a.x, 8u)], 539f, 283f, var_1.b)))));
    var_3 = Struct_2(any(select(vec4<bool>(1731f <= var_2.c.b, arg_0.x, true, arg_0.x || false), vec4<bool>(true, var_2.e.x >= var_1.a.x, all(vec3<bool>(false, true, true)), false), vec4<bool>(func_1(var_0.a, true).a, var_0.a.a, arg_1.a.a, var_3.a || var_3.a))), _wgslsmith_f_op_vec4_f32(select(var_3.b, var_3.b, select(select(!vec4<bool>(var_3.a, arg_1.a.a, var_2.a.a.a, var_2.a.a.a), vec4<bool>(false, false, var_3.a, true), global1.a || arg_1.a.a), vec4<bool>(false, var_2.a.a.a, false, true), !select(vec4<bool>(arg_1.a.a, false, var_0.a.a, false), vec4<bool>(arg_1.a.a, false, true, var_2.a.a.a), vec4<bool>(false, false, false, true))))));
    return ~4294967295u;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_5) -> Struct_5 {
    var var_0 = !select(vec2<bool>(false, -219f >= _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(3540u, 8u)], global2[_wgslsmith_index_u32(38881u, 8u)], global1.a))), vec2<bool>(true, (729f < global2[_wgslsmith_index_u32(1u, 8u)]) && true), vec2<bool>(!(arg_2.a || global1.a), !func_3()));
    let var_1 = -19010i | ~(-countOneBits(~u_input.d.x));
    global2 = array<f32, 8>();
    let var_2 = arg_2.b.x;
    let var_3 = 69801u;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(global1.a, global1.a, true);
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global1.b.wzw), global1.b.zyz, false));
    global1 = Struct_2(var_0.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(abs(global1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(83955u, 8u)] + global2[_wgslsmith_index_u32(28828u, 8u)]) * -172f), _wgslsmith_f_op_f32(977f * _wgslsmith_div_f32(global2[_wgslsmith_index_u32(1u, 8u)], 541f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(61532u, 8u)])), _wgslsmith_f_op_f32(f32(-1f) * -1246f), global2[_wgslsmith_index_u32(~4294967295u, 8u)], _wgslsmith_f_op_f32(960f * -2009f)) + global1.b)));
    global0 = u_input.d.x;
    let var_2 = func_5(~_wgslsmith_mult_vec3_i32(~(-vec3<i32>(u_input.d.x, -1i, u_input.b)), select(vec3<i32>(9877i, u_input.b, 3398i), min(vec3<i32>(7925i, u_input.d.x, -2147483647i), vec3<i32>(0i, u_input.b, u_input.c)), true)), Struct_3(abs(select(~vec2<u32>(1u, 8733u), vec2<u32>(11705u, 1u), vec2<bool>(true, global1.a))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(firstTrailingBit(1u), 8u)]), func_4(!vec3<bool>(var_0.x, var_0.x, true), Struct_4(func_1(Struct_1(true, u_input.d, u_input.c, u_input.b), global1.a)))), Struct_2(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(global1.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-412f, 1235f, 911f, global1.b.x))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(888f, 752f, 484f, -211f))))), Struct_5(Struct_4(func_2()), _wgslsmith_mod_i32(6054i, -min(-9458i, -14558i)), Struct_3(vec2<u32>(1u, 1u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(1599f)))), 54668u), ~min(~vec4<i32>(u_input.d.x, u_input.c, u_input.d.x, 18470i), vec4<i32>(2147483647i, -26510i, u_input.a, u_input.c)), reverseBits(vec3<u32>(1u, 1u, 1u))));
    global0 = 26427i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-35549i, ~(-2147483647i)), u_input.d), -15046i, select(-1i >> (0u % 32u), var_2.d.x << (11649u % 32u), func_1(Struct_1(var_2.a.a.a, var_2.a.a.b, 26456i, var_2.a.a.d), var_2.a.a.a).a) ^ -_wgslsmith_div_i32(u_input.c, 586i), _wgslsmith_sub_i32((var_2.a.a.d >> (var_2.c.c % 32u)) << (var_2.c.c % 32u), ~u_input.d.x)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), -221f), 168f))), firstTrailingBit(_wgslsmith_clamp_u32(var_2.e.x, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_2.c.c, var_2.c.c, 4294967295u), vec4<u32>(var_2.c.a.x, var_2.c.a.x, var_2.c.a.x, var_2.e.x))), _wgslsmith_add_u32(64820u, reverseBits(1u)))), func_5(select(var_2.d.yyy, vec3<i32>(var_2.a.a.c, -2147483647i, 8650i), vec3<bool>(true, var_0.x, false)) ^ -vec3<i32>(var_2.d.x, u_input.a, var_2.b), func_5(~vec3<i32>(u_input.c, var_2.b, u_input.b), var_2.c, Struct_2(global1.a, global1.b), Struct_5(Struct_4(var_2.a.a), u_input.d.x, var_2.c, var_2.d, vec3<u32>(4294967295u, var_2.c.a.x, var_2.c.c))).c, Struct_2(false | var_2.a.a.a, vec4<f32>(var_2.c.b, global2[_wgslsmith_index_u32(1u, 8u)], -720f, global2[_wgslsmith_index_u32(59233u, 8u)])), Struct_5(func_5(vec3<i32>(0i, 46155i, u_input.a), Struct_3(var_2.e.zy, -229f, 0u), Struct_2(var_0.x, global1.b), var_2).a, 0i << (var_2.e.x % 32u), Struct_3(var_2.e.zz, var_1.x, 1u), max(vec4<i32>(0i, var_2.b, 28118i, -1i), var_2.d), ~vec3<u32>(1u, 41252u, 1u))).a.a.c & -15771i);
}

