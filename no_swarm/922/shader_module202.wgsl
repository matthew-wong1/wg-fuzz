struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: vec4<f32>,
    d: f32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(true, vec2<bool>(true, true), vec4<f32>(-499f, -1305f, 1000f, 632f), -559f);

var<private> global1: array<Struct_2, 21>;

var<private> global2: i32;

var<private> global3: Struct_3 = Struct_3(vec2<u32>(0u, 4294967295u));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> vec4<bool> {
    return select(select(select(!(!vec4<bool>(false, global0.a, false, global0.a)), vec4<bool>(global0.b.x, global0.b.x, global0.a != false, global0.b.x), all(global0.b)), select(!select(vec4<bool>(global0.a, false, false, global0.b.x), vec4<bool>(true, global0.a, true, true), global0.a), !vec4<bool>(global0.b.x, global0.a, false, global0.b.x), !vec4<bool>(false, false, true, global0.b.x)), vec4<bool>(global0.a, true, true, global0.a)), select(vec4<bool>(abs(u_input.e) <= 58847u, !select(true, false, true), true, any(vec3<bool>(global0.a, global0.b.x, global0.a))), !(!(!vec4<bool>(global0.b.x, global0.b.x, true, global0.a))), !(!(!vec4<bool>(true, true, global0.a, true)))), vec4<bool>(true, any(select(!global0.b, global0.b, global0.b)), !(global0.a & global0.b.x), false));
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: vec3<bool>) -> u32 {
    let var_0 = 1u;
    let var_1 = Struct_2(arg_0.x, !(!(!(!arg_2.yy))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(global0.c)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, global0.d, -465f, global0.d)), vec4<f32>(global0.c.x, _wgslsmith_f_op_f32(-global0.d), global0.c.x, 546f))), _wgslsmith_f_op_f32(exp2(global0.c.x)));
    var var_2 = !arg_0;
    var var_3 = 1120f;
    var var_4 = Struct_2(227f > var_1.c.x, select(arg_2.zx, !(!(!arg_2.zy)), arg_2.zy), _wgslsmith_f_op_vec4_f32(ceil(global0.c)), global0.d);
    return var_0;
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1644f);
    let var_1 = vec4<bool>(true, true, false, u_input.e > 1230u);
    var_0 = _wgslsmith_f_op_f32(exp2(global0.d));
    let var_2 = ~vec3<u32>(firstTrailingBit(26111u) & global3.a.x, _wgslsmith_div_u32(reverseBits(_wgslsmith_div_u32(global3.a.x, 1u)), ~1u), func_4(func_3(), true, !(!vec3<bool>(false, true, var_1.x))));
    let var_3 = ~0i;
    return Struct_3(vec2<u32>(517u, var_2.x));
}

fn func_1() -> Struct_3 {
    global2 = abs(-u_input.a);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.d, _wgslsmith_f_op_f32(global0.d * global0.d)));
    global3 = func_2();
    global3 = Struct_3(global3.a);
    global1 = array<Struct_2, 21>();
    return Struct_3(global3.a);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_3(~global3.a);
    var var_0 = func_1();
    var var_1 = Struct_2(global0.b.x, global0.b, global0.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(global0.d, -244f, !global0.b.x)))));
    global2 = u_input.a;
    let var_2 = _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, -2858i, u_input.c), -vec3<i32>(u_input.b, 0i, u_input.c)), _wgslsmith_div_i32(1i, u_input.a << (var_0.a.x % 32u))), ~reverseBits(vec2<i32>(u_input.a, -23729i) >> (var_0.a % vec2<u32>(32u)))), vec2<i32>(~(~2147483647i & u_input.b), -2147483647i), abs(~_wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(u_input.a, -1i)), vec2<i32>(u_input.c, u_input.a) << (global3.a % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.a), vec2<i32>(-2147483647i, 16152i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-811f, -959f)), var_1.d)) + global0.d), -_wgslsmith_div_i32(u_input.b, -1i), min(~(~vec2<i32>(var_2.x, 2147483647i)), var_2), _wgslsmith_sub_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(11125i, 1i, 0i), vec3<i32>(u_input.b, -57079i, 30036i)) >> (~(~vec3<u32>(452u, var_0.a.x, 1u)) % vec3<u32>(32u)), (vec3<i32>(-1i) * -vec3<i32>(-1i, 1i, var_2.x)) & ~(-vec3<i32>(var_2.x, var_2.x, 5961i))), 1u);
}

