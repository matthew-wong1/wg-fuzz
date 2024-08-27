struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(0i, 2147483647i);

var<private> global1: bool = false;

var<private> global2: Struct_1 = Struct_1(vec2<i32>(-1i, 28527i));

var<private> global3: vec3<bool> = vec3<bool>(false, false, true);

var<private> global4: vec2<u32>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = ~_wgslsmith_dot_vec2_u32(~abs(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, arg_0.x), arg_0.yy)), ~(~arg_0.zx));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1237f + _wgslsmith_f_op_f32(1074f - 522f)));
    var var_2 = global3.zy;
    let var_3 = Struct_1(u_input.a);
    global2 = var_3;
    return Struct_1(vec2<i32>(-53538i, -38075i));
}

fn func_3() -> vec2<i32> {
    global1 = false;
    var var_0 = global0.x;
    var var_1 = Struct_1(global2.a);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, -372f, -1135f, -934f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(102f, 1221f, 679f, -501f), vec4<f32>(512f, -217f, 1000f, 1096f))))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(269f, 489f, -1859f, -529f), vec4<f32>(162f, -1000f, -1590f, -809f), false)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-268f, _wgslsmith_div_f32(-329f, -380f), -1705f, _wgslsmith_f_op_f32(min(155f, -1332f))) - vec4<f32>(_wgslsmith_f_op_f32(trunc(398f)), _wgslsmith_f_op_f32(f32(-1f) * -434f), -1182f, -829f))));
    global4 = _wgslsmith_add_vec2_u32(~vec2<u32>(22463u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(global4.x, 4294967295u)), vec2<u32>(3096u, global4.x))), ~(~firstTrailingBit(vec2<u32>(56852u, 7160u) & vec2<u32>(global4.x, 27782u))));
    return _wgslsmith_mod_vec2_i32(vec2<i32>(~min(-var_1.a.x, reverseBits(-1i)), global0.x), _wgslsmith_sub_vec2_i32(vec2<i32>(3196i, _wgslsmith_clamp_i32(max(u_input.a.x, global2.a.x), _wgslsmith_sub_i32(0i, -2147483647i), 2147483647i)), firstTrailingBit(abs(vec2<i32>(1i, var_1.a.x)))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    global0 = _wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(firstLeadingBit(-1i), firstTrailingBit(_wgslsmith_div_i32(u_input.a.x, arg_3)))), ~func_3());
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(1000f - 1f), -1328f, -119f);
    global0 = vec2<i32>(min(u_input.a.x, reverseBits(reverseBits(2147483647i))), 2147483647i);
    let var_1 = arg_1;
    var var_2 = func_1(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(global4.x, global4.x, 55872u, global4.x)), ~vec4<u32>(global4.x, global4.x, 73602u, 0u) << (_wgslsmith_mod_vec4_u32(select(vec4<u32>(1u, 17158u, 1524u, 1u), vec4<u32>(global4.x, 63638u, 38016u, global4.x), global3.x), ~vec4<u32>(69049u, global4.x, global4.x, 1u)) % vec4<u32>(32u))));
    return func_1(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, global4.x, global4.x, 97617u), vec4<u32>(4294967295u, global4.x, 8077u, global4.x), vec4<u32>(global4.x, global4.x, 1u, global4.x))), ~vec4<u32>(1158u, global4.x, 1u, 4294967295u)), abs(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(6749u, 18311u, global4.x, 31620u), vec4<u32>(94699u, global4.x, global4.x, 0u)), vec4<u32>(global4.x, 4322u, 35247u, global4.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_2(Struct_1(u_input.a), Struct_2(func_1(vec4<u32>(0u, 38368u, global4.x, 17796u) ^ vec4<u32>(1u, 1u, global4.x, global4.x))), Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a, vec2<i32>(-46410i, 0i), vec2<i32>(global0.x, global0.x)), vec2<i32>(global0.x, -2147483647i))), ~global0.x));
    global4 = ~vec2<u32>(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(38750u, 13894u, global4.x, 0u), vec4<u32>(global4.x, 91382u, global4.x, 1u))), global4.x);
    let var_1 = Struct_1(-(var_0.a.a | -global2.a));
    var var_2 = var_0.a;
    let var_3 = Struct_2(func_2(var_1, var_0, var_0.a, global2.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(vec3<u32>(firstTrailingBit(global4.x), 1u, ~(~global4.x)), vec3<u32>(select(_wgslsmith_mod_u32(global4.x, 0u), 1u >> (1u % 32u), global3.x || global3.x), 2051u, reverseBits(abs(global4.x)))), 3943u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-296f, 608f, 1125f, -1440f), vec4<f32>(-1166f, 1000f, 1000f, 1437f), vec4<bool>(global3.x, global3.x, global3.x, false))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1337f, 1195f, -468f, 275f)))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1010f, _wgslsmith_f_op_f32(abs(592f)), _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1239f))))));
}

