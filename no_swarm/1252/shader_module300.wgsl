struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec3<f32>) -> vec3<bool> {
    let var_0 = -2147483647i;
    global0 = array<i32, 29>();
    global0 = array<i32, 29>();
    let var_1 = arg_0.zx;
    let var_2 = -_wgslsmith_clamp_i32(_wgslsmith_mod_i32(~0i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0, 1i, global0[_wgslsmith_index_u32(65048u, 29u)], var_0), vec4<i32>(var_0, var_0, global0[_wgslsmith_index_u32(u_input.a, 29u)], var_0) | vec4<i32>(38258i, global0[_wgslsmith_index_u32(48064u, 29u)], 1i, 66329i))), global0[_wgslsmith_index_u32(~(~1u) ^ (_wgslsmith_sub_u32(u_input.b.x, 36223u) >> (u_input.b.x % 32u)), 29u)], firstLeadingBit(global0[_wgslsmith_index_u32(u_input.b.x, 29u)]));
    return !(!vec3<bool>(true, global0[_wgslsmith_index_u32(firstTrailingBit(35363u), 29u)] < var_0, all(vec2<bool>(false, false))));
}

fn func_2() -> u32 {
    return 116573u;
}

fn func_3(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: vec4<i32>) -> vec2<i32> {
    var var_0 = arg_0.b;
    let var_1 = select(select(select(vec3<bool>(select(arg_1.x, true, arg_1.x), all(arg_1), all(vec2<bool>(arg_1.x, true))), vec3<bool>(arg_1.x, true, arg_1.x), true), vec3<bool>(arg_0.b.a.c <= -146f, ~(-38942i) <= _wgslsmith_add_i32(var_0.a.b.x, global0[_wgslsmith_index_u32(u_input.a, 29u)]), select(-7532i, var_0.a.a.x, arg_1.x) > 1i), arg_1.x), func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(159f, -878f, 890f)))), false);
    global0 = array<i32, 29>();
    let var_2 = u_input.b.x;
    global0 = array<i32, 29>();
    return vec2<i32>(8513i, abs(_wgslsmith_mod_i32(~(-var_0.a.b.x), i32(-1i) * -2147483647i)));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_2 {
    let var_0 = any(vec2<bool>(func_1(vec3<f32>(1062f, _wgslsmith_f_op_f32(max(1984f, -825f)), _wgslsmith_f_op_f32(arg_1.c + 1265f))).x, true));
    var var_1 = u_input.b;
    var var_2 = Struct_2(arg_1);
    var var_3 = all(vec4<bool>(true, any(vec4<bool>(any(vec2<bool>(false, true)), 10028u <= arg_0, var_0, false)), all(!(!vec2<bool>(var_0, false))), true));
    global0 = array<i32, 29>();
    return Struct_2(Struct_1(select(min(_wgslsmith_add_vec2_i32(arg_1.a, vec2<i32>(arg_1.b.x, -1i)), vec2<i32>(-2147483647i, 0i)), var_2.a.b, true), _wgslsmith_mod_vec2_i32(firstLeadingBit(-arg_1.b), arg_1.a), _wgslsmith_div_f32(arg_1.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_2.a.c, arg_1.c)), _wgslsmith_f_op_f32(f32(-1f) * -585f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec4<bool>(true, true, true, any(vec2<bool>(true, true))));
    let var_1 = 2578f;
    var_0 = all(select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), func_1(vec3<f32>(858f, var_1, -970f))), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)))) || any(!vec4<bool>(true, select(true, false, true), true, true));
    var var_2 = ~(-vec2<i32>(-2147483647i, -45614i));
    var var_3 = func_4(_wgslsmith_sub_u32(abs(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b.yz, vec2<u32>(u_input.b.x, u_input.a)), ~u_input.b.zx)), _wgslsmith_mod_u32(~1u, func_2() | 90811u)), Struct_1(select(func_3(Struct_3(Struct_2(Struct_1(vec2<i32>(var_2.x, var_2.x), vec2<i32>(0i, global0[_wgslsmith_index_u32(u_input.a, 29u)]), -588f)), Struct_2(Struct_1(vec2<i32>(var_2.x, 2147483647i), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 29u)], -43444i), 1000f))), vec4<bool>(true, false, false, false), _wgslsmith_div_vec4_i32(vec4<i32>(-23713i, var_2.x, 2147483647i, global0[_wgslsmith_index_u32(34111u, 29u)]), vec4<i32>(var_2.x, -1i, 17905i, var_2.x))), ~_wgslsmith_mult_vec2_i32(vec2<i32>(43692i, -33448i), vec2<i32>(2147483647i, var_2.x)), true), vec2<i32>(abs(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 1u), 29u)]), i32(-1i) * -17033i), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(467f * -915f), _wgslsmith_div_f32(1130f, var_1))), 1032f, !all(vec3<bool>(false, true, true))))));
    let var_4 = Struct_2(Struct_1(vec2<i32>(firstTrailingBit(1i), -firstLeadingBit(0i)), var_3.a.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1458f - 101f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(var_3.a.b, ~_wgslsmith_mod_vec2_i32(var_3.a.a >> (u_input.b.zx % vec2<u32>(32u)), vec2<i32>(var_4.a.b.x, var_2.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(var_1)), 589f)), countOneBits(u_input.a), -17448i);
}

