struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> f32 {
    let var_0 = all(!(!vec4<bool>(true, all(vec2<bool>(false, true)), arg_1 < 770f, true)));
    let var_1 = u_input.d.x;
    var var_2 = _wgslsmith_clamp_i32(select(u_input.a.x, select(~2147483647i, 1i, !var_0), u_input.c.x != _wgslsmith_dot_vec4_i32(-u_input.a, vec4<i32>(u_input.b.x, 1i, u_input.a.x, 0i))), ~_wgslsmith_div_i32(_wgslsmith_clamp_i32(0i, reverseBits(36682i), u_input.a.x), u_input.b.x), 25066i);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 + -361f), _wgslsmith_div_f32(arg_0.b.x, -344f)))))));
    var var_4 = _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(~u_input.d.zxx, ~vec3<u32>(firstLeadingBit(30009u), 701u, 78u)), vec3<u32>(~var_1 >> (min(~u_input.d.x, _wgslsmith_clamp_u32(22783u, 1u, var_1)) % 32u), _wgslsmith_div_u32(~(19028u << (u_input.d.x % 32u)), ~firstTrailingBit(var_1)), 4294967295u), vec3<u32>(reverseBits(15134u), ~abs(var_1) << (_wgslsmith_sub_u32(var_1, 21876u) % 32u), ~max(abs(59140u), arg_0.a.x >> (0u % 32u))));
    return -1073f;
}

fn func_2() -> vec3<bool> {
    var var_0 = !(false && !any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true))));
    let var_1 = vec4<f32>(140f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1283f - -1372f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec2<u32>(u_input.e, u_input.d.x), vec2<f32>(-333f, -640f)), _wgslsmith_f_op_f32(-464f + -615f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1741f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -624f)))), 2163f);
    var_0 = all(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false))), vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec3<bool>(false, false, false)), true, false)), vec4<bool>(true, true, true, true), (~(-8092i) << (_wgslsmith_dot_vec3_u32(u_input.d.zxy, vec3<u32>(u_input.d.x, 37065u, 1u)) % 32u)) > (-u_input.b.x << (72459u % 32u))));
    var var_2 = -u_input.b;
    var var_3 = Struct_1(u_input.d.zz, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_1.zy * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -394f)))), _wgslsmith_f_op_vec2_f32(var_1.zz - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-320f, var_1.x) - var_1.yz), _wgslsmith_f_op_vec2_f32(floor(var_1.xy))))), -642f < _wgslsmith_f_op_f32(var_1.x * var_1.x))));
    return vec3<bool>(~abs(countOneBits(u_input.c.x)) <= ~_wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, -2147483647i), u_input.a.xx), false, true);
}

fn func_1() -> vec3<u32> {
    var var_0 = Struct_2(select(select(select(func_2(), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), !select(true, true, true)), !vec3<bool>(all(vec4<bool>(true, false, true, true)), true, true), vec3<bool>(true, true, true)), vec3<u32>(~firstLeadingBit(u_input.e), _wgslsmith_clamp_u32(min(u_input.d.x, abs(u_input.d.x)), countOneBits(~u_input.d.x), ~_wgslsmith_add_u32(u_input.e, u_input.d.x)), ~34250u));
    var var_1 = false;
    var var_2 = Struct_2(!vec3<bool>(select(true, true, !var_0.a.x), all(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x)), true), ~var_0.b);
    let var_3 = _wgslsmith_mod_i32(_wgslsmith_div_i32(countOneBits(u_input.b.x), u_input.a.x), u_input.b.x);
    var_0 = Struct_2(!select(var_0.a, var_2.a, var_0.a.x || var_2.a.x), var_0.b);
    return vec3<u32>(_wgslsmith_sub_u32(var_0.b.x, firstLeadingBit(var_2.b.x) & ~4294967295u), 1u, 0u) >> (vec3<u32>(7125u, 50228u, select(0u, u_input.d.x, !var_0.a.x)) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<u32>(~(55794u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, u_input.d.x), vec2<u32>(1u, u_input.e)) % 32u)), _wgslsmith_dot_vec3_u32(func_1(), max(u_input.d.yxy, u_input.d.zzy)), 4294967295u, _wgslsmith_mult_u32(~u_input.e, abs(1u))), ~select(u_input.d, ~(~u_input.d), true), all(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), false))));
    var var_1 = vec4<bool>(!all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), false)) || (any(vec4<bool>(true, true, true, true)) && false), true, !func_2().x, !(~(~8528u) <= ~func_1().x));
    var var_2 = var_1.x;
    var_2 = true;
    var_0 = abs(vec4<u32>(1u, ~countOneBits(47313u & var_0.x), var_0.x, _wgslsmith_mod_u32(var_0.x, u_input.d.x)));
    let var_3 = Struct_2(vec3<bool>(!var_1.x & var_1.x, !all(vec4<bool>(false, false, true, true)), !var_1.x), var_0.yww);
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.b.x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-389f * 142f) + 125f) * _wgslsmith_f_op_f32(-1959f * _wgslsmith_f_op_f32(sign(-2052f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(419f))))), 317f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-306f + _wgslsmith_f_op_f32(f32(-1f) * -1913f)))));
}

