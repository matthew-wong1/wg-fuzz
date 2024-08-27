struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: u32,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 13> = array<vec4<u32>, 13>(vec4<u32>(4294967295u, 0u, 19547u, 45135u), vec4<u32>(4294967295u, 28722u, 4294967295u, 4294967295u), vec4<u32>(1u, 0u, 7092u, 4294967295u), vec4<u32>(74526u, 8743u, 17735u, 11626u), vec4<u32>(1832u, 4294967295u, 31004u, 1u), vec4<u32>(36567u, 1u, 4294967295u, 1u), vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u), vec4<u32>(37262u, 1u, 72031u, 24060u), vec4<u32>(37011u, 333u, 28287u, 81719u), vec4<u32>(74337u, 0u, 67587u, 1u), vec4<u32>(41577u, 1u, 70530u, 38023u), vec4<u32>(10188u, 85210u, 4899u, 0u), vec4<u32>(24715u, 4294967295u, 4294967295u, 1u));

var<private> global1: u32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec3<f32> {
    var var_0 = vec2<f32>(116f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -272f))))));
    let var_1 = ~_wgslsmith_dot_vec2_u32(countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(969u, 1u), vec2<u32>(29281u, arg_1)) | ~vec2<u32>(4294967295u, arg_1)), vec2<u32>(_wgslsmith_mod_u32(arg_0.c, 60758u), _wgslsmith_mod_u32(~0u, ~0u)));
    global0 = array<vec4<u32>, 13>();
    var_0 = arg_0.a.xx;
    global0 = array<vec4<u32>, 13>();
    return vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), -692f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-838f)) + _wgslsmith_div_f32(1000f, arg_0.b.x))))));
}

fn func_2(arg_0: u32) -> f32 {
    global1 = _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(abs(vec3<u32>(24923u, 1u, arg_0)), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.b), vec3<u32>(30078u, 1u, u_input.b), vec3<u32>(4294967295u, 45131u, u_input.d))), ~(~vec3<u32>(arg_0, 17117u, u_input.b))) & 89039u, ~(arg_0 & ~6916u) ^ 1u);
    global0 = array<vec4<u32>, 13>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(119f, 1393f, -1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-817f, -2505f, 328f, -2503f), vec4<f32>(-184f, 1515f, -330f, -132f))), 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(454f))), any(vec3<bool>(true, true, true))), 3915u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-543f, 412f, 1425f, -141f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1329f, 258f, -1973f, 840f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-189f, 1859f, -270f, 1290f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-867f, 1024f, 311f, 463f)))))) + vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -391f))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1925f))), _wgslsmith_f_op_f32(-1000f * -440f))), ~4294967295u << (_wgslsmith_div_u32(arg_0, 67451u) % 32u), -1869f, !(!select(true, any(vec2<bool>(false, true)), 2147483647i >= u_input.c)));
    global0 = array<vec4<u32>, 13>();
    global1 = arg_0;
    return _wgslsmith_f_op_f32(min(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -950f) * -1620f)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: bool) -> vec2<f32> {
    global0 = array<vec4<u32>, 13>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.yz) * _wgslsmith_div_vec2_f32(arg_0.b.yy, arg_0.b.xz)) + _wgslsmith_f_op_vec2_f32(round(arg_0.b.zx)))) * vec2<f32>(-607f, 427f));
    let var_1 = _wgslsmith_f_op_vec4_f32(min(arg_0.b, arg_0.b));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_2(1u)), 1336f, _wgslsmith_div_f32(var_1.x, var_1.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -189f, var_1.x) * _wgslsmith_f_op_vec3_f32(step(var_1.yyx, arg_0.b.xxx)))), arg_0.b.yzw)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + 291f) - _wgslsmith_f_op_f32(-arg_0.d)) * var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1124f), _wgslsmith_f_op_f32(exp2(arg_0.a.x)), _wgslsmith_f_op_f32(arg_0.b.x * 1f)), u_input.a, arg_0.a.x, -1154f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))));
    global1 = max(~var_2.c, _wgslsmith_sub_u32(~_wgslsmith_sub_u32(28241u, countOneBits(arg_0.c)), min(var_2.c, arg_0.c)));
    return var_2.a.xz;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 13>();
    let var_0 = _wgslsmith_mod_u32(u_input.b, 79952u);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-649f, 129f, 1000f), _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 915f, -149f), vec3<f32>(251f, -963f, 458f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1153f, -739f, 1064f, -1000f) - vec4<f32>(-1000f, 1160f, -243f, -825f))), 0u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(503f - -1597f), _wgslsmith_f_op_f32(1232f * 1326f))), true | any(vec4<bool>(true, false, false, true))), -vec2<i32>(-45116i, -2147483647i), false)));
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1817f), -2689f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2(12641u)), -889f, var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -153f)) - vec4<f32>(1f, _wgslsmith_f_op_f32(floor(860f)), _wgslsmith_f_op_f32(f32(-1f) * -182f), _wgslsmith_div_f32(var_1.x, 311f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(1000f - var_1.x), var_1.x, _wgslsmith_f_op_f32(-var_1.x), var_1.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -338f, var_1.x, var_1.x) + vec4<f32>(109f, var_1.x, -1283f, -418f)))))), ~abs(var_0) >> (1u % 32u), _wgslsmith_f_op_f32(-var_1.x), all(vec3<bool>(all(vec3<bool>(false, false, false)), _wgslsmith_f_op_f32(-var_1.x) >= _wgslsmith_f_op_f32(max(182f, var_1.x)), !any(vec2<bool>(false, false)))));
    let var_3 = vec4<i32>(27731i, 2147483647i, -15203i, 1i);
    let var_4 = _wgslsmith_div_u32(~countOneBits(min(~4294967295u, 0u)), ~var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~(~var_4)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(var_2.a, vec3<f32>(_wgslsmith_f_op_f32(200f - var_1.x), _wgslsmith_f_op_f32(min(-476f, -876f)), -595f)))), select(var_3.xy, vec2<i32>(abs(abs(var_3.x)), u_input.c), true));
}

