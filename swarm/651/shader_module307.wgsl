struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 31> = array<vec2<u32>, 31>(vec2<u32>(4294967295u, 0u), vec2<u32>(119928u, 61414u), vec2<u32>(1u, 89838u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(3901u, 3596u), vec2<u32>(26924u, 15621u), vec2<u32>(16140u, 0u), vec2<u32>(42901u, 0u), vec2<u32>(27102u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 21133u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 56605u), vec2<u32>(21476u, 4294967295u), vec2<u32>(4294967295u, 16053u), vec2<u32>(21401u, 7065u), vec2<u32>(76291u, 19098u), vec2<u32>(0u, 20097u), vec2<u32>(0u, 1u), vec2<u32>(18431u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(38450u, 4294967295u), vec2<u32>(13824u, 1u), vec2<u32>(24416u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 0u), vec2<u32>(1u, 48471u), vec2<u32>(1u, 88593u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: i32) -> i32 {
    global0 = array<vec2<u32>, 31>();
    var var_0 = Struct_1(true);
    global0 = array<vec2<u32>, 31>();
    var_0 = Struct_1(any(vec3<bool>(true, any(!vec3<bool>(var_0.a, true, true)), !any(vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a)))));
    var var_1 = Struct_1(var_0.a);
    return u_input.b.x;
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_mult_i32(-(~u_input.c.x), 3340i);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1376f);
    let var_2 = Struct_1(-419f <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -195f), _wgslsmith_f_op_f32(-742f * -1004f))))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-775f, _wgslsmith_f_op_f32(min(-351f, -1000f)))) - 1072f) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1669f)))));
    var var_4 = -159f;
    return u_input.a;
}

fn func_1() -> vec4<u32> {
    var var_0 = vec2<i32>(_wgslsmith_div_i32(~_wgslsmith_mod_i32(-2147483647i, -1i), func_2(-2147483647i) & _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(u_input.b.x, 2147483647i, 1i, u_input.b.x))), 1i) >> (reverseBits(abs(u_input.d)) % vec2<u32>(32u));
    global0 = array<vec2<u32>, 31>();
    global0 = array<vec2<u32>, 31>();
    var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(-min(-2147483647i, var_0.x), ~var_0.x), ~(-(~u_input.b.zz)));
    global0 = array<vec2<u32>, 31>();
    return vec4<u32>(func_3(), func_3(), 41016u, ~1u);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: bool) -> i32 {
    global0 = array<vec2<u32>, 31>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-441f, 887f, -1030f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(470f, _wgslsmith_f_op_f32(sign(-318f)), -650f), vec3<f32>(_wgslsmith_f_op_f32(-1389f * 857f), _wgslsmith_f_op_f32(-107f + -607f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1690f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -682f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(349f)))))));
    var var_1 = arg_0;
    var_1 = Struct_1(~_wgslsmith_add_i32(firstTrailingBit(-23938i), firstTrailingBit(u_input.b.x)) == u_input.b.x);
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -899f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1534f), -452f)) + 908f), (~1u | (u_input.d.x << (arg_1.x % 32u))) >= (4294967295u >> (u_input.a % 32u))))));
    return firstTrailingBit(20166i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(all(vec4<bool>(true, true, false, true)) && true), func_1(), true) ^ -abs(u_input.b.x ^ u_input.b.x);
    global0 = array<vec2<u32>, 31>();
    global0 = array<vec2<u32>, 31>();
    var var_1 = Struct_1(_wgslsmith_mult_i32(~reverseBits(0i), _wgslsmith_clamp_i32(u_input.b.x, -12652i, -2147483647i)) == u_input.c.x);
    var_1 = Struct_1(u_input.c.x >= func_4(Struct_1(u_input.a != 58831u), ~vec4<u32>(13912u, u_input.d.x, 75168u, u_input.a) | vec4<u32>(u_input.a, 4294967295u, u_input.d.x, 13055u), var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.yz);
}

