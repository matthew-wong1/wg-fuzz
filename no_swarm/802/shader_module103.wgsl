struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: Struct_1,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: vec2<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>) -> bool {
    var var_0 = vec2<i32>(-53865i, 2147483647i) << (abs(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, 1u), vec2<u32>(u_input.a.x, u_input.a.x) & vec2<u32>(51504u, 4294967295u), u_input.a.yx)) % vec2<u32>(32u));
    var_0 = ~vec2<i32>(_wgslsmith_mult_i32(-_wgslsmith_add_i32(17609i, var_0.x), countOneBits(i32(-1i) * -1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-var_0.x, -2147483647i, 0i, ~var_0.x), vec4<i32>(var_0.x, -24037i, 4473i, _wgslsmith_mod_i32(var_0.x, 53627i))));
    var_0 = select(_wgslsmith_mult_vec2_i32(-min(vec2<i32>(-1i, 0i), vec2<i32>(1i, var_0.x)) & (vec2<i32>(-31673i, 2147483647i) & ~vec2<i32>(var_0.x, 1i)), vec2<i32>(i32(-1i) * -37814i, _wgslsmith_clamp_i32(27244i, -2147483647i, -1i))), reverseBits(abs(select(_wgslsmith_mod_vec2_i32(vec2<i32>(12923i, 4198i), vec2<i32>(var_0.x, 8260i)), vec2<i32>(var_0.x, var_0.x), vec2<bool>(true, arg_0.x)))), arg_0.x);
    var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(var_0.x, -7774i), -select(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 14626i), vec2<i32>(var_0.x, -26925i)), -vec2<i32>(9113i, -1i)), select(vec2<i32>(var_0.x, var_0.x) << (u_input.a.yy % vec2<u32>(32u)), select(vec2<i32>(-14771i, 2147483647i), vec2<i32>(var_0.x, -21643i), arg_0.x), all(vec4<bool>(arg_0.x, true, arg_0.x, true))), arg_0.zy));
    let var_1 = var_0.x;
    return all(!select(vec4<bool>(any(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)), select(arg_0.x, arg_0.x, arg_0.x), true, true), vec4<bool>(true, false, all(vec4<bool>(false, arg_0.x, arg_0.x, false)), false), !vec4<bool>(arg_0.x, true, false, false)));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1075f))), 1368f))), u_input.a.x, select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true)), true), 1000f < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-341f)), _wgslsmith_f_op_f32(f32(-1f) * -554f), func_3(vec3<bool>(false, false, true))))), _wgslsmith_mult_u32(select(reverseBits(0u), reverseBits(u_input.a.x), true), abs(15780u)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-var_0.a), var_0.b, select(var_0.c, !var_0.c, any(select(var_0.c, select(vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x), var_0.c, var_0.c), var_0.c))), _wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_mod_u32(4294967295u, var_0.d), ~abs(countOneBits(var_0.b))));
    let var_2 = var_0.c.zxw;
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, 462f, var_1.a)) + vec3<f32>(var_0.a, var_1.a, -1213f)))))), select(var_2.zx, vec2<bool>(true && select(true, var_2.x, false), var_2.x), !any(var_1.c.zz)));
    var_0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-122f)) * _wgslsmith_f_op_f32(var_1.a * var_1.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1181f - var_0.a) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a - var_1.a))))), _wgslsmith_mod_u32(~(~_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(0u, var_1.d, var_1.d))), 1u), select(select(!(!vec4<bool>(var_2.x, var_3.b.x, false, var_3.b.x)), var_1.c, var_0.c), select(select(select(var_0.c, var_0.c, var_0.c), select(vec4<bool>(false, var_0.c.x, var_2.x, var_3.b.x), var_0.c, var_3.b.x), false), var_1.c, !var_3.b.x), var_1.c.x), 1u);
    return Struct_3(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(811f)) - 242f), _wgslsmith_f_op_f32(var_0.a - -972f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1147f)) * var_3.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1859f, 1000f, var_0.a))))))), select(vec2<bool>(all(var_2.xz), any(select(var_1.c, vec4<bool>(true, false, var_3.b.x, var_2.x), var_0.c))), vec2<bool>(all(!var_1.c.yzy), var_1.c.x), select(select(select(var_2.xx, vec2<bool>(var_0.c.x, false), var_0.c.xz), select(vec2<bool>(var_2.x, true), var_0.c.yy, true), var_3.b.x), select(select(vec2<bool>(false, var_0.c.x), var_2.xz, false), var_2.zx, !var_1.c.xx), select(!var_3.b, vec2<bool>(true, false), !var_0.c.x))));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = func_2();
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(var_0.a * var_0.a), select(!var_0.b, !var_0.b, true));
    var_0 = Struct_3(var_0.a, func_2().b);
    var var_1 = !(true || !func_3(vec3<bool>(true, var_0.b.x, var_0.b.x))) || var_0.b.x;
    var var_2 = min(reverseBits(vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(1i, _wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 1913i, 19157i), vec3<i32>(-37629i, -2147483647i, -1i), vec3<i32>(354i, 1i, -10830i))), vec3<i32>(1i, 1i, 1i)), 1i, -9458i));
    return Struct_1(_wgslsmith_f_op_f32(max(var_0.a.x, _wgslsmith_f_op_f32(1196f * 349f))), arg_0, !(!(!(!vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, true)))), _wgslsmith_add_u32(arg_1, abs(1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(firstLeadingBit(vec4<u32>(u_input.a.x, ~u_input.a.x, u_input.a.x ^ u_input.a.x, _wgslsmith_add_u32(4294967295u, u_input.a.x))) << (~(~(~vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x))) % vec4<u32>(32u)));
    let var_1 = Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(232f, -523f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-844f, -1673f))), vec2<f32>(_wgslsmith_f_op_f32(-647f + -926f), -1660f))), vec2<u32>(_wgslsmith_div_u32(12536u, firstTrailingBit(80452u ^ var_0.x)), 18235u), func_1(~(u_input.a.x << (1885u % 32u)), 64900u >> (~u_input.a.x % 32u), _wgslsmith_mod_vec2_u32(~u_input.a.yy, vec2<u32>(1u << (var_0.x % 32u), 4294967295u ^ var_0.x))), var_0.yy, vec2<u32>(u_input.a.x, 1u));
    var var_2 = Struct_2(var_1.a, _wgslsmith_add_vec2_u32(vec2<u32>(41283u, ~(var_1.c.d << (18697u % 32u))), _wgslsmith_div_vec2_u32(vec2<u32>(9162u, _wgslsmith_dot_vec2_u32(var_1.d, u_input.a.yy)), select(var_1.b, vec2<u32>(var_0.x, var_1.e.x), !vec2<bool>(var_1.c.c.x, var_1.c.c.x)))), var_1.c, firstLeadingBit(countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.e.x, 0u), var_0.wz))), countOneBits(var_0.zz));
    let var_3 = ~_wgslsmith_clamp_vec4_i32(select(~min(vec4<i32>(0i, 2147483647i, 17850i, 88552i), vec4<i32>(-2286i, -36102i, -1i, -1i)), vec4<i32>(1i, 1i, 1i, 1i), var_1.c.c), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), select(vec4<i32>(-1027i, 9419i, 13771i, 2147483647i), vec4<i32>(0i, -2147483647i, -46331i, 2147483647i), var_2.c.c)) & (select(vec4<i32>(45984i, 64356i, 416i, -635i), vec4<i32>(1i, -30409i, -2147483647i, -2819i), var_2.c.c.x) & select(vec4<i32>(1i, -2147483647i, 1i, 0i), vec4<i32>(-1i, -2147483647i, -1i, 45753i), vec4<bool>(true, var_2.c.c.x, var_2.c.c.x, true))), abs(max(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -2147483647i, -2147483647i, 44998i), vec4<i32>(-34978i, 23875i, 1i, 2147483647i)), vec4<i32>(20902i, 2147483647i, -33343i, -2147483647i))));
    var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c.a, _wgslsmith_f_op_f32(f32(-1f) * -522f))), ~(min(~vec2<u32>(var_0.x, var_2.c.d), countOneBits(var_1.d)) | vec2<u32>(59792u, var_2.e.x)), var_2.c, select(_wgslsmith_add_vec2_u32(select(select(vec2<u32>(var_2.b.x, u_input.a.x), var_2.e, false), vec2<u32>(var_2.b.x, var_0.x), vec2<bool>(false, var_2.c.c.x)), ~(u_input.a.zz >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)))), ~vec2<u32>(~50644u, func_1(var_2.e.x, 21919u, vec2<u32>(var_1.e.x, 0u)).b), (all(var_2.c.c) || (var_1.c.c.x & var_2.c.c.x)) & true), max(var_1.e, u_input.a.zz));
    var_2 = var_1;
    var_2 = var_1;
    var_2 = Struct_2(var_1.a, ~min(_wgslsmith_sub_vec2_u32(countOneBits(var_1.e), _wgslsmith_add_vec2_u32(var_1.e, var_2.d)), var_0.zw), Struct_1(300f, _wgslsmith_add_u32(13117u, countOneBits(max(u_input.a.x, u_input.a.x))), var_1.c.c, var_2.d.x), _wgslsmith_mod_vec2_u32(var_0.zx, vec2<u32>(var_2.e.x | ~0u, u_input.a.x)), ~firstLeadingBit(~vec2<u32>(17929u, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(-134f, countOneBits(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.x, var_3.x, var_3.x), select(vec3<i32>(-2147483647i, 2376i, var_3.x), var_3.xwz, var_2.c.c.zyz)), var_3.x)), _wgslsmith_f_op_f32(-var_2.c.a), select(vec2<i32>(countOneBits(abs(1i)), _wgslsmith_div_i32(var_3.x, 54134i)), vec2<i32>(~var_3.x, 1i), vec2<bool>(any(vec4<bool>(false, var_1.c.c.x, false, var_2.c.c.x)) | true, true)), ~(-var_3.xzy));
}

