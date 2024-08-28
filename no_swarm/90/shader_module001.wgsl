struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: u32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19> = array<u32, 19>(4294967295u, 4294967295u, 1u, 11359u, 1u, 66995u, 1u, 0u, 0u, 4294967295u, 4294967295u, 0u, 0u, 4294967295u, 1u, 4294967295u, 95083u, 39121u, 33245u);

var<private> global1: array<vec3<f32>, 23>;

var<private> global2: i32;

var<private> global3: Struct_3 = Struct_3(vec2<i32>(-1i, 18258i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32) -> vec4<bool> {
    var var_0 = Struct_4(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))), vec2<bool>(false, true), vec2<bool>(true, any(vec3<bool>(false, true, false)))), _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.b.wyz, u_input.b.zwy), _wgslsmith_clamp_i32(0i, global3.a.x, -2147483647i), ~2147483647i, 0i)), -vec4<i32>(43435i, arg_0, 1i, 17617i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-102f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -275f), -515f))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1561f - _wgslsmith_f_op_f32(f32(-1f) * -392f)), _wgslsmith_f_op_f32(1540f + -572f)), Struct_3(vec2<i32>(732i << (max(u_input.c.x, 36550u) % 32u), global3.a.x)));
    global0 = array<u32, 19>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-402f, _wgslsmith_f_op_f32(-1f)));
    var var_2 = 27761u;
    let var_3 = Struct_1(all(select(!select(vec3<bool>(var_0.c, var_0.c, var_0.c), vec3<bool>(false, true, var_0.c), vec3<bool>(var_0.c, var_0.c, var_0.a.x)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(var_0.c, var_0.c, var_0.c), vec3<bool>(true, false, var_0.c)), !vec3<bool>(var_0.a.x, true, false)), select(!vec3<bool>(false, var_0.c, false), !vec3<bool>(var_0.c, var_0.c, true), false))), 1i);
    return select(!vec4<bool>(true, all(select(vec3<bool>(var_0.c, false, false), vec3<bool>(var_0.a.x, var_0.c, false), vec3<bool>(var_0.a.x, false, var_3.a))), true, true), !select(vec4<bool>(22683u <= u_input.c.x, any(vec2<bool>(true, true)), true, var_3.a), select(!vec4<bool>(false, var_3.a, var_0.c, var_3.a), !vec4<bool>(true, false, var_0.c, false), var_3.a), _wgslsmith_clamp_u32(20883u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 19u)], 19u)], global0[_wgslsmith_index_u32(40461u, 19u)]) != u_input.c.x), ((_wgslsmith_mult_u32(u_input.c.x, u_input.c.x) <= global0[_wgslsmith_index_u32(~1u, 19u)]) && true) & var_3.a);
}

fn func_2(arg_0: vec4<u32>) -> vec4<f32> {
    var var_0 = Struct_3(vec2<i32>(_wgslsmith_mult_i32(u_input.b.x, -30045i << (u_input.c.x % 32u)), u_input.b.x));
    var var_1 = Struct_4(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(false, true, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), true)), vec2<bool>(false, true), !vec2<bool>(true, any(vec4<bool>(true, false, true, false)))), vec4<i32>(select(u_input.a.x, var_0.a.x, true), firstTrailingBit(firstTrailingBit(59039i)) ^ _wgslsmith_dot_vec2_i32(~vec2<i32>(global3.a.x, 2147483647i), vec2<i32>(-2147483647i, 47532i) & var_0.a), _wgslsmith_add_i32(_wgslsmith_div_i32(-global3.a.x, var_0.a.x), 0i), var_0.a.x), arg_0.x >= u_input.c.x, Struct_3(~(vec2<i32>(u_input.b.x, var_0.a.x) >> (arg_0.zz % vec2<u32>(32u)))));
    var var_2 = Struct_2(select(!(!(!vec4<bool>(true, true, var_1.c, true))), !vec4<bool>(-25045i > var_1.d.a.x, false, false | var_1.c, u_input.a.x != -27673i), !func_3(967i << (global0[_wgslsmith_index_u32(4294967295u, 19u)] % 32u))), vec4<i32>(var_0.a.x, -1i, min(-var_1.b.x, u_input.b.x), ~firstTrailingBit(-87658i)), min(4294967295u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0.x, u_input.c.x, ~0u), ~vec4<u32>(4978u, 48120u, 4294967295u, 9789u)), 19u)]));
    var var_3 = var_1.d.a.x;
    let var_4 = Struct_1(true, ~_wgslsmith_add_i32(u_input.a.x, abs(_wgslsmith_sub_i32(var_2.b.x, var_0.a.x))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-206f)), _wgslsmith_f_op_f32(round(-1957f)), 1552f, _wgslsmith_f_op_f32(trunc(-373f))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-354f, -495f, -2385f, -1112f)))) - vec4<f32>(347f, _wgslsmith_f_op_f32(992f + 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-691f * 618f) - -1203f), _wgslsmith_f_op_f32(abs(-1185f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(137f, 957f, -1485f, -187f), vec4<f32>(963f, -1274f, -1005f, -706f))))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: vec2<i32>, arg_3: f32) -> Struct_1 {
    var var_0 = !(!(!select(vec2<bool>(false, false), vec2<bool>(false, false), true)));
    let var_1 = Struct_3(vec2<i32>(countOneBits(1i), _wgslsmith_mult_i32(-3661i, 0i)));
    global0 = array<u32, 19>();
    global2 = ~firstTrailingBit(firstLeadingBit(firstLeadingBit(arg_2.x)));
    global1 = array<vec3<f32>, 23>();
    return Struct_1(all(select(func_3(0i).xyw, select(!vec3<bool>(var_0.x, var_0.x, false), func_3(2147483647i).zww, all(vec4<bool>(var_0.x, var_0.x, true, var_0.x))), vec3<bool>(true, u_input.c.x != 0u, var_0.x))), select(max(-2147483647i, ~(arg_2.x | 0i)), arg_1.x >> (13192u % 32u), global0[_wgslsmith_index_u32(~0u, 19u)] == global0[_wgslsmith_index_u32(50147u, 19u)]));
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-arg_1), arg_1), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1, 955f), vec2<f32>(arg_1, -1000f)))))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-arg_1), false)), arg_1), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, arg_1)))));
    var var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, max(i32(-1i) * -36900i, ~u_input.b.x), global3.a.x) & vec3<i32>(-u_input.b.x, arg_0.b, abs(_wgslsmith_mult_i32(u_input.b.x, 16740i))), vec3<i32>(1i, 1i, firstLeadingBit(-2884i)));
    var var_2 = global3.a.x;
    global0 = array<u32, 19>();
    global3 = Struct_3(var_1.xz);
    return Struct_4(vec2<bool>(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(181f, arg_1, var_0.x, 132f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -816f, arg_1, arg_1))), ~min(u_input.b, u_input.b), abs(u_input.a), _wgslsmith_f_op_f32(-arg_1)).a, any(vec3<bool>(!arg_0.a, true || arg_0.a, arg_0.a && true))), -u_input.b & ((-u_input.b << (~vec4<u32>(30025u, global0[_wgslsmith_index_u32(u_input.c.x, 19u)], u_input.c.x, global0[_wgslsmith_index_u32(u_input.c.x, 19u)]) % vec4<u32>(32u))) | max(countOneBits(vec4<i32>(9325i, -1533i, global3.a.x, var_1.x)), u_input.b << (vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 19u)], 19u)], u_input.c.x, 33048u, 0u) % vec4<u32>(32u)))), all(vec4<bool>(all(vec3<bool>(true, true, true)), true & arg_0.a, func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_1, var_0.x)), u_input.b, ~vec2<i32>(0i, -1i), 1076f).a, true)), Struct_3(vec2<i32>(-41013i, firstLeadingBit(var_1.x) ^ (global3.a.x | 0i))));
}

fn func_1() -> vec4<i32> {
    global2 = 25864i;
    var var_0 = -881f;
    var var_1 = func_5(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(833f, _wgslsmith_f_op_f32(-240f + 845f), -981f, _wgslsmith_f_op_f32(1728f * 1456f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(vec4<u32>(u_input.c.x, global0[_wgslsmith_index_u32(17920u, 19u)], 9209u, u_input.c.x))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1919f, 214f, 1000f, 1922f), vec4<f32>(-1247f, -1711f, 1243f, 296f), true)))), ~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, global3.a.x, global3.a.x, -29593i), u_input.b << (vec4<u32>(0u, u_input.c.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50051u, 19u)], 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(75267u, 19u)], 19u)]) % vec4<u32>(32u))), _wgslsmith_div_vec2_i32(abs(~global3.a), ~vec2<i32>(1i, 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1227f)))), 663f);
    var_1 = Struct_4(!var_1.a, _wgslsmith_div_vec4_i32(u_input.b, ~_wgslsmith_mod_vec4_i32(u_input.b, firstLeadingBit(u_input.b))), true, Struct_3(~vec2<i32>(u_input.b.x, global3.a.x)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * -1220f), 1f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -410f)))) * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1106f, 797f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1810f) * _wgslsmith_f_op_vec4_f32(func_2(vec4<u32>(1u, 0u, 30614u, 0u))).x))))));
    return select(_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(var_1.d.a.x, 17694i, global3.a.x, -32737i)), firstTrailingBit(~vec4<i32>(u_input.a.x, -28558i, var_1.d.a.x, var_1.d.a.x))), vec4<i32>(global3.a.x, -(u_input.a.x << (58964u % 32u)), _wgslsmith_mod_i32(abs(var_1.d.a.x), var_1.b.x), reverseBits(u_input.b.x << (0u % 32u))), var_1.c) >> (firstTrailingBit(~abs(~vec4<u32>(0u, 30838u, 4294967295u, 1u))) % vec4<u32>(32u));
}

fn func_6(arg_0: Struct_4) -> Struct_4 {
    global3 = Struct_3(u_input.b.wz);
    var var_0 = _wgslsmith_div_i32(-_wgslsmith_sub_i32(arg_0.d.a.x, arg_0.d.a.x), ~(~(u_input.b.x & ~24410i)));
    global0 = array<u32, 19>();
    var var_1 = func_5(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1029f, 867f, -878f, 1000f), vec4<f32>(-539f, 924f, -841f, -1732f), false)))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(194f, -450f, -970f, 1144f)))), func_5(func_4(_wgslsmith_f_op_vec4_f32(func_2(vec4<u32>(u_input.c.x, u_input.c.x, global0[_wgslsmith_index_u32(47531u, 19u)], 0u))), _wgslsmith_mod_vec4_i32(vec4<i32>(7344i, 2147483647i, global3.a.x, -2147483647i), vec4<i32>(arg_0.d.a.x, 2147483647i, arg_0.b.x, 16538i)), global3.a, _wgslsmith_f_op_vec4_f32(func_2(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9006u, 19u)], 19u)], 19u)], global0[_wgslsmith_index_u32(31977u, 19u)], u_input.c.x, 3480u))).x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1920f)))).b, ~firstLeadingBit(arg_0.d.a) & (_wgslsmith_div_vec2_i32(global3.a, vec2<i32>(-64544i, arg_0.b.x)) ^ arg_0.b.zx), -1000f), _wgslsmith_f_op_vec4_f32(func_2(max(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, global0[_wgslsmith_index_u32(1u, 19u)], 1u, u_input.c.x), vec4<u32>(32029u, 1u, 1u, 41119u)) >> (vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 19u)], 19u)], global0[_wgslsmith_index_u32(u_input.c.x, 19u)], u_input.c.x) % vec4<u32>(32u)), vec4<u32>(1u, _wgslsmith_mod_u32(4294967295u, global0[_wgslsmith_index_u32(u_input.c.x, 19u)]), reverseBits(u_input.c.x), 1u)))).x);
    var var_2 = _wgslsmith_div_vec2_i32(arg_0.b.yx, _wgslsmith_mod_vec2_i32(global3.a, ~vec2<i32>(-global3.a.x, global3.a.x)));
    return Struct_4(var_1.a, vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(48081i, var_1.b.x), var_1.b.zw), reverseBits(-1i)) & var_1.b.x, u_input.a.x, global3.a.x, ~_wgslsmith_clamp_i32(17070i, ~0i, ~var_1.d.a.x)), any(vec4<bool>(true, var_1.c, true, true)), Struct_3(arg_0.b.zw));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(!all(vec2<bool>(all(vec3<bool>(true, true, false)), false)), all(select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true)), true, false);
    var var_1 = func_6(Struct_4(select(var_0.xx, select(var_0.xz, !var_0.yx, var_0.x), var_0.ww), func_1(), false, func_5(func_4(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1440f, 520f, 729f, -1000f), vec4<f32>(461f, 234f, 1000f, -760f))), select(vec4<i32>(0i, u_input.b.x, 1i, global3.a.x), vec4<i32>(36957i, 32358i, -1i, -2147483647i), var_0), vec2<i32>(global3.a.x, 24630i), _wgslsmith_f_op_f32(f32(-1f) * -451f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(111f + 368f)))).d));
    var_1 = func_6(func_6(Struct_4(select(var_0.zz, !vec2<bool>(false, var_1.a.x), var_1.a), var_1.b, var_1.c & false, func_6(func_5(Struct_1(var_1.c, u_input.b.x), 104f)).d)));
    let var_2 = _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(floor(330f)));
    var_1 = func_5(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-2387f, var_2, -160f, var_2), vec4<f32>(-267f, -726f, var_2, var_2))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(878f, var_2, 845f, var_2) - vec4<f32>(-2318f, 751f, -535f, 680f))), ~var_1.b, firstLeadingBit(vec2<i32>(global3.a.x, _wgslsmith_div_i32(-7541i, var_1.d.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2))), -571f);
    var var_3 = _wgslsmith_dot_vec4_u32(select(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, global0[_wgslsmith_index_u32(0u, 19u)]), u_input.c.yz), 0u, ~u_input.c.x, _wgslsmith_mod_u32(32103u, ~0u)), abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 54835u, u_input.c.x), vec4<u32>(u_input.c.x, 4294967295u, 86947u, u_input.c.x))) | select(abs(vec4<u32>(global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(24461u, 19u)], u_input.c.x, 53394u)), max(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(1u, 19u)], 8262u, 8200u), vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, 1u)), true), true), vec4<u32>(44905u, _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(u_input.c.xx, u_input.c.zz), countOneBits(~vec2<u32>(49675u, global0[_wgslsmith_index_u32(0u, 19u)]))), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(3141u, 7099u), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(u_input.c.x, 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29639u, 19u)], 19u)], 19u)])), 1u, select(4294967295u, u_input.c.x >> (u_input.c.x % 32u), var_0.x)), min(u_input.c.x >> (88900u % 32u), _wgslsmith_clamp_u32(1u, _wgslsmith_div_u32(106206u, global0[_wgslsmith_index_u32(4294967295u, 19u)]), firstTrailingBit(u_input.c.x)))));
    var_1 = Struct_4(select(vec2<bool>(any(!var_0), !func_4(vec4<f32>(var_2, 975f, -1000f, 464f), vec4<i32>(global3.a.x, u_input.b.x, var_1.d.a.x, u_input.a.x), vec2<i32>(u_input.a.x, var_1.b.x), var_2).a), func_3(firstTrailingBit(u_input.b.x | global3.a.x)).zz, !select(!var_0.zz, !var_1.a, var_1.c)), -min(var_1.b, _wgslsmith_div_vec4_i32(vec4<i32>(var_1.d.a.x, global3.a.x, var_1.d.a.x, u_input.a.x), var_1.b)), !all(vec2<bool>(true, true)), func_5(Struct_1(var_1.a.x, reverseBits(-30770i)), var_2).d);
    global2 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 19u)], 19u)], 19u)], global0[_wgslsmith_index_u32(u_input.c.x, 19u)], global0[_wgslsmith_index_u32(0u, 19u)]), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, global0[_wgslsmith_index_u32(104320u, 19u)], global0[_wgslsmith_index_u32(u_input.c.x, 19u)], 30875u), vec4<u32>(u_input.c.x, global0[_wgslsmith_index_u32(667u, 19u)], 97321u, 25562u))) << (u_input.c.x % 32u), 1032f);
}

