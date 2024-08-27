struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: Struct_3;

var<private> global2: array<f32, 5> = array<f32, 5>(-1144f, 1000f, -844f, -1107f, -453f);

var<private> global3: vec4<i32> = vec4<i32>(0i, 0i, 0i, -21603i);

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(Struct_1(-1i, ~u_input.a.wz, _wgslsmith_f_op_vec4_f32(vec4<f32>(-272f, global4.c.x, 1296f, _wgslsmith_f_op_f32(f32(-1f) * -1295f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(352f, 772f, global4.e.x, -604f)))), ~(global4.d & 7392u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1921f, global4.c.x, global2[_wgslsmith_index_u32(4294967295u, 5u)], global4.c.x)) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(global4.c - vec4<f32>(-407f, global4.c.x, -392f, -161f)))))));
    var var_1 = 156f;
    var var_2 = global3.yy;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.a.c.wwx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global4.c.wxy * vec3<f32>(global4.c.x, var_0.a.c.x, -773f)))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(821f, global4.e.x, 767f), vec3<f32>(global4.e.x, global4.e.x, var_0.a.e.x))))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4.c.www)))));
    global3 = vec4<i32>(abs(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(25058i, global4.a, global3.x), vec3<i32>(-15299i, u_input.e.x, u_input.b) ^ vec3<i32>(1i, 60645i, global3.x)), vec3<i32>(global3.x, -1i, 31155i))), -31307i, global1.b.x, ~u_input.e.x);
    return Struct_2(var_0.a);
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = Struct_3(false, u_input.e);
    global2 = array<f32, 5>();
    let var_1 = func_2().a;
    let var_2 = !select(any(vec3<bool>(global1.a, arg_0, false)), true, !global1.a) | var_0.a;
    global3 = -countOneBits(u_input.e);
    return -728f;
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    let var_1 = global1.a;
    global2 = array<f32, 5>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(1068f)), _wgslsmith_f_op_f32(ceil(-509f)), _wgslsmith_f_op_f32(func_3(global1.a)), _wgslsmith_f_op_f32(var_0.a.c.x + -870f)));
    var var_3 = select(!select(select(select(vec4<bool>(global1.a, global1.a, true, global1.a), vec4<bool>(global1.a, true, global1.a, global1.a), vec4<bool>(false, global1.a, true, global1.a)), vec4<bool>(true, global1.a, global1.a, true), global1.a == global1.a), select(vec4<bool>(false, global1.a, false, false), !vec4<bool>(false, global1.a, global1.a, global1.a), all(vec3<bool>(global1.a, false, false))), global1.a), !select(vec4<bool>(var_0.a.c.x >= var_2.x, global1.a, global1.a, true), !(!vec4<bool>(global1.a, true, global1.a, global1.a)), !(!vec4<bool>(global1.a, false, true, false))), !(!select(!vec4<bool>(global1.a, global1.a, false, global1.a), select(vec4<bool>(global1.a, true, false, false), vec4<bool>(global1.a, true, false, false), global1.a), false)));
    return Struct_1(var_0.a.a, ~vec2<u32>(_wgslsmith_add_u32(4294967295u, u_input.c), var_0.a.d), vec4<f32>(var_0.a.e.x, var_0.a.e.x, global4.c.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global4.d, 1002u), 5u)])))), 58176u, global4.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 26369i;
    var var_1 = Struct_2(func_1());
    var var_2 = var_1.a.c.wz;
    var_1 = Struct_2(Struct_1(global3.x, global4.b << (abs(firstTrailingBit(global4.b)) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(round(var_1.a.c)), _wgslsmith_dot_vec2_u32(var_1.a.b, countOneBits(vec2<u32>(0u, 49856u))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a.e.x, _wgslsmith_f_op_f32(var_1.a.c.x * global4.e.x), _wgslsmith_f_op_f32(trunc(var_2.x)), 731f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(var_1.a.c * var_1.a.e))), true))));
    let x = u_input.a;
    s_output = StorageBuffer(func_2().a.c.wwz, _wgslsmith_mod_vec4_i32(abs(reverseBits(vec4<i32>(u_input.e.x, -2147483647i, global1.b.x, var_0))), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.e, vec4<i32>(2147483647i, 2147483647i, var_0, -2147483647i)), -vec4<i32>(-1i, var_0, 1i, -2445i))) ^ vec4<i32>(~func_2().a.a, 0i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global4.a, 1i, -2147483647i), vec3<i32>(global3.x, 1i, 0i)), 67678i, _wgslsmith_sub_i32(global3.x, -2147483647i)), 61686i));
}

