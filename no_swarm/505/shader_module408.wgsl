struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: i32,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(0i), vec2<i32>(10603i, -1i), -17775i);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec4<i32>) -> bool {
    return true;
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: vec4<u32>) -> f32 {
    let var_0 = ~1u;
    global0 = Struct_3(Struct_1(u_input.a.x), abs(u_input.a), -_wgslsmith_add_i32(u_input.a.x, u_input.a.x));
    var var_1 = _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(~global0.b.x, -62421i, reverseBits(-_wgslsmith_sub_i32(1i, global0.a.a))), ~(~reverseBits(1i)), min(_wgslsmith_mod_i32(-20948i, _wgslsmith_add_i32(_wgslsmith_mult_i32(0i, u_input.a.x), -1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, global0.a.a, 1i, 2147483647i) >> (arg_2 % vec4<u32>(32u)), vec4<i32>(-23510i, global0.c, -1i, global0.b.x)) ^ -60576i));
    let var_2 = vec3<i32>(abs(57629i), global0.b.x, _wgslsmith_clamp_i32(_wgslsmith_div_i32(global0.c, _wgslsmith_div_i32(~(-2686i), _wgslsmith_add_i32(u_input.a.x, -19300i))), ~_wgslsmith_mod_i32(global0.c, min(global0.b.x, global0.a.a)), _wgslsmith_dot_vec4_i32(select(vec4<i32>(-43800i, 21465i, global0.a.a, global0.b.x) ^ vec4<i32>(u_input.a.x, 2147483647i, 2147483647i, 0i), vec4<i32>(u_input.a.x, 1i, 2147483647i, 32583i) >> (vec4<u32>(1u, 1u, var_0, arg_2.x) % vec4<u32>(32u)), !arg_0), vec4<i32>(-30527i, _wgslsmith_dot_vec3_i32(vec3<i32>(-14344i, 5287i, u_input.a.x), vec3<i32>(-1i, 17889i, u_input.a.x)), u_input.a.x, select(u_input.a.x, global0.c, arg_0.x)))));
    var var_3 = !arg_0.yyy;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(311f * -2710f) + -1521f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -113f)))), 981f, arg_0.x)), 553f));
}

fn func_2(arg_0: bool) -> vec2<u32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(!(!vec4<bool>(arg_0, false, arg_0, true)), select(false, arg_0, !arg_0), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 0u, 29703u), vec4<u32>(4294967295u, 84812u, 4294967295u, u_input.b.x)), firstLeadingBit(vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x)), vec4<u32>(60871u, 32880u, 0u, u_input.b.x) & vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x)))) * 396f), -727f);
    global0 = Struct_3(global0.a, -global0.b, countOneBits(global0.c));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(125f, -897f, var_0.x), vec3<f32>(var_0.x, -981f, -240f)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-448f, 1000f, 1738f), vec3<f32>(var_0.x, var_0.x, var_0.x)))) - vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x + -416f), _wgslsmith_f_op_f32(var_0.x + var_0.x))) + vec3<f32>(_wgslsmith_f_op_f32(min(-655f, _wgslsmith_f_op_f32(ceil(var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-696f + var_0.x) + _wgslsmith_f_op_f32(step(-2203f, -1713f))), -1000f)));
    var var_2 = (~vec4<u32>(abs(u_input.b.x), u_input.b.x & 1u, u_input.b.x, 14666u) & ~_wgslsmith_sub_vec4_u32(vec4<u32>(26861u, 19881u, 4294967295u, 60277u), ~vec4<u32>(4294967295u, 4294967295u, u_input.b.x, u_input.b.x))) ^ firstLeadingBit(min(reverseBits(vec4<u32>(1u, 34541u, u_input.b.x, u_input.b.x)), firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 5108u, u_input.b.x, 0u), vec4<u32>(u_input.b.x, 0u, 1u, 16251u)))));
    global0 = Struct_3(Struct_1(u_input.a.x), select(select(~(-global0.b), select(vec2<i32>(0i, 2147483647i), global0.b | global0.b, true), true), vec2<i32>(-1i) * -abs(global0.b), !(!vec2<bool>(arg_0, arg_0))), 0i);
    return vec2<u32>(~_wgslsmith_sub_u32(firstLeadingBit(~u_input.b.x), ~31468u), 56060u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    var var_1 = vec2<u32>(1u, 1u >> (min(u_input.b.x, 90878u) % 32u));
    var var_2 = Struct_2(select(!func_1(vec4<i32>(-28220i, -2147483647i, -1i, global0.c)) & !(var_1.x > 13757u), all(vec4<bool>(true, true, true, true)), any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), select(false, false, false)))), Struct_1(_wgslsmith_mult_i32(global0.c, min(abs(-2147483647i), ~global0.c))));
    var_1 = abs(func_2(true) >> (firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(52483u, 4294967295u), u_input.b >> (u_input.b % vec2<u32>(32u)), vec2<u32>(130071u, 8581u))) % vec2<u32>(32u)));
    var_1 = ~vec2<u32>(func_2(func_1(firstTrailingBit(vec4<i32>(0i, -2147483647i, var_2.b.a, var_2.b.a)))).x, ~min(4294967295u, _wgslsmith_div_u32(var_1.x, var_1.x)));
    var var_3 = Struct_4(true, vec2<bool>(false, any(select(vec2<bool>(var_2.a, var_2.a), vec2<bool>(true, true), true))));
    var var_4 = Struct_2(!(!select(var_2.a | var_3.b.x, func_1(vec4<i32>(1i, 17351i, var_2.b.a, -3653i)), var_3.b.x)), var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-678f, _wgslsmith_f_op_f32(843f + -437f), var_4.a)))), -231f, reverseBits(~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), u_input.b, firstTrailingBit(vec2<u32>(var_1.x, var_1.x)))), 1u, firstLeadingBit(u_input.b.x));
}

