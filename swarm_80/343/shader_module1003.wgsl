struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: i32,
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> i32 {
    let var_0 = vec4<bool>(any(vec2<bool>(true, any(vec4<bool>(false, false, true, true)))), all(vec4<bool>(true, true, true, true)), true, true);
    var var_1 = _wgslsmith_f_op_f32(abs(336f));
    let var_2 = _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(0u, 21012u, u_input.b.x), ~vec3<u32>(1u, u_input.b.x, u_input.b.x)) & ~((vec3<u32>(1u, 91048u, 25263u) ^ vec3<u32>(1u, 48304u, u_input.b.x)) ^ ~vec3<u32>(1u, u_input.b.x, u_input.b.x)), ~(~countOneBits(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))));
    var var_3 = arg_2;
    var_1 = _wgslsmith_f_op_f32(abs(-1033f));
    return 28971i;
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    let var_0 = Struct_1(-u_input.c.zy);
    var var_1 = _wgslsmith_add_i32(-_wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.a.x, -1i, -2147483647i, 2147483647i), vec4<i32>(var_0.a.x, _wgslsmith_dot_vec2_i32(u_input.c.yx, var_0.a), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, -23948i, u_input.e), vec3<i32>(u_input.e, u_input.c.x, 18199i)), var_0.a.x >> (u_input.b.x % 32u))), var_0.a.x);
    var_1 = _wgslsmith_clamp_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(17423i, 35726i) ^ reverseBits(firstTrailingBit(-2147483647i)), ~12099i), select(~0i, (select(-53571i, -2147483647i, true) | var_0.a.x) >> (_wgslsmith_add_u32(1u, 1u) % 32u), u_input.b.x <= select(0u, u_input.b.x, true)), i32(-1i) * -39265i);
    var_1 = _wgslsmith_mult_i32(func_3(var_0, Struct_1(vec2<i32>(2147483647i, var_0.a.x ^ u_input.c.x)), var_0, -26627i), u_input.e);
    let var_2 = all(select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), var_0.a.x != u_input.e));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - arg_0.x) * 110f)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: vec4<u32>, arg_3: bool) -> Struct_1 {
    let var_0 = Struct_1(u_input.c.xw);
    let var_1 = true;
    var var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(~0i, var_0.a.x, reverseBits(1i)), ~firstTrailingBit(~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.d.x, 17373i, 0i), u_input.c.zyw)));
    var_2 = u_input.c.xzw << ((firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(1u, arg_2.x, 4294967295u), vec3<u32>(39979u, 0u, 16170u))) & firstTrailingBit(~select(vec3<u32>(u_input.b.x, u_input.b.x, arg_2.x), arg_2.xzw, vec3<bool>(var_1, false, var_1)))) % vec3<u32>(32u));
    let var_3 = Struct_1(-(var_2.xz | _wgslsmith_add_vec2_i32(select(vec2<i32>(1i, 2147483647i), vec2<i32>(var_2.x, -2147483647i), false), -var_0.a)));
    return var_0;
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> StorageBuffer {
    var var_0 = ~arg_1.a.x;
    let var_1 = arg_1;
    var_0 = 1i;
    var var_2 = arg_1;
    var_2 = func_4(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(-1739f, -633f)), _wgslsmith_f_op_f32(func_2(vec3<f32>(-1000f, -256f, -1000f))), _wgslsmith_f_op_f32(536f + 158f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1393f, -542f, 1061f, -1675f))))), vec2<f32>(-1182f, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1043f, 1346f, 1226f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-167f, 625f, -1465f)), vec3<bool>(true, true, true)))))), ~vec4<u32>(arg_0, 1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, 27803u), ~u_input.b), arg_0), true);
    return StorageBuffer(countOneBits(min(select(countOneBits(vec3<u32>(4294967295u, arg_0, arg_0)), ~vec3<u32>(arg_0, 4294967295u, u_input.b.x), true), vec3<u32>(_wgslsmith_mod_u32(arg_0, u_input.b.x), _wgslsmith_mult_u32(39638u, 37189u), arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(21146u, Struct_1(_wgslsmith_sub_vec2_i32(u_input.d, vec2<i32>(10854i >> (1u % 32u), -16526i))));
}

