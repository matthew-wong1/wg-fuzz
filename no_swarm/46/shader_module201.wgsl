struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec4<f32>,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-534i, Struct_1(vec3<f32>(329f, -430f, -466f), vec2<bool>(false, false), vec4<f32>(711f, -1743f, 311f, 240f), vec2<u32>(36543u, 17425u), vec2<bool>(false, true)), Struct_1(vec3<f32>(-1591f, -1297f, 1065f), vec2<bool>(false, true), vec4<f32>(-2503f, -168f, -1934f, 1731f), vec2<u32>(15220u, 13776u), vec2<bool>(true, true)), Struct_1(vec3<f32>(-257f, -1000f, -223f), vec2<bool>(true, true), vec4<f32>(1208f, 1504f, -1686f, 157f), vec2<u32>(0u, 1u), vec2<bool>(true, true)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32) -> i32 {
    return arg_0;
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: vec2<i32>) -> Struct_2 {
    global0 = Struct_2(-9627i, global0.c, global0.c, Struct_1(global0.b.a, !global0.d.b, vec4<f32>(_wgslsmith_f_op_f32(-689f - _wgslsmith_f_op_f32(trunc(global0.d.a.x))), global0.b.a.x, _wgslsmith_f_op_f32(1309f + _wgslsmith_f_op_f32(sign(-202f))), _wgslsmith_div_f32(-678f, global0.c.a.x)), ~global0.c.d ^ vec2<u32>(~global0.c.d.x, u_input.a & 49909u), select(select(select(global0.d.b, global0.d.e, global0.c.e.x), select(global0.c.b, global0.b.e, false), vec2<bool>(global0.c.e.x, false)), global0.d.e, !(!global0.d.e))));
    global0 = Struct_2(-arg_2.x, Struct_1(_wgslsmith_f_op_vec3_f32(-global0.d.a), vec2<bool>(true, !(1172f == global0.b.c.x)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.b.a.x, -1434f, global0.d.c.x, 1669f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global0.b.c, vec4<f32>(172f, -1984f, -1110f, global0.d.c.x)) * _wgslsmith_f_op_vec4_f32(step(global0.b.c, vec4<f32>(-470f, global0.b.a.x, 161f, global0.c.c.x)))))), ~(~global0.d.d), vec2<bool>(true, false)), Struct_1(global0.d.c.zyx, !(!vec2<bool>(global0.c.b.x, true)), _wgslsmith_f_op_vec4_f32(select(global0.d.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.d.c.x, 985f, global0.d.a.x, 1000f), vec4<f32>(-197f, -455f, global0.d.c.x, -381f)))), any(select(vec4<bool>(false, global0.b.b.x, true, global0.c.b.x), vec4<bool>(global0.c.e.x, global0.d.e.x, true, true), vec4<bool>(global0.c.e.x, global0.b.b.x, false, false))))), global0.c.d, vec2<bool>(!any(vec4<bool>(global0.d.e.x, false, global0.d.b.x, true)), global0.c.e.x)), global0.b);
    var var_0 = Struct_2(arg_1, global0.c, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.c.c.yww) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.c.a.x, 584f, 702f), vec3<f32>(global0.c.c.x, 2864f, global0.d.a.x)))) * _wgslsmith_f_op_vec3_f32(-global0.c.c.yyw)), vec2<bool>(any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(max(global0.c.a.x, -176f)) > global0.b.a.x), global0.d.c, global0.c.d << (global0.c.d % vec2<u32>(32u)), !select(vec2<bool>(true, false), global0.c.b, select(global0.d.e, vec2<bool>(global0.c.e.x, global0.c.e.x), vec2<bool>(global0.c.e.x, global0.b.e.x)))), global0.b);
    var_0 = Struct_2(~1i, Struct_1(var_0.b.a, !select(!global0.d.b, select(var_0.c.e, vec2<bool>(var_0.d.e.x, true), false), !vec2<bool>(true, global0.b.b.x)), _wgslsmith_f_op_vec4_f32(global0.c.c - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.a.x, global0.c.a.x, 1000f, global0.b.c.x) + global0.b.c), var_0.d.c, select(global0.d.e.x, var_0.c.e.x, true)))), select(~global0.c.d & (vec2<u32>(4294967295u, var_0.d.d.x) ^ vec2<u32>(71545u, u_input.a)), abs(var_0.b.d ^ var_0.c.d), vec2<bool>(any(vec4<bool>(false, true, true, var_0.b.e.x)), true)), select(var_0.b.e, vec2<bool>(true, all(vec2<bool>(false, var_0.b.b.x))), !var_0.b.e.x)), Struct_1(global0.d.c.xxw, !select(var_0.c.b, vec2<bool>(true, true), any(vec3<bool>(true, false, var_0.b.e.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-385f, _wgslsmith_f_op_f32(-global0.d.c.x), _wgslsmith_f_op_f32(global0.b.c.x * var_0.b.c.x), var_0.c.c.x) * _wgslsmith_f_op_vec4_f32(abs(var_0.b.c))), vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(0u, 87841u, global0.d.d.x), 38024u), global0.c.d.x), vec2<bool>(all(select(vec4<bool>(var_0.b.b.x, false, global0.d.b.x, var_0.c.b.x), vec4<bool>(global0.d.e.x, var_0.b.e.x, true, false), false)), !any(vec2<bool>(false, var_0.d.e.x)))), var_0.c);
    let var_1 = select(-(~_wgslsmith_sub_i32(arg_2.x, arg_0)) ^ _wgslsmith_dot_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(-3050i, -1i, -9200i), vec3<i32>(23293i, arg_0, arg_0)), vec3<i32>(-1i, global0.a, _wgslsmith_mod_i32(global0.a, var_0.a))), -1i, true);
    return Struct_2(_wgslsmith_add_i32(-arg_2.x, firstTrailingBit(12663i)), global0.d, Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(271f, _wgslsmith_f_op_f32(-global0.d.c.x), var_0.c.a.x))), select(vec2<bool>(-2147483647i == arg_0, true), var_0.b.b, select(select(vec2<bool>(false, true), vec2<bool>(global0.b.b.x, true), true), global0.c.e, vec2<bool>(true, var_0.d.e.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.d.c.x, var_0.b.a.x, 1301f, 110f))), _wgslsmith_f_op_vec4_f32(ceil(global0.d.c))))), var_0.b.d, vec2<bool>(var_0.c.e.x, !(!global0.b.e.x))), global0.b);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: vec4<u32>) -> u32 {
    global0 = func_3(~global0.a, func_2(arg_2.a), ~vec2<i32>(-global0.a << (1u % 32u), _wgslsmith_mod_i32(-9040i, global0.a) ^ global0.a));
    let var_0 = global0.d;
    global0 = func_3(global0.a, i32(-1i) * -4547i, -_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(global0.a, global0.a), vec2<i32>(arg_2.a, -24520i), vec2<i32>(-3584i, arg_2.a)) & (vec2<i32>(arg_2.a, 3381i) | vec2<i32>(-2147483647i, global0.a)), vec2<i32>(-arg_2.a, arg_2.a | arg_2.a)));
    let var_1 = -select(vec2<i32>(_wgslsmith_div_i32(arg_2.a, _wgslsmith_mult_i32(67969i, global0.a)), 1i), abs(~vec2<i32>(arg_2.a, -1i)) | -_wgslsmith_clamp_vec2_i32(vec2<i32>(global0.a, arg_2.a), vec2<i32>(7764i, global0.a), vec2<i32>(arg_2.a, global0.a)), true);
    global0 = arg_2;
    return arg_3.x;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> vec3<f32> {
    var var_0 = vec4<i32>(firstLeadingBit(global0.a), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-48511i, global0.a, -global0.a) ^ -_wgslsmith_dot_vec2_i32(vec2<i32>(global0.a, 0i), vec2<i32>(global0.a, -2147483647i)), -global0.a, global0.a ^ global0.a), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-global0.a, _wgslsmith_sub_i32(global0.a, global0.a), ~(-33212i))), vec3<i32>(global0.a, _wgslsmith_dot_vec4_i32(~vec4<i32>(global0.a, -21984i, 0i, 44519i), select(vec4<i32>(-28307i, global0.a, -2147483647i, 0i), vec4<i32>(global0.a, -1i, 0i, -50374i), vec4<bool>(global0.b.e.x, true, true, true))), -1i)), -1i);
    var var_1 = arg_1.d.x;
    let var_2 = global0.c;
    var var_3 = vec4<i32>(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.a, 5744i), vec2<i32>(-1i) * -vec2<i32>(2147483647i, -2802i)), countOneBits(~var_0.x), var_0.x) >> (max(select(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, global0.b.d.x, 14669u, var_2.d.x), vec4<u32>(u_input.a, arg_1.d.x, 30697u, 66772u), vec4<u32>(u_input.a, global0.d.d.x, 4294967295u, 0u)), reverseBits(vec4<u32>(0u, 0u, 101486u, u_input.a)), global0.d.b.x & true), countOneBits(~(~vec4<u32>(1u, 37545u, var_2.d.x, 1u)))) % vec4<u32>(32u));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -509f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-139f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1132f - arg_2) * 1245f))));
    return vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-495f)), arg_2))))), _wgslsmith_f_op_f32(sign(var_2.c.x)), 187f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.b;
    global0 = Struct_2(22976i, global0.c, Struct_1(_wgslsmith_f_op_vec3_f32(func_4(vec2<u32>(func_1(vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), vec4<u32>(4294967295u, 94925u, 4294967295u, 1u), Struct_2(0i, Struct_1(var_0.c.xzy, var_0.e, vec4<f32>(-757f, var_0.a.x, global0.d.a.x, -453f), vec2<u32>(u_input.a, 0u), vec2<bool>(var_0.b.x, var_0.b.x)), Struct_1(vec3<f32>(-480f, global0.b.a.x, global0.c.a.x), vec2<bool>(true, true), vec4<f32>(global0.d.a.x, 466f, 361f, 248f), global0.d.d, var_0.b), global0.b), vec4<u32>(0u, global0.d.d.x, 4294967295u, 4294967295u)), _wgslsmith_dot_vec4_u32(vec4<u32>(38239u, 8637u, 4294967295u, u_input.a), vec4<u32>(global0.b.d.x, u_input.a, 1u, 6413u))), Struct_1(vec3<f32>(137f, 1234f, -525f), select(vec2<bool>(false, true), vec2<bool>(true, true), true), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.c.a.x, -1159f, var_0.c.x, var_0.a.x), global0.b.c, true)), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.d.x, 1u), global0.c.d), global0.d.e), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), -1333f), 1u)), !global0.b.e, _wgslsmith_f_op_vec4_f32(max(var_0.c, _wgslsmith_div_vec4_f32(global0.d.c, var_0.c))), global0.b.d, global0.c.b), Struct_1(_wgslsmith_f_op_vec3_f32(var_0.a * global0.c.a), !(!vec2<bool>(global0.d.e.x, global0.c.b.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global0.c.c.x, -809f), -366f, _wgslsmith_f_op_f32(-global0.b.a.x), global0.c.c.x) - global0.b.c), _wgslsmith_clamp_vec2_u32(select(~global0.d.d, global0.b.d ^ vec2<u32>(16241u, 4294967295u), !global0.b.b), vec2<u32>(1u, max(49888u, 54116u)), vec2<u32>(_wgslsmith_mult_u32(global0.b.d.x, u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.c.d.x, 4294967295u, 11610u, 4294967295u), vec4<u32>(var_0.d.x, global0.d.d.x, 4294967295u, u_input.a)))), vec2<bool>(select(false, all(vec3<bool>(global0.d.e.x, global0.b.b.x, false)), true), var_0.e.x)));
    var var_1 = _wgslsmith_div_vec4_f32(global0.c.c, global0.c.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(firstTrailingBit(min(9499u, 0u) >> (u_input.a % 32u)), 1u, 0u), var_0.d);
}

