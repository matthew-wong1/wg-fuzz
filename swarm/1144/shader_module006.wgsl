struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: vec3<f32>,
    e: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<i32>,
    d: f32,
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = -(~(-26297i) << (u_input.e.x % 32u));
    var var_1 = vec4<bool>(true, !arg_1.a.x, true, arg_1.a.x & (~_wgslsmith_mod_i32(-1i, -84874i) != (52547i | _wgslsmith_clamp_i32(-24790i, arg_1.b.a.b.x, -2147483647i))));
    var_1 = vec4<bool>(false, true, false && (0i < abs(_wgslsmith_clamp_i32(-2147483647i, 31564i, arg_1.b.c))), false);
    let var_2 = _wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.e.yz), ~vec2<u32>(u_input.a.x, 74003u));
    var_1 = select(select(vec4<bool>(false, arg_1.a.x, arg_1.b.a.c <= _wgslsmith_f_op_f32(arg_2.c - arg_1.b.a.c), true), vec4<bool>(arg_2.c > _wgslsmith_f_op_f32(floor(arg_1.b.d.x)), var_1.x, false, true), vec4<bool>(any(!arg_1.a), _wgslsmith_f_op_f32(ceil(-919f)) == arg_1.b.a.a.x, !(arg_1.b.e | var_1.x), all(select(var_1.zx, vec2<bool>(var_1.x, false), vec2<bool>(var_1.x, var_1.x))))), vec4<bool>((true && (u_input.e.x == 33723u)) || true, !any(vec3<bool>(var_1.x, var_1.x, var_1.x)), !(_wgslsmith_f_op_f32(650f + arg_1.b.a.a.x) >= arg_1.b.d.x), !((arg_0 == u_input.c) || var_1.x)), arg_1.a);
    return _wgslsmith_f_op_vec3_f32(arg_2.a.wyy - _wgslsmith_f_op_vec3_f32(arg_2.a.wwy * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_1.b.d.x + 1708f), _wgslsmith_f_op_f32(-667f - arg_1.b.a.a.x), _wgslsmith_f_op_f32(arg_1.b.a.a.x * arg_1.b.d.x)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.d.x, arg_2.c, 734f) - vec3<f32>(1239f, 759f, arg_1.b.a.a.x)), arg_2.a.xzy))));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: u32) -> i32 {
    var var_0 = Struct_3(vec4<bool>(!all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true))), true, true | !all(vec2<bool>(true, false)), true), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(554f, 1155f, -1000f, -983f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 1487f, -362f, arg_1))), (vec4<i32>(23043i, 11835i, u_input.c, u_input.c) | vec4<i32>(u_input.c, 0i, 653i, 30150i)) ^ -vec4<i32>(u_input.b, u_input.b, 21047i, u_input.b), -303f, vec2<i32>(u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(-39515i, u_input.b, u_input.d, u_input.c), vec4<i32>(u_input.d, -2147483647i, u_input.d, u_input.d)))), -max(1i, -1795i), 2147483647i, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_3(u_input.c, Struct_3(vec4<bool>(true, false, true, false), Struct_2(Struct_1(vec4<f32>(arg_1, -321f, arg_1, arg_1), vec4<i32>(u_input.d, -27838i, 1i, -37887i), 1001f, vec2<i32>(3457i, u_input.c)), u_input.d, u_input.d, vec3<f32>(-767f, 1000f, arg_1), false)), Struct_1(vec4<f32>(arg_1, arg_1, -1000f, arg_1), vec4<i32>(u_input.b, u_input.d, 0i, -2114i), arg_1, vec2<i32>(1i, u_input.c)))))))), true));
    var_0 = Struct_3(var_0.a, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(var_0.b.a.a + _wgslsmith_f_op_vec4_f32(min(var_0.b.a.a, vec4<f32>(var_0.b.d.x, arg_1, arg_1, -935f)))), min(min(vec4<i32>(1i, var_0.b.c, u_input.d, -2147483647i), var_0.b.a.b), vec4<i32>(1i, 1i, var_0.b.c, var_0.b.a.b.x)), 242f, var_0.b.a.b.zz), countOneBits(-1i), -(~15246i), _wgslsmith_f_op_vec3_f32(var_0.b.a.a.zzw - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b.d + vec3<f32>(var_0.b.d.x, var_0.b.d.x, 327f)), _wgslsmith_f_op_vec3_f32(-var_0.b.a.a.wyw))), all(select(!vec4<bool>(var_0.b.e, var_0.a.x, true, var_0.a.x), var_0.a, var_0.a))));
    let var_1 = Struct_3(select(vec4<bool>(true, var_0.b.e, var_0.b.a.d.x != 29691i, var_0.a.x), select(vec4<bool>(var_0.b.e | var_0.b.e, true, var_0.a.x, -1i < u_input.d), vec4<bool>(false && var_0.a.x, var_0.b.d.x == -143f, arg_2 < 4294967295u, var_0.b.e), any(select(var_0.a, vec4<bool>(var_0.a.x, var_0.a.x, var_0.b.e, var_0.b.e), false))), var_0.a.x), var_0.b);
    var_0 = Struct_3(var_0.a, var_1.b);
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.b.a.a * var_1.b.a.a)), -var_1.b.a.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a.c))))), vec2<i32>(u_input.b, min(var_0.b.a.d.x, 1i)));
    return _wgslsmith_div_i32(firstTrailingBit(u_input.d), reverseBits(-1i));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.d));
    var var_1 = u_input.a;
    var_1 = u_input.e.yy & ~(~countOneBits(vec2<u32>(u_input.e.x, 43602u)) & select(~u_input.a, u_input.e.zy, true));
    let var_2 = var_0;
    var_1 = vec2<u32>(103646u, var_1.x);
    return reverseBits(-func_2(~_wgslsmith_mult_u32(4294967295u, 1u), -1000f, var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(-vec2<i32>(_wgslsmith_div_i32(22449i, -1i), -52942i) & -_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, -1i), max(vec2<i32>(u_input.c, -1i), vec2<i32>(2147483647i, 11869i))));
    var_0 = (-firstTrailingBit(vec2<i32>(-2147483647i, u_input.b) | vec2<i32>(13276i, 2147483647i)) << (~(vec2<u32>(u_input.a.x, 4207u) ^ (u_input.a >> (u_input.a % vec2<u32>(32u)))) % vec2<u32>(32u))) | (select(-vec2<i32>(0i, var_0.x), vec2<i32>(1i, u_input.d), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, true), true)) << (_wgslsmith_mult_vec2_u32(firstTrailingBit(firstLeadingBit(u_input.e.yy)), _wgslsmith_div_vec2_u32(u_input.e.yy, ~vec2<u32>(1u, 18536u))) % vec2<u32>(32u)));
    var_0 = _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(~vec2<i32>(var_0.x, func_1(Struct_2(Struct_1(vec4<f32>(-776f, -1473f, 517f, -1873f), vec4<i32>(-4251i, u_input.b, -23925i, 9334i), -758f, vec2<i32>(1i, 19973i)), 16603i, var_0.x, vec3<f32>(791f, 409f, 921f), false), vec4<bool>(false, true, false, false))), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.x, -1i) >> ((u_input.e.zx & vec2<u32>(u_input.a.x, 4294967295u)) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(~vec2<i32>(-1139i, 21249i), vec2<i32>(var_0.x, 44007i), vec2<i32>(u_input.c, 0i) << (vec2<u32>(u_input.a.x, 758u) % vec2<u32>(32u))), _wgslsmith_add_vec2_i32(reverseBits(vec2<i32>(-1i, u_input.c)), vec2<i32>(-1i, var_0.x) | vec2<i32>(1i, 0i)))), vec2<i32>(~_wgslsmith_mod_i32(var_0.x, ~(-2147483647i)), _wgslsmith_mult_i32(var_0.x, 41426i)));
    var_0 = vec2<i32>(-u_input.c, ~abs(func_2(u_input.a.x, -184f, u_input.a.x) >> (u_input.e.x % 32u)));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -473f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-816f, -1000f), vec2<f32>(-716f, 622f), vec2<bool>(true, false)))))))), -(-1i & func_2(1u, _wgslsmith_f_op_f32(f32(-1f) * -196f), ~u_input.e.x)), vec3<i32>(_wgslsmith_mod_i32(u_input.d, firstTrailingBit(10703i) ^ -u_input.d), min(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, var_0.x, u_input.d, -25266i), vec4<i32>(u_input.b, u_input.c, -28008i, u_input.d))), 0i), _wgslsmith_sub_i32(var_0.x, reverseBits(~11840i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1000f)))))));
}

