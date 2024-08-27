struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_4 {
    a: f32,
    b: u32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: f32,
    c: vec2<bool>,
    d: vec4<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: f32, arg_3: f32) -> i32 {
    var var_0 = (_wgslsmith_dot_vec4_i32(vec4<i32>(max(2147483647i, 71768i), -39913i, -21331i << (global0[_wgslsmith_index_u32(1u, 30u)] % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(-18183i, 1i), vec2<i32>(1i, -2147483647i))), _wgslsmith_div_vec4_i32(min(vec4<i32>(28269i, 2147483647i, 2147483647i, 2147483647i), vec4<i32>(-16213i, 30907i, 0i, -32368i)), countOneBits(vec4<i32>(1i, -22515i, -1i, 9082i)))) & -(~_wgslsmith_dot_vec4_i32(vec4<i32>(-10888i, -18758i, 1i, -2147483647i), vec4<i32>(19054i, -607i, -72321i, 1i)))) | -1i;
    var_0 = abs(_wgslsmith_mod_i32(-1i, 19167i));
    global0 = array<u32, 30>();
    var_0 = _wgslsmith_mult_i32(~(-1i), 9971i);
    var var_1 = vec2<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(22352i, 42087i, 18665i, 1i), vec4<bool>(true, true, true, true)), -(vec4<i32>(-31231i, 29510i, -28664i, 2147483647i) >> (vec4<u32>(42232u, 1u, 70556u, u_input.a) % vec4<u32>(32u)))) >> (~select(21460u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, 4294967295u), vec3<u32>(1u, arg_0.b, 29188u)), true) % 32u), -16046i);
    return _wgslsmith_div_i32(var_1.x, -1i) << (_wgslsmith_clamp_u32(~global0[_wgslsmith_index_u32(~59754u << (global0[_wgslsmith_index_u32(~0u, 30u)] % 32u), 30u)], ~0u, u_input.a) % 32u);
}

fn func_2() -> u32 {
    global0 = array<u32, 30>();
    let var_0 = 2147483647i;
    var var_1 = Struct_2(Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(~70446u), 30u)], 30u)], var_0), Struct_1(~(~(~u_input.a)), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-11313i, var_0, var_0, -1i)), ~vec4<i32>(var_0, var_0, var_0, var_0)) >> (30204u % 32u)), Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 30u)], global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(29749u, 30u)], 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, u_input.a, 109370u), vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(u_input.a, 30u)], 4294967295u, global0[_wgslsmith_index_u32(u_input.a, 30u)])), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(7868u, 1u, global0[_wgslsmith_index_u32(4294967295u, 30u)], 1u) % vec4<u32>(32u))), vec4<u32>(abs(1u), countOneBits(1u), global0[_wgslsmith_index_u32(~31075u, 30u)], 1u)), _wgslsmith_mod_i32(-31502i, _wgslsmith_dot_vec2_i32(~vec2<i32>(-13888i, 1i), countOneBits(vec2<i32>(var_0, var_0))))), Struct_1(~34651u, -1i), Struct_1(u_input.a, -firstLeadingBit(func_3(Struct_4(235f, 10228u), vec4<f32>(-2082f, -459f, 704f, 1869f), -279f, -204f))));
    let var_2 = countOneBits(reverseBits(max(-var_1.d.b, -28761i)));
    var_1 = Struct_2(Struct_1(abs(min(15089u, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(18061u, 6421u), 30u)])), _wgslsmith_dot_vec4_i32(-(~vec4<i32>(var_1.a.b, var_0, var_1.a.b, -2147483647i)), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.b.b, 22328i, -2147483647i, var_2), vec4<i32>(2147483647i, -1i, var_2, -2147483647i)), vec4<i32>(var_2, 3569i, var_2, 891i)))), Struct_1(_wgslsmith_sub_u32(4294967295u, abs(53884u)), var_0), Struct_1(0u, -9692i), Struct_1(_wgslsmith_mult_u32(_wgslsmith_sub_u32(abs(4294967295u), var_1.c.a & 5079u), 0u), -_wgslsmith_mod_i32(countOneBits(var_0), ~18417i)), var_1.c);
    return 0u;
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: f32) -> vec4<u32> {
    global0 = array<u32, 30>();
    global0 = array<u32, 30>();
    global0 = array<u32, 30>();
    global0 = array<u32, 30>();
    global0 = array<u32, 30>();
    return abs(~vec4<u32>(arg_0.b, global0[_wgslsmith_index_u32(max(arg_0.b, 39558u), 30u)], max(1u, 1586u), 1u) ^ vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], 22885u), func_2(), 1u), arg_0.b, 0u, ~arg_0.b));
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: bool, arg_3: i32) -> Struct_3 {
    global0 = array<u32, 30>();
    global0 = array<u32, 30>();
    var var_0 = -1026f;
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(532f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -498f) + _wgslsmith_div_f32(1000f, 729f)))));
    var var_1 = firstLeadingBit(_wgslsmith_dot_vec2_u32(abs(arg_0.zw), _wgslsmith_div_vec2_u32(arg_0.yz, ~_wgslsmith_clamp_vec2_u32(arg_0.wx, arg_0.ww, arg_0.wy))));
    return Struct_3(!arg_2, ~func_1(Struct_4(_wgslsmith_f_op_f32(max(295f, 607f)), 22114u), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(arg_3, arg_1, arg_3)), vec3<i32>(arg_3, 62123i, arg_1)), -1000f).xx);
}

fn func_5(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: Struct_3) -> Struct_2 {
    var var_0 = Struct_3(!(!(!arg_2.a)) || arg_2.a, countOneBits(_wgslsmith_clamp_vec2_u32(arg_2.b, abs(min(arg_2.b, arg_2.b)), (vec2<u32>(450u, u_input.a) ^ vec2<u32>(u_input.a, 3451u)) & ~arg_2.b)));
    var var_1 = func_4(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 62035u), vec2<u32>(u_input.a, arg_2.b.x)), _wgslsmith_sub_u32(1u, arg_2.b.x), u_input.a ^ arg_2.b.x), _wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(1u, 39772u, 21031u, 28665u)), _wgslsmith_add_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(54441u, 30u)], 0u, 30494u, global0[_wgslsmith_index_u32(4294967295u, 30u)]), vec4<u32>(u_input.a, 1u, global0[_wgslsmith_index_u32(10462u, 30u)], global0[_wgslsmith_index_u32(arg_2.b.x, 30u)]))), vec4<bool>(!arg_2.a, true, true, var_0.a == arg_2.a)), vec4<u32>(reverseBits(23208u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.x, arg_2.b.x, var_0.b.x), vec3<u32>(arg_2.b.x, 4294967295u, 34474u)), ~arg_2.b.x, 17625u ^ var_0.b.x) & ~max(vec4<u32>(u_input.a, var_0.b.x, arg_2.b.x, 57281u), vec4<u32>(var_0.b.x, 86616u, global0[_wgslsmith_index_u32(arg_2.b.x, 30u)], 5020u)), ~select(_wgslsmith_mod_vec4_u32(vec4<u32>(78155u, var_0.b.x, u_input.a, u_input.a), vec4<u32>(var_0.b.x, 1u, global0[_wgslsmith_index_u32(u_input.a, 30u)], 13324u)), ~vec4<u32>(var_0.b.x, 28584u, global0[_wgslsmith_index_u32(44804u, 30u)], var_0.b.x), !vec4<bool>(arg_2.a, arg_2.a, false, var_0.a))), _wgslsmith_mult_i32(abs(_wgslsmith_sub_i32(arg_0.x, ~(-23705i))), abs(_wgslsmith_div_i32(-arg_0.x, 1i))), -2147483647i >= abs(arg_0.x), -arg_0.x);
    var var_2 = vec2<u32>(u_input.a, _wgslsmith_sub_u32(~(arg_2.b.x << ((global0[_wgslsmith_index_u32(19217u, 30u)] | 1u) % 32u)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_clamp_u32(u_input.a, global0[_wgslsmith_index_u32(62917u, 30u)], 51432u), _wgslsmith_sub_u32(~var_1.b.x, firstLeadingBit(87347u))), 30u)]));
    var_2 = ~(~_wgslsmith_div_vec2_u32(select(~vec2<u32>(80781u, 1u), var_1.b, arg_2.a | true), ~(arg_2.b ^ vec2<u32>(4294967295u, 37154u))));
    var_2 = func_4(vec4<u32>(74465u, 4294967295u, 1u, var_1.b.x), ~1i, -1i >= _wgslsmith_sub_i32(arg_0.x & abs(1i), arg_0.x), arg_0.x).b;
    return Struct_2(Struct_1(0u, 0i), Struct_1(1u, ~0i), Struct_1(1u, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(arg_0.x, i32(-1i) * -17261i), -29961i, arg_0.x)), Struct_1(~0u, -2147483647i), Struct_1(_wgslsmith_add_u32(arg_2.b.x, min(u_input.a, u_input.a)), select(-arg_0.x, func_3(Struct_4(1089f, arg_2.b.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1135f, arg_1.x, -2414f, arg_1.x) - vec4<f32>(1754f, arg_1.x, arg_1.x, -472f)), _wgslsmith_f_op_f32(arg_1.x - -766f), arg_1.x), any(!vec3<bool>(var_0.a, var_1.a, false)))));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: bool, arg_3: bool) -> vec2<i32> {
    let var_0 = abs(firstTrailingBit(~(~_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.a.b, arg_1.x, arg_0.c.b, arg_0.d.b), vec4<i32>(arg_1.x, 28921i, 0i, arg_0.c.b)))));
    global0 = array<u32, 30>();
    var var_1 = arg_0.a.b < (arg_0.c.b ^ arg_0.e.b);
    let var_2 = vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 25810i >> (1u % 32u)), arg_1), -min(select(vec2<i32>(arg_1.x, arg_0.e.b), arg_1, true), _wgslsmith_clamp_vec2_i32(arg_1, var_0.wx, vec2<i32>(2147483647i, arg_0.a.b)))), max(arg_1.x, ~0i));
    var_1 = arg_3;
    return select(-abs(arg_1), _wgslsmith_mod_vec2_i32(arg_1, var_0.zw), select(!select(select(vec2<bool>(true, arg_3), vec2<bool>(arg_2, arg_2), arg_2), !vec2<bool>(false, arg_3), select(vec2<bool>(arg_2, arg_2), vec2<bool>(true, arg_3), false)), !vec2<bool>(any(vec4<bool>(false, false, arg_3, arg_2)), var_2.x <= 13971i), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -func_6(func_5(-vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(2213f, 855f, 164f), vec3<f32>(-1034f, -1124f, -594f))), func_4(func_1(Struct_4(-1000f, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 30u)], 30u)]), 74427i, 528f), 1i, false, i32(-1i) * -8870i)), vec2<i32>(~11593i, select(_wgslsmith_sub_i32(1i, 32211i), ~1i, u_input.a == 1u)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec4<bool>(false, false, true, false)))), true);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1238f, -107f)));
    var var_2 = Struct_1(~(_wgslsmith_clamp_u32(0u, ~1u, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], global0[_wgslsmith_index_u32(1u, 30u)])) ^ 8071u), -52997i);
    var_2 = func_5(vec4<i32>(-var_0.x, var_2.b, -26381i, var_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(1677f + var_1), _wgslsmith_f_op_f32(max(2262f, var_1))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-804f, 138f, var_1))) * vec3<f32>(619f, -1117f, var_1)))), Struct_3(true, _wgslsmith_div_vec2_u32(vec2<u32>(~u_input.a, _wgslsmith_mod_u32(u_input.a, var_2.a)), _wgslsmith_mod_vec2_u32(~vec2<u32>(1u, 4294967295u), func_4(vec4<u32>(u_input.a, u_input.a, 4294967295u, 21624u), 1i, false, var_2.b).b)))).e;
    global0 = array<u32, 30>();
    let var_3 = func_4(reverseBits(_wgslsmith_add_vec4_u32(~(~vec4<u32>(global0[_wgslsmith_index_u32(0u, 30u)], 4294967295u, 17299u, 1u)), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(0u, 30u)], 0u, u_input.a), select(vec4<u32>(4294967295u, 82261u, u_input.a, 20957u), vec4<u32>(45444u, 24792u, 0u, 19169u), vec4<bool>(true, true, true, true))))), var_0.x, true, 9306i).a;
    let var_4 = !select(vec2<bool>(!var_3, any(select(vec3<bool>(var_3, var_3, var_3), vec3<bool>(true, var_3, true), true))), vec2<bool>(all(vec3<bool>(var_3, var_3, true)) || false, !(true | var_3)), vec2<bool>(all(vec2<bool>(false, true)), max(var_0.x, 1i) <= (var_2.b ^ 7316i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(180f, _wgslsmith_f_op_f32(f32(-1f) * -688f))));
}

