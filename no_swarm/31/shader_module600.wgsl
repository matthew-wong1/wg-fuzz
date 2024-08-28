struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: bool,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: f32,
    d: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: u32,
    e: f32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    let var_0 = Struct_4(~abs(15745u), _wgslsmith_sub_u32(4294967295u, _wgslsmith_mult_u32(4294967295u, 0u)), Struct_1(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), true), all(vec2<bool>(true, false))), all(vec2<bool>(all(vec2<bool>(false, false)), u_input.b >= u_input.b)), !any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), ~select(vec4<u32>(1u, 0u, 4294967295u, 4294967295u), ~vec4<u32>(4294967295u, 41014u, 1u, 87168u), true), ~abs(~vec4<u32>(1u, 0u, 1u, 0u))), ~abs(1u), _wgslsmith_f_op_f32(ceil(598f)));
    let var_1 = var_0.c.c;
    var var_2 = _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, _wgslsmith_clamp_i32(-u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.a.yxy, u_input.a.zzx), -2147483647i), abs(_wgslsmith_div_i32(u_input.b, u_input.b)), 0i), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.b, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a), -54109i), max(u_input.a, u_input.a | vec4<i32>(u_input.a.x, u_input.b, 1i, 46067i)) >> (select(~vec4<u32>(var_0.b, 1u, 1u, 0u), ~vec4<u32>(0u, var_0.d, 42348u, 1u), true) % vec4<u32>(32u))));
    var var_3 = var_0.c;
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.e * 775f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-599f, 622f)), _wgslsmith_f_op_f32(var_0.e * 1f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.e, _wgslsmith_f_op_f32(floor(var_0.e))) - _wgslsmith_f_op_f32(round(var_0.e)))));
    return all(select(!(!var_0.c.a), var_3.a, !(!(!vec4<bool>(var_0.c.a.x, false, false, var_1)))));
}

fn func_2() -> vec3<u32> {
    var var_0 = Struct_1(vec4<bool>(!(!all(vec2<bool>(false, false))), all(vec4<bool>(true, func_3(), true, u_input.b == 23026i)), any(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true))), !any(vec4<bool>(true, true, true, true)), true, max(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 50280u, ~(~4294967295u), ~_wgslsmith_clamp_u32(16571u, 0u, 4294967295u))), ~_wgslsmith_div_vec4_u32(~(~vec4<u32>(64731u, 4294967295u, 4294967295u, 51694u)), vec4<u32>(1u, 1u, 1u, 1u)));
    var_0 = Struct_1(var_0.a, u_input.a.x < 2147483647i, true, reverseBits(vec4<u32>(9806u, var_0.e.x, var_0.d.x, 72340u << (var_0.d.x % 32u))) & abs(var_0.e), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(~(~var_0.e), var_0.e), ~abs(var_0.e)));
    var var_1 = var_0.d.x;
    var_1 = select(var_0.e.x | _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.d.x, var_0.e.x), vec2<u32>(var_0.d.x, abs(var_0.e.x))), ~_wgslsmith_sub_u32(~(~var_0.d.x), 4294967295u), false | (true && !(!var_0.b)));
    var var_2 = select(_wgslsmith_sub_vec2_u32(~(abs(vec2<u32>(var_0.d.x, 1u)) ^ (var_0.e.xx & var_0.e.zx)), select(_wgslsmith_add_vec2_u32(vec2<u32>(0u, var_0.d.x), ~vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(_wgslsmith_sub_u32(var_0.d.x, var_0.d.x), var_0.d.x), var_0.a.wz)), var_0.e.ww, var_0.b);
    return ~_wgslsmith_div_vec3_u32(~(var_0.e.yyz << (var_0.d.xwy % vec3<u32>(32u))), var_0.d.wyw);
}

fn func_1(arg_0: bool) -> i32 {
    let var_0 = select(4294967295u, (_wgslsmith_dot_vec3_u32(vec3<u32>(29016u, 16219u, 4294967295u), func_2()) >> (1u % 32u)) | firstLeadingBit(_wgslsmith_mod_u32(1u, 1u)), !arg_0);
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_i32(-34489i, min(func_1(all(vec2<bool>(false, false))) ^ u_input.b, ~_wgslsmith_dot_vec3_i32(abs(u_input.a.zyx), vec3<i32>(u_input.a.x, 55375i, u_input.a.x))));
    var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_f32(ceil(-309f));
    let var_2 = Struct_4(_wgslsmith_clamp_u32(min(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1596u, 4294967295u), ~vec2<u32>(27999u, 51124u))), _wgslsmith_mod_u32(32599u, 1u), select(~1u, abs(countOneBits(101730u)), true)), 1u, Struct_1(select(vec4<bool>(true, any(vec4<bool>(false, false, true, false)), true, true), vec4<bool>(true, true, true, true), true), false, true, vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 2304u), vec3<u32>(79310u, 795u, 672u)), reverseBits(func_2().x), ~(~1u), firstTrailingBit(0u))), 4294967295u, -1149f);
    var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.e)))));
    let var_3 = Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) + vec2<f32>(_wgslsmith_f_op_f32(var_2.e * var_2.e), _wgslsmith_f_op_f32(f32(-1f) * -260f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, var_2.e), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(379f, var_2.e))), vec2<bool>(var_2.c.a.x, false))))), u_input.a.xx);
    var_0 = -_wgslsmith_div_i32(u_input.a.x ^ ~(~89964i), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-892f)))));
}

