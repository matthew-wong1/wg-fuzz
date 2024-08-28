struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
    c: Struct_2,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 12>;

var<private> global1: u32 = 98198u;

var<private> global2: vec4<u32>;

var<private> global3: array<vec3<u32>, 31> = array<vec3<u32>, 31>(vec3<u32>(4294967295u, 19546u, 1u), vec3<u32>(1u, 32447u, 3624u), vec3<u32>(44615u, 0u, 1u), vec3<u32>(27668u, 84006u, 7373u), vec3<u32>(10889u, 0u, 1u), vec3<u32>(0u, 17927u, 4294967295u), vec3<u32>(4536u, 36017u, 1u), vec3<u32>(0u, 86568u, 1u), vec3<u32>(4294967295u, 0u, 6673u), vec3<u32>(0u, 28509u, 4294967295u), vec3<u32>(0u, 0u, 0u), vec3<u32>(8324u, 22108u, 4294967295u), vec3<u32>(4001u, 30080u, 1u), vec3<u32>(77001u, 31771u, 44875u), vec3<u32>(8968u, 4294967295u, 4294967295u), vec3<u32>(37513u, 0u, 0u), vec3<u32>(23049u, 0u, 42784u), vec3<u32>(59233u, 1u, 31873u), vec3<u32>(4294967295u, 0u, 74882u), vec3<u32>(1u, 0u, 71391u), vec3<u32>(8273u, 46929u, 1u), vec3<u32>(10394u, 47371u, 15140u), vec3<u32>(1u, 1u, 0u), vec3<u32>(3547u, 32382u, 5650u), vec3<u32>(35680u, 31482u, 4294967295u), vec3<u32>(0u, 35472u, 0u), vec3<u32>(19658u, 1u, 1191u), vec3<u32>(1u, 1u, 26211u), vec3<u32>(1u, 0u, 0u), vec3<u32>(3508u, 0u, 0u), vec3<u32>(31532u, 23434u, 4294967295u));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: u32, arg_3: Struct_2) -> f32 {
    let var_0 = Struct_1(arg_3.a.a, select(vec3<bool>(any(arg_0.a.b), (arg_0.a.a.x <= arg_0.a.a.x) == false, false), !vec3<bool>(true && arg_0.a.b.x, !arg_0.a.b.x, false), vec3<bool>(arg_3.b, arg_0.a.a.x == _wgslsmith_f_op_f32(-arg_3.a.a.x), true)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(arg_3.a.a.x - _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.a.a.x - arg_0.a.a.x), _wgslsmith_f_op_f32(min(-1440f, 377f)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(var_0.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), any(!vec4<bool>(arg_3.a.b.x, false, arg_3.a.b.x, false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.a.x - 549f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + arg_0.a.a.x) - _wgslsmith_f_op_f32(exp2(arg_0.a.a.x))))));
    global0 = array<Struct_3, 12>();
    global3 = array<vec3<u32>, 31>();
    var var_2 = global0[_wgslsmith_index_u32(4294967295u, 12u)];
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a.x))) * var_1.x)));
}

fn func_2() -> Struct_3 {
    let var_0 = vec4<f32>(_wgslsmith_div_f32(-183f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1721f), -209f)), 1341f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-207f))))), _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(966f, -219f, -1000f) * vec3<f32>(1318f, 586f, -201f)), vec3<bool>(false, false, false)), true, abs(_wgslsmith_mod_vec2_u32(vec2<u32>(22221u, 19147u), vec2<u32>(u_input.b.x, global2.x))), global2.yz), vec3<i32>(13103i, u_input.a.x, -_wgslsmith_add_i32(1i, u_input.a.x)), 1u, Struct_2(Struct_1(vec3<f32>(369f, 1091f, -353f), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true)), true, global2.zx, vec2<u32>(global2.x, _wgslsmith_clamp_u32(4294967295u, 76408u, global2.x))))));
    var var_1 = global2.x;
    global2 = ~_wgslsmith_mult_vec4_u32(abs(~vec4<u32>(global2.x, 4294967295u, global2.x, global2.x)), abs(vec4<u32>(u_input.b.x, 4294967295u, 1u, global2.x)) ^ ~vec4<u32>(u_input.b.x, global2.x, 1u, u_input.d)) | firstLeadingBit(~(~vec4<u32>(4294967295u, u_input.d, u_input.b.x, 1u)));
    var_1 = min(~47874u, u_input.b.x) ^ 4294967295u;
    let var_2 = Struct_1(vec3<f32>(var_0.x, _wgslsmith_div_f32(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1534f + var_0.x), var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -1194f)) - 210f)), vec3<bool>(false, any(vec2<bool>(true, true)), !any(vec3<bool>(true, true, true))));
    return global0[_wgslsmith_index_u32(~(~(~u_input.b.x | 20655u)), 12u)];
}

fn func_1() -> Struct_1 {
    global3 = array<vec3<u32>, 31>();
    let var_0 = u_input.a.zz;
    global1 = u_input.b.x;
    var var_1 = ~global2.wx;
    let var_2 = func_2();
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.c.a.a) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1308f), var_2.c.a.a.x, var_2.b)), select(select(!(!var_2.a.www), vec3<bool>(true, !var_2.a.x, var_2.d.x > var_2.d.x), func_2().c.a.b.x), !var_2.c.a.b, var_2.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = func_2().c;
    global2 = vec4<u32>(firstTrailingBit(u_input.b.x), u_input.b.x, global2.x, ~4294967295u);
    var var_2 = -48364i;
    let var_3 = max(~firstTrailingBit(abs(8420u)) << ((~(~u_input.d) & _wgslsmith_add_u32(37165u << (global2.x % 32u), 1u)) % 32u), 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~_wgslsmith_dot_vec3_u32(select(vec3<u32>(var_3, 4294967295u, var_3), vec3<u32>(var_3, 0u, 75429u), vec3<bool>(var_1.b, true, var_0.b.x)), global2.xwz << (global3[_wgslsmith_index_u32(u_input.b.x, 31u)] % vec3<u32>(32u))), var_1.d.x, 13245u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.a.x, 1000f, 2057f) - vec3<f32>(var_0.a.x, 307f, var_0.a.x))), var_0.a)), firstLeadingBit(u_input.c.x));
}

