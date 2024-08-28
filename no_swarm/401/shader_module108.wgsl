struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> u32 {
    return u_input.a;
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: vec4<bool>, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x)))));
    let var_1 = _wgslsmith_f_op_f32(445f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -420f)))));
    let var_2 = arg_2.x;
    var var_3 = 1u;
    var_3 = ~0u;
    return select(arg_3.b, arg_3.b, true);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> u32 {
    let var_0 = false;
    var var_1 = Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(max(i32(-1i) * -1i, abs(2147483647i)), -u_input.b >> (4294967295u % 32u)), max(vec2<i32>(~arg_1.x, u_input.b), vec2<i32>(select(arg_0.b.x, -37261i, var_0), arg_1.x))), countOneBits(func_3(func_2(Struct_1(vec2<i32>(-13787i, 2147483647i), arg_0.b, vec4<u32>(arg_0.c.x, 29041u, u_input.a, 7388u), arg_0.d), Struct_1(arg_0.a, arg_0.b, vec4<u32>(u_input.d, 63412u, 0u, 0u), vec3<bool>(arg_0.d.x, var_0, true)), 173f), vec2<f32>(-513f, 1098f), vec4<bool>(false, true, var_0, var_0), Struct_1(arg_1.xx, arg_1, vec4<u32>(arg_0.c.x, 4294967295u, arg_0.c.x, 1u), vec3<bool>(arg_0.d.x, true, true))) >> (arg_0.c % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(~arg_0.c, arg_0.c >> (_wgslsmith_div_vec4_u32(arg_0.c, max(vec4<u32>(0u, 0u, 1u, 0u), vec4<u32>(arg_0.c.x, 1u, 46468u, 11962u))) % vec4<u32>(32u))), !arg_0.d);
    var var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(864f, 861f, -1395f, -515f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1860f, 798f, -641f, -495f))) - vec4<f32>(1318f, _wgslsmith_f_op_f32(f32(-1f) * -225f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 128f)), _wgslsmith_f_op_f32(f32(-1f) * -642f)))));
    var var_4 = vec4<bool>(!var_0, any(select(select(vec4<bool>(var_0, false, var_1.d.x, false), vec4<bool>(var_1.d.x, true, false, true), select(vec4<bool>(false, false, arg_0.d.x, var_2.d.x), vec4<bool>(true, false, arg_0.d.x, false), vec4<bool>(arg_0.d.x, arg_0.d.x, var_2.d.x, true))), !select(vec4<bool>(true, true, var_0, arg_0.d.x), vec4<bool>(false, var_1.d.x, var_0, false), vec4<bool>(true, true, var_1.d.x, arg_0.d.x)), vec4<bool>(u_input.d != var_1.c.x, any(vec4<bool>(true, true, false, false)), true, true))), _wgslsmith_div_i32(reverseBits(1i), 1i) != _wgslsmith_sub_i32(2147483647i, -arg_0.b.x & min(-18576i, 4954i)), !(~(1u & arg_0.c.x) > _wgslsmith_dot_vec2_u32(abs(var_1.c.xx), var_1.c.xy)));
    return var_2.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_div_u32(abs(func_1(Struct_1(vec2<i32>(-1i, -65935i), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.c), vec4<u32>(4294967295u, u_input.d, u_input.d, u_input.d), vec3<bool>(false, false, true)), -vec4<i32>(u_input.b, u_input.c, u_input.c, -8265i))), _wgslsmith_dot_vec4_u32(vec4<u32>(64651u, _wgslsmith_add_u32(4294967295u, u_input.a), _wgslsmith_sub_u32(u_input.d, u_input.a), 1u), _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 58029u, 45u, 1u), ~vec4<u32>(43371u, 10425u, u_input.a, 28413u), ~vec4<u32>(u_input.d, u_input.d, u_input.a, 1u))));
    let var_1 = select(select(vec2<bool>(!all(vec4<bool>(true, false, true, true)), all(vec3<bool>(true, true, true))), vec2<bool>(true, 1i <= ~u_input.c), !(!select(vec2<bool>(true, true), vec2<bool>(true, false), true))), vec2<bool>(all(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), true)), any(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true), true))), !select(vec2<bool>(true, 67339u >= var_0), select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, true), true), !select(vec2<bool>(false, true), vec2<bool>(true, true), false)));
    let var_2 = -1i;
    var var_3 = Struct_1(vec2<i32>(firstLeadingBit(_wgslsmith_div_i32(0i, _wgslsmith_sub_i32(-1i, 4395i))), i32(-1i) * -2147483647i), select(vec4<i32>(select(var_2, -1i, var_1.x), _wgslsmith_mult_i32(var_2, 2147483647i), i32(-1i) * -5029i, u_input.b & u_input.c), vec4<i32>(-36295i, ~(-14841i), firstTrailingBit(u_input.c), ~0i), vec4<bool>(false, true, all(vec3<bool>(true, true, true)), true)) | _wgslsmith_mod_vec4_i32(vec4<i32>(firstTrailingBit(-11042i), abs(var_2), countOneBits(var_2), 21633i), max(vec4<i32>(1i, 24239i, u_input.b, var_2) & vec4<i32>(u_input.c, -17760i, u_input.b, var_2), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, var_2, -5328i, u_input.b), vec4<i32>(u_input.b, u_input.b, 2147483647i, 32701i)))), firstLeadingBit(vec4<u32>(countOneBits(~4294967295u), u_input.d, ~78083u, var_0)), select(vec3<bool>(reverseBits(u_input.a) >= select(var_0, 1u, var_1.x), all(vec4<bool>(false, var_1.x, true, false)), false), select(vec3<bool>(false, 4294967295u <= u_input.d, false), vec3<bool>(false, true, true || var_1.x), vec3<bool>(any(var_1), u_input.d < 66233u, var_1.x)), all(!select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, true, true)))));
    var var_4 = Struct_1(_wgslsmith_mod_vec2_i32(reverseBits(~var_3.b.yy), ~var_3.a), countOneBits(var_3.b), ~(~vec4<u32>(u_input.a, 1787u, u_input.d & u_input.a, _wgslsmith_div_u32(u_input.a, 19026u))), var_3.d);
    var var_5 = ~var_3.c.yz & ~abs(_wgslsmith_sub_vec2_u32(var_4.c.wy, ~var_4.c.wz));
    var var_6 = ~(vec2<u32>(min(54548u, u_input.d), 1u) >> (select(~(~var_3.c.ww), var_4.c.wz, true) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -896f)), _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(var_4.b.xz, var_4.b.zx) ^ ~vec2<i32>(u_input.c, -2147483647i), var_3.b.yz), var_3.a), ~(~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(var_3.c.xzw, vec3<u32>(u_input.d, 0u, var_3.c.x)), max(vec3<u32>(var_3.c.x, 16397u, var_0), var_3.c.yyy))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(119f, -787f, -1020f, 1221f)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(230f, 1515f, -211f, 466f), vec4<f32>(-757f, 1006f, 1697f, -1167f))), vec4<f32>(1837f, 1071f, 496f, 1385f), !vec4<bool>(var_1.x, var_1.x, var_3.d.x, var_4.d.x)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(-295f * -469f), 862f, _wgslsmith_f_op_f32(abs(965f))))));
}

