struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_div_vec3_u32(~select(global1.b.a, vec3<u32>(global1.b.a.x, 8323u, global1.b.a.x), true) >> (select(vec3<u32>(global1.b.a.x, global1.b.a.x, global1.b.a.x), vec3<u32>(0u, global1.b.a.x, u_input.c.x), all(vec2<bool>(false, false))) % vec3<u32>(32u)), global1.b.a), -firstTrailingBit(_wgslsmith_mod_vec3_i32(global1.b.b, vec3<i32>(u_input.d.x, u_input.a, 30173i))));
    let var_1 = select(abs(1u), var_0.a.x, any(vec3<bool>(false, _wgslsmith_dot_vec2_i32(u_input.d.yy, u_input.d.yy) < global1.a.x, !select(true, true, false))));
    global1 = Struct_2(~vec3<i32>(firstLeadingBit(-27789i), -select(var_0.b.x, global1.a.x, false), -(~var_0.b.x)), Struct_1(vec3<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, u_input.b, 75500u), vec3<u32>(4086u, u_input.c.x, var_1), true), ~u_input.c), 4294967295u, global1.b.a.x), abs(vec3<i32>(2147483647i, global1.a.x, -17750i) ^ (var_0.b ^ vec3<i32>(u_input.d.x, u_input.d.x, var_0.b.x)))));
    let var_2 = _wgslsmith_div_vec4_i32(-vec4<i32>(_wgslsmith_mod_i32(2147483647i, _wgslsmith_dot_vec2_i32(var_0.b.zx, global1.a.zz)), 2147483647i, _wgslsmith_mod_i32(~(-2147483647i), 3831i), reverseBits(3125i)), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -1i, ~var_0.b.x, global1.a.x), vec4<i32>(var_0.b.x, global1.a.x, min(var_0.b.x, -49101i), u_input.a) ^ ~(-vec4<i32>(var_0.b.x, 59658i, var_0.b.x, 912i))));
    var var_3 = any(select(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))), vec2<bool>(select(true, true, true), true), vec2<bool>(true, true)));
    return vec3<f32>(_wgslsmith_f_op_f32(-1320f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, 1602f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(select(-207f, global0.x, true)))), any(vec2<bool>(false, true))))), _wgslsmith_f_op_f32(round(-430f)), _wgslsmith_f_op_f32(abs(-110f)));
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_3());
    return Struct_2(global1.b.b, Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(global1.b.a.x, u_input.b, 130459u), u_input.c) | vec3<u32>(_wgslsmith_div_u32(4294967295u, global1.b.a.x), global1.b.a.x, ~76950u), abs(vec3<i32>(~1i, -12539i, -arg_0.x))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec3<i32>) -> Struct_2 {
    let var_0 = global1.b;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1055f, 1000f, -302f, -473f)));
    global1 = func_2(firstLeadingBit(vec3<i32>(abs(~global1.a.x), ~u_input.a, 2147483647i)));
    var var_1 = 1u >> (global1.b.a.x % 32u);
    let var_2 = all(vec3<bool>(false, _wgslsmith_add_i32(firstLeadingBit(16022i), arg_2.x) < _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_2.x, -51743i, 2147483647i, arg_2.x), vec4<i32>(global1.a.x, 49191i, 0i, 0i)), ~global1.b.a.x != max(_wgslsmith_div_u32(arg_0.b.a.x, global1.b.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, arg_0.b.a.x, var_0.a.x), arg_0.b.a))));
    return func_2(vec3<i32>(arg_0.b.b.x, _wgslsmith_dot_vec2_i32(min(vec2<i32>(global1.a.x, arg_0.b.b.x), var_0.b.zz) | (vec2<i32>(13876i, global1.b.b.x) ^ global1.a.zx), var_0.b.xy), _wgslsmith_mult_i32(reverseBits(u_input.a), 1i)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> vec4<f32> {
    global1 = func_4(func_2(reverseBits(~u_input.d)), _wgslsmith_f_op_f32(f32(-1f) * -314f), vec3<i32>(~(1i << (_wgslsmith_dot_vec3_u32(arg_0.a, global1.b.a) % 32u)), -2147483647i, arg_0.b.x));
    global0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -1392f, -1550f, -658f) + _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, 457f, global0.x), vec4<f32>(1565f, global0.x, global0.x, global0.x)))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -912f, global0.x, -986f))))))));
    let var_0 = ~arg_0.a.x;
    var var_1 = true;
    let var_2 = all(vec4<bool>(select(any(arg_1), arg_1.x, false), arg_1.x != arg_1.x, true, !(false && arg_1.x) | false));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, global0.x, global0.x, 1803f), vec4<f32>(global0.x, 1618f, global0.x, global0.x))), vec4<f32>(global0.x, 449f, -404f, -1304f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, -899f, global0.x, 351f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -899f, global0.x, -974f)), false))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, -1218f, -1110f, -417f), _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x), vec4<f32>(422f, global0.x, global0.x, global0.x))), vec4<f32>(_wgslsmith_f_op_f32(global0.x + -740f), _wgslsmith_f_op_f32(global0.x * global0.x), 949f, _wgslsmith_f_op_f32(-1778f + 980f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.b.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1080f, global0.x, global0.x)) + _wgslsmith_f_op_vec4_f32(func_1(global1.b, vec2<bool>(false, true)))), vec4<f32>(_wgslsmith_div_f32(global0.x, 710f), _wgslsmith_f_op_vec4_f32(func_1(global1.b, vec2<bool>(true, true))).x, _wgslsmith_f_op_f32(-global0.x), -355f))), _wgslsmith_dot_vec2_i32(~vec2<i32>(abs(2147483647i), _wgslsmith_clamp_i32(0i, 70397i, global1.b.b.x)), vec2<i32>(-6541i, 2147483647i)));
}

