struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(true, vec3<bool>(false, true, true), vec3<i32>(-47820i, -50413i, 0i)), Struct_3(true, vec3<bool>(false, true, false), vec3<i32>(31090i, -1i, -55048i)), Struct_3(false, vec3<bool>(false, true, false), vec3<i32>(i32(-2147483648), 0i, 23147i)), Struct_3(false, vec3<bool>(false, false, true), vec3<i32>(-3673i, -1i, 65189i)), Struct_3(false, vec3<bool>(true, false, true), vec3<i32>(2147483647i, 1i, 0i)), Struct_3(true, vec3<bool>(true, false, true), vec3<i32>(0i, 21717i, 0i)), Struct_3(false, vec3<bool>(false, true, true), vec3<i32>(-23067i, i32(-2147483648), -1i)), Struct_3(false, vec3<bool>(false, true, false), vec3<i32>(23167i, 9040i, i32(-2147483648))), Struct_3(true, vec3<bool>(true, false, true), vec3<i32>(-64685i, i32(-2147483648), 2147483647i)), Struct_3(true, vec3<bool>(false, false, true), vec3<i32>(-15805i, -29591i, -10947i)), Struct_3(false, vec3<bool>(false, false, false), vec3<i32>(2147483647i, 46601i, 19381i)), Struct_3(true, vec3<bool>(true, true, false), vec3<i32>(166i, 1i, -1i)), Struct_3(true, vec3<bool>(false, true, true), vec3<i32>(2147483647i, -1i, -30214i)), Struct_3(true, vec3<bool>(true, false, false), vec3<i32>(-95913i, -2839i, 0i)));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: u32) -> vec4<u32> {
    let var_0 = Struct_2(select(arg_1.b.yx, select(vec2<bool>(select(true, arg_1.a, false), any(vec4<bool>(arg_1.a, false, arg_1.b.x, arg_1.b.x))), select(select(vec2<bool>(false, false), arg_1.b.yz, false), arg_1.b.yx, all(vec4<bool>(true, arg_1.a, arg_1.b.x, false))), vec2<bool>(!arg_1.b.x, true)), arg_1.b.xz));
    var var_1 = !select(select(vec4<bool>(any(vec3<bool>(true, false, var_0.a.x)), false, var_0.a.x, !var_0.a.x), select(vec4<bool>(var_0.a.x, arg_1.a, var_0.a.x, var_0.a.x), select(vec4<bool>(true, true, true, arg_1.a), vec4<bool>(true, true, true, arg_1.b.x), false), arg_1.a), !vec4<bool>(false, true, var_0.a.x, arg_1.b.x)), vec4<bool>(true, arg_1.a, all(var_0.a), true), vec4<bool>(all(select(arg_1.b.yy, var_0.a, false)), true, false, any(select(vec4<bool>(var_0.a.x, false, arg_1.b.x, false), vec4<bool>(var_0.a.x, false, false, var_0.a.x), vec4<bool>(false, false, arg_1.a, true)))));
    global0 = array<Struct_3, 14>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -706f) * _wgslsmith_div_f32(-951f, 1f)))));
    let var_3 = select(vec3<bool>(!any(!vec3<bool>(false, var_0.a.x, var_1.x)), true, !all(select(arg_1.b, arg_1.b, var_1.zzw))), arg_1.b, true);
    return _wgslsmith_mult_vec4_u32(~vec4<u32>(select(38994u, 0u, false), 4294967295u, _wgslsmith_clamp_u32(arg_0.x, u_input.a.x, 1u), _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.a.x, 0u), ~u_input.a.x)), vec4<u32>(31258u, reverseBits(44574u << (1u % 32u)), 1u, u_input.a.x) ^ max((vec4<u32>(0u, 0u, 4294967295u, u_input.a.x) & vec4<u32>(34531u, arg_2, arg_0.x, 4294967295u)) & _wgslsmith_mod_vec4_u32(vec4<u32>(1u, arg_2, arg_2, 4294967295u), vec4<u32>(63276u, 21375u, 0u, 0u)), max(vec4<u32>(87845u, u_input.a.x, u_input.a.x, 38189u), vec4<u32>(940u, arg_0.x, arg_0.x, arg_0.x)) & ~vec4<u32>(55977u, arg_0.x, 0u, 27059u)));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: i32) -> vec4<u32> {
    var var_0 = Struct_1(vec2<u32>(1u, ~u_input.a.x), _wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(110324u, 18836u, u_input.a.x, 1u), abs(vec4<u32>(5411u, 127298u, 0u, 6346u))), _wgslsmith_mult_u32(u_input.a.x, ~(~u_input.a.x))));
    return ~func_3(vec2<u32>(_wgslsmith_div_u32(0u, 19662u), u_input.a.x), Struct_3(false, vec3<bool>(true, !arg_0, arg_0), _wgslsmith_div_vec3_i32(vec3<i32>(48905i, arg_1, arg_1), vec3<i32>(2147483647i, arg_2, -1i) << (vec3<u32>(var_0.b, 0u, 0u) % vec3<u32>(32u)))), ~53552u);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_3) -> vec2<f32> {
    global0 = array<Struct_3, 14>();
    var var_0 = ~abs(max(~func_2(arg_0.x, 0i, -40168i), (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u) & vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 40855u)) & (vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x) | vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 1u))));
    global0 = array<Struct_3, 14>();
    let var_1 = Struct_2(!vec2<bool>(all(select(vec3<bool>(arg_1.b.x, arg_1.a, true), arg_1.b, arg_1.b.x)), true & any(vec3<bool>(false, arg_0.x, true))));
    let var_2 = -arg_1.c.x;
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(729f - -525f), _wgslsmith_f_op_f32(min(979f, -254f)))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1509f * 1001f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1954f), -917f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-849f * -277f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(2531f, 684f))))))));
}

fn func_4(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_3(true, select(vec3<bool>(true, true, true), vec3<bool>(_wgslsmith_f_op_f32(-arg_0.x) >= _wgslsmith_f_op_f32(arg_0.x * arg_0.x), true, false), false), ~vec3<i32>(-49625i, (i32(-1i) * -34736i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(25413u, 0u, u_input.a.x, 0u), vec4<u32>(u_input.a.x, 1u, u_input.a.x, 41447u)) % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(-10018i, -2147483647i), min(vec2<i32>(-1i, -19389i), vec2<i32>(-27145i, 2147483647i)))));
    var var_1 = countOneBits(~firstTrailingBit(u_input.a.x));
    global0 = array<Struct_3, 14>();
    let var_2 = Struct_1(~u_input.a, u_input.a.x);
    let var_3 = 1000f;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_1(vec2<bool>(true, false), global0[_wgslsmith_index_u32(u_input.a.x, 14u)])))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-545f, 163f) + vec2<f32>(1006f, 891f)), _wgslsmith_div_vec2_f32(vec2<f32>(917f, 1000f), vec2<f32>(-2371f, 635f)))))));
    var_0 = Struct_1(vec2<u32>(select(~u_input.a.x, 1u, true), 1u), ~(~u_input.a.x));
    var_0 = func_4(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-551f * _wgslsmith_f_op_f32(1423f + 1181f)) + -376f), _wgslsmith_f_op_f32(f32(-1f) * -868f)));
    let var_1 = Struct_2(vec2<bool>(true, true));
    var var_2 = !vec3<bool>(false, !var_1.a.x, var_1.a.x);
    var_2 = vec3<bool>(!any(select(vec4<bool>(false, var_2.x, var_1.a.x, var_2.x), !vec4<bool>(false, var_2.x, true, false), any(vec3<bool>(var_1.a.x, true, false)))), -334f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(169f, _wgslsmith_f_op_f32(253f - -392f), true))), true);
    var var_3 = -209f;
    var var_4 = select(vec3<bool>(false | var_2.x, true, true), !vec3<bool>(!(!var_1.a.x), true, true), !select(!select(vec3<bool>(var_1.a.x, var_2.x, var_2.x), vec3<bool>(var_1.a.x, true, true), var_2.x), !select(vec3<bool>(var_1.a.x, true, var_2.x), vec3<bool>(false, true, var_1.a.x), vec3<bool>(var_1.a.x, var_2.x, true)), vec3<bool>(var_2.x, select(var_1.a.x, var_2.x, var_2.x), false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-675f, 244f), _wgslsmith_f_op_f32(step(1145f, 2775f)), 114f))), vec3<i32>(select(select(~0i, -31110i, false), ~(-2147483647i), var_2.x), -2147483647i, ~(~39534i)), vec3<i32>(~_wgslsmith_clamp_i32(1i, 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, 1i, 1i), vec4<i32>(0i, -11322i, -23107i, 2147483647i))), 2147483647i, -14747i | (0i << (var_0.b % 32u))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1142f))), _wgslsmith_div_f32(552f, 656f)), (~(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x) >> (vec4<u32>(var_0.a.x, 54904u, u_input.a.x, 45416u) % vec4<u32>(32u))) | ~(~vec4<u32>(1u, 1u, 14520u, u_input.a.x))) ^ vec4<u32>(u_input.a.x, min(var_0.b, 28428u), u_input.a.x, max(~var_0.a.x, ~var_0.a.x)));
}

