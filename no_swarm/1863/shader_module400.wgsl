struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> u32 {
    return min(u_input.b, u_input.b);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: vec3<i32>, arg_3: Struct_3) -> u32 {
    var var_0 = ~min(vec3<i32>(_wgslsmith_mult_i32(i32(-1i) * -1i, countOneBits(arg_2.x)), -arg_2.x, u_input.a), -arg_3.a);
    var_0 = vec3<i32>(-5603i, firstTrailingBit(var_0.x), 57049i);
    var var_1 = arg_3.c;
    var var_2 = Struct_2(arg_3.c, arg_3.c);
    let var_3 = Struct_2(arg_3.c, var_2.b);
    return u_input.b;
}

fn func_2(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: vec2<bool>) -> bool {
    let var_0 = vec2<i32>(max(_wgslsmith_add_i32(arg_2.a.x, arg_2.c.b), ~_wgslsmith_sub_i32(_wgslsmith_add_i32(arg_2.a.x, arg_0.c.b), -2147483647i)), i32(-1i) * -_wgslsmith_mult_i32(u_input.a, min(-39864i, -2147483647i)));
    var var_1 = Struct_1(~22426i << (_wgslsmith_sub_u32(_wgslsmith_sub_u32(func_3(vec2<f32>(-917f, -444f), vec3<bool>(true, arg_3.x, true), vec3<i32>(var_0.x, 19542i, arg_2.c.b), Struct_3(vec3<i32>(u_input.a, var_0.x, -5233i), arg_1.x, arg_2.c)), arg_1.x), arg_2.b) % 32u), firstTrailingBit(_wgslsmith_add_i32(u_input.a, -24144i)), (1i >> ((1u >> (~arg_1.x % 32u)) % 32u)) <= 3035i, false);
    let var_2 = Struct_2(arg_2.c, Struct_1(reverseBits(var_1.b), _wgslsmith_mod_i32(-1i, -22455i), all(!vec2<bool>(arg_2.c.d, var_1.c)), any(!(!vec4<bool>(true, arg_0.c.c, arg_3.x, false)))));
    return all(!vec2<bool>(true, arg_2.c.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u) << (vec2<u32>(u_input.b, 34305u) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 1u))), _wgslsmith_clamp_u32(0u, 1u, u_input.b & 10011u), max(u_input.b, 0u), _wgslsmith_mod_u32(u_input.b, 0u) ^ select(u_input.b, u_input.b, false)) | (select(select(vec4<u32>(u_input.b, u_input.b, u_input.b, 43831u), vec4<u32>(u_input.b, u_input.b, 33349u, 81600u), false), ~vec4<u32>(u_input.b, 62865u, 0u, 4294967295u), true) ^ (~vec4<u32>(u_input.b, 5044u, u_input.b, u_input.b) << (vec4<u32>(27691u, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u)))), ~reverseBits(vec4<u32>(u_input.b, u_input.b, u_input.b ^ 47545u, _wgslsmith_mult_u32(28559u, u_input.b))));
    var var_1 = vec2<u32>(~22099u, func_1());
    let var_2 = Struct_2(Struct_1(firstTrailingBit(2147483647i), -2147483647i, true, false && func_2(Struct_3(vec3<i32>(33286i, u_input.a, u_input.a), 35518u, Struct_1(-7950i, u_input.a, false, true)), var_0.yw, Struct_3(vec3<i32>(-24447i, u_input.a, u_input.a), u_input.b, Struct_1(u_input.a, u_input.a, true, false)), vec2<bool>(false, false))), Struct_1(abs(12683i), min(u_input.a, -u_input.a), true, all(vec3<bool>(true, false, true))));
    var_1 = min(var_0.yw, vec2<u32>(_wgslsmith_dot_vec2_u32(var_0.zx, _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 48412u), var_0.xx)) ^ var_1.x, 26982u));
    var var_3 = var_0.zzz ^ min(var_0.xww, var_0.zzy);
    let x = u_input.a;
    s_output = StorageBuffer(max(select(select(countOneBits(vec2<i32>(-14999i, var_2.b.a)), vec2<i32>(7596i, u_input.a), vec2<bool>(var_2.a.d, var_2.b.d)), vec2<i32>(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(3205i, 2147483647i), vec2<i32>(55096i, -2147483647i))), var_2.a.c), _wgslsmith_sub_vec2_i32(min(firstLeadingBit(vec2<i32>(-15699i, -1i)), vec2<i32>(var_2.a.b, 2147483647i)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(0i, 2147483647i)) ^ -vec2<i32>(0i, 15150i))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, -1000f, -200f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(2620f, 368f, 743f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-415f, 981f, -924f))), true)))));
}

