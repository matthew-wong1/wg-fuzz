struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec4<u32>) -> bool {
    return true;
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    var var_0 = Struct_2(u_input.e, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1659f) - _wgslsmith_f_op_f32(abs(1626f))), _wgslsmith_f_op_f32(select(-2014f, -1203f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -105f)))), arg_0.x);
    let var_1 = Struct_2(1u, var_0.b, _wgslsmith_clamp_i32(min(-arg_0.x, var_0.c), 32010i, _wgslsmith_mod_i32(-1i, -var_0.c) | _wgslsmith_div_i32(-18552i, _wgslsmith_dot_vec2_i32(arg_0, arg_0))));
    return max(_wgslsmith_add_u32(~(~(0u | var_0.a)), _wgslsmith_mult_u32(~4294967295u, 1u)), ~var_1.a);
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    let var_0 = vec3<bool>(true, all(arg_0.yxy) || arg_0.x, arg_0.x);
    let var_1 = _wgslsmith_dot_vec3_u32(u_input.d, abs(u_input.d));
    let var_2 = ~5668u;
    var var_3 = 18161i != u_input.a;
    var_3 = 12953i < ((1i | (30318i >> (abs(var_2) % 32u))) & u_input.a);
    return var_1;
}

fn func_4(arg_0: bool, arg_1: vec3<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(abs(_wgslsmith_div_i32(u_input.b, _wgslsmith_clamp_i32(u_input.a, u_input.b, u_input.a))), max(min(u_input.a, _wgslsmith_div_i32(u_input.a, u_input.a)), u_input.b)), ~vec2<i32>(15408i, min(u_input.a, -1i)) << (vec2<u32>(func_3(select(vec4<bool>(true, false, arg_0, arg_0), vec4<bool>(true, false, true, arg_0), vec4<bool>(true, arg_0, arg_0, arg_0))), arg_1.x) % vec2<u32>(32u)));
    var_0 = vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(i32(-1i) * -28124i, _wgslsmith_sub_i32(u_input.a, u_input.b), 68394i << (u_input.c % 32u), -2147483647i), _wgslsmith_add_vec4_i32(~vec4<i32>(37480i, 2147483647i, 2147483647i, 22884i) | vec4<i32>(-1i, u_input.b, 17657i, var_0.x), vec4<i32>(3058i, _wgslsmith_dot_vec4_i32(vec4<i32>(33608i, var_0.x, -17329i, -1i), vec4<i32>(-8659i, u_input.b, -1i, var_0.x)), var_0.x ^ var_0.x, firstTrailingBit(var_0.x)))), u_input.a);
    var var_1 = vec2<i32>(-1i) * -(countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(u_input.b, u_input.a))) ^ ~_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 35687i), vec2<i32>(var_0.x, 32259i), vec2<i32>(-39061i, var_0.x)));
    var_1 = ~(-_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.x, 35316i), vec2<i32>(48643i, u_input.b) >> (vec2<u32>(arg_1.x, u_input.d.x) % vec2<u32>(32u)))) >> (firstTrailingBit(select(arg_1.zz, ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(8589u, 18448u)), select(vec2<bool>(false, false), vec2<bool>(arg_0, arg_0), any(vec3<bool>(arg_0, arg_0, true))))) % vec2<u32>(32u));
    let var_2 = u_input.a;
    return Struct_2(1u, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-526f, -1670f, 1000f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(121f, 1333f, -411f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(242f, 734f, 1186f) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(541f, -923f, 530f))))))), -22449i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4((true || (-u_input.b == u_input.a)) | select(all(vec4<bool>(true, true, true, true)), false, !func_1(vec4<u32>(u_input.c, 31551u, u_input.c, 38561u))), select(vec3<u32>(1u, ~u_input.d.x, func_2(vec2<i32>(u_input.a, u_input.b))) >> (_wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(0u, u_input.d.x, u_input.e)), u_input.d) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(abs(u_input.e), firstLeadingBit(4294967295u), min(14910u, 1u)), select(countOneBits(vec3<u32>(4294967295u, u_input.c, 0u)), u_input.d ^ vec3<u32>(58427u, u_input.e, u_input.c), any(vec2<bool>(false, false)))), !(func_3(vec4<bool>(false, true, false, false)) == firstLeadingBit(u_input.e))));
    var var_1 = select(select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), any(vec2<bool>(true, true))), select(vec2<bool>(false, false), vec2<bool>(true, true), false), false), select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true)), true), false), !(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(false, true))), vec2<bool>(!select(false, true, true), any(select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true)), true))));
    let var_2 = Struct_1(-u_input.a, _wgslsmith_dot_vec4_u32(min(~vec4<u32>(u_input.d.x, 1u, u_input.c, var_0.a), vec4<u32>(0u, var_0.a, 57498u, 4294967295u)), ~vec4<u32>(var_0.a, 1u, u_input.d.x, 1u)) | 1u, -(~_wgslsmith_sub_i32(~u_input.a, 94211i)), vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(-38323i, 1i), -2147483647i), u_input.b) >> (u_input.d.zy % vec2<u32>(32u)));
    let var_3 = ~_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 1u, var_2.b, 41495u), abs(vec4<u32>(var_0.a, 0u, 54364u, u_input.e)), (vec4<u32>(var_2.b, 0u, var_0.a, 19286u) >> (vec4<u32>(var_0.a, var_2.b, u_input.e, u_input.d.x) % vec4<u32>(32u))) >> (~vec4<u32>(0u, var_2.b, var_2.b, 4294967295u) % vec4<u32>(32u))), ~abs(vec4<u32>(var_0.a, 4294967295u, var_2.b, u_input.e)));
    let var_4 = Struct_1(u_input.b, 21429u, _wgslsmith_dot_vec2_i32(vec2<i32>(-15808i, _wgslsmith_div_i32(-var_2.c, ~(-1i))), vec2<i32>(~max(1i, -96467i), -countOneBits(29898i))), var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_0.b.xx), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-736f * _wgslsmith_f_op_f32(var_0.b.x * var_0.b.x)))), func_4(((2147483647i >= var_0.c) & !var_1.x) & var_1.x, u_input.d).b, vec3<u32>(1u, var_4.b, abs(1u)));
}

