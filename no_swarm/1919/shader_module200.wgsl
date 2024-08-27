struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<u32, 27> = array<u32, 27>(27947u, 45056u, 1u, 1u, 9066u, 34763u, 20520u, 4294967295u, 8736u, 23552u, 9841u, 0u, 3345u, 1u, 4294967295u, 1u, 48401u, 1u, 25842u, 1u, 19438u, 0u, 53513u, 29909u, 0u, 51637u, 43729u);

var<private> global2: array<vec2<f32>, 13> = array<vec2<f32>, 13>(vec2<f32>(-366f, -825f), vec2<f32>(-702f, -1755f), vec2<f32>(652f, -1282f), vec2<f32>(624f, 816f), vec2<f32>(-829f, -514f), vec2<f32>(-510f, 843f), vec2<f32>(-1022f, 1045f), vec2<f32>(-245f, -1000f), vec2<f32>(-686f, 1383f), vec2<f32>(2185f, 768f), vec2<f32>(-799f, 645f), vec2<f32>(-653f, 569f), vec2<f32>(-864f, 374f));

var<private> global3: array<Struct_2, 10>;

var<private> global4: array<Struct_2, 6>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = vec3<bool>(arg_2.b.x, arg_0.b.x, global0.c.b.x);
    let var_1 = select(!vec4<bool>(arg_2.b.x, any(var_0), true, all(select(arg_0.b, var_0.yz, arg_0.b))), select(vec4<bool>(!select(global0.c.b.x, arg_0.b.x, var_0.x), false, select(global0.c.b.x, global0.c.b.x, all(var_0)), var_0.x), select(vec4<bool>(var_0.x, true, global0.c.a.x <= global0.c.a.x, arg_0.b.x), select(!vec4<bool>(true, true, arg_2.b.x, arg_2.b.x), vec4<bool>(true, false, true, true), true), !(!arg_2.b.x)), any(arg_0.b)), true);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)) + _wgslsmith_f_op_f32(arg_2.a.x * 726f));
    global3 = array<Struct_2, 10>();
    var var_3 = global3[_wgslsmith_index_u32(1u, 10u)];
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1173f, global0.b, global0.c.a.x, 1100f), vec4<f32>(var_3.b, _wgslsmith_f_op_f32(round(arg_2.a.x)), 227f, 349f), true)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, arg_0.a.x, arg_2.a.x, var_3.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-544f, -997f, global0.c.a.x, 2049f) + vec4<f32>(-977f, var_3.b, 1058f, arg_2.a.x)))))));
}

fn func_2(arg_0: bool, arg_1: f32) -> vec4<f32> {
    let var_0 = u_input.e;
    var var_1 = 25625i;
    var var_2 = 4294967295u;
    var var_3 = firstLeadingBit(~(~vec3<i32>(26891i, var_0, u_input.c)) >> ((~(~vec3<u32>(global0.a, 73336u, 54019u)) << (_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(global0.c.c.xzz, vec3<u32>(1u, global1[_wgslsmith_index_u32(global0.c.e, 27u)], 25286u)), ~global0.c.c.wxx, ~vec3<u32>(4294967295u, 4294967295u, u_input.d)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_4 = -336f;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1285f, global0.b, -1438f, 411f), vec4<f32>(-930f, arg_1, -1000f, global0.b)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_3(global0.c, var_0, Struct_1(global0.c.a, vec2<bool>(arg_0, false), global0.c.c, var_0, global1[_wgslsmith_index_u32(55012u, 27u)]))))))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.c.a.x, _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_vec4_f32(func_3(global0.c, var_3.x, global0.c)).x), arg_1, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.b)))))));
}

fn func_4(arg_0: vec4<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0.b)), _wgslsmith_f_op_f32(1676f + global0.b))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(2168f, 205f, global0.b), vec3<f32>(-402f, 1187f, 2218f), vec3<bool>(global0.c.b.x, false, true)))), arg_0.zyw, select(vec3<bool>(global0.c.b.x, global0.c.b.x, global0.c.b.x), select(vec3<bool>(false, global0.c.b.x, true), vec3<bool>(global0.c.b.x, global0.c.b.x, global0.c.b.x), vec3<bool>(global0.c.b.x, global0.c.b.x, global0.c.b.x)), vec3<bool>(global0.c.b.x, global0.c.b.x, false)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.yyx), vec3<f32>(_wgslsmith_f_op_f32(-412f + global0.c.a.x), 578f, _wgslsmith_f_op_vec4_f32(func_3(Struct_1(arg_0.xzx, global0.c.b, vec4<u32>(43609u, 28315u, global0.a, global1[_wgslsmith_index_u32(26273u, 27u)]), global0.c.d, 4294967295u), u_input.e, Struct_1(vec3<f32>(arg_0.x, global0.b, -1000f), vec2<bool>(false, true), vec4<u32>(1u, 0u, u_input.a.x, 1u), 2147483647i, 1u))).x))), !vec2<bool>(all(select(vec4<bool>(global0.c.b.x, global0.c.b.x, global0.c.b.x, false), vec4<bool>(false, true, global0.c.b.x, global0.c.b.x), vec4<bool>(global0.c.b.x, global0.c.b.x, true, true))), global0.c.b.x), global0.c.c, _wgslsmith_mod_i32(17926i & countOneBits(u_input.e), _wgslsmith_add_i32(reverseBits(-global0.c.d), global0.c.d << (26393u % 32u))), abs(_wgslsmith_div_u32(reverseBits(0u), u_input.b)) << (((~global1[_wgslsmith_index_u32(82307u, 27u)] | ~65307u) ^ 1u) % 32u));
    let var_2 = _wgslsmith_sub_vec2_u32(~_wgslsmith_sub_vec2_u32(abs(vec2<u32>(0u, var_1.c.x)) & _wgslsmith_mult_vec2_u32(global0.c.c.yz, global0.c.c.xy), vec2<u32>(_wgslsmith_sub_u32(var_1.c.x, 12283u), ~global1[_wgslsmith_index_u32(var_1.e, 27u)])), u_input.a);
    let var_3 = ~(~global0.c.e);
    var_1 = global0.c;
    return global4[_wgslsmith_index_u32(firstTrailingBit(var_2.x), 6u)];
}

fn func_1(arg_0: f32) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.c.a) + global0.c.a), global0.c.a))));
    global2 = array<vec2<f32>, 13>();
    let var_1 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(true, arg_0))));
    global0 = func_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - -184f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1570f * var_0.x) * _wgslsmith_f_op_vec4_f32(func_3(Struct_1(var_1.c.a, global0.c.b, vec4<u32>(4294967295u, global0.c.c.x, 1u, u_input.a.x), 9589i, 23972u), u_input.e, var_1.c)).x)), -810f, arg_0, -1303f));
    var var_2 = 1i;
    return !all(vec4<bool>(_wgslsmith_f_op_f32(-arg_0) < _wgslsmith_f_op_f32(var_1.b - 200f), true, var_1.a <= ~0u, var_1.c.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(!(!func_1(_wgslsmith_f_op_f32(global0.b * 815f))), any(select(vec3<bool>(global0.c.b.x, true, global0.c.b.x), vec3<bool>(global0.c.b.x, 0i >= u_input.c, false), !global0.c.b.x)));
    let var_1 = global4[_wgslsmith_index_u32(firstTrailingBit(func_4(_wgslsmith_f_op_vec4_f32(func_2(!(!var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.b)))))).c.c.x), 6u)];
    let var_2 = !var_0.x | true;
    var var_3 = vec3<i32>(22716i, 0i, -27179i);
    var var_4 = func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.a.x, global0.c.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -950f) - 1f), global0.c.a.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.b, -423f, var_1.c.a.x, -1596f), vec4<f32>(338f, global0.c.a.x, 400f, global0.c.a.x), global0.c.b.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.a.x, -375f, var_1.b, -629f)))));
    var var_5 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1278f)));
    var var_6 = any(!var_1.c.b);
    var var_7 = var_4.c;
    var var_8 = func_4(vec4<f32>(var_1.c.a.x, var_4.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_7.a.x) - -1485f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(1923f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.a.x))))), max(_wgslsmith_sub_i32(var_3.x, 1i | reverseBits(global0.c.d)), u_input.e), -var_4.c.d);
}

