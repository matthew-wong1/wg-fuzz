struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> f32 {
    let var_0 = false;
    var var_1 = min(max(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(58595i, -2147483647i, 53695i, u_input.b), vec4<i32>(u_input.b, -50451i, u_input.b, u_input.b)) >> ((vec4<u32>(u_input.c, 0u, u_input.c, 4294967295u) << (vec4<u32>(u_input.c, 0u, 92837u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)), -select(vec4<i32>(-5538i, -2120i, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, -1i, u_input.b), vec4<bool>(var_0, false, true, var_0))), ~reverseBits(-vec4<i32>(u_input.b, u_input.b, u_input.b, -51928i))), _wgslsmith_sub_vec4_i32(vec4<i32>(~u_input.b, 53070i, 41067i, u_input.b), vec4<i32>(-1i) * -firstLeadingBit(vec4<i32>(-31892i, 6060i, u_input.b, u_input.b))));
    var_1 = -vec4<i32>(0i, 0i, u_input.b, ~countOneBits(firstTrailingBit(var_1.x)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-709f, -385f))) + _wgslsmith_f_op_f32(f32(-1f) * -240f)), var_0);
    var var_3 = vec4<bool>(all(select(vec3<bool>(any(vec3<bool>(true, var_0, var_2.b)), var_0, !var_2.b), vec3<bool>(var_0, any(vec3<bool>(false, var_0, var_0)), all(vec2<bool>(var_0, false))), vec3<bool>(!var_0, true, any(vec4<bool>(false, true, false, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_2.a, var_2.a)))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(586f * _wgslsmith_f_op_f32(round(var_2.a))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a), 518f)), var_2.b, var_2.b);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_2.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2623f)))), _wgslsmith_f_op_f32(exp2(var_2.a))))));
}

fn func_2() -> vec2<i32> {
    let var_0 = false;
    var var_1 = vec3<u32>(u_input.a.x, ~firstLeadingBit(~_wgslsmith_add_u32(4294967295u, 0u)), ~_wgslsmith_mod_u32(31417u, 4294967295u));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-191f * 1507f) - -769f))) - _wgslsmith_f_op_f32(func_3())), 378f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1829f)), _wgslsmith_f_op_f32(abs(-593f))))));
    let var_3 = _wgslsmith_f_op_f32(133f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-218f, var_2.a) + _wgslsmith_div_f32(949f, var_2.a)))));
    let var_4 = u_input.d;
    return firstLeadingBit(~max(~vec2<i32>(-18792i, u_input.b), vec2<i32>(u_input.b, u_input.b))) ^ _wgslsmith_sub_vec2_i32(firstTrailingBit(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(14859i, u_input.b)), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, u_input.b), vec2<i32>(2147483647i, 0i)))), countOneBits(abs(~vec2<i32>(u_input.b, -2147483647i))));
}

fn func_1() -> vec4<u32> {
    let var_0 = all(vec3<bool>(any(vec2<bool>(true, u_input.b < 0i)), true, false));
    var var_1 = func_2();
    var var_2 = Struct_3(!any(vec3<bool>(var_0, select(var_0, var_0, var_0), 0u != u_input.a.x)));
    let var_3 = ~(-35849i);
    var_2 = Struct_3(false);
    return (countOneBits(~firstLeadingBit(vec4<u32>(u_input.d.x, 0u, 54091u, u_input.c))) | ((~vec4<u32>(u_input.c, u_input.a.x, 4294967295u, 17246u) & vec4<u32>(0u, 4294967295u, 70117u, 128096u)) >> (abs(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 0u, u_input.d.x, 4854u), vec4<u32>(u_input.c, 0u, 79104u, u_input.a.x))) % vec4<u32>(32u)))) << (((vec4<u32>(_wgslsmith_add_u32(56199u, u_input.d.x), ~1u, countOneBits(0u), u_input.d.x) ^ ~vec4<u32>(u_input.a.x, 0u, 0u, u_input.c)) ^ _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(0u, u_input.d.x, u_input.a.x, u_input.c) | vec4<u32>(8164u, 0u, u_input.d.x, 1u)), ~vec4<u32>(28589u, 52344u, 0u, 4294967295u) << (~vec4<u32>(19043u, 24985u, u_input.c, 1u) % vec4<u32>(32u)))) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, true, true, true);
    var var_1 = ~(~func_1()) ^ _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(_wgslsmith_add_u32(u_input.a.x, 1u), ~1u, min(42122u, u_input.c), 4294967295u ^ u_input.d.x)), ~vec4<u32>(u_input.d.x, 15589u, _wgslsmith_div_u32(u_input.c, 2591u), u_input.d.x));
    let var_2 = Struct_2(47445i, ~u_input.c);
    let var_3 = var_0;
    var_1 = min(countOneBits(func_1()), vec4<u32>(41517u, ~(~15538u), ~_wgslsmith_dot_vec2_u32(max(vec2<u32>(var_1.x, u_input.d.x), vec2<u32>(1u, u_input.d.x)), var_1.yx), ~var_1.x));
    let var_4 = !all(select(select(vec3<bool>(false, false, var_3.x), vec3<bool>(var_0.x, false, false), true), !(!var_0.zzz), var_0.x));
    var var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(_wgslsmith_add_i32(var_5.a, -1i) & (i32(-1i) * -27402i))), vec4<u32>(var_2.b, max(24578u, ~var_1.x | abs(98543u)), ~4294967295u, 1u));
}

