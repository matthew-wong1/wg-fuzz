struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>) -> vec2<bool> {
    let var_0 = Struct_3((select(vec3<i32>(31268i, 2147483647i, 10050i), firstTrailingBit(vec3<i32>(-1i, -7605i, -2147483647i)), false) >> (_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b, u_input.b, u_input.b), firstLeadingBit(vec3<u32>(u_input.b, 16435u, u_input.a.x))) % vec3<u32>(32u))) & vec3<i32>(-1i, countOneBits(-1i), 1i), Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -727f), arg_0.x, ~70471i)), -vec3<i32>(22420i, 17684i, _wgslsmith_mult_i32(1i, max(-1i, -2147483647i))));
    var var_1 = _wgslsmith_f_op_f32(min(var_0.b.a.a, _wgslsmith_f_op_f32(-622f - -125f)));
    let var_2 = 2353f;
    var var_3 = var_0.a.x;
    var_3 = 1i;
    return !vec2<bool>(true, var_0.b.a.b || !select(var_0.b.a.b, var_0.b.a.b, var_0.b.a.b));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: Struct_1) -> u32 {
    let var_0 = reverseBits(vec4<u32>(min(u_input.b, abs(u_input.a.x >> (1u % 32u))), u_input.a.x, ~(~firstTrailingBit(0u)), u_input.b));
    let var_1 = Struct_2(Struct_1(-1298f, any(select(vec2<bool>(true, true), !vec2<bool>(arg_2.b, arg_2.b), func_3(vec2<bool>(true, false)))), _wgslsmith_add_i32(abs(-arg_2.c), -_wgslsmith_add_i32(1i, -1i))));
    var var_2 = Struct_3(arg_0, Struct_2(arg_2), arg_0 ^ vec3<i32>(-(2147483647i >> (u_input.b % 32u)), -3437i, -2147483647i));
    var var_3 = ~vec4<i32>(0i, -50342i, arg_0.x, -7663i);
    var var_4 = Struct_3(var_3.zzx & -arg_0, var_2.b, ~(-(~vec3<i32>(var_2.a.x, var_2.a.x, var_3.x)) >> (~vec3<u32>(0u, 36541u, 4294967295u) % vec3<u32>(32u))));
    return var_0.x ^ (~_wgslsmith_add_u32(1u, ~var_0.x) | u_input.b);
}

fn func_1(arg_0: u32) -> StorageBuffer {
    global0 = 341u;
    global0 = select(arg_0, arg_0, select(true, true, all(vec3<bool>(true, true, true)) || false));
    let var_0 = ~_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, 0u, arg_0) & vec4<u32>(arg_0, u_input.a.x, u_input.b, u_input.b)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, arg_0, 0u, u_input.b), vec4<u32>(arg_0, 33923u, u_input.a.x, 39159u)) & vec4<u32>(20217u, 4294967295u, 0u, 12685u)) & _wgslsmith_clamp_vec4_u32(vec4<u32>(~func_2(vec3<i32>(2147483647i, -1i, -48861i), vec2<i32>(38534i, 36186i), Struct_1(-1431f, false, -2147483647i)), u_input.a.x, arg_0, firstLeadingBit(u_input.a.x)), vec4<u32>(abs(func_2(vec3<i32>(4485i, 2147483647i, -2147483647i), vec2<i32>(14128i, -1i), Struct_1(831f, true, -1i))), u_input.a.x, arg_0, ~_wgslsmith_sub_u32(20018u, u_input.b)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b ^ 15628u, 1u, arg_0, firstLeadingBit(u_input.a.x)), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 89829u, 47788u, 51460u), vec4<u32>(70160u, u_input.a.x, u_input.b, u_input.b), vec4<u32>(4294967295u, 10716u, 43848u, u_input.b)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, arg_0, u_input.a.x, 4294967295u), vec4<u32>(1u, 52197u, arg_0, 57337u)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)))));
    var var_1 = u_input.a;
    return StorageBuffer(~_wgslsmith_dot_vec4_i32(~min(vec4<i32>(-2147483647i, 87868i, 2147483647i, -2147483647i), vec4<i32>(0i, -1i, -2147483647i, 77522i)), max(firstLeadingBit(vec4<i32>(2147483647i, 0i, -1i, -35837i)), vec4<i32>(24878i, 5290i, -51012i, 2147483647i))), countOneBits(vec4<i32>(-(~57959i), -1i, -(~(-28008i)), -2147483647i >> (_wgslsmith_dot_vec2_u32(var_0.yz, vec2<u32>(arg_0, 9100u)) % 32u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(-1235f - _wgslsmith_f_op_f32(abs(-889f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), ~u_input.a.x, ~97376u, 5142u) | vec4<u32>(~1u, _wgslsmith_mult_u32(4294967295u, u_input.b), ~13275u, ~33234u), vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.b), 1u, 39138u, 7860u)));
}

