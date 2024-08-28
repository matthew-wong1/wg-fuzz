struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

var<private> global1: vec4<f32> = vec4<f32>(2128f, -192f, 374f, 1115f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec3<u32>) -> vec2<bool> {
    let var_0 = ~_wgslsmith_mod_vec4_i32(max(~vec4<i32>(arg_0.a, arg_0.b, -54677i, arg_0.c.x) & arg_0.c, _wgslsmith_mult_vec4_i32(min(arg_0.c, arg_0.c), _wgslsmith_mult_vec4_i32(arg_0.c, arg_0.c))), arg_0.c);
    let var_1 = min(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(0u, u_input.a.x, arg_2.x, u_input.a.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(13286u, arg_2.x, u_input.a.x, u_input.a.x), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 33728u, 69923u, u_input.a.x), vec4<u32>(27990u, arg_2.x, u_input.a.x, u_input.a.x)))), ~(~vec4<u32>(22765u, 4294967295u, u_input.a.x, u_input.a.x))), ~1u);
    global0 = array<Struct_1, 20>();
    var var_2 = 122f;
    return vec2<bool>(arg_1.x, arg_1.x);
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = !func_3(Struct_1(_wgslsmith_dot_vec3_i32(-vec3<i32>(arg_0, arg_0, 2147483647i), vec3<i32>(-2147483647i, 16210i, 41006i)), arg_0, _wgslsmith_sub_vec4_i32(select(vec4<i32>(2147483647i, arg_0, arg_0, arg_0), vec4<i32>(38744i, 9887i, arg_0, 13079i), false), _wgslsmith_div_vec4_i32(vec4<i32>(1i, arg_0, arg_0, arg_0), vec4<i32>(arg_0, arg_0, arg_0, 1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -687f))), vec2<bool>(false, any(vec4<bool>(true, false, false, false))), countOneBits(u_input.a << (vec3<u32>(u_input.a.x, 52553u, 1u) % vec3<u32>(32u))) | max(u_input.a, ~vec3<u32>(18169u, 50750u, u_input.a.x)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.x)))), -764f, _wgslsmith_f_op_f32(-global1.x));
    var var_2 = global0[_wgslsmith_index_u32(u_input.a.x, 20u)];
    let var_3 = vec2<u32>(abs(_wgslsmith_sub_u32(reverseBits(u_input.a.x << (0u % 32u)), u_input.a.x & 1u)), _wgslsmith_dot_vec2_u32(u_input.a.xy & ~u_input.a.zy, ~vec2<u32>(~13666u, _wgslsmith_div_u32(u_input.a.x, u_input.a.x))));
    var var_4 = 4388u;
    return global0[_wgslsmith_index_u32(~var_3.x, 20u)];
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: bool) -> i32 {
    var var_0 = Struct_1(-10096i, _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(0i, 21246i, arg_0.x, arg_0.x), countOneBits(vec4<i32>(arg_0.x, arg_0.x, 2147483647i, -5765i))), -43400i), 13703i), firstTrailingBit(countOneBits(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(4763i, 1i, arg_0.x, 0i), vec4<i32>(arg_0.x, 2501i, 38545i, -1i)), arg_0.x, arg_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, arg_0.x), arg_0.yx)))), -1146f);
    var_0 = func_2(-2147483647i);
    global0 = array<Struct_1, 20>();
    let var_1 = ~vec2<u32>(u_input.a.x, 1u);
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1063f, _wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1104f, _wgslsmith_f_op_f32(abs(var_0.d))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -486f))))), -1109f) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_0.d, global1.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1098f))) - _wgslsmith_f_op_f32(var_0.d - var_0.d)), func_2(func_2(-27729i).a & min(arg_0.x, var_0.a)).d, _wgslsmith_f_op_f32(exp2(var_0.d))));
    return countOneBits(-1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(abs(vec4<i32>(32395i, 35519i, 464i, -1i) >> (~vec4<u32>(6095u, u_input.a.x, 0u, 7347u) % vec4<u32>(32u))) & vec4<i32>(0i, countOneBits(~76322i), reverseBits(30604i) ^ func_1(vec3<i32>(0i, -231i, -40513i), 46283u, true), _wgslsmith_sub_i32(9718i >> (u_input.a.x % 32u), ~31980i)));
    let var_1 = global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 20u)];
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    var var_2 = select(true, true, func_3(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], vec2<bool>(true, true), abs(~(~u_input.a))).x);
    let var_3 = vec4<f32>(-153f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.d, -555f)))))), -529f, _wgslsmith_f_op_f32(round(var_1.d)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(u_input.a.zx, vec2<u32>(u_input.a.x | u_input.a.x, ~u_input.a.x) >> (_wgslsmith_add_vec2_u32(vec2<u32>(26282u, u_input.a.x), vec2<u32>(1u, u_input.a.x)) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(-global1.xww), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(abs(u_input.a.x), u_input.a.x, ~0u), countOneBits(12465u | u_input.a.x), abs(u_input.a.x), ~0u), vec4<u32>(u_input.a.x, u_input.a.x, _wgslsmith_add_u32(_wgslsmith_add_u32(26118u, 5563u), u_input.a.x), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 0u), vec4<u32>(u_input.a.x, 4294967295u, 43077u, 0u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.d))) * _wgslsmith_f_op_f32(f32(-1f) * -2068f)));
}

