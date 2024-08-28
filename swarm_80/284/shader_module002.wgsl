struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 174f;

var<private> global1: Struct_1 = Struct_1(1u, vec4<bool>(false, true, true, true), 61256i, 21304u, vec2<i32>(-51973i, 2147483647i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    var var_0 = arg_0.e;
    var var_1 = arg_0;
    var var_2 = Struct_1(global1.a, global1.b, firstTrailingBit(var_1.e.x), select(arg_0.a, 61449u, !var_1.b.x), _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_0.e, -u_input.a.zy, u_input.a.yx << (vec2<u32>(global1.d, 0u) % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(firstLeadingBit(var_1.e), countOneBits(vec2<i32>(67683i, -33605i)))) | (abs(var_1.e) << (~(vec2<u32>(4294967295u, global1.a) ^ vec2<u32>(u_input.b, arg_1)) % vec2<u32>(32u))));
    let var_3 = Struct_1(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_2.d, arg_0.a, 31924u), vec4<u32>(31339u, 0u, 0u, 1u))) | countOneBits(abs(~26755u)), global1.b, -4616i, ~abs(~var_2.d), vec2<i32>(global1.e.x, _wgslsmith_div_i32(-var_1.e.x, 1i >> (1u % 32u))));
    var var_4 = Struct_1(u_input.b, var_1.b, abs(-firstTrailingBit(var_1.e.x)) << (_wgslsmith_dot_vec4_u32(min(~vec4<u32>(var_3.a, 4294967295u, var_2.a, u_input.b), vec4<u32>(27228u, var_2.d, 0u, global1.a) & vec4<u32>(4294967295u, var_2.d, 45437u, 5866u)), vec4<u32>(u_input.b, ~42844u, ~arg_1, ~var_3.a)) % 32u), var_2.d, select(vec2<i32>(-2147483647i, -2147483647i), var_3.e, !select(global1.b.zz, var_1.b.wx, vec2<bool>(true, true))));
    return var_3;
}

fn func_3() -> u32 {
    let var_0 = u_input.b;
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -987f);
    let var_1 = vec4<u32>(85566u, 35434u >> (abs(0u) % 32u), u_input.b, ~abs(~(~102572u)));
    var var_2 = select(firstLeadingBit(~(~(~var_1.x))), abs(~21140u), true);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1090f, -1598f)), _wgslsmith_f_op_f32(f32(-1f) * -260f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -905f), -555f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-141f, -1063f)))))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))))));
    return var_1.x >> (~50246u % 32u);
}

fn func_1() -> Struct_1 {
    global1 = func_2(Struct_1(select(min(_wgslsmith_mod_u32(16473u, 52140u), ~4368u), firstTrailingBit(0u), true), !global1.b, -_wgslsmith_div_i32(u_input.c, ~(-2147483647i)), u_input.b, -(vec2<i32>(-1i) * -global1.e)), _wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, 10413u), 64482u));
    let var_0 = Struct_1(func_3(), func_2(Struct_1(~firstLeadingBit(u_input.b), !vec4<bool>(false, true, true, global1.b.x), _wgslsmith_div_i32(min(global1.c, -17192i), countOneBits(global1.e.x)), 1u, -(u_input.a.zx & vec2<i32>(global1.e.x, u_input.a.x))), global1.a).b, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(13065i >> (u_input.b % 32u), reverseBits(1i)) >> (global1.a % 32u), _wgslsmith_mod_i32(firstTrailingBit(-global1.c), -u_input.a.x), _wgslsmith_div_i32(~(~u_input.a.x), global1.c)), u_input.b, _wgslsmith_sub_vec2_i32(~u_input.a.zz, vec2<i32>(1i, u_input.c)));
    var var_1 = func_2(func_2(Struct_1(~_wgslsmith_mult_u32(1u, 1u), select(vec4<bool>(global1.b.x, global1.b.x, true, false), vec4<bool>(global1.b.x, true, var_0.b.x, global1.b.x), var_0.b.x), global1.c, 1u, ~(global1.e & vec2<i32>(u_input.a.x, 1i))), ~u_input.b), ~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 28021u, u_input.b), vec3<u32>(var_0.d, 94707u, var_0.a)) | vec3<u32>(47849u, 22902u, u_input.b), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a, 28303u, 80344u), ~vec3<u32>(9277u, u_input.b, u_input.b)))).b.xy;
    var var_2 = vec4<bool>(true, !(_wgslsmith_dot_vec3_i32(select(vec3<i32>(-1i, u_input.c, u_input.a.x), vec3<i32>(-3085i, -2147483647i, -2147483647i), global1.b.x), _wgslsmith_clamp_vec3_i32(u_input.a, u_input.a, u_input.a)) <= _wgslsmith_mod_i32(_wgslsmith_add_i32(54896i, global1.c), -20183i)), true, select(all(vec2<bool>(global1.b.x, global1.a >= 0u)), var_0.b.x, false));
    global0 = -1478f;
    return func_2(var_0, func_3());
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-745f + _wgslsmith_f_op_f32(-1603f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(352f + 1329f)))));
    var var_0 = func_1();
    let var_1 = -vec4<i32>(51613i, _wgslsmith_mod_i32(0i, min(_wgslsmith_mod_i32(-2147483647i, var_0.e.x), -1i)), 17794i, -u_input.a.x);
    let var_2 = -var_1.zw;
    var var_3 = true;
    var var_4 = vec2<u32>(~u_input.b, u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x);
}

