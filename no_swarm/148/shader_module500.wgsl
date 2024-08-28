struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global1: array<Struct_1, 29>;

var<private> global2: vec4<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32) -> vec4<f32> {
    global0 = vec4<bool>(!all(vec2<bool>(true, !global0.x)), !(!(!global0.x)), any(vec4<bool>(all(select(vec2<bool>(global0.x, false), global0.wz, vec2<bool>(false, global0.x))), false, true, true)), all(select(select(!global0.zyw, !vec3<bool>(false, global0.x, global0.x), !global0.wzw), global0.ywy, any(vec4<bool>(global0.x, false, global0.x, true)))));
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(arg_0 - 1238f), _wgslsmith_f_op_f32(-540f * arg_0), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(select(-1144f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1168f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0)))), global0.x)));
    var var_1 = u_input.e.x;
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(u_input.e.zy << (u_input.e.zz % vec2<u32>(32u)), reverseBits(vec2<u32>(0u, u_input.e.x) >> (vec2<u32>(u_input.c, 4294967295u) % vec2<u32>(32u))), !vec2<bool>(global0.x, true)), firstTrailingBit(vec2<u32>(0u, 78810u << (~4294967295u % 32u)))), 29u)];
    var var_3 = 33261i;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0 + var_0) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1317f, -757f, -874f, var_2.a.x)))))) - vec4<f32>(-465f, _wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(-var_0.x), -164f));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: bool) -> vec4<f32> {
    global1 = array<Struct_1, 29>();
    let var_0 = true;
    var var_1 = u_input.e.x;
    var var_2 = !(!(any(select(vec4<bool>(false, false, global0.x, arg_1), vec4<bool>(arg_3, var_0, false, var_0), vec4<bool>(true, global0.x, arg_1, true))) | true));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.x * arg_0.b), _wgslsmith_f_op_f32(floor(arg_0.b)), 260f, _wgslsmith_f_op_f32(sign(-359f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, -1000f, -567f, arg_0.b)) * _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(-arg_0.b))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1128f, _wgslsmith_f_op_f32(f32(-1f) * -2390f), _wgslsmith_f_op_f32(sign(arg_0.a.x)), _wgslsmith_div_f32(-450f, -1970f)) * vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_0.b)), _wgslsmith_f_op_f32(select(116f, arg_0.b, arg_3)), _wgslsmith_f_op_f32(arg_0.a.x * -759f), -619f))));
}

fn func_4(arg_0: bool, arg_1: vec4<f32>) -> i32 {
    global0 = vec4<bool>(true, any(select(vec2<bool>(global0.x, all(vec4<bool>(arg_0, arg_0, arg_0, global0.x))), select(vec2<bool>(arg_0, arg_0), select(vec2<bool>(false, arg_0), global0.wx, true), false), global0.xw)), any(vec3<bool>(true, !any(global0.xww), global0.x)), true);
    global1 = array<Struct_1, 29>();
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1.x, arg_1.x)))))));
    global1 = array<Struct_1, 29>();
    var var_1 = vec4<bool>(true, true, true, true);
    return countOneBits(-_wgslsmith_mult_i32(countOneBits(global2.x) << (u_input.e.x % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global2.x, 2147483647i), vec3<i32>(u_input.b, global2.x, -49482i))));
}

fn func_1() -> vec2<f32> {
    global2 = vec4<i32>(global2.x | firstTrailingBit(~global2.x >> ((25524u & u_input.c) % 32u)), countOneBits(func_4(true, _wgslsmith_f_op_vec4_f32(func_2(Struct_1(vec2<f32>(1188f, -1073f), -2767f, u_input.e.zy), !global0.x, _wgslsmith_dot_vec2_i32(u_input.d.xx, vec2<i32>(global2.x, -25966i)), all(vec4<bool>(global0.x, false, global0.x, true)))))), ~_wgslsmith_dot_vec3_i32(reverseBits(-vec3<i32>(0i, 1i, u_input.b)), reverseBits(abs(u_input.d.zxy))), -1i);
    var var_0 = vec4<f32>(1f, 1f, 1f, 1f);
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(var_0.wx - _wgslsmith_f_op_vec2_f32(-var_0.zx)), var_0.x, _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.e.x, u_input.e.x), max(vec2<u32>(u_input.e.x, u_input.e.x), u_input.e.zy)), ~vec2<u32>(36165u, 0u), ~abs(vec2<u32>(u_input.e.x, u_input.c)))));
    global1 = array<Struct_1, 29>();
    let var_2 = Struct_2(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.xx, var_1.a.a, global0.xy))), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(round(-1165f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_1.a.a.x)), -1129f)))), vec2<u32>(~_wgslsmith_mod_u32(27837u, var_1.a.c.x), ~0u >> (~4294967295u % 32u))));
    return vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.b), _wgslsmith_f_op_f32(select(var_2.a.b, -682f, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~min(_wgslsmith_mod_vec4_i32(u_input.d, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, -1i, 0i, -36621i), ~u_input.d)), u_input.d);
    global0 = select(vec4<bool>(true, true, global0.x, global0.x), vec4<bool>(global0.x, any(!select(vec2<bool>(false, global0.x), global0.zz, global0.x)), -808f > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-991f * -1000f))), false), select(select(select(!vec4<bool>(true, global0.x, global0.x, global0.x), select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, false, true, true), vec4<bool>(global0.x, false, global0.x, global0.x)), vec4<bool>(true, false, global0.x, global0.x)), vec4<bool>(global0.x, 2738u == u_input.c, any(vec4<bool>(global0.x, global0.x, false, true)), true), select(select(vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(global0.x, global0.x, global0.x, true), true), !vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, false, true))), !select(!vec4<bool>(global0.x, true, global0.x, global0.x), select(vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(true, true, true, global0.x), false), vec4<bool>(true, false, true, false)), true));
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1()))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1038f, 512f) - vec2<f32>(-315f, -934f)) * vec2<f32>(-468f, _wgslsmith_f_op_f32(f32(-1f) * -334f))))));
    global1 = array<Struct_1, 29>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(var_0, var_0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_0)) - _wgslsmith_f_op_vec2_f32(var_0 + vec2<f32>(678f, var_0.x)))), -491f, u_input.e.xy));
    var var_2 = _wgslsmith_f_op_vec2_f32(func_1()).x;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(213f, _wgslsmith_f_op_vec2_f32(func_1()).x, 319f, -212f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.a.x, -1000f, var_0.x, var_0.x)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a.b, var_0.x, var_1.a.b, -1000f), vec4<f32>(var_1.a.a.x, var_0.x, -615f, var_0.x), vec4<bool>(true, true, false, true)))) - vec4<f32>(-1005f, _wgslsmith_f_op_f32(min(var_0.x, -1557f)), _wgslsmith_f_op_f32(var_0.x * var_1.a.b), _wgslsmith_f_op_f32(max(var_1.a.a.x, var_0.x))))));
    let var_4 = ~max(_wgslsmith_dot_vec2_u32(var_1.a.c, abs(abs(var_1.a.c))), ~(_wgslsmith_mult_u32(1u, 89718u) << ((u_input.e.x | 0u) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(-u_input.d.zzy), firstTrailingBit(u_input.d.wwz), select(vec3<bool>(false, false, false), vec3<bool>(true, global0.x, false), any(vec2<bool>(true, global0.x)))) | -(~(-global2.zxx)), reverseBits(u_input.d), reverseBits(firstLeadingBit(~(u_input.d << (vec4<u32>(var_4, 1u, var_1.a.c.x, 4294967295u) % vec4<u32>(32u))))));
}

