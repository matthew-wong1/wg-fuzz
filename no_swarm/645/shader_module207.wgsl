struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: bool,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_1,
    d: vec4<bool>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
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

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1360f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1609f + -1000f))))));
    let var_1 = Struct_1(u_input.c, abs(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, 4294967295u, u_input.c) >> (vec3<u32>(4294967295u, u_input.c, u_input.c) % vec3<u32>(32u)), ~vec3<u32>(u_input.c, 4294967295u, 45562u), min(vec3<u32>(0u, u_input.c, 4294967295u), vec3<u32>(u_input.c, 1u, u_input.c))), vec3<u32>(1u >> (u_input.c % 32u), u_input.c << (22651u % 32u), _wgslsmith_add_u32(8604u, u_input.c)))), ((-1880i & (u_input.a >> (u_input.c % 32u))) >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(84155u, u_input.c), vec2<u32>(19268u, 4294967295u)) % 32u)) << (u_input.c % 32u), true);
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, var_0.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.x, -827f))))))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), vec2<f32>(-1670f, -1131f))))))));
    var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, -473f), vec2<f32>(-458f, var_0.x), true)), vec2<f32>(var_0.x, 1220f)), _wgslsmith_div_vec2_f32(vec2<f32>(-923f, -443f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 2267f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1016f, 1564f)) * vec2<f32>(_wgslsmith_f_op_f32(-1140f - var_0.x), _wgslsmith_f_op_f32(var_0.x * -1105f))))));
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), -399f, _wgslsmith_f_op_f32(exp2(var_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, 701f, var_0.x), vec3<f32>(var_0.x, var_0.x, var_0.x)))))), Struct_2(var_1, ~_wgslsmith_dot_vec4_i32(select(vec4<i32>(var_1.c, var_1.c, 0i, 1692i), vec4<i32>(-1i, var_1.c, -1i, -64841i), true), countOneBits(vec4<i32>(var_1.c, 1i, 23684i, -29150i))), Struct_1(0u, var_1.b, ~(-27579i), !(u_input.c > var_1.b.x)), !(!var_1.d) & (var_1.c > 1i), var_1.b.yy), var_1, vec4<bool>(false, !((u_input.c ^ 24796u) == ~79680u), u_input.b.x <= _wgslsmith_add_i32(-var_1.c, u_input.a), var_1.d), 102897u);
    return var_2.b.c.b;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_mult_vec2_u32(~(~arg_2.xz << (vec2<u32>(arg_2.x, 11307u) % vec2<u32>(32u))), _wgslsmith_div_vec2_u32(~arg_0.wy, ~arg_0.yw));
    var var_1 = Struct_1(var_0.x, func_3(), u_input.a, !arg_1.x);
    var var_2 = Struct_2(Struct_1(0u, vec3<u32>(max(_wgslsmith_clamp_u32(var_0.x, u_input.c, u_input.c), ~3922u), _wgslsmith_mod_u32(u_input.c, 8589u) ^ var_1.b.x, u_input.c), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.b.x) ^ u_input.b.zy, abs(u_input.b.zy)), abs(u_input.a), u_input.a), false), i32(-1i) * -u_input.a, Struct_1(_wgslsmith_mult_u32(var_0.x, _wgslsmith_dot_vec2_u32(min(arg_2.yz, vec2<u32>(arg_2.x, var_0.x)), vec2<u32>(arg_2.x, 25293u))), firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.x, arg_2.x, 81941u), vec3<u32>(var_0.x, 25000u, arg_2.x) ^ arg_0.xyz)), ~(-2147483647i), var_1.d & true), true, firstTrailingBit(vec2<u32>(_wgslsmith_mult_u32(arg_0.x, var_0.x) & abs(arg_0.x), func_3().x)));
    var var_3 = ~max(vec3<i32>(u_input.a, _wgslsmith_dot_vec2_i32(~u_input.b.zz, vec2<i32>(u_input.b.x, -2147483647i) & vec2<i32>(var_2.b, 26055i)), -2147483647i), vec3<i32>(2147483647i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(1i, 1i), var_2.b), reverseBits(var_1.c ^ u_input.a)));
    let var_4 = vec4<i32>(_wgslsmith_mod_i32(1i, 44939i), countOneBits(_wgslsmith_sub_i32(var_3.x, -var_1.c)), -_wgslsmith_mult_i32(~var_3.x >> (4294967295u % 32u), -var_2.c.c), var_3.x);
    return u_input.c;
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = (_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(select(vec2<u32>(16051u, u_input.c), arg_0.b.zy, vec2<bool>(true, arg_0.d)), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 21470u), arg_0.b.yx)), arg_0.b.zx) | vec2<u32>(u_input.c, 0u)) << (_wgslsmith_add_vec2_u32(select(_wgslsmith_sub_vec2_u32(firstTrailingBit(arg_0.b.xx), vec2<u32>(arg_0.b.x, 1u)), vec2<u32>(_wgslsmith_sub_u32(u_input.c, arg_0.b.x), _wgslsmith_mod_u32(arg_0.a, arg_0.a)), !(!vec2<bool>(false, arg_0.d))), arg_0.b.xx) % vec2<u32>(32u));
    var_0 = vec2<u32>(select(func_2(_wgslsmith_div_vec4_u32(vec4<u32>(0u, var_0.x, 38189u, 4294967295u), vec4<u32>(64337u, arg_0.a, u_input.c, 58617u)), vec3<bool>(false, false, arg_0.d), arg_0.b), 1u << (1u % 32u), !(arg_0.d != false)) | 4294967295u, _wgslsmith_mult_u32(~firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 1u, 4294967295u), arg_0.b)), var_0.x));
    let var_1 = Struct_3(vec3<f32>(-257f, _wgslsmith_f_op_f32(-1113f * -409f), -712f), Struct_2(arg_0, _wgslsmith_add_i32(_wgslsmith_add_i32(43362i, 0i), 41974i), Struct_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, u_input.c, 1u), arg_0.b), ~(~vec3<u32>(0u, 55916u, 37379u)), _wgslsmith_dot_vec2_i32(~vec2<i32>(-33871i, 0i), u_input.b.yx), arg_0.d), true, _wgslsmith_mod_vec2_u32(vec2<u32>(~u_input.c, ~4294967295u), firstTrailingBit(~arg_0.b.yy))), arg_0, select(select(!(!vec4<bool>(arg_0.d, false, false, arg_0.d)), !vec4<bool>(false, false, true, arg_0.d), vec4<bool>(true, true, true, true)), vec4<bool>(arg_0.d, all(vec4<bool>(true, true, false, true)), !(!arg_0.d), true), any(select(vec3<bool>(arg_0.d, false, arg_0.d), !vec3<bool>(true, arg_0.d, false), arg_0.d))), 3314u);
    var_0 = _wgslsmith_clamp_vec2_u32(abs(~_wgslsmith_add_vec2_u32(arg_0.b.xy, ~var_1.b.c.b.xx)), vec2<u32>(~min(~var_0.x, arg_0.a), 1u), ~min(vec2<u32>(97498u, 0u) & ~arg_0.b.xz, vec2<u32>(0u, abs(arg_0.a))));
    let var_2 = var_1.b;
    return 964f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(u_input.c, 43534u, _wgslsmith_div_u32(0u, u_input.c), u_input.c);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-186f + 223f)) + _wgslsmith_f_op_f32(func_1(Struct_1(4294967295u, var_0.xxx, 1i, true))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1135f + _wgslsmith_f_op_f32(-967f - -760f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-947f - 577f))) + -375f));
    var_0 = min(vec4<u32>(~(4007u << (u_input.c % 32u)), 0u, 1u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_0.x, u_input.c)) ^ ~vec2<u32>(u_input.c, u_input.c), reverseBits(vec2<u32>(var_0.x, 0u)))), _wgslsmith_add_vec4_u32(vec4<u32>(~var_0.x, reverseBits(~var_0.x), _wgslsmith_sub_u32(u_input.c, 0u), ~u_input.c), vec4<u32>(var_0.x, u_input.c, 34217u, firstTrailingBit(func_2(vec4<u32>(4294967295u, u_input.c, u_input.c, 56598u), vec3<bool>(true, true, true), var_0.yzy)))));
    var var_2 = Struct_1(u_input.c, var_0.wxz, 2147483647i, (~(~u_input.c) | 1u) > _wgslsmith_mult_u32(27247u, u_input.c));
    var var_3 = select(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b.x, var_2.b.x, var_0.x, 0u), vec4<u32>(55655u, 18098u, u_input.c, 81896u)) << (u_input.c % 32u), abs(countOneBits(0u))) ^ ~firstTrailingBit(0u), var_2.b.x, var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, var_2.b.x);
}

