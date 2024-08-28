struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: u32;

var<private> global2: Struct_3 = Struct_3(Struct_2(Struct_1(vec4<i32>(2147483647i, 43048i, 35979i, i32(-2147483648)), vec3<i32>(0i, 0i, 30641i), 38757i), vec3<i32>(1i, i32(-2147483648), -69017i), vec4<i32>(40101i, 1i, 15521i, -15728i), vec4<i32>(35069i, -53695i, 1402i, -1i), Struct_1(vec4<i32>(-36381i, 0i, 38312i, 1i), vec3<i32>(2147483647i, i32(-2147483648), 2147483647i), -1i)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> i32 {
    return 1i;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: vec3<i32>) -> vec2<bool> {
    global0 = func_3();
    let var_0 = all(vec3<bool>(!any(select(arg_0, vec4<bool>(arg_0.x, true, false, arg_1.x), arg_1.x)), false, true));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(185f, -1000f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -909f)))) + _wgslsmith_f_op_f32(f32(-1f) * -422f)) >= _wgslsmith_f_op_f32(round(599f));
    let var_2 = Struct_3(global2.a);
    global0 = -abs(global2.a.b.x) | -1i;
    return !select(vec2<bool>(any(vec2<bool>(var_0, false)), any(arg_1) | arg_1.x), arg_1.yz, !(!(!arg_1.x)));
}

fn func_1(arg_0: bool) -> vec4<bool> {
    var var_0 = global2.a.d.x;
    var var_1 = u_input.a.x;
    let var_2 = global2.a.c.zzz;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-895f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(309f - -1661f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-678f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-321f * -1155f), _wgslsmith_f_op_f32(min(1586f, 1693f)), all(vec2<bool>(arg_0, true)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(875f)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_4 = select(func_2(!select(!vec4<bool>(true, true, false, arg_0), !vec4<bool>(true, arg_0, false, false), true), vec3<bool>(arg_0, true, true), _wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(1i, global2.a.c.x, var_2.x)), -(vec3<i32>(51421i, -1i, global2.a.c.x) & global2.a.d.yww))), !(!(!vec2<bool>(arg_0, true))), true);
    return vec4<bool>(any(select(!(!vec2<bool>(false, arg_0)), select(vec2<bool>(true, false), var_4, arg_0), select(!var_4, !var_4, !arg_0))), var_4.x, !arg_0 && true, false);
}

fn func_4(arg_0: vec4<bool>) -> Struct_3 {
    global2 = Struct_3(Struct_2(global2.a.a, _wgslsmith_div_vec3_i32(vec3<i32>(-41402i, 1i, global2.a.b.x) << (vec3<u32>(u_input.a.x, u_input.b, u_input.a.x) % vec3<u32>(32u)), vec3<i32>(global2.a.d.x, global2.a.e.a.x, -1i)) ^ (-vec3<i32>(global2.a.a.b.x, 1i, global2.a.e.c) << (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(u_input.b, u_input.a.x, u_input.a.x)) % vec3<u32>(32u))), _wgslsmith_sub_vec4_i32(vec4<i32>(global2.a.d.x, global2.a.d.x, -2147483647i, global2.a.b.x) & vec4<i32>(1i, 1i, global2.a.c.x, 2147483647i), global2.a.a.a) >> (vec4<u32>(~u_input.a.x, ~u_input.a.x, u_input.b & 3457u, ~u_input.b) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(-vec4<i32>(global2.a.b.x, -2154i, global2.a.d.x, 1i), vec4<i32>(reverseBits(1i), global2.a.e.c, 0i, reverseBits(global2.a.b.x))), Struct_1(vec4<i32>(_wgslsmith_div_i32(0i, global2.a.a.c), global2.a.e.a.x, -6969i | global2.a.e.b.x, _wgslsmith_sub_i32(global2.a.d.x, -63591i)), ~(-global2.a.e.a.yxz), ~firstTrailingBit(30453i))));
    global1 = u_input.b;
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-234f, -1823f, 797f, -1252f) + vec4<f32>(1422f, -767f, 1000f, -233f)) - vec4<f32>(1895f, -1827f, 562f, -919f))), vec4<f32>(-953f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(128f, -727f))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -222f), _wgslsmith_f_op_f32(trunc(-809f)), -583f, _wgslsmith_div_f32(-215f, -1276f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(floor(-1082f)), _wgslsmith_f_op_f32(min(1000f, 676f)), _wgslsmith_f_op_f32(1509f - -104f), -117f)))));
    let var_1 = Struct_2(Struct_1(~global2.a.e.a, ~(-min(vec3<i32>(global2.a.c.x, global2.a.d.x, global2.a.c.x), vec3<i32>(global2.a.a.b.x, 53962i, global2.a.d.x))), -147i), global2.a.c.xzy, global2.a.e.a, select(abs(global2.a.e.a), global2.a.c ^ _wgslsmith_mult_vec4_i32(-vec4<i32>(global2.a.b.x, global2.a.b.x, -24556i, global2.a.e.c), global2.a.c), vec4<bool>(arg_0.x, true, true, any(select(arg_0.zy, vec2<bool>(false, true), vec2<bool>(arg_0.x, arg_0.x))))), Struct_1(~(~global2.a.a.a >> (vec4<u32>(1u, 14518u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), _wgslsmith_clamp_vec3_i32(select(vec3<i32>(-2147483647i, global2.a.a.a.x, 1i), vec3<i32>(1i, global2.a.c.x, -2147483647i), false), abs(global2.a.c.yxz), _wgslsmith_sub_vec3_i32(global2.a.d.zxx, global2.a.b)) ^ vec3<i32>(14931i, -4413i, select(-1i, global2.a.e.c, true)), ~global2.a.d.x));
    global2 = Struct_3(Struct_2(var_1.a, vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.e.a.x, 13256i, global2.a.e.b.x), vec3<i32>(var_1.b.x, var_1.b.x, -1i)), -1i, var_1.b.x), -firstLeadingBit(vec4<i32>(global2.a.a.a.x, 2147483647i, var_1.e.b.x, 30721i)), ~(~vec4<i32>(1i, 1i, 1i, 1i)), var_1.a));
    return Struct_3(var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(!func_1(true));
    var var_1 = global2.a.a;
    global1 = abs(20688u);
    global2 = var_0;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1650f)) * _wgslsmith_f_op_f32(ceil(-275f)));
    global1 = ~(~_wgslsmith_div_u32(u_input.b & 62957u, select(u_input.a.x, u_input.a.x, true))) ^ (~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(18028u, 4294967295u))) & _wgslsmith_sub_u32(~_wgslsmith_div_u32(4294967295u, u_input.b), firstLeadingBit(~0u)));
    global2 = func_4(vec4<bool>(true, !func_1(var_2 == var_2).x, all(func_2(vec4<bool>(true, true, true, true), vec3<bool>(true, false, false), vec3<i32>(var_0.a.b.x, 2147483647i, 0i))), false || !any(vec4<bool>(true, false, true, true))));
    let var_3 = _wgslsmith_f_op_f32(floor(725f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_3))))), 2147483647i, select(-var_0.a.c.x, max(select(_wgslsmith_dot_vec4_i32(var_1.a, var_1.a), min(global2.a.a.c, -18895i), true), -var_1.a.x & firstTrailingBit(1i)), true), 607f);
}

