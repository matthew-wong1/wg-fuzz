struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(vec3<u32>(1u, 4294967295u, 4294967295u), Struct_1(vec4<u32>(80319u, 0u, 4294967295u, 0u), 38868u)), Struct_2(vec3<u32>(12949u, 4507u, 1u), Struct_1(vec4<u32>(4294967295u, 4294967295u, 29768u, 118145u), 0u)), Struct_2(vec3<u32>(4294967295u, 38925u, 4294967295u), Struct_1(vec4<u32>(1u, 1u, 36902u, 1u), 22103u)), Struct_2(vec3<u32>(61335u, 97079u, 30049u), Struct_1(vec4<u32>(1u, 1u, 51367u, 8062u), 1u)), Struct_2(vec3<u32>(0u, 4294967295u, 1u), Struct_1(vec4<u32>(0u, 21214u, 72797u, 4294967295u), 57381u)), Struct_2(vec3<u32>(4164u, 0u, 1u), Struct_1(vec4<u32>(1146u, 0u, 62486u, 38340u), 0u)), Struct_2(vec3<u32>(19107u, 0u, 0u), Struct_1(vec4<u32>(0u, 5593u, 0u, 16457u), 0u)), Struct_2(vec3<u32>(1u, 0u, 4294967295u), Struct_1(vec4<u32>(6757u, 4294967295u, 4294967295u, 25627u), 0u)), Struct_2(vec3<u32>(29517u, 24944u, 27719u), Struct_1(vec4<u32>(53351u, 106171u, 4294967295u, 0u), 32764u)), Struct_2(vec3<u32>(1u, 5634u, 127868u), Struct_1(vec4<u32>(0u, 0u, 49008u, 65094u), 1u)), Struct_2(vec3<u32>(0u, 0u, 1u), Struct_1(vec4<u32>(4294967295u, 64329u, 68040u, 1u), 1u)), Struct_2(vec3<u32>(31982u, 68203u, 22054u), Struct_1(vec4<u32>(0u, 4294967295u, 4294967295u, 87642u), 4294967295u)), Struct_2(vec3<u32>(4294967295u, 3501u, 118480u), Struct_1(vec4<u32>(37127u, 15774u, 44257u, 1u), 0u)));

var<private> global1: vec2<bool> = vec2<bool>(false, true);

var<private> global2: array<vec4<i32>, 11> = array<vec4<i32>, 11>(vec4<i32>(0i, -12926i, i32(-2147483648), -1i), vec4<i32>(17731i, -44720i, -27425i, -71930i), vec4<i32>(21366i, -7027i, 9480i, -17654i), vec4<i32>(1i, -3387i, 8616i, 1850i), vec4<i32>(-35768i, 54437i, 485i, 0i), vec4<i32>(1i, -50107i, i32(-2147483648), 7873i), vec4<i32>(2147483647i, i32(-2147483648), 25055i, 0i), vec4<i32>(-15016i, 9240i, i32(-2147483648), -1i), vec4<i32>(-13395i, 0i, -1i, 2884i), vec4<i32>(1i, -2559i, -1i, 1i), vec4<i32>(0i, i32(-2147483648), -17826i, -20697i));

var<private> global3: Struct_4 = Struct_4(true, vec2<i32>(0i, i32(-2147483648)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: bool, arg_3: i32) -> u32 {
    return reverseBits(_wgslsmith_mod_u32(firstTrailingBit(u_input.a.x), 4294967295u));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec4<i32>, arg_3: u32) -> bool {
    global3 = Struct_4(global3.a, global3.b);
    let var_0 = _wgslsmith_add_u32(0u, ~_wgslsmith_mult_u32(arg_3, 198u)) >= ~(_wgslsmith_mult_u32(min(arg_0, 0u), abs(12115u)) << (arg_0 % 32u));
    let var_1 = Struct_1(~vec4<u32>(~0u, arg_3, arg_0, u_input.b), u_input.b);
    let var_2 = ~abs(select(reverseBits(vec2<u32>(arg_0, arg_3)) >> (countOneBits(vec2<u32>(var_1.a.x, var_1.a.x)) % vec2<u32>(32u)), abs(u_input.a), true));
    var var_3 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - arg_1), 141f), ~global3.b.x, var_1);
    return func_1(arg_2.x, select(vec3<bool>(true, !global1.x, any(vec4<bool>(false, false, global3.a, true))), vec3<bool>(true, true, global1.x), true), true, 1i) < u_input.b;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<i32>) -> bool {
    let var_0 = Struct_4(global1.x, select(vec2<i32>(global3.b.x & arg_2.x, _wgslsmith_add_i32(~2147483647i, ~global3.b.x)), _wgslsmith_div_vec2_i32(select(firstLeadingBit(vec2<i32>(arg_2.x, arg_2.x)), global3.b, arg_0.b > u_input.b), ~(~vec2<i32>(-2147483647i, 28072i))), select(vec2<bool>(global1.x, func_3(u_input.b, arg_1.x, vec4<i32>(1i, -41495i, 2147483647i, 20277i), arg_0.b)), !vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x & global3.a, true))));
    global0 = array<Struct_2, 13>();
    var var_1 = var_0;
    let var_2 = -(~((_wgslsmith_div_vec4_i32(vec4<i32>(var_0.b.x, -1i, 83844i, -7906i), global2[_wgslsmith_index_u32(24612u, 11u)]) | global2[_wgslsmith_index_u32(0u & arg_0.a.x, 11u)]) ^ global2[_wgslsmith_index_u32(min(arg_0.b, u_input.b), 11u)]));
    let var_3 = arg_0;
    return !(!any(select(vec4<bool>(false, var_0.a, global3.a, true), !vec4<bool>(true, var_1.a, true, var_0.a), true)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: bool) -> Struct_1 {
    let var_0 = select(abs(_wgslsmith_mult_vec3_u32(~arg_0.a.yxz | vec3<u32>(4294967295u, 44371u, arg_0.b), ~arg_0.a.zxz & ~vec3<u32>(arg_0.b, 0u, 71252u))), select(max(vec3<u32>(u_input.b, 4294967295u, 14669u), vec3<u32>(4294967295u, u_input.b, 0u)) | ((arg_0.a.yxx | vec3<u32>(arg_0.b, u_input.b, 25437u)) & ~vec3<u32>(113122u, 43561u, arg_0.a.x)), vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(15954u, arg_0.a.x, 9080u), arg_0.a.www), u_input.b, 28039u), global3.a), true);
    var var_1 = firstLeadingBit(vec4<u32>(18045u, _wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(var_0.x, _wgslsmith_clamp_u32(0u, arg_0.b, 4294967295u)), 26032u), 34353u, abs(reverseBits(min(55769u, var_0.x)))));
    global0 = array<Struct_2, 13>();
    let var_2 = vec3<i32>(firstTrailingBit(_wgslsmith_add_i32(1i, -1i)), reverseBits(_wgslsmith_mod_i32(_wgslsmith_mult_i32(global3.b.x, 0i), global3.b.x)), firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, 25232i, global3.b.x, global3.b.x), global2[_wgslsmith_index_u32(~(var_1.x ^ var_0.x), 11u)])));
    global2 = array<vec4<i32>, 11>();
    return Struct_1(vec4<u32>(_wgslsmith_dot_vec3_u32(countOneBits(max(var_1.xzw, var_1.zxz)), vec3<u32>(_wgslsmith_add_u32(1u, arg_0.a.x), ~u_input.a.x, 1u)), ~firstLeadingBit(var_1.x), _wgslsmith_sub_u32(4294967295u & (14335u ^ u_input.b), arg_0.a.x), ~u_input.a.x), 44501u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec2_i32(-firstTrailingBit(vec2<i32>(_wgslsmith_mult_i32(global3.b.x, global3.b.x), countOneBits(-1i))), vec2<i32>(_wgslsmith_div_i32(global3.b.x, -41474i), 53855i));
    let var_1 = _wgslsmith_dot_vec4_i32(-global2[_wgslsmith_index_u32(_wgslsmith_div_u32(select(1u, countOneBits(0u), all(vec4<bool>(global3.a, false, false, global1.x))), 0u), 11u)], global2[_wgslsmith_index_u32(abs(23866u), 11u)] ^ vec4<i32>(31772i, 1i, _wgslsmith_mod_i32(-var_0.x, -1i >> (u_input.a.x % 32u)), -2186i));
    let var_2 = func_4(Struct_1(vec4<u32>(~u_input.b >> (func_1(global3.b.x, vec3<bool>(true, global1.x, true), true, 51089i) % 32u), ~(~u_input.b), ~u_input.b, func_1(var_0.x, vec3<bool>(false, global3.a, global1.x), func_2(Struct_1(vec4<u32>(0u, 11152u, 4294967295u, 24529u), u_input.b), vec4<f32>(1198f, 491f, 1000f, 419f), vec3<i32>(global3.b.x, -27233i, var_0.x)), ~global3.b.x)), reverseBits(~u_input.b)), vec3<f32>(-356f, _wgslsmith_f_op_f32(ceil(522f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1423f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1547f)) + -313f)))), (!(!global1.x) && global3.a) && ((_wgslsmith_mult_i32(2147483647i, global3.b.x) ^ _wgslsmith_mult_i32(var_0.x, global3.b.x)) <= 286i));
    var var_3 = Struct_2(~vec3<u32>(1u, ~u_input.b, u_input.a.x), Struct_1(abs(vec4<u32>(u_input.a.x, 19060u, 24945u, var_2.b)) & vec4<u32>(u_input.a.x, reverseBits(36991u), 1u, 1u), u_input.b));
    var var_4 = var_1;
    var_4 = ~(-1i);
    var_4 = _wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(1u, 11u)], abs(reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1, var_1, var_0.x, var_0.x), global2[_wgslsmith_index_u32(1u, 11u)], vec4<i32>(-2147483647i, var_0.x, 2147483647i, 58601i)) & -vec4<i32>(var_1, global3.b.x, -65674i, -2147483647i))));
    var_0 = ~(-global3.b);
    let var_5 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(global3.b, vec4<i32>(_wgslsmith_dot_vec2_i32(global3.b, ~global3.b >> (select(var_3.a.xx, var_2.a.zx, global3.a) % vec2<u32>(32u))), ~19633i, ~3634i, 25838i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(187f, 798f, 191f, 332f), vec4<f32>(-516f, -386f, 1505f, -447f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1531f, -510f, -984f, -2207f) - vec4<f32>(-315f, 790f, -2029f, 880f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1420f, 670f, 447f, 1000f), vec4<f32>(-1000f, -127f, -651f, 2706f), true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-660f, -808f, -455f, 638f) + vec4<f32>(799f, -711f, -462f, -598f))))));
}

