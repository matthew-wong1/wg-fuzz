struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec3<bool>,
    d: f32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<vec3<bool>, 27> = array<vec3<bool>, 27>(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false));

var<private> global2: vec2<u32> = vec2<u32>(78612u, 31134u);

var<private> global3: array<u32, 3> = array<u32, 3>(0u, 27278u, 0u);

var<private> global4: Struct_1 = Struct_1(43905u, vec4<bool>(true, false, true, true), vec3<bool>(true, true, true), -1360f, vec2<i32>(-892i, -1i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(-global4.d);
    var var_1 = arg_2;
    var var_2 = vec2<i32>(_wgslsmith_div_i32(~_wgslsmith_sub_i32(countOneBits(u_input.a), -2147483647i), ~(-1i)), var_1.e.x >> (~(~global2.x) % 32u));
    return ~vec2<u32>(global0.x, global2.x);
}

fn func_2() -> Struct_1 {
    let var_0 = vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32((vec3<i32>(-1i, global4.e.x, 17997i) >> (vec3<u32>(u_input.b.x, global0.x, 47764u) % vec3<u32>(32u))) & vec3<i32>(u_input.a, -48263i, global4.e.x), vec3<i32>(global4.e.x, 56526i, u_input.c));
    let var_1 = global4.c;
    global0 = _wgslsmith_mod_vec3_u32(select(vec3<u32>(_wgslsmith_sub_u32(4294967295u, 91762u), ~1u, _wgslsmith_add_u32(global4.a, global3[_wgslsmith_index_u32(71484u, 3u)])), u_input.b.yyy, true), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(global4.a, 0u, 52174u), u_input.d))) >> (u_input.b.zxw % vec3<u32>(32u));
    let var_2 = Struct_1(27045u, global4.b, global4.c, 853f, _wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(34844i, 56138i) | global4.e), vec2<i32>(41243i, 36632i)));
    global1 = array<vec3<bool>, 27>();
    return Struct_1(25177u, vec4<bool>(select(0u > ~global0.x, true, global4.c.x), false, ~global2.x < ~global2.x, !((u_input.d.x & 31747u) > u_input.d.x)), global1[_wgslsmith_index_u32(global4.a, 27u)], var_2.d, reverseBits(var_0.xz) >> (func_3(var_2, Struct_1(firstLeadingBit(global0.x), select(var_2.b, global4.b, false), select(global1[_wgslsmith_index_u32(4294967295u, 27u)], var_2.b.yxy, true), -1042f, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, var_0.x), vec2<i32>(-5946i, 1798i))), Struct_1(~u_input.d.x, vec4<bool>(true, true, global4.c.x, var_1.x), var_2.b.yww, _wgslsmith_f_op_f32(floor(var_2.d)), global4.e ^ vec2<i32>(var_0.x, -2147483647i)), Struct_1(global0.x, vec4<bool>(false, var_1.x, var_2.c.x, var_1.x), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_2.a, global0.x), 27u)], global4.d, -vec2<i32>(-2147483647i, var_2.e.x))) % vec2<u32>(32u)));
}

fn func_1(arg_0: vec2<u32>) -> vec4<i32> {
    var var_0 = func_2();
    global0 = u_input.b.zwy & u_input.d;
    global3 = array<u32, 3>();
    global0 = vec3<u32>(global4.a, 4294967295u, reverseBits(abs(global0.x) & 0u)) >> ((vec3<u32>(1u, 0u, _wgslsmith_mult_u32(~var_0.a, 4294967295u)) >> (u_input.b.xyz % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_1 = func_2().e.x;
    return countOneBits(vec4<i32>(abs(i32(-1i) * -1i), global4.e.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a, 2147483647i), vec3<i32>(-1i, -42198i, var_0.e.x)) & ~(i32(-1i) * -47241i), var_0.e.x));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_2;
    let var_1 = max(arg_0.wwy, vec3<i32>(-1i, var_0.e.x, arg_2.e.x));
    let var_2 = false;
    var var_3 = Struct_1(~abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(54288u, var_0.a, u_input.b.x, arg_3.a), u_input.b)), func_2().b, select(!select(!global1[_wgslsmith_index_u32(1u, 27u)], vec3<bool>(arg_3.b.x, false, true), vec3<bool>(true, true, var_0.b.x)), !select(arg_1.b.wyw, vec3<bool>(var_2, arg_1.b.x, arg_2.c.x), global4.b.x), false), -258f, ~firstTrailingBit(var_0.e));
    global4 = arg_2;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 3>();
    let var_0 = 1u;
    var var_1 = global4.c.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global4.d), _wgslsmith_f_op_f32(-1323f * global4.d), _wgslsmith_f_op_f32(2099f * 1106f)) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1182f, global4.d, 2276f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(504f, -1691f, global4.d)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-419f, 363f, global4.d)))))))));
    global4 = func_4(vec4<i32>(_wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, global4.e.x, u_input.c, global4.e.x), vec4<i32>(global4.e.x, u_input.a, u_input.a, 0i)), func_1(~vec2<u32>(28745u, 4294967295u))), _wgslsmith_add_i32(-u_input.a, ~(~(-39373i))), abs((45517i << (global4.a % 32u)) | (u_input.a | -2147483647i)), abs(1i)), Struct_1(global0.x, vec4<bool>(true, false, false, u_input.d.x >= 1u), global1[_wgslsmith_index_u32(1u, 27u)], -1048f, abs(vec2<i32>(firstLeadingBit(1i), global4.e.x))), Struct_1(~_wgslsmith_mod_u32(u_input.d.x & var_0, _wgslsmith_add_u32(66380u, 16035u)), !func_2().b, vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-884f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-536f)))), vec2<i32>(min(abs(u_input.c), 26903i), max(countOneBits(25863i), u_input.a))), Struct_1(41860u, global4.b, global4.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2057f * var_2.x)))), _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(0i, global4.e.x), u_input.c), func_2().e)));
    let x = u_input.a;
    s_output = StorageBuffer(-11647i, _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(0u, _wgslsmith_mod_u32(4294967295u, u_input.d.x)), countOneBits(firstLeadingBit(66029u)), u_input.b.x), u_input.d), ~(~_wgslsmith_mult_u32(u_input.e, _wgslsmith_clamp_u32(global0.x, global3[_wgslsmith_index_u32(4294967295u, 3u)], 3485u))));
}

