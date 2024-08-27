struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: bool,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_5) -> u32 {
    var var_0 = Struct_4(_wgslsmith_mod_vec2_u32(arg_0.e.xz, ~arg_0.e.yy));
    let var_1 = Struct_1(-1000f, arg_0.d, arg_0.d);
    let var_2 = arg_0.c.wwx;
    let var_3 = vec2<bool>(25951u >= u_input.c, arg_0.d);
    var var_4 = Struct_5(u_input.c, arg_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.c + vec4<f32>(_wgslsmith_f_op_f32(-var_1.a), arg_0.c.x, var_1.a, -875f))), arg_0.d, max(arg_0.e, vec3<u32>(var_0.a.x, ~arg_0.e.x, ~4294967295u) >> (~(~arg_0.e) % vec3<u32>(32u))));
    return var_0.a.x;
}

fn func_3(arg_0: u32) -> vec4<bool> {
    let var_0 = Struct_5(_wgslsmith_add_u32(arg_0, 1u), u_input.b, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1222f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-432f, -1730f))), _wgslsmith_f_op_f32(f32(-1f) * -865f)), _wgslsmith_f_op_f32(max(-365f, 1f)), -833f), false, vec3<u32>(~(~66836u & abs(arg_0)), ~1u & ~(~arg_0), 56037u));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(var_0.c.x)), true, all(vec3<bool>(true, any(vec2<bool>(false, true)) & false, false)));
    var var_2 = false;
    var_2 = any(!vec4<bool>(true, true, var_0.d, var_1.c));
    return select(!select(vec4<bool>(any(vec3<bool>(var_0.d, var_0.d, true)), var_0.c.x > var_0.c.x, true, var_1.c | var_1.c), vec4<bool>(var_1.a > var_0.c.x, true, var_0.c.x >= var_0.c.x, true), select(vec4<bool>(true, var_0.d, var_1.c, var_1.c), select(vec4<bool>(false, var_1.b, var_0.d, true), vec4<bool>(false, var_1.c, true, var_1.c), vec4<bool>(var_0.d, false, false, var_1.b)), var_0.d)), select(vec4<bool>(var_1.b, true, !(!var_0.d), true), vec4<bool>(var_1.b, var_0.d, var_0.d, false), !(var_1.b | false)), false);
}

fn func_1() -> Struct_2 {
    let var_0 = u_input.b << (_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.c, u_input.c, ~u_input.c)), vec3<u32>(61945u, firstLeadingBit(1u), func_2(Struct_5(4294967295u, 1i, vec4<f32>(-1000f, 490f, -354f, -1000f), false, vec3<u32>(u_input.c, 61565u, u_input.c))))) % 32u);
    var var_1 = Struct_3(select(vec4<bool>(2147483647i < (u_input.b >> (u_input.c % 32u)), select(true, true, all(vec3<bool>(false, true, true))), true, !any(vec3<bool>(false, false, true))), func_3(5363u), select(!func_3(37273u).x, true, false)), min(u_input.a, firstTrailingBit(~max(vec3<i32>(1i, u_input.a.x, u_input.b), vec3<i32>(0i, u_input.a.x, 14724i)))), Struct_2(vec4<i32>(var_0, _wgslsmith_div_i32(~0i, ~var_0), max(min(1i, -45550i), u_input.a.x), min(var_0 & -1i, ~(-64960i)))));
    let var_2 = !(!var_1.a.x);
    var_1 = Struct_3(!(!vec4<bool>(func_3(35968u).x, true, true, var_0 <= -14782i)), vec3<i32>(var_0, select(abs(1i), -1i, !all(var_1.a.yx)), -_wgslsmith_sub_i32(var_1.c.a.x, -10755i) >> (~(~u_input.c) % 32u)), var_1.c);
    var_1 = Struct_3(select(select(func_3(countOneBits(4294967295u)), vec4<bool>(var_2, true, var_1.a.x | true, any(vec3<bool>(true, var_1.a.x, false))), var_1.a), !var_1.a, true), ~firstLeadingBit(u_input.a), var_1.c);
    return Struct_2(var_1.c.a);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec2<i32>) -> u32 {
    var var_0 = -697f;
    return _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, u_input.c, 4294967295u, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 47382u, u_input.c, 4294967295u) | ~vec4<u32>(1u, 4294967295u, u_input.c, u_input.c), ~vec4<u32>(14020u, 19616u, 4294967295u, u_input.c))), _wgslsmith_sub_vec4_u32(max(abs(~vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c)), _wgslsmith_clamp_vec4_u32(min(vec4<u32>(u_input.c, u_input.c, 221u, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)), ~vec4<u32>(1u, u_input.c, u_input.c, u_input.c), vec4<u32>(32586u, 77348u, u_input.c, 40364u))), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 47078u, 1u, 4294967295u) >> (vec4<u32>(u_input.c, 2329u, u_input.c, u_input.c) % vec4<u32>(32u)), abs(vec4<u32>(6169u, 16383u, 4294967295u, 1u))) >> (~(~vec4<u32>(u_input.c, 0u, 4294967295u, u_input.c)) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = -1000f;
    var var_2 = Struct_5(func_4(func_1(), Struct_3(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), true), vec3<i32>(64111i << (1u % 32u), 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(-17215i, 16139i, u_input.b), vec3<i32>(-2147483647i, 23265i, u_input.a.x))), func_1()), u_input.a.zz), -14338i, vec4<f32>(_wgslsmith_f_op_f32(min(-735f, _wgslsmith_f_op_f32(sign(-323f)))), -794f, _wgslsmith_f_op_f32(f32(-1f) * -590f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-618f + _wgslsmith_f_op_f32(1168f * 667f))))), !(!func_3(u_input.c).x) || any(vec4<bool>(true, true, true, true)), vec3<u32>(4294967295u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.c, 1u, u_input.c >> (63178u % 32u)), ~25578u | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(4294967295u, u_input.c))), select(u_input.c, ~(~1u), true)));
    let var_3 = Struct_4(var_2.e.xx);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~var_2.b, ~_wgslsmith_div_i32(~u_input.b, 1i & u_input.a.x)), u_input.a.x);
}

