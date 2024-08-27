struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
    d: i32,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-166f, -1000f, -1574f, -440f);

var<private> global1: Struct_1 = Struct_1(14572i, false);

var<private> global2: Struct_2;

var<private> global3: Struct_5;

var<private> global4: Struct_4;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    let var_0 = vec3<u32>(u_input.b.x, 20543u, u_input.b.x);
    global1 = Struct_1(1i, true);
    let var_1 = global3.a.c;
    global4 = global3.a;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global4.e.a.x))), global4.e.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global4.e.a.x, -633f))))))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-769f, -918f, -258f, -801f))), vec4<f32>(1000f, global3.a.e.a.x, 1000f, -420f))), vec4<f32>(_wgslsmith_f_op_f32(var_2.x * global4.e.a.x), _wgslsmith_f_op_f32(f32(-1f) * -351f), global3.a.e.a.x, _wgslsmith_f_op_f32(max(-1684f, global4.e.a.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1160f, global0.x, global3.a.e.a.x, 905f)))) + vec4<f32>(_wgslsmith_div_f32(-876f, 1502f), global4.e.a.x, global0.x, -844f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a.e.a.x, 1137f, global4.e.a.x, 438f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, global4.e.a.x, -316f, -1043f), vec4<f32>(-1039f, 637f, -620f, var_2.x), vec4<bool>(false, global4.c.b.b, global1.b, true))))))));
}

fn func_2(arg_0: bool) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -528f, 562f, global0.x)) + vec4<f32>(global0.x, global0.x, 1170f, 1602f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -338f, 123f, 124f))), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(global2.b.a, false)))), any(!(!vec2<bool>(true, global4.b.b))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-576f - _wgslsmith_f_op_f32(999f + 352f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1938f)) * _wgslsmith_f_op_f32(-global3.a.e.a.x)), _wgslsmith_div_f32(global3.a.e.a.x, global4.e.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.a.e.a.x, global4.e.a.x)))))));
    let var_1 = global3.a;
    var var_2 = global4.c;
    let var_3 = ~countOneBits(u_input.b);
    let var_4 = 0i;
    return Struct_5(Struct_4(all(vec2<bool>(all(vec3<bool>(true, var_2.c, false)), any(vec2<bool>(arg_0, true)))), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.d, global1.a, 9987i, -2147483647i), firstTrailingBit(vec4<i32>(17751i, -41836i, -2147483647i, global1.a))), all(!vec2<bool>(global1.b, var_1.c.c))), Struct_2(any(!vec2<bool>(true, global2.c)), global3.a.b, arg_0, 1i), var_1.c.d, global4.e));
}

fn func_4(arg_0: Struct_5) -> Struct_2 {
    var var_0 = abs(-select(abs(-vec3<i32>(arg_0.a.b.a, global4.b.a, global2.b.a)), select(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.a.b.a, global4.d, global1.a), vec3<i32>(39797i, global4.c.b.a, global2.b.a)), -vec3<i32>(2147483647i, 1i, -2147483647i), -791f > arg_0.a.e.a.x), vec3<bool>(true, func_2(false).a.a, arg_0.a.d < global2.b.a)));
    global0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3(arg_0.a.c.b))))))));
    var_0 = select((min(vec3<i32>(arg_0.a.c.d, 52904i, -44757i), _wgslsmith_mod_vec3_i32(vec3<i32>(-28372i, arg_0.a.b.a, var_0.x), vec3<i32>(2147483647i, global4.b.a, arg_0.a.c.b.a))) | countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(6030i, -1i, arg_0.a.c.d), vec3<i32>(2147483647i, global2.d, 3275i)))) & min(select(vec3<i32>(global1.a, 64385i, global1.a), ~vec3<i32>(arg_0.a.c.d, -8310i, -2147483647i), arg_0.a.a), max(abs(vec3<i32>(var_0.x, global4.b.a, -41349i)), vec3<i32>(global2.d, -1i, var_0.x) << (vec3<u32>(u_input.a, 81580u, u_input.b.x) % vec3<u32>(32u)))), ~(~(-vec3<i32>(-22171i, -43854i, -2147483647i))), arg_0.a.c.c);
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(global2.b)));
    var var_1 = arg_0;
    return func_2(func_2(all(!(!vec3<bool>(arg_0.a.b.b, true, global4.b.b)))).a.c.a).a.c;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec2<u32>) -> Struct_5 {
    var var_0 = false;
    global2 = Struct_2(!arg_0.c, arg_0.b, global3.a.c.a, global2.d ^ _wgslsmith_dot_vec2_i32(~arg_1.zz, arg_1.xz));
    var var_1 = global3.a.e.a.x;
    return Struct_5(func_2(func_4(func_2(true)).b.b).a);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<bool>) -> StorageBuffer {
    global1 = Struct_1(global2.b.a | global3.a.c.b.a, abs(abs(u_input.a) >> (1u % 32u)) <= u_input.b.x);
    var var_0 = global4.e;
    global3 = func_5(func_4(func_2(false)), -_wgslsmith_sub_vec3_i32(max(vec3<i32>(-1i, global3.a.d, global2.d), vec3<i32>(0i, global3.a.c.d, global2.d)), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, global3.a.b.a, -2147483647i), vec3<i32>(2147483647i, global1.a, global1.a)) | _wgslsmith_mod_vec3_i32(vec3<i32>(global3.a.d, global1.a, global2.b.a), vec3<i32>(global1.a, -7896i, -1i))), u_input.b);
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global4.e.a.x, -610f, 300f, -1595f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 110f, global3.a.e.a.x, global4.e.a.x) - vec4<f32>(557f, -197f, 1339f, arg_0.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1013f, arg_0.x, global0.x, 2949f))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(561f, global4.e.a.x, -747f, 921f))))))));
    let var_1 = Struct_1(_wgslsmith_mult_i32(24222i, -_wgslsmith_div_i32(func_5(global4.c, vec3<i32>(global1.a, -11398i, global1.a), u_input.b).a.b.a, _wgslsmith_dot_vec3_i32(vec3<i32>(global3.a.b.a, 2147483647i, global1.a), vec3<i32>(global2.b.a, 2676i, global3.a.d)))), any(select(vec4<bool>(func_4(Struct_5(Struct_4(false, global4.c.b, Struct_2(global1.b, global3.a.c.b, global3.a.b.b, 21025i), global2.d, global4.e))).c, select(global2.b.b, false, true), true, global3.a.c.c), select(select(vec4<bool>(false, true, true, global1.b), vec4<bool>(false, true, global1.b, global3.a.a), true), select(vec4<bool>(true, false, global2.a, true), vec4<bool>(false, global1.b, true, true), global1.b), select(vec4<bool>(global1.b, true, true, false), vec4<bool>(global3.a.c.b.b, arg_1.x, arg_1.x, global4.a), false)), true | any(vec4<bool>(true, global4.c.b.b, global4.c.a, global3.a.b.b)))));
    return StorageBuffer(-48926i, var_0.a.x, var_0.a.x, -vec2<i32>(_wgslsmith_sub_i32(firstLeadingBit(7519i), var_1.a), firstLeadingBit(_wgslsmith_clamp_i32(global2.b.a, var_1.a, global2.d))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec3_f32(exp2(global4.e.a)), vec3<bool>(global0.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.e.a.x)), !all(select(vec4<bool>(global2.b.b, global2.a, true, false), vec4<bool>(global4.b.b, global1.b, global2.b.b, global1.b), vec4<bool>(true, global4.a, global4.c.b.b, global2.c))), global3.a.b.b));
}

