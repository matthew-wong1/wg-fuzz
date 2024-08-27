struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 11345u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec2<bool> {
    global0 = ~(~_wgslsmith_add_vec2_u32(vec2<u32>(~67596u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, global0.x, u_input.a.x), vec4<u32>(0u, 1u, u_input.a.x, 26893u))), ~vec2<u32>(41490u, global0.x)));
    var var_0 = Struct_1(false, vec4<bool>(false, select(false, true, !any(vec2<bool>(false, false))), !any(vec3<bool>(false, false, true)), true), _wgslsmith_div_i32(u_input.b, -3303i));
    global0 = ~(~_wgslsmith_sub_vec2_u32(~u_input.a, vec2<u32>(global0.x, u_input.a.x) >> (reverseBits(u_input.a) % vec2<u32>(32u))));
    global0 = _wgslsmith_sub_vec2_u32(select(select(u_input.a, _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a.x, 7586u), abs(u_input.a)), !(!var_0.b.x)), u_input.a, vec2<bool>(!(var_0.c > -2147483647i), ~5008u <= global0.x)), reverseBits(~u_input.a));
    let var_1 = false;
    return vec2<bool>(var_1, false | all(!(!vec3<bool>(var_0.b.x, true, false))));
}

fn func_2(arg_0: u32) -> Struct_1 {
    global0 = abs(~u_input.a);
    global0 = ~vec2<u32>(46840u, global0.x);
    global0 = select(~(~u_input.a), ~_wgslsmith_add_vec2_u32(max(~u_input.a, u_input.a), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(8343u, 29909u, 21037u, 85574u), vec4<u32>(global0.x, u_input.a.x, 4294967295u, global0.x)), global0.x & global0.x)), !func_3());
    var var_0 = Struct_1(any(vec3<bool>(true, true, true)), select(select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false)), true), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true))), vec4<bool>(false, true, !any(vec3<bool>(true, false, false)), true), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false)), true))), (-22611i & reverseBits(2267i & u_input.b)) | u_input.b);
    let var_1 = Struct_1(var_0.b.x | false, !select(!var_0.b, select(select(var_0.b, vec4<bool>(var_0.b.x, false, var_0.a, var_0.b.x), var_0.a), select(vec4<bool>(true, var_0.b.x, true, var_0.a), vec4<bool>(true, var_0.a, var_0.a, true), vec4<bool>(true, var_0.a, var_0.a, var_0.a)), var_0.b), select(vec4<bool>(var_0.a, false, false, false), vec4<bool>(true, true, var_0.a, var_0.b.x), vec4<bool>(true, false, false, var_0.b.x))), u_input.b);
    return var_1;
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = u_input.a.x;
    global0 = ~u_input.a;
    var_0 = min(u_input.a.x << (global0.x % 32u), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(firstLeadingBit(0u), select(1u, global0.x, arg_1.b.x), u_input.a.x)), firstTrailingBit(vec3<u32>(1u, u_input.a.x, u_input.a.x)) ^ vec3<u32>(global0.x, 1u, global0.x)));
    var_0 = u_input.a.x;
    global0 = _wgslsmith_div_vec2_u32(vec2<u32>(20243u, _wgslsmith_div_u32(~1u, u_input.a.x << (global0.x % 32u))), countOneBits(~u_input.a)) | countOneBits(select(max(u_input.a, u_input.a), ~vec2<u32>(global0.x, u_input.a.x), true));
    return func_2(global0.x).b;
}

fn func_1() -> Struct_1 {
    global0 = u_input.a;
    global0 = vec2<u32>(_wgslsmith_add_u32(~u_input.a.x, _wgslsmith_sub_u32(~(~0u), _wgslsmith_add_u32(u_input.a.x, u_input.a.x))), 10185u);
    global0 = vec2<u32>(global0.x, u_input.a.x >> (~global0.x % 32u));
    var var_0 = Struct_1(all(func_4(962f, func_2(~global0.x))), select(!(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), true)), select(func_2(~u_input.a.x).b, vec4<bool>(true, true, func_2(u_input.a.x).a, true), true), true), select(u_input.b, u_input.b, all(func_2(14760u).b)) << ((1u >> (global0.x % 32u)) % 32u));
    return Struct_1((~global0.x == ~firstTrailingBit(global0.x)) || all(!var_0.b.yxz), select(func_2(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(4294967295u, 1u, 35508u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 3677u, global0.x, 0u), vec4<u32>(1u, 27829u, u_input.a.x, 1674u)))).b, !func_4(_wgslsmith_f_op_f32(f32(-1f) * -159f), Struct_1(false, vec4<bool>(var_0.a, var_0.a, var_0.b.x, true), 59298i)), func_4(806f, Struct_1(9065i > var_0.c, !vec4<bool>(var_0.b.x, var_0.a, true, true), u_input.b))), var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<u32>(u_input.a.x, u_input.a.x);
    var var_0 = func_1();
    let var_1 = ~(select(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-2147483647i, u_input.b, 2147483647i), select(vec3<i32>(1i, u_input.b, 0i), vec3<i32>(-1i, -5294i, 1i), vec3<bool>(var_0.a, var_0.a, false)), vec3<i32>(u_input.b, 0i, -34313i) << (vec3<u32>(9049u, u_input.a.x, 0u) % vec3<u32>(32u))), vec3<i32>(~(-1i), select(2529i, 94318i, true), min(u_input.b, var_0.c)), !var_0.b.zxx) | ((_wgslsmith_mult_vec3_i32(vec3<i32>(-25120i, var_0.c, 1i), vec3<i32>(var_0.c, 28299i, u_input.b)) << (vec3<u32>(37754u, u_input.a.x, u_input.a.x) % vec3<u32>(32u))) >> (~(~vec3<u32>(6677u, global0.x, global0.x)) % vec3<u32>(32u))));
    var_0 = Struct_1(any(!(!(!vec4<bool>(true, false, true, var_0.b.x)))), !(!var_0.b), max(func_1().c, _wgslsmith_mult_i32(~(-25533i), ~var_1.x) << (u_input.a.x % 32u)));
    var_0 = func_1();
    let var_2 = func_1();
    let var_3 = vec2<i32>(-2147483647i, -max(~(u_input.b & 0i), var_2.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-763f, -1294f, 701f, 1778f)))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1208f)))))), u_input.a.x);
}

