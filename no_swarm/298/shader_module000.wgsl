struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> i32 {
    global0 = Struct_2(vec4<bool>(arg_2.d, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1575f * -1325f))) > _wgslsmith_f_op_f32(select(global0.b.x, arg_3.b.x, arg_2.a.x)), !any(global0.a), true), _wgslsmith_f_op_vec2_f32(-arg_1.a), ~(arg_3.c & (~arg_2.c | u_input.b)), !(arg_1.a.x == _wgslsmith_f_op_f32(floor(arg_3.b.x))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1534f));
    global0 = Struct_2(select(!vec4<bool>(all(global0.a.wwx), !global0.d, global0.d, true), arg_3.a, !global0.a), arg_0.a, arg_3.c, arg_3.a.x);
    global0 = Struct_2(select(arg_2.a, select(!(!arg_3.a), global0.a, select(vec4<bool>(arg_2.d, true, arg_3.d, arg_2.d), select(vec4<bool>(global0.d, global0.a.x, global0.d, arg_3.a.x), vec4<bool>(arg_3.a.x, arg_2.a.x, arg_2.a.x, arg_3.a.x), vec4<bool>(global0.d, true, arg_3.a.x, arg_3.a.x)), true)), global0.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(arg_0.a, global0.b)) - _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(971f)), global0.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a.x, arg_2.b.x), vec2<f32>(arg_2.b.x, global0.b.x))))), arg_3.c, all(!select(vec2<bool>(true, global0.d), select(vec2<bool>(arg_3.d, true), global0.a.yz, global0.a.yz), global0.d && false)));
    var var_1 = Struct_2(select(!(!select(global0.a, arg_3.a, false)), !select(!arg_3.a, select(vec4<bool>(global0.d, true, true, false), arg_2.a, arg_3.a.x), !arg_3.a.x), arg_2.a), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, _wgslsmith_f_op_f32(exp2(global0.b.x))))))), abs(_wgslsmith_sub_vec4_u32(min(global0.c, _wgslsmith_div_vec4_u32(arg_3.c, vec4<u32>(0u, 0u, u_input.d, global0.c.x))), arg_3.c)), true);
    return arg_0.b;
}

fn func_2() -> i32 {
    let var_0 = countOneBits(vec2<i32>(func_3(Struct_1(global0.b, u_input.a), Struct_1(vec2<f32>(1133f, 422f), 34601i), Struct_2(vec4<bool>(global0.a.x, global0.d, false, global0.a.x), vec2<f32>(841f, global0.b.x), u_input.b, global0.d), Struct_2(vec4<bool>(global0.d, true, global0.a.x, global0.a.x), vec2<f32>(global0.b.x, -393f), u_input.b, global0.d)), firstTrailingBit(_wgslsmith_add_i32(23903i, u_input.c.x)))) << (~(~(~vec2<u32>(0u, 97035u))) % vec2<u32>(32u));
    global0 = Struct_2(!(!global0.a), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(step(114f, _wgslsmith_f_op_f32(-global0.b.x))), _wgslsmith_f_op_f32(global0.b.x + 674f)), global0.b, false & !all(vec2<bool>(false, global0.d)))), max(global0.c, _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, global0.c.x, u_input.d, 1u), u_input.e, global0.c) ^ global0.c) & vec4<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.d, 73653u), 4294967295u), u_input.b.x, ~_wgslsmith_mod_u32(global0.c.x, 4294967295u), _wgslsmith_div_u32(100919u, 1u)), !(firstLeadingBit(u_input.e.x) == 1u));
    global0 = Struct_2(!global0.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.b.x, global0.b.x)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(893f, global0.b.x), _wgslsmith_div_vec2_f32(vec2<f32>(234f, global0.b.x), global0.b)) - _wgslsmith_f_op_vec2_f32(global0.b * global0.b))), ~global0.c, global0.d);
    let var_1 = u_input.c;
    var var_2 = -(~max(~(vec4<i32>(var_1.x, 49929i, var_0.x, 24014i) & vec4<i32>(1i, -38246i, u_input.c.x, u_input.c.x)), _wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(u_input.c.x, -4178i, u_input.c.x, 3066i)), select(vec4<i32>(-12164i, -43152i, 65797i, var_1.x), vec4<i32>(var_0.x, 2147483647i, -23745i, var_1.x), global0.a))));
    return u_input.c.x;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    global0 = Struct_2(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, arg_2.a.x, arg_2.d), !all(vec4<bool>(false, false, true, true))), _wgslsmith_f_op_vec2_f32(select(global0.b, vec2<f32>(492f, -686f), arg_2.a.yy)), arg_2.c, true);
    let var_0 = _wgslsmith_mult_vec4_i32(-(~vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(0i, 0i, 1i)), -2147483647i ^ arg_0.b, 1i, -31117i)), vec4<i32>(func_2() >> (1u % 32u), abs(_wgslsmith_mult_i32(u_input.a << (20800u % 32u), 11453i)), _wgslsmith_sub_i32(func_2(), abs(~arg_0.b)), -1i));
    var var_1 = ~_wgslsmith_div_u32(_wgslsmith_sub_u32(arg_1, 1u), arg_1);
    var var_2 = !vec2<bool>(any(select(vec3<bool>(false, arg_2.d, false), select(arg_2.a.zxx, vec3<bool>(false, false, arg_2.a.x), arg_2.a.xyw), global0.a.x & global0.a.x)), false);
    var var_3 = false;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 35821u;
    global0 = Struct_2(select(select(!(!global0.a), !vec4<bool>(true, global0.d, global0.a.x, global0.d), true), global0.a, select(global0.a, select(vec4<bool>(global0.a.x, true, global0.d, false), !vec4<bool>(true, true, true, global0.a.x), true), global0.a)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f - -3036f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b.x, -805f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global0.b)))), ~(vec4<u32>(global0.c.x, firstTrailingBit(global0.c.x), 1u, u_input.e.x) & ~(~vec4<u32>(33238u, u_input.b.x, 47245u, global0.c.x))), false);
    let var_1 = Struct_3(func_1(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-794f, -487f))), -2147483647i), global0.c.x, Struct_2(select(!vec4<bool>(true, global0.a.x, true, global0.a.x), global0.a, u_input.c.x == 13967i), _wgslsmith_f_op_vec2_f32(-global0.b), select(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global0.c.x, 0u, 4294967295u), u_input.e), ~vec4<u32>(0u, u_input.b.x, global0.c.x, 28394u), select(global0.a, global0.a, global0.d)), any(!global0.a))), u_input.b.wwz, Struct_2(global0.a, _wgslsmith_f_op_vec2_f32(global0.b * global0.b), ~(countOneBits(u_input.b) | ~global0.c), !(!global0.d) & (global0.b.x >= _wgslsmith_f_op_f32(-global0.b.x))));
    var var_2 = Struct_3(var_1.a, u_input.b.xyz, Struct_2(var_1.c.a, func_1(Struct_1(_wgslsmith_f_op_vec2_f32(-var_1.c.b), -2147483647i), select(global0.c.x, ~1u, select(true, global0.a.x, global0.d)), Struct_2(vec4<bool>(var_1.c.d, true, false, global0.d), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1000f, global0.b.x))), ~vec4<u32>(1u, var_1.c.c.x, 15019u, var_1.c.c.x), true)).a, ~(~(~vec4<u32>(u_input.d, u_input.d, 88291u, var_1.b.x))), false || any(select(var_1.c.a, var_1.c.a, var_1.c.a))));
    var var_3 = var_2.a.b;
    let var_4 = Struct_2(!vec4<bool>(true, true, !(!var_1.c.a.x), true), var_2.a.a, firstTrailingBit(var_1.c.c), false);
    let var_5 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1005f, -1851f) * _wgslsmith_f_op_vec2_f32(var_1.a.a - _wgslsmith_f_op_vec2_f32(-global0.b))), u_input.c.x << (firstTrailingBit(var_4.c.x) % 32u)), reverseBits(var_1.b), var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(1248f - var_2.c.b.x), var_2.a.a.x, _wgslsmith_f_op_f32(trunc(var_1.a.a.x)))))));
}

