struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: u32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: u32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: bool,
    c: f32,
    d: vec4<u32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 18>;

var<private> global1: Struct_4 = Struct_4(vec4<i32>(i32(-2147483648), -30109i, 1i, 1i), true, 1152f, vec4<u32>(3003u, 31866u, 2834u, 117809u), vec2<f32>(-489f, -1000f));

var<private> global2: array<vec4<i32>, 29>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.b, 18u)];
    var var_1 = vec3<f32>(2090f, var_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -313f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.e.x, arg_0.b.x)) + -1853f)));
    let var_2 = arg_0;
    var var_3 = Struct_2(Struct_1(-(~vec2<i32>(2147483647i, -15346i)), vec3<f32>(_wgslsmith_div_f32(122f, -435f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.b.x)) * -1154f), global1.e.x), var_0.d.yx, abs(min(var_0.d.x, ~20277u)), vec3<bool>(var_0.b, !(!var_0.b), !var_0.b)), !vec4<bool>(false, false, !(!var_0.b), true), var_2, 0u, _wgslsmith_mod_vec2_u32(~firstTrailingBit(countOneBits(vec2<u32>(arg_0.d, global1.d.x))), var_2.c));
    var_3 = Struct_2(Struct_1(vec2<i32>(i32(-1i) * -1i, _wgslsmith_mult_i32(0i, var_3.a.a.x) & ~arg_0.a.x), var_2.b, _wgslsmith_sub_vec2_u32(select(select(vec2<u32>(4675u, 43836u), u_input.d, var_2.e.zz), vec2<u32>(u_input.d.x, 51329u), vec2<bool>(true, true)), arg_0.c), 1u, !var_2.e), vec4<bool>(select(true, select(var_0.b, var_3.b.x, any(vec3<bool>(false, var_2.e.x, arg_0.e.x))), var_2.e.x), 1f > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(sign(var_2.b.x)))), var_3.c.b.x != arg_0.b.x, any(select(select(var_3.b, var_3.b, vec4<bool>(true, true, false, arg_0.e.x)), vec4<bool>(false, false, true, false), true))), Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(var_0.a.wxw, ~vec3<i32>(1i, 39375i, var_3.c.a.x)), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.a.x, 47036i), vec2<i32>(global1.a.x, 2147483647i)), -5551i ^ var_2.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -245f), -331f, -1358f)), vec2<u32>(67808u | _wgslsmith_mod_u32(var_2.d, 16874u), var_0.d.x), (4294967295u << (min(3080u, var_3.a.d) % 32u)) ^ var_3.e.x, vec3<bool>(true || (var_3.c.b.x > var_3.c.b.x), global1.b, true)), ~global1.d.x | 37005u, vec2<u32>(_wgslsmith_clamp_u32(global1.d.x, 37134u, _wgslsmith_add_u32(1u, var_0.d.x) ^ global1.d.x), var_0.d.x));
    return ~_wgslsmith_dot_vec3_i32(~(~reverseBits(global1.a.zxy)), select(vec3<i32>(2085i, var_3.c.a.x, -2147483647i), ~abs(u_input.e.zyz), !arg_0.e));
}

fn func_2() -> f32 {
    let var_0 = Struct_1(vec2<i32>(-1i) * -vec2<i32>(i32(-1i) * -22236i, ~global1.a.x), vec3<f32>(_wgslsmith_div_f32(-747f, 281f), global1.e.x, global1.e.x), global1.d.yx << (~(u_input.d << (vec2<u32>(global1.d.x, 0u) % vec2<u32>(32u))) % vec2<u32>(32u)), u_input.d.x, select(vec3<bool>(global1.b, all(vec2<bool>(true, true)), !(!global1.b)), vec3<bool>(select(any(vec4<bool>(true, global1.b, global1.b, true)), global1.e.x >= -934f, true), global1.b, true), !(func_3(Struct_1(vec2<i32>(global1.a.x, -59224i), vec3<f32>(global1.e.x, global1.e.x, global1.e.x), u_input.d, global1.d.x, vec3<bool>(true, true, global1.b))) == select(-18632i, global1.a.x, false))));
    let var_1 = Struct_1(var_0.a, vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1639f), var_0.b.x), var_0.c, 0u, select(!var_0.e, var_0.e, var_0.e));
    let var_2 = !vec4<bool>(false, false, ~14535u > _wgslsmith_add_u32(~38621u, _wgslsmith_mod_u32(var_0.d, var_1.c.x)), var_0.e.x);
    global0 = array<Struct_4, 18>();
    global2 = array<vec4<i32>, 29>();
    return -374f;
}

fn func_1(arg_0: bool, arg_1: vec3<f32>, arg_2: vec4<u32>, arg_3: u32) -> bool {
    global1 = Struct_4(vec4<i32>(~0i, ~(~_wgslsmith_mult_i32(0i, u_input.e.x)), ~select(min(2147483647i, 2147483647i), select(-1i, global1.a.x, arg_0), any(vec2<bool>(false, false))), 1i), arg_0, -152f, select(global1.d, _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.d.x, ~9211u, u_input.b, arg_3), _wgslsmith_clamp_vec4_u32(~global1.d, _wgslsmith_add_vec4_u32(global1.d, vec4<u32>(8764u, 21467u, 9347u, u_input.c)), ~vec4<u32>(global1.d.x, 1u, u_input.d.x, u_input.b)), arg_2), all(vec4<bool>(global1.b && true, true, true, false))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_div_f32(-807f, 748f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c), arg_1.x)));
    let var_0 = vec4<bool>(global1.b, any(select(select(vec4<bool>(true, arg_0, false, true), !vec4<bool>(global1.b, false, true, false), global1.b), !select(vec4<bool>(global1.b, arg_0, true, true), vec4<bool>(global1.b, true, global1.b, true), vec4<bool>(false, global1.b, false, arg_0)), vec4<bool>(true, global1.b | global1.b, true, false & arg_0))), all(vec2<bool>(global1.b, select(arg_0 || false, all(vec3<bool>(arg_0, false, true)), global1.b))), all(!select(select(vec4<bool>(true, arg_0, global1.b, true), vec4<bool>(false, global1.b, global1.b, false), vec4<bool>(arg_0, global1.b, false, global1.b)), select(vec4<bool>(arg_0, arg_0, arg_0, global1.b), vec4<bool>(arg_0, arg_0, false, global1.b), vec4<bool>(global1.b, arg_0, false, true)), arg_0 & false)));
    let var_1 = select(select(!select(select(var_0.zxx, vec3<bool>(false, arg_0, var_0.x), var_0.zyw), vec3<bool>(var_0.x, true, global1.b), !var_0.zxz), select(vec3<bool>(any(vec3<bool>(true, global1.b, arg_0)), true, false), vec3<bool>(true, arg_0 || var_0.x, true), global1.c > _wgslsmith_f_op_f32(arg_1.x - global1.c)), all(var_0.zyx)), select(select(!var_0.wwy, !var_0.wyw, vec3<bool>(all(vec4<bool>(true, global1.b, global1.b, false)), arg_0, true)), var_0.zwy, vec3<bool>(true, all(vec4<bool>(false, global1.b, false, true)), true)), !select(!select(vec3<bool>(false, true, arg_0), var_0.yxx, vec3<bool>(false, var_0.x, true)), select(vec3<bool>(global1.b, false, var_0.x), var_0.yxy, vec3<bool>(true, var_0.x, true)), vec3<bool>(false, all(vec2<bool>(arg_0, arg_0)), any(var_0.wxy))));
    var var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 0u, ~1u), ~(~min(_wgslsmith_add_vec3_u32(global1.d.zxx, arg_2.zzx), ~arg_2.yzx)));
    var var_3 = Struct_2(Struct_1(u_input.e.xx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-609f, arg_1.x, global1.c)))))), u_input.d >> (~vec2<u32>(5018u, global1.d.x) % vec2<u32>(32u)), firstLeadingBit(~(var_2.x & u_input.c)), vec3<bool>(true, var_1.x, false)), vec4<bool>(!any(vec2<bool>(true, global1.b)), true, !(!var_1.x | !arg_0), true), Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(min(global1.a.x, -43594i), -62844i), -u_input.e.zy << (max(arg_2.wz, vec2<u32>(global1.d.x, 61788u)) % vec2<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(arg_1.x, arg_1.x)))), 984f, _wgslsmith_f_op_f32(global1.e.x * _wgslsmith_div_f32(-1177f, arg_1.x))), vec2<u32>(_wgslsmith_div_u32(u_input.d.x, 59412u) << (0u % 32u), ~(~1u)), arg_2.x, select(vec3<bool>(arg_2.x >= 4294967295u, any(var_0.zy), true), select(!var_1, var_1, var_1), 1i >= _wgslsmith_add_i32(global1.a.x, -2147483647i))), global1.d.x, firstTrailingBit(~(~(u_input.d << (var_2.zy % vec2<u32>(32u))))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 18>();
    let var_0 = func_1(global1.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-742f - 1485f))), _wgslsmith_f_op_f32(exp2(global1.e.x)), _wgslsmith_f_op_f32(f32(-1f) * -172f))), firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 34609u, u_input.c, global1.d.x) >> (vec4<u32>(global1.d.x, 1u, u_input.d.x, 4294967295u) % vec4<u32>(32u)), global1.d ^ global1.d) >> (_wgslsmith_mod_vec4_u32(select(vec4<u32>(22066u, 13153u, 29072u, 4294967295u), vec4<u32>(0u, u_input.b, global1.d.x, u_input.d.x), vec4<bool>(true, true, global1.b, true)), vec4<u32>(1u, 0u, u_input.c, global1.d.x)) % vec4<u32>(32u))), _wgslsmith_mod_u32(~u_input.c, min(_wgslsmith_sub_u32(max(u_input.b, u_input.c), ~9890u), 53861u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec4<u32>(~87695u, reverseBits(67398u), _wgslsmith_dot_vec3_u32(global1.d.yxx, vec3<u32>(u_input.d.x, u_input.d.x, global1.d.x)), u_input.d.x) << (~global1.d % vec4<u32>(32u))), vec3<i32>(~(-3095i << ((u_input.b | 4294967295u) % 32u)), 2147483647i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.e.x, -2993i, u_input.e.x), select(vec4<i32>(global1.a.x, -1i, global1.a.x, global1.a.x), vec4<i32>(global1.a.x, global1.a.x, global1.a.x, u_input.a), false))));
}

