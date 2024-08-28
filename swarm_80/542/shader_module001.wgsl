struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: array<u32, 24> = array<u32, 24>(131968u, 14332u, 0u, 0u, 132733u, 1u, 1u, 22226u, 1u, 1u, 1u, 24109u, 7100u, 1u, 0u, 4294967295u, 24571u, 64494u, 4294967295u, 12789u, 1u, 1u, 4294967295u, 0u);

var<private> global2: vec2<bool> = vec2<bool>(true, false);

var<private> global3: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec3<i32>, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = ~63254u;
    return vec2<u32>(~_wgslsmith_div_u32(~4294967295u, ~46022u >> (_wgslsmith_mult_u32(u_input.b.x, global1[_wgslsmith_index_u32(0u, 24u)]) % 32u)), 4073u);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = u_input.a;
    global0 = array<Struct_1, 28>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(arg_0.a)));
    var var_2 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(~_wgslsmith_sub_u32(u_input.b.x, global1[_wgslsmith_index_u32(u_input.b.x, 24u)]), u_input.b.x), min(~(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, 1u), u_input.b.yx) >> (u_input.b.zx % vec2<u32>(32u))), _wgslsmith_div_vec2_u32(func_3(Struct_1(var_1.a), vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 24u)], 1u, global1[_wgslsmith_index_u32(23666u, 24u)]), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, u_input.a, 2147483647i), vec3<i32>(-40099i, u_input.a, u_input.a)), Struct_1(vec2<f32>(581f, arg_1.x))), ~vec2<u32>(1u, 1u))), u_input.b.zz);
    let var_3 = ~firstTrailingBit(vec4<u32>(~var_2.x & select(u_input.b.x, u_input.b.x, true), 1u, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(var_2.x, 24u)], 38016u), 1u), 24u)], ~var_2.x));
    return Struct_1(arg_1);
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1172f, -1317f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-781f, 2108f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -308f) + vec2<f32>(1395f, 2103f))))));
    let var_1 = var_0.a.x;
    var var_2 = _wgslsmith_div_u32(1u, _wgslsmith_div_u32(4294967295u, firstTrailingBit(_wgslsmith_clamp_u32(38281u, global1[_wgslsmith_index_u32(u_input.b.x, 24u)], u_input.b.x)))) << (global1[_wgslsmith_index_u32(4294967295u, 24u)] % 32u);
    global0 = array<Struct_1, 28>();
    var_0 = func_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, var_0.a.x)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a) + vec2<f32>(var_0.a.x, var_0.a.x)))), var_0.a);
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a * var_0.a), _wgslsmith_f_op_vec2_f32(-var_0.a)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_0.a.x) - var_0.a)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<f32>) -> u32 {
    let var_0 = _wgslsmith_dot_vec3_u32(~u_input.b >> (_wgslsmith_add_vec3_u32(u_input.b << (vec3<u32>(44218u, 0u, u_input.b.x) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 24u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 24u)], 24u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20684u, 24u)], 24u)]), u_input.b)) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, _wgslsmith_div_u32(u_input.b.x, global1[_wgslsmith_index_u32(1u, 24u)]), _wgslsmith_div_u32(18915u, 8394u)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(1u, 24u)], 1u, u_input.b.x), u_input.b), _wgslsmith_div_u32(0u, u_input.b.x), 87295u), firstLeadingBit(vec3<u32>(2781u, u_input.b.x, u_input.b.x)) << (u_input.b % vec3<u32>(32u)))) != u_input.b.x;
    global0 = array<Struct_1, 28>();
    return reverseBits(global1[_wgslsmith_index_u32(~81424u, 24u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(248f, -394f) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-547f, 282f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(207f, 1000f)))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(513f)) - _wgslsmith_f_op_f32(var_0.x * -628f))), var_0.x) + 572f);
    let var_2 = global0[_wgslsmith_index_u32(abs(~(max(0u, firstLeadingBit(16729u)) >> (func_4(global0[_wgslsmith_index_u32(min(111804u, u_input.b.x), 28u)], global0[_wgslsmith_index_u32(u_input.b.x ^ u_input.b.x, 28u)], func_1(), _wgslsmith_f_op_vec2_f32(vec2<f32>(-314f, var_0.x) * vec2<f32>(-1154f, -120f))) % 32u))), 28u)];
    let var_3 = func_2(Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(440f, var_0.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1221f))), var_2.a.x) - var_2.a));
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-805f, _wgslsmith_f_op_f32(select(1501f, var_3.a.x, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), var_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2768f, -979f))) * 165f)));
    global1 = array<u32, 24>();
    global3 = array<vec4<bool>, 32>();
    let var_5 = global0[_wgslsmith_index_u32(~(~(~(u_input.b.x | global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 24u)], 24u)], 24u)]))), 28u)];
    var var_6 = ~_wgslsmith_sub_vec3_i32(~abs(vec3<i32>(-10459i, u_input.a, -12590i)) & abs(countOneBits(vec3<i32>(u_input.a, 23564i, 1i))), vec3<i32>(1i, 1i, 1i) & ~(-vec3<i32>(20021i, -1i, u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, vec3<i32>(u_input.a, u_input.a, -2147483647i));
}

