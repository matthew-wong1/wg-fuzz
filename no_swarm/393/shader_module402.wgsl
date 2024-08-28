struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: f32,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: Struct_2,
    e: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: Struct_4,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_2, 17>;

var<private> global2: vec4<u32>;

var<private> global3: vec3<u32> = vec3<u32>(44519u, 4294967295u, 4294967295u);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_5) -> u32 {
    let var_0 = Struct_5(arg_1.e, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(309f - -1397f), arg_1.d.a)), Struct_2(Struct_1(u_input.d), arg_1.e), Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b * -1061f) * _wgslsmith_f_op_f32(-arg_1.d.a)), 1810f), _wgslsmith_clamp_vec4_u32(arg_1.d.b, _wgslsmith_clamp_vec4_u32(vec4<u32>(global2.x, 0u, 0u, 1u), vec4<u32>(0u, global2.x, arg_1.d.b.x, u_input.d.x), reverseBits(arg_1.d.c)), arg_1.d.b), vec4<u32>(50486u, 4294967295u, countOneBits(39929u) & ~arg_0.a.a.x, ~arg_1.c.b.a.x >> (_wgslsmith_mod_u32(4294967295u, 1u) % 32u)), Struct_2(Struct_1(vec2<u32>(4294967295u, arg_0.a.a.x)), Struct_1(arg_0.b.a)), arg_1.d.e), Struct_1(global3.xz));
    let var_1 = -vec2<i32>(-1i, 1i);
    global1 = array<Struct_2, 17>();
    global0 = true;
    let var_2 = Struct_3(select(vec3<bool>(~global3.x != 1u, true, arg_1.d.e), select(vec3<bool>(!var_0.d.e, arg_1.d.e, select(false, true, arg_1.d.e)), !(!vec3<bool>(arg_1.d.e, arg_1.d.e, true)), select(vec3<bool>(true, var_0.d.e, false), vec3<bool>(false, true, true), select(vec3<bool>(false, arg_1.d.e, true), vec3<bool>(false, arg_1.d.e, arg_1.d.e), vec3<bool>(var_0.d.e, var_0.d.e, true)))), any(vec3<bool>(arg_1.d.e, true, true))), select(~abs(var_0.d.b) >> (vec4<u32>(0u, ~arg_0.a.a.x, select(u_input.c, 0u, var_0.d.e), 0u) % vec4<u32>(32u)), arg_1.d.b, arg_1.d.e), -1094f, var_0.b, Struct_2(Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, global3.x), global2.yy)), var_0.e));
    return _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(max(reverseBits(vec2<u32>(arg_1.c.a.a.x, global2.x)), vec2<u32>(u_input.c, 52258u)) ^ vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 85967u, 0u, arg_1.a.a.x), var_2.b), 1u), vec2<u32>(firstLeadingBit(_wgslsmith_mod_u32(global2.x, 4294967295u)), 0u)), arg_0.b.a.x);
}

fn func_2(arg_0: Struct_5) -> f32 {
    var var_0 = global3.x;
    var var_1 = (u_input.d.x >> ((_wgslsmith_mod_u32(~arg_0.c.b.a.x, min(1u, 10266u)) ^ 4294967295u) % 32u)) | firstLeadingBit(29577u);
    let var_2 = global1[_wgslsmith_index_u32(func_3(Struct_2(Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(global3.x, global2.x), vec2<u32>(global2.x, 4294967295u))), Struct_1(reverseBits(_wgslsmith_sub_vec2_u32(arg_0.c.a.a, vec2<u32>(67854u, 1u))))), arg_0), 17u)];
    var var_3 = arg_0.d.d;
    var_0 = 1u;
    return 1293f;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-1547f))))), _wgslsmith_f_op_f32(1858f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(114f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(266f, arg_1.x))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(189f * 1400f))))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.x * var_0.x))), _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_5(Struct_1(vec2<u32>(1u, u_input.c)), -554f, global1[_wgslsmith_index_u32(120329u, 17u)], Struct_4(-1317f, vec4<u32>(global2.x, u_input.d.x, 109479u, 1u), vec4<u32>(global3.x, 0u, global2.x, 1u), global1[_wgslsmith_index_u32(global2.x, 17u)], false), Struct_1(vec2<u32>(global3.x, global3.x)))))))));
    var var_2 = 22134i;
    var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(-select(u_input.e.x, -1i, arg_0.x) << ((1u >> (~global3.x % 32u)) % 32u), u_input.e.x, -12477i), ~(-(-u_input.e.zzz | (u_input.e.wzx | vec3<i32>(-7843i, u_input.a, 21409i)))));
    global3 = global2.wxw;
    return _wgslsmith_f_op_f32(f32(-1f) * -139f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1522f * 1000f)) - _wgslsmith_f_op_f32(func_1(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-669f, -1034f, -726f)))))), -1000f, _wgslsmith_f_op_f32(-442f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1300f)))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(ceil(1365f)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(min(-214f, 2093f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1035f, var_0.x, 654f)))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1191f, var_0.x, var_0.x) + vec3<f32>(1207f, var_0.x, -232f)), vec3<f32>(1572f, -635f, var_0.x))))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, -1000f, var_0.x))) + _wgslsmith_div_vec3_f32(vec3<f32>(-826f, -737f, var_0.x), vec3<f32>(157f, var_0.x, var_0.x))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-882f, 866f, 1191f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-194f, 946f, -742f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -561f, 250f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 1133f))), any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)))))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1735f, 569f, 524f) * vec3<f32>(1625f, var_0.x, var_0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(265f, var_0.x, var_0.x)))))));
    global2 = _wgslsmith_mult_vec4_u32(~countOneBits(vec4<u32>(u_input.c, 1u, global3.x, global2.x) | vec4<u32>(u_input.c, u_input.d.x, 57019u, global2.x)), vec4<u32>(4294967295u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, global2.x), abs(10994u)), 36568u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(global2.yw, vec2<u32>(1u, 28828u)), vec2<u32>(29036u, 11172u)))) << (countOneBits(_wgslsmith_mult_vec4_u32(~vec4<u32>(38900u, u_input.c, global3.x, 4294967295u), abs(vec4<u32>(4294967295u, 1u, global2.x, 0u))) & (~vec4<u32>(global3.x, 0u, global3.x, global2.x) & firstTrailingBit(vec4<u32>(global2.x, 86742u, global3.x, u_input.c)))) % vec4<u32>(32u));
    var_0 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(613f, _wgslsmith_f_op_f32(floor(var_0.x)), -418f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 603f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(791f, 1940f, -1215f) - vec3<f32>(var_0.x, -226f, var_0.x)))) + -243f), 1893f)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 484f, -1000f, 1258f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))), vec4<f32>(var_0.x, 1344f, 289f, -349f)))));
    var var_2 = global2.wxx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(global2.x, abs(_wgslsmith_sub_u32(u_input.c, ~1u))));
}

