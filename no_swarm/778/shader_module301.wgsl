struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: bool,
    d: vec2<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 0u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<f32> {
    return vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -808f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1227f)))))));
}

fn func_2(arg_0: bool) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(trunc(global0.b.x)), -290f)))), global0.b));
    var var_1 = ~vec2<u32>(global1.x, 1u);
    var var_2 = ~select(vec2<u32>(min(abs(7823u), abs(global0.e.x)), 11182u ^ _wgslsmith_clamp_u32(114713u, global1.x, 1u)), u_input.a.zz, arg_0);
    var var_3 = 725f;
    let var_4 = false;
    return vec2<bool>(true, !(!(!(global1.x > global1.x))));
}

fn func_4(arg_0: vec2<bool>) -> vec3<i32> {
    global0 = Struct_1(i32(-1i) * -570i, global0.b, !all(arg_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.x, 406f) * _wgslsmith_f_op_vec2_f32(-global0.d)) * vec2<f32>(_wgslsmith_f_op_vec2_f32(func_3()).x, _wgslsmith_f_op_f32(global0.b.x * global0.b.x)))), firstTrailingBit(global0.e));
    let var_0 = Struct_3(Struct_2(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.b, global0.a, u_input.b), vec3<i32>(-2147483647i, -64146i, global0.a)), max(~vec3<i32>(2147483647i, global0.a, global0.a), _wgslsmith_add_vec3_i32(vec3<i32>(global0.a, u_input.b, global0.a), vec3<i32>(u_input.b, u_input.b, 38505i)))), false, Struct_1(i32(-1i) * -1126i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(609f, -436f))), _wgslsmith_add_i32(u_input.b, 2147483647i) > 34667i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, global0.d.x))), global0.e), -245f), Struct_1(u_input.b, global0.d, _wgslsmith_f_op_f32(max(-472f, _wgslsmith_f_op_f32(ceil(252f)))) < 1504f, global0.b, u_input.d));
    global1 = global0.e.xz;
    global1 = vec2<u32>(33708u, u_input.a.x);
    var var_1 = abs(~vec4<u32>(global0.e.x, var_0.b.e.x, global0.e.x, 0u) & vec4<u32>(_wgslsmith_sub_u32(57292u, 24835u) >> (~u_input.e.x % 32u), firstTrailingBit(var_0.b.e.x), _wgslsmith_mod_u32(27702u, var_0.b.e.x), 50337u));
    return ~var_0.a.a;
}

fn func_1(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = Struct_2(-func_4(select(func_2(arg_0.c), select(vec2<bool>(arg_0.c, true), vec2<bool>(false, true), arg_0.c), vec2<bool>(false, true))), arg_0.c || !global0.c, arg_0, -2014f);
    global1 = vec2<u32>(~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(global0.e, vec4<u32>(4294967295u, u_input.d.x, 1u, 4294967295u)), select(global0.e.x, 49189u, var_0.c.c)) | ~1u, global1.x);
    var var_1 = -17384i;
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.d.x * _wgslsmith_f_op_f32(1697f - arg_0.b.x)))), -113f)));
    let var_3 = var_0.a.zy;
    return firstLeadingBit(_wgslsmith_mod_vec3_i32(var_0.a, vec3<i32>(0i, var_3.x >> (~arg_0.e.x % 32u), -reverseBits(arg_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~abs(select(_wgslsmith_sub_vec3_i32(func_1(Struct_1(u_input.b, vec2<f32>(-473f, 1333f), global0.c, vec2<f32>(global0.d.x, global0.d.x), u_input.d)), abs(vec3<i32>(-51104i, 1i, 26451i))), -vec3<i32>(global0.a, global0.a, 1i), true));
    let var_1 = select(min(92148u, global1.x), _wgslsmith_clamp_u32(countOneBits(~u_input.d.x), 4294967295u, _wgslsmith_mod_u32(1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, u_input.e.x, 94124u), vec3<u32>(u_input.d.x, 69459u, 0u)))), true);
    global1 = ~countOneBits(select(select(_wgslsmith_clamp_vec2_u32(global0.e.wz, vec2<u32>(8484u, var_1), vec2<u32>(0u, 24926u)), u_input.a.xz, global0.c), ~abs(u_input.e), all(vec3<bool>(true, true, true))));
    global0 = Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global0.d, global0.b) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(593f, global0.b.x)))), true, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3())) - _wgslsmith_f_op_vec2_f32(vec2<f32>(865f, global0.b.x) + vec2<f32>(global0.b.x, -194f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(step(global0.d.x, global0.d.x)))))), ~_wgslsmith_add_vec4_u32(global0.e, _wgslsmith_add_vec4_u32(global0.e, u_input.d)));
    var_0 = _wgslsmith_mult_vec3_i32(func_1(Struct_1(abs(u_input.b), vec2<f32>(_wgslsmith_f_op_f32(trunc(global0.d.x)), _wgslsmith_f_op_f32(-global0.b.x)), false, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1548f), _wgslsmith_f_op_f32(f32(-1f) * -517f)), u_input.d)), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, global0.a, u_input.b), vec3<i32>(2147483647i, 2147483647i, 75268i) >> (u_input.d.yzz % vec3<u32>(32u))), vec3<i32>(-26971i ^ u_input.b, 0i, firstTrailingBit(33198i))) >> (~vec3<u32>(~1u, max(global1.x, 4294967295u), global0.e.x) % vec3<u32>(32u)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(152f - _wgslsmith_div_f32(global0.d.x, 1683f)));
    let x = u_input.a;
    s_output = StorageBuffer(~select(_wgslsmith_div_u32(~66478u, var_1), global1.x, true));
}

