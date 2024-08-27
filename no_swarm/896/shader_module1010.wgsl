struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(497f, 80726u, Struct_1(vec4<i32>(-3132i, 13522i, 1i, 2147483647i), 1373f, 2147483647i, 0i), Struct_1(vec4<i32>(13837i, -12558i, 2708i, 26800i), -177f, i32(-2147483648), -9911i)), -88669i);

var<private> global1: Struct_3 = Struct_3(Struct_2(-975f, 1u, Struct_1(vec4<i32>(1i, -50310i, -48878i, 36941i), 1200f, 1i, 2147483647i), Struct_1(vec4<i32>(-18343i, -9623i, 2147483647i, 58138i), 909f, 51782i, i32(-2147483648))), -24189i);

var<private> global2: Struct_1;

var<private> global3: Struct_4;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: bool) -> u32 {
    let var_0 = Struct_4(-(vec3<i32>(-1i) * -countOneBits(global1.a.d.a.yyy)));
    global0 = Struct_3(global0.a, global1.b);
    let var_1 = global1.a;
    var var_2 = global0.a;
    global3 = Struct_4(-global3.a);
    return _wgslsmith_sub_u32(_wgslsmith_div_u32(0u, _wgslsmith_sub_u32(var_1.b, 0u)), 62389u);
}

fn func_3(arg_0: Struct_3) -> vec3<i32> {
    let var_0 = Struct_1(_wgslsmith_clamp_vec4_i32(~vec4<i32>(abs(global0.b), u_input.b.x, global3.a.x, _wgslsmith_dot_vec2_i32(global0.a.c.a.yy, vec2<i32>(global1.b, global1.a.c.a.x))), arg_0.a.c.a, vec4<i32>(-1i, global1.a.c.c, arg_0.b, min(_wgslsmith_mult_i32(-2147483647i, global3.a.x), -16570i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.b))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1933f)) + _wgslsmith_f_op_f32(round(155f))) + 820f)), firstTrailingBit((i32(-1i) * -1i) | select(max(-49799i, -2147483647i), global0.b, true)), -1i);
    global3 = Struct_4(vec3<i32>(arg_0.b, reverseBits(29674i), arg_0.b));
    var var_1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(927f * 520f) - _wgslsmith_f_op_f32(global2.b + 1607f))), arg_0.a.a, global2.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1858f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1044f, arg_0.a.c.b)) + arg_0.a.a), 1039f))));
    global3 = Struct_4(vec3<i32>(_wgslsmith_sub_i32(~_wgslsmith_clamp_i32(1i, 2527i, global0.a.c.a.x), firstLeadingBit(var_0.c | arg_0.a.c.a.x)), u_input.b.x, 2147483647i));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-916f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global1.a.c.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.a.c.b, 509f)) * _wgslsmith_f_op_f32(-global1.a.a)), all(vec4<bool>(true, false, false, false)))))));
    return vec3<i32>(~_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, global0.a.d.a.x, var_0.a.x, global0.b), global2.a), 39387i), _wgslsmith_dot_vec2_i32(~(~vec2<i32>(var_0.c, 2147483647i)), u_input.e), -(2147483647i ^ arg_0.a.c.a.x)) << (u_input.c % vec3<u32>(32u));
}

fn func_1(arg_0: bool) -> Struct_3 {
    var var_0 = vec4<u32>(countOneBits(abs(global1.a.b)), 1u, 1u, func_2(true, -1i, true));
    global2 = Struct_1(-(~global2.a) & ~(-vec4<i32>(global2.d, global1.b, global0.a.c.a.x, global0.b)), -914f, -1i, abs(~firstTrailingBit(global0.b)) >> (~global0.a.b % 32u));
    global3 = Struct_4(firstTrailingBit(min(vec3<i32>(-global1.b, -291i, -55828i), ~_wgslsmith_mult_vec3_i32(vec3<i32>(global2.a.x, global3.a.x, global2.d), vec3<i32>(global1.b, global3.a.x, 1i)))));
    global3 = Struct_4(min(_wgslsmith_sub_vec3_i32(func_3(Struct_3(Struct_2(global0.a.a, u_input.c.x, global0.a.d, global1.a.d), 1i)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.d.a.x, -22186i), global2.a.xz), -42005i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 4531i), vec2<i32>(2147483647i, 2147483647i)))), func_3(Struct_3(global0.a, ~global0.a.d.d))));
    var var_1 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.c.b) - _wgslsmith_f_op_f32(-global1.a.c.b)) > -157f);
    return Struct_3(Struct_2(_wgslsmith_f_op_f32(sign(global0.a.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(~50507u, func_2(false, 19619i, false), var_0.x), vec3<u32>(_wgslsmith_sub_u32(u_input.c.x, global1.a.b), 1598u | var_0.x, _wgslsmith_dot_vec2_u32(var_0.xy, u_input.c.xz))), global1.a.d, global0.a.d), -global0.b >> (~var_0.x % 32u));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: Struct_2) -> f32 {
    let var_0 = select(!(!vec3<bool>(true, all(vec2<bool>(false, false)), arg_2.a.c.b == global2.b)), vec3<bool>(all(vec2<bool>(4294967295u >= arg_2.a.b, any(vec4<bool>(true, true, true, true)))), any(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true))), arg_1.x < global0.a.c.d);
    let var_1 = arg_2.a.c.a.x >> (arg_2.a.b % 32u);
    var var_2 = Struct_1(firstTrailingBit(arg_0.a.c.a) & _wgslsmith_add_vec4_i32(global2.a, ~vec4<i32>(global0.a.c.d, arg_1.x, arg_0.a.d.c, arg_1.x)), arg_2.a.d.b, ~(-countOneBits(u_input.e.x | 0i)), ~(~(var_1 << (_wgslsmith_mod_u32(arg_3.b, 4294967295u) % 32u))));
    global3 = Struct_4(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(global3.a, arg_1.zxw), vec3<i32>(abs(reverseBits(var_1)), u_input.e.x, 33042i)));
    global1 = arg_2;
    return _wgslsmith_f_op_f32(trunc(global0.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_4(func_1(false), global2.a, Struct_3(func_1(true).a, -7391i), Struct_2(func_1(true).a.c.b, 4294967295u, func_1(true).a.d, func_1(true).a.c))), _wgslsmith_f_op_f32(global1.a.d.b * global1.a.a), global0.a.a, _wgslsmith_f_op_f32(global2.b + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + global1.a.d.b), global2.b))) + vec4<f32>(2068f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_4(Struct_3(Struct_2(global0.a.a, u_input.d, global1.a.d, global1.a.d), global1.a.d.d), vec4<i32>(global0.a.c.a.x, u_input.e.x, u_input.b.x, global0.b), Struct_3(global1.a, u_input.e.x), global1.a))))), _wgslsmith_f_op_f32(step(global2.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.a.d.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b + global2.b) - 142f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1356f * -1000f) * _wgslsmith_f_op_f32(global0.a.a + global1.a.d.b)))));
    global2 = func_1(true).a.d;
    var var_1 = true;
    let var_2 = global1.a.d;
    let var_3 = false;
    let var_4 = all(!select(vec2<bool>(true, all(vec3<bool>(true, var_3, true))), vec2<bool>(!var_3, -1021f > global2.b), any(!vec4<bool>(var_3, false, var_3, var_3))));
    global3 = Struct_4(_wgslsmith_div_vec3_i32(vec3<i32>(global1.a.c.a.x, -1i, global0.a.d.a.x ^ _wgslsmith_mod_i32(533i, 58837i)), _wgslsmith_div_vec3_i32(-var_2.a.xwx, ~firstTrailingBit(global0.a.d.a.zxz))));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(~vec2<u32>(u_input.d, 64907u)), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(38978i, var_2.d), -u_input.b.x), _wgslsmith_sub_i32(global2.a.x, global1.a.d.c) >> (u_input.a.x % 32u), var_2.d ^ ~3934i, u_input.b.x) & abs(global1.a.c.a), func_2(var_3, _wgslsmith_mult_i32(~_wgslsmith_mod_i32(global3.a.x, -1i), -21351i), false & !var_4), ~reverseBits(global1.a.b));
}

