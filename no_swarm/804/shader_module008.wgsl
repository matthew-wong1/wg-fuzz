struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 6>;

var<private> global1: f32;

var<private> global2: vec3<bool>;

var<private> global3: Struct_1;

var<private> global4: Struct_1 = Struct_1(-761f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: u32) -> u32 {
    let var_0 = all(select(global2.xx, global2.xz, global2.x));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(216f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-142f, global4.a)))))));
    global4 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1343f));
    var var_2 = var_1;
    var var_3 = var_1;
    return firstLeadingBit(u_input.c);
}

fn func_4(arg_0: u32, arg_1: vec3<f32>, arg_2: f32, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x ^ ~_wgslsmith_mult_i32(u_input.b.x, 17802i), _wgslsmith_div_i32(abs(u_input.b.x), ~(-32700i)) & u_input.b.x, firstLeadingBit(-abs(u_input.b.x)), ~(~(-u_input.b.x))), ~(~_wgslsmith_div_vec4_i32(-vec4<i32>(-47752i, u_input.b.x, -2147483647i, -2147483647i), ~vec4<i32>(55835i, -21466i, -72965i, u_input.b.x))));
    let var_1 = _wgslsmith_div_vec2_f32(arg_1.zy, arg_1.yz);
    let var_2 = _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(arg_0 >> (reverseBits(abs(27507u)) % 32u), 6u)]);
    var var_3 = countOneBits(vec4<i32>(-1i) * -vec4<i32>(-u_input.b.x, 28688i | var_0.x, ~1i, 28873i << (0u % 32u)));
    var var_4 = _wgslsmith_clamp_i32(var_3.x, 9149i, -(~(~u_input.b.x))) & _wgslsmith_dot_vec3_i32(-vec3<i32>(var_3.x, 61654i, -36832i), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, var_3.x, u_input.b.x), vec3<i32>(var_3.x, -1i, 1i)), u_input.b ^ var_0.xzy), var_3.xzx));
    return !(!select(!global2.zy, !global2.zx, false));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> vec2<i32> {
    var var_0 = arg_1;
    var_0 = arg_1;
    let var_1 = select(global2.zz, func_4(func_3(arg_2, select(_wgslsmith_div_u32(arg_2, 7418u), arg_2, !global2.x)), _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(max(0u >> (arg_2 % 32u), arg_2), 6u)] + vec3<f32>(_wgslsmith_f_op_f32(-arg_0), 885f, _wgslsmith_f_op_f32(-494f - global3.a))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-759f - var_0.a))), var_0.a)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - 214f))), global2.x);
    global2 = vec3<bool>(all(vec3<bool>(select(all(vec3<bool>(true, var_1.x, global2.x)), u_input.a > 0u, all(vec2<bool>(true, var_1.x))), any(select(vec4<bool>(true, true, global2.x, var_1.x), vec4<bool>(false, var_1.x, global2.x, var_1.x), vec4<bool>(var_1.x, true, global2.x, global2.x))), true)), true & global2.x, func_4(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 25388u, 25517u, 1u), vec4<u32>(31363u, 4294967295u, 52184u, u_input.c))) << (~u_input.a % 32u), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -204f), var_0.a, global2.x & true)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0, -1122f), _wgslsmith_f_op_f32(arg_1.a * -1449f))), _wgslsmith_f_op_f32(f32(-1f) * -297f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1703f * -192f) + _wgslsmith_f_op_f32(arg_1.a + var_0.a)))), arg_1).x);
    global4 = Struct_1(arg_1.a);
    return -_wgslsmith_add_vec2_i32(~firstTrailingBit(u_input.b.yx), firstLeadingBit(u_input.b.zz));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = vec2<i32>(2147483647i, u_input.b.x);
    var var_1 = ~(~vec4<i32>(i32(-1i) * -21736i, arg_0.x, var_0.x, _wgslsmith_dot_vec2_i32(~u_input.b.xz, ~u_input.b.yx)));
    let var_2 = firstLeadingBit(-(vec3<i32>(0i, var_0.x ^ arg_0.x, _wgslsmith_div_i32(var_1.x, var_0.x)) << (_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a, u_input.c, 1u), vec3<u32>(u_input.c, 80296u, 4294967295u) << (vec3<u32>(u_input.a, u_input.a, 4294967295u) % vec3<u32>(32u)), vec3<u32>(1u, u_input.a, 15920u)) % vec3<u32>(32u))));
    global4 = Struct_1(1000f);
    var var_3 = ~_wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), firstLeadingBit(vec2<u32>(34497u, 0u)))) ^ 28084u;
    return Struct_1(_wgslsmith_f_op_f32(-global4.a));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> Struct_1 {
    let var_0 = func_5(min(-func_2(-506f, Struct_1(-693f), 1525u), -vec2<i32>(1i, arg_3) >> (countOneBits(~vec2<u32>(33242u, 3477u)) % vec2<u32>(32u))), vec4<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-381f * 769f))) == arg_1.a, false, any(vec3<bool>(true, any(global2.xx), false | global2.x)), true));
    let var_1 = func_5(countOneBits(_wgslsmith_mult_vec2_i32(u_input.b.yy, firstTrailingBit(~u_input.b.yy))), vec4<bool>(false, all(!select(vec4<bool>(true, global2.x, true, true), vec4<bool>(global2.x, false, true, true), global2.x)), global2.x, !(func_2(global3.a, arg_1, u_input.c).x <= 24182i)));
    global4 = Struct_1(global3.a);
    let var_2 = global4.a;
    var var_3 = func_4(firstLeadingBit(u_input.a), vec3<f32>(-162f, var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-379f)))), _wgslsmith_f_op_f32(f32(-1f) * -548f), arg_1);
    return func_5(-vec2<i32>(-_wgslsmith_div_i32(u_input.b.x, arg_3), -func_2(global3.a, Struct_1(global4.a), arg_0).x), select(!select(vec4<bool>(var_3.x, global2.x, true, var_3.x), select(vec4<bool>(true, var_3.x, var_3.x, var_3.x), vec4<bool>(var_3.x, global2.x, var_3.x, false), vec4<bool>(global2.x, true, false, global2.x)), !global2.x), select(!select(vec4<bool>(true, global2.x, global2.x, var_3.x), vec4<bool>(global2.x, false, var_3.x, true), true), !vec4<bool>(false, global2.x, false, true), global2.x), true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -1857f);
    global4 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a - -1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a * global3.a)))));
    let var_0 = func_1(firstTrailingBit(~u_input.a), Struct_1(global3.a), global4.a, (~(-u_input.b.x) | -_wgslsmith_clamp_i32(14633i, u_input.b.x, u_input.b.x)) << (u_input.c % 32u));
    global0 = array<vec3<f32>, 6>();
    let var_1 = 17988i;
    global0 = array<vec3<f32>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1019f, -1034f) - vec2<f32>(-2124f, -164f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-129f, 376f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1012f, global3.a))), !(!vec2<bool>(global2.x, false)))));
}

