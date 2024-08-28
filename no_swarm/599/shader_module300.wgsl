struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, 58638u, true);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> u32 {
    global0 = Struct_1(!all(vec3<bool>(true, global0.b <= 16813u, true)), ~(global0.b ^ 1u), false);
    global0 = Struct_1((arg_0.a.c.x | arg_1.c.x) || (_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1928f + -790f))) == 1f), arg_1.b.x, true);
    global0 = Struct_1(!(!any(!vec4<bool>(arg_1.c.x, true, arg_0.a.c.x, true))), (~_wgslsmith_dot_vec2_u32(vec2<u32>(21891u, u_input.a), arg_0.a.b.zx) >> (arg_1.b.x % 32u)) & countOneBits(~22424u ^ select(4294967295u, 0u, false)), false);
    var var_0 = vec4<u32>(~51724u, 14646u, _wgslsmith_sub_u32(~23119u, ~(arg_1.b.x ^ 74222u)), 27686u);
    let var_1 = vec2<bool>(!(0i > min(reverseBits(u_input.c.x), -u_input.b.x)), false);
    return u_input.a;
}

fn func_2() -> vec3<bool> {
    var var_0 = vec2<u32>(func_3(Struct_3(Struct_2(vec3<f32>(1102f, -2971f, 401f), vec3<u32>(global0.b, u_input.a, 10862u), vec3<bool>(false, false, false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1142f, 956f, -843f, 1536f))), Struct_2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-573f, -1564f, -564f))), firstLeadingBit(vec3<u32>(global0.b, 0u, global0.b)), vec3<bool>(false, false, global0.c))) >> (~global0.b % 32u), u_input.a);
    var var_1 = ~vec4<i32>(u_input.b.x, _wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, -42129i), abs(~vec2<i32>(u_input.c.x, 32884i))), 2147483647i, u_input.c.x);
    var_0 = vec2<u32>(4294967295u & ~(_wgslsmith_mod_u32(1u, 4294967295u) ^ ~global0.b), _wgslsmith_mod_u32(var_0.x, var_0.x));
    let var_2 = ~(~select(firstTrailingBit(u_input.a), func_3(Struct_3(Struct_2(vec3<f32>(-131f, -1000f, 505f), vec3<u32>(global0.b, u_input.a, var_0.x), vec3<bool>(true, global0.c, true)), vec4<f32>(-195f, -652f, -1282f, 143f)), Struct_2(vec3<f32>(760f, 667f, -212f), vec3<u32>(24205u, 63712u, u_input.a), vec3<bool>(true, true, false))), true));
    var_0 = _wgslsmith_sub_vec2_u32(~(firstLeadingBit(vec2<u32>(1u, 1u)) ^ ~vec2<u32>(1u, global0.b)), firstTrailingBit(~(~vec2<u32>(0u, var_0.x)))) & abs(reverseBits(max(_wgslsmith_div_vec2_u32(vec2<u32>(65432u, u_input.a), vec2<u32>(u_input.a, 4294967295u)), vec2<u32>(4294967295u, 0u))));
    return select(vec3<bool>(!any(!vec3<bool>(true, global0.a, true)), false, ~(-40157i) >= _wgslsmith_mult_i32(-31975i | var_1.x, firstLeadingBit(1i))), select(vec3<bool>(all(vec2<bool>(true, false)) && (true & global0.c), true, global0.c), !select(!vec3<bool>(global0.a, global0.c, global0.a), vec3<bool>(true, true, true), var_1.x >= u_input.c.x), global0.a), vec3<bool>(all(!vec2<bool>(global0.a, false)), global0.c, true));
}

fn func_4(arg_0: u32, arg_1: bool) -> Struct_3 {
    global0 = Struct_1(arg_1, _wgslsmith_div_u32(_wgslsmith_div_u32(firstLeadingBit(global0.b ^ arg_0), max(u_input.a, countOneBits(arg_0))), 3386u), func_2().x);
    global0 = Struct_1(true, ~global0.b, all(select(!vec4<bool>(false, arg_1, global0.c, arg_1), select(vec4<bool>(false, global0.a, arg_1, true), !vec4<bool>(arg_1, true, global0.c, false), select(vec4<bool>(arg_1, arg_1, true, false), vec4<bool>(false, false, true, arg_1), global0.c)), all(vec3<bool>(true, false, false)))));
    var var_0 = arg_0;
    let var_1 = ~_wgslsmith_mult_u32(arg_0, u_input.a);
    let var_2 = Struct_1(all(vec2<bool>(any(select(vec4<bool>(global0.a, true, arg_1, global0.c), vec4<bool>(global0.a, global0.a, false, arg_1), false)), all(vec4<bool>(global0.c, arg_1, true, false)))), select(~(~var_1), var_1, (u_input.c.x <= -1i) != (true & global0.c)) ^ ((~arg_0 & min(19812u, 4294967295u)) ^ 0u), false);
    return Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-206f, 1833f, -1000f), vec3<f32>(-1000f, 250f, -145f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-162f, -449f, 1535f))), _wgslsmith_add_vec3_u32(select(countOneBits(vec3<u32>(1u, 337u, var_1)), ~vec3<u32>(18986u, 0u, var_2.b), func_2()), ~vec3<u32>(2388u, var_2.b, u_input.a)), !select(!vec3<bool>(true, var_2.a, global0.a), !vec3<bool>(arg_1, false, global0.a), true)), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-489f)) + _wgslsmith_f_op_f32(select(1000f, 2040f, arg_1))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(674f - -530f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -438f)))), 719f, _wgslsmith_f_op_f32(round(-744f))));
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    return func_4(arg_0.b.x & reverseBits(4294967295u), all(func_2()));
}

fn func_5(arg_0: Struct_4) -> vec3<i32> {
    var var_0 = arg_0.a.a.c;
    let var_1 = reverseBits(u_input.c);
    let var_2 = func_4(~_wgslsmith_clamp_u32(1u, ~firstLeadingBit(u_input.a), arg_0.a.a.b.x), func_3(arg_0.a, func_4(func_4(u_input.a, true).a.b.x, !arg_0.a.a.c.x).a) > _wgslsmith_mult_u32(u_input.a, ~max(71520u, 31343u))).a.c;
    var_0 = vec3<bool>(false, !any(func_2()), false);
    let var_3 = 311f;
    return vec3<i32>(_wgslsmith_add_i32(select(u_input.b.x, i32(-1i) * -1i, var_1.x == 6989i) | -_wgslsmith_mod_i32(var_1.x, var_1.x), var_1.x), var_1.x, -var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(true, ~_wgslsmith_mod_u32(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global0.b), vec2<u32>(41417u, 1u))), u_input.a), global0.a == global0.c);
    let x = u_input.a;
    s_output = StorageBuffer(-func_5(Struct_4(func_1(Struct_2(vec3<f32>(-331f, -1786f, -429f), vec3<u32>(12930u, 29994u, 4294967295u), vec3<bool>(false, global0.a, true))))), -484f, u_input.c.x & ~u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -382f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -583f) - -304f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(414f, 1538f))))) * _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1046f - 1934f)))))));
}

