struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32) -> vec4<u32> {
    var var_0 = Struct_4(u_input.b.x);
    var_0 = Struct_4(u_input.b.x);
    let var_1 = ~max(0u, 15772u);
    let var_2 = 73392i;
    return ~u_input.b;
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: bool) -> Struct_3 {
    var var_0 = Struct_4(~u_input.b.x);
    var var_1 = vec4<i32>(arg_1, _wgslsmith_add_i32(select(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.d.x, arg_1, 17402i), u_input.d), u_input.c.x, any(select(vec3<bool>(true, false, arg_2), vec3<bool>(arg_2, false, arg_2), arg_2))), 6187i), ~1i, -(~_wgslsmith_sub_i32(1i, _wgslsmith_div_i32(arg_0.x, -1i))));
    var var_2 = Struct_3(Struct_1(u_input.b.xyw, vec4<u32>(~var_0.a, 4294967295u, select(var_0.a, 12594u, true), _wgslsmith_dot_vec2_u32(u_input.b.yy, vec2<u32>(53543u, 0u))) << (~func_3(1000f) % vec4<u32>(32u)), arg_0.zz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(156f, 964f, -1442f))))), Struct_2(firstLeadingBit(arg_0), abs(abs(~vec3<u32>(97129u, 96119u, 67489u))), vec2<bool>(true, true)));
    var_2 = Struct_3(var_2.a, var_2.b);
    let var_3 = _wgslsmith_f_op_f32(-var_2.a.d.x);
    return Struct_3(var_2.a, var_2.b);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>) -> bool {
    var var_0 = vec3<i32>(arg_0.a.c.x, max(arg_0.b.a.x, arg_0.a.c.x), func_2(select(~vec3<i32>(u_input.c.x, -1i, arg_0.a.c.x), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, 0i, 15341i), vec3<i32>(arg_0.a.c.x, arg_0.b.a.x, 51141i)) & abs(u_input.c.xwz), false), arg_0.b.a.x, all(!select(vec4<bool>(arg_0.b.c.x, true, arg_0.b.c.x, true), vec4<bool>(false, false, arg_0.b.c.x, false), arg_0.b.c.x))).b.a.x);
    var var_1 = arg_0.b.b;
    let var_2 = Struct_3(arg_0.a, func_2((_wgslsmith_add_vec3_i32(arg_0.b.a, u_input.d.zxx) | ~arg_0.b.a) >> (func_3(_wgslsmith_f_op_f32(exp2(arg_0.a.d.x))).xyw % vec3<u32>(32u)), -_wgslsmith_sub_i32(arg_0.b.a.x, -1i), any(vec2<bool>(false, arg_0.b.c.x))).b);
    var var_3 = func_3(var_2.a.d.x).yzx | ~(~vec3<u32>(4294967295u << (arg_0.b.b.x % 32u), reverseBits(u_input.b.x), ~0u));
    var var_4 = var_2.b;
    return false;
}

fn func_1(arg_0: vec2<i32>) -> vec3<u32> {
    var var_0 = ((i32(-1i) * -_wgslsmith_sub_i32(arg_0.x, -2147483647i)) >> (u_input.b.x % 32u)) > -2147483647i;
    let var_1 = vec4<bool>(any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, true))), true, !func_4(func_2(vec3<i32>(21760i, u_input.d.x, -1i), u_input.d.x, any(vec4<bool>(false, true, false, false))), u_input.b.zzw), false);
    let var_2 = false;
    let var_3 = func_2(func_2(~vec3<i32>(-1i, -28860i, arg_0.x) | min(vec3<i32>(u_input.c.x, arg_0.x, u_input.a.x), u_input.d.yxy), select(-arg_0.x, ~u_input.a.x, all(vec2<bool>(true, false))) >> (func_2(vec3<i32>(-14i, -1i, 0i), 0i, all(vec4<bool>(var_1.x, var_1.x, var_2, var_1.x))).a.b.x % 32u), !var_1.x).b.a, arg_0.x, any(var_1)).a;
    let var_4 = vec2<bool>(var_3.b.x <= var_3.a.x, true);
    return vec3<u32>(var_3.a.x, ~u_input.b.x, 26445u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(1u);
    var var_1 = vec3<u32>(reverseBits(0u), 1u, _wgslsmith_clamp_u32(5718u | _wgslsmith_mod_u32(0u | var_0.a, 4294967295u), ~reverseBits(firstTrailingBit(u_input.b.x)), 4294967295u));
    let var_2 = ~_wgslsmith_sub_vec3_u32(u_input.b.xzy, ~(~_wgslsmith_mod_vec3_u32(u_input.b.zyy, u_input.b.zxx)));
    var_1 = u_input.b.zyz | (vec3<u32>(0u, _wgslsmith_dot_vec3_u32(func_1(vec2<i32>(u_input.a.x, -2464i)), vec3<u32>(var_1.x, var_1.x, u_input.b.x)), u_input.b.x ^ (var_0.a & 43290u)) >> (vec3<u32>(firstTrailingBit(var_1.x), abs(max(u_input.b.x, 0u)), var_0.a) % vec3<u32>(32u)));
    var var_3 = _wgslsmith_dot_vec3_i32(u_input.c.wzx, -(~vec3<i32>(1i, 1i, 1i))) & -2147483647i;
    var_1 = abs(vec3<u32>(var_2.x, ~(~(~1u)), 4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x, _wgslsmith_f_op_f32(489f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -132f))))), u_input.b, (~u_input.a.wzy >> (u_input.b.xwx % vec3<u32>(32u))) & ~vec3<i32>(_wgslsmith_sub_i32(2147483647i, u_input.d.x), -2147483647i, _wgslsmith_add_i32(u_input.c.x, u_input.d.x)), _wgslsmith_f_op_f32(-func_2(vec3<i32>(u_input.a.x, -1i, _wgslsmith_div_i32(-1i, u_input.a.x)), _wgslsmith_mult_i32(0i, countOneBits(-64520i)), any(vec2<bool>(true, true))).a.d.x));
}

