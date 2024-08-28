struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    var var_0 = vec4<i32>(~(~firstLeadingBit(-2147483647i) >> (u_input.a.x % 32u)), _wgslsmith_dot_vec3_i32(vec3<i32>(select(reverseBits(1i), 1i, true), _wgslsmith_dot_vec2_i32(-vec2<i32>(10099i, 0i), countOneBits(vec2<i32>(41707i, 11401i))), select(2147483647i, 0i, true)), -vec3<i32>(-1i, -28496i, select(-1i, -26148i, false))), _wgslsmith_dot_vec3_i32(~firstLeadingBit(countOneBits(vec3<i32>(21672i, -56286i, 2147483647i))), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(3893i, 0i), vec2<i32>(20022i, 22418i)), 35631i, 0i) ^ _wgslsmith_mod_vec3_i32(select(vec3<i32>(-41029i, 0i, 2147483647i), vec3<i32>(1i, -27678i, 0i), true), vec3<i32>(2147483647i, -4456i, 5534i))), 1i);
    var_0 = -(vec4<i32>(countOneBits(var_0.x), -var_0.x, 14458i, 1i) | abs(vec4<i32>(var_0.x, 1i, 1i, -24203i) & -vec4<i32>(-2147483647i, var_0.x, -1i, var_0.x)));
    var_0 = countOneBits(vec4<i32>(~(-18919i), abs(0i), 26788i & var_0.x, var_0.x));
    var_0 = vec4<i32>(firstTrailingBit(~(i32(-1i) * -71610i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -countOneBits(10022i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, -61120i, 2147483647i), -vec4<i32>(-2147483647i, -40018i, -36350i, var_0.x))), countOneBits(_wgslsmith_clamp_vec3_i32(~vec3<i32>(-6473i, -2147483647i, 1i), var_0.yxy, vec3<i32>(-32042i, 13552i, var_0.x)))), -var_0.x | _wgslsmith_dot_vec3_i32(-min(var_0.wxx, var_0.yxx), var_0.wwz), -2147483647i);
    var_0 = vec4<i32>(i32(-1i) * -6044i, ~var_0.x, 2147483647i, var_0.x);
    return !select(false, any(vec2<bool>(true, true)), (min(u_input.a.x, 1u) | u_input.a.x) > _wgslsmith_div_u32(_wgslsmith_sub_u32(44669u, 33234u), reverseBits(4294967295u)));
}

fn func_2(arg_0: Struct_5, arg_1: f32, arg_2: f32) -> f32 {
    var var_0 = arg_0.a;
    let var_1 = vec2<bool>(any(select(vec3<bool>(arg_0.a.a, arg_0.a.a, true), vec3<bool>(arg_0.a.a, arg_0.a.a, false), select(vec3<bool>(var_0.a, arg_0.a.a, true), vec3<bool>(true, true, true), vec3<bool>(true, false, arg_0.a.a)))) | var_0.a, any(!(!(!vec3<bool>(arg_0.a.a, false, true)))));
    var var_2 = Struct_1(func_3(), var_0.b, min(4294967295u, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(arg_0.a.d, u_input.a.x, 0u)), ~vec3<u32>(1u, 89794u, var_0.c))) >> (~(~(~4294967295u)) % 32u), 2618u);
    var_2 = Struct_1(all(select(select(!vec4<bool>(false, var_1.x, false, true), select(vec4<bool>(true, var_1.x, var_0.a, var_0.a), vec4<bool>(arg_0.a.a, false, true, var_2.a), var_0.a), vec4<bool>(true, false, true, arg_0.a.a)), select(select(vec4<bool>(var_0.a, true, false, var_0.a), vec4<bool>(arg_0.a.a, arg_0.a.a, true, false), var_2.a), !vec4<bool>(true, false, var_2.a, true), var_2.a), select(!vec4<bool>(false, var_1.x, false, true), !vec4<bool>(false, false, false, var_1.x), !vec4<bool>(true, arg_0.a.a, arg_0.a.a, arg_0.a.a)))), vec4<i32>(arg_0.a.b.x, i32(-1i) * -_wgslsmith_dot_vec2_i32(var_2.b.xz, vec2<i32>(44325i, -26667i)), min(_wgslsmith_mult_i32(arg_0.a.b.x << (0u % 32u), abs(3244i)), -2147483647i), 1i), ~(arg_0.a.c << (firstLeadingBit(~var_2.d) % 32u)), var_0.d);
    let var_3 = arg_0;
    return arg_2;
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: vec3<i32>, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = firstTrailingBit(select(arg_0, _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(-arg_3.wyz, vec3<i32>(arg_0.x, 4173i, 16649i)), max(-arg_2, arg_3.wyy)), any(vec2<bool>(any(vec2<bool>(false, true)), true))));
    var var_1 = vec4<f32>(-775f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - -2296f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(776f - 345f))));
    let var_2 = Struct_1(true, ~vec4<i32>(select(var_0.x, arg_0.x, false) & (var_0.x >> (45149u % 32u)), -_wgslsmith_dot_vec2_i32(arg_3.xy, var_0.xz), -(~arg_2.x), select(arg_2.x >> (u_input.a.x % 32u), 62078i, false)), countOneBits(_wgslsmith_div_u32(u_input.a.x, 1u)), ~(~u_input.a.x & 4294967295u));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(Struct_5(var_2, -1022f), arg_1, arg_1)), _wgslsmith_f_op_f32(-arg_1))), var_1.x, any(!vec4<bool>(false, true, false, var_2.a)))) * _wgslsmith_f_op_f32(-arg_1)), var_1.x, var_1.x, _wgslsmith_f_op_f32(select(-583f, _wgslsmith_f_op_f32(select(-303f, 620f, !(true || var_2.a))), !any(select(vec4<bool>(false, var_2.a, var_2.a, false), vec4<bool>(var_2.a, var_2.a, var_2.a, false), vec4<bool>(var_2.a, var_2.a, var_2.a, var_2.a))))));
    return Struct_1(all(vec2<bool>(true, !var_2.a)), vec4<i32>(var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.b.x, 21520i, arg_0.x, 31414i), arg_3), var_0.x, _wgslsmith_mod_i32(arg_2.x >> (u_input.a.x % 32u), -47872i)) ^ -var_2.b, countOneBits(u_input.a.x), _wgslsmith_mult_u32(18761u, reverseBits(var_2.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(Struct_2(~u_input.a.x, func_1(firstLeadingBit(vec3<i32>(-2147483647i, 33809i, 0i)), 545f, _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(8618i, 6487i, 26295i), vec3<i32>(-1i, 43019i, 1i)), vec3<i32>(1i, 1i, 1i)), ~vec4<i32>(-2349i, -32027i, -55483i, 1i)), func_1(~vec3<i32>(1i, 2147483647i, -9264i), 747f, vec3<i32>(-1i, -1i, _wgslsmith_sub_i32(0i, -1i)), -vec4<i32>(0i, -2147483647i, 16819i, -43951i)), Struct_1(82046u <= u_input.a.x, -select(vec4<i32>(0i, 0i, 12033i, 43156i), vec4<i32>(-1i, 2147483647i, -11637i, 1i), vec4<bool>(false, true, false, true)), u_input.a.x ^ ~u_input.a.x, ~u_input.a.x & _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x))), !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false)), true));
    let var_1 = var_0.a.b.b;
    var var_2 = -min(min(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_0.a.d.b.x, 11700i), vec3<i32>(23805i, var_1.x, -4707i)), _wgslsmith_sub_i32(var_1.x, var_0.a.b.b.x)), var_0.a.d.b.x << (_wgslsmith_mod_u32(24232u, 4294967295u) % 32u)) > var_1.x;
    var_0 = Struct_4(Struct_2((~var_0.a.b.d ^ _wgslsmith_mod_u32(var_0.a.a, u_input.a.x)) >> (~(~var_0.a.c.d) % 32u), Struct_1(all(vec3<bool>(var_0.b.x, true, var_0.b.x)) && var_0.b.x, var_0.a.d.b, ~u_input.a.x, ~_wgslsmith_div_u32(var_0.a.a, u_input.a.x)), func_1(firstLeadingBit(~var_1.yyy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1513f)) * _wgslsmith_f_op_f32(-234f - -353f)), vec3<i32>(_wgslsmith_mult_i32(var_0.a.d.b.x, 5699i), 2854i, _wgslsmith_add_i32(17151i, var_0.a.d.b.x)), ~vec4<i32>(-2147483647i, var_0.a.c.b.x, -1i, 54724i)), func_1(-vec3<i32>(7060i, var_1.x, 0i), _wgslsmith_div_f32(759f, 920f), vec3<i32>(var_0.a.c.b.x, firstLeadingBit(-33546i), func_1(vec3<i32>(var_1.x, 0i, var_0.a.b.b.x), -1000f, var_0.a.d.b.wyz, vec4<i32>(var_0.a.d.b.x, 2147483647i, -1i, var_0.a.b.b.x)).b.x), vec4<i32>(firstTrailingBit(var_1.x), -10514i, abs(-15237i), 0i))), var_0.b);
    var_0 = Struct_4(var_0.a, vec2<bool>(var_0.a.b.a, any(select(!vec3<bool>(var_0.a.b.a, var_0.b.x, true), !vec3<bool>(var_0.a.d.a, false, var_0.b.x), select(vec3<bool>(var_0.b.x, true, var_0.b.x), vec3<bool>(var_0.b.x, var_0.a.c.a, var_0.b.x), var_0.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.d.c);
}

