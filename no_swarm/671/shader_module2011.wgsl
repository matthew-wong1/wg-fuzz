struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec3<f32>,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 22> = array<u32, 22>(36865u, 55635u, 23945u, 0u, 22829u, 0u, 0u, 0u, 0u, 5420u, 42921u, 4294967295u, 4294967295u, 90828u, 1u, 4294967295u, 1u, 1u, 4294967295u, 56786u, 4294967295u, 4294967295u);

var<private> global1: Struct_2 = Struct_2(1i);

var<private> global2: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec2<i32>(2147483647i, 4500i), 2147483647i, vec3<f32>(-567f, 872f, 517f), 1133f, vec2<bool>(false, false)), Struct_1(vec2<i32>(i32(-2147483648), 42017i), 2147483647i, vec3<f32>(1409f, -244f, -855f), 245f, vec2<bool>(false, true)), Struct_1(vec2<i32>(i32(-2147483648), 0i), 1735i, vec3<f32>(454f, -393f, 950f), -412f, vec2<bool>(false, true)), Struct_1(vec2<i32>(0i, i32(-2147483648)), i32(-2147483648), vec3<f32>(390f, -545f, -334f), -1042f, vec2<bool>(true, true)), Struct_1(vec2<i32>(16473i, -70401i), 19287i, vec3<f32>(-463f, -1377f, 1341f), 1000f, vec2<bool>(true, true)), Struct_1(vec2<i32>(3802i, -1i), 17905i, vec3<f32>(-371f, 249f, -1000f), -871f, vec2<bool>(false, true)), Struct_1(vec2<i32>(-1i, -138i), 1i, vec3<f32>(-293f, -1000f, 2443f), 661f, vec2<bool>(false, false)), Struct_1(vec2<i32>(-2641i, 26415i), -3805i, vec3<f32>(-1155f, 633f, -741f), 886f, vec2<bool>(false, true)));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: Struct_2) -> vec3<f32> {
    global0 = array<u32, 22>();
    global1 = Struct_2(max(_wgslsmith_dot_vec2_i32(~countOneBits(vec2<i32>(-7828i, 41234i)), vec2<i32>(select(arg_0.a, arg_0.a, false), arg_1.a)), ~1i));
    global2 = array<Struct_1, 8>();
    let var_0 = Struct_2(abs(min(_wgslsmith_add_i32(min(arg_0.a, arg_0.a), arg_1.a | 6836i), arg_0.a)));
    global1 = arg_0;
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1364f, _wgslsmith_f_op_f32(round(-1955f)), 1f) + vec3<f32>(-422f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2)) - _wgslsmith_div_f32(1000f, 259f)), -573f))));
}

fn func_3(arg_0: Struct_2) -> i32 {
    global2 = array<Struct_1, 8>();
    global0 = array<u32, 22>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1000f, 531f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1092f, -1308f))))))));
    let var_1 = vec4<f32>(-535f, var_0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(166f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + 175f))), var_0)), _wgslsmith_f_op_f32(trunc(-1000f)));
    let var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.a, 14009i, global1.a), vec3<i32>(2147483647i, 1i, 19408i));
    return -2147483647i;
}

fn func_1(arg_0: vec3<bool>) -> u32 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(Struct_2(2699i), Struct_2(global1.a), -987f, Struct_2(global1.a)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1016f, -1215f, 443f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(629f, -540f, -1403f)))), false))), _wgslsmith_f_op_vec3_f32(func_2(Struct_2(global1.a), Struct_2(~(-global1.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(625f)))), Struct_2(1i))));
    var var_1 = Struct_2(abs(global1.a));
    let var_2 = true;
    let var_3 = Struct_2(~func_3(Struct_2(~(-43623i))));
    let var_4 = ~(abs(vec2<i32>(var_1.a, -50434i)) << (vec2<u32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c, u_input.b.zzw), 22u)], firstTrailingBit(4678u)) % vec2<u32>(32u))) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u));
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~52179u;
    var var_1 = global2[_wgslsmith_index_u32((u_input.a << (_wgslsmith_add_u32(global0[_wgslsmith_index_u32(func_1(vec3<bool>(true, true, true)), 22u)], ~(~global0[_wgslsmith_index_u32(1u, 22u)])) % 32u)) << ((_wgslsmith_div_u32(~(global0[_wgslsmith_index_u32(0u, 22u)] << (71727u % 32u)), 44223u & ~global0[_wgslsmith_index_u32(0u, 22u)]) >> (countOneBits(_wgslsmith_add_u32(0u << (u_input.c.x % 32u), 40052u)) % 32u)) % 32u), 8u)];
    let var_2 = ~global1.a & -firstLeadingBit(-5991i);
    var var_3 = !vec4<bool>(false, !any(vec4<bool>(false, var_1.e.x, var_1.e.x, false)), true, var_1.e.x);
    var var_4 = Struct_2(var_1.a.x | -6959i);
    global0 = array<u32, 22>();
    let var_5 = global2[_wgslsmith_index_u32(countOneBits(global0[_wgslsmith_index_u32(u_input.c.x, 22u)]) | ((_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), min(4294967295u, u_input.a)) >> ((61964u << (u_input.a % 32u)) % 32u)) << (1u % 32u)), 8u)];
    var_1 = Struct_1(vec2<i32>(abs(~reverseBits(-38879i)), 3944i), -1i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1297f, _wgslsmith_f_op_f32(min(var_5.c.x, 172f)), 1f) + vec3<f32>(_wgslsmith_f_op_f32(1870f * var_1.d), _wgslsmith_f_op_f32(floor(var_5.d)), 1f)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_5.c.x, var_5.c.x, var_5.c.x) - vec3<f32>(var_1.c.x, -1112f, var_1.c.x))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(var_5.c)))))), _wgslsmith_f_op_f32(f32(-1f) * -1319f), !var_3.wx);
    var var_6 = select(select(vec3<bool>(_wgslsmith_f_op_f32(ceil(var_1.d)) != var_5.c.x, true, var_3.x), vec3<bool>(all(vec2<bool>(false, var_3.x)), var_3.x, any(vec4<bool>(var_5.e.x, var_3.x, var_3.x, var_3.x))), select(select(vec3<bool>(false, true, var_5.e.x), vec3<bool>(var_1.e.x, false, false), true), select(select(var_3.yyx, var_3.yxx, true), var_3.xyx, var_5.e.x | true), vec3<bool>(var_5.e.x, var_1.e.x, true))), var_3.xzz, select(vec3<bool>(any(vec4<bool>(var_5.e.x, var_1.e.x, false, var_3.x)) && (false | var_5.e.x), true, false), !var_3.ywz, false));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mult_vec4_i32(~vec4<i32>(86065i, var_2, var_5.b, -15371i) | abs(vec4<i32>(-7969i, 0i, -5799i, var_4.a)), abs(~vec4<i32>(var_1.b, 2147483647i, var_1.a.x, 2147483647i)))));
}

