struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = vec4<bool>(!(any(select(arg_0.b.zz, arg_0.b.yx, arg_0.b.x)) || ((true && arg_0.b.x) || (arg_0.a.x != 5307u))), !select(all(select(vec4<bool>(true, arg_0.b.x, true, arg_0.b.x), vec4<bool>(arg_0.b.x, false, true, arg_0.b.x), vec4<bool>(arg_0.b.x, arg_0.b.x, false, arg_0.b.x))), arg_0.b.x, all(!vec4<bool>(arg_0.b.x, true, true, arg_0.b.x))), true, arg_0.b.x | false);
    var var_1 = arg_0;
    let var_2 = Struct_1(~(~vec2<u32>(46717u, 20305u)) ^ var_1.a, select(vec3<bool>(true, true, any(!vec3<bool>(arg_0.b.x, false, true))), vec3<bool>(any(vec3<bool>(true, arg_0.b.x, var_0.x)), true, any(vec4<bool>(true, true, true, false))), select(var_1.b, select(select(vec3<bool>(arg_0.b.x, false, var_1.b.x), vec3<bool>(false, false, false), var_1.b.x), !vec3<bool>(true, true, var_1.b.x), false), true)), 64314i, countOneBits(-(var_1.d << (vec4<u32>(4439u, var_1.a.x, 49840u, var_1.e) % vec4<u32>(32u)))), ~u_input.b);
    var var_3 = max(26400i, -_wgslsmith_dot_vec2_i32(arg_0.d.xw, _wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(arg_0.d.x, arg_0.c)))) ^ -2147483647i;
    var_3 = var_2.d.x;
    return max(4294967295u, 84641u);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: i32) -> Struct_1 {
    let var_0 = Struct_1(~(~vec2<u32>(func_3(Struct_1(u_input.a, vec3<bool>(false, false, false), arg_2, arg_1, 4294967295u)), firstTrailingBit(1u))), arg_0.zzx, -arg_1.x, (abs(~vec4<i32>(-2147483647i, arg_2, arg_1.x, arg_2)) << (reverseBits(vec4<u32>(21691u, 0u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u))) ^ (vec4<i32>(abs(22551i), _wgslsmith_clamp_i32(arg_2, arg_2, arg_1.x), -2147483647i, 2147483647i << (u_input.a.x % 32u)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 20754u, u_input.b, u_input.a.x) >> (vec4<u32>(1u, u_input.a.x, 1u, u_input.b) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.a.x, 50631u, 60862u), vec4<u32>(4294967295u, 29922u, 84192u, 0u))) % vec4<u32>(32u))), 23616u);
    let var_1 = arg_0.x;
    var var_2 = vec3<i32>(abs(var_0.c) << (1u % 32u), arg_1.x, -(~_wgslsmith_dot_vec2_i32(~var_0.d.zx, arg_1.zz)));
    var var_3 = select(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~var_0.a, vec2<u32>(var_0.a.x, 6333u)), var_0.a.x), u_input.a.x), u_input.a, true);
    var_3 = u_input.a;
    return var_0;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: i32) -> bool {
    var var_0 = func_2(vec4<bool>(false, all(vec3<bool>(true, true, arg_1.b.x)), !all(vec3<bool>(true, true, true)), arg_1.b.x), firstLeadingBit(arg_1.d), -_wgslsmith_mod_i32(arg_1.c, 7719i));
    var_0 = func_2(select(!vec4<bool>(func_2(vec4<bool>(false, true, false, var_0.b.x), vec4<i32>(arg_2, 2147483647i, 2147483647i, 0i), 0i).b.x, any(arg_1.b.xx), select(var_0.b.x, var_0.b.x, false), var_0.c >= arg_2), !select(select(vec4<bool>(arg_1.b.x, false, false, arg_1.b.x), vec4<bool>(false, var_0.b.x, var_0.b.x, true), arg_1.b.x), select(vec4<bool>(var_0.b.x, true, arg_1.b.x, true), vec4<bool>(arg_1.b.x, var_0.b.x, arg_1.b.x, true), vec4<bool>(var_0.b.x, var_0.b.x, arg_1.b.x, false)), vec4<bool>(true, arg_1.b.x, arg_1.b.x, var_0.b.x)), func_2(vec4<bool>(var_0.b.x, arg_1.b.x & var_0.b.x, var_0.a.x != var_0.e, arg_1.b.x), _wgslsmith_mod_vec4_i32(var_0.d, var_0.d) ^ var_0.d, var_0.d.x).b.x), max(_wgslsmith_mod_vec4_i32(arg_1.d, vec4<i32>(-var_0.c, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -47253i), vec2<i32>(-26021i, arg_1.c)), firstLeadingBit(arg_2), var_0.c)), arg_1.d), firstLeadingBit(-36729i));
    var var_1 = !select(select(vec4<bool>(arg_1.b.x, false, arg_0.x == var_0.a.x, func_2(vec4<bool>(arg_1.b.x, var_0.b.x, true, var_0.b.x), var_0.d, 1i).b.x), !(!vec4<bool>(arg_1.b.x, false, false, true)), any(!vec4<bool>(true, arg_1.b.x, arg_1.b.x, arg_1.b.x))), select(vec4<bool>(var_0.b.x, arg_1.b.x, !arg_1.b.x, var_0.b.x), !(!vec4<bool>(true, var_0.b.x, false, var_0.b.x)), vec4<bool>(arg_1.b.x, arg_1.b.x, true, false)), firstTrailingBit(~(-1i)) != min(14311i >> (var_0.e % 32u), _wgslsmith_dot_vec3_i32(arg_1.d.wxz, var_0.d.wzw)));
    var_0 = func_2(select(vec4<bool>(true, firstTrailingBit(u_input.a.x) <= abs(57883u), true, _wgslsmith_sub_u32(0u, arg_0.x) == (arg_1.e | 81431u)), select(vec4<bool>(true, select(false, var_1.x, var_0.b.x), false, true), select(vec4<bool>(arg_1.b.x, arg_1.b.x, var_0.b.x, var_0.b.x), !vec4<bool>(false, var_0.b.x, var_1.x, false), select(vec4<bool>(var_0.b.x, var_1.x, var_0.b.x, true), vec4<bool>(false, arg_1.b.x, false, false), vec4<bool>(arg_1.b.x, arg_1.b.x, false, var_1.x))), any(var_0.b)), !(!vec4<bool>(false, var_0.b.x, var_1.x, true))), -_wgslsmith_mult_vec4_i32(arg_1.d, arg_1.d), min(var_0.d.x, 1i) | (-1i << (((arg_1.a.x | var_0.a.x) << (_wgslsmith_mult_u32(1u, arg_1.a.x) % 32u)) % 32u)));
    var var_2 = func_2(select(vec4<bool>(true, false, var_1.x, !(!var_0.b.x)), vec4<bool>(var_0.b.x, var_0.b.x, false, arg_1.b.x), vec4<bool>(var_1.x, var_1.x, any(var_1.xw), !(arg_1.d.x != 13934i))), max(arg_1.d, var_0.d << (abs(arg_0) % vec4<u32>(32u))), ~var_0.d.x);
    return any(vec4<bool>(var_2.b.x, true, !(!(arg_1.d.x == 0i)), true));
}

fn func_1(arg_0: vec3<f32>, arg_1: i32) -> vec2<bool> {
    return vec2<bool>(true || func_4(max(vec4<u32>(u_input.b, u_input.b, 1u, u_input.a.x) | vec4<u32>(u_input.b, 1u, 45805u, u_input.a.x), vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, 30904u) | vec4<u32>(1u, 0u, u_input.b, 6206u)), func_2(vec4<bool>(true, true, true, true), vec4<i32>(arg_1, -2951i, 40878i, -49267i), i32(-1i) * -1i), arg_1), all(func_2(vec4<bool>(true, true, all(vec4<bool>(true, false, true, false)), true), reverseBits(max(vec4<i32>(arg_1, 0i, -2147483647i, arg_1), vec4<i32>(1i, 1i, arg_1, 2147483647i))), _wgslsmith_mod_i32(arg_1, ~2147483647i)).b.yx));
}

fn func_5(arg_0: vec2<bool>) -> bool {
    var var_0 = !(!select(vec2<bool>(arg_0.x, true), vec2<bool>(true, true), !arg_0));
    var var_1 = 47739i;
    var var_2 = -1i;
    var var_3 = ~_wgslsmith_dot_vec2_i32(select(~_wgslsmith_clamp_vec2_i32(vec2<i32>(2950i, -30296i), vec2<i32>(2147483647i, 29330i), vec2<i32>(-2147483647i, -33961i)), -firstLeadingBit(vec2<i32>(-26453i, 1i)), func_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, -556f, 1062f))), func_2(vec4<bool>(var_0.x, true, false, var_0.x), vec4<i32>(31159i, 4712i, -1i, 8696i), -48773i).c)), vec2<i32>(abs(-2147483647i), -countOneBits(-18485i)));
    var var_4 = Struct_1(u_input.a & ~u_input.a, select(func_2(vec4<bool>(false, true, all(vec3<bool>(false, arg_0.x, true)), var_0.x & var_0.x), -vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), min(vec2<i32>(-7927i, 93i), vec2<i32>(1i, -1i)))).b, select(select(func_2(vec4<bool>(true, false, var_0.x, arg_0.x), vec4<i32>(-2147483647i, -2147483647i, -2147483647i, 1i), -2759i).b, vec3<bool>(true, true, true), !vec3<bool>(false, true, arg_0.x)), !(!vec3<bool>(false, false, var_0.x)), reverseBits(4294967295u) >= func_2(vec4<bool>(var_0.x, false, true, arg_0.x), vec4<i32>(-2147483647i, 0i, -2147483647i, 12443i), -41985i).e), all(!arg_0)), _wgslsmith_div_i32(2147483647i, -select(~(-2147483647i), -8226i, !arg_0.x)), ~(-(~vec4<i32>(0i, -23486i, -2147483647i, -40998i))), _wgslsmith_add_u32(u_input.a.x, _wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 82657u, 62495u, 1u), vec4<u32>(0u, u_input.b, 37116u, 1u) << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.b, u_input.a.x) % vec4<u32>(32u))))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(select(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true)), select(select(func_1(vec3<f32>(-952f, 871f, -104f), 1i), vec2<bool>(false, true), true), func_1(vec3<f32>(-801f, 555f, 1041f), reverseBits(1i)), false), false));
    var var_1 = _wgslsmith_add_vec4_u32(~min(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.a.x, 1u, 6158u), vec4<u32>(83250u, 34595u, u_input.b, u_input.a.x), vec4<u32>(0u, 20395u, u_input.b, u_input.a.x)), ~vec4<u32>(u_input.b, u_input.a.x, 27511u, u_input.b), vec4<bool>(true, true, true, true)), abs(~vec4<u32>(u_input.a.x, 1u, 100208u, u_input.a.x))), max(_wgslsmith_add_vec4_u32(max(vec4<u32>(45532u, u_input.b, u_input.b, u_input.a.x), vec4<u32>(14999u, u_input.a.x, 30224u, u_input.a.x)), vec4<u32>(u_input.a.x, 4294967295u, 6800u, 0u)) ^ (vec4<u32>(4294967295u, 28335u, u_input.b, 4294967295u) & countOneBits(vec4<u32>(u_input.b, 0u, u_input.b, u_input.a.x))), max(~(vec4<u32>(0u, 4294967295u, 4294967295u, 0u) << (vec4<u32>(0u, 0u, u_input.b, u_input.b) % vec4<u32>(32u))), ~(vec4<u32>(0u, u_input.b, 0u, u_input.a.x) >> (vec4<u32>(u_input.b, 0u, 19992u, u_input.a.x) % vec4<u32>(32u))))));
    var_0 = true;
    var_0 = true;
    var var_2 = vec2<bool>(false, ~countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(21740i, 16581i, -15021i), vec3<i32>(10227i, 19265i, 0i))) != _wgslsmith_mult_i32(-2147483647i, -_wgslsmith_dot_vec2_i32(vec2<i32>(46562i, 18980i), vec2<i32>(-36232i, 7880i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-(~(~(-1i))), _wgslsmith_dot_vec2_i32(~(~vec2<i32>(-66506i, 30249i)), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(3199i, 2147483647i), vec2<i32>(2147483647i, 41871i), vec2<i32>(0i, 0i))), 33243i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1148f, 578f)) * _wgslsmith_f_op_f32(trunc(-558f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2173f)))));
}

