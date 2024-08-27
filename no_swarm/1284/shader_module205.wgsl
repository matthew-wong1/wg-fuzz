struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> i32 {
    var var_0 = Struct_1(~abs(abs(vec4<u32>(77976u, u_input.a, u_input.a, 4294967295u) & vec4<u32>(0u, u_input.a, 0u, 14580u))), -(~max(reverseBits(vec2<i32>(13403i, arg_0)), _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(22464i, arg_0)))), _wgslsmith_add_u32(select(~19437u, min(u_input.a, u_input.a), all(vec2<bool>(false, false))), 10238u) > 0u, !vec3<bool>(true, any(vec4<bool>(true, true, true, true)), false));
    let var_1 = var_0.d.x;
    var_0 = Struct_1(min(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(var_0.a.x, u_input.a, var_0.a.x), var_0.a.x), abs(~6290u), ~4294967295u, ~4294967295u), var_0.a ^ var_0.a), var_0.b, true, select(vec3<bool>(!(-26110i == var_0.b.x), all(!vec4<bool>(false, var_0.c, true, false)), true), select(!vec3<bool>(var_0.d.x, var_0.d.x, true), var_0.d, select(!var_0.d.x, true, var_0.c)), select(var_0.d, !(!vec3<bool>(var_0.c, var_0.d.x, false)), select(select(var_0.d, var_0.d, true), var_0.d, true))));
    var var_2 = vec4<i32>(-_wgslsmith_div_i32(abs(arg_0), ~arg_0) >> (u_input.a % 32u), -41158i, ~(-18968i), arg_0);
    let var_3 = Struct_2(250f);
    return min(reverseBits(_wgslsmith_dot_vec3_i32(var_2.yxz, vec3<i32>(select(-2147483647i, 0i, false), ~1i, 32155i))), _wgslsmith_mult_i32(var_0.b.x, ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-32564i, var_2.x, -1i, var_0.b.x), vec4<i32>(var_2.x, -73699i, var_2.x, arg_0)), var_2.x << (u_input.a % 32u), abs(34679i))));
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = func_3(reverseBits(-2147483647i));
    let var_1 = Struct_1(vec4<u32>(4294967295u, ~firstLeadingBit(u_input.a), u_input.a, ~abs(countOneBits(9659u))), ~vec2<i32>(-_wgslsmith_mod_i32(-15586i, arg_0), 5757i), false, select(select(vec3<bool>(true, all(vec4<bool>(false, true, true, false)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(var_0 > var_0, true, any(vec2<bool>(false, true)))), vec3<bool>(true, true, true), select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true)))));
    let var_2 = Struct_1(var_1.a, reverseBits(var_1.b), !((all(var_1.d.xx) & any(var_1.d.xx)) | any(vec3<bool>(false, false, var_1.d.x))), !var_1.d);
    var var_3 = var_2.d;
    var_3 = select(select(var_1.d, !select(vec3<bool>(var_2.c, var_1.d.x, false), vec3<bool>(var_3.x, false, false), false || var_3.x), var_2.d), vec3<bool>(var_1.d.x, false, var_1.d.x), !var_1.c | var_1.c);
    return Struct_1(var_1.a, _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(firstLeadingBit(~vec2<i32>(25373i, -9140i)), -var_2.b >> ((vec2<u32>(0u, var_1.a.x) & var_2.a.xy) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(var_2.b, _wgslsmith_sub_vec2_i32(var_1.b, var_1.b))), abs(vec2<i32>(select(1i, arg_0, true), -arg_0))), select(true, any(!vec4<bool>(true, var_2.c, false, var_2.d.x)), all(select(vec4<bool>(var_2.d.x, var_2.c, var_2.d.x, var_2.c), vec4<bool>(var_1.d.x, var_2.d.x, false, false), vec4<bool>(var_2.c, false, false, false)))), !(!select(!vec3<bool>(true, var_2.c, false), select(var_2.d, var_1.d, var_1.d.x), var_2.d)));
}

fn func_1(arg_0: f32, arg_1: f32) -> Struct_2 {
    let var_0 = func_2(~331i);
    return Struct_2(_wgslsmith_div_f32(454f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 1460f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), true && (_wgslsmith_f_op_f32(f32(-1f) * -2375f) <= _wgslsmith_f_op_f32(trunc(1050f))))), _wgslsmith_div_f32(-949f, 636f));
    var var_1 = !(firstTrailingBit(u_input.a) >= u_input.a);
    var_1 = false;
    var var_2 = !(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(231f)))) * _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(var_0.a * var_0.a))));
    var var_3 = var_0;
    let var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2137f), var_0.a, _wgslsmith_f_op_f32(step(var_0.a, _wgslsmith_div_f32(var_0.a, -1231f))), _wgslsmith_f_op_f32(f32(-1f) * -277f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.a, var_4.a, -688f, -2349f)))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2565f, var_0.a, 1000f) * vec3<f32>(var_3.a, 690f, var_0.a)), vec3<f32>(var_0.a, -779f, -2225f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, var_3.a, var_4.a) - vec3<f32>(-1034f, var_4.a, -1146f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_4.a, var_0.a, var_3.a))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, -1094f, 2793f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(601f, 1002f, var_0.a)))))));
}

