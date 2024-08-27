struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 7> = array<vec2<u32>, 7>(vec2<u32>(0u, 41867u), vec2<u32>(1741u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 16641u), vec2<u32>(4294967295u, 33807u), vec2<u32>(128278u, 1u), vec2<u32>(15125u, 31528u));

var<private> global1: vec4<i32> = vec4<i32>(-1i, i32(-2147483648), 57468i, 28782i);

var<private> global2: array<Struct_1, 13>;

var<private> global3: i32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> f32 {
    global0 = array<vec2<u32>, 7>();
    let var_0 = all(select(vec4<bool>(all(vec4<bool>(true, true, true, true)), !all(vec4<bool>(false, false, false, false)), true || any(vec2<bool>(true, true)), any(vec3<bool>(false, false, false))), vec4<bool>(true, true, true, all(vec3<bool>(true, true, true))), any(vec3<bool>(true, true, true))));
    let var_1 = vec4<bool>(var_0, any(!select(select(vec3<bool>(true, var_0, true), vec3<bool>(var_0, var_0, var_0), true), vec3<bool>(false, var_0, var_0), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), var_0))), var_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1243f)))) <= -473f);
    var var_2 = !all(var_1.wx) & var_0;
    let var_3 = Struct_1(select(vec3<u32>(_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(1u, 7u)], vec2<u32>(0u, u_input.c)), u_input.c, u_input.c), reverseBits(~vec3<u32>(u_input.c, 15242u, u_input.c)), !(!var_1.yyw)) | ~(~vec3<u32>(u_input.c, 0u, u_input.c)), vec2<i32>(_wgslsmith_mod_i32(1i, min(~9279i, -47190i)), ~_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.a.x, 0i), _wgslsmith_dot_vec3_i32(vec3<i32>(-10286i, -40060i, global1.x), global1.xyx))), vec4<u32>(u_input.c >> (u_input.c % 32u), ~abs(abs(0u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(27661u, 37465u, u_input.c) << (vec3<u32>(15058u, 10802u, u_input.c) % vec3<u32>(32u)), vec3<u32>(u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(366u, u_input.c, 19751u), vec3<u32>(1u, u_input.c, 1u)), ~u_input.c)), u_input.c));
    return _wgslsmith_f_op_f32(exp2(1f));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> bool {
    let var_0 = false;
    let var_1 = arg_1;
    global1 = -(~firstLeadingBit(min(vec4<i32>(22450i, global1.x, 1673i, -9334i) << (var_1.c % vec4<u32>(32u)), -vec4<i32>(u_input.b, u_input.a.x, 1i, arg_1.b.x))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1863f)) + _wgslsmith_f_op_f32(f32(-1f) * -256f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -600f), 321f)))));
    let var_3 = vec4<f32>(var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(536f))), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_2, var_2)), _wgslsmith_f_op_f32(-var_2))))));
    return !((_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_3.x, 478f))) > _wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(-var_3.x))) | (-1104f != _wgslsmith_f_op_f32(-var_2)));
}

fn func_1() -> vec4<u32> {
    let var_0 = vec4<bool>(true, true, any(vec4<bool>(all(vec4<bool>(true, true, false, true)), u_input.b != -global1.x, any(vec4<bool>(true, true, true, true)), any(vec3<bool>(true, true, true)))), false);
    let var_1 = global2[_wgslsmith_index_u32(min(~1u, u_input.c), 13u)];
    let var_2 = vec3<bool>(var_0.x, var_0.x & (false && func_2(global2[_wgslsmith_index_u32(var_1.a.x, 13u)], Struct_1(vec3<u32>(5333u, var_1.a.x, 1u), global1.wy, var_1.c), var_0.x)), var_0.x || var_0.x);
    global1 = vec4<i32>(-2147483647i, -18253i, var_1.b.x, var_1.b.x);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-589f * 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -307f)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1781f, 864f)))))));
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(~(~countOneBits(u_input.c)) >= 77186u, any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true), vec2<bool>(true, true))), true, true);
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1000f))));
    var var_2 = Struct_1(~(~(~vec3<u32>(4294967295u, u_input.c, 68571u) & min(vec3<u32>(0u, 15816u, u_input.c), vec3<u32>(u_input.c, 42042u, 1u)))), vec2<i32>(abs(_wgslsmith_mod_i32(~42788i, max(-2147483647i, global1.x))), -2147483647i), ~(~_wgslsmith_sub_vec4_u32(func_1(), vec4<u32>(36143u, u_input.c, u_input.c, u_input.c))));
    global0 = array<vec2<u32>, 7>();
    let var_3 = Struct_1(max(vec3<u32>(var_2.c.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, var_2.a.x), var_2.a), ~4294967295u, u_input.c), 11115u), abs(var_2.a)), u_input.a, var_2.c);
    var var_4 = Struct_1(var_2.c.zwz, vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-12486i, -2147483647i, global1.x, 1i), vec4<i32>(1i, -4455i, -29269i, -u_input.a.x)), -max(1i, firstTrailingBit(var_2.b.x))), firstLeadingBit(select(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), global0[_wgslsmith_index_u32(1u, 7u)]), 29561u, 49950u, 1u), func_1() << ((vec4<u32>(4250u, var_2.a.x, 14392u, 68476u) & vec4<u32>(0u, 90247u, var_2.a.x, 21640u)) % vec4<u32>(32u)), !var_0.x)));
    var_1 = 1271f;
    var var_5 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1643f, -2003f) - _wgslsmith_f_op_f32(-1792f * 2185f)), _wgslsmith_f_op_f32(1214f + _wgslsmith_f_op_f32(f32(-1f) * -155f))))));
}

