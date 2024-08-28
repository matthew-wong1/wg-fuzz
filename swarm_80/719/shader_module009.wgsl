struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: vec2<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_2) -> i32 {
    return _wgslsmith_add_i32(~_wgslsmith_mod_i32(-2147483647i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.b.x, 0i, -1i, 54872i), vec4<i32>(u_input.c.x, global1.c, global1.c, global0.e.c), vec4<bool>(arg_2.e.b, false, global0.e.b, true)), vec4<i32>(arg_2.c.c, -2147483647i, -3323i, 26684i))), u_input.b.x);
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = vec4<i32>(-39490i, -_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(global0.a, u_input.c.x, -22104i, 1i) << (u_input.a % vec4<u32>(32u))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 7520i, u_input.b.x), vec3<i32>(-2147483647i, 1i, global1.c)), _wgslsmith_add_i32(1i, global0.a), u_input.b.x, _wgslsmith_mult_i32(-1i, u_input.c.x))), 39663i, global0.c.c);
    global0 = Struct_2(global1.c, 1i, global0.e, countOneBits(var_0.yy), Struct_1(_wgslsmith_clamp_u32(~23902u >> (_wgslsmith_sub_u32(u_input.a.x, 31065u) % 32u), ~(u_input.a.x ^ 0u), global0.e.a), global0.c.b, _wgslsmith_dot_vec3_i32(reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, var_0.x, var_0.x), var_0.xyz)), ~(~vec3<i32>(u_input.c.x, -1i, -2147483647i)))));
    let var_1 = Struct_2(global0.b, var_0.x, global0.c, _wgslsmith_mod_vec2_i32(vec2<i32>(~(-1i), func_3(true, u_input.a.yzx, Struct_2(global1.c, -2147483647i, global0.e, vec2<i32>(1i, global1.c), Struct_1(1u, false, -1i)))), -(~abs(global0.d))), Struct_1(~firstTrailingBit(33209u), global1.b, global0.b));
    let var_2 = _wgslsmith_mod_vec2_i32(u_input.c, select(vec2<i32>(u_input.b.x, -18640i << (u_input.a.x % 32u)), var_1.d, all(vec2<bool>(u_input.c.x <= global0.a, global1.b))));
    var var_3 = vec2<u32>(~_wgslsmith_mod_u32(1u, u_input.a.x), ~(~_wgslsmith_div_u32(global1.a, firstTrailingBit(28267u))));
    return Struct_2(~(~0i), -global0.d.x, var_1.e, firstTrailingBit(_wgslsmith_add_vec2_i32(abs(-var_0.zz), vec2<i32>(_wgslsmith_add_i32(global0.d.x, 2147483647i), global0.c.c))), var_1.c);
}

fn func_1(arg_0: u32) -> i32 {
    var var_0 = Struct_2(select(~reverseBits(global0.c.c) ^ _wgslsmith_add_i32(_wgslsmith_mult_i32(global1.c, -8171i), ~1i), -1758i, true), _wgslsmith_dot_vec2_i32(u_input.c, global0.d ^ global0.d), Struct_1(1u >> (global0.c.a % 32u), false, reverseBits(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, -12778i, u_input.b.x), vec3<i32>(global0.a, 0i, 75701i)))), _wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(global0.d.x, _wgslsmith_add_i32(global1.c, -1i))), global0.d, global0.d), global0.e);
    var var_1 = func_2(_wgslsmith_f_op_f32(-2808f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(271f * 111f)))))));
    var var_2 = !select(vec4<bool>(true, true, !var_1.e.b, any(vec4<bool>(global0.c.b, true, true, var_1.e.b))), select(!vec4<bool>(true, false, global0.e.b, global0.c.b), select(!vec4<bool>(var_1.e.b, true, false, false), !vec4<bool>(global1.b, var_1.e.b, var_1.c.b, true), vec4<bool>(true, global0.c.b, var_0.c.b, var_1.e.b)), !select(vec4<bool>(true, global1.b, var_0.e.b, true), vec4<bool>(true, true, var_0.e.b, false), vec4<bool>(global1.b, false, true, global0.e.b))), !select(select(vec4<bool>(false, false, false, false), vec4<bool>(var_0.c.b, false, global1.b, true), vec4<bool>(var_0.e.b, var_1.c.b, var_1.e.b, true)), select(vec4<bool>(var_0.c.b, var_1.e.b, true, global0.e.b), vec4<bool>(var_1.c.b, true, false, true), true), true));
    let var_3 = _wgslsmith_clamp_i32(-1i, ~1149i, var_1.c.c);
    global0 = func_2(-1000f);
    return ~(-(-3482i | (u_input.b.x << (1u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_div_f32(-232f, 1f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1703f + 1465f)), _wgslsmith_f_op_f32(-950f + _wgslsmith_f_op_f32(round(361f))))));
    global0 = Struct_2(46104i, -(~2147483647i), Struct_1(select(_wgslsmith_mod_u32(u_input.a.x, global1.a), _wgslsmith_clamp_u32(u_input.a.x, 0u, _wgslsmith_add_u32(global1.a, 4294967295u)), false), any(select(vec2<bool>(global0.c.b, true), !vec2<bool>(global0.e.b, global1.b), vec2<bool>(false, global0.e.b))), _wgslsmith_dot_vec2_i32(global0.d, vec2<i32>(-51041i, u_input.c.x >> (2949u % 32u)))), ~vec2<i32>(func_1(_wgslsmith_mult_u32(1u, 29476u)), abs(1i)), Struct_1(0u, var_0.x > var_0.x, _wgslsmith_dot_vec2_i32(abs(select(global0.d, global0.d, vec2<bool>(true, false))), countOneBits(~global0.d))));
    let var_1 = ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x), countOneBits(vec2<u32>(0u, u_input.a.x)))) << (_wgslsmith_mod_u32(4294967295u, u_input.a.x) % 32u);
    global0 = Struct_2(43450i, global0.c.c, Struct_1(global1.a, ~(-2147483647i) == _wgslsmith_clamp_i32(reverseBits(21330i), global0.d.x, global1.c), select(global1.c << (0u % 32u), u_input.b.x, any(vec2<bool>(false, global0.c.b))) & _wgslsmith_div_i32(0i, -13706i)), firstTrailingBit(u_input.c), func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, -1149f), 417f)))).c);
    let var_2 = abs(-1i);
    let var_3 = firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(var_2, u_input.c.x, -abs(var_2), 0i), vec4<i32>(-17598i, u_input.c.x, global0.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, var_2), vec2<i32>(53919i, -1i))) & ~(~vec4<i32>(-25584i, 1i, global0.a, var_2))));
    global0 = func_2(-1904f);
    let var_4 = u_input.b;
    global0 = func_2(-1858f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -389f)))), countOneBits(~(firstLeadingBit(u_input.a) >> (abs(u_input.a) % vec4<u32>(32u)))), vec3<f32>(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), -1000f), -403f));
}

