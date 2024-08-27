struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.b), global1.b)), global1.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.b * global1.b))))), global1.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1844f, global1.b, 221f))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(2673f, -119f, global1.b), vec3<f32>(-898f, global1.b, global1.b)))))) + vec3<f32>(global1.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b, global1.b) + global1.b), _wgslsmith_f_op_f32(select(global1.b, _wgslsmith_f_op_f32(-global1.b), all(vec2<bool>(false, true))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-851f, 624f, false)), -1491f, var_0.x) - _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, 435f, global1.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, global1.b, var_0.x)))))));
    global1 = Struct_1(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(global1.a.x, -2147483647i), u_input.a), min(global1.a.x, -global1.a.x)), u_input.a), _wgslsmith_div_f32(-448f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b, -1740f)))));
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    return true;
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: vec4<u32>) -> Struct_3 {
    var var_0 = Struct_3(~(~select(~u_input.b.zxy, u_input.b.xxw, func_3())));
    var var_1 = var_0.a.x;
    var var_2 = Struct_3(vec3<u32>(~reverseBits(30198u), arg_0, var_0.a.x));
    var var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(11898i, u_input.a), global1.a)), -min(69801i, -23843i), -79262i, -2147483647i), min(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(global1.a.x, 0i, global1.a.x, u_input.a)), vec4<i32>(u_input.a, global1.a.x, -2147483647i, 1i)), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, global1.a.x, global1.a.x, global1.a.x), vec4<i32>(1i, global1.a.x, global1.a.x, u_input.a)), ~vec4<i32>(u_input.a, u_input.a, u_input.a, -5421i)))) >> (0u % 32u);
    global0 = array<Struct_1, 30>();
    return Struct_3(_wgslsmith_div_vec3_u32(select(~vec3<u32>(55392u, arg_2.x, 0u), _wgslsmith_mod_vec3_u32(var_2.a, vec3<u32>(arg_2.x, 1u, 0u)), true), _wgslsmith_clamp_vec3_u32(vec3<u32>(49969u, 0u, 4294967295u), var_0.a, vec3<u32>(u_input.b.x, 42487u, arg_2.x))) & arg_2.zyx);
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global1.b, global1.b), vec2<f32>(1000f, -919f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(574f, global1.b) * vec2<f32>(global1.b, global1.b))) * vec2<f32>(_wgslsmith_f_op_f32(ceil(global1.b)), _wgslsmith_f_op_f32(step(global1.b, global1.b)))) * _wgslsmith_div_vec2_f32(vec2<f32>(-545f, global1.b), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(1049f, -749f) * vec2<f32>(-272f, -496f)))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, 390f)) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(545f, 696f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(338f, -618f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, -1385f))))));
    let var_1 = all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), true), func_3())) | false;
    global1 = global0[_wgslsmith_index_u32(arg_0.a.x, 30u)];
    let var_2 = !select(any(!select(vec3<bool>(var_1, false, false), vec3<bool>(true, true, var_1), vec3<bool>(true, var_1, var_1))), var_1, any(select(select(vec4<bool>(false, var_1, true, true), vec4<bool>(true, var_1, var_1, false), vec4<bool>(var_1, false, false, var_1)), vec4<bool>(true, var_1, var_1, false), false)));
    let var_3 = Struct_3(vec3<u32>(arg_0.a.x, ~34724u, reverseBits(firstTrailingBit(u_input.b.x))));
    return Struct_3(vec3<u32>(firstTrailingBit(firstTrailingBit(var_3.a.x >> (30076u % 32u))), max(~79435u, var_3.a.x), ~u_input.b.x));
}

fn func_1(arg_0: vec3<bool>) -> Struct_3 {
    var var_0 = -250f;
    let var_1 = 68673u;
    global0 = array<Struct_1, 30>();
    var var_2 = _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(112857u & var_1, 13586u, u_input.b.x | var_1, ~var_1) | u_input.b, u_input.b), ~(~u_input.b));
    var var_3 = u_input.b.x;
    return func_4(func_2(var_2.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(563f, -494f, global1.b) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1370f, -907f, 194f), vec3<f32>(global1.b, 2152f, global1.b), true))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, -393f, 564f))), u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec3_i32(~reverseBits(vec3<i32>(-1i) * -vec3<i32>(global1.a.x, u_input.a, -25719i)), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(u_input.a, global1.a.x, 0i), -1i, firstTrailingBit(global1.a.x)), -(vec3<i32>(u_input.a, -2147483647i, u_input.a) >> (u_input.b.zzw % vec3<u32>(32u)))) ^ ~vec3<i32>(max(u_input.a, -62080i), global1.a.x, _wgslsmith_mod_i32(global1.a.x, global1.a.x)));
    global0 = array<Struct_1, 30>();
    global1 = global0[_wgslsmith_index_u32(20305u << (u_input.b.x % 32u), 30u)];
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.yz, u_input.b.ww), 30u)];
    let var_1 = func_1(vec3<bool>(true, true, true));
    var var_2 = ~select(abs(4294967295u), ~u_input.b.x, true && func_3());
    let var_3 = select(select(vec4<bool>(false, true, !select(true, true, false), any(vec3<bool>(false, true, true))), select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, all(vec2<bool>(false, true)), global1.b >= global1.b, var_1.a.x != 83401u), true), true), select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true)), all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), true))), select(vec4<bool>(true, true, true, select(true, true, false)), vec4<bool>(false, true, all(vec3<bool>(false, false, false)), true), true), -48418i != _wgslsmith_sub_i32(~u_input.a, ~var_0.x)), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-26796i, -global1.a.x), _wgslsmith_clamp_i32(-1i, 1i, u_input.a), ~0i), select(vec3<i32>(1i, ~(-2147483647i), _wgslsmith_add_i32(global1.a.x, 11009i)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, var_0.x, 2147483647i), var_0, var_0), abs(global1.a.x) == _wgslsmith_dot_vec2_i32(global1.a, vec2<i32>(1i, -2147483647i)))), _wgslsmith_f_op_f32(505f + -944f), global1.b);
}

