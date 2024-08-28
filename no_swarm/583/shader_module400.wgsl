struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: f32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 15>;

var<private> global1: Struct_5;

var<private> global2: array<u32, 7> = array<u32, 7>(29447u, 53699u, 0u, 5725u, 69796u, 41620u, 0u);

var<private> global3: f32 = 2028f;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> vec2<f32> {
    var var_0 = global1.c;
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1413f, 906f, 720f))))))));
    var var_1 = 0i;
    global1 = Struct_5(_wgslsmith_div_vec3_u32(~(~global1.a), global1.a), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-494f - 302f), global1.c.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.c)));
    var var_2 = arg_1.a.a;
    return vec2<f32>(arg_1.a.d.x, var_0.x);
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: f32) -> bool {
    var var_0 = select(!vec4<bool>(arg_0.b.a, arg_0.a.a, arg_0.a.c, any(vec3<bool>(true, false, arg_0.b.b.x))), vec4<bool>(!(true || !arg_0.b.b.x), false, !(u_input.c < u_input.c), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 1362f) - _wgslsmith_div_f32(arg_2, -1000f))) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1157f))));
    var var_1 = arg_0.b.b.zx;
    var_1 = vec2<bool>(_wgslsmith_div_u32(global1.a.x, _wgslsmith_dot_vec3_u32(reverseBits(global1.a), vec3<u32>(7119u, global1.a.x, 2388u) | vec3<u32>(4294967295u, 10223u, global1.a.x))) >= ~(~(~34610u)), false);
    var var_2 = -1220f;
    var_0 = select(vec4<bool>(arg_0.a.b.x, (~u_input.b ^ global1.a.x) <= (~4294967295u ^ u_input.b), var_0.x, !arg_0.a.b.x), vec4<bool>(var_0.x, false, !any(!var_0.wxz), !var_1.x), all(vec2<bool>(true, any(vec3<bool>(true, true, true)))));
    return all(select(!select(vec4<bool>(var_0.x, var_0.x, false, var_1.x), select(vec4<bool>(true, arg_0.b.c, true, true), vec4<bool>(false, true, var_1.x, arg_0.b.c), var_1.x), true), vec4<bool>(any(!var_0.yxx), false, !var_1.x, !var_0.x), vec4<bool>(!var_1.x, false, (u_input.a & 1i) >= u_input.c, arg_0.a.c)));
}

fn func_2(arg_0: i32) -> vec3<f32> {
    var var_0 = true;
    var var_1 = _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(firstLeadingBit(max(vec3<i32>(-2147483647i, arg_0, arg_0) >> (vec3<u32>(u_input.b, 40031u, 1u) % vec3<u32>(32u)), vec3<i32>(arg_0, -21812i, arg_0))), vec3<i32>(countOneBits(-8682i), -1i, 21307i)), vec3<i32>(arg_0, 9734i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i) | vec2<i32>(2147483647i, u_input.c), vec2<i32>(arg_0, -11399i))));
    let var_2 = Struct_2(Struct_1(func_3(Struct_2(Struct_1(false, vec3<bool>(true, false, true), false, vec2<f32>(1293f, 105f)), Struct_1(true, vec3<bool>(true, true, true), true, global1.c.xy), 325f), 58362u, global1.b), !vec3<bool>(any(vec4<bool>(false, true, false, false)), select(false, false, false), -537f == global1.b), true, global1.c.yy), Struct_1(false, select(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-794f + global1.c.x) != _wgslsmith_f_op_f32(-global1.b)), true, global1.c.xx), _wgslsmith_f_op_f32(max(global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b - _wgslsmith_f_op_f32(-global1.c.x))))));
    let var_3 = u_input.c;
    global2 = array<u32, 7>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1f, global1.c.x, 388f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.c.x, var_2.a.d.x, global1.c.x), _wgslsmith_f_op_vec3_f32(trunc(global1.c)), var_2.a.b.x)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: u32, arg_3: Struct_3) -> vec3<bool> {
    var var_0 = _wgslsmith_add_i32(u_input.a, -(arg_3.d.x << (~arg_1.a.x % 32u)));
    global0 = array<vec4<u32>, 15>();
    var var_1 = arg_1.c;
    var var_2 = select(vec3<bool>(false, arg_3.c.x, arg_3.c.x), vec3<bool>(arg_3.c.x, arg_3.c.x, false), any(arg_3.c));
    var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(u_input.c, arg_3.d.x, 2147483647i)) ^ abs(vec3<i32>(-1i, -2147483647i, u_input.c)), abs(-vec3<i32>(-1i, u_input.a, -14817i))) << (((_wgslsmith_add_vec3_u32(arg_3.b, vec3<u32>(global1.a.x, global1.a.x, arg_2)) ^ vec3<u32>(global1.a.x, arg_1.a.x, 1u)) | global1.a) % vec3<u32>(32u)), firstTrailingBit(arg_3.d));
    return select(arg_3.c, !(!arg_3.c), select(select(arg_3.c, vec3<bool>(38958i <= arg_3.d.x, true, false | arg_3.c.x), arg_3.c), select(arg_3.c, vec3<bool>(true, arg_3.c.x, true), !func_3(Struct_2(Struct_1(false, arg_3.c, arg_3.c.x, vec2<f32>(-157f, arg_1.c.x)), Struct_1(var_2.x, vec3<bool>(false, true, true), arg_3.c.x, var_1.yy), var_1.x), arg_3.b.x, -117f)), arg_3.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(global1.c.yy, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1029f, global1.c.x) - _wgslsmith_f_op_vec2_f32(-global1.c.xy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(global1.b, Struct_2(Struct_1(false, vec3<bool>(false, true, false), false, vec2<f32>(global1.b, 476f)), Struct_1(true, vec3<bool>(false, false, false), false, vec2<f32>(-860f, global1.c.x)), 1815f)))), vec2<bool>(true, false))), true))));
    let var_1 = select(func_4(_wgslsmith_f_op_vec3_f32(func_2(~_wgslsmith_mult_i32(1i, u_input.a))), Struct_5(vec3<u32>(global1.a.x ^ u_input.b, 31351u, min(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(5552u, 7u)], 7u)], global2[_wgslsmith_index_u32(10597u, 7u)])), global1.b, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_0.x, global1.c.x))))), 24358u, Struct_3(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_div_f32(1111f, 197f), Struct_2(Struct_1(false, vec3<bool>(false, true, true), false, vec2<f32>(1427f, -1223f)), Struct_1(true, vec3<bool>(true, true, true), false, vec2<f32>(global1.b, 2059f)), var_0.x))).x, _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(global1.a, vec3<u32>(global2[_wgslsmith_index_u32(40426u, 7u)], global2[_wgslsmith_index_u32(4294967295u, 7u)], global1.a.x)), global1.a ^ global1.a), vec3<bool>(all(vec2<bool>(true, false)), true, true), select(vec3<i32>(0i, 11974i, 36388i), vec3<i32>(0i, u_input.c, u_input.a), vec3<bool>(true, true, true)))), vec3<bool>(false, true, all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false), select(false, false, false)))), -_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, u_input.c), abs(vec2<i32>(-2147483647i, 0i))) >= ~50404i);
    var var_2 = global1.c;
    global3 = var_0.x;
    let var_3 = Struct_5(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(~u_input.b, 1u, 1u), global1.a.x), 0u, ~1u), var_0.x, global1.c);
    global2 = array<u32, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(-countOneBits(vec2<i32>(_wgslsmith_sub_i32(u_input.c, u_input.c), -2147483647i)), _wgslsmith_add_i32(-21280i, min(u_input.a, -33668i)), 298f, global2[_wgslsmith_index_u32(global1.a.x, 7u)] & (55740u ^ u_input.b));
}

