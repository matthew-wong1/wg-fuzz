struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec2<f32>) -> vec2<i32> {
    let var_0 = vec3<u32>(u_input.a, max(77029u, ~u_input.a), (31652u ^ u_input.a) | min(1u, ~(~31786u)));
    let var_1 = vec4<bool>(true, all(vec4<bool>(true, true, false, arg_1.c > _wgslsmith_div_i32(0i, 37258i))), all(vec3<bool>(false, false, (arg_1.c >= arg_1.c) || true)), true);
    var var_2 = Struct_2(arg_1.a, Struct_1(31737u), -1i);
    var_2 = Struct_2(~(~vec4<u32>(~15150u, ~1u, ~4294967295u, firstLeadingBit(var_0.x))), arg_1.b, _wgslsmith_mod_i32(max(-24649i, -2147483647i), var_2.c) | ~_wgslsmith_add_i32(-18998i & arg_1.c, var_2.c));
    var var_3 = arg_2;
    return (_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(~vec2<i32>(arg_1.c, 0i), vec2<i32>(arg_1.c, var_2.c)), vec2<i32>(var_2.c, arg_1.c) & -vec2<i32>(arg_1.c, -1i)) | -_wgslsmith_add_vec2_i32(~vec2<i32>(24878i, 1i), _wgslsmith_div_vec2_i32(vec2<i32>(arg_1.c, -2236i), vec2<i32>(arg_1.c, arg_1.c)))) | vec2<i32>(~(_wgslsmith_div_i32(var_2.c, var_2.c) ^ ~68672i), _wgslsmith_add_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.c, var_2.c, arg_1.c), vec3<i32>(var_2.c, var_2.c, var_2.c)), ~abs(0i)));
}

fn func_2(arg_0: u32, arg_1: vec4<i32>) -> i32 {
    let var_0 = Struct_2(vec4<u32>(reverseBits(~u_input.a | (49138u & arg_0)), 57530u, 4294967295u, 25110u), Struct_1(u_input.a), _wgslsmith_dot_vec2_i32(firstTrailingBit(func_3(_wgslsmith_f_op_f32(f32(-1f) * -749f), Struct_2(vec4<u32>(u_input.a, 63259u, 0u, u_input.a), Struct_1(u_input.a), -1i), Struct_3(vec2<f32>(929f, 1055f), -747f), _wgslsmith_f_op_vec2_f32(vec2<f32>(970f, -1971f) - vec2<f32>(1977f, -1035f)))), max(arg_1.xw, -min(arg_1.xx, arg_1.zy))));
    var var_1 = _wgslsmith_f_op_f32(floor(-564f));
    var_1 = -1260f;
    var_1 = _wgslsmith_f_op_f32(step(-424f, 1f));
    let var_2 = _wgslsmith_div_u32(~arg_0, _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(abs(u_input.a), 1u), 1u), arg_0));
    return -2147483647i;
}

fn func_1() -> bool {
    var var_0 = countOneBits(~(-min(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 12761i), vec2<i32>(-48833i, 9880i), vec2<i32>(-2676i, 0i)), vec2<i32>(-2664i, 750i))));
    let var_1 = vec3<i32>(abs(var_0.x), var_0.x, ~func_2(min(~u_input.a, ~u_input.a), firstLeadingBit(select(vec4<i32>(-2147483647i, -26762i, var_0.x, var_0.x), vec4<i32>(-39272i, 0i, -2147483647i, var_0.x), false))));
    var var_2 = u_input.a;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1863f)));
    let var_4 = vec3<u32>(~1u, max(firstTrailingBit(u_input.a), u_input.a) ^ u_input.a, _wgslsmith_clamp_u32(1u, ~4294967295u >> (~4294967295u % 32u), ~1u)) | ~abs(vec3<u32>(countOneBits(u_input.a), u_input.a | 0u, min(1u, 30866u)));
    return all(!vec4<bool>(select(any(vec2<bool>(false, true)), false, true), (var_1.x >> (u_input.a % 32u)) == _wgslsmith_sub_i32(35864i, 21074i), !select(true, false, false), any(vec3<bool>(true, true, true))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<i32>) -> vec4<i32> {
    let var_0 = select(vec3<bool>(func_1(), any(vec4<bool>(false, arg_0, arg_0, arg_0)) || func_1(), true), !vec3<bool>(arg_0, arg_0, !any(vec3<bool>(arg_0, arg_0, false))), vec3<bool>(arg_0, !(!(arg_0 == false)), true));
    let var_1 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(-1i, arg_2.c, arg_2.c)), ~(arg_3.wzz | arg_3.wwx)) << (~arg_2.b.a % 32u), arg_2.c);
    var var_2 = ~countOneBits(firstTrailingBit(~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.b.a, u_input.a, u_input.a), vec3<u32>(u_input.a, arg_2.b.a, 24182u))));
    var var_3 = 712f;
    var var_4 = arg_1;
    return firstTrailingBit(vec4<i32>(~(-69741i), -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.c, arg_3.x), arg_3.zy), max(var_1, var_1)) & vec4<i32>(min(firstLeadingBit(-2147483647i), arg_2.c), -2147483647i, abs(arg_3.x) >> ((36976u | arg_1.a) % 32u), arg_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)));
    var var_1 = countOneBits(func_4(func_1(), Struct_1(_wgslsmith_mult_u32(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, 1u, u_input.a), vec4<u32>(0u, 0u, u_input.a, 24895u)))), Struct_2(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 47371u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), Struct_1(u_input.a), ~1i), -(vec4<i32>(-1i) * -vec4<i32>(-20421i, -1i, -38047i, -33903i))));
    var_1 = vec4<i32>(abs(var_1.x) ^ func_3(var_0.x, Struct_2(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), Struct_1(u_input.a), var_1.x), Struct_3(var_0.xw, var_0.x), vec2<f32>(-333f, 176f)).x, min(_wgslsmith_dot_vec2_i32(vec2<i32>(3257i, var_1.x) | var_1.zz, vec2<i32>(-13937i, var_1.x)), -1i), var_1.x, 24052i) << (reverseBits(~vec4<u32>(_wgslsmith_add_u32(u_input.a, 43351u), abs(31522u), ~4294967295u, u_input.a)) % vec4<u32>(32u));
    var var_2 = Struct_3(var_0.ww, -372f);
    var_1 = vec4<i32>((_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, var_1.x, 2147483647i, 32084i), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, var_1.x, 1i, var_1.x), vec4<i32>(var_1.x, -38574i, var_1.x, -1225i))) << (1u % 32u)) << (~(~(~u_input.a)) % 32u), var_1.x, 0i, ~9403i);
    var var_3 = 31658i;
    var var_4 = ~(min(firstTrailingBit(vec2<u32>(u_input.a, 4294967295u)), vec2<u32>(u_input.a, 9700u)) << (~(~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 9981u), vec2<u32>(1u, u_input.a))) % vec2<u32>(32u)));
    var var_5 = Struct_3(_wgslsmith_f_op_vec2_f32(var_2.a - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_2.a.x, var_0.x), vec2<f32>(-458f, 807f))), vec2<f32>(var_2.a.x, 1f)))), _wgslsmith_f_op_f32(f32(-1f) * -293f));
    var var_6 = _wgslsmith_clamp_vec4_i32(countOneBits(_wgslsmith_mod_vec4_i32(-(vec4<i32>(-1i, var_1.x, var_1.x, 0i) ^ vec4<i32>(31546i, var_1.x, 12688i, var_1.x)), countOneBits(vec4<i32>(var_1.x, -11026i, var_1.x, var_1.x)))), func_4(false, Struct_1(countOneBits(_wgslsmith_sub_u32(var_4.x, u_input.a))), Struct_2(~vec4<u32>(2869u, var_4.x, 9792u, var_4.x), Struct_1(_wgslsmith_clamp_u32(4294967295u, var_4.x, 1246u)), ~(-735i << (var_4.x % 32u))), vec4<i32>(var_1.x, 1i, -1i, var_1.x)), reverseBits(_wgslsmith_add_vec4_i32(abs(vec4<i32>(var_1.x, -14248i, var_1.x, 2147483647i)) & reverseBits(vec4<i32>(2147483647i, var_1.x, -8078i, var_1.x)), vec4<i32>(countOneBits(7478i), countOneBits(var_1.x), -1i >> (u_input.a % 32u), var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(~(~(~vec3<u32>(u_input.a, 47315u, 58204u))), firstLeadingBit(~vec3<u32>(u_input.a, u_input.a, u_input.a)) << (reverseBits(vec3<u32>(var_4.x, 41961u, u_input.a)) % vec3<u32>(32u))));
}

