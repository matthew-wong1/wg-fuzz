struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_2 = Struct_2(Struct_1(-32157i, true));

var<private> global2: f32 = -679f;

var<private> global3: array<Struct_1, 11>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_1) -> f32 {
    let var_0 = true;
    var var_1 = global1.a.a;
    var var_2 = vec4<f32>(-3211f, 665f, _wgslsmith_f_op_f32(max(-927f, -724f)), 999f);
    let var_3 = false;
    global1 = Struct_2(global0.c.a);
    return var_2.x;
}

fn func_2() -> Struct_3 {
    global2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-332f * -1245f))) * _wgslsmith_f_op_f32(trunc(-1393f))), -2372f));
    var var_0 = 37149i;
    let var_1 = ~vec3<u32>(43953u >> (~(~u_input.a) % 32u), abs(66421u) >> ((~4294967295u | ~u_input.a) % 32u), u_input.a);
    let var_2 = Struct_3(Struct_2(Struct_1(88013i, true)), Struct_2(global0.d), global0.c, Struct_1(2147483647i, !all(select(vec4<bool>(false, global1.a.b, global0.c.a.b, false), vec4<bool>(false, false, false, true), false))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -308f)), -790f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) + _wgslsmith_div_f32(1599f, _wgslsmith_f_op_f32(func_3(select(select(vec4<bool>(false, global1.a.b, true, global1.a.b), vec4<bool>(false, global1.a.b, true, global0.b.a.b), true), vec4<bool>(false, global1.a.b, global1.a.b, global0.a.a.b), !vec4<bool>(false, global0.d.b, global0.d.b, var_2.d.b)), 24990i, global3[_wgslsmith_index_u32(u_input.a << (reverseBits(u_input.a) % 32u), 11u)]))));
    return Struct_3(Struct_2(global3[_wgslsmith_index_u32(var_1.x, 11u)]), Struct_2(Struct_1(global0.c.a.a, var_3 <= _wgslsmith_f_op_f32(-var_3))), var_2.a, Struct_1(-1747i, !(global0.d.a > u_input.d.x)));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_add_i32(_wgslsmith_mult_i32(25187i, firstLeadingBit(_wgslsmith_clamp_i32(arg_0.a.a.a, global1.a.a, 0i) | global1.a.a)), -global1.a.a);
    var var_1 = arg_0.b;
    global0 = Struct_3(Struct_2(Struct_1(_wgslsmith_sub_i32(-global1.a.a, reverseBits(global1.a.a)), var_1.a.b)), Struct_2(Struct_1(max(1i, -var_1.a.a), true)), func_2().c, global0.b.a);
    var var_2 = arg_0;
    let var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-867f)), _wgslsmith_f_op_f32(trunc(-419f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-197f + 1000f) + -349f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-458f * 322f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -983f), _wgslsmith_f_op_f32(step(-1209f, _wgslsmith_f_op_f32(floor(1358f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1609f, -1000f)) - vec2<f32>(_wgslsmith_f_op_f32(floor(948f)), _wgslsmith_f_op_f32(step(1000f, 720f))))));
    return global0.c.a;
}

fn func_5(arg_0: Struct_1) -> Struct_3 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1675f), _wgslsmith_div_f32(-950f, -437f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(117f - -2239f)), -838f))));
    var var_0 = func_4(Struct_3(Struct_2(Struct_1(1i, 1i > global0.a.a.a)), Struct_2(func_4(func_2())), func_2().b, arg_0));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(210f, 496f)), _wgslsmith_f_op_f32(max(-362f, -250f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-724f)), _wgslsmith_f_op_f32(abs(-1026f))) - vec2<f32>(_wgslsmith_f_op_f32(abs(1000f)), 504f))));
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(select(vec4<bool>(var_0.b, global1.a.b, var_0.b, arg_0.b), vec4<bool>(false, global0.a.a.b, var_0.b, global1.a.b), vec4<bool>(true, global0.d.b, false, false)), abs(arg_0.a), global1.a)))))));
    let var_3 = countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(abs(u_input.c), arg_0.a ^ arg_0.a, _wgslsmith_clamp_i32(global1.a.a, u_input.b, -31718i), u_input.b) ^ _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(var_0.a, u_input.d.x, 12599i, -1850i)), max(vec4<i32>(global0.b.a.a, -1i, global0.c.a.a, arg_0.a), vec4<i32>(global1.a.a, global0.a.a.a, -5652i, global0.b.a.a))), _wgslsmith_mult_vec4_i32(-select(vec4<i32>(-2147483647i, -1i, global0.a.a.a, 1i), vec4<i32>(var_0.a, -18116i, 2147483647i, global1.a.a), false), vec4<i32>(-u_input.b, func_2().b.a.a, 13005i, u_input.c))));
    return Struct_3(Struct_2(arg_0), Struct_2(func_4(Struct_3(func_2().c, Struct_2(Struct_1(arg_0.a, true)), func_2().a, func_4(Struct_3(global0.a, global0.c, global0.b, global3[_wgslsmith_index_u32(u_input.a, 11u)]))))), global0.b, Struct_1(2147483647i, global1.a.b));
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_3) -> vec3<bool> {
    global3 = array<Struct_1, 11>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-arg_0.zx);
    var var_1 = arg_1.a;
    var var_2 = select(select(!(!vec2<bool>(global0.d.b, arg_1.a.a.b)), vec2<bool>(false, !global0.b.a.b), select(select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, global0.a.a.b), vec2<bool>(true, false), vec2<bool>(global0.a.a.b, arg_2.c.a.b))), select(vec2<bool>(true, true), vec2<bool>(arg_2.b.a.b, false), select(vec2<bool>(true, global1.a.b), vec2<bool>(arg_2.d.b, false), vec2<bool>(false, var_1.a.b))), any(!vec3<bool>(global1.a.b, global0.c.a.b, true)))), !vec2<bool>(func_4(arg_1).b | any(vec2<bool>(global1.a.b, false)), !arg_2.a.a.b), arg_1.a.a.b);
    let var_3 = func_5(func_2().a.a).c.a;
    return select(!select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, var_3.b), false), !vec3<bool>(true, false, arg_1.a.a.b), !vec3<bool>(false, arg_1.c.a.b, true)), !(!vec3<bool>(var_2.x, arg_2.c.a.b, true)), !vec3<bool>(true, global1.a.b, global0.b.a.b)), !(!(!select(vec3<bool>(true, true, arg_1.a.a.b), vec3<bool>(true, arg_2.a.a.b, true), vec3<bool>(false, arg_2.b.a.b, global0.d.b)))), true);
}

fn func_1() -> StorageBuffer {
    let var_0 = func_6(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, -732f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1093f, -451f)) - _wgslsmith_f_op_f32(-734f - 592f)))), func_5(func_4(func_2())), Struct_3(global0.b, Struct_2(func_5(global3[_wgslsmith_index_u32(~5899u, 11u)]).b.a), func_2().a, Struct_1(_wgslsmith_add_i32(~u_input.b, global1.a.a), false)));
    global0 = func_2();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-520f, -256f, 670f, 706f), vec4<f32>(326f, -836f, 1016f, -979f), true)) - vec4<f32>(-294f, 786f, 1438f, 2420f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -104f, -1635f, 934f))), vec4<bool>(global1.a.b, true, true, global0.d.b)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-139f * 568f), 1f, _wgslsmith_f_op_f32(f32(-1f) * -1058f), _wgslsmith_f_op_f32(-360f * -1000f)) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -263f), _wgslsmith_div_f32(-459f, -565f), _wgslsmith_f_op_f32(ceil(-1093f)), _wgslsmith_f_op_f32(-1000f - -853f)))));
    global1 = global0.a;
    global1 = func_2().c;
    return StorageBuffer(~u_input.d.x, -abs(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, global0.d.a, -1i), vec3<i32>(19967i, global1.a.a, 1i))) ^ vec3<i32>(func_4(func_5(global1.a)).a, func_2().c.a.a, -30692i << (_wgslsmith_div_u32(4294967295u, u_input.a) % 32u)), ~countOneBits(vec2<u32>(4034u, _wgslsmith_dot_vec4_u32(vec4<u32>(29458u, u_input.a, 0u, u_input.a), vec4<u32>(u_input.a, 35445u, 41204u, 0u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -966f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -623f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_0 = u_input.a;
    global2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1554f, 303f, true)) - _wgslsmith_f_op_f32(ceil(-1382f)))))));
    global2 = 294f;
    global2 = 1000f;
    let var_1 = Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(41267u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_0, 4294967295u, u_input.a), vec4<u32>(var_0, u_input.a, 48736u, 4294967295u) & vec4<u32>(var_0, 4294967295u, 33111u, u_input.a))), vec2<u32>(79403u, u_input.a)), 11u)]);
    let x = u_input.a;
    s_output = func_1();
}

