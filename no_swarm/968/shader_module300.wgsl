struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_2,
    d: Struct_2,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(false, 13013i, vec2<i32>(i32(-2147483648), 2147483647i), vec2<u32>(119304u, 1u)), vec2<u32>(23794u, 4294967295u), Struct_1(false, -2867i, vec2<i32>(1i, 1i), vec2<u32>(79995u, 32921u)), -888f, -84183i);

var<private> global1: array<bool, 24> = array<bool, 24>(true, true, true, true, true, false, true, false, false, false, false, true, false, true, true, true, false, false, true, true, false, true, true, true);

var<private> global2: array<bool, 27>;

var<private> global3: array<vec3<bool>, 15> = array<vec3<bool>, 15>(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec3<i32> {
    var var_0 = vec3<u32>(u_input.d.x, 38704u, reverseBits(_wgslsmith_clamp_u32(1u, ~28804u, 78908u)));
    var var_1 = _wgslsmith_f_op_f32(-global0.d);
    var_0 = _wgslsmith_add_vec3_u32(~u_input.d, u_input.d);
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-global0.d) <= 287f, global0.e, _wgslsmith_mult_vec2_i32(u_input.c.xz, vec2<i32>(-79817i, 54264i)), firstLeadingBit((global0.c.d ^ var_0.yx) ^ firstTrailingBit(u_input.a))), var_0.zy, global0.a, _wgslsmith_f_op_f32(max(global0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(364f)) + _wgslsmith_f_op_f32(-global0.d)))), ~_wgslsmith_clamp_i32(global0.a.c.x, abs(30982i), 0i));
    let var_3 = _wgslsmith_add_u32(0u, 0u);
    return vec3<i32>(var_2.a.b & ((i32(-1i) * -1i) >> (var_2.c.d.x % 32u)), ~var_2.c.b, abs(var_2.c.c.x));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: u32) -> u32 {
    let var_0 = Struct_2(Struct_1(true, _wgslsmith_dot_vec3_i32(func_3(), firstLeadingBit(vec3<i32>(arg_1.x, 49962i, 1i))) >> (~(~arg_2) % 32u), arg_1.zx, global0.a.d), vec2<u32>(~4294967295u ^ u_input.a.x, 43206u >> (global0.b.x % 32u)), Struct_1(!(_wgslsmith_add_u32(0u, arg_2) != global0.a.d.x), reverseBits(reverseBits(global0.e)), arg_1.xz, ~vec2<u32>(_wgslsmith_mult_u32(arg_2, 4294967295u), _wgslsmith_mult_u32(arg_2, u_input.d.x))), -296f, -1i);
    global3 = array<vec3<bool>, 15>();
    let var_1 = _wgslsmith_clamp_vec3_i32(u_input.c, _wgslsmith_clamp_vec3_i32(vec3<i32>(34418i & _wgslsmith_mult_i32(u_input.c.x, 12483i), u_input.c.x, var_0.a.c.x), -u_input.c, -(u_input.c & vec3<i32>(arg_1.x, -23742i, 2147483647i))), ~(u_input.c >> (~(vec3<u32>(4294967295u, arg_2, 69264u) << (u_input.d % vec3<u32>(32u))) % vec3<u32>(32u))));
    let var_2 = 2147483647i;
    var var_3 = global0.c.d.x;
    return select(_wgslsmith_clamp_u32(var_0.c.d.x, _wgslsmith_dot_vec3_u32(u_input.d, u_input.d << (u_input.d % vec3<u32>(32u))) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.d.x, 4294967295u, arg_2, u_input.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.c.d.x, var_0.c.d.x, 1u, 0u), vec4<u32>(0u, 1u, 0u, u_input.a.x))), 4294967295u), 4294967295u, !(1i > _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, arg_1.x, u_input.b.x, u_input.c.x), max(vec4<i32>(1i, var_0.a.b, -1i, 1i), vec4<i32>(-1i, var_0.a.c.x, var_0.e, -25712i)))));
}

fn func_1(arg_0: bool, arg_1: Struct_3) -> Struct_4 {
    var var_0 = any(!(!select(global3[_wgslsmith_index_u32(38296u, 15u)], vec3<bool>(true, true, true), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.d, u_input.d), 15u)])));
    var var_1 = _wgslsmith_add_u32(global0.a.d.x, func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(673f, arg_1.a.d, 764f) - vec3<f32>(-1525f, 1812f, -928f))), u_input.c, ~(~4294967295u))) << (~arg_1.a.b.x % 32u);
    let var_2 = 4294967295u;
    var_1 = global0.b.x;
    var var_3 = Struct_3(Struct_2(arg_1.a.a, firstTrailingBit(~vec2<u32>(global0.b.x, var_2)), global0.c, _wgslsmith_f_op_f32(f32(-1f) * -367f), countOneBits(2147483647i)), ~(firstLeadingBit(~arg_1.b) >> ((~global0.a.d.x ^ var_2) % 32u)));
    return Struct_4(arg_1.a.a, vec3<i32>(firstLeadingBit(-(global0.a.c.x >> (u_input.a.x % 32u))), -var_3.a.a.c.x, -(~select(2147483647i, var_3.a.e, global2[_wgslsmith_index_u32(global0.a.d.x, 27u)]))), arg_1.a, Struct_2(var_3.a.a, ~(~var_3.a.a.d), Struct_1(arg_1.a.a.a, ~_wgslsmith_add_i32(0i, u_input.c.x), global0.a.c, vec2<u32>(1u, 29010u)), _wgslsmith_f_op_f32(global0.d + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.d, 771f)))), _wgslsmith_clamp_i32(-(arg_1.a.a.c.x & global0.e), _wgslsmith_mod_i32(-74114i, -42880i), 8051i)), u_input.c);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_4) -> Struct_3 {
    global1 = array<bool, 24>();
    var var_0 = vec3<i32>(_wgslsmith_sub_i32(2147483647i, _wgslsmith_mult_i32(~(arg_3.b.x >> (12558u % 32u)), arg_0.a.c.c.x)), -arg_0.a.c.b, abs(_wgslsmith_mod_i32(-1i, -arg_0.a.a.c.x)));
    let var_1 = Struct_1(false, u_input.c.x >> (1u % 32u), arg_0.a.c.c, ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 13371u, arg_0.a.a.d.x, 24838u), max(vec4<u32>(arg_3.a.d.x, 87870u, u_input.a.x, arg_3.a.d.x), vec4<u32>(arg_0.b, arg_0.a.a.d.x, global0.a.d.x, 29320u))), global0.a.d.x));
    let var_2 = Struct_3(arg_0.a, ~(~global0.b.x));
    global0 = Struct_2(func_1(!(false & var_2.a.c.a) | global0.c.a, Struct_3(arg_0.a, ~24720u)).d.c, arg_0.a.c.d, Struct_1(true, ~(-2147483647i), min(_wgslsmith_clamp_vec2_i32(arg_3.c.a.c, vec2<i32>(-58067i, var_0.x), min(var_1.c, arg_3.e.yz)), ~_wgslsmith_div_vec2_i32(var_0.xy, var_2.a.a.c)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.c.d.x, arg_1.x), _wgslsmith_div_vec2_u32(vec2<u32>(0u, arg_1.x), vec2<u32>(1u, 1u)), vec2<u32>(58259u, 0u))), _wgslsmith_f_op_f32(-655f * _wgslsmith_f_op_f32(arg_3.d.d * global0.d)), firstLeadingBit(_wgslsmith_add_i32(-arg_0.a.c.c.x, ~select(1i, var_1.b, arg_0.a.c.a))));
    return arg_0;
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: u32) -> vec4<f32> {
    var var_0 = vec4<u32>(~(~arg_0.a.b.x >> ((~arg_0.a.c.d.x >> (~36723u % 32u)) % 32u)), arg_2, ~_wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 1u), u_input.d), 4294967295u), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d, -1000f, _wgslsmith_f_op_f32(arg_0.a.d + 246f))), u_input.c & -select(vec3<i32>(global0.a.b, -20333i, -2147483647i), u_input.c, true), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(49003u, arg_1, 4294967295u, 1u), select(vec4<u32>(u_input.a.x, 1u, 0u, u_input.d.x), vec4<u32>(6149u, u_input.d.x, 1u, arg_2), arg_0.a.a.a)), firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(arg_2, arg_1, global0.a.d.x, 4294967295u), vec4<u32>(arg_2, arg_1, 15721u, arg_2))))));
    var var_1 = vec4<f32>(func_4(Struct_3(arg_0.a, abs(reverseBits(4294967295u))), u_input.d, max(~2147483647i, -abs(global0.c.b)), func_1(72406u >= select(50874u, 22282u, true), func_4(Struct_3(Struct_2(Struct_1(true, global0.c.b, u_input.b.zz, vec2<u32>(4294967295u, u_input.d.x)), var_0.xw, global0.a, -960f, u_input.c.x), 49148u), abs(u_input.d), i32(-1i) * -1i, func_1(global1[_wgslsmith_index_u32(arg_1, 24u)], Struct_3(Struct_2(global0.a, vec2<u32>(56571u, arg_0.a.a.d.x), global0.c, global0.d, 0i), arg_2))))).a.d, -220f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.a.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1458f) * global0.d), true))), _wgslsmith_f_op_f32(min(arg_0.a.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.d))))));
    var var_2 = !(func_1(global0.c.a, Struct_3(Struct_2(arg_0.a.a, vec2<u32>(arg_1, arg_0.b), arg_0.a.a, var_1.x, global0.a.c.x), arg_1)).d.e < -1i);
    var_0 = ~select(vec4<u32>(4294967295u, ~4294967295u, arg_1, _wgslsmith_dot_vec4_u32(vec4<u32>(74703u, u_input.a.x, 4294967295u, arg_1), vec4<u32>(19804u, global0.c.d.x, 4294967295u, arg_2))), vec4<u32>(_wgslsmith_mult_u32(3832u, var_0.x), arg_2, arg_0.a.c.d.x, reverseBits(arg_1)), false) << (_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_0.a.b.x, arg_1, 0u, 1u) >> (firstLeadingBit(vec4<u32>(arg_0.b, 4294967295u, 7912u, 18735u) >> (vec4<u32>(115071u, u_input.a.x, arg_1, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)), max(~(vec4<u32>(var_0.x, var_0.x, 0u, 23595u) & vec4<u32>(19818u, 4294967295u, global0.c.d.x, arg_0.b)), ~vec4<u32>(u_input.d.x, var_0.x, 1u, arg_2))) % vec4<u32>(32u));
    var var_3 = func_1(!all(select(global3[_wgslsmith_index_u32(~u_input.a.x, 15u)], global3[_wgslsmith_index_u32(var_0.x, 15u)], global3[_wgslsmith_index_u32(reverseBits(22291u), 15u)])), func_4(func_4(Struct_3(func_4(arg_0, vec3<u32>(331u, 23084u, 0u), 0i, Struct_4(arg_0.a.a, u_input.b, Struct_2(Struct_1(arg_0.a.c.a, -30209i, arg_0.a.a.c, vec2<u32>(39384u, var_0.x)), arg_0.a.b, Struct_1(false, 18481i, vec2<i32>(-12899i, 8417i), vec2<u32>(4294967295u, 4294967295u)), arg_0.a.d, 38081i), arg_0.a, u_input.c)).a, select(1u, 41743u, global2[_wgslsmith_index_u32(4294967295u, 27u)])), ~(~vec3<u32>(u_input.d.x, arg_2, arg_0.b)), 902i, Struct_4(func_1(global1[_wgslsmith_index_u32(arg_2, 24u)], Struct_3(arg_0.a, var_0.x)).c.a, vec3<i32>(arg_0.a.e, 1i, -2147483647i), Struct_2(Struct_1(global0.a.a, arg_0.a.a.b, u_input.c.zy, vec2<u32>(var_0.x, global0.a.d.x)), u_input.a, global0.c, var_1.x, arg_0.a.e), func_4(arg_0, vec3<u32>(0u, 29724u, arg_1), arg_0.a.a.c.x, Struct_4(arg_0.a.c, vec3<i32>(arg_0.a.e, arg_0.a.e, 1i), Struct_2(Struct_1(true, arg_0.a.a.c.x, arg_0.a.a.c, vec2<u32>(arg_0.b, 4294967295u)), vec2<u32>(arg_2, 1u), global0.c, 568f, u_input.b.x), Struct_2(global0.a, u_input.d.zz, Struct_1(false, arg_0.a.a.c.x, vec2<i32>(global0.c.c.x, global0.a.c.x), arg_0.a.b), global0.d, arg_0.a.c.b), u_input.b)).a, _wgslsmith_sub_vec3_i32(u_input.b, u_input.b))), ~(~vec3<u32>(1u, var_0.x, u_input.a.x)) ^ var_0.wxw, -6651i, Struct_4(global0.a, u_input.c, func_1(true, arg_0).c, Struct_2(Struct_1(global1[_wgslsmith_index_u32(global0.b.x, 24u)], global0.e, global0.a.c, u_input.d.yz), vec2<u32>(arg_1, 13549u), global0.a, var_1.x, 2147483647i << (arg_2 % 32u)), vec3<i32>(-u_input.c.x, func_1(true, Struct_3(Struct_2(global0.c, u_input.a, Struct_1(true, -47032i, u_input.c.zx, u_input.d.zy), 2257f, 1i), arg_0.b)).c.c.b, global0.a.b | 0i)))).c;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.d), -1577f), _wgslsmith_f_op_f32(abs(global0.d)), arg_0.a.d, _wgslsmith_div_f32(-352f, _wgslsmith_f_op_f32(ceil(706f))))));
}

fn func_6(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = arg_0.wwy;
    var var_1 = Struct_2(func_4(Struct_3(func_4(Struct_3(Struct_2(Struct_1(global1[_wgslsmith_index_u32(global0.b.x, 24u)], 2147483647i, u_input.c.xx, vec2<u32>(u_input.a.x, 4294967295u)), global0.c.d, Struct_1(global1[_wgslsmith_index_u32(global0.a.d.x, 24u)], -14250i, vec2<i32>(-1i, 35560i), vec2<u32>(0u, u_input.a.x)), global0.d, 0i), 23501u), u_input.d, max(-59842i, 9480i), Struct_4(global0.c, u_input.b, Struct_2(global0.c, vec2<u32>(1u, 4294967295u), Struct_1(true, global0.a.b, vec2<i32>(0i, 26119i), u_input.d.zy), global0.d, 41754i), Struct_2(global0.a, global0.b, global0.a, arg_0.x, -2147483647i), u_input.c)).a, _wgslsmith_mult_u32(47708u, ~u_input.a.x)), u_input.d, ~_wgslsmith_clamp_i32(min(-11275i, 37422i), _wgslsmith_mod_i32(u_input.c.x, global0.a.b), 20152i), func_1(!global0.a.a, func_4(func_4(Struct_3(Struct_2(global0.c, vec2<u32>(global0.b.x, global0.b.x), global0.c, global0.d, -29252i), global0.a.d.x), u_input.d, u_input.b.x, Struct_4(Struct_1(global0.c.a, global0.e, vec2<i32>(u_input.c.x, 7202i), global0.c.d), vec3<i32>(global0.c.c.x, 19601i, 2147483647i), Struct_2(Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], u_input.b.x, u_input.c.yy, u_input.a), global0.c.d, global0.a, global0.d, -18767i), Struct_2(Struct_1(false, -16234i, vec2<i32>(u_input.c.x, global0.c.b), u_input.a), vec2<u32>(53669u, u_input.d.x), Struct_1(global0.c.a, global0.c.c.x, global0.a.c, vec2<u32>(4294967295u, 4294967295u)), global0.d, u_input.c.x), u_input.b)), vec3<u32>(global0.b.x, global0.a.d.x, global0.a.d.x), u_input.c.x, Struct_4(Struct_1(true, u_input.b.x, global0.c.c, vec2<u32>(global0.a.d.x, 4294967295u)), u_input.b, Struct_2(Struct_1(true, -1i, u_input.b.yx, vec2<u32>(0u, 4294967295u)), u_input.a, global0.a, 1043f, -9770i), Struct_2(global0.a, u_input.a, Struct_1(global2[_wgslsmith_index_u32(84709u, 27u)], u_input.b.x, u_input.c.zx, vec2<u32>(global0.c.d.x, u_input.a.x)), 1110f, global0.a.c.x), u_input.b)))).a.a, global0.b, global0.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(global0.d)), -801f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.d + -495f), _wgslsmith_f_op_f32(-320f * arg_0.x)))) + func_4(Struct_3(Struct_2(global0.a, global0.c.d, global0.a, -1142f, -2147483647i), max(9772u, 0u)), u_input.d, func_4(Struct_3(Struct_2(Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], u_input.b.x, global0.a.c, vec2<u32>(11900u, 27884u)), u_input.d.zy, global0.a, 219f, global0.e), u_input.d.x), abs(vec3<u32>(u_input.d.x, global0.c.d.x, 24881u)), 2147483647i, Struct_4(global0.c, vec3<i32>(global0.a.c.x, -56243i, u_input.b.x), Struct_2(Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], global0.a.b, global0.c.c, global0.a.d), vec2<u32>(global0.b.x, global0.a.d.x), Struct_1(global1[_wgslsmith_index_u32(0u, 24u)], u_input.b.x, vec2<i32>(global0.c.b, 74562i), vec2<u32>(0u, 0u)), -2895f, 1i), Struct_2(global0.a, vec2<u32>(u_input.a.x, 34260u), global0.c, -600f, u_input.c.x), u_input.b)).a.e, func_1(false, Struct_3(Struct_2(Struct_1(global0.c.a, -8973i, vec2<i32>(74698i, global0.c.b), vec2<u32>(0u, u_input.d.x)), u_input.d.xz, global0.a, -1987f, -1i), 42775u))).a.d), _wgslsmith_clamp_i32(~(-10516i), _wgslsmith_dot_vec4_i32(vec4<i32>(-global0.e, ~(-1i), global0.a.b, abs(global0.a.b)), vec4<i32>(_wgslsmith_sub_i32(global0.c.b, u_input.b.x), 2147483647i, u_input.b.x, ~(-2836i))), -1i));
    var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, global0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(254f - -446f) - _wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(var_0.x, -749f)))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.x, -1148f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(387f, -1000f)), _wgslsmith_f_op_f32(var_0.x - 1110f))), arg_0.wyw)));
    var var_2 = Struct_3(Struct_2(Struct_1(global2[_wgslsmith_index_u32(var_1.a.d.x, 27u)], 2147483647i, vec2<i32>(min(-43264i, global0.e), -27069i), vec2<u32>(~var_1.a.d.x, 1u)), abs(select(~vec2<u32>(u_input.d.x, global0.b.x), vec2<u32>(1u, 4294967295u), vec2<bool>(true, global0.a.a))), func_4(Struct_3(Struct_2(var_1.c, u_input.a, global0.a, var_0.x, -27354i), 4294967295u), u_input.d & _wgslsmith_add_vec3_u32(vec3<u32>(var_1.a.d.x, 74323u, global0.b.x), vec3<u32>(2757u, global0.b.x, var_1.c.d.x)), abs(var_1.e), func_1(global1[_wgslsmith_index_u32(~52733u, 24u)], Struct_3(Struct_2(global0.c, var_1.b, var_1.c, 1839f, global0.e), var_1.a.d.x))).a.c, -1225f, -_wgslsmith_sub_i32(-10133i, 2683i)), global0.b.x);
    var var_3 = func_4(func_4(func_4(Struct_3(func_1(false, Struct_3(Struct_2(var_1.a, var_2.a.a.d, var_1.a, -1458f, -2147483647i), var_1.b.x)).c, 1u), vec3<u32>(func_1(false, Struct_3(Struct_2(var_1.a, vec2<u32>(1u, var_1.c.d.x), Struct_1(true, 2147483647i, vec2<i32>(-17343i, 2147483647i), global0.b), 1114f, u_input.c.x), 1774u)).d.a.d.x, var_2.b, ~u_input.a.x), func_3().x, Struct_4(Struct_1(true, -47769i, vec2<i32>(var_1.c.c.x, -1i), vec2<u32>(global0.b.x, 25538u)), u_input.b, func_4(Struct_3(var_2.a, 0u), vec3<u32>(var_1.c.d.x, u_input.d.x, u_input.d.x), global0.a.b, Struct_4(Struct_1(var_2.a.a.a, global0.a.c.x, var_1.a.c, u_input.a), u_input.c, Struct_2(var_2.a.a, var_1.a.d, var_2.a.a, 288f, 2147483647i), Struct_2(Struct_1(global2[_wgslsmith_index_u32(0u, 27u)], global0.a.b, u_input.b.xx, global0.c.d), vec2<u32>(55174u, 4294967295u), Struct_1(true, var_2.a.e, vec2<i32>(var_2.a.e, 2147483647i), vec2<u32>(0u, var_2.a.b.x)), 129f, -39615i), u_input.b)).a, Struct_2(Struct_1(global1[_wgslsmith_index_u32(44285u, 24u)], -2147483647i, vec2<i32>(9233i, -26146i), global0.a.d), vec2<u32>(var_2.b, 0u), Struct_1(var_2.a.c.a, -11759i, u_input.c.yx, var_1.c.d), var_2.a.d, -44902i), vec3<i32>(-8716i, -1i, -23409i))), ~vec3<u32>(u_input.a.x, global0.b.x, var_2.a.c.d.x), ~max(9530i, _wgslsmith_div_i32(2147483647i, var_1.c.c.x)), Struct_4(func_1(var_2.a.a.a && var_1.c.a, Struct_3(var_2.a, 45692u)).c.a, func_1(global1[_wgslsmith_index_u32(global0.a.d.x ^ var_2.b, 24u)], func_4(Struct_3(var_2.a, 0u), u_input.d, 2147483647i, Struct_4(global0.c, u_input.b, Struct_2(var_2.a.c, var_2.a.c.d, var_2.a.c, arg_0.x, 1i), Struct_2(Struct_1(true, 42999i, var_1.a.c, var_2.a.c.d), vec2<u32>(u_input.a.x, var_2.b), global0.c, -1132f, -1i), vec3<i32>(var_2.a.a.c.x, -8909i, 16731i)))).e, Struct_2(func_4(Struct_3(var_2.a, 4294967295u), u_input.d, var_2.a.c.b, Struct_4(Struct_1(true, global0.a.b, u_input.c.xx, vec2<u32>(4294967295u, 57839u)), vec3<i32>(-1i, u_input.b.x, 2147483647i), var_2.a, Struct_2(Struct_1(var_2.a.c.a, var_1.e, var_1.c.c, global0.b), vec2<u32>(u_input.a.x, 34604u), Struct_1(var_2.a.c.a, var_2.a.e, vec2<i32>(global0.c.b, u_input.c.x), vec2<u32>(var_2.b, 4294967295u)), -2014f, -1i), vec3<i32>(27885i, u_input.c.x, 31910i))).a.c, reverseBits(vec2<u32>(4294967295u, var_2.b)), global0.a, _wgslsmith_f_op_f32(275f - 938f), _wgslsmith_mult_i32(0i, 1i)), Struct_2(global0.a, global0.b, func_4(Struct_3(var_2.a, global0.b.x), vec3<u32>(1u, 25432u, 1589u), var_1.c.b, Struct_4(Struct_1(global0.c.a, 1i, vec2<i32>(2147483647i, 31749i), var_1.a.d), vec3<i32>(u_input.c.x, -24648i, 2147483647i), Struct_2(var_1.a, vec2<u32>(var_2.a.b.x, 54904u), var_1.c, global0.d, -15676i), var_2.a, vec3<i32>(-31272i, global0.a.c.x, -2147483647i))).a.c, var_2.a.d, u_input.c.x), u_input.c)), u_input.d, -2147483647i, func_1(true, func_4(func_4(Struct_3(var_2.a, var_2.b), ~u_input.d, -25511i, func_1(global2[_wgslsmith_index_u32(128284u, 27u)], Struct_3(var_2.a, 95836u))), select(u_input.d, u_input.d, false) | u_input.d, firstTrailingBit(countOneBits(u_input.b.x)), func_1(!global2[_wgslsmith_index_u32(4294967295u, 27u)], func_4(Struct_3(var_2.a, 61978u), vec3<u32>(global0.c.d.x, global0.c.d.x, 88770u), global0.c.b, Struct_4(global0.a, vec3<i32>(2147483647i, var_1.e, 27248i), Struct_2(Struct_1(true, var_1.e, vec2<i32>(var_2.a.a.c.x, var_2.a.a.b), global0.b), vec2<u32>(u_input.a.x, u_input.d.x), var_2.a.a, global0.d, -15772i), var_2.a, vec3<i32>(var_2.a.e, 2147483647i, -1i)))))));
    return func_4(Struct_3(func_1(!any(global3[_wgslsmith_index_u32(1u, 15u)]), func_4(Struct_3(var_3.a, global0.c.d.x), abs(vec3<u32>(71542u, var_3.a.a.d.x, var_1.b.x)), -10937i, Struct_4(var_2.a.a, u_input.b, var_2.a, var_3.a, u_input.c))).c, func_2(vec3<f32>(_wgslsmith_f_op_f32(-var_2.a.d), 288f, var_0.x), func_1(var_3.a.a.a || true, func_4(Struct_3(var_3.a, 4294967295u), vec3<u32>(4294967295u, 21112u, 4294967295u), 0i, Struct_4(Struct_1(false, -31676i, vec2<i32>(global0.c.b, var_3.a.e), vec2<u32>(var_1.c.d.x, 4294967295u)), vec3<i32>(1679i, -1i, -23249i), var_3.a, Struct_2(var_2.a.c, vec2<u32>(u_input.d.x, var_1.b.x), Struct_1(false, var_3.a.c.b, vec2<i32>(2147483647i, -2147483647i), vec2<u32>(var_1.a.d.x, 0u)), -1000f, global0.c.b), vec3<i32>(15698i, -14428i, global0.e)))).e, max(1u, _wgslsmith_clamp_u32(var_3.b, 4294967295u, var_3.a.c.d.x)))), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(u_input.d, vec3<u32>(5199u, var_2.b, u_input.a.x)), countOneBits(vec3<u32>(u_input.d.x, var_2.a.a.d.x, 4294967295u))) << (u_input.d % vec3<u32>(32u)), _wgslsmith_clamp_i32(2147483647i, -abs(0i) & ~_wgslsmith_clamp_i32(7093i, var_3.a.a.b, -20084i), u_input.b.x), func_1(global1[_wgslsmith_index_u32(u_input.a.x, 24u)], Struct_3(var_2.a, 1u))).a.c;
}

fn func_7(arg_0: Struct_1, arg_1: Struct_3, arg_2: f32) -> Struct_2 {
    var var_0 = 6177i;
    var var_1 = ~4294967295u;
    let var_2 = _wgslsmith_mod_u32(~(~(~1u)), countOneBits(1u));
    var var_3 = arg_0;
    var var_4 = abs(vec3<i32>(max(-24303i, _wgslsmith_clamp_i32(arg_0.b, 22133i, 0i)), ~1i, 0i) >> (u_input.d % vec3<u32>(32u)));
    return func_1(true, func_4(func_4(func_4(arg_1, vec3<u32>(35980u, arg_1.a.a.d.x, u_input.d.x) | u_input.d, max(0i, -1i), func_1(arg_0.a, arg_1)), _wgslsmith_mult_vec3_u32(~u_input.d, u_input.d), var_4.x, Struct_4(arg_0, ~u_input.b, Struct_2(Struct_1(false, -14310i, vec2<i32>(global0.c.c.x, arg_0.c.x), var_3.d), var_3.d, Struct_1(false, arg_0.c.x, vec2<i32>(var_4.x, arg_0.b), vec2<u32>(4294967295u, global0.c.d.x)), arg_2, 2147483647i), arg_1.a, abs(u_input.b))), countOneBits(min(~vec3<u32>(7187u, arg_0.d.x, var_2), u_input.d >> (u_input.d % vec3<u32>(32u)))), u_input.c.x, Struct_4(global0.c, vec3<i32>(-5203i, u_input.c.x, 2147483647i) | firstTrailingBit(vec3<i32>(global0.e, var_3.b, 54453i)), arg_1.a, Struct_2(Struct_1(global0.a.a, var_3.c.x, vec2<i32>(-8041i, -12997i), var_3.d), reverseBits(vec2<u32>(var_2, 41318u)), func_6(vec4<f32>(arg_1.a.d, -1379f, 1000f, arg_2)), _wgslsmith_f_op_vec4_f32(func_5(arg_1, 4294967295u, var_2)).x, global0.e), _wgslsmith_sub_vec3_i32(func_1(false, arg_1).b, _wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(var_4.x, 0i, -2802i)))))).c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(!global3[_wgslsmith_index_u32(2489u, 15u)]);
    global0 = func_7(func_6(_wgslsmith_f_op_vec4_f32(func_5(func_4(Struct_3(Struct_2(Struct_1(global2[_wgslsmith_index_u32(global0.b.x, 27u)], global0.a.b, u_input.b.xx, vec2<u32>(64160u, 74049u)), u_input.a, Struct_1(global0.c.a, 2147483647i, global0.a.c, vec2<u32>(u_input.a.x, global0.a.d.x)), global0.d, global0.e), u_input.a.x), vec3<u32>(1u, u_input.d.x, 0u), u_input.b.x, func_1(false, Struct_3(Struct_2(global0.a, vec2<u32>(u_input.d.x, global0.b.x), global0.c, -395f, u_input.c.x), global0.b.x))), min(u_input.d.x, u_input.a.x) << (~u_input.a.x % 32u), 60397u >> (~u_input.a.x % 32u)))), Struct_3(func_4(func_4(func_4(Struct_3(Struct_2(global0.c, vec2<u32>(1u, 0u), Struct_1(var_0, u_input.b.x, vec2<i32>(4132i, global0.e), global0.a.d), 504f, global0.a.c.x), 4294967295u), u_input.d, u_input.b.x, Struct_4(global0.a, u_input.c, Struct_2(global0.a, vec2<u32>(70876u, 4294967295u), Struct_1(true, u_input.b.x, vec2<i32>(-1i, 1i), vec2<u32>(9838u, 51154u)), global0.d, u_input.b.x), Struct_2(global0.c, vec2<u32>(1u, 0u), Struct_1(global2[_wgslsmith_index_u32(global0.a.d.x, 27u)], 2147483647i, u_input.c.xx, u_input.d.xz), 844f, 1i), u_input.c)), vec3<u32>(0u, 6681u, u_input.a.x), _wgslsmith_sub_i32(17757i, global0.e), func_1(true, Struct_3(Struct_2(Struct_1(false, u_input.c.x, global0.a.c, vec2<u32>(u_input.d.x, global0.a.d.x)), u_input.d.zx, Struct_1(global1[_wgslsmith_index_u32(1u, 24u)], 65809i, vec2<i32>(u_input.b.x, global0.a.b), vec2<u32>(global0.a.d.x, u_input.d.x)), global0.d, 1i), global0.c.d.x))), u_input.d, -_wgslsmith_sub_i32(791i, u_input.c.x), func_1(false, Struct_3(Struct_2(Struct_1(global0.c.a, 15579i, global0.c.c, global0.a.d), global0.b, global0.a, 626f, u_input.b.x), u_input.a.x))).a, global0.b.x ^ 1u), -1255f);
    global3 = array<vec3<bool>, 15>();
    var var_1 = vec3<i32>(-global0.c.c.x, u_input.c.x, func_6(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d, 843f, global0.d, global0.d))))).b >> ((_wgslsmith_clamp_u32(_wgslsmith_add_u32(73538u, u_input.d.x), ~19541u, func_7(global0.a, Struct_3(Struct_2(Struct_1(true, u_input.b.x, vec2<i32>(28071i, global0.a.b), global0.c.d), vec2<u32>(0u, global0.a.d.x), global0.a, 968f, -208i), 3776u), global0.d).b.x) | ~max(45154u, 22913u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(-17431i, func_6(vec4<f32>(func_4(Struct_3(Struct_2(Struct_1(global0.c.a, 1i, u_input.c.zy, vec2<u32>(u_input.d.x, 22299u)), vec2<u32>(4093u, global0.b.x), global0.a, -1207f, u_input.b.x), global0.a.d.x), u_input.d, global0.c.b, Struct_4(global0.c, u_input.b, Struct_2(Struct_1(global0.a.a, var_1.x, vec2<i32>(global0.e, 0i), vec2<u32>(global0.a.d.x, 0u)), vec2<u32>(u_input.d.x, u_input.d.x), Struct_1(global0.c.a, u_input.b.x, vec2<i32>(0i, global0.c.c.x), u_input.d.xz), 1073f, global0.e), Struct_2(global0.c, vec2<u32>(54739u, u_input.a.x), Struct_1(global0.c.a, -1i, var_1.xx, vec2<u32>(25998u, 0u)), -362f, var_1.x), vec3<i32>(global0.c.b, -38264i, global0.e))).a.d, _wgslsmith_f_op_f32(f32(-1f) * -707f), _wgslsmith_f_op_f32(global0.d + 1605f), global0.d)).c.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global0.a.a, Struct_3(Struct_2(Struct_1(var_0, u_input.c.x, vec2<i32>(2147483647i, 0i), u_input.a), vec2<u32>(11007u, 26527u), Struct_1(true, 1i, var_1.yy, global0.b), global0.d, global0.a.c.x), u_input.a.x)).d.d + global0.d)), _wgslsmith_f_op_f32(min(1594f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.d))))))));
}

