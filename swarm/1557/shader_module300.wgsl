struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec3<bool>,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: f32,
    d: u32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_2(vec4<i32>(-11878i, -68043i, 47345i, 7564i), Struct_1(1i, vec2<u32>(28367u, 50958u), vec3<bool>(true, true, false), vec4<f32>(-1608f, -2389f, -1053f, 1251f), 32452i)), 1i, -1096f, 1u, vec2<i32>(-1i, -90979i));

var<private> global1: Struct_3 = Struct_3(true, vec4<i32>(0i, 49068i, 1i, 0i), -467f);

var<private> global2: vec3<f32> = vec3<f32>(-1807f, 1071f, 1000f);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    return _wgslsmith_f_op_f32(sign(global1.c));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool) -> f32 {
    var var_0 = Struct_3(global0.a.b.c.x, global0.a.a, -414f);
    global2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(var_0.c * global2.x))), var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-230f))) - -945f)) + _wgslsmith_f_op_vec3_f32(-global0.a.b.d.wzw));
    var_0 = Struct_3(false, ~vec4<i32>(_wgslsmith_mult_i32(arg_0.x ^ 43258i, 0i), u_input.b.x, 23380i, _wgslsmith_mod_i32(global1.b.x, u_input.b.x) ^ arg_0.x), 121f);
    var_0 = Struct_3(var_0.a, var_0.b, global1.c);
    var_0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(global0.d, global0.a.b.b.x, 34994u, global0.d)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) != -826f, (vec4<i32>(1i, -4265i, arg_0.x & 0i, countOneBits(var_0.b.x)) | global0.a.a) ^ (vec4<i32>(-15307i, i32(-1i) * -73157i, u_input.c, _wgslsmith_div_i32(2147483647i, arg_0.x)) ^ ~(~vec4<i32>(1i, 41582i, 2147483647i, u_input.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.a)) - global2.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c))));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<u32>) -> Struct_3 {
    global2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(203f, global1.c, global0.c))), _wgslsmith_f_op_vec3_f32(-global0.a.b.d.wyy)), vec3<f32>(_wgslsmith_f_op_f32(step(global1.c, global0.a.b.d.x)), _wgslsmith_f_op_f32(1000f - -757f), _wgslsmith_f_op_f32(-440f * -223f)), !global0.a.b.c)))));
    global2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -129f)), global1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(-global1.b.zx, !global0.a.b.c.x))))));
    var var_0 = _wgslsmith_sub_vec3_u32(~(~abs(u_input.a.zwz)), vec3<u32>(arg_1.x, 41307u, arg_1.x));
    global2 = _wgslsmith_f_op_vec3_f32(min(global0.a.b.d.zww, global0.a.b.d.zyz));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c));
    return Struct_3(false, global0.a.a, global2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c << (21131u % 32u), countOneBits(global0.b), -19684i, 2147483647i << (u_input.a.x % 32u)), global1.b, _wgslsmith_clamp_vec4_i32(u_input.b | global0.a.a, vec4<i32>(18420i, 47598i, 24065i, global1.b.x), global0.a.a << (u_input.a % vec4<u32>(32u)))), global0.a.a), u_input.a);
    global1 = func_1(_wgslsmith_add_vec4_i32(-(~select(u_input.b, u_input.b, vec4<bool>(true, global0.a.b.c.x, global0.a.b.c.x, global1.a))), vec4<i32>(0i, 1i, 1i, 1i) >> ((u_input.a | select(u_input.a, vec4<u32>(15350u, u_input.a.x, global0.d, 4294967295u), vec4<bool>(false, global1.a, true, global1.a))) % vec4<u32>(32u))), vec4<u32>(select(_wgslsmith_div_u32(_wgslsmith_add_u32(1u, 0u), u_input.a.x), ~global0.d, any(select(vec2<bool>(true, global1.a), global0.a.b.c.zy, global0.a.b.c.yz))), ~1u, ~20222u, _wgslsmith_div_u32(global0.a.b.b.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(global0.d, 19326u), vec2<u32>(global0.d, u_input.a.x)))));
    var var_0 = Struct_4(global0.a, _wgslsmith_dot_vec2_i32(global1.b.xz, global0.e), -617f, 51505u, -global1.b.yx);
    global2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(global0.a.b.d.yww * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.b.d.x, global2.x, -150f), var_0.a.b.d.yyw)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -121f, 654f)), _wgslsmith_f_op_vec3_f32(global0.a.b.d.zzx * global0.a.b.d.wzy), !global0.a.b.c.x))))));
    let var_1 = global1.b.wwx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)))), global0.e.x, _wgslsmith_f_op_f32(f32(-1f) * -354f), u_input.b.x ^ 0i);
}

