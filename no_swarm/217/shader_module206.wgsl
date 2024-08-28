struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 15>;

var<private> global1: vec2<i32> = vec2<i32>(i32(-2147483648), -33796i);

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> i32 {
    global2 = array<Struct_1, 29>();
    var var_0 = any(vec4<bool>(arg_0.d.d.x, !(!arg_0.d.b.a) && true, (_wgslsmith_div_u32(u_input.e.x, 4294967295u) & _wgslsmith_dot_vec3_u32(u_input.e, vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x))) < 1u, arg_0.a.c.a));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(min(max(~u_input.e.x, 4294967295u), abs((70861u << (u_input.e.x % 32u)) ^ _wgslsmith_div_u32(u_input.e.x, 1u))), u_input.e.x), 29u)];
    var var_2 = Struct_3(arg_0.d, arg_0.a.a, arg_0.c, arg_0.a);
    var var_3 = vec3<f32>(arg_0.c.x, arg_0.c.x, _wgslsmith_div_f32(336f, _wgslsmith_f_op_f32(step(var_2.c.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c.x, arg_0.c.x) - _wgslsmith_div_f32(-1021f, -516f))))));
    return var_2.d.e.x;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec2<f32>) -> Struct_3 {
    var var_0 = arg_0;
    let var_1 = Struct_3(Struct_2(arg_0, arg_0, arg_0, !vec4<bool>(true, arg_0.a && arg_0.a, true, arg_0.a), vec3<i32>(54779i, u_input.d, -func_3(Struct_3(Struct_2(Struct_1(true), Struct_1(arg_0.a), arg_0, vec4<bool>(false, true, arg_0.a, arg_0.a), global0[_wgslsmith_index_u32(21752u, 15u)]), Struct_1(var_0.a), vec2<f32>(-150f, 1494f), Struct_2(Struct_1(false), global2[_wgslsmith_index_u32(arg_1, 29u)], arg_0, vec4<bool>(var_0.a, arg_0.a, false, true), vec3<i32>(global1.x, 2147483647i, u_input.a))), false))), global2[_wgslsmith_index_u32(1u, 29u)], _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_2.x, arg_2.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, arg_2.x) - vec2<f32>(arg_2.x, arg_2.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_2.x, -606f))) - arg_2))), Struct_2(Struct_1(true || any(vec4<bool>(arg_0.a, arg_0.a, var_0.a, false))), Struct_1(true), Struct_1(false), vec4<bool>(var_0.a, !select(true, arg_0.a, var_0.a), all(!vec4<bool>(true, var_0.a, false, var_0.a)), 28180u < arg_1), -(~_wgslsmith_sub_vec3_i32(u_input.b.yyz, global0[_wgslsmith_index_u32(36743u, 15u)]))));
    global1 = u_input.b.xx;
    let var_2 = -_wgslsmith_clamp_vec4_i32(vec4<i32>(select(2147483647i, _wgslsmith_clamp_i32(global1.x, 1i, global1.x), true), firstTrailingBit(_wgslsmith_mult_i32(2147483647i, var_1.a.e.x)), _wgslsmith_mult_i32(-29257i, _wgslsmith_sub_i32(-2147483647i, u_input.c)), firstLeadingBit(u_input.a)), u_input.b, _wgslsmith_div_vec4_i32(firstTrailingBit(reverseBits(vec4<i32>(var_1.d.e.x, u_input.b.x, -63426i, 1947i))), vec4<i32>(~1i, 1i, -29717i, abs(var_1.a.e.x))));
    global0 = array<vec3<i32>, 15>();
    return Struct_3(var_1.a, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~countOneBits(vec4<u32>(arg_1, arg_1, 0u, arg_1))), vec4<u32>(u_input.e.x, 0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 4294967295u, 0u, 0u), firstLeadingBit(vec4<u32>(1u, 36133u, u_input.e.x, 25247u))), 41292u)), 29u)], arg_2, Struct_2(Struct_1(false), Struct_1(var_0.a), Struct_1(arg_0.a), !select(select(var_1.d.d, vec4<bool>(false, true, false, true), var_1.d.d), var_1.d.d, var_1.d.d), u_input.b.wyz >> (vec3<u32>(25543u, arg_1 << (1u % 32u), ~u_input.e.x) % vec3<u32>(32u))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: Struct_3) -> Struct_2 {
    global0 = array<vec3<i32>, 15>();
    let var_0 = _wgslsmith_dot_vec2_i32(abs(abs(vec2<i32>(0i, ~u_input.b.x))), vec2<i32>(_wgslsmith_sub_i32(0i, -4041i), ~arg_1.e.x));
    var var_1 = arg_3;
    var var_2 = ~_wgslsmith_mult_u32(1u, ~1u);
    global2 = array<Struct_1, 29>();
    return arg_3.a;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<u32>) -> vec3<i32> {
    let var_0 = arg_0.d.wwx;
    var var_1 = Struct_2(Struct_1(any(vec4<bool>(any(vec4<bool>(true, true, true, true)), var_0.x, true, func_4(vec3<u32>(u_input.e.x, arg_1.x, arg_1.x), Struct_2(Struct_1(true), arg_0.a, arg_0.b, arg_0.d, global0[_wgslsmith_index_u32(arg_1.x, 15u)]), u_input.e.zx, Struct_3(arg_0, global2[_wgslsmith_index_u32(arg_1.x, 29u)], vec2<f32>(-1385f, 423f), arg_0)).c.a))), func_2(Struct_1(arg_0.d.x), (firstTrailingBit(0u) ^ arg_1.x) & 1u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))).a.b, Struct_1((_wgslsmith_f_op_f32(floor(-286f)) >= _wgslsmith_f_op_f32(min(-689f, -831f))) || true), vec4<bool>(var_0.x & (true & !var_0.x), !((3609i >= global1.x) != arg_0.b.a), !var_0.x, var_0.x), u_input.b.yxx);
    return vec3<i32>(func_4(max(~u_input.e, vec3<u32>(4294967295u, 9952u, 14646u)), Struct_2(arg_0.b, arg_0.a, arg_0.b, !var_1.d, u_input.b.zxz), vec2<u32>(~arg_1.x, ~arg_1.x), Struct_3(arg_0, Struct_1(arg_0.c.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(266f, -1000f) - vec2<f32>(650f, 850f))), Struct_2(func_2(Struct_1(var_0.x), 31338u, vec2<f32>(-1041f, 761f)).a.b, var_1.c, func_2(arg_0.c, arg_1.x, vec2<f32>(-192f, 655f)).d.a, vec4<bool>(false, var_1.b.a, true, false), ~vec3<i32>(-1i, global1.x, -7725i)))).e.x, -u_input.a, _wgslsmith_dot_vec4_i32(min(vec4<i32>(var_1.e.x, ~(-1i), 1i, -var_1.e.x), ~u_input.b), u_input.b));
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_3(Struct_2(global2[_wgslsmith_index_u32(~(~33819u), 29u)], global2[_wgslsmith_index_u32(14078u, 29u)], global2[_wgslsmith_index_u32(52304u >> (u_input.e.x % 32u), 29u)], select(vec4<bool>(any(vec4<bool>(false, true, false, true)), true, false, false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false)), true), true), func_5(func_4(u_input.e >> (u_input.e % vec3<u32>(32u)), Struct_2(global2[_wgslsmith_index_u32(u_input.e.x, 29u)], Struct_1(false), Struct_1(false), vec4<bool>(true, true, true, true), vec3<i32>(0i, arg_0, arg_0)), u_input.e.yz, func_2(global2[_wgslsmith_index_u32(u_input.e.x, 29u)], u_input.e.x, vec2<f32>(2102f, -1009f))), u_input.e.xy)), Struct_1(false), func_2(global2[_wgslsmith_index_u32(abs(~_wgslsmith_mult_u32(36045u, 0u)), 29u)], ~4294967295u, vec2<f32>(-426f, _wgslsmith_f_op_f32(-1963f + -1302f))).c, func_4(_wgslsmith_div_vec3_u32(u_input.e, u_input.e), Struct_2(func_2(func_4(u_input.e, Struct_2(Struct_1(true), global2[_wgslsmith_index_u32(1u, 29u)], global2[_wgslsmith_index_u32(1u, 29u)], vec4<bool>(false, false, false, true), vec3<i32>(arg_0, -34867i, 56015i)), vec2<u32>(4294967295u, 4294967295u), Struct_3(Struct_2(Struct_1(false), global2[_wgslsmith_index_u32(u_input.e.x, 29u)], global2[_wgslsmith_index_u32(4294967295u, 29u)], vec4<bool>(true, true, true, true), vec3<i32>(u_input.b.x, -63989i, u_input.b.x)), Struct_1(false), vec2<f32>(-1000f, 1000f), Struct_2(Struct_1(false), global2[_wgslsmith_index_u32(u_input.e.x, 29u)], global2[_wgslsmith_index_u32(u_input.e.x, 29u)], vec4<bool>(false, true, true, true), vec3<i32>(36101i, global1.x, -1i)))).b, ~61487u, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1161f, -201f), vec2<f32>(189f, -427f)))).a.a, global2[_wgslsmith_index_u32(countOneBits(12621u >> (1u % 32u)), 29u)], Struct_1(any(vec2<bool>(true, true))), vec4<bool>(true, true, true, true), ~vec3<i32>(arg_0, global1.x, global1.x) >> (vec3<u32>(u_input.e.x, u_input.e.x, 37835u) % vec3<u32>(32u))), ~(~(~vec2<u32>(1u, u_input.e.x))), func_2(Struct_1(true), ~u_input.e.x, vec2<f32>(_wgslsmith_f_op_f32(-595f * 398f), _wgslsmith_f_op_f32(f32(-1f) * -849f)))));
    global1 = ~(-var_0.d.e.yx);
    let var_1 = var_0.d.d;
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-474f, 2510f, -326f) * vec3<f32>(539f, var_0.c.x, 723f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1594f, var_0.c.x, -1000f))), true)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, -147f, 354f) - vec3<f32>(var_0.c.x, var_0.c.x, var_0.c.x))))), vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1000f, var_0.c.x)))), _wgslsmith_f_op_f32(-var_0.c.x)));
    global0 = array<vec3<i32>, 15>();
    return func_4(~u_input.e, var_0.d, vec2<u32>(_wgslsmith_mult_u32(25568u, _wgslsmith_mod_u32(4294967295u, u_input.e.x)) | u_input.e.x, 1u), Struct_3(var_0.a, Struct_1(countOneBits(92493u) > (u_input.e.x << (u_input.e.x % 32u))), var_2.xz, func_4(vec3<u32>(~u_input.e.x, 1386u, reverseBits(0u)), func_4(select(u_input.e, vec3<u32>(u_input.e.x, 1u, u_input.e.x), var_0.a.d.wyx), Struct_2(var_0.b, global2[_wgslsmith_index_u32(15732u, 29u)], var_0.a.c, var_0.a.d, vec3<i32>(0i, u_input.a, var_0.d.e.x)), u_input.e.yz, Struct_3(Struct_2(Struct_1(false), global2[_wgslsmith_index_u32(0u, 29u)], Struct_1(false), vec4<bool>(false, false, var_0.a.c.a, var_0.d.c.a), u_input.b.xww), Struct_1(false), var_2.yz, var_0.a)), u_input.e.xy, Struct_3(func_2(var_0.b, 130787u, vec2<f32>(var_2.x, -905f)).d, func_2(Struct_1(true), u_input.e.x, var_0.c).b, vec2<f32>(1203f, 684f), Struct_2(var_0.a.a, var_0.b, global2[_wgslsmith_index_u32(4294967295u, 29u)], var_0.d.d, vec3<i32>(u_input.c, -11680i, var_0.d.e.x)))))).c;
}

fn func_6(arg_0: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_div_vec2_i32(arg_0.e.yz ^ (vec2<i32>(global1.x, ~8626i) | ~(-vec2<i32>(-1i, -18296i))), arg_0.e.zz);
    var var_1 = !(!((u_input.e.x >= firstLeadingBit(1u)) & false));
    var var_2 = vec3<f32>(1080f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(func_2(arg_0.c, 0u, vec2<f32>(-1333f, -534f)).c.x, 1f))) - 1000f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(866f)), _wgslsmith_f_op_f32(select(-2384f, 886f, false)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var var_3 = Struct_2(Struct_1(false), func_4(abs(_wgslsmith_mod_vec3_u32(u_input.e, vec3<u32>(4294967295u, u_input.e.x, 0u))), Struct_2(Struct_1(false), global2[_wgslsmith_index_u32(1u, 29u)], arg_0.c, select(arg_0.d, !vec4<bool>(arg_0.c.a, arg_0.a.a, true, arg_0.a.a), func_2(arg_0.c, u_input.e.x, var_2.xx).d.d), ~vec3<i32>(arg_0.e.x, u_input.b.x, var_0.x)), reverseBits(_wgslsmith_add_vec2_u32(max(u_input.e.yx, vec2<u32>(u_input.e.x, u_input.e.x)), vec2<u32>(0u, u_input.e.x) | u_input.e.yx)), Struct_3(func_2(Struct_1(arg_0.c.a), _wgslsmith_add_u32(u_input.e.x, 51628u), _wgslsmith_f_op_vec2_f32(var_2.xy - vec2<f32>(1000f, var_2.x))).d, Struct_1(true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1258f, -1337f)), arg_0)).c, func_2(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(9286u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.e.x, 8130u), ~u_input.e.x), ~(~44139u)), 29u)], abs(~(~u_input.e.x)), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.x * -624f))), -1584f)).b, select(!arg_0.d, arg_0.d, arg_0.b.a), u_input.b.xyx);
    var var_4 = !func_1(func_4(vec3<u32>(4294967295u, 3040u, u_input.e.x), func_4(u_input.e, Struct_2(Struct_1(false), global2[_wgslsmith_index_u32(u_input.e.x, 29u)], global2[_wgslsmith_index_u32(1u, 29u)], vec4<bool>(var_3.c.a, var_3.a.a, var_3.d.x, var_3.b.a), global0[_wgslsmith_index_u32(u_input.e.x, 15u)]), vec2<u32>(4294967295u, 19509u), Struct_3(Struct_2(global2[_wgslsmith_index_u32(u_input.e.x, 29u)], Struct_1(arg_0.c.a), var_3.b, var_3.d, vec3<i32>(0i, var_0.x, 1i)), var_3.c, vec2<f32>(-459f, 440f), Struct_2(Struct_1(true), var_3.b, Struct_1(false), vec4<bool>(true, var_3.b.a, var_3.a.a, var_3.b.a), vec3<i32>(10069i, arg_0.e.x, 15979i)))), vec2<u32>(1193u, 29901u), func_2(Struct_1(arg_0.b.a), 1u, var_2.yz)).e.x).a && (-1384f >= var_2.x);
    return func_4(_wgslsmith_mult_vec3_u32(max(vec3<u32>(_wgslsmith_mod_u32(u_input.e.x, u_input.e.x), ~u_input.e.x, u_input.e.x), vec3<u32>(0u, _wgslsmith_mult_u32(u_input.e.x, u_input.e.x), 1u)), vec3<u32>(~u_input.e.x, 91342u, 1u) << (reverseBits(~u_input.e) % vec3<u32>(32u))), arg_0, ~u_input.e.xx, Struct_3(arg_0, Struct_1(false), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.x, var_2.x), var_2.xy, func_4(u_input.e, arg_0, vec2<u32>(u_input.e.x, u_input.e.x), Struct_3(arg_0, var_3.b, var_2.xx, Struct_2(Struct_1(arg_0.b.a), Struct_1(false), global2[_wgslsmith_index_u32(1u, 29u)], arg_0.d, var_3.e))).c.a)), var_2.xz), Struct_2(var_3.b, func_1(-13769i), Struct_1(0u < u_input.e.x), func_2(Struct_1(false), u_input.e.x, var_2.xz).a.d, ~(~vec3<i32>(arg_0.e.x, -2147483647i, global1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_2(func_1(1i), func_4(~vec3<u32>(0u, 0u, u_input.e.x), func_4(_wgslsmith_mult_vec3_u32(u_input.e, vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x)), func_4(u_input.e, Struct_2(global2[_wgslsmith_index_u32(68331u, 29u)], global2[_wgslsmith_index_u32(u_input.e.x, 29u)], global2[_wgslsmith_index_u32(55586u, 29u)], vec4<bool>(false, false, false, true), u_input.b.yyz), u_input.e.xz, Struct_3(Struct_2(global2[_wgslsmith_index_u32(1u, 29u)], global2[_wgslsmith_index_u32(u_input.e.x, 29u)], global2[_wgslsmith_index_u32(62102u, 29u)], vec4<bool>(false, true, true, true), vec3<i32>(u_input.d, -18039i, u_input.d)), global2[_wgslsmith_index_u32(u_input.e.x, 29u)], vec2<f32>(293f, -613f), Struct_2(Struct_1(true), global2[_wgslsmith_index_u32(u_input.e.x, 29u)], global2[_wgslsmith_index_u32(4294967295u, 29u)], vec4<bool>(true, false, false, true), global0[_wgslsmith_index_u32(0u, 15u)]))), vec2<u32>(u_input.e.x, 91956u) | vec2<u32>(u_input.e.x, u_input.e.x), func_2(Struct_1(true), u_input.e.x, vec2<f32>(106f, -2000f))), countOneBits(~vec2<u32>(u_input.e.x, 2314u)), Struct_3(func_2(Struct_1(false), u_input.e.x, vec2<f32>(-1564f, -191f)).a, Struct_1(false), vec2<f32>(111f, 1000f), Struct_2(global2[_wgslsmith_index_u32(51627u, 29u)], Struct_1(false), Struct_1(false), vec4<bool>(false, true, true, true), vec3<i32>(global1.x, -34173i, global1.x)))).c, func_1(-func_5(Struct_2(global2[_wgslsmith_index_u32(u_input.e.x, 29u)], global2[_wgslsmith_index_u32(u_input.e.x, 29u)], Struct_1(false), vec4<bool>(true, false, false, true), vec3<i32>(u_input.b.x, -13516i, -15529i)), vec2<u32>(4294967295u, 4294967295u)).x), vec4<bool>(true, true, (u_input.e.x << (16073u % 32u)) <= u_input.e.x, all(vec3<bool>(true, false, false))), func_2(Struct_1(false), _wgslsmith_mult_u32(u_input.e.x, 58727u) & 4294967295u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1011f, 1181f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1860f, -2145f) + vec2<f32>(-442f, 881f)))).a.e));
    let var_1 = Struct_1(false);
    let var_2 = var_0;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -283f), _wgslsmith_div_f32(-2106f, 1292f), _wgslsmith_div_f32(-1000f, -2829f))), vec3<f32>(func_2(Struct_1(false), 0u, vec2<f32>(1583f, -474f)).c.x, 695f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(353f + 465f)))) - vec3<f32>(func_2(func_1(var_2.e.x & 18391i), reverseBits(~8931u), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, -492f), vec2<f32>(1955f, 1000f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-583f, 1000f) - vec2<f32>(-323f, -251f)))).c.x, 2101f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) - -1675f);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_i32(_wgslsmith_div_i32(-2147483647i, var_2.e.x), max(global1.x, global1.x)) >> (~select(~u_input.e.x, 28127u << (u_input.e.x % 32u), true) % 32u), ~u_input.e.x, 239f, 0u);
}

