struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: i32,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec3<f32>;

var<private> global2: Struct_1;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: bool, arg_3: bool) -> f32 {
    global1 = global2.e;
    var var_0 = ~_wgslsmith_div_vec3_u32(~((vec3<u32>(4294967295u, arg_0, arg_0) | vec3<u32>(arg_0, 4294967295u, 90633u)) | max(vec3<u32>(arg_0, 67292u, arg_0), vec3<u32>(arg_0, 0u, arg_0))), ~_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(4294967295u, arg_0, arg_0)), vec3<u32>(arg_0, arg_0, arg_0) ^ vec3<u32>(arg_0, 0u, 40112u)));
    let var_1 = global2.c.zzx;
    global0 = min(abs(1i), _wgslsmith_mod_i32(-2147483647i, global2.c.x));
    var_0 = abs(~_wgslsmith_sub_vec3_u32(vec3<u32>(~84521u, _wgslsmith_dot_vec2_u32(var_0.yz, vec2<u32>(13222u, 0u)), arg_0), max(abs(vec3<u32>(var_0.x, 43646u, var_0.x)), vec3<u32>(20978u, var_0.x, 0u))));
    return -1871f;
}

fn func_3(arg_0: i32, arg_1: Struct_3) -> f32 {
    let var_0 = Struct_3(arg_1.e, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(-1420f, global2.d.x, global2.d.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.d.x, 1420f, 1496f) + global2.e)))))), 1i, arg_1.d, Struct_1(1i, _wgslsmith_sub_i32(arg_0, (global2.a << (59394u % 32u)) | -4923i), vec4<i32>(min(-global2.b, ~u_input.a.x), ~(-global2.a), 2147483647i, _wgslsmith_sub_i32(firstTrailingBit(arg_0), _wgslsmith_dot_vec4_i32(vec4<i32>(-28301i, global2.a, u_input.a.x, global2.b), arg_1.a.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-291f, -1000f, _wgslsmith_f_op_f32(global1.x + 1166f), _wgslsmith_f_op_f32(790f - arg_1.e.e.x))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.b.x, 797f)) - _wgslsmith_f_op_f32(abs(-709f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(arg_1.a.e.x * global1.x)), global2.e.x)));
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.a.d.x - _wgslsmith_f_op_f32(exp2(var_0.a.e.x))), -1346f, _wgslsmith_f_op_f32(-2764f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.e.x - var_0.e.d.x), -874f, true)))));
    global0 = abs(~(~(~u_input.a.x << (~9080u % 32u))));
    var var_1 = global2.e.xz;
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.x + -181f))), _wgslsmith_f_op_f32(-102f - _wgslsmith_f_op_f32(f32(-1f) * -685f)))), _wgslsmith_div_f32(var_0.b.x, global2.e.x), arg_1.a.e.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -263f), -615f)), var_1.x)) * arg_1.b.x));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -760f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a * _wgslsmith_div_f32(arg_3.a, 666f)))), 827f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_2.c.x, Struct_3(arg_2, arg_2.d.xwz, arg_2.c.x, 4294967295u, arg_2))) * _wgslsmith_f_op_f32(arg_3.a - 655f)))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(arg_3.a, 571f, true)))), 131f))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(arg_2.e.x * _wgslsmith_f_op_f32(f32(-1f) * -664f)));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(~(~4294967295u), true, true, 2716u >= firstTrailingBit(4294967295u)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_3.a), -1167f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -109f)));
    var_0 = global2.d;
    var var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(floor(454f)))))));
    return 52339u;
}

fn func_4(arg_0: bool, arg_1: vec2<u32>, arg_2: vec3<i32>, arg_3: Struct_1) -> vec3<i32> {
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-global1.x), 713f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-840f - _wgslsmith_f_op_f32(f32(-1f) * -292f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.e.x)) - _wgslsmith_f_op_f32(func_3(u_input.a.x, Struct_3(arg_3, arg_3.e, u_input.a.x, 1u, arg_3)))) + arg_3.e.x)));
    global2 = Struct_1(u_input.a.x, _wgslsmith_mult_i32(~_wgslsmith_sub_i32(global2.b, arg_2.x), arg_2.x) << (~(~_wgslsmith_dot_vec2_u32(vec2<u32>(15154u, 69615u), arg_1)) % 32u), arg_3.c ^ vec4<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(-34174i, 0i), arg_3.c.wz), global2.a, 1i, global2.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(arg_3.d))), vec3<f32>(-1000f, -103f, 290f));
    var var_0 = global2.e.x;
    global0 = 1i;
    var var_1 = vec4<f32>(1000f, -1347f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_3.e.x, 194f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.e.x * arg_3.d.x))) - global1.x), global2.d.x);
    return vec3<i32>(~_wgslsmith_div_i32(abs(firstLeadingBit(1i)), _wgslsmith_clamp_i32(abs(-1i), 53974i, ~(-41773i))), -62272i, 2147483647i);
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec3<i32>) -> Struct_2 {
    global2 = Struct_1(-_wgslsmith_add_i32(arg_2.x, countOneBits(global2.a)) | ~(~_wgslsmith_dot_vec2_i32(u_input.a.xx, u_input.a.zy)), _wgslsmith_sub_i32(~global2.c.x, arg_0.a << (0u % 32u)), firstLeadingBit(~vec4<i32>(~(-30321i), _wgslsmith_mult_i32(arg_0.b, 9335i), global2.b, -u_input.a.x)), vec4<f32>(-2133f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + -1464f) + 150f)), -776f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.e.x + arg_1) - _wgslsmith_f_op_f32(arg_1 * arg_0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, -463f)), 2435f) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.e.x) - _wgslsmith_f_op_f32(-global2.e.x)), 543f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(963f - arg_0.e.x)))));
    let var_0 = arg_0;
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_0.d.x, _wgslsmith_f_op_f32(f32(-1f) * -2965f)))), vec3<f32>(_wgslsmith_f_op_f32(-1220f - _wgslsmith_f_op_f32(1000f + arg_0.e.x)), _wgslsmith_f_op_f32(108f - _wgslsmith_f_op_f32(round(-2039f))), arg_1));
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(302f, global2.d.x, -806f))))))));
    global2 = var_0;
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(773f);
    var var_1 = Struct_1(-_wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), -1i) << (75801u % 32u), _wgslsmith_div_i32(global2.c.x, abs(u_input.a.x)), global2.c, global2.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(138f, global2.d.x, var_0.a))))));
    let var_2 = func_5(Struct_1(abs(~global2.c.x), _wgslsmith_mod_i32(27901i, firstTrailingBit(var_1.a ^ u_input.a.x)), vec4<i32>(_wgslsmith_dot_vec4_i32(global2.c, ~vec4<i32>(1i, 0i, 16051i, 22132i)), _wgslsmith_div_i32(var_1.b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, var_1.b, -1i), var_1.c)), _wgslsmith_sub_i32(-49627i, 1i), -global2.a), vec4<f32>(1000f, var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(4294967295u, true, true, true))), -263f), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.d.x), -589f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(776f))), _wgslsmith_f_op_f32(-1146f - var_1.d.x))), -415f, func_4(true, _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(func_2(var_1.e.x, 1i, Struct_1(u_input.a.x, u_input.a.x, vec4<i32>(u_input.a.x, global2.b, var_1.b, global2.b), global2.d, vec3<f32>(var_0.a, global1.x, global2.e.x)), Struct_2(363f)), ~102868u)), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(global2.c.wyx, global2.c.yzz), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x), vec3<i32>(1730i, 0i, -1i))) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, global2.b, global2.b, u_input.a.x), var_1.c), global2.c.x, -(~vec4<i32>(-1i, global2.c.x, global2.c.x, 55313i)), vec4<f32>(global1.x, 1762f, 271f, _wgslsmith_f_op_f32(-1394f - -812f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.e) - var_1.d.zzy))));
    var_0 = var_2;
    let var_3 = !(!vec2<bool>(_wgslsmith_div_f32(-849f, var_2.a) != _wgslsmith_f_op_f32(sign(-2708f)), true));
    global0 = global2.b;
    var var_4 = func_5(Struct_1(-(~var_1.b) << (_wgslsmith_clamp_u32(min(34005u, 4294967295u), reverseBits(0u), 4294967295u) % 32u), global2.c.x, _wgslsmith_mod_vec4_i32(global2.c, _wgslsmith_mult_vec4_i32(~var_1.c, ~vec4<i32>(2147483647i, -2147483647i, u_input.a.x, -1i))), var_1.d, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, global2.e.x, var_1.d.x)), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.d.x, var_1.e.x, global1.x), vec3<f32>(-554f, -174f, global1.x)), global1.x >= var_2.a))))), var_1.e.x, _wgslsmith_div_vec3_i32(~(~var_1.c.wyx | global2.c.wyx), min(vec3<i32>(~global2.a, 15651i, countOneBits(-1i)), vec3<i32>(-5750i, countOneBits(global2.a), var_1.b))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, global2.a, 14535u, vec2<i32>(2147483647i, u_input.a.x), ~firstTrailingBit(1u));
}

