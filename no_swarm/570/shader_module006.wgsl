struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: bool,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
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

var<private> global0: Struct_1 = Struct_1(vec2<i32>(-37485i, 7717i), 428f, false, vec2<bool>(true, true));

var<private> global1: vec4<f32>;

var<private> global2: Struct_1;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: vec3<u32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global1.zy, vec2<f32>(-465f, 565f)) * _wgslsmith_f_op_vec2_f32(trunc(global1.zy))))))));
    let var_1 = vec3<bool>(true, true, true);
    return var_1;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: bool) -> Struct_1 {
    global1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.b, 1000f, 1767f, -584f), vec4<f32>(global0.b, global0.b, arg_0.b, 807f))) - vec4<f32>(arg_0.b, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 701f, _wgslsmith_f_op_f32(-global0.b))))));
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1840f, global0.b, global2.b, global1.x))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.x, _wgslsmith_f_op_f32(round(arg_0.b)), global2.b, _wgslsmith_f_op_f32(floor(2971f)))))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(1237f)), _wgslsmith_f_op_f32(f32(-1f) * -2928f), -207f, 1f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, arg_0.b, -1000f, global0.b)) - _wgslsmith_div_vec4_f32(vec4<f32>(137f, arg_0.b, global0.b, -952f), vec4<f32>(1018f, 894f, global0.b, global2.b))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1916f, global0.b, 624f, -507f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(447f, arg_0.b, global1.x, global1.x) - vec4<f32>(global1.x, global0.b, global0.b, global2.b)))))));
    var var_0 = arg_0;
    let var_1 = _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(arg_0.a, ~var_0.a), ~_wgslsmith_mult_vec2_i32(arg_0.a, vec2<i32>(firstLeadingBit(var_0.a.x), ~var_0.a.x)));
    var_0 = arg_0;
    return Struct_1(countOneBits(global2.a), 2153f, false, arg_0.d);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_1 {
    global2 = func_3(arg_0, select(!select(select(vec3<bool>(arg_0.d.x, true, global2.d.x), vec3<bool>(true, true, true), true), !vec3<bool>(false, global0.c, global0.c), arg_0.c), !select(func_2(vec3<u32>(u_input.c, u_input.c, u_input.c)), vec3<bool>(false, global0.c, global2.d.x), -870f > arg_1.x), !any(vec2<bool>(global0.d.x, global2.c))), global0.d.x);
    var var_0 = arg_0;
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(global2.b)))), 1335f, _wgslsmith_f_op_f32(var_0.b - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-308f + -142f), -481f)), -734f));
    var_0 = Struct_1(func_3(arg_0, !vec3<bool>(false, var_0.d.x, all(vec3<bool>(global0.c, global2.d.x, false))), !global0.c).a, 1161f, arg_0.d.x, vec2<bool>(var_0.c, true));
    global0 = arg_0;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, -1535f)));
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -609f)));
    let var_1 = func_1(Struct_1(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) - 590f)), false, vec2<bool>(global2.c, !(!global0.c))), global1.zx);
    var var_2 = -_wgslsmith_clamp_vec3_i32(vec3<i32>(func_3(func_1(Struct_1(global0.a, 1556f, global2.c, vec2<bool>(true, true)), global1.xy), !vec3<bool>(true, global0.c, var_1.d.x), all(vec3<bool>(false, var_1.d.x, true))).a.x, var_1.a.x, var_1.a.x), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.x, -1i, u_input.b, var_1.a.x) & vec4<i32>(1i, 17065i, global0.a.x, u_input.a), min(vec4<i32>(global0.a.x, 2147483647i, 40470i, var_1.a.x), vec4<i32>(var_1.a.x, -1i, global2.a.x, u_input.a))), -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.a.x, -4944i, -4366i) ^ vec3<i32>(global2.a.x, global2.a.x, global2.a.x), vec3<i32>(0i, global2.a.x, -2147483647i))), _wgslsmith_div_vec3_i32(select(vec3<i32>(-45397i, u_input.b, 5783i), vec3<i32>(0i, -2147483647i, global2.a.x) >> (vec3<u32>(0u, 0u, u_input.c) % vec3<u32>(32u)), vec3<bool>(true, global0.c, global2.c)), vec3<i32>(0i, u_input.b, global0.a.x)));
    global1 = vec4<f32>(global2.b, func_1(func_3(var_1, select(!vec3<bool>(var_1.c, false, global2.c), !vec3<bool>(false, false, global0.d.x), vec3<bool>(global0.d.x, false, false)), !var_1.d.x || !var_1.c), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b, global2.b)), -1000f)).b, 585f, 492f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-2147483647i, _wgslsmith_clamp_i32(i32(-1i) * -1i, 38620i, -var_1.a.x)));
}

