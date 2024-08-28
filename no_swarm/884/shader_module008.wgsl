struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
    c: Struct_1,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 16> = array<vec3<u32>, 16>(vec3<u32>(1u, 32377u, 1u), vec3<u32>(25396u, 35751u, 80950u), vec3<u32>(113539u, 44867u, 1u), vec3<u32>(8100u, 4294967295u, 4294967295u), vec3<u32>(35857u, 1u, 62651u), vec3<u32>(50355u, 0u, 19672u), vec3<u32>(3139u, 4294967295u, 1u), vec3<u32>(15091u, 4146u, 4294967295u), vec3<u32>(51388u, 55453u, 1u), vec3<u32>(53477u, 26916u, 4294967295u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(1u, 57578u, 1u), vec3<u32>(1u, 74119u, 11159u), vec3<u32>(82175u, 4294967295u, 4294967295u), vec3<u32>(0u, 42168u, 22118u), vec3<u32>(1u, 1u, 1u));

var<private> global1: array<f32, 14>;

var<private> global2: Struct_2;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: i32) -> Struct_1 {
    return global2.d;
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_4, arg_3: Struct_2) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(func_2(~0u, Struct_3(false, arg_3.d.a.xy), _wgslsmith_div_i32(arg_2.d.x, u_input.b.x)).b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.b.x))), arg_2.c.b.x))));
    global0 = array<vec3<u32>, 16>();
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -399f, 164f, var_0.x)))) * vec4<f32>(392f, global1[_wgslsmith_index_u32(select(arg_0.a.x, 1u, true), 14u)], 461f, _wgslsmith_div_f32(1141f, global2.d.b.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.d.b.x, global2.d.b.x, global1[_wgslsmith_index_u32(1u, 14u)], arg_0.b.x))))));
    var var_2 = !(!select(!(!arg_2.b.a), false, arg_2.b.a));
    let var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(abs(arg_2.a)), arg_2.b, Struct_1(select(~global2.d.a, global2.d.a, !arg_3.c || global2.c), vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-243f, 269f)) - arg_3.d.b.x))), -vec4<i32>(1i, (0i ^ arg_2.d.x) & (arg_1 >> (arg_3.d.a.x % 32u)), countOneBits(3048i) | min(1i, arg_3.b.x), max(-34100i, u_input.e.x)));
    return _wgslsmith_add_vec2_u32(vec2<u32>(16986u, ~countOneBits(~u_input.a)), vec2<u32>(firstTrailingBit(min(global2.d.a.x, countOneBits(arg_2.c.a.x))), min(0u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(arg_0.a.zx, vec2<u32>(global2.d.a.x, arg_2.b.b.x)), ~var_3.b.b))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: Struct_3) -> Struct_3 {
    var var_0 = !select(vec3<bool>(true, select(any(vec3<bool>(arg_2.a, false, arg_2.a)), u_input.c.x == 39276i, true), any(!vec2<bool>(global2.c, global2.c))), select(select(select(vec3<bool>(global2.c, false, global2.c), vec3<bool>(arg_2.a, global2.c, true), global2.c), vec3<bool>(false, arg_2.a, false), true), select(select(vec3<bool>(true, arg_2.a, true), vec3<bool>(arg_2.a, false, true), arg_2.a), !vec3<bool>(true, false, global2.c), !arg_2.a), vec3<bool>(any(vec4<bool>(global2.c, arg_2.a, arg_2.a, arg_2.a)), false, global1[_wgslsmith_index_u32(4726u, 14u)] < 108f)), !all(vec3<bool>(arg_2.a, true, arg_2.a)));
    global1 = array<f32, 14>();
    global0 = array<vec3<u32>, 16>();
    var var_1 = Struct_2(global2.a & -16488i, ~_wgslsmith_mod_vec4_i32(select(abs(global2.b), _wgslsmith_mult_vec4_i32(global2.b, vec4<i32>(u_input.e.x, 27441i, global2.b.x, 57558i)), select(vec4<bool>(global2.c, true, arg_2.a, true), vec4<bool>(true, false, false, true), vec4<bool>(var_0.x, var_0.x, true, arg_2.a))), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-51321i, -14595i, global2.b.x, global2.b.x), global2.b, u_input.e)), !(_wgslsmith_mult_u32(2247u, 1u) == _wgslsmith_clamp_u32(27536u, ~25250u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b.x, 0u, 4294967295u, 11050u), vec4<u32>(1u, arg_0.x, 4294967295u, arg_1.x)))), func_2(~(~abs(arg_0.x)), Struct_3(true, reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(0u, 4294967295u)))), global2.a));
    var var_2 = var_1.d.a;
    return Struct_3(true, vec2<u32>(~_wgslsmith_add_u32(120283u, global2.d.a.x << (61764u % 32u)), arg_0.x));
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: Struct_4) -> Struct_3 {
    let var_0 = Struct_3(true, ~countOneBits(_wgslsmith_mult_vec2_u32(arg_2.c.a.xx, global2.d.a.yz ^ arg_2.c.a.zz)));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d.b.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1454f)) + -936f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.d.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1112f) * _wgslsmith_f_op_f32(round(963f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.c.b.x))))))));
    global0 = array<vec3<u32>, 16>();
    global0 = array<vec3<u32>, 16>();
    var var_2 = ~_wgslsmith_sub_vec4_i32(select((vec4<i32>(arg_2.d.x, global2.a, arg_2.d.x, global2.a) & arg_2.d) | -vec4<i32>(global2.a, u_input.b.x, 1i, -2147483647i), vec4<i32>(global2.a, firstTrailingBit(arg_2.d.x), 39011i, global2.b.x), true), -_wgslsmith_clamp_vec4_i32(arg_2.d, select(arg_2.d, global2.b, vec4<bool>(false, global2.c, false, global2.c)), vec4<i32>(-1i, 2147483647i, u_input.d, global2.a)));
    return arg_2.b;
}

fn func_1(arg_0: f32, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = global2.d.a.x;
    let var_1 = func_5(_wgslsmith_f_op_f32(f32(-1f) * -714f), func_4(select(abs(global2.d.a.xz), global2.d.a.zy, select(true, true, 12160u <= global2.d.a.x)), firstLeadingBit(~vec2<u32>(global2.d.a.x, 1u)), Struct_3(false, func_3(func_2(u_input.a, Struct_3(global2.c, global2.d.a.zz), u_input.d), 1i, Struct_4(vec3<f32>(-1570f, 1755f, arg_0), Struct_3(true, global2.d.a.yx), global2.d, u_input.e), Struct_2(arg_1.x, vec4<i32>(arg_1.x, u_input.d, u_input.c.x, 2147483647i), global2.c, global2.d)))), Struct_4(vec3<f32>(_wgslsmith_f_op_f32(exp2(global2.d.b.x)), 982f, _wgslsmith_f_op_f32(trunc(-367f))), Struct_3(global2.c, firstLeadingBit(~global2.d.a.zz)), func_2(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, global2.d.a.x), vec2<u32>(10334u, 0u)), global2.d.a.xy), Struct_3(-32297i <= global2.a, vec2<u32>(u_input.a, 27615u)), u_input.c.x), vec4<i32>(global2.b.x, _wgslsmith_dot_vec3_i32(min(u_input.e.wxx, u_input.c), vec3<i32>(u_input.c.x, 2991i, u_input.c.x)), min(-1i, 2147483647i), ~1i)));
    global1 = array<f32, 14>();
    global0 = array<vec3<u32>, 16>();
    let var_2 = vec3<bool>(true, true, true);
    return global2.d;
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: i32, arg_3: u32) -> Struct_3 {
    global1 = array<f32, 14>();
    var var_0 = arg_0.b;
    let var_1 = global2.c;
    let var_2 = Struct_3(true, _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, arg_3)), vec2<u32>(global2.d.a.x, arg_0.a.x)), global2.d.a.yz, abs(~global2.d.a.zy)), vec2<u32>(_wgslsmith_dot_vec3_u32(~arg_0.a, firstLeadingBit(vec3<u32>(global2.d.a.x, arg_0.a.x, 1u))), u_input.a)));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1563f, global1[_wgslsmith_index_u32(arg_3, 14u)]), vec2<f32>(-241f, -1000f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1252f, global2.d.b.x), arg_0.b))), _wgslsmith_f_op_vec2_f32(-func_2(arg_3, var_2, _wgslsmith_sub_i32(arg_2, -1i)).b))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1880f, global2.d.b.x))))) + _wgslsmith_f_op_vec2_f32(min(global2.d.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(-814f, -415f) + _wgslsmith_f_op_vec2_f32(min(arg_0.b, vec2<f32>(1961f, 1888f))))))));
    return func_5(var_3.x, var_2, Struct_4(_wgslsmith_div_vec3_f32(vec3<f32>(-358f, var_0.x, _wgslsmith_div_f32(var_3.x, var_0.x)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-2146f, 489f, -1000f), vec3<f32>(-493f, arg_0.b.x, var_3.x)))))), func_4(~vec2<u32>(0u, 1u), vec2<u32>(~4294967295u, ~arg_0.a.x), Struct_3(any(vec2<bool>(false, true)), arg_0.a.zy)), global2.d, firstLeadingBit(global2.b)));
}

fn func_7(arg_0: bool, arg_1: Struct_4, arg_2: vec3<u32>) -> Struct_4 {
    var var_0 = reverseBits(-(~(global2.b.wwy << (vec3<u32>(75952u, arg_1.b.b.x, u_input.a) % vec3<u32>(32u)))));
    var var_1 = arg_1;
    var var_2 = _wgslsmith_mod_i32(var_1.d.x >> (~u_input.a % 32u), -1i);
    var var_3 = min(~arg_2.x, ~arg_2.x);
    var_2 = ~0i;
    return Struct_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2253f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_2.x, 14u)]), -1163f) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-226f, global2.d.b.x, global1[_wgslsmith_index_u32(0u, 14u)]), vec3<f32>(global2.d.b.x, global1[_wgslsmith_index_u32(arg_2.x, 14u)], arg_1.a.x)))), vec3<f32>(var_1.a.x, arg_1.a.x, _wgslsmith_f_op_f32(-func_1(global2.d.b.x, arg_1.d).b.x))), var_1.b, arg_1.c, vec4<i32>(-1i) * -firstLeadingBit(vec4<i32>(var_0.x, 58635i, var_0.x, -19610i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 16>();
    global2 = Struct_2(u_input.d, global2.b, !global2.c, global2.d);
    let var_0 = Struct_1(global2.d.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 14u)], -355f))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global2.d.b - _wgslsmith_f_op_vec2_f32(-global2.d.b))))));
    let var_1 = func_7(global2.c, Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d.b.x - 396f)), -344f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-855f)) - 490f)), func_6(func_1(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 14u)] - 499f), vec4<i32>(global2.a, u_input.d, u_input.d, global2.a)), -2147483647i, global2.b.x, 1u), global2.d, abs(_wgslsmith_div_vec4_i32(~u_input.e, firstTrailingBit(u_input.b)))), vec3<u32>((1u & _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(0u, 16u)], vec3<u32>(1u, 23657u, u_input.a))) | 1u, func_5(-1000f, func_4(~global2.d.a.zz, vec2<u32>(4294967295u, 21814u), Struct_3(false, vec2<u32>(0u, 39031u))), Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(-264f, -1819f, 1425f) * vec3<f32>(var_0.b.x, var_0.b.x, global2.d.b.x)), Struct_3(global2.c, vec2<u32>(19640u, u_input.a)), func_2(var_0.a.x, Struct_3(global2.c, var_0.a.xx), 31078i), vec4<i32>(0i, global2.a, 59386i, u_input.e.x))).b.x, ~(var_0.a.x >> (u_input.a % 32u))));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 1000f) * _wgslsmith_div_f32(_wgslsmith_div_f32(606f, _wgslsmith_f_op_f32(select(var_1.c.b.x, 2247f, true))), _wgslsmith_f_op_f32(f32(-1f) * -174f))), -997f));
    let var_3 = Struct_3(var_1.b.a, _wgslsmith_add_vec2_u32(firstTrailingBit(_wgslsmith_mod_vec2_u32(min(var_1.b.b, var_1.b.b), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 45918u), global2.d.a.zz))), func_4(~vec2<u32>(0u, 24121u), vec2<u32>(~0u, var_0.a.x), Struct_3(true, vec2<u32>(4294967295u, 45678u))).b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-238f, var_1.a.x, global2.d.b.x), var_1.a, vec3<bool>(true, var_3.a, global2.c))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.b.x, 1459f, var_1.c.b.x) - vec3<f32>(625f, -1221f, -535f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_1.a))))));
}

