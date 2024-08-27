struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec4<f32> = vec4<f32>(1000f, -1256f, -782f, -1464f);

var<private> global2: array<vec2<i32>, 10> = array<vec2<i32>, 10>(vec2<i32>(-13761i, 1i), vec2<i32>(1i, 1i), vec2<i32>(21473i, 2206i), vec2<i32>(20905i, 1i), vec2<i32>(62366i, 11719i), vec2<i32>(0i, -31211i), vec2<i32>(2147483647i, -42732i), vec2<i32>(2606i, 2147483647i), vec2<i32>(0i, 1i), vec2<i32>(24330i, 0i));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> u32 {
    return u_input.c.x;
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = ~_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(u_input.e, u_input.a, u_input.d)), vec3<i32>(u_input.b, u_input.d, 0i)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, -23662i, 0i), vec3<i32>(2147483647i, u_input.d, 2147483647i), vec3<i32>(353i, -1i, u_input.e))), vec3<i32>(_wgslsmith_div_i32(-u_input.b, u_input.b), ~abs(u_input.e), u_input.d | _wgslsmith_dot_vec3_i32(vec3<i32>(-22021i, u_input.b, 0i), vec3<i32>(u_input.a, u_input.e, u_input.d))));
    let var_1 = _wgslsmith_f_op_f32(round(global1.x));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-589f * var_1))), -114f, _wgslsmith_f_op_f32(round(var_1))) + global1.zxw), global0.a, min(u_input.c, vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, global0.a.x, global0.a.x, u_input.c.x), ~u_input.c), ~_wgslsmith_mod_u32(1u, 69u), 25141u, ~102344u)));
    let var_3 = _wgslsmith_div_u32(~func_3(), 1u);
    var var_4 = Struct_3(_wgslsmith_clamp_vec3_u32(~u_input.c.zzw, vec3<u32>(var_3, 1u, var_2.c.x) << (u_input.c.zyw % vec3<u32>(32u)), u_input.c.yyw));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, 506f, global1.x) - _wgslsmith_f_op_vec3_f32(var_2.a - vec3<f32>(943f, var_1, var_2.a.x))))), vec3<u32>(4294967295u, ~countOneBits(13248u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_3, 1273u), vec3<u32>(u_input.c.x, var_4.a.x, 47695u)), ~var_2.c.x, u_input.c.x)) & ~(~(var_4.a ^ vec3<u32>(45940u, 0u, var_3))), vec4<u32>(abs(~_wgslsmith_div_u32(global0.a.x, u_input.c.x)), ~(~23224u ^ var_4.a.x), var_2.b.x, 0u));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: vec3<i32>) -> i32 {
    let var_0 = Struct_2(func_2(_wgslsmith_f_op_vec2_f32(floor(arg_2.a.a.xz))), Struct_1(func_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_0.b.a.xy)))).a, u_input.c.zxy, ~vec4<u32>(0u, ~global0.a.x, u_input.c.x & 1566u, firstLeadingBit(global0.a.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.a.x) * 289f), -416f)), arg_2.e, func_2(_wgslsmith_f_op_vec2_f32(round(arg_2.d.a.yz))));
    let var_1 = Struct_3(vec3<u32>(~(u_input.c.x ^ 41897u) ^ u_input.c.x, ~597u, 4294967295u));
    var var_2 = select(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(global0.a.x, arg_2.e.b.x, var_0.e.c.x, arg_2.b.c.x) << (firstTrailingBit(vec4<u32>(4294967295u, arg_2.a.b.x, global0.a.x, 5888u)) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, arg_0.a.c.x, var_1.a.x, arg_2.b.c.x), var_0.e.c, arg_0.a.c), ~vec4<u32>(var_0.d.b.x, 93752u, arg_0.e.c.x, 19625u))), ~(~(vec4<u32>(16960u, arg_0.e.b.x, u_input.c.x, 1u) & vec4<u32>(arg_0.e.c.x, 30362u, u_input.c.x, 1u))), all(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), false), true)));
    let var_3 = _wgslsmith_f_op_vec3_f32(var_0.d.a - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-483f, arg_2.c, var_0.a.a.x))) + vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b.a.x), _wgslsmith_f_op_f32(1595f + 777f), _wgslsmith_f_op_f32(min(-365f, arg_0.e.a.x))))));
    let var_4 = Struct_4(arg_2.e);
    return -2147483647i;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: i32, arg_3: i32) -> Struct_4 {
    var var_0 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(select(global1.zwx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x))), !(global1.x >= 315f))), u_input.c.yzy, vec4<u32>(4294967295u, global0.a.x, ~(~106590u), 19407u)));
    global2 = array<vec2<i32>, 10>();
    let var_1 = Struct_3(func_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1147f, 678f)), var_0.a.a.zx))))).b);
    let var_2 = var_1;
    var var_3 = arg_0.x;
    return Struct_4(func_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(353f, -790f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(325f, global1.x) - var_0.a.a.yx)), global1.xy))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_3, arg_3: Struct_4) -> Struct_3 {
    var var_0 = Struct_2(arg_3.a, func_4(firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(1i, 9035i), vec2<i32>(u_input.b, u_input.d)) | ~global2[_wgslsmith_index_u32(1u, 10u)]), !select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))), ~(i32(-1i) * -2147483647i), 1i).a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1239f)), -1389f)))), func_4(vec2<i32>(-1i) * -global2[_wgslsmith_index_u32(global0.a.x, 10u)], vec2<bool>(arg_3.a.c.x <= 0u, true), -1i, ~func_1(Struct_2(arg_1.a, arg_3.a, -1002f, Struct_1(vec3<f32>(global1.x, arg_1.a.a.x, global1.x), vec3<u32>(5617u, 0u, global0.a.x), vec4<u32>(4294967295u, arg_2.a.x, arg_1.a.b.x, arg_2.a.x)), Struct_1(vec3<f32>(-425f, -455f, -184f), global0.a, vec4<u32>(1u, u_input.c.x, arg_0.a.b.x, 44233u))), vec3<i32>(u_input.e, u_input.e, 1i), Struct_2(Struct_1(arg_0.a.a, vec3<u32>(arg_0.a.b.x, 1u, arg_2.a.x), vec4<u32>(u_input.c.x, arg_2.a.x, arg_3.a.c.x, arg_3.a.b.x)), arg_3.a, 1442f, Struct_1(global1.zzy, arg_2.a, arg_1.a.c), Struct_1(vec3<f32>(1325f, 127f, 777f), vec3<u32>(global0.a.x, 56229u, arg_0.a.c.x), u_input.c)), vec3<i32>(u_input.a, u_input.d, 1i)) << (~(~78370u) % 32u)).a, arg_0.a);
    global0 = Struct_3(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(min(~arg_0.a.b, ~vec3<u32>(2003u, arg_0.a.b.x, 1u)), abs(var_0.e.b)), reverseBits(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 12386u, 1u), vec3<u32>(47246u, u_input.c.x, 1u))))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -330f);
    var var_2 = _wgslsmith_f_op_vec2_f32(select(global1.zw, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_1.a.a.xx), _wgslsmith_f_op_vec2_f32(arg_0.a.a.xy + vec2<f32>(1000f, global1.x)), true)), var_0.d.a.zx, all(vec2<bool>(true, true)))) + func_2(arg_0.a.a.yz).a.zx), select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false)), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), true), select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(u_input.a < u_input.b, true)), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true))))));
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1603f, -302f, var_0.a.a.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.a.a.x, -892f, arg_1.a.a.x) + vec3<f32>(-1444f, arg_0.a.a.x, var_0.c))))), abs(vec3<u32>(arg_3.a.b.x, arg_3.a.c.x & arg_2.a.x, 14875u)), min(firstTrailingBit(_wgslsmith_div_vec4_u32(arg_3.a.c, vec4<u32>(0u, arg_2.a.x, var_0.b.c.x, 70733u))), ~vec4<u32>(global0.a.x, var_0.e.b.x, arg_0.a.b.x, 24985u))), func_2(var_0.d.a.zz), global1.x, Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global1.x, arg_0.a.a.x)), _wgslsmith_f_op_f32(select(var_2.x, var_2.x, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), -410f), _wgslsmith_f_op_f32(-arg_1.a.a.x)), vec3<u32>(arg_1.a.c.x >> (~arg_0.a.c.x % 32u), 3608u, arg_0.a.b.x), arg_0.a.c), func_2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -313f), arg_1.a.a.x)))));
    return Struct_3(arg_1.a.b);
}

fn func_6(arg_0: Struct_3, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(arg_2.a));
    global2 = array<vec2<i32>, 10>();
    return func_4(max(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, arg_2.c.x), 10u)], vec2<i32>(~u_input.d, ~2147483647i)), select(!(!vec2<bool>(true, arg_3)), !vec2<bool>(arg_1, var_0.x == var_0.x), true), u_input.d, -u_input.e);
}

fn func_7(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_4, arg_3: f32) -> StorageBuffer {
    var var_0 = true;
    global0 = Struct_3(_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(firstTrailingBit(global0.a.x), 16061u, func_4(global2[_wgslsmith_index_u32(1616u, 10u)], vec2<bool>(true, false), u_input.d, 1i).a.b.x)), arg_2.a.c.wzw));
    global1 = vec4<f32>(-522f, arg_1.a.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-643f, _wgslsmith_f_op_f32(abs(arg_3)), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.a.a.x)))))), _wgslsmith_f_op_f32(525f + arg_2.a.a.x));
    global0 = func_5(arg_0, arg_0, Struct_3(vec3<u32>(_wgslsmith_sub_u32(7216u, func_4(global2[_wgslsmith_index_u32(29783u, 10u)], vec2<bool>(false, false), u_input.a, 6578i).a.c.x), 34892u, ~select(arg_1.a.b.x, 78558u, true))), arg_0);
    var var_1 = func_5(func_4(firstLeadingBit(vec2<i32>(~u_input.d, ~u_input.d)), !vec2<bool>(false, any(vec2<bool>(false, true))), u_input.d << (firstLeadingBit(~0u) % 32u), (select(31501i, u_input.e, true) | (i32(-1i) * -2147483647i)) >> (arg_0.a.b.x % 32u)), arg_2, Struct_3(arg_2.a.c.zzz), arg_0);
    return StorageBuffer(u_input.e, _wgslsmith_mod_vec2_i32(global2[_wgslsmith_index_u32(~max(0u, 4294967295u) >> (~arg_2.a.b.x % 32u), 10u)], ~global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_2.a.c.x, 19776u), 10u)]), vec3<i32>(firstTrailingBit(u_input.d) | u_input.a, select(-32248i, max(-2656i, u_input.e), select(false, false, true)), _wgslsmith_clamp_i32(~(-1228i), abs(u_input.e), 5055i | u_input.e)) ^ vec3<i32>(u_input.b, firstLeadingBit(u_input.b), u_input.e), _wgslsmith_f_op_f32(round(arg_3)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<i32>, 10>();
    let x = u_input.a;
    s_output = func_7(func_6(func_5(func_4(vec2<i32>(u_input.e, -26025i), vec2<bool>(true, true), func_1(Struct_2(Struct_1(vec3<f32>(2107f, global1.x, global1.x), vec3<u32>(0u, global0.a.x, u_input.c.x), vec4<u32>(4294967295u, 44528u, global0.a.x, 4294967295u)), Struct_1(vec3<f32>(global1.x, global1.x, 278f), u_input.c.xzw, u_input.c), global1.x, Struct_1(global1.ywy, u_input.c.zyx, u_input.c), Struct_1(vec3<f32>(-297f, 756f, global1.x), global0.a, u_input.c)), vec3<i32>(57505i, 11906i, u_input.a), Struct_2(Struct_1(vec3<f32>(1538f, -661f, global1.x), vec3<u32>(14195u, u_input.c.x, 48773u), vec4<u32>(1u, u_input.c.x, 1u, u_input.c.x)), Struct_1(global1.xwy, vec3<u32>(global0.a.x, 49404u, 5091u), vec4<u32>(54634u, 54713u, global0.a.x, 66450u)), global1.x, Struct_1(vec3<f32>(1143f, global1.x, global1.x), vec3<u32>(91906u, 35689u, global0.a.x), u_input.c), Struct_1(global1.ywz, global0.a, u_input.c)), vec3<i32>(u_input.a, u_input.d, -1i)), firstTrailingBit(u_input.a)), func_4(-vec2<i32>(u_input.e, -15766i), vec2<bool>(true, true), -u_input.e, _wgslsmith_add_i32(40642i, u_input.d)), Struct_3(vec3<u32>(global0.a.x, 4294967295u, 21506u)), func_4(~vec2<i32>(u_input.b, u_input.e), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), max(u_input.b, u_input.d), 6463i)), true, func_4(global2[_wgslsmith_index_u32(15133u >> (_wgslsmith_div_u32(1u, u_input.c.x) % 32u), 10u)], vec2<bool>(true, true), -_wgslsmith_mult_i32(16389i, -53266i), 1i).a, true), Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.x, global1.x, global1.x))), vec3<u32>(u_input.c.x, 23246u, 4294967295u) >> (~u_input.c.xwz % vec3<u32>(32u)), vec4<u32>(u_input.c.x, 1u, 0u, global0.a.x) >> (_wgslsmith_div_vec4_u32(vec4<u32>(37355u, u_input.c.x, 51668u, 25738u), u_input.c) % vec4<u32>(32u)))), Struct_4(Struct_1(vec3<f32>(_wgslsmith_div_f32(global1.x, global1.x), global1.x, global1.x), global0.a ^ u_input.c.xxx, abs(~vec4<u32>(global0.a.x, u_input.c.x, u_input.c.x, 1u)))), 391f);
}

