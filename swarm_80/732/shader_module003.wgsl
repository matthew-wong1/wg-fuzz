struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<bool>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: Struct_2,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12> = array<i32, 12>(2147483647i, 0i, -8157i, 54383i, i32(-2147483648), 1i, 34950i, 45158i, 40535i, -28681i, -24750i, -1203i);

var<private> global1: Struct_5 = Struct_5(Struct_4(false, -624f, true), -797f, Struct_2(Struct_1(true, vec3<u32>(0u, 53240u, 4294967295u), vec3<bool>(false, false, false)), vec4<bool>(true, false, false, true), vec3<bool>(true, true, true), vec2<u32>(4294967295u, 20793u)), vec2<u32>(4294967295u, 10657u));

var<private> global2: array<vec4<bool>, 20> = array<vec4<bool>, 20>(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<i32>) -> vec2<f32> {
    let var_0 = global1.d.x;
    let var_1 = vec4<i32>(_wgslsmith_clamp_i32(reverseBits(arg_0.x) << (~22490u % 32u), arg_0.x, -1i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global1.d.x, 1u, global1.c.d.x) << (vec4<u32>(u_input.b, u_input.b, global1.d.x, 38251u) % vec4<u32>(32u)), vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b) ^ vec4<u32>(126514u, u_input.b, global1.c.a.b.x, 4294967295u)) % 32u)), i32(-1i) * -34559i, min(u_input.c.x, ~u_input.a.x) | 1i, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~global1.d.x, 4294967295u >> (_wgslsmith_sub_u32(21300u, global1.c.a.b.x) % 32u)), 12u)]);
    global2 = array<vec4<bool>, 20>();
    var var_2 = ~firstLeadingBit(_wgslsmith_sub_vec3_u32(global1.c.a.b, countOneBits(abs(global1.c.a.b))));
    let var_3 = Struct_5(global1.a, -391f, global1.c, global1.d);
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.b, _wgslsmith_f_op_f32(max(1165f, 937f))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.a.b, var_3.b), vec2<f32>(global1.a.b, -2320f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(570f, 552f)))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: u32) -> vec2<u32> {
    global0 = array<i32, 12>();
    let var_0 = 924f;
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -391f)));
    var var_2 = u_input.c;
    global0 = array<i32, 12>();
    return ~(~(~global1.d));
}

fn func_2() -> vec3<bool> {
    let var_0 = !all(vec4<bool>(false, false, global1.c.a.a, u_input.c.x > global0[_wgslsmith_index_u32(~17069u, 12u)]));
    var var_1 = _wgslsmith_sub_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(66977u, u_input.b), ~vec2<u32>(16323u, 0u) | vec2<u32>(u_input.b, 5729u)), func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(u_input.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, global1.b))), abs(reverseBits(u_input.c.x)), 4294967295u >> (1u % 32u)) ^ ~firstLeadingBit(~global1.c.d));
    var var_2 = _wgslsmith_div_u32(u_input.b, ~(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(global1.d, vec2<u32>(35528u, 0u)), u_input.b) >> (0u % 32u)));
    global0 = array<i32, 12>();
    var var_3 = _wgslsmith_mod_vec3_i32(vec3<i32>(min(88517i, 0i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, global0[_wgslsmith_index_u32(var_1.x, 12u)], global0[_wgslsmith_index_u32(u_input.b, 12u)]), vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 12u)], u_input.c.x, 1i, 1i)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 48141i, 12435i, u_input.c.x), vec4<i32>(u_input.c.x, -43424i, 7565i, -29468i))) | ~vec3<i32>(~u_input.c.x, 2147483647i, select(40395i, u_input.a.x, global1.a.c)), ~(~abs(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, -1i, global0[_wgslsmith_index_u32(global1.c.a.b.x, 12u)]), vec3<i32>(global0[_wgslsmith_index_u32(79850u, 12u)], global0[_wgslsmith_index_u32(var_1.x, 12u)], 46518i)))));
    return !vec3<bool>(true, true, all(vec2<bool>(global1.c.a.c.x && global1.c.a.c.x, !global1.c.b.x)));
}

fn func_5(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_5 {
    global2 = array<vec4<bool>, 20>();
    let var_0 = Struct_4(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-864f - _wgslsmith_f_op_f32(min(global1.b, _wgslsmith_f_op_f32(-global1.b))))), !(global1.b <= _wgslsmith_f_op_f32(-global1.a.b)));
    global2 = array<vec4<bool>, 20>();
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1.a.b - 1000f), _wgslsmith_f_op_f32(-1000f + var_0.b), _wgslsmith_f_op_f32(abs(var_0.b)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-891f, global1.b, 469f)))), select(vec3<bool>(true, true, true), vec3<bool>(func_2().x, arg_0, true), select(global1.c.c, !vec3<bool>(false, var_0.a, false), vec3<bool>(arg_2.c.x, false, arg_2.a))))));
    return Struct_5(global1.a, _wgslsmith_f_op_f32(-var_1.a.x), Struct_2(Struct_1(_wgslsmith_div_u32(0u, global1.d.x) <= reverseBits(u_input.b), _wgslsmith_clamp_vec3_u32(select(vec3<u32>(7218u, 0u, 21109u), arg_2.b, arg_2.c), global1.c.a.b, ~vec3<u32>(1u, 34485u, 7305u)), select(arg_1, vec3<bool>(true, false, true), func_2())), vec4<bool>(true, true, !arg_1.x == !arg_2.a, u_input.a.x <= firstTrailingBit(u_input.c.x)), vec3<bool>(true & all(global1.c.c.xz), !var_0.c, false), ~_wgslsmith_mult_vec2_u32(global1.d, _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 79200u), global1.c.a.b.yx))), vec2<u32>(arg_2.b.x, abs(22162u)));
}

fn func_1() -> Struct_4 {
    global1 = func_5(all(!func_2()), select(vec3<bool>(select(global0[_wgslsmith_index_u32(10540u, 12u)] < 1i, global1.a.c, !global1.a.c), ~global1.d.x != ~5004u, !select(global1.c.b.x, true, true)), vec3<bool>(!all(global1.c.b), all(vec2<bool>(global1.c.a.c.x, true)) == global1.c.a.a, false), false), Struct_1(true & (global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, u_input.b), 12u)] > (-42782i ^ global0[_wgslsmith_index_u32(global1.c.d.x, 12u)])), global1.c.a.b, func_2()));
    var var_0 = ~(~_wgslsmith_div_vec2_u32(global1.d | vec2<u32>(41276u, 20106u), firstTrailingBit(countOneBits(global1.d))));
    var_0 = abs(~vec2<u32>(~var_0.x, firstTrailingBit(~global1.c.d.x)));
    global2 = array<vec4<bool>, 20>();
    global1 = func_5(global1.a.a, vec3<bool>(global1.a.a, global1.c.c.x, (1u < _wgslsmith_mod_u32(var_0.x, 28139u)) | false), Struct_1(22803u > min(_wgslsmith_mult_u32(4505u, global1.d.x), 0u), global1.c.a.b, func_5(!global1.a.a, !func_2(), Struct_1(true && global1.c.b.x, _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 11102u, global1.c.a.b.x), vec3<u32>(1u, 27157u, u_input.b)), global1.c.c)).c.b.zyx));
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(any(!global1.c.b), ~(~global1.c.a.b), !global1.c.c);
    global1 = Struct_5(func_1(), -1329f, global1.c, select(var_0.b.yy, _wgslsmith_clamp_vec2_u32(vec2<u32>(~59622u, var_0.b.x << (var_0.b.x % 32u)), ~vec2<u32>(u_input.b, global1.c.a.b.x), _wgslsmith_mult_vec2_u32(var_0.b.yy, vec2<u32>(u_input.b, 0u) & var_0.b.yz)), !(!vec2<bool>(true, global1.c.a.a))));
    global1 = Struct_5(Struct_4(true, -1041f, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -311f)), global1.c, ~vec2<u32>(var_0.b.x, ~abs(var_0.b.x)));
    var var_1 = func_1().c;
    var var_2 = _wgslsmith_f_op_f32(-global1.a.b);
    var var_3 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

