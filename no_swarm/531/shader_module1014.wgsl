struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
    e: bool,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11>;

var<private> global1: vec3<i32>;

var<private> global2: Struct_4 = Struct_4(vec2<i32>(44929i, -16232i), Struct_1(vec2<bool>(false, true), vec4<i32>(9561i, 51475i, -1i, 0i), 51200u, 4294967295u, 19718i), Struct_3(0u, -505f, 1u));

var<private> global3: bool = true;

var<private> global4: array<Struct_4, 6> = array<Struct_4, 6>(Struct_4(vec2<i32>(-10174i, 34629i), Struct_1(vec2<bool>(true, false), vec4<i32>(-15969i, -17319i, -1i, 5610i), 21635u, 11783u, 2147483647i), Struct_3(4294967295u, 754f, 95127u)), Struct_4(vec2<i32>(-22683i, -1i), Struct_1(vec2<bool>(true, false), vec4<i32>(-20728i, 51592i, i32(-2147483648), 2147483647i), 1u, 1u, 45658i), Struct_3(4294967295u, 1867f, 44950u)), Struct_4(vec2<i32>(-876i, 1i), Struct_1(vec2<bool>(false, false), vec4<i32>(0i, -44457i, i32(-2147483648), -26795i), 33853u, 0u, -21097i), Struct_3(34065u, 1043f, 0u)), Struct_4(vec2<i32>(9608i, -9951i), Struct_1(vec2<bool>(false, true), vec4<i32>(0i, -7117i, 0i, 19763i), 13290u, 0u, 2147483647i), Struct_3(1u, 2843f, 4294967295u)), Struct_4(vec2<i32>(-1i, 2423i), Struct_1(vec2<bool>(false, true), vec4<i32>(2147483647i, 2147483647i, 50202i, 1i), 1u, 4294967295u, 36005i), Struct_3(32905u, -1000f, 6604u)), Struct_4(vec2<i32>(2147483647i, 1i), Struct_1(vec2<bool>(false, false), vec4<i32>(i32(-2147483648), 17187i, i32(-2147483648), 1i), 19827u, 20205u, -17144i), Struct_3(104180u, 1154f, 16982u)));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> bool {
    global0 = array<Struct_2, 11>();
    var var_0 = Struct_2(~_wgslsmith_add_vec3_u32(~(vec3<u32>(global2.c.c, 4294967295u, global2.b.d) >> (vec3<u32>(global2.c.a, global2.b.d, global2.b.c) % vec3<u32>(32u))), vec3<u32>(firstLeadingBit(0u), 72469u ^ global2.b.d, global2.b.c)), global2.b, global2.b, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global2.c.b), 458f, global2.c.b, _wgslsmith_f_op_f32(min(global2.c.b, -749f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1607f, global2.c.b, global2.c.b, global2.c.b))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(140f, 284f, global2.c.b, global2.c.b)))))))), false);
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-482f - _wgslsmith_f_op_f32(-var_0.d.x)), _wgslsmith_f_op_f32(sign(global2.c.b)), !any(vec3<bool>(true, global2.b.a.x, true)))), 150f));
    var var_2 = Struct_3(4294967295u, -1783f, ~select(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.c, 71859u, 0u), firstLeadingBit(var_0.a)), ~0u, global2.b.a.x));
    let var_3 = -471f;
    return all(vec4<bool>(global2.b.a.x, var_0.e & (global2.b.a.x || var_0.b.a.x), _wgslsmith_dot_vec2_i32(global2.a, vec2<i32>(0i, u_input.a) << (vec2<u32>(24006u, var_2.a) % vec2<u32>(32u))) != ~u_input.a, var_0.c.a.x));
}

fn func_2(arg_0: i32) -> bool {
    global1 = global2.b.b.ywy;
    var var_0 = select(vec3<bool>(global2.c.b <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.c.b, -425f) * _wgslsmith_div_f32(global2.c.b, -1606f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1223f, global2.c.b))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.b - 554f)), _wgslsmith_f_op_f32(-global2.c.b) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -666f) + -568f)), !(!vec3<bool>(!global2.b.a.x, global2.b.a.x, any(vec4<bool>(global2.b.a.x, global2.b.a.x, global2.b.a.x, global2.b.a.x)))), 1f == _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.c.b), global2.c.b) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1320f)) * global2.c.b)));
    var var_1 = vec3<bool>(global2.b.a.x, all(!vec3<bool>(true, func_3(), !global2.b.a.x)), var_0.x);
    return global2.b.a.x;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> vec3<f32> {
    global0 = array<Struct_2, 11>();
    let var_0 = -24146i;
    var var_1 = func_2(i32(-1i) * -(arg_1.b.x & _wgslsmith_div_i32(-2147483647i, var_0)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c.b * global2.c.b) * _wgslsmith_f_op_f32(-global2.c.b));
    let var_3 = Struct_3(_wgslsmith_mod_u32(firstTrailingBit(~global2.b.c), ~1u), var_2, ~global2.b.c);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.b, 1000f, var_2) + vec3<f32>(1000f, 1214f, global2.c.b)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.c.b, 460f, -2023f))), !vec3<bool>(arg_1.a.x, true, global2.b.a.x))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_3.b, var_2, -1180f)))))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_3.b, 598f)) * vec3<f32>(830f, var_2, var_3.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(394f, var_3.b, var_2)) + vec3<f32>(-401f, var_3.b, 596f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(-986f, _wgslsmith_f_op_f32(-global2.c.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c.b) - _wgslsmith_f_op_f32(f32(-1f) * -893f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.c.b, global2.c.b, global2.c.b))))) + _wgslsmith_f_op_vec3_f32(func_1(global2.b.a, Struct_1(vec2<bool>(false, global2.b.a.x), vec4<i32>(u_input.a, u_input.a, 2147483647i, 2147483647i), global2.c.a, global2.c.a, 0i))))));
    var var_1 = vec4<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.c.b))), _wgslsmith_f_op_f32(global2.c.b + global2.c.b)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1177f - _wgslsmith_f_op_f32(var_0.x * 507f))), global2.b.a.x, global2.b.a.x, !select(select(global1.x > u_input.a, 6387i >= global2.a.x, true), global2.b.a.x, any(vec4<bool>(true, false, false, false))));
    var var_2 = Struct_3(firstLeadingBit(min(20819u, 10859u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1307f, -370f)) - -409f))), global2.c.a);
    global0 = array<Struct_2, 11>();
    var var_3 = !(!var_1.x);
    var_2 = global2.c;
    global3 = true;
    global1 = select((vec3<i32>(-1i) * -reverseBits(global2.b.b.wxz)) & vec3<i32>(-(~u_input.a), _wgslsmith_dot_vec3_i32(global2.b.b.xxw, abs(vec3<i32>(1i, global1.x, global1.x))), _wgslsmith_add_i32(reverseBits(-68849i), u_input.a)), vec3<i32>(~_wgslsmith_dot_vec2_i32(global2.a >> (vec2<u32>(var_2.a, var_2.c) % vec2<u32>(32u)), vec2<i32>(9228i, 1672i)), -global1.x, _wgslsmith_add_i32(2147483647i >> (global2.b.c % 32u), abs(u_input.a)) << (0u % 32u)), select(vec3<bool>(_wgslsmith_dot_vec2_i32(global1.yz, vec2<i32>(-1i, global2.a.x)) == -global1.x, global2.b.a.x, true), vec3<bool>(select(1u, global2.c.a, false) > 1u, any(vec3<bool>(var_1.x, global2.b.a.x, false)), any(!vec4<bool>(true, false, var_1.x, true))), global2.b.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~global2.b.d, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(795f, var_0.x, var_2.b, global2.c.b)))) + vec4<f32>(_wgslsmith_f_op_f32(exp2(var_2.b)), _wgslsmith_f_op_f32(-var_2.b), 747f, var_0.x)))), firstLeadingBit(select(vec2<i32>(1i, 1i) ^ global2.a, -vec2<i32>(0i, 2147483647i), select(var_1.wx, global2.b.a, true))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f - global2.c.b))), _wgslsmith_sub_vec4_i32(global2.b.b, global2.b.b));
}

