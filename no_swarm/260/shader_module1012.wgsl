struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<bool>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-43095i, 2147483647i, 0i, 21751i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: Struct_4) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(277f, _wgslsmith_div_f32(939f, arg_3.b), 409f, arg_2), _wgslsmith_f_op_vec4_f32(vec4<f32>(2045f, arg_2, 1000f, arg_3.b) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(420f, arg_3.b, 183f, 233f))))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-435f, -3251f, -698f, arg_2), vec4<f32>(-217f, arg_2, -213f, arg_2))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_3.b, 318f, 821f, 829f)))))))));
    let var_1 = -1i;
    var var_2 = vec2<i32>(arg_1.a.x, abs(-2147483647i)) ^ vec2<i32>(i32(-1i) * -abs(2147483647i), select(-(global0.x & -1i), arg_1.a.x, _wgslsmith_div_u32(24970u, 33027u) < _wgslsmith_div_u32(arg_3.a.c.b.x, arg_0)));
    global0 = -_wgslsmith_mod_vec4_i32(vec4<i32>(~global0.x, u_input.a.x, -_wgslsmith_add_i32(-2147483647i, var_1), _wgslsmith_sub_i32(select(1i, u_input.a.x, arg_1.c.x), 1i)), ~vec4<i32>(_wgslsmith_add_i32(9785i, u_input.a.x), -1i << (arg_3.a.d.x % 32u), _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(arg_3.a.b.d, -1i, arg_3.a.b.d, arg_3.a.c.d)), ~(-2147483647i)));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, arg_2, -378f, -1236f), vec4<f32>(586f, var_0.x, var_0.x, 171f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b, arg_2, arg_3.b, 785f)))))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_3.b))), 861f, -981f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(154f, var_0.x)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -622f, arg_3.b, -242f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, var_0.x, 1153f, -305f) * vec4<f32>(1000f, var_0.x, var_0.x, arg_2))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_3.b, arg_2, arg_2, arg_3.b))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1434f, var_0.x, arg_3.b, arg_2))))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2)) * _wgslsmith_f_op_f32(floor(1449f)));
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(39233u, Struct_1(_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(41030i, global0.x, global0.x)), reverseBits(global0.www)), vec3<u32>(abs(9604u), min(47007u, 0u), 1u), vec4<bool>(true, any(vec2<bool>(false, false)), true, true), -24790i, _wgslsmith_sub_u32(~9767u, 45713u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -475f)), Struct_4(Struct_2(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true)), Struct_1(vec3<i32>(u_input.a.x, 0i, -2147483647i), vec3<u32>(1u, 15240u, 4294967295u), vec4<bool>(false, false, false, false), 0i, 20557u), Struct_1(vec3<i32>(16936i, global0.x, u_input.a.x), vec3<u32>(10914u, 11193u, 4294967295u), vec4<bool>(true, true, true, true), u_input.a.x, 1u), vec4<u32>(74u, 14858u, 4294967295u, 10245u)), 1f))));
    global0 = vec4<i32>(_wgslsmith_clamp_i32(-firstTrailingBit(u_input.a.x), ~1i, -52146i), global0.x, -1i, global0.x & min(i32(-1i) * -25466i, 1i)) ^ -vec4<i32>(-8435i, _wgslsmith_mod_i32(_wgslsmith_div_i32(-1i, u_input.a.x), _wgslsmith_mult_i32(u_input.a.x, 29890i)), reverseBits(-55049i), _wgslsmith_mod_i32(countOneBits(28006i), 2854i));
    let var_1 = max(reverseBits(global0.xwx), vec3<i32>(global0.x, u_input.a.x ^ max(u_input.a.x, -1i), -global0.x) ^ _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(firstTrailingBit(u_input.a.zyz), global0.yzz), -vec3<i32>(-1i, 1i, u_input.a.x) | u_input.a.zzy));
    global0 = ~(~_wgslsmith_mod_vec4_i32(firstLeadingBit(u_input.a), ~u_input.a)) | firstLeadingBit(u_input.a);
    var var_2 = var_1;
    return Struct_3(Struct_2(vec4<bool>(true, true, true, true), Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(global0.x, var_1.x, var_2.x), global0.www), vec3<u32>(4294967295u, ~0u, 1u), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)), u_input.a.x, 1u), Struct_1(var_1, ~vec3<u32>(1u, 1u, 1u), vec4<bool>(any(vec3<bool>(true, false, false)), true, true, true), var_2.x, _wgslsmith_div_u32(8748u, _wgslsmith_dot_vec2_u32(vec2<u32>(111191u, 4294967295u), vec2<u32>(53386u, 45360u)))), reverseBits(vec4<u32>(min(4294967295u, 1u), 38185u, ~1217u, 25139u))));
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = func_2();
    global0 = u_input.a;
    let var_1 = ~(~arg_0.e);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -246f)))))));
    global0 = _wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(global0.x, -32430i, -2147483647i, u_input.a.x), _wgslsmith_div_vec4_i32(u_input.a, ~min(-u_input.a, select(u_input.a, vec4<i32>(2147483647i, -33751i, -12448i, 1i), var_0.a.b.c))));
    return select(min(1i, 37778i), -1i, var_0.a.b.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a;
    let var_0 = abs(49720i);
    global0 = vec4<i32>(~(-35705i), _wgslsmith_dot_vec2_i32(u_input.a.xz, vec2<i32>(-func_1(Struct_1(u_input.a.wwz, vec3<u32>(1u, 0u, 9321u), vec4<bool>(false, true, true, false), -4853i, 0u)), max(firstTrailingBit(var_0), abs(var_0)))), 1i, global0.x);
    global0 = -countOneBits(vec4<i32>(abs(global0.x) | ~var_0, 1i, var_0, -2147483647i));
    global0 = -u_input.a;
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1215f, _wgslsmith_f_op_f32(step(1099f, 1000f))) * _wgslsmith_f_op_f32(sign(1115f))), -1263f, -1128f));
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-279f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x)))), var_1.x, 1f, -426f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1313f, var_1.x, -1903f))) * vec4<f32>(var_1.x, -1584f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(abs(var_1.x)))) * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x * var_1.x), -320f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1105f, 305f)), var_1.x, true)), 904f, -905f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(-2147483647i, max(~select(-23199i, -1i, true), var_0)), 0u, -2005f);
}

