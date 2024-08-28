struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<f32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

var<private> global1: vec2<f32>;

var<private> global2: u32 = 1u;

var<private> global3: vec2<i32> = vec2<i32>(15800i, 9226i);

var<private> global4: Struct_1 = Struct_1(-533f, false, vec4<f32>(1000f, 669f, 1544f, 1000f), vec3<u32>(4294967295u, 0u, 13639u));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<bool>) -> f32 {
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.c.x, global4.c.x))), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.c.x, arg_0.c.x), _wgslsmith_f_op_f32(step(461f, global4.c.x)))), global4.c.x));
    let var_0 = _wgslsmith_clamp_vec3_i32(-(vec3<i32>(-21911i >> (1u % 32u), -2147483647i, -2147483647i) ^ _wgslsmith_add_vec3_i32(u_input.d, u_input.d | vec3<i32>(global3.x, -27049i, u_input.d.x))), _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global3.x, 468i, global3.x) ^ u_input.d, u_input.d & select(u_input.d, u_input.d, vec3<bool>(arg_2.x, false, true))), -vec3<i32>(_wgslsmith_clamp_i32(global3.x, global3.x, u_input.d.x), min(u_input.c, u_input.d.x), u_input.d.x)), u_input.d);
    let var_1 = 162f;
    let var_2 = arg_0;
    let var_3 = !global4.b & true;
    return _wgslsmith_f_op_f32(arg_0.a * -1000f);
}

fn func_3(arg_0: i32, arg_1: bool) -> f32 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_mult_i32(u_input.d.x, 40947i);
    let var_2 = 2147483647i;
    let var_3 = Struct_1(_wgslsmith_div_f32(global4.a, 235f), !((all(vec4<bool>(true, arg_1, global4.b, arg_1)) == all(vec2<bool>(arg_1, arg_1))) | true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, 1013f, 1467f) + _wgslsmith_div_vec4_f32(global4.c, global4.c)))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global4.c * global4.c))))), _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(91968u, global4.d.x, u_input.a), reverseBits(vec3<u32>(u_input.a, 387u, global4.d.x))), vec3<u32>(_wgslsmith_add_u32(global4.d.x, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(global4.d.x, 5026u, 52023u), global4.d), _wgslsmith_add_u32(global4.d.x, u_input.a))) & vec3<u32>(_wgslsmith_add_u32(1u, global4.d.x), 1u, min(firstLeadingBit(34452u), _wgslsmith_mult_u32(u_input.a, 4294967295u))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    return global1.x;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = min(_wgslsmith_mult_vec2_i32(abs(u_input.d.zy), ~(~vec2<i32>(u_input.c, 0i))), u_input.d.xz);
    let var_1 = ~_wgslsmith_mult_i32(global3.x, firstLeadingBit(~(-u_input.d.x)));
    global4 = arg_0;
    let var_2 = Struct_1(global1.x, !any(vec3<bool>(true, !global4.b, select(arg_0.b, true, arg_0.b))), _wgslsmith_f_op_vec4_f32(step(global4.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(global4.c))) + vec4<f32>(_wgslsmith_div_f32(global1.x, 249f), _wgslsmith_f_op_f32(max(-911f, 292f)), global1.x, global4.a)))), _wgslsmith_mult_vec3_u32(abs(arg_0.d), vec3<u32>(~45665u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(4294967295u, 29235u)), arg_0.d.x)) << (vec3<u32>(_wgslsmith_div_u32(4294967295u, global4.d.x), abs(~1u), 22751u) % vec3<u32>(32u)));
    let var_3 = all(!select(!(!vec2<bool>(var_2.b, true)), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(var_2.b, false)), var_2.b));
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(max(global4.c.x, _wgslsmith_f_op_f32(min(-416f, _wgslsmith_f_op_f32(global4.a - -1362f))))), _wgslsmith_div_f32(-1202f, 218f));
    let var_1 = Struct_1(-720f, true, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1598f, arg_0.c.x, _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(var_0.x * 769f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))), vec3<u32>(~u_input.a, min(4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.d.x, arg_0.d.x, arg_0.d.x, u_input.a), ~vec4<u32>(u_input.a, arg_1, 63110u, 0u))), ~(~arg_1) << (~firstTrailingBit(28621u) % 32u)));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(212f, global1.x))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-130f, global1.x)) - _wgslsmith_f_op_f32(arg_0.a * func_4(Struct_1(-585f, global0[_wgslsmith_index_u32(1u, 3u)], vec4<f32>(421f, global4.a, var_1.a, global4.a), global4.d)).c.x)), global4.a));
    var var_2 = func_4(Struct_1(_wgslsmith_f_op_f32(round(-622f)), !(!(!var_1.b)), arg_0.c, select(~(vec3<u32>(20u, 1u, u_input.a) ^ global4.d), global4.d, !(!global0[_wgslsmith_index_u32(arg_1, 3u)]))));
    global0 = array<bool, 3>();
    return func_4(func_4(func_4(Struct_1(_wgslsmith_f_op_f32(exp2(global4.a)), true, arg_0.c, var_1.d))));
}

fn func_1(arg_0: vec3<f32>) -> i32 {
    global2 = 0u;
    global4 = func_5(func_4(Struct_1(1976f, global4.b, vec4<f32>(_wgslsmith_f_op_f32(step(arg_0.x, -816f)), _wgslsmith_f_op_f32(func_2(Struct_1(-1062f, global0[_wgslsmith_index_u32(global4.d.x, 3u)], global4.c, vec3<u32>(global4.d.x, 29679u, 14773u)), vec3<bool>(true, global0[_wgslsmith_index_u32(global4.d.x, 3u)], global0[_wgslsmith_index_u32(26001u, 3u)]), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 3u)], true))), 1000f, _wgslsmith_f_op_f32(func_3(u_input.b, true))), global4.d)), u_input.a);
    let var_0 = _wgslsmith_clamp_vec3_u32(~(~(~(~global4.d))), ~vec3<u32>(1u, global4.d.x, ~1u), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global4.d.x, 16205u, 49053u, 79877u) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(global4.d.x, 1u, 4294967295u, 0u), vec4<u32>(1u, 4294967295u, 1u, u_input.a), vec4<u32>(0u, u_input.a, u_input.a, 26189u)) % vec4<u32>(32u)), ~(~vec4<u32>(global4.d.x, 4294967295u, global4.d.x, global4.d.x))), u_input.a, max(u_input.a, global4.d.x)));
    let var_1 = func_4(Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(global1.x, 397f), _wgslsmith_f_op_f32(f32(-1f) * -2054f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global4.c.x), 570f, true))), global0[_wgslsmith_index_u32(func_5(func_4(Struct_1(-183f, true, vec4<f32>(-204f, -1354f, -350f, global4.a), global4.d)), u_input.a).d.x, 3u)], global4.c, ~max(~vec3<u32>(u_input.a, 129529u, 0u), var_0)));
    global1 = vec2<f32>(-363f, global4.a);
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-314f - 221f), -381f, _wgslsmith_f_op_f32(230f * 872f), _wgslsmith_f_op_f32(max(global1.x, -284f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-105f, global1.x, 185f, 1389f) + global4.c) * global4.c))) - global4.c), global4.c));
    global3 = min(max(vec2<i32>(-firstTrailingBit(u_input.b), ~func_1(vec3<f32>(-519f, 1399f, global4.c.x))), select(_wgslsmith_add_vec2_i32(u_input.d.zz, _wgslsmith_sub_vec2_i32(vec2<i32>(-18362i, global3.x), vec2<i32>(global3.x, global3.x))), abs(-vec2<i32>(global3.x, global3.x)), !select(vec2<bool>(global0[_wgslsmith_index_u32(global4.d.x, 3u)], global0[_wgslsmith_index_u32(1u, 3u)]), vec2<bool>(global4.b, global0[_wgslsmith_index_u32(14211u, 3u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 3u)], global4.b)))), _wgslsmith_sub_vec2_i32((u_input.d.xz & vec2<i32>(u_input.d.x, -1i)) << (global4.d.yx % vec2<u32>(32u)), ~abs(vec2<i32>(global3.x, 2147483647i))) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(max(53910u, 18729u), max(u_input.a, global4.d.x)), select(global4.d.xz >> (global4.d.yx % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(vec2<u32>(97175u, u_input.a), global4.d.yy), any(vec2<bool>(global0[_wgslsmith_index_u32(0u, 3u)], global4.b)))) % vec2<u32>(32u)));
    let var_1 = ~(global4.d.x | global4.d.x);
    var var_2 = global3.x;
    global0 = array<bool, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(global4.d.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1612f, -673f, global1.x, 169f)) + _wgslsmith_f_op_vec4_f32(-global4.c))) + global4.c), func_5(func_4(Struct_1(_wgslsmith_f_op_f32(-var_0.x), global4.b, _wgslsmith_f_op_vec4_f32(global4.c - vec4<f32>(global1.x, 968f, 902f, var_0.x)), global4.d)), abs(abs(global4.d.x))).d.x, vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.x, var_0.x))) - 1702f)));
}

