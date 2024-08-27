struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: vec2<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> u32 {
    let var_0 = arg_1.e.x;
    global1 = ~(~abs(u_input.c));
    let var_1 = vec3<bool>(false, (~93846u <= u_input.d.x) | (!select(var_0, true, false) && !select(var_0, var_0, var_0)), all(arg_1.e));
    var var_2 = arg_1;
    var_2 = Struct_2((_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(arg_1.c.b)), arg_1.c.b)) <= _wgslsmith_div_f32(1422f, _wgslsmith_f_op_f32(floor(-824f)))) & true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.d.b * _wgslsmith_f_op_f32(-1250f * arg_1.d.b)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1542f))))), arg_1.d, var_2.d, vec4<bool>(true, all(var_2.e.xw), var_0, !var_1.x));
    return global0.x;
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: u32) -> vec2<i32> {
    global0 = u_input.b;
    global0 = vec4<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_0, 4294967295u, u_input.b.x, arg_0)), vec4<u32>(4294967295u, ~u_input.d.x, 1u, ~min(30240u, arg_1.x))), func_3(true, Struct_2(true, 1781f, Struct_1(true, -221f, u_input.a.xw), Struct_1(false, -1175f, u_input.a.xx), vec4<bool>(true, true, true, true))) | _wgslsmith_div_u32(arg_2, 82300u), global0.x, global0.x);
    let var_0 = (-u_input.a.x > 3805i) & true;
    global0 = _wgslsmith_mult_vec4_u32(vec4<u32>(33639u, func_3(!var_0, Struct_2(false, -708f, Struct_1(var_0, -1057f, vec2<i32>(u_input.e, u_input.a.x)), Struct_1(var_0, -1435f, u_input.a.xy), vec4<bool>(var_0, var_0, false, false))), ~u_input.d.x, ~countOneBits(45511u)) << (~vec4<u32>(_wgslsmith_mod_u32(arg_1.x, 4294967295u), ~102022u, global0.x, 0u ^ arg_1.x) % vec4<u32>(32u)), u_input.b);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -459f) != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(542f, -2332f))))), _wgslsmith_f_op_f32(f32(-1f) * -1277f), Struct_1(any(!select(vec3<bool>(true, var_0, true), vec3<bool>(var_0, true, true), vec3<bool>(true, false, var_0))), _wgslsmith_f_op_f32(f32(-1f) * -1102f), u_input.a.zx), Struct_1(false, -845f, vec2<i32>(-4376i, 0i)), vec4<bool>(select(true, true, all(select(vec2<bool>(var_0, false), vec2<bool>(false, var_0), true))), all(vec4<bool>(var_0, !var_0, 18235u <= arg_0, true)), !(!var_0 | all(vec3<bool>(var_0, true, var_0))), true));
    return u_input.a.wy;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec2<u32>) -> i32 {
    let var_0 = u_input.e;
    global1 = ~75801u | (9481u << (global0.x % 32u));
    var var_1 = Struct_2(true, _wgslsmith_f_op_f32(f32(-1f) * -778f), Struct_1(false, arg_1.b, firstTrailingBit(_wgslsmith_div_vec2_i32(~vec2<i32>(2147483647i, 11672i), u_input.a.wy))), arg_1, !(!select(vec4<bool>(false, arg_1.a, arg_1.a, arg_1.a), vec4<bool>(arg_1.a, arg_1.a, false, arg_1.a), vec4<bool>(arg_1.a, false, true, false))));
    let var_2 = min(_wgslsmith_clamp_i32(-2147483647i, _wgslsmith_mod_i32(func_2(arg_3.x, vec2<u32>(global0.x, 1u), 1u).x, _wgslsmith_dot_vec3_i32(u_input.a.yww, vec3<i32>(arg_1.c.x, var_1.d.c.x, 1i))), u_input.a.x), var_1.c.c.x);
    global0 = firstTrailingBit(vec4<u32>(func_3(true, Struct_2(arg_1.a, arg_2.x, arg_1, Struct_1(arg_1.a, 237f, arg_1.c), var_1.e)), 1u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, arg_0), global0.x), ~reverseBits(1u)) ^ abs(~u_input.b));
    return -2147483647i;
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    var var_0 = true;
    var var_1 = arg_1.c;
    var var_2 = ~vec4<i32>(-_wgslsmith_div_i32(-arg_1.c.x, var_1.x), func_4(~83414u, Struct_1(!arg_1.a, _wgslsmith_f_op_f32(-arg_1.b), func_2(1u, vec2<u32>(1u, 0u), u_input.d.x)), vec3<f32>(arg_1.b, _wgslsmith_f_op_f32(ceil(arg_1.b)), _wgslsmith_f_op_f32(-arg_1.b)), vec2<u32>(~u_input.b.x, 4294967295u << (u_input.d.x % 32u))), u_input.e, u_input.a.x);
    let var_3 = vec3<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(firstLeadingBit(0i), 1i), firstTrailingBit(_wgslsmith_clamp_i32(var_2.x & 39919i, ~var_1.x, func_2(6079u, global0.ww, global0.x).x))), _wgslsmith_dot_vec4_i32(u_input.a, max(countOneBits(abs(u_input.a)), vec4<i32>(var_1.x, firstTrailingBit(-2147483647i), arg_1.c.x, _wgslsmith_div_i32(arg_1.c.x, -1i)))), var_2.x);
    var var_4 = -2147483647i;
    return Struct_1(!(firstTrailingBit(global0.x) == abs(u_input.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b + 746f) - arg_1.b) - _wgslsmith_f_op_f32(arg_1.b + -1000f))), countOneBits(_wgslsmith_clamp_vec2_i32(select(vec2<i32>(var_1.x, -1i), -vec2<i32>(0i, 1i), true), vec2<i32>(min(-2147483647i, arg_1.c.x), 3887i), _wgslsmith_clamp_vec2_i32(u_input.a.yy, vec2<i32>(var_1.x, 1i), abs(vec2<i32>(-1i, 9557i))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~56299u;
    let var_0 = func_1(false, Struct_1(!(max(u_input.e, u_input.e) == 1i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2622f, _wgslsmith_div_f32(716f, -672f))), u_input.a.zy));
    let var_1 = u_input.b.wwx;
    global1 = _wgslsmith_mult_u32(reverseBits(~(~global0.x >> (firstLeadingBit(var_1.x) % 32u))), _wgslsmith_div_u32(global0.x & ~firstTrailingBit(global0.x), countOneBits(0u >> (global0.x % 32u))));
    var var_2 = Struct_2(all(!vec4<bool>(false, var_0.a, !var_0.a, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + 270f), func_1(var_0.a, var_0), var_0, vec4<bool>(false, !var_0.a, var_0.a, var_0.a & var_0.a));
    global1 = 60657u;
    let var_3 = max(firstLeadingBit(u_input.b.x) ^ 36620u, 20364u);
    let var_4 = global0.xxx;
    var var_5 = _wgslsmith_add_i32(-_wgslsmith_sub_i32(_wgslsmith_mult_i32(var_0.c.x ^ -1i, 2147483647i), var_2.d.c.x), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(var_0.c.x, u_input.e, -25362i, u_input.a.x), vec4<i32>(2147483647i, u_input.a.x, ~var_0.c.x, -12331i)), ~28005i));
    let x = u_input.a;
    s_output = StorageBuffer(5194u, global0.x, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(891f, var_0.b)) + vec2<f32>(717f, var_2.b)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1153f, -1276f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-339f, var_2.c.b) - vec2<f32>(var_0.b, var_2.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-205f, var_2.c.b), vec2<f32>(-1000f, -1000f)))))), u_input.b);
}

