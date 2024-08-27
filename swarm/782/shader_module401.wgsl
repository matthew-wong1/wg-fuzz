struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<bool>,
    d: bool,
    e: f32,
}

struct Struct_4 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: f32,
    e: vec2<i32>,
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c.x, arg_0.c.x)));
    var var_1 = Struct_4(arg_0.a.x, ~arg_0.b);
    var var_2 = Struct_3(Struct_1(u_input.a, -vec2<i32>(u_input.b, -1i) & (abs(vec2<i32>(u_input.b, u_input.b)) | abs(vec2<i32>(26143i, u_input.b))), (_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.b, u_input.a, 25980u, 4294967295u), vec4<u32>(0u, var_1.b, var_1.b, var_1.b)) | ~vec4<u32>(u_input.a, u_input.a, 4294967295u, 35727u)) | vec4<u32>(firstTrailingBit(arg_0.b), ~var_1.b, select(u_input.a, 4294967295u, false), 1u), vec2<bool>(all(select(arg_0.a, arg_0.a, arg_0.a)), var_1.a)), Struct_2(select(!vec2<bool>(arg_0.a.x, true), !arg_0.a, !(!arg_0.a)), arg_0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_0.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(384f, var_0) * vec2<f32>(arg_0.c.x, arg_0.c.x)), select(arg_0.a.x, false, false))) - vec2<f32>(var_0, _wgslsmith_f_op_f32(floor(var_0))))), select(vec4<bool>(false, var_1.a, any(vec4<bool>(arg_0.a.x, true, false, arg_0.a.x)) & !arg_0.a.x, true), select(select(vec4<bool>(false, true, false, var_1.a), !vec4<bool>(true, var_1.a, false, false), u_input.b != u_input.b), select(!vec4<bool>(arg_0.a.x, arg_0.a.x, false, var_1.a), select(vec4<bool>(var_1.a, arg_0.a.x, true, true), vec4<bool>(var_1.a, true, var_1.a, true), vec4<bool>(true, var_1.a, var_1.a, var_1.a)), vec4<bool>(false, var_1.a, var_1.a, true)), vec4<bool>(1u >= u_input.a, all(arg_0.a), arg_0.a.x, any(vec3<bool>(arg_0.a.x, false, true)))), select(var_1.a, false, all(!vec3<bool>(false, arg_0.a.x, var_1.a)))), arg_0.a.x, 158f);
    var var_3 = Struct_4(var_1.a, ~40003u);
    var var_4 = Struct_2(!arg_0.a, firstTrailingBit(578u), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(516f, _wgslsmith_f_op_f32(select(var_0, -1382f, 686f >= var_0))))));
    return any(!select(var_2.c.wyx, select(vec3<bool>(arg_0.a.x, var_3.a, var_2.d), vec3<bool>(false, var_2.a.d.x, var_1.a), all(vec2<bool>(false, var_4.a.x))), !var_2.c.zyz));
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = !(!arg_0.d.x & (arg_0.d.x != func_3(Struct_2(arg_0.d, arg_0.c.x, vec2<f32>(-276f, -1463f)))));
    let var_1 = ~abs(vec4<u32>(u_input.a, 91048u, _wgslsmith_mod_u32(3557u, u_input.a), reverseBits(_wgslsmith_sub_u32(1u, arg_0.a))));
    var var_2 = arg_0;
    var var_3 = Struct_2(arg_0.d, max(_wgslsmith_clamp_u32(~reverseBits(1387u), 1u, _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(arg_0.a, var_2.c.x, var_2.c.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(var_2.a, 1u, 1u), var_2.c.zwz))), u_input.a), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1267f, -1149f) * vec2<f32>(-1251f, -907f)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(608f, -1051f) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1379f, 285f), vec2<f32>(-530f, 778f))))))));
    let var_4 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.c + vec2<f32>(_wgslsmith_f_op_f32(-var_3.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1038f))))));
    return -200f;
}

fn func_1(arg_0: u32, arg_1: Struct_4) -> vec2<i32> {
    var var_0 = -1000f;
    var var_1 = vec3<f32>(352f, _wgslsmith_f_op_f32(max(-471f, 332f)), _wgslsmith_f_op_f32(func_2(Struct_1(~u_input.a, ~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, -1i), vec2<i32>(u_input.b, -2147483647i)), _wgslsmith_mod_vec4_u32(~vec4<u32>(arg_0, u_input.a, arg_1.b, arg_0), vec4<u32>(9998u, arg_0, arg_0, 25909u) >> (vec4<u32>(30313u, 6985u, u_input.a, u_input.a) % vec4<u32>(32u))), vec2<bool>(arg_1.a, true)))));
    var var_2 = Struct_1(arg_0, firstLeadingBit(-vec2<i32>(u_input.b, 2194i) | vec2<i32>(u_input.b, 1i)) >> (vec2<u32>(arg_0 >> (_wgslsmith_mult_u32(4294967295u, 0u) % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, arg_1.b), vec2<u32>(37001u, u_input.a)) | _wgslsmith_mod_u32(3224u, 17691u)) % vec2<u32>(32u)), ~vec4<u32>(~arg_0, min(arg_0, arg_1.b), countOneBits(arg_0), ~8882u) & ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(38904u, u_input.a, 1u, u_input.a), vec4<u32>(81985u, 18408u, 13213u, arg_1.b)), ~arg_0, ~30821u, 16856u ^ u_input.a), select(select(select(select(vec2<bool>(true, false), vec2<bool>(arg_1.a, true), arg_1.a), select(vec2<bool>(false, true), vec2<bool>(arg_1.a, false), arg_1.a), func_3(Struct_2(vec2<bool>(true, arg_1.a), arg_0, vec2<f32>(-233f, var_1.x)))), select(select(vec2<bool>(true, false), vec2<bool>(arg_1.a, true), arg_1.a), vec2<bool>(arg_1.a, arg_1.a), !vec2<bool>(arg_1.a, arg_1.a)), !(!arg_1.a)), !select(vec2<bool>(true, arg_1.a), vec2<bool>(arg_1.a, arg_1.a), arg_1.b < arg_0), true & !(!arg_1.a)));
    var var_3 = Struct_1(reverseBits(var_2.c.x), ~firstTrailingBit(vec2<i32>(-3725i, -2147483647i) | -var_2.b), _wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(1u, arg_0, 4294967295u, 5104u)), ~select(vec4<u32>(arg_1.b, arg_1.b, arg_0, 4294967295u), vec4<u32>(u_input.a, arg_1.b, var_2.a, u_input.a), vec4<bool>(arg_1.a, var_2.d.x, false, true)), _wgslsmith_add_vec4_u32(vec4<u32>(3559u, 7561u, 25683u, arg_1.b) & var_2.c, var_2.c)) >> (var_2.c % vec4<u32>(32u)), !var_2.d);
    var var_4 = Struct_3(Struct_1(var_2.a, vec2<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(var_3.b.x, var_3.b.x), -41060i), u_input.b), vec4<u32>(firstLeadingBit(var_3.c.x), var_3.a, ~(47051u >> (0u % 32u)), arg_1.b), select(var_3.d, var_2.d, var_2.d.x)), Struct_2(var_2.d, ~(~(39961u >> (arg_0 % 32u))), _wgslsmith_f_op_vec2_f32(var_1.zz - _wgslsmith_f_op_vec2_f32(-var_1.xy))), !(!select(!vec4<bool>(false, true, true, var_3.d.x), vec4<bool>(arg_1.a, true, arg_1.a, false), !vec4<bool>(var_2.d.x, false, arg_1.a, var_2.d.x))), true, _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -562f))));
    return vec2<i32>(15185i, max(-2147483647i, _wgslsmith_mod_i32(var_4.a.b.x ^ 12069i, 24192i))) ^ ((firstLeadingBit(var_2.b) << (abs(~var_2.c.wz) % vec2<u32>(32u))) & var_4.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, ~(~vec2<u32>(u_input.a, u_input.a >> (4294967295u % 32u))), _wgslsmith_f_op_f32(f32(-1f) * -246f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(516f * -703f) + _wgslsmith_f_op_f32(f32(-1f) * -1530f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-772f, 678f)))), select(func_1(1u, Struct_4(true, 72198u)), vec2<i32>(_wgslsmith_mod_i32(-2147483647i, u_input.b), ~u_input.b) & ~(-vec2<i32>(-1i, 2147483647i)), ~abs(u_input.b) < _wgslsmith_add_i32(u_input.b, ~u_input.b)));
}

