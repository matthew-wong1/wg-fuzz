struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: f32,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
    c: vec3<u32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(42971i, 0i, -1386i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_5) -> i32 {
    var var_0 = Struct_3(select(vec2<bool>(select(select(true, true, true), true, true), any(vec3<bool>(false, true, false)) | all(vec2<bool>(false, false))), vec2<bool>(true, (2147483647i == arg_2.a.b.a.x) || any(vec4<bool>(false, false, true, true))), vec2<bool>(any(vec3<bool>(true, true, true)), true)), arg_2.a.b, _wgslsmith_f_op_f32(-arg_1.x), vec3<i32>(-arg_2.a.b.a.x, _wgslsmith_dot_vec2_i32((arg_2.a.b.a << (arg_2.c.yx % vec2<u32>(32u))) & arg_2.a.b.a, vec2<i32>(-1i) * -vec2<i32>(u_input.a, u_input.a)), ~countOneBits(-6677i) << (~arg_2.a.a % 32u)), Struct_1(~countOneBits(_wgslsmith_add_vec2_i32(arg_2.a.b.a, arg_2.a.b.a)), -1898f));
    let var_1 = arg_2;
    let var_2 = Struct_4(Struct_3(!var_0.a, Struct_1(firstTrailingBit(_wgslsmith_div_vec2_i32(var_0.b.a, vec2<i32>(1i, 43043i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.x, var_0.c)) * _wgslsmith_f_op_f32(-var_1.a.b.b))), 516f, -var_0.d, Struct_1(firstLeadingBit(~var_0.b.a), _wgslsmith_f_op_f32(-1135f + _wgslsmith_f_op_f32(ceil(arg_2.d.x))))), false);
    global0 = vec3<i32>(-46265i << (firstTrailingBit(firstLeadingBit(arg_2.c.x)) % 32u), -2147483647i, i32(-1i) * -12598i) & vec3<i32>(-31582i, ~(~_wgslsmith_div_i32(0i, arg_2.a.b.a.x)), max(49543i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-59968i, var_2.a.b.a.x), vec2<i32>(0i, -1i))));
    var var_3 = vec4<bool>(all(select(select(vec2<bool>(false, true), vec2<bool>(true, false), any(vec4<bool>(false, var_2.a.a.x, var_2.b, false))), var_2.a.a, all(select(var_2.a.a, var_0.a, var_2.a.a)))), all(vec2<bool>(false, (2055u & var_1.a.a) <= var_1.b)), !var_2.a.a.x, !var_0.a.x);
    return _wgslsmith_dot_vec4_i32(~select(~vec4<i32>(18754i, -1i, 66896i, 49275i), vec4<i32>(-91253i, 226i, var_1.a.b.a.x, 42343i) ^ countOneBits(vec4<i32>(2147483647i, 22976i, -17559i, -2147483647i)), vec4<bool>(true, var_2.b, !var_2.b, true)), firstLeadingBit(firstTrailingBit(-vec4<i32>(var_0.d.x, 1i, 2147483647i, var_1.a.b.a.x))));
}

fn func_2(arg_0: Struct_1) -> vec3<i32> {
    global0 = vec3<i32>(-func_3(_wgslsmith_mod_i32(~1i, 1i >> (0u % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b, arg_0.b), vec2<f32>(arg_0.b, 2128f))), Struct_5(Struct_2(68168u, Struct_1(vec2<i32>(-3615i, global0.x), -1517f)), firstLeadingBit(1u), vec3<u32>(1u, 1u, 1u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1140f, -308f)))), -1937i, global0.x);
    let var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(~_wgslsmith_sub_u32(1u, ~4294967295u), _wgslsmith_dot_vec4_u32(firstTrailingBit(select(vec4<u32>(0u, 16823u, 27333u, 37282u), vec4<u32>(4294967295u, 33827u, 35073u, 30379u), vec4<bool>(false, false, false, false))), ~select(vec4<u32>(1u, 1u, 134743u, 10984u), vec4<u32>(0u, 0u, 13365u, 35919u), false))), vec2<u32>(1u, 1u));
    let var_1 = _wgslsmith_mod_i32(arg_0.a.x, -global0.x);
    var var_2 = vec2<bool>(!(!(!(1344f == arg_0.b))), all(select(vec3<bool>(all(vec2<bool>(false, true)), true, global0.x > global0.x), vec3<bool>(true, true, true), true)));
    var var_3 = var_0.x >> (_wgslsmith_add_u32(~(~var_0.x), var_0.x) % 32u);
    return countOneBits(select(firstLeadingBit(firstTrailingBit(vec3<i32>(-8052i, -1i, u_input.a))), ~vec3<i32>(arg_0.a.x, -2147483647i, 30855i) ^ vec3<i32>(global0.x, u_input.a, arg_0.a.x), _wgslsmith_f_op_f32(max(191f, arg_0.b)) > arg_0.b) ^ abs(~vec3<i32>(19609i, arg_0.a.x, global0.x)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_5, arg_2: vec3<u32>) -> vec2<u32> {
    global0 = vec3<i32>(u_input.a, firstLeadingBit(~(~global0.x)), ~arg_0.a.x) | (abs(-func_2(arg_0)) & (min(~vec3<i32>(9491i, 1i, -17104i), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, -12032i, u_input.a), vec3<i32>(19461i, arg_1.a.b.a.x, 2147483647i))) >> (~min(vec3<u32>(arg_2.x, 0u, arg_2.x), vec3<u32>(arg_2.x, arg_2.x, 45667u)) % vec3<u32>(32u))));
    var var_0 = -func_2(Struct_1(firstTrailingBit(reverseBits(vec2<i32>(u_input.a, 9260i))), 1070f));
    var var_1 = arg_1;
    var_1 = Struct_5(arg_1.a, ~_wgslsmith_add_u32(arg_2.x, arg_1.c.x), vec3<u32>(95426u, var_1.b, abs(85251u)), vec2<f32>(_wgslsmith_div_f32(-953f, -101f), _wgslsmith_f_op_f32(arg_1.a.b.b * var_1.d.x)));
    let var_2 = Struct_2(arg_2.x, Struct_1(~(~var_0.xx), 916f));
    return abs(arg_1.c.xx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(~(~func_1(Struct_1(global0.xz, 100f), Struct_5(Struct_2(1u, Struct_1(vec2<i32>(-1i, -8783i), 151f)), 134815u, vec3<u32>(29065u, 86432u, 22269u), vec2<f32>(1031f, -1195f)), vec3<u32>(0u, 41606u, 31793u)) & vec2<u32>(1u, ~6975u)));
    global0 = ~_wgslsmith_mod_vec3_i32(-firstTrailingBit(vec3<i32>(-1i, -3591i, -1i)), ~(~vec3<i32>(global0.x, 0i, global0.x))) ^ vec3<i32>(-u_input.a, 1i, min(-(u_input.a & global0.x), 2147483647i));
    let var_1 = vec4<i32>(-32783i, abs(_wgslsmith_clamp_i32(u_input.a, -1i, global0.x)), _wgslsmith_div_i32(-5117i, 75624i), -34832i) << (firstTrailingBit(vec4<u32>(func_1(Struct_1(vec2<i32>(2147483647i, u_input.a), -1478f), Struct_5(Struct_2(4294967295u, Struct_1(global0.xy, -908f)), var_0.x, vec3<u32>(4294967295u, var_0.x, 4294967295u), vec2<f32>(-1982f, 1000f)), vec3<u32>(0u, 1u, 4294967295u)).x, 1u, ~abs(var_0.x), 103468u)) % vec4<u32>(32u));
    let var_2 = Struct_4(Struct_3(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(true, true, true, true))), Struct_1(-vec2<i32>(1i, global0.x), -245f), 520f, var_1.yxx | vec3<i32>(~u_input.a, var_1.x, u_input.a), Struct_1(vec2<i32>(firstLeadingBit(var_1.x), global0.x), _wgslsmith_f_op_f32(f32(-1f) * -415f))), false | any(vec2<bool>(true, any(vec4<bool>(false, true, true, false)))));
    var var_3 = Struct_3(select(select(select(!vec2<bool>(var_2.a.a.x, var_2.b), vec2<bool>(true, false), false), var_2.a.a, select(vec2<bool>(true, false), vec2<bool>(true, true), true)), !var_2.a.a, var_2.b), Struct_1(~vec2<i32>(2147483647i, 0i), 331f), var_2.a.c, max(var_1.zyx, var_1.wwz), var_2.a.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_2.a.c, var_3.b.b), 1u, 4294967295u, vec2<u32>(~(firstTrailingBit(var_0.x) ^ abs(var_0.x)), _wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, var_0.x, var_0.x), vec3<u32>(var_0.x, var_0.x, var_0.x), var_3.a.x), vec3<u32>(var_0.x, 4294967295u, var_0.x)) >> ((_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, var_0.x), var_0) & ~1u) % 32u)));
}

