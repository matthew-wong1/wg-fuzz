struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: i32,
    d: Struct_3,
    e: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: u32,
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

var<private> global0: vec3<i32>;

var<private> global1: u32 = 2374u;

var<private> global2: array<vec4<bool>, 19>;

var<private> global3: vec3<u32> = vec3<u32>(0u, 1u, 1u);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_5, arg_2: vec4<i32>, arg_3: vec2<u32>) -> f32 {
    var var_0 = vec4<bool>(arg_1.d.x, true, any(vec4<bool>(true, all(vec4<bool>(false, arg_1.c.b.x, arg_1.a.a.a, arg_1.d.x)), true, false)) == false, arg_1.a.b.b.x);
    let var_1 = Struct_2(true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-2623f, _wgslsmith_f_op_f32(-940f * _wgslsmith_f_op_f32(max(471f, -2226f))), true)))), arg_1.c, vec3<u32>(arg_1.a.b.a, 1u, 0u & ~global3.x), arg_1.c);
    let var_2 = Struct_2(any(!vec3<bool>(!arg_1.d.x, var_1.a, var_0.x)), var_1.b, Struct_1(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_1.e.a, var_1.d.x), vec2<u32>(global3.x, arg_3.x)), vec2<u32>(global3.x, u_input.e) & vec2<u32>(19997u, u_input.b.x)), max(select(var_1.d.x, arg_1.a.b.a, var_1.e.b.x), ~arg_3.x)), var_1.e.b), vec3<u32>(u_input.b.x, 4294967295u, countOneBits(~_wgslsmith_clamp_u32(u_input.e, 5641u, var_1.d.x))), arg_1.c);
    let var_3 = ~_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(arg_0.zy, ~global0.xx | -arg_2.yy), firstLeadingBit(abs(~global0.yy)));
    let var_4 = -217f;
    return var_4;
}

fn func_2(arg_0: vec2<f32>, arg_1: f32, arg_2: vec2<i32>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(func_3(_wgslsmith_sub_vec4_i32(vec4<i32>(27036i, u_input.d, global0.x, arg_2.x), vec4<i32>(6098i, arg_2.x, 1i, global0.x)), Struct_5(Struct_4(Struct_3(false), Struct_1(1u, global2[_wgslsmith_index_u32(global3.x, 19u)]), -1i, Struct_3(true), 24162i), 41781u, Struct_1(global3.x, vec4<bool>(true, false, true, true)), vec3<bool>(false, true, true)), vec4<i32>(1i, 36929i, 0i, arg_2.x), ~vec2<u32>(global3.x, global3.x)))), arg_1) - vec4<f32>(arg_1, arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1)), _wgslsmith_f_op_f32(trunc(arg_0.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_f32(sign(arg_1)), true))))));
    let var_1 = Struct_2(!(!(!all(global2[_wgslsmith_index_u32(global3.x, 19u)]))), _wgslsmith_f_op_f32(func_3(select(firstLeadingBit(vec4<i32>(global0.x, arg_2.x, global0.x, 49622i)), _wgslsmith_div_vec4_i32(vec4<i32>(global0.x, u_input.d, u_input.d, global0.x), vec4<i32>(arg_2.x, u_input.d, -2147483647i, -1i)), select(global2[_wgslsmith_index_u32(6156u, 19u)], global2[_wgslsmith_index_u32(1u, 19u)], global2[_wgslsmith_index_u32(global3.x, 19u)])) << (countOneBits(~vec4<u32>(u_input.a.x, 2965u, 4294967295u, global3.x)) % vec4<u32>(32u)), Struct_5(Struct_4(Struct_3(false), Struct_1(global3.x, global2[_wgslsmith_index_u32(u_input.c, 19u)]), global0.x, Struct_3(true), min(-2147483647i, global0.x)), 4294967295u, Struct_1(20306u, vec4<bool>(false, false, false, false)), vec3<bool>(true, true, true)), ~((vec4<i32>(31089i, 1i, u_input.d, -1i) >> (vec4<u32>(u_input.c, global3.x, global3.x, global3.x) % vec4<u32>(32u))) ^ abs(vec4<i32>(u_input.d, 45141i, global0.x, 2147483647i))), global3.yy >> (max(vec2<u32>(global3.x, 77680u) >> (vec2<u32>(global3.x, 4294967295u) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(global3.zx, u_input.b.yz)) % vec2<u32>(32u)))), Struct_1(_wgslsmith_dot_vec2_u32(~u_input.b.zx, ~u_input.a.yx << (select(u_input.a.xz, u_input.a.yz, true) % vec2<u32>(32u))), select(select(!global2[_wgslsmith_index_u32(4294967295u, 19u)], vec4<bool>(false, false, false, true), false), vec4<bool>(any(vec4<bool>(true, true, false, true)), false, true, true), global2[_wgslsmith_index_u32(31886u, 19u)])), _wgslsmith_mod_vec3_u32(u_input.a, u_input.a), Struct_1(global3.x, select(global2[_wgslsmith_index_u32(reverseBits(u_input.a.x), 19u)], select(global2[_wgslsmith_index_u32(global3.x, 19u)], vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), true)));
    var var_2 = var_1.a;
    let var_3 = var_0.x;
    var var_4 = Struct_5(Struct_4(Struct_3(select(var_1.a, false & var_1.c.b.x, any(vec3<bool>(true, var_1.a, false)))), Struct_1(_wgslsmith_mult_u32(select(global3.x, 1u, var_1.e.b.x), u_input.a.x), global2[_wgslsmith_index_u32(~0u, 19u)]), arg_2.x, Struct_3(~global3.x >= ~121395u), -_wgslsmith_dot_vec2_i32(global0.zz, vec2<i32>(-2147483647i, u_input.d))), var_1.d.x, Struct_1(~countOneBits(~15849u), select(vec4<bool>(var_1.a | false, !var_1.e.b.x, !var_1.c.b.x, !var_1.e.b.x), var_1.e.b, vec4<bool>(var_1.c.b.x & var_1.c.b.x, true, var_1.c.b.x, any(vec3<bool>(var_1.c.b.x, var_1.e.b.x, var_1.e.b.x))))), !(!select(!vec3<bool>(var_1.c.b.x, var_1.c.b.x, var_1.c.b.x), vec3<bool>(false, var_1.c.b.x, false), true)));
    return Struct_4(Struct_3(var_1.c.b.x), Struct_1(var_4.b ^ var_4.b, vec4<bool>(true, !(var_4.a.b.a >= 4294967295u), true, any(select(vec4<bool>(false, var_1.c.b.x, var_4.c.b.x, true), var_4.c.b, false)))), arg_2.x, Struct_3(var_4.d.x), -var_4.a.e);
}

fn func_4(arg_0: Struct_4) -> vec2<bool> {
    let var_0 = ~vec3<u32>(16701u, u_input.b.x, _wgslsmith_mod_u32(arg_0.b.a, 4294967295u));
    global2 = array<vec4<bool>, 19>();
    var var_1 = ~vec4<u32>(min(u_input.a.x, global3.x), ~_wgslsmith_div_u32(u_input.a.x, 3445u), global3.x, 0u);
    global0 = ~countOneBits(vec3<i32>(arg_0.e, _wgslsmith_mod_i32(~global0.x, ~1i), arg_0.e));
    global0 = -vec3<i32>(_wgslsmith_add_i32(reverseBits(423i), ~global0.x), global0.x, countOneBits(_wgslsmith_mult_i32(u_input.d, arg_0.e))) ^ max(_wgslsmith_mod_vec3_i32(firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, u_input.d, u_input.d), vec3<i32>(u_input.d, u_input.d, -21926i), vec3<i32>(global0.x, arg_0.e, arg_0.e))), max(select(vec3<i32>(65342i, global0.x, global0.x), vec3<i32>(-38351i, -1i, -6639i), false), vec3<i32>(arg_0.c, -1i, global0.x))), _wgslsmith_clamp_vec3_i32((vec3<i32>(6660i, u_input.d, arg_0.c) ^ vec3<i32>(21065i, 2147483647i, u_input.d)) & _wgslsmith_div_vec3_i32(vec3<i32>(-32545i, arg_0.e, 76427i), vec3<i32>(u_input.d, -8681i, arg_0.e)), ~(-vec3<i32>(global0.x, u_input.d, global0.x)), ~(vec3<i32>(1i, u_input.d, u_input.d) << (var_0 % vec3<u32>(32u)))));
    return arg_0.b.b.zw;
}

fn func_1(arg_0: vec2<bool>, arg_1: f32) -> Struct_3 {
    global3 = u_input.b & (max(u_input.a, ~abs(vec3<u32>(global3.x, u_input.b.x, 2u))) << (~select(~u_input.b, vec3<u32>(17817u, 29793u, u_input.a.x), true) % vec3<u32>(32u)));
    var var_0 = !select(!vec2<bool>(-607f >= arg_1, true), arg_0, func_4(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(977f, 578f) + vec2<f32>(arg_1, -261f)), arg_1, -global0.xx)));
    let var_1 = Struct_5(Struct_4(Struct_3(!arg_0.x | arg_0.x), Struct_1(~(~1u), select(vec4<bool>(false, var_0.x, true, var_0.x), func_2(vec2<f32>(228f, -759f), -528f, global0.yx).b.b, vec4<bool>(var_0.x, false, arg_0.x, true))), u_input.d, func_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), vec2<f32>(938f, -1866f), vec2<bool>(true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(227f + 1787f) - 1334f), global0.zx ^ max(global0.zy, vec2<i32>(36438i, global0.x))).d, global0.x), 1u, func_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1))), _wgslsmith_div_vec2_f32(vec2<f32>(arg_1, arg_1), vec2<f32>(486f, arg_1)), (var_0.x != var_0.x) != var_0.x)), _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(exp2(arg_1))), vec2<i32>(-1i, _wgslsmith_div_i32(1i, global0.x))).b, !vec3<bool>(!func_2(vec2<f32>(445f, 416f), arg_1, global0.zz).d.a, all(!vec3<bool>(false, arg_0.x, false)), var_0.x));
    var var_2 = var_1;
    global3 = ~u_input.a;
    return func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(117f, -1466f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 + arg_1), arg_1))), arg_1, firstTrailingBit(-vec2<i32>(-u_input.d, _wgslsmith_div_i32(u_input.d, 52877i)))).a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: u32, arg_3: Struct_3) -> f32 {
    var var_0 = u_input.a;
    global0 = vec3<i32>(global0.x, func_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 568f) - 2300f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2024f), -287f))), -1128f, vec2<i32>(global0.x, -global0.x)).c, ~select(_wgslsmith_clamp_i32(20442i, reverseBits(-31737i), ~(-2147483647i)), -21743i, arg_1.a));
    global3 = vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 15835u, var_0.x), ~(~(~u_input.a))), _wgslsmith_sub_u32(arg_0.a, 0u), max(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 4294967295u, _wgslsmith_add_u32(arg_2, global3.x), 1u), ~(~vec4<u32>(52914u, 56493u, 41316u, 1u)))));
    let var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, u_input.d, 0i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 4294967295u, 124815u, global3.x), vec4<u32>(arg_0.a, arg_2, var_0.x, 26450u)) % 32u)), max(abs(vec3<i32>(global0.x, u_input.d, -24420i) & vec3<i32>(global0.x, -32588i, u_input.d)), ~vec3<i32>(-50178i, global0.x, global0.x) << (u_input.a % vec3<u32>(32u)))) | vec3<i32>(_wgslsmith_dot_vec3_i32(-(~vec3<i32>(1i, 50443i, 2147483647i)), _wgslsmith_add_vec3_i32(max(vec3<i32>(-32973i, -1i, u_input.d), vec3<i32>(u_input.d, 0i, 510i)), -vec3<i32>(u_input.d, 6732i, u_input.d))), min(-1i, global0.x), u_input.d);
    let var_2 = arg_0.b.xyx;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1011f * 1154f) + _wgslsmith_f_op_f32(step(-1104f, -619f))) - _wgslsmith_f_op_f32(max(1399f, _wgslsmith_f_op_f32(round(-1000f))))), -473f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -987f)));
    var var_2 = _wgslsmith_sub_i32(~(-1i), global0.x);
    var var_3 = _wgslsmith_f_op_f32(func_5(Struct_1(_wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(2894u, 4294967295u, global3.x, 80474u), vec4<u32>(61401u, 0u, 0u, u_input.c)), ~firstTrailingBit(vec4<u32>(0u, global3.x, global3.x, 4294967295u))), global2[_wgslsmith_index_u32(0u, 19u)]), func_1(vec2<bool>(!all(vec3<bool>(false, true, false)), ~(-11135i) == u_input.d), _wgslsmith_div_f32(var_1, var_1)), global3.x, func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1, -1140f), _wgslsmith_div_vec2_f32(vec2<f32>(var_1, var_1), vec2<f32>(var_1, -1886f))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -574f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1, var_1)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1))) * 1272f), firstTrailingBit(_wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(u_input.d, u_input.d)), -global0.yx))).a));
    global3 = ~(~_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(85864u, u_input.a.x, global3.x), u_input.a, vec3<u32>(0u, 74972u, u_input.c)), ~vec3<u32>(0u, global3.x, global3.x)), vec3<u32>(reverseBits(4294967295u), 14876u, _wgslsmith_add_u32(global3.x, 119221u)), select(vec3<u32>(77418u, global3.x, 9587u), ~vec3<u32>(u_input.a.x, u_input.b.x, 24631u), any(vec3<bool>(true, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(var_1, _wgslsmith_f_op_f32(func_5(func_2(vec2<f32>(var_1, 266f), _wgslsmith_f_op_f32(select(1000f, var_1, true)), max(vec2<i32>(global0.x, -6140i), global0.zx)).b, func_1(func_2(vec2<f32>(var_1, 1458f), -331f, vec2<i32>(-56606i, -2147483647i)).b.b.ww, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), global3.x, func_2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-288f, var_1))), -494f, vec2<i32>(0i, u_input.d)).d)))));
}

