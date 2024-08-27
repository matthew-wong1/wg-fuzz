struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, false, false), vec2<i32>(16475i, 3121i), i32(-2147483648));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: u32, arg_3: vec4<bool>) -> Struct_1 {
    return Struct_1(vec3<bool>(true, false, select(global1.a.x, true, _wgslsmith_sub_u32(u_input.c, 39167u) <= arg_2)), min(vec2<i32>(44034i, -52857i), _wgslsmith_mult_vec2_i32(abs(select(vec2<i32>(-17574i, 8358i), u_input.a.zy, vec2<bool>(true, global1.a.x))), firstLeadingBit(vec2<i32>(u_input.a.x, 12519i)))), 76i);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec4<u32>, arg_3: u32) -> Struct_1 {
    global1 = func_2((_wgslsmith_sub_u32(arg_3, 1u) | ~abs(arg_2.x)) > ~arg_1.x, arg_1.x, arg_3, vec4<bool>(true, all(arg_0.b.yzw), select(any(arg_0.b), true || arg_0.b.x, select(8006u, arg_1.x, true) != 1u), any(select(arg_0.b.wz, vec2<bool>(arg_0.b.x, arg_0.b.x), global1.a.x)) == global1.a.x));
    return Struct_1(select(vec3<bool>(false, !arg_0.b.x, true), global1.a, arg_0.b.wwz), func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(661f)))) <= _wgslsmith_f_op_f32(f32(-1f) * -359f), 1u, _wgslsmith_clamp_u32(countOneBits(37928u), _wgslsmith_dot_vec2_u32(arg_1.xx, vec2<u32>(global0.x, arg_0.a)), _wgslsmith_div_u32(global0.x, arg_2.x)) << (_wgslsmith_dot_vec2_u32(~vec2<u32>(58930u, arg_1.x), vec2<u32>(arg_2.x, arg_3)) % 32u), vec4<bool>(global1.a.x | !global1.a.x, any(!vec4<bool>(global1.a.x, true, arg_0.b.x, false)), any(!global1.a), !(arg_0.b.x == false))).b, global1.b.x);
}

fn func_1(arg_0: bool) -> vec3<i32> {
    global1 = func_2(any(global1.a), (~abs(81298u) & u_input.c) & _wgslsmith_div_u32(2109u, u_input.c), global0.x, !select(!(!vec4<bool>(arg_0, global1.a.x, arg_0, true)), !select(vec4<bool>(false, false, arg_0, true), vec4<bool>(global1.a.x, false, false, arg_0), arg_0), select(select(vec4<bool>(global1.a.x, global1.a.x, global1.a.x, arg_0), vec4<bool>(global1.a.x, global1.a.x, true, arg_0), vec4<bool>(true, arg_0, false, global1.a.x)), !vec4<bool>(global1.a.x, false, global1.a.x, false), all(vec4<bool>(global1.a.x, false, false, false)))));
    global1 = func_3(Struct_2(_wgslsmith_sub_u32(1u, global0.x), !select(vec4<bool>(arg_0, false, global1.a.x, arg_0), select(vec4<bool>(global1.a.x, true, arg_0, true), vec4<bool>(true, arg_0, arg_0, false), true), true)), ~(~vec3<u32>(global0.x, global0.x & 27647u, ~u_input.c)), vec4<u32>(_wgslsmith_div_u32(4294967295u, u_input.c), ~(~66558u), global0.x, 30442u), ~global0.x << (1u % 32u));
    return u_input.a;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec2<bool>) -> bool {
    let var_0 = func_2(!(arg_1.a.x & false), firstLeadingBit(_wgslsmith_add_u32(1u >> (_wgslsmith_sub_u32(u_input.c, 0u) % 32u), max(_wgslsmith_mod_u32(u_input.c, 39998u), 21137u))), 27719u, select(select(select(vec4<bool>(true, global1.a.x, arg_1.a.x, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, arg_2.x)), select(select(vec4<bool>(arg_2.x, true, false, arg_1.a.x), vec4<bool>(arg_2.x, global1.a.x, arg_2.x, global1.a.x), true), select(vec4<bool>(true, arg_2.x, global1.a.x, false), vec4<bool>(arg_1.a.x, true, true, arg_1.a.x), vec4<bool>(true, true, arg_2.x, false)), all(vec4<bool>(false, global1.a.x, true, global1.a.x))), -43706i < min(u_input.a.x, 9179i)), select(!select(vec4<bool>(false, arg_2.x, false, true), vec4<bool>(arg_2.x, true, true, arg_2.x), vec4<bool>(arg_1.a.x, true, true, global1.a.x)), vec4<bool>(func_2(false, 30294u, 0u, vec4<bool>(global1.a.x, arg_1.a.x, arg_2.x, arg_2.x)).a.x, all(vec3<bool>(false, false, global1.a.x)), any(global1.a), !arg_2.x), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(376f - 362f))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -719f))));
    global0 = reverseBits(vec2<u32>(_wgslsmith_sub_u32(u_input.c | 49262u, 4294967295u), 1u) ^ ~_wgslsmith_sub_vec2_u32(select(vec2<u32>(global0.x, global0.x), vec2<u32>(global0.x, 4294967295u), vec2<bool>(true, true)), _wgslsmith_add_vec2_u32(vec2<u32>(global0.x, 0u), vec2<u32>(1u, 0u))));
    let var_1 = func_2(all(vec2<bool>(!(26536i >= u_input.a.x), true)), 43658u, ~global0.x, !vec4<bool>(true, func_2(all(vec3<bool>(arg_1.a.x, false, false)), 35935u, abs(23481u), !vec4<bool>(false, var_0.a.x, false, true)).a.x, select(-2147483647i < var_0.c, false, false), var_0.a.x));
    let var_2 = Struct_1(var_0.a, vec2<i32>(u_input.a.x, 19563i), select(select(arg_1.b.x, _wgslsmith_mod_i32(2147483647i, arg_0.x), arg_1.a.x) >> (_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.c, 61238u), 1u) % 32u), func_3(Struct_2(u_input.c, vec4<bool>(false, false, false, true)), vec3<u32>(select(u_input.c, u_input.c, arg_1.a.x), u_input.c, 4294967295u), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 24807u, global0.x, u_input.c), vec4<u32>(4294967295u, 0u, global0.x, 4294967295u)), abs(vec4<u32>(u_input.c, u_input.c, global0.x, u_input.c)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 4294967295u, u_input.c, global0.x), vec4<u32>(33451u, global0.x, 0u, 4294967295u))), _wgslsmith_sub_u32(~u_input.c, u_input.c)).b.x, true));
    let var_3 = select(var_1.a.x, !(!var_0.a.x), global1.a.x);
    return global1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(2050f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-429f - -1930f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1682f))));
    global1 = Struct_1(global1.a, ~select(-(u_input.b.xy & global1.b), global1.b, vec2<bool>(global0.x < global0.x, !global1.a.x)), select(~_wgslsmith_mult_i32(select(global1.c, 1i, global1.a.x), u_input.b.x), -31027i, all(!vec3<bool>(false, global1.a.x, true))));
    var var_1 = func_4(select(_wgslsmith_mult_vec3_i32(abs(u_input.b), vec3<i32>(~u_input.a.x, -1i, _wgslsmith_dot_vec2_i32(u_input.a.zy, vec2<i32>(1i, u_input.b.x)))), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(global1.c, global1.b.x, 47207i) >> (vec3<u32>(47242u, u_input.c, 0u) % vec3<u32>(32u)), func_1(true), vec3<i32>(-25593i, -2147483647i, global1.c) & vec3<i32>(u_input.b.x, 12964i, -2147483647i)), vec3<i32>(u_input.a.x, u_input.b.x, 1i) ^ vec3<i32>(global1.b.x, global1.c, u_input.b.x), !vec3<bool>(global1.a.x, global1.a.x, global1.a.x)), true), Struct_1(func_2(any(global1.a), global0.x, ~(~u_input.c), !vec4<bool>(false, true, true, global1.a.x)).a, vec2<i32>(-1i, -3673i), -(func_1(global1.a.x).x ^ u_input.b.x)), global1.a.yy);
    let x = u_input.a;
    s_output = StorageBuffer(var_0, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1279f, 1343f, 1200f, 265f)))))))));
}

