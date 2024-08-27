struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: Struct_2,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_1(arg_0: Struct_2) -> f32 {
    var var_0 = arg_0.c;
    return _wgslsmith_f_op_f32(arg_0.c.b.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-arg_0.c.b.x)) - _wgslsmith_f_op_f32(trunc(-1000f))));
}

fn func_3(arg_0: Struct_4) -> f32 {
    let var_0 = all(vec4<bool>(true & any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true))), all(vec2<bool>(true, true)), true & (any(vec4<bool>(true, true, true, false)) & all(vec4<bool>(true, true, true, false))), all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, false, true)))));
    let var_1 = arg_0;
    let var_2 = min(firstLeadingBit(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, u_input.c, 1u), vec3<u32>(0u, 601u, u_input.c)))), countOneBits(vec3<u32>(~u_input.c, ~(~u_input.c), 1u)));
    var var_3 = Struct_3(85483u, _wgslsmith_f_op_f32(-1324f - _wgslsmith_f_op_f32(func_1(Struct_2(vec4<bool>(var_0, var_0, var_0, var_0), reverseBits(u_input.a.x), Struct_1(vec4<i32>(-7049i, u_input.d.x, u_input.d.x, u_input.d.x), vec4<f32>(264f, -2056f, 364f, 572f), u_input.c))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.b))), _wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_div_f32(arg_0.a.x, -966f))), Struct_2(!vec4<bool>(var_0 && true, true, all(vec3<bool>(var_0, false, true)), true), _wgslsmith_mod_i32(~firstLeadingBit(u_input.a.x), _wgslsmith_div_i32(-30551i, _wgslsmith_sub_i32(-3755i, 1i))), Struct_1(countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, 1i, 14390i), vec4<i32>(23105i, 28606i, u_input.a.x, -2147483647i))), vec4<f32>(arg_0.a.x, var_1.b, var_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1966f)), 1u)), vec4<u32>(u_input.c, var_2.x, ~_wgslsmith_div_u32(~u_input.c, 0u), u_input.c));
    let var_4 = i32(-1i) * -_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(var_3.d.c.a.wyx, -var_3.d.c.a.zxw), -2147483647i);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<i32>) -> vec3<bool> {
    var var_0 = Struct_1(~vec4<i32>(28971i, arg_1.x >> ((u_input.c ^ u_input.c) % 32u), arg_0.x, _wgslsmith_sub_i32(firstLeadingBit(-16027i), arg_0.x & 0i)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-139f - -884f)), _wgslsmith_f_op_f32(func_3(Struct_4(vec2<f32>(1184f, -130f), 1135f))), 496f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -450f) * _wgslsmith_f_op_f32(f32(-1f) * -410f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))), ~90469u);
    var var_1 = Struct_3(~(~0u), var_0.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_0.b.zx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, var_0.b.x) * var_0.b.zw) * _wgslsmith_f_op_vec2_f32(exp2(var_0.b.zw))))) + var_0.b.yx), Struct_2(select(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true), true), ~8913i, Struct_1(vec4<i32>(arg_1.x >> (var_0.c % 32u), _wgslsmith_mod_i32(var_0.a.x, u_input.a.x), -55833i, _wgslsmith_add_i32(arg_0.x, u_input.b)), vec4<f32>(_wgslsmith_f_op_f32(-432f * var_0.b.x), _wgslsmith_div_f32(var_0.b.x, -894f), var_0.b.x, _wgslsmith_f_op_f32(select(var_0.b.x, 1278f, true))), 1u)), reverseBits(vec4<u32>(1u, 12724u, ~var_0.c, _wgslsmith_add_u32(u_input.c, u_input.c) >> (countOneBits(var_0.c) % 32u))));
    var_0 = var_1.d.c;
    let var_2 = Struct_4(vec2<f32>(-1118f, 608f), var_1.d.c.b.x);
    var var_3 = arg_0;
    return select(vec3<bool>(false, all(var_1.d.a), any(select(vec3<bool>(var_1.d.a.x, var_1.d.a.x, true), var_1.d.a.zzw, var_1.d.a.x)) || var_1.d.a.x), var_1.d.a.yzy, select(!vec3<bool>(var_1.d.a.x, true, true), vec3<bool>(any(!var_1.d.a), any(!var_1.d.a.zz), false), (!var_1.d.a.x || (1374f >= var_0.b.x)) & var_1.d.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(1817f, -1035f)))) * _wgslsmith_div_f32(-196f, _wgslsmith_f_op_f32(func_1(Struct_2(vec4<bool>(true, false, true, true), u_input.d.x, Struct_1(vec4<i32>(-7209i, u_input.d.x, u_input.d.x, u_input.a.x), vec4<f32>(-1396f, -1081f, -1774f, 1239f), u_input.c)))))) * 457f)));
    var_0 = _wgslsmith_div_f32(-1246f, -159f);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-836f, _wgslsmith_f_op_f32(f32(-1f) * -849f))))));
    var var_2 = select(vec3<bool>(true, true, true), func_2(-reverseBits(-vec3<i32>(-2147483647i, u_input.a.x, 10379i)), ((vec3<i32>(u_input.b, -18560i, u_input.a.x) >> (vec3<u32>(u_input.c, 4853u, 55088u) % vec3<u32>(32u))) << (vec3<u32>(46067u, u_input.c, u_input.c) % vec3<u32>(32u))) & vec3<i32>(u_input.d.x, ~u_input.a.x, u_input.b)), vec3<bool>(true, true, true));
    var var_3 = Struct_1(-(~firstLeadingBit(~vec4<i32>(12182i, u_input.d.x, u_input.b, 2147483647i))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(602f, -1312f, -3856f, 600f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(513f, 918f, -393f, 219f)))))))), ~(~(~0u)));
    var_0 = 170f;
    var_2 = !(!func_2(vec3<i32>(abs(1i), 85810i, select(-1i, -33429i, true)), ~select(var_3.a.yww, vec3<i32>(-1i, var_3.a.x, u_input.b), vec3<bool>(true, true, var_2.x))));
    let var_4 = !func_2(~vec3<i32>(-5293i, var_3.a.x, -u_input.a.x), firstLeadingBit(var_3.a.yyy)).zy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(vec2<f32>(var_3.b.x, -647f), var_3.b.x)))), vec3<i32>(u_input.d.x, ~abs(var_3.a.x), 1i) << (~select(countOneBits(vec3<u32>(1u, 1u, u_input.c)), max(vec3<u32>(var_3.c, 42835u, u_input.c), vec3<u32>(0u, u_input.c, var_3.c)), all(vec3<bool>(false, var_4.x, true))) % vec3<u32>(32u)), _wgslsmith_mod_vec2_i32(reverseBits(u_input.d), _wgslsmith_mult_vec2_i32(var_3.a.xw, var_3.a.xx)), 6952u, _wgslsmith_f_op_f32(var_3.b.x + 319f));
}

