struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> u32 {
    let var_0 = !(false | any(vec4<bool>(any(vec3<bool>(false, true, true)), true, true, any(vec3<bool>(true, false, true)))));
    let var_1 = u_input.c;
    var var_2 = max(abs(-countOneBits(-u_input.e.zx)), abs(_wgslsmith_add_vec2_i32(abs(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, u_input.e.x), vec2<i32>(1i, u_input.c))), u_input.a.zx)));
    var var_3 = Struct_3(firstLeadingBit(-7546i));
    let var_4 = vec4<bool>(u_input.b == u_input.d, false & (_wgslsmith_add_u32(_wgslsmith_sub_u32(20714u, u_input.b), 93141u) > ~u_input.b), all(select(select(vec2<bool>(false, false), !vec2<bool>(var_0, true), vec2<bool>(var_0, var_0)), !vec2<bool>(false, var_0), select(select(vec2<bool>(true, var_0), vec2<bool>(true, var_0), false), vec2<bool>(var_0, false), vec2<bool>(false, true)))), !(!(_wgslsmith_f_op_f32(select(-780f, 1494f, false)) <= _wgslsmith_f_op_f32(select(598f, 694f, false)))));
    return u_input.b;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_div_vec4_u32(select(~firstTrailingBit(abs(vec4<u32>(31663u, u_input.b, 53697u, u_input.d))), max(vec4<u32>(func_3(), 3851u | u_input.d, ~19970u, ~u_input.d), abs(select(vec4<u32>(u_input.b, u_input.b, u_input.b, 2628u), vec4<u32>(4170u, u_input.d, u_input.b, u_input.b), true))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), true), all(vec3<bool>(true, true, true)))), firstLeadingBit(~(~(vec4<u32>(u_input.b, u_input.b, 15617u, 1u) << (vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u))))));
    var var_1 = 74810u;
    var_0 = vec4<u32>(~min(~(~u_input.d), 1u), var_0.x, ~1u, ~49876u);
    let var_2 = select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(51627u >= var_0.x, select(false, false, false)), vec2<bool>(true, true), any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), true)))), select(vec2<bool>(all(vec3<bool>(false, true, false)), all(vec4<bool>(true, true, true, true))), vec2<bool>(!(u_input.e.x == u_input.a.x), true), all(vec2<bool>(43683u == var_0.x, any(vec4<bool>(true, true, true, true))))), vec2<bool>(true, 4439u == firstLeadingBit(_wgslsmith_sub_u32(4294967295u, var_0.x))));
    var_0 = _wgslsmith_div_vec4_u32(~(~_wgslsmith_mult_vec4_u32(~vec4<u32>(16099u, 1u, 4294967295u, 0u), ~vec4<u32>(5221u, var_0.x, var_0.x, 39496u))), min(max((vec4<u32>(4294967295u, 69618u, 19409u, var_0.x) ^ vec4<u32>(u_input.b, var_0.x, 0u, 6088u)) ^ (vec4<u32>(1u, var_0.x, var_0.x, u_input.d) ^ vec4<u32>(u_input.d, 0u, 29958u, 4294967295u)), firstLeadingBit(vec4<u32>(u_input.d, 24751u, 11608u, 4294967295u))), firstTrailingBit(vec4<u32>(abs(var_0.x), 1u, 1u, var_0.x))));
    return Struct_1(13746i, -1i);
}

fn func_1(arg_0: vec3<bool>) -> i32 {
    var var_0 = func_2();
    let var_1 = Struct_4(~vec4<u32>(30430u, ~u_input.b & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.d, 4294967295u), vec3<u32>(u_input.b, 4294967295u, u_input.b)), ~u_input.b, func_3()), u_input.a.x, firstLeadingBit(max(~vec2<i32>(0i, u_input.c), _wgslsmith_mod_vec2_i32(u_input.e.yx, vec2<i32>(-1i, var_0.a))) << (vec2<u32>(u_input.b, ~1u) % vec2<u32>(32u))));
    let var_2 = Struct_4(~firstLeadingBit(var_1.a), _wgslsmith_add_i32(var_1.c.x & -_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_0.a), vec2<i32>(var_0.b, var_0.b)), var_0.b), -_wgslsmith_mod_vec2_i32(select(~vec2<i32>(u_input.a.x, 304i), vec2<i32>(u_input.a.x, -2147483647i), any(vec4<bool>(true, false, arg_0.x, arg_0.x))), var_1.c));
    var_0 = func_2();
    let var_3 = Struct_2(func_2(), u_input.a.yx, firstLeadingBit(~min(vec4<i32>(-18936i, var_0.b, -5049i, var_1.c.x), vec4<i32>(var_2.c.x, u_input.c, 0i, 1i) >> (vec4<u32>(var_2.a.x, 18724u, u_input.d, 4294967295u) % vec4<u32>(32u)))), Struct_1(u_input.c, -13833i));
    return u_input.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec4_i32(min(vec4<i32>(_wgslsmith_div_i32(-1i, -2147483647i) | ~u_input.c, 2147483647i, func_1(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false)), u_input.e.x & firstTrailingBit(u_input.c)), _wgslsmith_sub_vec4_i32(-(~vec4<i32>(15211i, 2147483647i, -2147483647i, u_input.e.x)), ~min(vec4<i32>(0i, u_input.a.x, u_input.e.x, 0i), vec4<i32>(-23747i, 3556i, u_input.e.x, 32955i)))), vec4<i32>(~(-11796i), u_input.e.x, _wgslsmith_sub_i32(16173i, _wgslsmith_mod_i32(u_input.e.x, u_input.a.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.a.x, _wgslsmith_div_i32(u_input.a.x, u_input.c), _wgslsmith_sub_i32(u_input.c, u_input.e.x), -43959i), -countOneBits(vec4<i32>(1i, -23909i, 89104i, 3529i)))));
    var_0 = _wgslsmith_sub_vec4_i32(select(-(~vec4<i32>(var_0.x, u_input.a.x, u_input.a.x, var_0.x) & vec4<i32>(32230i, var_0.x, 17320i, 12170i)), countOneBits(_wgslsmith_clamp_vec4_i32(~vec4<i32>(-19314i, var_0.x, -1i, -2147483647i), min(vec4<i32>(-2147483647i, 1i, -28310i, 1i), vec4<i32>(u_input.a.x, var_0.x, 0i, -1i)), vec4<i32>(u_input.e.x, 33389i, var_0.x, 28248i))), all(vec4<bool>(select(true, true, true), false, true, u_input.b >= 23440u))), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(var_0.x, ~(-2147483647i)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_0.x, var_0.x), var_0.yzx)), -_wgslsmith_sub_i32(-16336i, -u_input.e.x), u_input.a.x & select(-57602i, ~(-37116i), select(true, false, false)), _wgslsmith_div_i32(firstTrailingBit(abs(u_input.e.x)), ~_wgslsmith_add_i32(-37829i, u_input.c))));
    var var_1 = vec2<i32>(u_input.c, -27831i);
    let var_2 = -727f;
    let var_3 = all(vec3<bool>(any(vec2<bool>(true, all(vec2<bool>(false, true)))), false, 71942u <= ~firstTrailingBit(u_input.d)));
    var_0 = countOneBits(-(~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-36162i, 14341i, 0i, var_1.x), vec4<i32>(-33165i, var_0.x, -2147483647i, 2147483647i), vec4<i32>(43561i, 40043i, 10761i, 0i)))));
    var_0 = select(_wgslsmith_sub_vec4_i32(vec4<i32>(19645i, 0i, _wgslsmith_sub_i32(0i, 0i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 9478i, u_input.a.x), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, u_input.c, var_1.x), vec4<i32>(var_1.x, 32993i, var_1.x, u_input.c)))), ~vec4<i32>(var_1.x, _wgslsmith_add_i32(1i, -1i), var_0.x << (4294967295u % 32u), 1i)), _wgslsmith_mult_vec4_i32(select(vec4<i32>(var_0.x, u_input.e.x, var_0.x, -36343i), vec4<i32>(var_0.x, u_input.a.x, var_0.x, u_input.e.x) >> (vec4<u32>(4294967295u, 75u, u_input.d, 14986u) % vec4<u32>(32u)), !var_3) ^ select(max(vec4<i32>(var_1.x, var_1.x, var_0.x, 2147483647i), vec4<i32>(-86452i, 0i, u_input.c, var_0.x)), min(vec4<i32>(14570i, var_1.x, -1310i, var_1.x), vec4<i32>(var_0.x, var_0.x, var_1.x, var_0.x)), any(vec4<bool>(false, false, var_3, var_3))), vec4<i32>(var_0.x, -_wgslsmith_clamp_i32(29038i, var_0.x, 0i), -reverseBits(var_0.x), ~abs(var_1.x))), select(vec4<bool>(var_3, true, all(select(vec2<bool>(true, false), vec2<bool>(true, var_3), var_3)), true), select(select(vec4<bool>(false, var_3, true, false), vec4<bool>(var_3, false, false, var_3), vec4<bool>(var_3, true, var_3, true)), !select(vec4<bool>(true, var_3, false, true), vec4<bool>(var_3, var_3, var_3, var_3), false), true), var_3));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.d, vec2<u32>(4294967295u, _wgslsmith_sub_u32(12196u, u_input.d)) >> ((vec2<u32>(~27186u, select(5588u, u_input.d, var_3)) >> ((~vec2<u32>(u_input.b, 10252u) >> (vec2<u32>(1u, u_input.b) % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u)));
}

