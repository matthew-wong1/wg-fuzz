struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec3<bool> {
    global0 = Struct_2(~(~_wgslsmith_sub_i32(global0.a, firstTrailingBit(0i))), Struct_1(global0.b.a, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.b.d, -1000f)), _wgslsmith_f_op_f32(select(-222f, 1148f, global0.b.c.x))), _wgslsmith_f_op_f32(1f + global0.b.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-547f)) + -992f), global0.b.b.x), select(select(!vec3<bool>(true, global0.b.c.x, true), global0.b.c, global0.b.c), global0.b.c, global0.b.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1303f + -896f) + _wgslsmith_f_op_f32(f32(-1f) * -592f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2071f, global0.b.d))))), vec4<u32>(1u, 26933u, ~u_input.c.x, ~u_input.a.x ^ _wgslsmith_mult_u32(9997u, 29992u)) << (_wgslsmith_sub_vec4_u32(~abs(vec4<u32>(60088u, 0u, 1u, 0u)), vec4<u32>(u_input.c.x, 4294967295u, _wgslsmith_dot_vec4_u32(global0.c, global0.c), 1u)) % vec4<u32>(32u)), global0.d);
    var var_0 = !select(vec3<bool>(_wgslsmith_mod_i32(-6248i, global0.a) < global0.a, global0.b.c.x, !global0.b.a.x), global0.b.a.wwx, true);
    var var_1 = global0.b.c.x | !(1i > global0.a);
    let var_2 = vec2<bool>(false, true);
    return !select(select(global0.b.a.wyz, select(select(vec3<bool>(var_0.x, true, global0.b.c.x), global0.b.a.xzz, true), !vec3<bool>(true, global0.b.c.x, false), true), global0.b.a.wxz), global0.b.c, false);
}

fn func_2(arg_0: f32, arg_1: bool) -> i32 {
    var var_0 = Struct_2(~(~(~global0.a)), global0.b, ~vec4<u32>(~u_input.c.x, global0.d.x, 55751u, u_input.a.x), ~u_input.a.yx);
    let var_1 = vec4<u32>(~u_input.a.x ^ var_0.d.x, ~_wgslsmith_clamp_u32(3225u, ~(~38648u), 0u), firstTrailingBit(1u) >> (global0.d.x % 32u), ~_wgslsmith_mult_u32(_wgslsmith_div_u32(0u, global0.c.x), ~(global0.c.x ^ u_input.c.x)));
    global0 = Struct_2(global0.a, Struct_1(var_0.b.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.b.b * _wgslsmith_f_op_vec4_f32(vec4<f32>(142f, global0.b.d, arg_0, global0.b.b.x) * var_0.b.b)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(global0.b.b)))), select(select(func_3(), !global0.b.a.ywy, vec3<bool>(var_0.b.c.x, true, true)), !global0.b.c, !(arg_1 || var_0.b.c.x)), 2433f), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d.x, 117297u), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, global0.d.x), vec2<u32>(1u, u_input.c.x), vec2<u32>(var_1.x, u_input.c.x))), 1u, u_input.a.x << (~53527u % 32u), _wgslsmith_div_u32(min(1u, 77456u), ~72326u)), vec4<u32>(4294967295u, ~var_1.x, _wgslsmith_mod_u32(var_0.c.x << (80277u % 32u), var_0.c.x), ~_wgslsmith_clamp_u32(4430u, var_0.c.x, u_input.c.x))), _wgslsmith_sub_vec2_u32(~vec2<u32>(1u, _wgslsmith_mod_u32(0u, 4294967295u)), vec2<u32>(abs(1u), _wgslsmith_dot_vec4_u32(~var_0.c, ~vec4<u32>(global0.c.x, 0u, global0.c.x, global0.c.x)))));
    var_0 = Struct_2(u_input.b.x, global0.b, vec4<u32>(~5759u, _wgslsmith_mod_u32(~_wgslsmith_mod_u32(var_1.x, 1u), _wgslsmith_dot_vec3_u32(var_1.yyx, vec3<u32>(46942u, 1u, 4294967295u))), _wgslsmith_dot_vec3_u32(var_1.wyz, var_1.wxx), select(global0.c.x, min(var_1.x >> (var_0.d.x % 32u), max(0u, 83378u)), !var_0.b.a.x)), firstTrailingBit(u_input.c.xz));
    global0 = Struct_2(var_0.a, Struct_1(global0.b.a, _wgslsmith_f_op_vec4_f32(var_0.b.b * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, global0.b.d, -111f, global0.b.b.x))), vec4<f32>(var_0.b.d, 269f, 709f, -681f), global0.b.a))), !select(vec3<bool>(global0.b.a.x, arg_1, global0.b.a.x), !var_0.b.a.zzy, vec3<bool>(arg_1, true, false)), global0.b.d), vec4<u32>(1u, ~(~1u), var_1.x & (~u_input.c.x >> (global0.d.x % 32u)), var_0.c.x), u_input.c.zy);
    return 11797i;
}

fn func_1() -> Struct_1 {
    var var_0 = vec4<i32>(func_2(_wgslsmith_div_f32(-181f, _wgslsmith_f_op_f32(-1097f + 1703f)), global0.b.a.x), 16424i, _wgslsmith_div_i32(_wgslsmith_add_i32(countOneBits(u_input.b.x), ~global0.a), _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.b.x, global0.a, 1i), -35356i)), u_input.b.x) << (~(~(~(~global0.c))) % vec4<u32>(32u));
    global0 = Struct_2(var_0.x, Struct_1(global0.b.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.d, global0.b.d, global0.b.b.x, global0.b.b.x) * vec4<f32>(global0.b.b.x, global0.b.d, global0.b.b.x, 1147f))), func_3(), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.b.d))), global0.b.b.x, true))), _wgslsmith_div_vec4_u32(firstLeadingBit(u_input.a), vec4<u32>(reverseBits(1u), _wgslsmith_sub_u32(1u, 0u), ~abs(0u), 4294967295u)), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(~global0.c.yw, u_input.a.wz) ^ min(_wgslsmith_sub_vec2_u32(vec2<u32>(global0.d.x, global0.c.x), vec2<u32>(1320u, 0u)), global0.d), vec2<u32>(~countOneBits(global0.d.x), _wgslsmith_add_u32(reverseBits(4294967295u), 0u))));
    global0 = Struct_2(-_wgslsmith_mult_i32(1i, countOneBits(-456i)), global0.b, _wgslsmith_mult_vec4_u32(vec4<u32>(~global0.c.x, 32628u, _wgslsmith_sub_u32(1u, ~u_input.a.x), _wgslsmith_div_u32(u_input.c.x, 4294967295u) << (_wgslsmith_mod_u32(u_input.c.x, u_input.c.x) % 32u)), vec4<u32>(~(~21256u), 1u >> (0u % 32u), global0.c.x, firstTrailingBit(~global0.c.x))), global0.c.zw);
    var var_1 = Struct_1(!global0.b.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, global0.b.d, 1191f, 893f))), vec4<f32>(1f, global0.b.b.x, _wgslsmith_f_op_f32(abs(global0.b.b.x)), _wgslsmith_f_op_f32(exp2(global0.b.d))), vec4<bool>(global0.b.c.x, !global0.b.c.x, any(vec2<bool>(false, false)), global0.c.x < u_input.c.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global0.b.b, vec4<f32>(global0.b.b.x, -714f, global0.b.b.x, global0.b.b.x), global0.b.c.x))))), func_3(), _wgslsmith_f_op_f32(exp2(global0.b.b.x)));
    return global0.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = global0.b;
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.d, var_0.d, arg_0.a.x)), arg_0.b.x)))) >= _wgslsmith_f_op_f32(f32(-1f) * -516f);
    var var_2 = arg_1;
    var_2 = func_1();
    var_2 = arg_0;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global0.a, func_4(Struct_1(vec4<bool>(global0.b.c.x, global0.b.a.x, global0.b.c.x || false, true), vec4<f32>(_wgslsmith_f_op_f32(exp2(global0.b.d)), global0.b.b.x, global0.b.d, 365f), global0.b.c, _wgslsmith_f_op_f32(-1636f * 276f)), func_1(), u_input.c, Struct_2(_wgslsmith_mult_i32(global0.a ^ global0.a, ~(-1i)), func_1(), u_input.a, _wgslsmith_add_vec2_u32(u_input.a.zy, vec2<u32>(1u, u_input.a.x)))), vec4<u32>(u_input.c.x, 6126u, reverseBits(global0.d.x), global0.c.x), ~(~vec2<u32>(~1u, 1u & global0.c.x)));
    var var_1 = Struct_2(7302i, func_1(), countOneBits(firstTrailingBit(var_0.c)), abs(reverseBits(var_0.d)));
    let var_2 = Struct_2(_wgslsmith_dot_vec3_i32(~u_input.b.wwz, vec3<i32>(abs(2147483647i), -1i | (var_1.a | u_input.b.x), 0i)), var_1.b, vec4<u32>(var_1.c.x, ~select(_wgslsmith_mult_u32(var_0.c.x, var_1.c.x), select(var_1.c.x, 1u, var_1.b.a.x), u_input.c.x < 33332u), var_1.c.x, 35787u), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(global0.c.zy, (vec2<u32>(global0.c.x, 37548u) ^ vec2<u32>(0u, 65430u)) << (~vec2<u32>(u_input.c.x, 1u) % vec2<u32>(32u))), ~vec2<u32>(44746u, firstTrailingBit(var_0.d.x))));
    let var_3 = var_1.b.c.x;
    let var_4 = func_4(func_1(), Struct_1(!vec4<bool>(true, var_0.b.c.x, false && global0.b.c.x, all(global0.b.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.b.b.x + -1000f), _wgslsmith_div_f32(var_2.b.d, 2059f), _wgslsmith_f_op_f32(ceil(-129f)), _wgslsmith_div_f32(var_1.b.d, var_1.b.d)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-868f, 422f, var_1.b.b.x, var_2.b.d), var_0.b.b)) - vec4<f32>(var_1.b.b.x, var_2.b.d, global0.b.d, -113f))), func_3(), -757f), vec3<u32>(44946u, ~1u, 20258u) << (~reverseBits(firstLeadingBit(u_input.a.wxy)) % vec3<u32>(32u)), var_2);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(40011u, firstTrailingBit(8933u | var_0.d.x)) << (_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.c.x, 4294967295u), vec2<u32>(var_1.c.x, u_input.a.x), var_2.c.yw), vec2<u32>(u_input.c.x, 15245u), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 0u), u_input.c.yy)), vec2<u32>(4294967295u, 10338u)) % 32u), abs(var_2.c.xxw | vec3<u32>(79519u, 1u, var_1.c.x)) >> (abs(vec3<u32>(1u, 10577u, 13935u | var_2.d.x)) % vec3<u32>(32u)), func_1().b.x);
}

