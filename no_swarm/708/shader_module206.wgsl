struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<bool>,
    d: vec4<bool>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<u32, 4> = array<u32, 4>(8026u, 4294967295u, 98334u, 4294967295u);

var<private> global1: Struct_1;

var<private> global2: vec3<bool> = vec3<bool>(true, false, false);

var<private> global3: array<f32, 3> = array<f32, 3>(1248f, -723f, 1712f);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2() -> i32 {
    global2 = !(!vec3<bool>(!global1.b, false, any(!vec3<bool>(global2.x, false, global1.c.x))));
    let var_0 = global1.e.x;
    global2 = global1.d.zzy;
    global3 = array<f32, 3>();
    global0 = array<u32, 4>();
    return -2147483647i;
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: vec4<u32>) -> vec4<bool> {
    global1 = Struct_1(firstTrailingBit(-78690i), 8466i != -global1.a, select(select(!select(global1.d, global1.c, false), arg_1, 836f > _wgslsmith_f_op_f32(max(-237f, global3[_wgslsmith_index_u32(1u, 3u)]))), select(global1.d, vec4<bool>(global1.b, global1.d.x, global1.d.x, global2.x), !vec4<bool>(global2.x, true, false, true)), !global2.x), select(select(vec4<bool>(false, select(arg_1.x, false, global1.d.x), !arg_1.x, false), !vec4<bool>(false, arg_1.x, global1.d.x, true), arg_1), vec4<bool>(true, _wgslsmith_div_f32(1000f, 2231f) > _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(arg_0, 3u)], global3[_wgslsmith_index_u32(arg_2.x, 3u)])), global1.b, true), true), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.e) + vec2<f32>(432f, -1000f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(459f, global3[_wgslsmith_index_u32(36881u, 3u)]) + _wgslsmith_f_op_vec2_f32(global1.e + vec2<f32>(global1.e.x, -466f)))))));
    var var_0 = Struct_1(global1.a << ((1u << (_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(arg_2, arg_2), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 72285u, 1u, 11455u), arg_2)) % 32u)) % 32u), true, vec4<bool>(global1.c.x, global2.x | true, any(vec3<bool>(true, true, true)), any(select(arg_1.wyx, global1.d.zxz, false))), !arg_1, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global1.e), global1.e, true)) + vec2<f32>(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(59936u, 3u)], global3[_wgslsmith_index_u32(49065u, 3u)]), 806f)) * _wgslsmith_f_op_vec2_f32(round(global1.e))));
    let var_1 = Struct_1(u_input.b.x, !(!global2.x), vec4<bool>(firstTrailingBit(_wgslsmith_sub_u32(0u, arg_2.x)) <= _wgslsmith_div_u32(_wgslsmith_div_u32(126196u, arg_0), ~arg_2.x), false, global2.x, true), !(!select(arg_1, select(arg_1, vec4<bool>(false, arg_1.x, global1.d.x, false), vec4<bool>(var_0.c.x, true, global1.d.x, arg_1.x)), true)), var_0.e);
    var_0 = Struct_1(_wgslsmith_mult_i32(6884i, -2171i), true || var_1.d.x, !select(var_1.d, select(!var_1.c, arg_1, vec4<bool>(false, global1.c.x, global1.d.x, false)), var_1.d), !var_0.d, vec2<f32>(905f, _wgslsmith_f_op_f32(global1.e.x + var_0.e.x)));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(966f, var_0.e.x, -190f, 183f)))))), vec4<f32>(_wgslsmith_f_op_f32(1575f + 464f), -1000f, -877f, 509f));
    return global1.c;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<u32> {
    global0 = array<u32, 4>();
    var var_0 = !arg_3.b;
    return abs(abs(~vec4<u32>(0u, u_input.a, 78425u, 4294967295u))) & vec4<u32>(~global0[_wgslsmith_index_u32(0u, 4u)], _wgslsmith_mod_u32(u_input.a, ~_wgslsmith_mult_u32(21300u, global0[_wgslsmith_index_u32(u_input.a, 4u)])), u_input.a, u_input.a);
}

fn func_5(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: vec3<u32>, arg_3: u32) -> Struct_1 {
    global2 = !(!select(vec3<bool>(select(true, global1.c.x, true), true, global2.x), select(global1.c.wyy, vec3<bool>(global2.x, global2.x, global2.x), arg_1.x >= arg_1.x), true));
    let var_0 = 0u;
    global2 = vec3<bool>(true, countOneBits(~_wgslsmith_dot_vec3_i32(vec3<i32>(3790i, u_input.b.x, 33091i), vec3<i32>(u_input.b.x, global1.a, u_input.b.x))) == _wgslsmith_sub_i32(1i, global1.a), select(true, !global2.x & !func_3(0u, vec4<bool>(global1.b, global2.x, global2.x, true), vec4<u32>(90606u, arg_0.x, 0u, arg_0.x)).x, global1.b));
    var var_1 = Struct_1(global1.a & abs(0i), !(((global1.a | 0i) >= arg_1.x) && (true | global2.x)), global1.d, !vec4<bool>(true, 22456i < -arg_1.x, global2.x, global1.c.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.e) * _wgslsmith_f_op_vec2_f32(-global1.e)));
    global2 = vec3<bool>(!select(var_1.c.x, all(vec2<bool>(true, false)), 4294967295u > max(arg_0.x, 94362u)), any(var_1.d), global2.x);
    return Struct_1(_wgslsmith_mult_i32(global1.a, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -38717i, u_input.b.x, -1i), vec4<i32>(arg_1.x, arg_1.x, arg_1.x, 2147483647i)) >> ((arg_2.x | 71600u) % 32u)), all(vec2<bool>(global2.x, true && (global2.x | true))), global1.d, var_1.c, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(890f, global3[_wgslsmith_index_u32(0u, 3u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global1.e)) * _wgslsmith_f_op_vec2_f32(-global1.e))))));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: i32) -> Struct_1 {
    global0 = array<u32, 4>();
    var var_0 = func_5(func_4(Struct_1(~func_2(), _wgslsmith_f_op_f32(min(global1.e.x, global1.e.x)) > _wgslsmith_f_op_f32(f32(-1f) * -296f), !func_3(36368u, global1.c, vec4<u32>(u_input.a, 7373u, u_input.a, u_input.a)), !(!global1.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(593f, global1.e.x), global1.e)))), global1.d, Struct_1(1i, !arg_1.x, vec4<bool>(false, global1.c.x, true == global2.x, true), vec4<bool>(any(vec3<bool>(arg_1.x, true, arg_1.x)), false, true, !global2.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global1.e), vec2<f32>(1507f, 312f), vec2<bool>(global2.x, true)))), Struct_1(arg_2.x, any(vec2<bool>(false, true)) != false, vec4<bool>(any(vec3<bool>(global2.x, global1.c.x, false)), false, global2.x, global2.x), arg_1, vec2<f32>(global1.e.x, _wgslsmith_f_op_f32(-global1.e.x)))), ~(-vec4<i32>(arg_3 << (u_input.a % 32u), 2147483647i, arg_3, 1i)), ~func_4(Struct_1(arg_3 | u_input.b.x, global1.d.x, select(vec4<bool>(global1.d.x, false, arg_1.x, arg_1.x), global1.d, global1.d), arg_1, _wgslsmith_f_op_vec2_f32(-global1.e)), !vec4<bool>(false, global1.c.x, true, arg_1.x), Struct_1(-u_input.b.x, global2.x, func_3(16266u, vec4<bool>(true, true, true, global1.c.x), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(48320u, 4u)], 4u)], 4u)], global0[_wgslsmith_index_u32(u_input.a, 4u)], global0[_wgslsmith_index_u32(38820u, 4u)], u_input.a)), global1.c, vec2<f32>(-436f, global3[_wgslsmith_index_u32(0u, 3u)])), Struct_1(arg_3, true, select(vec4<bool>(false, global1.d.x, false, false), vec4<bool>(global2.x, global1.c.x, global2.x, arg_1.x), vec4<bool>(global1.b, global2.x, global2.x, true)), func_3(0u, global1.d, vec4<u32>(14080u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 45935u, u_input.a)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.e.x, 789f))))).xxx, _wgslsmith_clamp_u32(reverseBits(min(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43520u, 4u)], 4u)], 4u)])) | 1u, firstTrailingBit(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(11241u, 4u)], 4u)]) & ~countOneBits(u_input.a), ~global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.a, 0u), 4u)]));
    let var_1 = func_5(~vec4<u32>(u_input.a, u_input.a, ~(~global0[_wgslsmith_index_u32(u_input.a, 4u)]), u_input.a), -_wgslsmith_mod_vec4_i32(arg_0, vec4<i32>(-1i, u_input.b.x, 33464i, arg_3) & _wgslsmith_sub_vec4_i32(arg_0, vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, 2147483647i))), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, firstTrailingBit(global0[_wgslsmith_index_u32(min(28337u, global0[_wgslsmith_index_u32(u_input.a, 4u)]), 4u)]), ~global0[_wgslsmith_index_u32(~4294967295u, 4u)]), max((vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(u_input.a, 4u)], 17979u) >> (vec3<u32>(global0[_wgslsmith_index_u32(15651u, 4u)], 4294967295u, 1u) % vec3<u32>(32u))) & ~vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(98972u, 4u)], 47384u), _wgslsmith_clamp_vec3_u32(select(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 4u)], 4u)], 4u)], u_input.a, 0u), vec3<u32>(global0[_wgslsmith_index_u32(0u, 4u)], 16134u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 4u)], 4u)]), false), min(vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 4u)], global0[_wgslsmith_index_u32(u_input.a, 4u)], 63006u), vec3<u32>(u_input.a, u_input.a, 93921u)), vec3<u32>(1u, 4294967295u, 25250u)))), u_input.a);
    return func_5(vec4<u32>(~4294967295u, u_input.a, ~select(_wgslsmith_mult_u32(u_input.a, 3265u), _wgslsmith_dot_vec4_u32(vec4<u32>(54902u, 47947u, 1u, 4294967295u), vec4<u32>(global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(u_input.a, 4u)], 66130u, 4294967295u)), all(var_0.c.zww)), ~global0[_wgslsmith_index_u32(u_input.a, 4u)]), arg_0, ~(~vec3<u32>(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(12642u, 4u)], 4u)], 40792u, max(4294967295u, u_input.a))), 12259u);
}

fn func_6(arg_0: Struct_1, arg_1: vec3<u32>) -> vec4<bool> {
    global2 = func_3(_wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(13647u, 1u, 65662u, 27100u), ~vec4<u32>(1u, 84926u, arg_1.x, arg_1.x)), vec4<u32>(0u, 0u, 52792u << (global0[_wgslsmith_index_u32(4294967295u, 4u)] % 32u), u_input.a))), !func_5(vec4<u32>(u_input.a, u_input.a ^ 37778u, ~arg_1.x, ~u_input.a), vec4<i32>(_wgslsmith_sub_i32(37139i, global1.a), ~arg_0.a, func_5(vec4<u32>(32742u, 4294967295u, global0[_wgslsmith_index_u32(12696u, 4u)], u_input.a), vec4<i32>(1i, 1i, arg_0.a, u_input.b.x), arg_1, 4294967295u).a, -67199i), arg_1, u_input.a).d, vec4<u32>(~arg_1.x, u_input.a, 36810u, arg_1.x)).wzw;
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.e.x - global1.e.x), _wgslsmith_f_op_f32(-global1.e.x), global3[_wgslsmith_index_u32(~min(firstTrailingBit(global0[_wgslsmith_index_u32(u_input.a, 4u)]), global0[_wgslsmith_index_u32(~u_input.a, 4u)]), 3u)]), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(904f, arg_0.e.x, arg_0.e.x), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3[_wgslsmith_index_u32(1u, 3u)], -107f, global1.e.x))))))))));
    var var_1 = func_1(reverseBits(~vec4<i32>(u_input.b.x, 34126i, 1i, -38976i) | ~max(vec4<i32>(-36093i, -9280i, 22659i, 0i), vec4<i32>(global1.a, 34637i, -31621i, arg_0.a))), vec4<bool>(!global2.x, true, true, (false | !arg_0.c.x) & arg_0.d.x), u_input.b.zz, max(2147483647i, _wgslsmith_div_i32(1i, ~max(36716i, global1.a))));
    let var_2 = abs(u_input.b);
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_1.e.x, 1797f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -985f), _wgslsmith_div_f32(-430f, 322f)))))), var_1.e.x);
    return select(vec4<bool>(false & !(u_input.a > 49000u), false, (i32(-1i) * -9872i) > ~(var_2.x ^ -53468i), true), vec4<bool>(arg_0.c.x, 11261u <= (_wgslsmith_clamp_u32(arg_1.x, u_input.a, 80225u) | 30334u), true, false), !(!global1.c.x & (!var_1.b & !arg_0.b)));
}

fn func_7(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = 7373i;
    global0 = array<u32, 4>();
    var var_1 = func_5(_wgslsmith_mult_vec4_u32(~vec4<u32>(_wgslsmith_add_u32(61417u, global0[_wgslsmith_index_u32(2012u, 4u)]), 65680u, 4294967295u & global0[_wgslsmith_index_u32(1u, 4u)], ~global0[_wgslsmith_index_u32(u_input.a, 4u)]), vec4<u32>(1u, 6922u, ~44623u, 30982u)), select(firstLeadingBit(vec4<i32>(arg_0.x, -37156i, u_input.b.x, u_input.b.x)) << (~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(36043u, 4u)], 4u)], 4u)], 0u), vec4<u32>(0u, u_input.a, 1u, u_input.a), vec4<u32>(u_input.a, 69262u, 4294967295u, global0[_wgslsmith_index_u32(1u, 4u)])) % vec4<u32>(32u)), min(-arg_0, arg_0), func_3(0u, !(!global1.c), vec4<u32>(24147u, u_input.a, 72172u & u_input.a, ~23223u))), vec3<u32>(0u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 4u)], 4u)], 1u, 65155u), vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], 23298u, global0[_wgslsmith_index_u32(34730u, 4u)])), vec3<u32>(u_input.a, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 4u)], 4u)]) | vec3<u32>(76646u, 1u, global0[_wgslsmith_index_u32(u_input.a, 4u)])), global0[_wgslsmith_index_u32(u_input.a, 4u)] & (u_input.a & 46792u)), u_input.a | ~34511u), u_input.a);
    global2 = vec3<bool>(global2.x, func_1(vec4<i32>(func_1(vec4<i32>(var_1.a, 95441i, arg_1.a, 1i), vec4<bool>(var_1.c.x, global2.x, var_1.d.x, arg_1.d.x), vec2<i32>(arg_1.a, var_1.a), u_input.b.x).a, (arg_0.x ^ 23998i) ^ firstTrailingBit(-1i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -56223i, arg_0.x), ~u_input.b), -func_5(vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 4u)], 4u)], 31938u, u_input.a), vec4<i32>(arg_1.a, 28577i, var_1.a, -8682i), vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], 0u, 58656u), u_input.a).a), func_1(countOneBits(vec4<i32>(21575i, u_input.b.x, u_input.b.x, global1.a)), vec4<bool>(true, true, true, true), vec2<i32>(_wgslsmith_add_i32(2590i, global1.a), firstTrailingBit(global1.a)), -33349i & (var_1.a ^ 11378i)).d, -(~vec2<i32>(global1.a, 1i)), -2147483647i).b, global2.x);
    let var_2 = func_1(arg_0, select(func_5(~(vec4<u32>(11581u, u_input.a, 5049u, u_input.a) << (vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7192u, 4u)], 4u)], global0[_wgslsmith_index_u32(1u, 4u)], 0u, u_input.a) % vec4<u32>(32u))), max(vec4<i32>(2147483647i, global1.a, 5265i, 1i), ~vec4<i32>(45283i, global1.a, global1.a, var_1.a)), ~select(vec3<u32>(35404u, 7012u, 0u), vec3<u32>(1u, u_input.a, u_input.a), vec3<bool>(global1.d.x, true, true)), abs(22621u)).c, !func_1(select(vec4<i32>(arg_0.x, global1.a, -60964i, u_input.b.x), vec4<i32>(-2147483647i, arg_0.x, -44847i, global1.a), vec4<bool>(true, global2.x, false, global2.x)), vec4<bool>(global1.d.x, arg_1.c.x, arg_1.b, var_1.c.x), max(u_input.b.xx, arg_0.xz), -arg_0.x).c, func_1(_wgslsmith_add_vec4_i32(-arg_0, arg_0), global1.d, -(~arg_0.xz), -_wgslsmith_sub_i32(var_1.a, 11247i)).d), max(arg_0.yy, u_input.b.zz), abs(reverseBits(-1i >> (_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16660u, 4u)], 4u)], 24808u) % 32u))));
    return func_5(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(1u >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 4u)], 4u)] % 32u), u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25381u, 4u)], 4u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 4u)], 4u)], 1u, global0[_wgslsmith_index_u32(3304u, 4u)]), vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 4u)], u_input.a, 1u, 18465u)), u_input.a)), ~max(_wgslsmith_sub_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(100145u, 4u)], 4u)], 1u, 1u, 15287u), vec4<u32>(4294967295u, 10256u, u_input.a, 39119u)), ~vec4<u32>(u_input.a, 32081u, 65864u, u_input.a)), min(reverseBits(~vec4<u32>(42033u, 1u, 4294967295u, u_input.a)), vec4<u32>(u_input.a & 4294967295u, ~30697u, abs(30049u), 1259u))), arg_0, _wgslsmith_clamp_vec3_u32(~(vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(27726u, 4u)], global0[_wgslsmith_index_u32(1u, 4u)]) & vec3<u32>(55691u, u_input.a, global0[_wgslsmith_index_u32(1u, 4u)])) ^ vec3<u32>(max(1u, 23657u), firstTrailingBit(u_input.a), u_input.a), ~vec3<u32>(~0u, 6927u, 29055u), vec3<u32>(~37160u, select(select(47641u, 17674u, arg_1.c.x), 58053u, true), ~u_input.a ^ 0u)), 29624u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_7(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-26419i, _wgslsmith_mult_i32(14913i, global1.a), countOneBits(-2903i)), ~u_input.b), global1.a | (global1.a ^ 1408i), u_input.b.x, min(u_input.b.x, u_input.b.x)), Struct_1(9106i, true, func_6(func_1(~vec4<i32>(global1.a, global1.a, 2147483647i, u_input.b.x), !global1.c, ~vec2<i32>(global1.a, 0i), _wgslsmith_div_i32(global1.a, -61840i)), ~(vec3<u32>(75419u, 0u, 59748u) << (vec3<u32>(49310u, 28654u, u_input.a) % vec3<u32>(32u)))), vec4<bool>(global2.x, any(func_3(84819u, global1.c, vec4<u32>(27217u, 41240u, u_input.a, u_input.a)).yw), true, func_5(max(vec4<u32>(u_input.a, 4294967295u, 1u, 95061u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], u_input.a, u_input.a, 28529u)), firstTrailingBit(vec4<i32>(33779i, -12023i, u_input.b.x, -2147483647i)), firstLeadingBit(vec3<u32>(60396u, 0u, global0[_wgslsmith_index_u32(1u, 4u)])), firstTrailingBit(0u)).b), vec2<f32>(660f, global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(3316u, 1u), vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], 0u)), 3u)])));
    var var_0 = ~vec2<u32>(1u, ~4294967295u);
    let var_1 = Struct_1(abs(~(~(u_input.b.x & 1i))), _wgslsmith_mult_u32(u_input.a, ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_0.x), vec2<u32>(13293u, 18297u))) != _wgslsmith_add_u32(~u_input.a, var_0.x), vec4<bool>(-(~(-2147483647i)) != u_input.b.x, all(!vec3<bool>(false, global1.b, global2.x)), 15236i <= _wgslsmith_dot_vec4_i32(vec4<i32>(9687i, -2147483647i, 2147483647i, global1.a), abs(vec4<i32>(u_input.b.x, -16756i, 1i, -28830i))), false), global1.d, global1.e);
    global0 = array<u32, 4>();
    let var_2 = false;
    global0 = array<u32, 4>();
    var_0 = vec2<u32>(abs(21421u), 3770u);
    var var_3 = firstLeadingBit(vec3<u32>(~min(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, global0[_wgslsmith_index_u32(64814u, 4u)]), vec3<u32>(1u, var_0.x, u_input.a)), 21685u), 4294967295u & _wgslsmith_mult_u32(var_0.x >> (82005u % 32u), 1u), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(35289u, _wgslsmith_add_u32(max(u_input.a, 1u), ~0u)), 4u)]));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a << ((global0[_wgslsmith_index_u32(select(~global0[_wgslsmith_index_u32(var_3.x, 4u)], 24163u | global0[_wgslsmith_index_u32(3600u, 4u)], global1.b), 4u)] ^ _wgslsmith_sub_u32(1u, 0u & u_input.a)) % 32u));
}

