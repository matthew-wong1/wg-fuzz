struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: i32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> vec2<bool> {
    let var_0 = Struct_1(!(!select(vec2<bool>(false, true), vec2<bool>(false, true), true)));
    var var_1 = u_input.a > abs(abs(min(_wgslsmith_mult_u32(arg_0.c.x, global0.c.x), 0u)));
    let var_2 = arg_0.c.x;
    var_1 = any(select(vec2<bool>(var_0.a.x, var_0.a.x && all(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x))), var_0.a, any(!vec4<bool>(var_0.a.x, true, true, true)) && var_0.a.x));
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(arg_1)))))), _wgslsmith_f_op_f32(-arg_1), 1f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(arg_1)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-876f + 545f), _wgslsmith_f_op_f32(-1382f * -839f), var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, arg_1) + _wgslsmith_f_op_f32(-arg_1))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -1026f, 1259f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -101f, arg_1) + vec3<f32>(-599f, arg_1, arg_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, -1029f)), select(vec3<bool>(true, true, var_0.a.x), vec3<bool>(true, false, false), var_0.a.x)))))));
    return select(var_0.a, var_0.a, false);
}

fn func_2() -> vec2<bool> {
    global1 = 1i & (_wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_clamp_i32(u_input.e, global0.b, 26101i)), 1i) ^ 1i);
    global0 = Struct_2(u_input.d.www, firstLeadingBit(_wgslsmith_div_i32(abs(16215i) | (-1i >> (u_input.b.x % 32u)), 2147483647i)), global0.c, ~vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(global0.d.x, 2147483647i), u_input.e, ~(-4071i)), 0i, _wgslsmith_dot_vec2_i32(global0.d.yw, vec2<i32>(global0.a.x, u_input.c)), global0.a.x));
    return select(!func_3(Struct_2(global0.d.wwx ^ vec3<i32>(global0.b, 2147483647i, 0i), u_input.e, ~global0.c, max(global0.d, global0.d)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(370f, -1301f), _wgslsmith_f_op_f32(-395f - 1000f)))), vec2<bool>(select(select(false, true, false) & false, true, true || (-30987i != u_input.e)), false), !(!any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false))));
}

fn func_1() -> vec2<bool> {
    let var_0 = !select(select(!func_2(), vec2<bool>(true, true), false), !select(vec2<bool>(true, true), func_3(Struct_2(vec3<i32>(14926i, -2147483647i, -613i), 14200i, vec4<u32>(global0.c.x, 0u, global0.c.x, global0.c.x), global0.d), -2137f), u_input.d.x > u_input.e), vec2<bool>(-global0.a.x >= abs(u_input.d.x), true));
    global1 = _wgslsmith_dot_vec2_i32(-abs(-u_input.d.xx), -u_input.d.yw) | global0.a.x;
    return func_2();
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: Struct_3) -> i32 {
    var var_0 = _wgslsmith_div_i32(min(_wgslsmith_sub_i32(0i & global0.a.x, global0.b >> (19689u % 32u)), ~(arg_2.b.d.x & u_input.e)), u_input.d.x);
    let var_1 = arg_2.b.c;
    let var_2 = Struct_3(-arg_2.b.a, Struct_2(abs(reverseBits(arg_2.b.d.wyx)), u_input.e, _wgslsmith_clamp_vec4_u32(vec4<u32>(firstTrailingBit(var_1.x), global0.c.x, ~39898u, global0.c.x), vec4<u32>(0u, u_input.b.x, ~var_1.x, 17756u), _wgslsmith_div_vec4_u32(vec4<u32>(global0.c.x, arg_2.b.c.x, 18234u, 21904u), arg_2.b.c)), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(u_input.d, vec4<i32>(global0.a.x, u_input.e, global0.a.x, 21954i)), select(vec4<i32>(arg_2.b.a.x, global0.a.x, global0.a.x, -18680i), vec4<i32>(u_input.d.x, arg_2.b.a.x, global0.b, u_input.c), vec4<bool>(true, true, false, arg_1.x))) >> (~max(vec4<u32>(9855u, 440u, 1u, arg_2.b.c.x), vec4<u32>(55836u, global0.c.x, 7760u, arg_2.b.c.x)) % vec4<u32>(32u))));
    let var_3 = countOneBits(min(~abs(vec2<i32>(var_2.b.d.x, -1i)), firstTrailingBit(reverseBits(var_2.b.a.yx)))) & max(global0.d.zz, -vec2<i32>(u_input.c, var_2.a.x) >> (_wgslsmith_mult_vec2_u32(select(vec2<u32>(1u, 21181u), var_1.zw, true), global0.c.zx) % vec2<u32>(32u)));
    var var_4 = _wgslsmith_f_op_f32(-2453f + _wgslsmith_f_op_f32(floor(109f)));
    return abs(_wgslsmith_clamp_i32(-11306i, -1i, var_2.b.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(round(1451f));
    global1 = min(0i, func_4(select(select(func_1(), vec2<bool>(true, true), vec2<bool>(true, false)), !func_2(), select(vec2<bool>(true, true), vec2<bool>(true, false), false)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), false), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false)), true), Struct_3(vec3<i32>(2147483647i, u_input.e, 1i) >> (~global0.c.zwx % vec3<u32>(32u)), Struct_2(u_input.d.yyw >> (vec3<u32>(global0.c.x, u_input.a, 25180u) % vec3<u32>(32u)), ~0i, _wgslsmith_mult_vec4_u32(global0.c, global0.c), firstTrailingBit(u_input.d)))));
    var var_1 = Struct_3(abs(firstTrailingBit(select(_wgslsmith_div_vec3_i32(u_input.d.xxy, global0.d.wxx), u_input.d.ywx & vec3<i32>(0i, 27331i, u_input.c), false))), Struct_2(vec3<i32>(-40954i, abs(global0.a.x), max(-u_input.c, global0.a.x)), u_input.c, vec4<u32>(u_input.b.x, 99945u & u_input.b.x, 16098u, u_input.b.x) | global0.c, select(vec4<i32>(-2147483647i, -2147483647i, -50727i, 0i), vec4<i32>(-13514i, global0.b, global0.d.x, 0i), true) | vec4<i32>(u_input.e, global0.a.x, global0.d.x << (global0.c.x % 32u), func_4(vec2<bool>(true, true), vec4<bool>(false, true, false, true), Struct_3(vec3<i32>(73744i, u_input.c, 1i), Struct_2(global0.a, -1i, vec4<u32>(1u, 4294967295u, global0.c.x, u_input.b.x), global0.d))))));
    global1 = global0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(-89989i);
}

