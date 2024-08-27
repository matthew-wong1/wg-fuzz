struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec2<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_2 = Struct_2(vec2<bool>(false, false), Struct_1(vec4<bool>(false, false, true, true), 31176u, vec2<bool>(false, false), vec2<i32>(-35486i, -1i)), Struct_1(vec4<bool>(true, false, false, true), 37951u, vec2<bool>(false, false), vec2<i32>(-48089i, 68476i)), -601f);

var<private> global2: vec2<i32> = vec2<i32>(25140i, 29845i);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> i32 {
    let var_0 = global1.b;
    var var_1 = vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(abs(vec4<i32>(u_input.b.x, -22643i, var_0.d.x, 2147483647i) | u_input.b), u_input.b);
    var var_2 = -_wgslsmith_sub_i32(_wgslsmith_div_i32(-2147483647i, 29934i), ~min(~var_1.x, var_0.d.x));
    let var_3 = Struct_1(var_0.a, ~var_0.b, arg_0.a.xy, _wgslsmith_mult_vec2_i32(select(vec2<i32>(-19212i, arg_0.d.x), arg_0.d, global1.a), ~(arg_0.d ^ vec2<i32>(1i, 1i))));
    var var_4 = Struct_2(select(select(var_0.c, !(!vec2<bool>(var_3.a.x, var_0.c.x)), true), vec2<bool>(all(vec2<bool>(false, var_3.c.x)), _wgslsmith_dot_vec3_i32(var_1.zzw, u_input.b.xyw) > global1.b.d.x), any(select(arg_0.a.xww, !var_3.a.wyz, var_3.a.x))), Struct_1(select(!(!vec4<bool>(var_3.c.x, true, true, false)), select(var_3.a, var_3.a, var_3.d.x == arg_1), !global1.b.c.x), abs(0u), !vec2<bool>(true, any(global1.b.a.yzz)), abs(_wgslsmith_mod_vec2_i32(-vec2<i32>(76861i, u_input.b.x), firstTrailingBit(global1.b.d)))), Struct_1(select(vec4<bool>(true, true, any(vec4<bool>(arg_2, var_0.a.x, arg_2, false)), true), var_0.a, vec4<bool>(true, any(arg_0.a.zww), arg_0.a.x, !var_3.a.x)), var_3.b, !select(select(global1.a, vec2<bool>(false, true), true), vec2<bool>(false, false), !arg_0.c.x), ~global1.c.d & _wgslsmith_sub_vec2_i32(var_3.d, -global1.b.d)), 1670f);
    return 97028i;
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    global1 = Struct_2(global1.a, global1.c, Struct_1(global1.b.a, 11474u, global1.c.c, vec2<i32>(countOneBits(-global1.b.d.x), ~(-global2.x))), -954f);
    let var_0 = _wgslsmith_sub_u32(~(~global1.c.b), (1u ^ global1.b.b) | u_input.c.x);
    let var_1 = func_3(global1.b, 2147483647i, false);
    var var_2 = global1.b.b;
    var var_3 = true && all(vec4<bool>(global1.c.a.x, (var_0 < var_0) && any(global1.c.c), false, _wgslsmith_f_op_f32(f32(-1f) * -925f) == global1.d));
    return global1.c;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> vec3<f32> {
    let var_0 = func_2(u_input.b.ywx);
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -586f, 1938f)) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d, -216f, -1398f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)));
    var var_1 = vec3<bool>(var_0.c.x, all(select(vec3<bool>(true, true, global1.a.x && true), vec3<bool>(true, true, false), arg_2.a.x)), arg_2.a.x);
    var var_2 = Struct_2(global1.a, Struct_1(vec4<bool>((arg_2.a.x | true) & true, arg_1.a.x, any(vec4<bool>(false, true, global1.c.c.x, global1.c.c.x)), false), 44761u, !var_1.yx, vec2<i32>(~(~var_0.d.x), 1i)), arg_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.d, 146f)) - _wgslsmith_f_op_f32(-arg_1.d)), global1.d)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1793f * 332f)))));
    let var_3 = ~(~u_input.a.x >> (4294967295u % 32u));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.d, arg_1.d, arg_0.d), vec3<f32>(global0.x, global0.x, -1291f), vec3<bool>(true, arg_0.b.c.x, var_2.a.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(696f, -442f, arg_0.d)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.d, global0.x, arg_1.d)))))))));
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: vec2<u32>) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_4(Struct_2(vec2<bool>(false, false), Struct_1(vec4<bool>(global1.a.x, global1.c.c.x, global1.b.a.x, global1.a.x), 3877u, global1.b.a.yz, u_input.b.xw), global1.c, 553f), Struct_2(!global1.b.a.yx, Struct_1(vec4<bool>(false, false, true, global1.c.a.x), 32678u, vec2<bool>(false, global1.b.c.x), vec2<i32>(arg_1, global2.x)), func_2(u_input.b.xwx), _wgslsmith_f_op_f32(min(global1.d, -480f))), global1.c, arg_1 | 2147483647i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-394f, -1000f, -831f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(205f, global0.x, global1.d)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1000f, -646f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, -466f) * vec3<f32>(global1.d, global0.x, -238f)))), global1.c.c.x)));
    var var_0 = abs(u_input.b.x);
    let var_1 = -u_input.b.x;
    let var_2 = all(func_2(vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, global1.c.d.x, 30377i), vec4<i32>(arg_1, -34171i, global1.b.d.x, arg_0.x)), 0i >> (~global1.c.b % 32u), max(arg_0.x, arg_1))).a.zyy);
    return global1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(global1.d, _wgslsmith_f_op_f32(abs(global1.d)))), _wgslsmith_f_op_f32(f32(-1f) * -1593f));
    var var_1 = func_1(abs(vec2<i32>(u_input.b.x, 17144i)), u_input.b.x, vec2<u32>(39098u, _wgslsmith_add_u32(u_input.c.x & ~42542u, 4294967295u)));
    var var_2 = global1.c;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1459f));
    let var_4 = Struct_2(!func_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -1i, -800i), u_input.b.www, abs(vec3<i32>(u_input.b.x, -77683i, global2.x)))).c, Struct_1(vec4<bool>(true, func_2(vec3<i32>(2147483647i, -10611i, global1.c.d.x)).c.x, var_1.a.x, true | all(global1.c.c)), u_input.a.x, global1.c.a.wy, -u_input.b.yw), Struct_1(var_2.a, ~0u, func_2(~vec3<i32>(-25966i, global1.b.d.x, u_input.b.x)).c, u_input.b.yx), -156f);
    var_2 = func_2(abs(u_input.b.xzy));
    let var_5 = max(_wgslsmith_mult_vec3_i32(u_input.b.xyw, abs(u_input.b.yzz)) | _wgslsmith_div_vec3_i32(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(var_2.d.x, var_4.c.d.x, 1i), u_input.b.xxz)), u_input.b.yzx), _wgslsmith_mod_vec3_i32(vec3<i32>(-global1.c.d.x, -2147483647i, firstTrailingBit(-1i)), firstTrailingBit(_wgslsmith_add_vec3_i32(u_input.b.zwy, u_input.b.xxw)) ^ firstLeadingBit(~u_input.b.zww)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(abs(-u_input.b.x), -5873i, global2.x, ~_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.d.x, global2.x, -38694i, 0i), u_input.b), -u_input.b)), _wgslsmith_sub_vec4_i32(firstTrailingBit(abs(vec4<i32>(global2.x, -1i, -15576i, 27164i))), vec4<i32>(~firstLeadingBit(var_1.d.x), 2147483647i, var_1.d.x << (0u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 0i, -2284i, 0i), abs(u_input.b)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1389f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(900f + var_4.d)))));
}

