struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: u32, arg_3: i32) -> bool {
    var var_0 = firstLeadingBit(vec2<u32>(_wgslsmith_dot_vec3_u32(~(u_input.e.xzz & u_input.e.zww), ~(vec3<u32>(arg_0, arg_0, u_input.e.x) >> (u_input.e.xwz % vec3<u32>(32u)))), _wgslsmith_sub_u32(27740u, ~(~arg_2))));
    var_0 = u_input.e.ww;
    var var_1 = (select(_wgslsmith_clamp_i32(~u_input.d, arg_3, arg_3), _wgslsmith_clamp_i32(arg_3 | 0i, -arg_1, 28055i), true) << (_wgslsmith_add_u32(1u, ~(~u_input.e.x)) % 32u)) & -(~_wgslsmith_div_i32(max(-28506i, -11498i), abs(u_input.a)));
    var var_2 = 0i;
    var var_3 = reverseBits(u_input.e.x);
    return true;
}

fn func_2(arg_0: f32) -> vec2<i32> {
    let var_0 = Struct_3(!select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, false)), true), reverseBits(-(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, u_input.d), vec2<i32>(4256i, -15293i)) >> (u_input.e.yx % vec2<u32>(32u)))));
    let var_1 = !all(!vec3<bool>(var_0.a.x, func_3(0u, u_input.c, 0u, 44432i), true & var_0.a.x));
    let var_2 = Struct_1(_wgslsmith_sub_vec2_i32(-vec2<i32>(_wgslsmith_mult_i32(1i, 2147483647i), select(-6712i, -41299i, var_1)), -var_0.b), !(!all(vec4<bool>(false, true, false, var_1))), ~u_input.b.x, ~_wgslsmith_mult_vec3_u32(~u_input.e.yzw & select(u_input.e.xxy, u_input.e.xyy, vec3<bool>(var_1, var_0.a.x, false)), u_input.e.wwx));
    let var_3 = 0u;
    let var_4 = ~(~reverseBits(~var_2.d.xx));
    return var_2.a ^ (vec2<i32>(-1i) * -(~(-vec2<i32>(var_2.a.x, 1i))));
}

fn func_1(arg_0: vec2<bool>) -> Struct_3 {
    let var_0 = ~vec4<i32>(~(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -1250i), vec2<i32>(u_input.a, u_input.c)) << (4294967295u % 32u)), ~46809i, abs(-2147483647i), -2147483647i);
    var var_1 = vec2<i32>(~firstLeadingBit(firstLeadingBit(u_input.c)), var_0.x);
    var_1 = firstLeadingBit(min(~var_0.zy, func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1000f, -2107f)), -179f)))));
    var var_2 = Struct_3(!vec2<bool>(all(!vec3<bool>(arg_0.x, false, false)), all(vec3<bool>(true, true, true))), _wgslsmith_mod_vec2_i32(vec2<i32>(~select(1i, u_input.d, arg_0.x), var_0.x), firstTrailingBit(_wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(4089i, 2147483647i)), firstLeadingBit(vec2<i32>(0i, 0i))))));
    var var_3 = Struct_2(Struct_1(var_2.b, (func_3(4294967295u, u_input.a, 0u, 2147483647i) | true) || true, _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 133827u, 1u), u_input.e.wzx), vec3<u32>(~u_input.b.x, 0u >> (u_input.b.x % 32u), 20642u)), ~u_input.e.xwz), Struct_1((vec2<i32>(-1i) * -vec2<i32>(var_2.b.x, 2147483647i)) | vec2<i32>(u_input.a, 24028i), false, ~_wgslsmith_mult_u32(~u_input.e.x, u_input.e.x), select(firstTrailingBit(u_input.e.wwz), _wgslsmith_add_vec3_u32(u_input.e.xyz, vec3<u32>(4294967295u, 66104u, u_input.b.x)) & (u_input.e.zwz >> (u_input.e.xwz % vec3<u32>(32u))), true)), Struct_1(select(vec2<i32>(var_2.b.x, -11780i) << ((vec2<u32>(u_input.b.x, u_input.b.x) ^ vec2<u32>(u_input.b.x, 43888u)) % vec2<u32>(32u)), -vec2<i32>(1i, 2147483647i), var_2.a.x == true), false, select(firstTrailingBit(~21308u), u_input.e.x, true), u_input.e.xxz), Struct_1(vec2<i32>(~1i, reverseBits(u_input.c)), !var_2.a.x, 79776u, abs(u_input.e.zxy)), Struct_1(reverseBits(_wgslsmith_add_vec2_i32(abs(var_2.b), vec2<i32>(var_1.x, 41582i))), var_2.a.x, countOneBits(u_input.b.x), vec3<u32>(~(~40152u), 1u, u_input.e.x)));
    return Struct_3(vec2<bool>(true, any(var_2.a) & !all(vec4<bool>(var_3.a.b, arg_0.x, false, var_2.a.x))), -(vec2<i32>(var_3.d.a.x, -23230i) << (u_input.e.xz % vec2<u32>(32u))) & vec2<i32>(_wgslsmith_sub_i32(-8627i, 2147483647i | var_2.b.x), u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-2147483647i);
    let var_1 = -459f;
    let var_2 = func_1(select(vec2<bool>(true, true), vec2<bool>(u_input.a < (2381i & u_input.a), true), all(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(true, false, true))))));
    var var_3 = ~(~vec3<u32>(_wgslsmith_dot_vec4_u32(~u_input.e, firstTrailingBit(vec4<u32>(u_input.e.x, u_input.b.x, u_input.b.x, u_input.b.x))), u_input.e.x, _wgslsmith_mult_u32(abs(4294967295u), u_input.e.x)));
    let var_4 = Struct_1(vec2<i32>(_wgslsmith_clamp_i32(i32(-1i) * -u_input.c, _wgslsmith_div_i32(var_2.b.x, func_2(var_1).x), ~select(var_2.b.x, 106i, var_2.a.x)), u_input.d), all(!vec4<bool>(var_2.a.x, var_2.a.x || var_2.a.x, func_1(var_2.a).a.x, !var_2.a.x)), u_input.b.x, vec3<u32>(_wgslsmith_div_u32(var_3.x | ~41981u, var_3.x), var_3.x | abs(1u), abs(u_input.e.x)));
    var_0 = var_4.a.x;
    var var_5 = true;
    var var_6 = abs(~4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(min(1i, 1i)));
}

