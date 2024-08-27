struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = 260f;
    let var_1 = arg_0.c.c.yz;
    var var_2 = true;
    var_2 = true;
    return !vec4<bool>(false, var_1.x, !var_1.x && any(arg_0.c.c.xxw), arg_0.c.c.x);
}

fn func_2() -> bool {
    let var_0 = Struct_1(~(~1u), ~(~(~vec3<u32>(25862u, 0u, 16682u))) & vec3<u32>(1u, countOneBits(1u), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, 49144u, 1u), vec4<u32>(0u, 977u, 16246u, 66607u))), select(select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), false), true), func_3(Struct_2(4294967295u, true, Struct_1(1u, vec3<u32>(1u, 1u, 1u), vec4<bool>(true, false, true, true)))), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), true)), vec4<bool>(true, true, max(37299u, 0u) >= select(116572u, 15938u, false), all(vec2<bool>(true, true))), true));
    var var_1 = vec2<i32>(-(-(u_input.b.x ^ u_input.a.x) ^ _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(u_input.c.wzx, u_input.a.zyz), u_input.b.x, select(u_input.c.x, -20624i, var_0.c.x))), -2147483647i);
    var var_2 = Struct_1(_wgslsmith_sub_u32(var_0.b.x, var_0.a) & ~min(~1u, 0u), var_0.b, select(select(!var_0.c, vec4<bool>(var_0.c.x, true, all(vec3<bool>(true, false, var_0.c.x)), !var_0.c.x), any(!vec4<bool>(var_0.c.x, false, var_0.c.x, var_0.c.x))), vec4<bool>(all(vec2<bool>(var_0.c.x, var_0.c.x)), true, all(var_0.c.zz), var_0.c.x), var_0.c));
    var var_3 = Struct_2(4294967295u, select(func_3(Struct_2(31254u, false, var_0)).x || func_3(Struct_2(var_2.b.x, var_0.c.x, var_0)).x, var_2.c.x, !any(select(var_2.c.yw, var_0.c.yy, var_0.c.x))), var_0);
    var_1 = select(vec2<i32>(firstTrailingBit(-u_input.c.x), 1i), u_input.a.zw, var_2.c.xw) ^ vec2<i32>(~40251i, abs(u_input.a.x) >> (48192u % 32u));
    return select(!(!any(func_3(Struct_2(var_2.a, false, var_0)))), var_0.c.x, var_3.c.c.x);
}

fn func_1() -> i32 {
    let var_0 = all(!vec2<bool>(func_2(), !(u_input.b.x > u_input.a.x)));
    let var_1 = vec3<u32>(_wgslsmith_div_u32(abs(firstTrailingBit(4294967295u)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 57167u, 1u), vec4<u32>(9813u, 58066u, 1u, 73139u)) & 72800u) ^ 33328u, countOneBits(7116u), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(3949u, 1u, 38558u, 4294967295u), select(vec4<u32>(36354u, 66333u, 4294967295u, 12734u), vec4<u32>(17895u, 20284u, 10734u, 4294967295u), var_0)), vec4<u32>(1u, 1u, 1u, 1u)) | firstTrailingBit(_wgslsmith_sub_u32(~1u, 1u)));
    var var_2 = Struct_2(85853u, select(true, true, var_0), Struct_1(var_1.x, ~(~(~var_1)), !select(!vec4<bool>(true, false, var_0, var_0), select(vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(true, var_0, var_0, false), var_0), func_3(Struct_2(var_1.x, var_0, Struct_1(23703u, var_1, vec4<bool>(var_0, false, false, true)))))));
    let var_3 = Struct_2(1u, var_2.c.c.x, var_2.c);
    var_2 = var_3;
    return select(_wgslsmith_mod_i32(~1i, u_input.a.x), 4747i, all(vec2<bool>(!var_0, !var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), true), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), false);
    let var_1 = func_1();
    let var_2 = Struct_1(_wgslsmith_add_u32(1u, ~abs(~91855u)), vec3<u32>(reverseBits(_wgslsmith_add_u32(12842u, ~4294967295u)), 6764u, reverseBits(~1u)), select(vec4<bool>(true, all(vec3<bool>(var_0.x, var_0.x, true)) | false, select(true, all(vec3<bool>(var_0.x, false, var_0.x)), var_0.x), !var_0.x), func_3(Struct_2(0u, false, Struct_1(28481u, vec3<u32>(15035u, 120457u, 0u), vec4<bool>(true, var_0.x, true, var_0.x)))), any(vec2<bool>(true, all(vec4<bool>(false, false, var_0.x, var_0.x))))));
    let var_3 = var_2;
    let var_4 = Struct_2(select(26736u, var_3.a, var_3.c.x), any(vec2<bool>(any(vec3<bool>(false, var_3.c.x, var_0.x)), true)), Struct_1(abs(~min(1u, 1u)), ~vec3<u32>(var_2.b.x, 4294967295u, ~var_2.b.x), vec4<bool>(var_0.x, !func_2(), true, var_2.c.x)));
    var_0 = var_2.c;
    var var_5 = ~(-45073i);
    var_5 = u_input.c.x;
    let var_6 = ~var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, u_input.b.x), vec2<i32>(0i, 2147483647i)), vec2<i32>(-var_1, min(-25919i, -58160i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-286f + -306f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -816f), _wgslsmith_f_op_f32(334f + 543f), false)))));
}

