struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
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

var<private> global0: vec4<f32>;

var<private> global1: array<i32, 1> = array<i32, 1>(1i);

var<private> global2: array<bool, 13>;

var<private> global3: array<vec4<u32>, 20> = array<vec4<u32>, 20>(vec4<u32>(4294967295u, 14783u, 5455u, 50761u), vec4<u32>(0u, 90271u, 47032u, 21882u), vec4<u32>(19466u, 29860u, 37179u, 1u), vec4<u32>(0u, 11982u, 6613u, 0u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 89526u), vec4<u32>(54815u, 1u, 0u, 1u), vec4<u32>(5463u, 0u, 0u, 0u), vec4<u32>(31030u, 4294967295u, 8526u, 85904u), vec4<u32>(82179u, 4294967295u, 1u, 3382u), vec4<u32>(84851u, 34763u, 0u, 7993u), vec4<u32>(20847u, 14456u, 4294967295u, 0u), vec4<u32>(0u, 0u, 4294967295u, 0u), vec4<u32>(4294967295u, 1u, 27092u, 1u), vec4<u32>(19499u, 4294967295u, 4294967295u, 60685u), vec4<u32>(1u, 67536u, 40853u, 53370u), vec4<u32>(2737u, 0u, 16106u, 4294967295u), vec4<u32>(225u, 37486u, 41207u, 10922u), vec4<u32>(1u, 88748u, 31101u, 1u), vec4<u32>(1u, 14773u, 4294967295u, 8977u), vec4<u32>(4294967295u, 4294967295u, 69324u, 2673u));

var<private> global4: array<Struct_4, 26>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_5(Struct_2(Struct_1(vec3<f32>(_wgslsmith_div_f32(213f, global0.x), -461f, _wgslsmith_f_op_f32(select(2301f, -173f, false)))), 0u), _wgslsmith_sub_u32(u_input.a, u_input.a), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, 305f) - global0.wxw)) * _wgslsmith_f_op_vec3_f32(exp2(global0.xxx)))), firstTrailingBit(~firstTrailingBit(~u_input.a)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1293f, _wgslsmith_f_op_f32(global0.x + 1458f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-2125f, -931f), _wgslsmith_div_f32(-517f, 154f))), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(f32(-1f) * -208f)))));
    var var_2 = Struct_5(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a))), ~u_input.a << ((_wgslsmith_dot_vec3_u32(vec3<u32>(83899u, 166582u, 60759u), vec3<u32>(0u, var_0.d, 57594u)) & _wgslsmith_sub_u32(var_0.b, u_input.a)) % 32u)), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~(~vec3<u32>(4294967295u, u_input.a, u_input.a)), firstTrailingBit(vec3<u32>(u_input.a, 4294967295u, 1u) >> (vec3<u32>(u_input.a, u_input.a, 76002u) % vec3<u32>(32u)))), ~vec3<u32>(var_0.d << (1u % 32u), _wgslsmith_mult_u32(u_input.a, var_0.d), u_input.a)), Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1015f, var_0.c.a.x, 377f) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-855f, -808f, var_0.c.a.x))))))), ~max(countOneBits(var_0.d), 0u));
    let var_3 = global0.x;
    var var_4 = -1000f;
    return vec4<bool>(var_2.c.a.x == var_1.a.x, all(vec3<bool>(true, true, true)), !global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a, var_2.a.b), 4294967295u), 13u)], all(vec3<bool>(all(!vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 13u)], global2[_wgslsmith_index_u32(u_input.a, 13u)], global2[_wgslsmith_index_u32(1u, 13u)])), all(vec2<bool>(false, true)), _wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(u_input.a, 20u)], global3[_wgslsmith_index_u32(var_2.b, 20u)]) < (var_2.a.b & var_0.a.b))));
}

fn func_2() -> u32 {
    let var_0 = !select(vec4<bool>(false, !(!global2[_wgslsmith_index_u32(4294967295u, 13u)]), all(vec3<bool>(global2[_wgslsmith_index_u32(86157u, 13u)], false, true)), !global2[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 13u)]), select(!(!vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 13u)], false, true)), func_3(), all(!vec4<bool>(global2[_wgslsmith_index_u32(17186u, 13u)], true, global2[_wgslsmith_index_u32(u_input.a, 13u)], true))), firstLeadingBit(0i) > _wgslsmith_add_i32(firstLeadingBit(global1[_wgslsmith_index_u32(0u, 1u)]), _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(u_input.a, 1u)], 2147483647i)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(global0.yxx, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-912f, -567f, global0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.yxz)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global0.ywy)))))));
    var var_2 = global0.x;
    var_2 = _wgslsmith_f_op_f32(sign(var_1.a.x));
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.ywy + var_1.a), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.a.x, 1530f, var_1.a.x)))), var_1.a, !select(vec3<bool>(true, global2[_wgslsmith_index_u32(8258u, 13u)], true), var_0.xwx, global2[_wgslsmith_index_u32(24783u, 13u)])))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, abs(11233u)), ~(vec2<u32>(u_input.a, 107827u) | vec2<u32>(0u, 41107u))));
    return _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(select(var_3.b, 15558u, global2[_wgslsmith_index_u32(1u, 13u)]), _wgslsmith_add_u32(1u, 18565u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, 1u)))), firstTrailingBit(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 7116u, var_3.b), vec3<u32>(0u, u_input.a, u_input.a)), max(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(1u, 1369u, u_input.a))))), ~vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(var_3.b, 23911u, 1u), vec3<u32>(var_3.b, u_input.a, var_3.b), vec3<bool>(true, true, global2[_wgslsmith_index_u32(u_input.a, 13u)])), vec3<u32>(2467u, var_3.b, 81771u) << (vec3<u32>(var_3.b, u_input.a, u_input.a) % vec3<u32>(32u))), 4294967295u));
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(firstLeadingBit(0u), countOneBits(0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 17564u), vec2<u32>(9449u, arg_0)), u_input.a), func_2()), _wgslsmith_mod_vec2_u32(abs(vec2<u32>(1u, 1u)), _wgslsmith_mult_vec2_u32(select(vec2<u32>(arg_0, u_input.a), vec2<u32>(arg_0, 4294967295u), true), abs(vec2<u32>(u_input.a, 1952u) ^ vec2<u32>(13429u, u_input.a)))));
    let var_1 = min(-9949i, firstTrailingBit(2147483647i) << (arg_0 % 32u)) | firstLeadingBit(_wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(60433i, global1[_wgslsmith_index_u32(42251u, 1u)]), vec2<i32>(0i, 3340i))), countOneBits(u_input.b.xz)));
    let var_2 = Struct_4(countOneBits(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(-54716i, var_1, global1[_wgslsmith_index_u32(var_0.x, 1u)]))) & min(_wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.b.x, u_input.b.x), firstLeadingBit(var_1)), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.b.x, global1[_wgslsmith_index_u32(13397u, 1u)], var_1), vec4<i32>(2147483647i, var_1, 4766i, -2147483647i)))), vec4<bool>(global2[_wgslsmith_index_u32(var_0.x, 13u)], false, any(!(!vec3<bool>(false, false, global2[_wgslsmith_index_u32(3428u, 13u)]))), all(select(vec2<bool>(true, true), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 13u)], true), select(vec2<bool>(global2[_wgslsmith_index_u32(41919u, 13u)], true), vec2<bool>(true, false), vec2<bool>(true, false))))));
    var_0 = ~vec2<u32>(34787u, reverseBits(_wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_0, arg_0), u_input.a)));
    var_0 = ~(~vec2<u32>(~arg_0, _wgslsmith_mod_u32(min(0u, 114966u), 33906u & var_0.x)));
    return _wgslsmith_f_op_f32(abs(global0.x));
}

fn func_4(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_3(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, -1000f))), 1f, arg_0)));
    let var_1 = Struct_5(Struct_2(var_0.a, u_input.a), abs(abs(abs(11025u))), Struct_1(var_0.a.a), ~1u);
    var var_2 = var_1;
    global2 = array<bool, 13>();
    var var_3 = _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.b.yy, _wgslsmith_mult_vec2_i32(u_input.b.zz, vec2<i32>(u_input.b.x, global1[_wgslsmith_index_u32(29440u, 1u)])) | -vec2<i32>(u_input.b.x, 0i)), -u_input.b.yz, vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(var_1.b, 1u)], -2147483647i, u_input.b.x, global1[_wgslsmith_index_u32(var_1.b, 1u)]) >> (vec4<u32>(u_input.a, 0u, 0u, u_input.a) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, 32771i, -16264i), vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, -30728i))), _wgslsmith_add_i32(-global1[_wgslsmith_index_u32(0u, 1u)], _wgslsmith_div_i32(-1i, global1[_wgslsmith_index_u32(u_input.a, 1u)])))) << (vec2<u32>(u_input.a, var_2.a.b) % vec2<u32>(32u));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-global0.zw);
    var var_1 = Struct_5(Struct_2(func_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(u_input.a)), 108f))), u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), reverseBits(vec2<u32>(5597u, 4294967295u) | vec2<u32>(u_input.a, u_input.a))) >> (u_input.a % 32u), Struct_1(global0.wwz), ~(u_input.a | 65705u));
    var var_2 = _wgslsmith_div_vec3_i32(~vec3<i32>(25385i, countOneBits(-1i), _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, 2147483647i), vec4<i32>(u_input.b.x, -1i, global1[_wgslsmith_index_u32(0u, 1u)], 0i), global2[_wgslsmith_index_u32(32622u, 13u)]), countOneBits(vec4<i32>(u_input.b.x, 1i, -1i, u_input.b.x)))), select(u_input.b ^ vec3<i32>(u_input.b.x, u_input.b.x, global1[_wgslsmith_index_u32(~1u, 1u)]), -u_input.b, !vec3<bool>(425f < global0.x, true, false)));
    var var_3 = Struct_5(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(trunc(var_1.a.a.a))), 62441u), u_input.a, var_1.a.a, ~u_input.a);
    let var_4 = global4[_wgslsmith_index_u32(var_1.d, 26u)];
    global3 = array<vec4<u32>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(~_wgslsmith_mult_u32(0u, u_input.a) & _wgslsmith_mod_u32(1u ^ var_1.b, ~var_3.a.b)));
}

