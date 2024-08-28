struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: bool, arg_3: vec2<bool>) -> vec3<u32> {
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    let var_0 = select(select(select(vec3<bool>(false, false | arg_2, u_input.b < 0i), select(!vec3<bool>(false, false, arg_2), vec3<bool>(arg_2, false, arg_2), vec3<bool>(false, arg_3.x, false)), !any(vec4<bool>(arg_2, arg_3.x, false, false))), vec3<bool>(any(!vec3<bool>(true, true, arg_2)), select(all(vec4<bool>(arg_3.x, arg_2, arg_2, arg_3.x)), true, !arg_2), false), arg_2), !select(select(select(vec3<bool>(false, arg_3.x, arg_2), vec3<bool>(arg_3.x, false, arg_2), false), select(vec3<bool>(true, true, arg_3.x), vec3<bool>(true, arg_2, arg_3.x), vec3<bool>(arg_2, arg_3.x, arg_3.x)), select(vec3<bool>(false, true, arg_3.x), vec3<bool>(arg_2, false, arg_3.x), vec3<bool>(arg_2, false, false))), !vec3<bool>(arg_3.x, arg_2, arg_3.x), true), select(select(!vec3<bool>(arg_3.x, false, arg_2), !vec3<bool>(arg_2, arg_2, true), vec3<bool>(arg_1 != arg_1, !arg_2, true)), !select(vec3<bool>(true, arg_2, false), !vec3<bool>(arg_2, true, true), vec3<bool>(true, true, arg_3.x)), !select(!vec3<bool>(arg_3.x, arg_2, arg_2), select(vec3<bool>(true, arg_3.x, arg_2), vec3<bool>(arg_3.x, arg_3.x, arg_2), arg_3.x), select(vec3<bool>(false, false, false), vec3<bool>(arg_3.x, false, arg_3.x), false))));
    return vec3<u32>(~select(~_wgslsmith_add_u32(10858u, u_input.a.x), (u_input.a.x ^ 1u) >> (u_input.a.x % 32u), !(var_0.x & arg_2)), arg_0.x, _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(41112u, 1u), max(arg_0.x, 66385u)), firstLeadingBit(u_input.a.x) << (~u_input.a.x % 32u)) | 4294967295u);
}

fn func_2(arg_0: bool, arg_1: bool) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1925f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -805f)), _wgslsmith_f_op_f32(f32(-1f) * -2205f), _wgslsmith_f_op_f32(abs(-1682f)))) + vec4<f32>(1446f, _wgslsmith_f_op_f32(f32(-1f) * -375f), _wgslsmith_f_op_f32(sign(1765f)), _wgslsmith_f_op_f32(min(1950f, -1028f))));
    var var_1 = global0[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(~u_input.a.x, u_input.a.x)), 20u)];
    var_1 = Struct_1(select(abs(var_1.c), select(vec3<i32>(-var_1.c.x, _wgslsmith_mod_i32(u_input.b, 1i), i32(-1i) * -2147483647i), var_1.c << (func_3(vec2<u32>(var_1.b, var_1.d.x), var_0.x, true, vec2<bool>(true, false)) % vec3<u32>(32u)), !vec3<bool>(arg_0, false, arg_1)), vec3<bool>(all(vec3<bool>(arg_1, arg_0, arg_0)), true, true)), ~(~66500u) | ~_wgslsmith_div_u32(~0u, var_1.b), ~(~vec3<i32>(countOneBits(-28925i), ~var_1.e, ~(-26641i))), u_input.a.xy, 65680i);
    let var_2 = select(vec3<bool>(!arg_0, false, arg_1), select(!select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), vec3<bool>(false, arg_0, true), arg_0 && arg_1), vec3<bool>(arg_1, all(!vec4<bool>(true, false, arg_1, true)), select(arg_0, var_1.b == var_1.d.x, true)), select(!select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(arg_0, arg_0, false), false), vec3<bool>(all(vec2<bool>(arg_1, false)), true, false), vec3<bool>(!arg_1, arg_1, arg_1))), vec3<bool>(false, true, arg_0));
    var_1 = Struct_1(max(vec3<i32>(u_input.b, 13493i, countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, 1i, var_1.c.x), vec4<i32>(2147483647i, var_1.e, u_input.b, var_1.a.x)))), ~var_1.c), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(31007u, var_1.d.x, 0u), vec3<u32>(46114u, u_input.a.x, u_input.a.x)) ^ select(u_input.a.zzx, u_input.a.xzx, var_2), u_input.a.wyx), ~func_3(vec2<u32>(u_input.a.x, var_1.b), _wgslsmith_f_op_f32(f32(-1f) * -993f), any(vec3<bool>(true, true, var_2.x)), vec2<bool>(true, false)).x), ~var_1.c, ~(~u_input.a.yy), _wgslsmith_mult_i32(abs(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-2147483647i, u_input.b), -4239i)), 1i));
    return _wgslsmith_mod_vec3_u32(select(u_input.a.zwz, ~vec3<u32>(_wgslsmith_sub_u32(79511u, var_1.b), var_1.b, countOneBits(var_1.d.x)), !(u_input.a.x <= ~22636u)), u_input.a.wwz >> (~_wgslsmith_mult_vec3_u32(u_input.a.xyy << (vec3<u32>(12763u, u_input.a.x, var_1.b) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(var_1.d.x, 73865u, var_1.d.x), u_input.a.zwz)) % vec3<u32>(32u)));
}

fn func_1() -> vec3<bool> {
    var var_0 = abs(_wgslsmith_sub_vec3_u32(func_2(true, u_input.a.x > ~u_input.a.x), vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.a.zx, ~vec2<u32>(0u, u_input.a.x)), reverseBits(u_input.a.x) ^ _wgslsmith_sub_u32(0u, u_input.a.x), u_input.a.x)));
    var var_1 = reverseBits(var_0.zx);
    let var_2 = vec2<u32>(22116u << (var_1.x % 32u), reverseBits(var_0.x));
    var var_3 = Struct_1(-(-_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, 42901i, u_input.b), vec3<i32>(u_input.b, 62148i, u_input.b)) << (func_3(select(u_input.a.xw, vec2<u32>(var_2.x, var_1.x), vec2<bool>(true, true)), _wgslsmith_f_op_f32(max(1642f, 999f)), u_input.b <= 24965i, vec2<bool>(false, true)) % vec3<u32>(32u))), var_0.x, ~vec3<i32>(0i, ~firstTrailingBit(u_input.b), reverseBits(-42042i)), vec2<u32>(63u, var_1.x), -2147483647i);
    let var_4 = !(_wgslsmith_f_op_f32(step(1157f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(646f + 954f)))) < 1f);
    return !select(vec3<bool>(var_4, true, var_4), vec3<bool>(select(any(vec4<bool>(false, var_4, true, var_4)), true, var_4), -var_3.a.x <= -2147483647i, var_4 || var_4), !select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, var_4), vec3<bool>(var_4, var_4, var_4)), select(vec3<bool>(true, true, false), vec3<bool>(true, var_4, false), vec3<bool>(true, true, var_4)), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(func_1());
    let var_1 = var_0;
    var var_2 = vec2<bool>(select(select(any(vec2<bool>(var_0, true)), true, var_0), (u_input.b >> (4294967295u % 32u)) != u_input.b, select(true, var_1, func_1().x)) || var_1, any(vec4<bool>(!select(var_0, var_1, false), true, !(false & var_0), var_0)));
    var var_3 = firstLeadingBit(firstLeadingBit(~(vec2<i32>(u_input.b, -31905i) >> (u_input.a.zy % vec2<u32>(32u))) & _wgslsmith_mod_vec2_i32(vec2<i32>(34702i, u_input.b) >> (vec2<u32>(u_input.a.x, 16211u) % vec2<u32>(32u)), vec2<i32>(-1i, 36399i))));
    var_3 = vec2<i32>(i32(-1i) * -max(-1i, var_3.x), ~25736i);
    var_2 = !func_1().yx;
    let var_4 = 268f;
    var_3 = (vec2<i32>(-1i) * -abs(-vec2<i32>(u_input.b, var_3.x))) & vec2<i32>(var_3.x & (firstLeadingBit(-1i) | ~u_input.b), ~(-1i));
    let x = u_input.a;
    s_output = StorageBuffer(~min(var_3.x, countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(18590i, u_input.b, var_3.x, 25194i), vec4<i32>(var_3.x, 1i, -37032i, var_3.x)))), vec2<i32>(firstTrailingBit(var_3.x), 1i), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, _wgslsmith_mult_u32(0u, 30641u), ~u_input.a.x), u_input.a.zzx) ^ u_input.a.xwx);
}

