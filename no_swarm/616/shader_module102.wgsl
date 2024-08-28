struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_2 = Struct_2(vec3<f32>(-922f, 258f, -928f), vec3<bool>(false, false, false), Struct_1(true, -1000f));

var<private> global2: array<vec3<i32>, 25>;

var<private> global3: vec2<i32> = vec2<i32>(0i, 1i);

var<private> global4: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(false, -1098f), Struct_1(true, -796f), Struct_1(true, 469f), Struct_1(true, 826f), Struct_1(true, 1139f), Struct_1(true, -1000f), Struct_1(true, 1228f), Struct_1(true, -2255f), Struct_1(true, -322f), Struct_1(false, -849f), Struct_1(false, 1000f), Struct_1(false, -891f), Struct_1(false, 659f), Struct_1(false, 1251f), Struct_1(true, 343f), Struct_1(true, -832f), Struct_1(false, 106f), Struct_1(false, -675f), Struct_1(true, -1102f), Struct_1(false, 104f), Struct_1(false, -723f), Struct_1(true, -1000f), Struct_1(true, 644f), Struct_1(false, -1122f), Struct_1(true, -1000f), Struct_1(true, -500f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> vec3<i32> {
    var var_0 = _wgslsmith_div_u32(firstLeadingBit(firstLeadingBit(~u_input.b.x)), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(16560u, ~_wgslsmith_mult_u32(27664u, u_input.d.x), ~min(u_input.d.x, 13035u)), 4824u));
    global2 = array<vec3<i32>, 25>();
    let var_1 = Struct_4(Struct_1(global1.c.a, -176f), _wgslsmith_add_vec3_u32(~u_input.b.yyy, max((vec3<u32>(u_input.d.x, 20465u, u_input.d.x) | u_input.b.zwy) & _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.d.x, u_input.b.x), vec3<u32>(1u, 30453u, u_input.b.x)), ~(~vec3<u32>(u_input.d.x, 11180u, u_input.d.x)))), _wgslsmith_sub_vec3_u32(u_input.b.wyz, ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.b.x, u_input.b.x), u_input.b.xyy))));
    global3 = reverseBits(~u_input.c.xx);
    var var_2 = u_input.d.x;
    return u_input.c.zwx;
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: bool, arg_3: u32) -> f32 {
    let var_0 = Struct_3(~(~arg_0.a), 1u, Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.c.b, arg_0.d.b, -158f) * arg_0.c.a))) * arg_0.c.a), vec3<bool>(arg_2, global1.b.x, (arg_0.d.b == -582f) | true), arg_0.d), Struct_1(arg_0.c.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1563f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.c.a.x), -1563f, any(vec4<bool>(true, arg_0.c.c.a, false, arg_2)))))));
    global0 = var_0.d.b;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(arg_0.c.a.yx)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global1.a.yx, vec2<f32>(-1014f, global1.c.b), arg_0.c.b.x)), arg_0.c.a.zz)) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.c.b, -1000f))))))));
    let var_2 = !vec4<bool>((all(vec2<bool>(global1.c.a, false)) & (4294967295u < arg_0.a.x)) | false, u_input.d.x >= ~(~29705u), !any(select(vec3<bool>(false, false, arg_0.d.a), vec3<bool>(true, true, global1.b.x), true)), all(!global1.b.zx));
    var var_3 = Struct_4(global1.c, var_0.a, firstTrailingBit(reverseBits(countOneBits(vec3<u32>(arg_3, arg_3, u_input.d.x)))));
    return _wgslsmith_f_op_f32(global1.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-arg_0.d.b), any(vec3<bool>(arg_0.d.a, var_3.a.a, var_0.c.c.a)))))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4) -> bool {
    global3 = vec2<i32>(reverseBits(_wgslsmith_sub_i32(~global3.x, -2147483647i) & abs(global3.x ^ global3.x)), -_wgslsmith_div_i32(-u_input.c.x, u_input.a));
    let var_0 = vec2<f32>(arg_0.b, _wgslsmith_f_op_f32(arg_0.b + arg_1.a.b));
    var var_1 = arg_1;
    var var_2 = func_2();
    var var_3 = Struct_1(true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a.b, arg_1.a.b) * _wgslsmith_f_op_f32(arg_1.a.b * -2174f))), _wgslsmith_f_op_f32(func_3(Struct_3(~vec3<u32>(u_input.d.x, 17556u, 13444u), countOneBits(var_1.c.x), Struct_2(vec3<f32>(1088f, var_1.a.b, -1000f), vec3<bool>(true, true, arg_0.a), Struct_1(arg_1.a.a, -422f)), Struct_1(global1.c.a, var_1.a.b)), global3.x, true, ~19277u)))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<i32>, 25>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1290f, _wgslsmith_f_op_f32(global1.c.b * global1.a.x), _wgslsmith_f_op_f32(-global1.a.x)))), !(!vec3<bool>(!global1.c.a, global1.b.x, global1.b.x == global1.b.x)), global1.c);
    var var_1 = vec3<u32>(u_input.b.x, _wgslsmith_mod_u32(~37491u, 4294967295u), 1u);
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a * _wgslsmith_div_vec3_f32(vec3<f32>(global1.c.b, 1365f, var_0.c.b), vec3<f32>(2484f, var_0.c.b, -1000f))))), vec3<bool>(var_0.b.x, all(select(vec4<bool>(true, true, global1.b.x, var_0.b.x), select(vec4<bool>(global1.c.a, var_0.c.a, false, true), vec4<bool>(false, false, true, false), true), true)), any(vec4<bool>(true, true, false, func_1(global1.c, Struct_4(Struct_1(global1.b.x, global1.a.x), u_input.b.xzw, vec3<u32>(15525u, 24492u, 849u)))))), Struct_1(!global1.b.x, _wgslsmith_f_op_f32(-1484f - _wgslsmith_div_f32(356f, _wgslsmith_f_op_f32(sign(global1.a.x))))));
    let var_2 = Struct_1(any(vec2<bool>(!(true | var_0.b.x), var_0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(global1.c.b)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(859f, global1.c.b)) + _wgslsmith_f_op_f32(-global1.c.b)))));
    global1 = Struct_2(vec3<f32>(-968f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1701f * global1.c.b))))), _wgslsmith_f_op_f32(abs(var_2.b))), var_0.b, var_0.c);
    global3 = u_input.c.xx;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-873f, global1.c.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f - var_2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1428f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.a.x))), var_2.b, (28271u < var_1.x) && !var_2.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(-_wgslsmith_add_vec3_i32(u_input.c.zzy, vec3<i32>(0i, global3.x, u_input.c.x)), vec3<i32>(2147483647i, u_input.a, global3.x)) & (-global2[_wgslsmith_index_u32(u_input.b.x << (u_input.d.x % 32u), 25u)] << (u_input.b.zzx % vec3<u32>(32u))), ~var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.c.b)))));
}

