struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 15>;

var<private> global1: vec2<i32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    var var_0 = Struct_2(Struct_1(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, 4294967295u, u_input.d, u_input.a.x), select(u_input.a, u_input.a, false)), select(global1.x, -global1.x, true) & global1.x), any(vec4<bool>(true, true, true, true)) & true);
    var_0 = Struct_2(var_0.a, var_0.b);
    let var_1 = Struct_2(var_0.a, !(var_0.b | !any(global0[_wgslsmith_index_u32(13185u, 15u)])));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(floor(983f)), _wgslsmith_div_f32(-482f, 227f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-304f, -374f) - _wgslsmith_f_op_f32(step(328f, 553f))), 1f)));
    global0 = array<vec3<bool>, 15>();
    return ~(~1u);
}

fn func_2(arg_0: vec2<u32>) -> Struct_2 {
    global0 = array<vec3<bool>, 15>();
    let var_0 = 11567u;
    global1 = u_input.b >> (vec2<u32>(_wgslsmith_mod_u32(u_input.d, _wgslsmith_add_u32(arg_0.x, func_3())), arg_0.x) % vec2<u32>(32u));
    let var_1 = Struct_1(vec4<u32>(u_input.d, ~(~4294967295u), ~(~(~u_input.d)), ~abs(arg_0.x & 4294967295u)), min(-21845i, -7203i));
    var var_2 = Struct_2(Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(85988u, arg_0.x), arg_0.x, _wgslsmith_add_u32(1u, 0u), 1u), ~vec4<u32>(var_0, var_1.a.x, 0u, var_0), var_1.a), 6442i << (max(var_0, 14455u) % 32u)), false);
    return Struct_2(Struct_1(~(~(vec4<u32>(var_1.a.x, var_2.a.a.x, 1365u, arg_0.x) ^ u_input.a)), abs(_wgslsmith_mult_i32(var_2.a.b, var_2.a.b))), any(!select(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], !global0[_wgslsmith_index_u32(102734u, 15u)], global0[_wgslsmith_index_u32(~4149u, 15u)])));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: f32) -> Struct_2 {
    global0 = array<vec3<bool>, 15>();
    let var_0 = func_2(~(~vec2<u32>(arg_0.a.a.x, 1u))).b;
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2, arg_2, arg_2))) * vec3<f32>(-1217f, -151f, arg_2)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1619f, arg_2, 958f)))))));
    let var_3 = _wgslsmith_f_op_f32(max(arg_2, _wgslsmith_f_op_f32(step(382f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.x * arg_2))))))));
    return func_2(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(arg_0.a.a.wz << (vec2<u32>(u_input.a.x, 0u) % vec2<u32>(32u)), min(vec2<u32>(0u, 87572u), vec2<u32>(arg_0.a.a.x, arg_0.a.a.x))) << (~(~vec2<u32>(18819u, 0u)) % vec2<u32>(32u)), ~vec2<u32>(~arg_0.a.a.x, ~arg_0.a.a.x)));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> u32 {
    global1 = firstLeadingBit(vec2<i32>(-1i, ~(55100i >> ((u_input.a.x >> (115777u % 32u)) % 32u))));
    var var_0 = func_4(func_2(u_input.a.xy), u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + arg_1))))));
    return _wgslsmith_clamp_u32(_wgslsmith_sub_u32(7354u, abs(39530u) & var_0.a.a.x), var_0.a.a.x, _wgslsmith_add_u32(~firstTrailingBit(func_4(Struct_2(Struct_1(vec4<u32>(var_0.a.a.x, u_input.d, var_0.a.a.x, var_0.a.a.x), -2147483647i), false), u_input.b, 2062f).a.a.x), (var_0.a.a.x ^ ~4294967295u) >> (11157u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(~_wgslsmith_sub_u32(u_input.a.x, ~(~u_input.d)), ~(~reverseBits(func_1(Struct_1(vec4<u32>(4834u, u_input.a.x, 87109u, u_input.a.x), u_input.c), 610f))), u_input.a.x >> (~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(64129u, 4294967295u, u_input.d), u_input.a.wxx), u_input.a.x, ~59243u) % 32u));
    var_0 = ~(~(u_input.a.yyy ^ max(vec3<u32>(u_input.a.x, 1u, u_input.d), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, u_input.d, var_0.x), u_input.a.zyw))));
    var var_1 = ~u_input.a.x;
    var var_2 = Struct_1(vec4<u32>(6461u, var_0.x, max(4294967295u, func_1(Struct_1(u_input.a, -23717i), 172f)), ~firstTrailingBit(var_0.x)), global1.x);
    var_0 = (u_input.a.xyw >> (_wgslsmith_mod_vec3_u32(~(~var_2.a.xyx), var_2.a.yzx) % vec3<u32>(32u))) << (vec3<u32>(firstTrailingBit(firstTrailingBit(var_0.x)), u_input.a.x >> (67396u % 32u), _wgslsmith_mod_u32(func_3(), 36327u)) % vec3<u32>(32u));
    global0 = array<vec3<bool>, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(201f, -125f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2195f, -1798f, 135f, 2434f) + vec4<f32>(1159f, 565f, -1000f, 763f))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(523f)), -487f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(722f))), -878f)), vec2<u32>(3729u, 4294967295u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2653f, 1434f, -1243f, -972f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-485f, -1168f, -197f, -994f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-703f, 103f, -770f, -1597f), vec4<f32>(118f, 1419f, 1333f, 268f))), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), false)))))));
}

