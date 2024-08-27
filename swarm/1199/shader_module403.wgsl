struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec3<f32>, arg_3: vec2<f32>) -> vec4<f32> {
    let var_0 = ~u_input.c.xzz;
    var var_1 = select(!select(vec4<bool>(all(vec4<bool>(false, arg_1, true, true)), false, arg_1, true), select(vec4<bool>(arg_0, false, true, true), !vec4<bool>(arg_0, arg_1, arg_1, true), true), select(select(vec4<bool>(arg_0, true, arg_1, arg_0), vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(false, arg_1, arg_1, false)), !vec4<bool>(false, arg_1, arg_0, false), !vec4<bool>(false, false, arg_1, true))), !(!(!vec4<bool>(false, true, arg_1, arg_0))), arg_0);
    var_1 = !select(vec4<bool>(true, true, arg_0, var_1.x && !var_1.x), !vec4<bool>(arg_1, var_1.x, false, u_input.a == u_input.e), select(vec4<bool>(!var_1.x, !var_1.x, arg_0 | false, !arg_1), vec4<bool>(true, all(var_1.zzx), true, arg_0), !(!vec4<bool>(false, true, arg_0, arg_0))));
    var var_2 = arg_0;
    let var_3 = false;
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, -582f, arg_2.x, -865f) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1162f, -1000f, 168f, arg_2.x), vec4<f32>(1142f, 216f, -632f, arg_3.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1435f, arg_3.x, arg_2.x, -984f) * vec4<f32>(arg_3.x, arg_3.x, 1194f, -681f)))))));
}

fn func_2(arg_0: vec2<f32>) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -888f, 1102f, -1364f)), vec4<f32>(-1255f, 1736f, arg_0.x, arg_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-600f, arg_0.x, arg_0.x, arg_0.x) - vec4<f32>(-168f, -1054f, -452f, arg_0.x)) * vec4<f32>(-1483f, arg_0.x, arg_0.x, arg_0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1248f, arg_0.x, -448f, arg_0.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(2120f, arg_0.x, arg_0.x, arg_0.x) * vec4<f32>(arg_0.x, arg_0.x, -296f, -1083f))) - _wgslsmith_f_op_vec4_f32(func_3(23937u < u_input.c.x, true, _wgslsmith_f_op_vec3_f32(vec3<f32>(1017f, arg_0.x, -2113f) + vec3<f32>(801f, arg_0.x, arg_0.x)), _wgslsmith_f_op_vec2_f32(exp2(arg_0)))))));
    let var_1 = ~u_input.c;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(any(vec4<bool>(true, true, true, true)), false, var_0.ywz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, 1373f))))).x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1706f * _wgslsmith_f_op_f32(floor(var_0.x))) + _wgslsmith_f_op_f32(474f + _wgslsmith_f_op_f32(select(180f, -715f, false)))))), _wgslsmith_div_f32(var_0.x, 1f), var_0.x);
    let var_3 = Struct_4(Struct_2(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 74189u, u_input.b.x, 1u), ~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 38007u, 1u, 59718u), vec4<u32>(0u, 0u, u_input.c.x, 11926u)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(916f, arg_0.x), var_2.yz)))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-397f, _wgslsmith_f_op_f32(min(828f, var_0.x)), _wgslsmith_f_op_f32(step(-678f, var_0.x)), -1129f))));
    return ~u_input.d;
}

fn func_1() -> vec3<f32> {
    let var_0 = vec3<i32>(u_input.e, -13075i, 2147483647i);
    let var_1 = countOneBits(select(func_2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, -877f)))) ^ u_input.d, min((vec4<i32>(-1i, -1i, var_0.x, var_0.x) ^ u_input.d) << ((u_input.c >> (u_input.c % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(var_0.x, u_input.e, u_input.a, 0i) >> (_wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, 47869u, u_input.c.x, u_input.b.x)) % vec4<u32>(32u))), false));
    return vec3<f32>(217f, -1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(676f, _wgslsmith_f_op_vec4_f32(func_3(true, true, vec3<f32>(-1242f, -1392f, 139f), _wgslsmith_div_vec2_f32(vec2<f32>(-146f, -1074f), vec2<f32>(-179f, 2329f)))).x, !all(vec4<bool>(true, false, true, true)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1())) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1073f, -224f), _wgslsmith_f_op_f32(trunc(641f)))), 800f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-532f)), _wgslsmith_f_op_f32(f32(-1f) * -368f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 296f, 118f) - vec3<f32>(568f, 646f, -1096f)) + vec3<f32>(1000f, -1096f, -436f))))));
    let var_1 = u_input.c.wyy;
    let x = u_input.a;
    s_output = StorageBuffer(abs(max(~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 4294967295u), u_input.c.ww, var_1.xy), u_input.b.xz)), ~69852u, ~(vec4<i32>(-1i) * -vec4<i32>(1i, 20252i, -2147483647i, -1i)), abs(-u_input.e));
}

