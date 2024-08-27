struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec2<u32>,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32) -> u32 {
    global0 = array<Struct_1, 25>();
    let var_0 = 443f;
    global0 = array<Struct_1, 25>();
    let var_1 = Struct_1(_wgslsmith_add_i32(~_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, 0i)), 1i, -arg_0), -2147483647i), vec3<bool>(false, select(any(vec3<bool>(true, true, false)) || (var_0 == var_0), 666f >= _wgslsmith_f_op_f32(select(-592f, 2204f, true)), true), true), vec2<u32>(~(~u_input.e.x), abs(~_wgslsmith_mod_u32(4294967295u, u_input.e.x))), ~u_input.e.x, _wgslsmith_f_op_f32(f32(-1f) * -898f));
    global0 = array<Struct_1, 25>();
    return var_1.c.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> vec3<bool> {
    var var_0 = arg_0.e;
    var_0 = arg_0.e;
    global0 = array<Struct_1, 25>();
    var var_1 = reverseBits(select(min(vec4<u32>(func_3(-15036i), u_input.e.x, 0u, _wgslsmith_div_u32(arg_0.c.x, 20704u)), ~(~vec4<u32>(arg_0.d, 28562u, 1u, u_input.e.x))), ~max(vec4<u32>(18304u, 0u, 44457u, 1u), ~vec4<u32>(0u, 1u, 4294967295u, u_input.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1168f) + _wgslsmith_f_op_f32(-1000f + arg_0.e)) <= arg_1.x));
    var var_2 = Struct_1(2147483647i, arg_0.b, ~(~_wgslsmith_sub_vec2_u32(~u_input.e, select(vec2<u32>(var_1.x, var_1.x), arg_0.c, true))), _wgslsmith_mult_u32(1u, 74899u), arg_0.e);
    return vec3<bool>(!(!any(vec2<bool>(true, var_2.b.x))), !(var_1.x < (~arg_0.d & func_3(-1i))), firstLeadingBit(_wgslsmith_div_i32(~u_input.b.x, 1i)) == (-u_input.b.x | 2147483647i));
}

fn func_1(arg_0: vec4<i32>) -> i32 {
    global0 = array<Struct_1, 25>();
    var var_0 = global0[_wgslsmith_index_u32(~u_input.e.x, 25u)];
    var var_1 = var_0.e;
    var var_2 = abs(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.a, -var_0.a, var_0.a, -1134i), ~(-reverseBits(u_input.b))));
    let var_3 = Struct_1(_wgslsmith_clamp_i32(2147483647i, ~var_2.x, select(arg_0.x, var_0.a, var_0.b.x)), !(!func_2(Struct_1(var_0.a, vec3<bool>(false, true, false), vec2<u32>(var_0.c.x, var_0.c.x), u_input.e.x, var_0.e), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(610f, var_0.e, -876f, var_0.e))))), u_input.e, 47137u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -893f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1142f + var_0.e) - _wgslsmith_f_op_f32(abs(454f))) * _wgslsmith_f_op_f32(abs(var_0.e))))));
    return _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(u_input.d.x, var_2.x, u_input.a.x)), u_input.b.wyx);
}

fn func_4(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1371f, 801f, -683f) + vec3<f32>(1609f, 426f, 570f)))))));
    global0 = array<Struct_1, 25>();
    let var_1 = global0[_wgslsmith_index_u32(55393u, 25u)];
    var var_2 = min(~_wgslsmith_div_vec4_i32(countOneBits(firstTrailingBit(u_input.b)), -abs(vec4<i32>(u_input.a.x, -14579i, u_input.c, 16251i))), vec4<i32>(select(_wgslsmith_mult_i32(func_1(vec4<i32>(u_input.c, arg_0.x, 28308i, 30007i)), ~u_input.b.x), _wgslsmith_mult_i32(0i, -2147483647i ^ arg_0.x), var_1.b.x), 1i, -firstLeadingBit(countOneBits(-72880i)), -(~func_1(u_input.b))));
    var var_3 = vec4<u32>(u_input.e.x, var_1.c.x, ~(~(~11102u)), firstTrailingBit(firstTrailingBit(_wgslsmith_add_u32(18840u, var_1.d)))) ^ abs(~(~abs(vec4<u32>(0u, 4294967295u, var_1.d, 1u))));
    return global0[_wgslsmith_index_u32(~(~u_input.e.x), 25u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(all(vec4<bool>(true, true, true, true)), false, false & !(-8829i != u_input.d.x));
    let var_1 = vec2<u32>(~(~min(_wgslsmith_mult_u32(0u, 6051u), u_input.e.x)), ~u_input.e.x);
    global0 = array<Struct_1, 25>();
    var var_2 = func_4(firstLeadingBit(u_input.b.xwy ^ vec3<i32>(16352i, 1i, 11120i)) ^ ~vec3<i32>(func_1(vec4<i32>(-20372i, u_input.c, u_input.c, 1887i)), -2147483647i, u_input.d.x));
    var_2 = func_4(~(-(max(u_input.d, vec3<i32>(u_input.a.x, 1i, -1i)) ^ vec3<i32>(0i, var_2.a, u_input.d.x))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.e + _wgslsmith_div_f32(var_2.e, var_2.e)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.e, -1000f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.e - var_2.e)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.e)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-741f))))));
    var var_4 = Struct_1(u_input.a.x, !vec3<bool>(false, var_0, true), _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.e.x, 4294967295u), _wgslsmith_mod_vec2_u32(u_input.e, vec2<u32>(0u, 75375u))), u_input.e), reverseBits(vec2<u32>(~u_input.e.x, 13944u))), max(~(~_wgslsmith_div_u32(u_input.e.x, var_1.x)), 48282u), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.e * var_3.x), -817f)) - var_3.x), _wgslsmith_f_op_f32(select(-2830f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.e, 1090f))), false)))));
    var_2 = func_4(vec3<i32>(countOneBits(_wgslsmith_sub_i32(1i, u_input.c)), max(-var_2.a, _wgslsmith_sub_i32(var_4.a, var_4.a)) << (var_2.d % 32u), abs(reverseBits(-1626i))));
    let x = u_input.a;
    s_output = StorageBuffer(-827f, var_4.e);
}

