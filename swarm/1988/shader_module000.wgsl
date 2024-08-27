struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec4<u32>(12459u, 0u, 132554u, 37319u), vec4<bool>(false, true, true, false)), 930f);

var<private> global1: array<Struct_3, 14>;

var<private> global2: vec4<u32>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_3) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(798f * -604f)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(global0.b, global0.b)))), -489f))));
    var var_1 = -661f;
    global0 = global1[_wgslsmith_index_u32(~reverseBits(_wgslsmith_add_u32(global2.x, abs(21724u))), 14u)];
    let var_2 = vec4<f32>(-1600f, var_0, 1309f, global0.b);
    var var_3 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(ceil(639f)), true)));
    return vec3<i32>(u_input.c, reverseBits(_wgslsmith_mult_i32(~u_input.e.x, reverseBits(arg_0)) << (global2.x % 32u)), u_input.b.x);
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_sub_vec3_i32(~func_3(~(-22264i), global0.a, global2.x, global1[_wgslsmith_index_u32(global0.a.a.x, 14u)]), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, u_input.b.x, u_input.c), countOneBits(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x))), u_input.b.xxx), u_input.b.xwx));
    let var_1 = -vec4<i32>(~_wgslsmith_clamp_i32(5335i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, u_input.c, u_input.e.x), var_0), ~(-1i)), 1i, _wgslsmith_mod_i32(2147483647i, var_0.x), -_wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, var_0.x), -vec2<i32>(var_0.x, -2147483647i)));
    var var_2 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(global2.x, _wgslsmith_mult_u32(104158u, global2.x)), 25896u);
    global2 = vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(abs(_wgslsmith_dot_vec3_u32(~global0.a.a.xwy, _wgslsmith_add_vec3_u32(vec3<u32>(73833u, 4294967295u, global0.a.a.x), global2.zwx))), min(~(~4294967295u), max(53367u, 1u))), ~(~4294967295u), countOneBits(reverseBits(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global2.x, 15171u, 0u), vec3<u32>(1u, global2.x, u_input.a.x)), ~vec3<u32>(u_input.a.x, global0.a.a.x, global2.x)))));
    var var_3 = Struct_3(Struct_1(u_input.a, vec4<bool>(global0.a.b.x && global0.a.b.x, any(vec4<bool>(false, false, global0.a.b.x, global0.a.b.x)) & global0.a.b.x, global0.b >= _wgslsmith_div_f32(-3810f, global0.b), all(select(vec2<bool>(false, global0.a.b.x), vec2<bool>(global0.a.b.x, global0.a.b.x), global0.a.b.zy)))), global0.b);
    return global1[_wgslsmith_index_u32(global0.a.a.x << (_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(~4294967295u, u_input.a.x, _wgslsmith_add_u32(var_3.a.a.x, 1u), firstTrailingBit(global0.a.a.x))), ~global0.a.a) % 32u), 14u)];
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_2) -> i32 {
    global0 = func_2();
    var var_0 = firstLeadingBit(-u_input.d) >> (88441u % 32u);
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1124f, arg_2.a, 307f, _wgslsmith_f_op_f32(arg_2.a - arg_2.a)))), vec4<f32>(_wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(138f))))), 266f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b + -332f)) - global0.b), global0.b));
    return i32(-1i) * -u_input.d;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_3) -> Struct_2 {
    var var_0 = firstLeadingBit(_wgslsmith_add_u32(3085u, max(arg_1.a.a.x, 0u)));
    let var_1 = global0.a.b;
    let var_2 = select(~vec4<i32>(select(~1i, min(-2147483647i, arg_0.x), true), ~u_input.e.x, _wgslsmith_clamp_i32(2147483647i >> (global2.x % 32u), u_input.d, u_input.e.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 12341i, u_input.c, 2147483647i), ~u_input.b)), u_input.b, !(!var_1.x));
    let var_3 = ~_wgslsmith_div_i32(u_input.b.x, ~countOneBits(min(0i, -69586i)));
    let var_4 = -arg_0.x;
    return Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b + 500f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec3<i32>(min(_wgslsmith_mod_i32(u_input.e.x, u_input.e.x), 2147483647i), func_1(Struct_1(global0.a.a, vec4<bool>(false, true, false, global0.a.b.x)), ~global0.a.a.yyw, Struct_2(global0.b)), _wgslsmith_mult_i32(abs(-65819i), -u_input.d)) ^ u_input.b.zyy, Struct_3(func_2().a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(step(global0.b, 506f))))));
    let var_1 = global0.a;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b + global0.b) + -1091f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.b))), -1000f));
    global2 = ~(~firstLeadingBit(~global0.a.a) | vec4<u32>(var_1.a.x, _wgslsmith_div_u32(4294967295u, ~global2.x), ~1u, _wgslsmith_mult_u32(56580u, ~4294967295u)));
    let var_3 = global0.a;
    global1 = array<Struct_3, 14>();
    global0 = func_2();
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(func_2().b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.b, var_0.a, false)) + _wgslsmith_f_op_f32(var_0.a + -756f)))) - 818f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_2.xy, var_2.zz, !var_1.b.zz))))), _wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_mod_i32(~u_input.c, _wgslsmith_add_i32(-1i, 2147483647i)), -reverseBits(40501i)), _wgslsmith_sub_i32(1i, 1i)), abs(~11297i), select(~max(global0.a.a.xzw, vec3<u32>(18430u, global2.x, 4294967295u)) & var_3.a.www, var_3.a.yxy | _wgslsmith_div_vec3_u32(vec3<u32>(var_1.a.x, global2.x, global2.x), global2.xzw), u_input.b.x > _wgslsmith_mod_i32(~u_input.b.x, -u_input.b.x)));
}

