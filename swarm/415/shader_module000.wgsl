struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<f32>) -> bool {
    return all(vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, false), true)), true));
}

fn func_2() -> vec4<i32> {
    let var_0 = Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, _wgslsmith_add_i32(i32(-1i) * -3377i, u_input.b), _wgslsmith_add_i32(u_input.b, -39294i), -u_input.b), vec4<i32>(u_input.b, 1i, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b, 42082i), _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, u_input.b), vec2<i32>(1i, u_input.b))), 1i)));
    let var_1 = firstTrailingBit(max(_wgslsmith_clamp_vec3_i32(~select(var_0.a.zwx, var_0.a.zxw, vec3<bool>(true, false, true)), -vec3<i32>(1i, 1i, 1i), var_0.a.zww), var_0.a.wxw));
    var var_2 = vec2<bool>(true && (!(var_1.x == var_0.a.x) || all(vec3<bool>(false, false, true))), func_3(reverseBits(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x) >> (max(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x)) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-309f, -1042f, -1460f))), vec3<f32>(1f, 1f, 1f), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), vec3<bool>(false, false, true), vec3<bool>(true, true, true))))));
    let var_3 = Struct_4(517f, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-936f - _wgslsmith_div_f32(-1249f, 151f)), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -258f)))))), var_0);
    let var_4 = abs(_wgslsmith_mod_vec4_i32(var_0.a, var_0.a)) ^ var_0.a;
    return select(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(52119i, var_1.x, 0i, var_1.x), var_4, countOneBits(vec4<i32>(var_1.x, u_input.b, 1i, var_3.c.a.x))) | ~vec4<i32>(-1i, var_3.c.a.x, 24317i, var_4.x), firstLeadingBit(vec4<i32>(2147483647i, var_0.a.x, -4462i, var_1.x) & abs(var_0.a))), (var_0.a << (_wgslsmith_clamp_vec4_u32(~vec4<u32>(4416u, u_input.a.x, 1u, 16142u), min(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 5529u), vec4<u32>(u_input.a.x, u_input.a.x, 11485u, u_input.a.x)), firstLeadingBit(vec4<u32>(1u, 4325u, 1u, u_input.a.x))) % vec4<u32>(32u))) >> (vec4<u32>(~4294967295u, firstTrailingBit(u_input.a.x), u_input.a.x, 1u) % vec4<u32>(32u)), var_2.x);
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec4<i32>, arg_3: i32) -> i32 {
    let var_0 = arg_2;
    var var_1 = vec4<i32>(-abs(2111i), 37414i, abs(-_wgslsmith_clamp_i32(arg_3, 2147483647i, arg_3)) << (_wgslsmith_mod_u32(reverseBits(1u), 21363u) % 32u), _wgslsmith_clamp_i32(var_0.x, select(-(i32(-1i) * -2147483647i), _wgslsmith_dot_vec3_i32(-var_0.zyx, ~vec3<i32>(2147483647i, -1i, -10710i)), false), var_0.x));
    var_1 = max(_wgslsmith_clamp_vec4_i32(-vec4<i32>(-5789i, _wgslsmith_div_i32(1i, u_input.b), arg_3 ^ arg_3, 8314i), ~arg_2, func_2()), vec4<i32>(select(-18332i, _wgslsmith_mod_i32(-var_0.x, arg_3), false), 1i, -14286i, 2147483647i));
    let var_2 = abs(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, ~u_input.a.x), _wgslsmith_add_vec2_u32(min(u_input.a.zz, u_input.a.zx), vec2<u32>(32350u, arg_0)))) & abs(vec2<u32>(_wgslsmith_sub_u32(arg_0, ~46922u), ~_wgslsmith_clamp_u32(arg_0, 0u, arg_0)));
    var var_3 = _wgslsmith_sub_vec2_i32(var_1.yx, func_2().xw);
    return _wgslsmith_mod_i32(~_wgslsmith_add_i32(firstTrailingBit(_wgslsmith_sub_i32(-2147483647i, -1i)), 0i), min(i32(-1i) * -var_0.x, select(var_3.x, var_0.x, true)));
}

fn func_4(arg_0: i32, arg_1: vec4<f32>) -> Struct_2 {
    var var_0 = -19198i;
    var_0 = min(arg_0, _wgslsmith_div_i32(0i, _wgslsmith_mod_i32(u_input.b, _wgslsmith_clamp_i32(arg_0, -18999i, 35259i))) | arg_0);
    var_0 = -u_input.b;
    let var_1 = Struct_5(_wgslsmith_mod_vec3_u32(~(min(u_input.a, vec3<u32>(28030u, 17556u, 14587u)) | (vec3<u32>(4294967295u, u_input.a.x, u_input.a.x) & u_input.a)), _wgslsmith_sub_vec3_u32(u_input.a, ~(vec3<u32>(1u, 1u, u_input.a.x) >> (u_input.a % vec3<u32>(32u))))));
    var_0 = i32(-1i) * -(~(~min(0i, u_input.b)));
    return Struct_2(countOneBits(arg_0), Struct_1(select(firstLeadingBit(-vec4<i32>(2147483647i, -1i, arg_0, -63841i)), vec4<i32>(arg_0, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, u_input.b, 1i), vec3<i32>(arg_0, -2147483647i, -1i)), ~(-52962i), u_input.b), vec4<bool>(true, true, var_1.a.x >= u_input.a.x, false))), Struct_1(-vec4<i32>(1i, u_input.b, 15090i, ~2147483647i)), Struct_1(reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, arg_0, 0i, -7844i), vec4<i32>(38632i, 1i, -1i, 2147483647i))) | _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.b), vec4<i32>(-14403i, -2147483647i, 1i, 35707i))));
}

fn func_5(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_3 {
    var var_0 = arg_0;
    var_0 = arg_0;
    var_0 = !all(select(select(vec4<bool>(false, arg_0, false, arg_0), !vec4<bool>(true, true, false, arg_0), select(vec4<bool>(false, false, arg_0, arg_0), vec4<bool>(true, true, false, arg_0), false)), select(select(vec4<bool>(true, arg_0, true, arg_0), vec4<bool>(arg_0, arg_0, true, arg_0), arg_0), !vec4<bool>(arg_0, true, arg_0, false), any(vec4<bool>(true, false, arg_0, true))), arg_0));
    let var_1 = true;
    var_0 = true;
    return Struct_3(-29747i, Struct_1(vec4<i32>(_wgslsmith_mult_i32(~(-12852i), u_input.b), 1i, -26459i, _wgslsmith_div_i32(arg_2.d.a.x, 13960i))));
}

fn func_6(arg_0: bool, arg_1: Struct_3) -> StorageBuffer {
    var var_0 = select(vec2<bool>(true, arg_0), vec2<bool>(true, true), !vec2<bool>(arg_0, !any(vec2<bool>(arg_0, true))));
    var_0 = select(select(vec2<bool>(all(!vec3<bool>(true, false, arg_0)), !var_0.x), vec2<bool>(false, any(select(vec4<bool>(var_0.x, true, false, true), vec4<bool>(false, var_0.x, var_0.x, false), false))), select(vec2<bool>(true, func_3(vec4<u32>(u_input.a.x, 50573u, 1265u, u_input.a.x), vec3<f32>(-147f, -1509f, -883f))), !vec2<bool>(true, arg_0), true)), vec2<bool>(false | all(vec4<bool>(var_0.x, true, true, var_0.x)), all(vec4<bool>(true, true, true, true))), !select(!select(vec2<bool>(var_0.x, false), vec2<bool>(arg_0, true), vec2<bool>(false, false)), select(vec2<bool>(arg_0, var_0.x), !vec2<bool>(arg_0, true), var_0.x), vec2<bool>(func_3(vec4<u32>(u_input.a.x, 7113u, u_input.a.x, u_input.a.x), vec3<f32>(938f, -507f, -1462f)), true)));
    var var_1 = -(u_input.b | arg_1.b.a.x);
    let var_2 = firstLeadingBit(_wgslsmith_sub_i32(arg_1.a, arg_1.a));
    var_0 = vec2<bool>(true, true);
    return StorageBuffer(vec2<f32>(-1612f, _wgslsmith_div_f32(-313f, _wgslsmith_f_op_f32(sign(-917f)))), func_2().x, arg_1.b.a.x ^ _wgslsmith_mult_i32((-1i << (u_input.a.x % 32u)) >> ((u_input.a.x >> (43689u % 32u)) % 32u), abs(-2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -331f;
    let var_1 = 48321i != u_input.b;
    let var_2 = u_input.a.zz;
    let var_3 = var_2.x;
    let var_4 = -1000f;
    let x = u_input.a;
    s_output = func_6(all(vec4<bool>(false, var_0 > var_0, _wgslsmith_div_i32(0i, u_input.b) < u_input.b, false)), func_5(var_1, vec3<u32>(firstTrailingBit(1u) | 22875u, 18170u & ~u_input.a.x, u_input.a.x), func_4(func_1(u_input.a.x, true, vec4<i32>(24867i, 1i, u_input.b, u_input.b), -1i) >> (25169u % 32u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-927f, -1951f, var_4, var_0) * vec4<f32>(var_0, var_0, 201f, var_4)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4, var_0, -1477f, -230f) + vec4<f32>(-699f, 1000f, var_0, var_0)))), func_4(u_input.b, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, var_0, -2469f, -1136f)))))).b));
}

