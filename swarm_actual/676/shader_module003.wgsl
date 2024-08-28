struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1457i, 24405i, 50193i, 0i);

var<private> global1: vec4<u32>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    return select(_wgslsmith_div_u32(~_wgslsmith_clamp_u32(u_input.c, arg_0.a.x, 5823u), _wgslsmith_dot_vec3_u32(select(global1.zzw, vec3<u32>(1u, u_input.c, global1.x), vec3<bool>(false, true, true)), ~global1.wxx)) & arg_0.a.x, _wgslsmith_mod_u32(1u, arg_0.a.x), false);
}

fn func_2(arg_0: i32) -> f32 {
    global1 = vec4<u32>(55686u, reverseBits(u_input.a), _wgslsmith_mod_u32(~u_input.a, u_input.c), _wgslsmith_sub_u32(func_3(Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(global1.x, 1u), u_input.d.yx))), _wgslsmith_dot_vec2_u32(~global1.xy, vec2<u32>(u_input.c | u_input.c, _wgslsmith_dot_vec2_u32(u_input.e.zz, global1.yy)))));
    var var_0 = vec4<bool>(true, all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, any(vec4<bool>(false, true, false, true))), false | select(false, true, true))), true, all(vec4<bool>(true, true, true, true)));
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1670f)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -682f)))), 1500f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(abs(711f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(1605f)), 1148f))))));
    let var_2 = Struct_1(vec2<u32>(~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(0u, 11517u, global1.x, u_input.d.x)), select(u_input.e, vec4<u32>(35620u, u_input.c, 6561u, global1.x), vec4<bool>(false, true, var_0.x, true))), _wgslsmith_mult_u32((u_input.e.x << (u_input.a % 32u)) >> (4294967295u % 32u), global1.x)));
    global0 = -vec4<i32>(2147483647i, _wgslsmith_add_i32(2147483647i | global0.x, 0i), 25711i, i32(-1i) * -17551i) << (reverseBits(vec4<u32>(13471u, abs(_wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(4294967295u, var_2.a.x, 18660u, 9781u))), select(10312u, 0u, var_0.x), 1u)) % vec4<u32>(32u));
    return var_1.x;
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: u32) -> Struct_1 {
    global1 = u_input.e;
    var var_0 = 22215u;
    let var_1 = Struct_1(~global1.zx);
    global0 = ~(~_wgslsmith_div_vec4_i32(~vec4<i32>(1i, 344i, 12623i, u_input.b.x), ~vec4<i32>(2147483647i, global0.x, u_input.b.x, 32884i)) >> (u_input.e % vec4<u32>(32u)));
    var var_2 = !vec2<bool>(_wgslsmith_f_op_f32(func_2(global0.x ^ u_input.b.x)) >= -1000f, all(vec2<bool>(arg_0, true)));
    return var_1;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_1 {
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> bool {
    var var_0 = Struct_1(u_input.e.zx);
    var var_1 = func_1(false, ~(~(~vec2<u32>(u_input.d.x, 2578u))) & reverseBits(~_wgslsmith_sub_vec2_u32(u_input.d.xz, vec2<u32>(arg_1, 0u))), global1.x);
    let var_2 = 20618u == arg_1;
    var var_3 = vec4<bool>(all(!select(select(vec2<bool>(true, var_2), vec2<bool>(var_2, false), var_2), vec2<bool>(var_2, var_2), any(vec3<bool>(false, false, false)))), all(select(select(!vec2<bool>(var_2, false), !vec2<bool>(var_2, false), !var_2), vec2<bool>(!var_2, var_2), true)), any(select(select(select(vec2<bool>(var_2, var_2), vec2<bool>(var_2, false), false), vec2<bool>(var_2, false), vec2<bool>(var_2, var_2)), !(!vec2<bool>(true, var_2)), !(!vec2<bool>(var_2, var_2)))), !(!var_2));
    var_1 = Struct_1(vec2<u32>(~countOneBits(var_0.a.x), ~var_1.a.x));
    return all(!(!select(select(vec4<bool>(true, true, var_2, true), vec4<bool>(false, var_3.x, var_2, var_2), vec4<bool>(var_2, false, false, var_3.x)), vec4<bool>(var_2, var_2, var_3.x, var_2), select(vec4<bool>(var_2, true, true, var_3.x), vec4<bool>(false, var_3.x, var_3.x, false), vec4<bool>(false, false, var_2, var_2)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(firstLeadingBit(countOneBits(2150u >> (u_input.c % 32u))) <= 4294967295u, true, select(func_5(func_4(vec3<u32>(17u, 0u, 4294967295u) ^ vec3<u32>(global1.x, u_input.c, global1.x), func_1(false, global1.zy, 31530u)), global1.x), true, any(vec2<bool>(true, true))), any(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true))));
    var var_1 = func_1(select(true, !any(!var_0.wzw), (-u_input.b.x < u_input.b.x) | any(vec2<bool>(var_0.x, true))), global1.yy, reverseBits(~max(_wgslsmith_div_u32(4294967295u, 4294967295u), 12983u)));
    var_1 = Struct_1(vec2<u32>(~var_1.a.x, ~_wgslsmith_mult_u32(4294967295u, global1.x) >> (~firstTrailingBit(global1.x) % 32u)));
    var var_2 = global1.x <= (~(~(6780u ^ u_input.e.x)) & u_input.d.x);
    var_1 = Struct_1(global1.zy);
    var var_3 = var_0.wy;
    var var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(949f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(429f - 519f), _wgslsmith_f_op_f32(f32(-1f) * -434f)))), -1193f, true));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -394f), _wgslsmith_f_op_f32(401f + -422f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1038f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(547f, -1000f)), _wgslsmith_f_op_f32(-1000f * -1588f), !var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -347f) * _wgslsmith_f_op_f32(floor(-1037f)))), -2147483647i, ~(var_1.a.x >> (var_1.a.x % 32u)), reverseBits(vec3<i32>(global0.x, 20981i, -2147483647i & u_input.b.x)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1035f, _wgslsmith_f_op_f32(f32(-1f) * -240f)) - _wgslsmith_f_op_f32(-2021f + 1714f)), _wgslsmith_f_op_f32(abs(-1250f))));
}

