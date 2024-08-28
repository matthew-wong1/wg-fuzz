struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> i32 {
    let var_0 = countOneBits(vec3<i32>(1i, -1i, 9039i)) >> (u_input.a.ywy % vec3<u32>(32u));
    var var_1 = Struct_5(firstLeadingBit(vec4<i32>(firstTrailingBit(var_0.x), var_0.x, _wgslsmith_mod_i32(0i, var_0.x), var_0.x)) << (~vec4<u32>(~u_input.b, u_input.a.x, 23699u, u_input.a.x & u_input.b) % vec4<u32>(32u)));
    var var_2 = Struct_2(1i, _wgslsmith_f_op_f32(floor(-573f)));
    var var_3 = Struct_4(Struct_1((0u ^ max(4294967295u, u_input.b)) > ~u_input.b, vec4<bool>(false, true, select(true, true, any(vec2<bool>(true, false))), -987f >= var_2.b), _wgslsmith_f_op_f32(sign(-1153f))));
    var var_4 = select(!select(vec4<bool>(true, var_3.a.b.x, any(vec3<bool>(var_3.a.b.x, true, false)), var_0.x >= -6487i), !(!var_3.a.b), _wgslsmith_f_op_f32(select(-1987f, var_3.a.c, var_3.a.a)) == var_2.b), !select(vec4<bool>(any(var_3.a.b.wwz), true, all(var_3.a.b.zx), any(var_3.a.b.wwy)), select(vec4<bool>(var_3.a.a, var_3.a.b.x, var_3.a.a, var_3.a.a), vec4<bool>(false, false, true, false), !var_3.a.b.x), vec4<bool>(false, var_2.b > 1704f, var_3.a.a, any(vec4<bool>(var_3.a.b.x, true, true, var_3.a.a)))), true);
    return -(~(-(var_2.a ^ 1400i))) | var_0.x;
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = ~firstTrailingBit(_wgslsmith_div_i32(-17507i, _wgslsmith_sub_i32(-55894i, 35144i)) << (~(4294967295u | u_input.c.x) % 32u));
    let var_1 = _wgslsmith_add_i32(_wgslsmith_clamp_i32(-2354i, func_3() >> (_wgslsmith_mult_u32(u_input.c.x << (0u % 32u), u_input.c.x) % 32u), _wgslsmith_dot_vec4_i32(~(vec4<i32>(45166i, 0i, -27833i, 27717i) >> (vec4<u32>(u_input.a.x, u_input.c.x, 4294967295u, 1u) % vec4<u32>(32u))), -_wgslsmith_clamp_vec4_i32(vec4<i32>(37812i, -1i, -36012i, -2147483647i), vec4<i32>(2147483647i, 1i, 37343i, 16214i), vec4<i32>(16736i, -12382i, -404i, 1i)))), 0i);
    var_0 = reverseBits(var_1);
    var var_2 = arg_0.a;
    let var_3 = 1u;
    return !(4294967295u > u_input.b) & arg_0.b.x;
}

fn func_1() -> i32 {
    var var_0 = Struct_1(func_2(Struct_1(true, vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -703f))), !(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var_0 = Struct_1(any(var_0.b.xw) | true, select(!vec4<bool>(all(vec3<bool>(var_0.a, var_0.a, false)), true, true, any(var_0.b)), select(!select(var_0.b, vec4<bool>(var_0.a, true, var_0.b.x, true), var_0.a), var_0.b, all(var_0.b.yw) | !var_0.a), (var_0.b.x || true) || ((u_input.a.x >> (1u % 32u)) > ~46763u)), _wgslsmith_f_op_f32(floor(-777f)));
    var_0 = Struct_1(false || var_0.b.x, var_0.b, _wgslsmith_f_op_f32(min(-670f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(-var_0.c)))))));
    var var_1 = 1u;
    let var_2 = -vec3<i32>(firstLeadingBit(-(~36765i)), 0i, ~max(i32(-1i) * -23939i, _wgslsmith_add_i32(0i, -55677i)));
    return reverseBits(-_wgslsmith_dot_vec2_i32(-var_2.xy, var_2.xx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1264f;
    var var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(1i, -36255i, func_1()), reverseBits(vec3<i32>(-2147483647i & _wgslsmith_dot_vec3_i32(vec3<i32>(-6885i, 2147483647i, -37425i), vec3<i32>(-19687i, 8497i, -2147483647i)), firstLeadingBit(i32(-1i) * -24516i), func_1())));
    let var_2 = abs(~(-vec2<i32>(~(-2147483647i), -1i)));
    var var_3 = !(!any(vec2<bool>(true, true)) && (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(562f - var_0)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -780f))));
    var_1 = vec3<i32>(1i, ~var_1.x, var_1.x);
    let var_4 = firstLeadingBit(func_1());
    var_3 = _wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.c.x, ~(u_input.b & 0u)), countOneBits(u_input.a.x), firstTrailingBit(countOneBits(u_input.c.x))) <= u_input.c.x;
    var var_5 = vec2<u32>(47304u, u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-440f, -626f), _wgslsmith_div_f32(2231f, -945f)), _wgslsmith_f_op_f32(trunc(-1336f)))));
}

