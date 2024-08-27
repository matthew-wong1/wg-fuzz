struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<u32> = vec2<u32>(15296u, 3454u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1140f, 1014f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-745f * -157f))))) <= -1003f;
    global1 = ~((_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, arg_0), countOneBits(vec2<u32>(arg_0, arg_2)), ~vec2<u32>(global1.x, u_input.b)) >> (~firstTrailingBit(vec2<u32>(arg_2, 81148u)) % vec2<u32>(32u))) << (~(~vec2<u32>(66743u, 59604u)) % vec2<u32>(32u)));
    var var_1 = arg_1;
    let var_2 = arg_1;
    global0 = Struct_1(-u_input.a);
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), vec2<f32>(-409f, _wgslsmith_div_f32(-437f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1000f)))))), !select(!(!vec2<bool>(var_0, false)), !(!vec2<bool>(var_0, var_0)), firstLeadingBit(1189u) != abs(arg_0))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(220f, 1035f), vec2<f32>(1542f, -968f))) - _wgslsmith_f_op_vec2_f32(func_3(select(global1.x, global1.x, true), arg_0, global1.x)))));
    global0 = arg_0;
    var var_1 = ~_wgslsmith_div_u32(~_wgslsmith_div_u32(min(global1.x, global1.x), _wgslsmith_clamp_u32(u_input.b, u_input.b, global1.x)), global1.x);
    let var_2 = abs(~(~vec2<u32>(1u, global1.x)));
    var var_3 = -2147483647i;
    return arg_0;
}

fn func_1(arg_0: vec2<bool>, arg_1: bool) -> vec2<u32> {
    global0 = Struct_1(1i);
    let var_0 = func_2(Struct_1(global0.a));
    global1 = countOneBits(vec2<u32>(select(36319u, global1.x ^ (global1.x | global1.x), arg_0.x), u_input.b));
    global0 = var_0;
    var var_1 = true;
    return _wgslsmith_clamp_vec2_u32(~(~(vec2<u32>(41899u, 35611u) >> (vec2<u32>(12972u, u_input.b) % vec2<u32>(32u))) | firstTrailingBit(~vec2<u32>(1u, global1.x))), ~vec2<u32>(u_input.b, global1.x >> (~global1.x % 32u)), vec2<u32>(_wgslsmith_add_u32(0u, select(u_input.b, _wgslsmith_add_u32(6848u, 50058u), !arg_1)), abs(~(~global1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_clamp_vec2_u32(~select(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.b, 124u), vec2<u32>(19719u, global1.x)), _wgslsmith_sub_vec2_u32(func_1(vec2<bool>(true, false), false), vec2<u32>(u_input.b, 4294967295u)), select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true))), firstLeadingBit(vec2<u32>(u_input.b, global1.x)) | vec2<u32>(0u, 0u), select(min(_wgslsmith_mult_vec2_u32(vec2<u32>(46068u, 40833u) & vec2<u32>(u_input.b, 0u), ~vec2<u32>(global1.x, global1.x)), reverseBits(~vec2<u32>(8272u, global1.x))), select(firstTrailingBit(vec2<u32>(8517u, 4294967295u)) << (_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 20835u), vec2<u32>(1u, 1u)) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(global1.x, 50933u), ~vec2<u32>(u_input.b, u_input.b)), vec2<bool>(true, all(vec3<bool>(true, false, false)))), !any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false)))));
    global0 = Struct_1(~_wgslsmith_sub_i32(u_input.a, _wgslsmith_mult_i32(global0.a, global0.a << (u_input.b % 32u))));
    var var_0 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(i32(-1i) * -1i, global0.a), i32(-1i) * -23016i, u_input.a), i32(-1i) * -80718i));
    let var_1 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(global1.x, 0u), 0u), abs(vec2<u32>(15721u, 0u)));
    var var_2 = firstLeadingBit(_wgslsmith_mod_u32(8144u, firstLeadingBit(~global1.x)));
    var var_3 = func_2(func_2(func_2(func_2(Struct_1(0i)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_mod_i32(_wgslsmith_sub_i32(global0.a, var_3.a), global0.a ^ u_input.c.x) & (var_3.a & (53139i >> (var_1 % 32u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-222f, -1000f, -940f, -1469f))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1774f, 870f, -503f) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-545f, -1161f, -1258f, -983f))))))));
}

