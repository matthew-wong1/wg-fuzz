struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_1;

var<private> global2: array<vec3<bool>, 32>;

var<private> global3: f32;

var<private> global4: array<Struct_1, 19>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_3) -> vec3<f32> {
    global2 = array<vec3<bool>, 32>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.d - _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-140f, global1.d.x), global1.d), arg_2.a.d))));
    global4 = array<Struct_1, 19>();
    var var_1 = var_0;
    var_1 = var_0;
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1057f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-216f + _wgslsmith_f_op_f32(step(1717f, _wgslsmith_f_op_f32(trunc(arg_0.a))))))), var_0.x);
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: vec3<i32>) -> i32 {
    let var_0 = !(arg_0 != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2801f)) + _wgslsmith_f_op_f32(-167f + _wgslsmith_f_op_f32(round(-690f)))));
    var var_1 = arg_1.a;
    let var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_2(var_2.a.d.x, vec2<f32>(global1.d.x, 1266f)), arg_0, Struct_3(Struct_1(vec2<bool>(arg_1.a.a.x, var_2.a.a.x), arg_2, arg_1.a.c, vec2<f32>(arg_0, 428f)))))))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.d.x, global1.d.x, arg_1.a.d.x))) - vec3<f32>(-609f, var_2.a.d.x, -429f)) + vec3<f32>(_wgslsmith_div_f32(global1.d.x, arg_1.a.d.x), _wgslsmith_f_op_f32(trunc(-776f)), _wgslsmith_f_op_f32(var_2.a.d.x * var_2.a.d.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1.d.x), 115f, _wgslsmith_f_op_f32(-1142f * arg_0)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(136f, arg_0, 892f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-574f, arg_0, 268f) - vec3<f32>(arg_0, 783f, -968f)))))));
    global3 = _wgslsmith_f_op_f32(-1384f * var_2.a.d.x);
    return arg_3.x;
}

fn func_1() -> i32 {
    let var_0 = vec4<i32>(_wgslsmith_add_i32(global1.b.x, _wgslsmith_div_i32(-func_2(292f, Struct_3(global4[_wgslsmith_index_u32(1u, 19u)]), vec3<i32>(global1.b.x, 30730i, 54508i), global1.b), _wgslsmith_mod_i32(global1.b.x | -64739i, abs(u_input.e.x)))), -8107i, global1.b.x, 880i & u_input.e.x);
    global0 = global1.a.x | global1.a.x;
    global4 = array<Struct_1, 19>();
    global3 = 1000f;
    let var_1 = min(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(reverseBits(-1i), var_0.x, i32(-1i) * -1i, 2147483647i), countOneBits(select(vec4<i32>(u_input.e.x, -29188i, 3377i, -29819i), vec4<i32>(var_0.x, 3762i, u_input.b, -17638i), vec4<bool>(global1.a.x, true, true, global1.a.x))))), vec4<i32>(select(global1.b.x, u_input.c, _wgslsmith_f_op_f32(round(-1251f)) > global1.d.x), ~0i, min(select(_wgslsmith_dot_vec2_i32(global1.b.yx, var_0.xy), 1i, all(vec4<bool>(true, global1.a.x, true, global1.a.x))), firstLeadingBit(-1i)), u_input.e.x));
    return func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.d.x * _wgslsmith_f_op_f32(trunc(global1.d.x))))), global1.d.x), Struct_3(Struct_1(global1.a, firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(74971i, var_1.x, 1i), global1.b)), global1.c, _wgslsmith_f_op_vec2_f32(-global1.d))), max(u_input.e, var_0.yxy), ~vec3<i32>(var_0.x, ~(-2147483647i) >> (~global1.c.x % 32u), -reverseBits(41074i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d.x * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1284f)), 395f))) + -1720f)));
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.d.x, var_0)));
    var var_1 = 2147483647i;
    var var_2 = vec3<bool>(false, false, global1.a.x);
    var var_3 = var_2.x || ((global1.a.x & any(select(vec3<bool>(false, global1.a.x, var_2.x), vec3<bool>(global1.a.x, var_2.x, global1.a.x), global1.a.x))) && true);
    var var_4 = -vec4<i32>(abs((-18826i | global1.b.x) >> (u_input.a.x % 32u)), _wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.e.x, u_input.c), -5672i), global1.b.x), ~func_1(), max(countOneBits(global1.b.x), global1.b.x));
    var var_5 = Struct_3(Struct_1(select(!(!var_2.yy), !select(vec2<bool>(var_2.x, global1.a.x), global1.a, vec2<bool>(false, true)), true), select(vec3<i32>(u_input.e.x, firstTrailingBit(var_4.x), var_4.x >> (72517u % 32u)), vec3<i32>(6308i, u_input.d, 35367i) & _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, var_4.x, -26921i), vec3<i32>(9091i, -833i, 7798i)), true), vec4<u32>(~(~69383u), u_input.a.x, _wgslsmith_sub_u32(64060u, 1u), u_input.a.x), _wgslsmith_f_op_vec2_f32(max(global1.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global1.d)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 1527f)))))));
    let var_6 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.zx | ~var_5.a.b.yz, vec4<u32>(reverseBits(firstLeadingBit(global1.c.x)), 4085u, 1u, _wgslsmith_add_u32(~(~u_input.a.x), 0u)), 606f, vec4<i32>(~(global1.b.x | var_5.a.b.x), u_input.e.x, _wgslsmith_add_i32(abs(var_5.a.b.x), abs(2147483647i)), 2147483647i) >> (firstLeadingBit(vec4<u32>(max(52649u, 39507u), 19745u, ~1u, u_input.a.x)) % vec4<u32>(32u)));
}

