struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: i32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(true, vec3<i32>(0i, -2140i, 10735i), vec3<u32>(0u, 0u, 42660u)), Struct_1(false, vec3<i32>(i32(-2147483648), 56234i, 2147483647i), vec3<u32>(37036u, 1976u, 1u)), Struct_1(true, vec3<i32>(i32(-2147483648), -66717i, -21460i), vec3<u32>(68772u, 53990u, 24421u)), Struct_1(true, vec3<i32>(-34275i, 0i, 44345i), vec3<u32>(80463u, 4294967295u, 1u)), Struct_1(false, vec3<i32>(-8012i, 44747i, -10252i), vec3<u32>(0u, 1u, 0u)), Struct_1(true, vec3<i32>(3859i, -40756i, 80697i), vec3<u32>(0u, 71721u, 4294967295u)), Struct_1(true, vec3<i32>(0i, 2147483647i, 8325i), vec3<u32>(1u, 0u, 42380u)), Struct_1(false, vec3<i32>(1i, 32888i, 38143i), vec3<u32>(18525u, 0u, 0u)), Struct_1(true, vec3<i32>(1i, -15241i, 0i), vec3<u32>(1u, 57367u, 0u)), Struct_1(true, vec3<i32>(i32(-2147483648), 36742i, 0i), vec3<u32>(18421u, 4294967295u, 81951u)), Struct_1(false, vec3<i32>(2147483647i, i32(-2147483648), 11736i), vec3<u32>(4294967295u, 712u, 1u)), Struct_1(false, vec3<i32>(76196i, 2147483647i, -6289i), vec3<u32>(1u, 7404u, 18853u)), Struct_1(false, vec3<i32>(i32(-2147483648), -23077i, 0i), vec3<u32>(124369u, 1u, 16148u)), Struct_1(true, vec3<i32>(-1i, 0i, -4894i), vec3<u32>(1u, 3714u, 37696u)), Struct_1(false, vec3<i32>(i32(-2147483648), 2147483647i, 14813i), vec3<u32>(4294967295u, 0u, 0u)), Struct_1(true, vec3<i32>(18481i, -1i, 18343i), vec3<u32>(1u, 25386u, 0u)), Struct_1(false, vec3<i32>(23168i, 45236i, 29593i), vec3<u32>(0u, 4294967295u, 8777u)), Struct_1(false, vec3<i32>(19147i, 0i, 47993i), vec3<u32>(1u, 1u, 0u)), Struct_1(true, vec3<i32>(1i, -67508i, 29224i), vec3<u32>(61189u, 4294967295u, 8747u)), Struct_1(false, vec3<i32>(-1i, -3074i, 13130i), vec3<u32>(98657u, 110488u, 18361u)), Struct_1(false, vec3<i32>(1i, 1i, i32(-2147483648)), vec3<u32>(0u, 37455u, 0u)), Struct_1(false, vec3<i32>(-32220i, 2147483647i, -1i), vec3<u32>(0u, 4294967295u, 25267u)), Struct_1(false, vec3<i32>(i32(-2147483648), 1i, 0i), vec3<u32>(77023u, 40725u, 26489u)), Struct_1(true, vec3<i32>(0i, 1i, -1i), vec3<u32>(4294967295u, 1u, 4294967295u)), Struct_1(true, vec3<i32>(0i, i32(-2147483648), -14520i), vec3<u32>(4294967295u, 15028u, 0u)), Struct_1(false, vec3<i32>(0i, -25637i, 56669i), vec3<u32>(1u, 1683u, 0u)), Struct_1(false, vec3<i32>(2147483647i, -5314i, 7798i), vec3<u32>(47718u, 1u, 39417u)), Struct_1(true, vec3<i32>(2147483647i, -16213i, 1i), vec3<u32>(0u, 3272u, 5345u)), Struct_1(true, vec3<i32>(-19113i, 34991i, 1i), vec3<u32>(4294967295u, 42173u, 0u)));

var<private> global1: bool;

var<private> global2: vec3<i32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> i32 {
    return 0i;
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1332f, -247f, -807f, -216f))))))));
    var var_1 = Struct_3(Struct_2(Struct_1(true, countOneBits(_wgslsmith_div_vec3_i32(u_input.d.zxz, u_input.d.zyx)), ~vec3<u32>(4294967295u, 0u, 4294967295u)), !all(vec3<bool>(true, true, true)), global0[_wgslsmith_index_u32(u_input.e.x, 29u)], func_3(~(~vec4<u32>(15948u, 4294967295u, 651u, u_input.e.x)), Struct_1(true, vec3<i32>(43989i, global2.x, 0i), u_input.e.wyy)), ~u_input.e), -1i);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(634f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-var_0.x)) - 745f)), _wgslsmith_div_f32(var_0.x, -735f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-286f * 1000f)) - var_0.x)));
    global0 = array<Struct_1, 29>();
    return _wgslsmith_f_op_f32(-var_2.x);
}

fn func_1(arg_0: bool) -> bool {
    let var_0 = vec3<u32>(_wgslsmith_add_u32(u_input.e.x, 41460u), ~(~0u), ~(~0u));
    let var_1 = _wgslsmith_div_i32(~(~u_input.d.x), -2147483647i);
    global1 = true;
    var var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -820f), _wgslsmith_f_op_f32(func_2())) * vec2<f32>(_wgslsmith_f_op_f32(max(-1053f, 193f)), _wgslsmith_f_op_f32(439f + -950f)))))));
    return any(vec4<bool>(var_2.x >= _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(975f, -1065f))), any(select(vec4<bool>(true, arg_0, false, true), !vec4<bool>(true, arg_0, false, arg_0), vec4<bool>(arg_0, false, arg_0, arg_0))), any(vec4<bool>(arg_0, any(vec3<bool>(true, false, false)), false, arg_0)), !arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~u_input.c.x);
    let var_1 = true;
    var var_2 = !(func_1(all(select(vec2<bool>(var_1, true), vec2<bool>(false, var_1), var_1))) | var_1);
    global1 = func_1(var_1);
    var var_3 = vec2<i32>(_wgslsmith_mult_i32(-(-39616i << (u_input.e.x % 32u)) << (~(7600u << (u_input.b % 32u)) % 32u), var_0), 2147483647i);
    let var_4 = global0[_wgslsmith_index_u32(~u_input.a.x, 29u)];
    let var_5 = var_4.c.x ^ ~reverseBits(~abs(4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(_wgslsmith_sub_u32(var_5, var_5), ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_5, var_4.c.x), firstLeadingBit(vec3<u32>(var_4.c.x, 0u, 1u)))), var_5, _wgslsmith_sub_i32(global2.x, var_3.x) ^ -1i, ~_wgslsmith_sub_u32(firstTrailingBit(u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_4.c.x, var_5, var_4.c.x), vec4<u32>(40316u, 24994u, 1u, u_input.a.x))) & (firstTrailingBit(min(u_input.e.x, var_4.c.x)) & u_input.e.x));
}

