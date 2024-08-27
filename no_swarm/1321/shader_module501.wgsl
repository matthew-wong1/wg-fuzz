struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: u32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<i32, 6>;

var<private> global2: Struct_2;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: Struct_2) -> vec3<i32> {
    var var_0 = arg_2.e;
    var_0 = arg_2.e;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, global2.d, var_0.c.x, -1238f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-548f, arg_2.e.b.x, 547f, arg_2.e.b.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.e.b.x, 323f, -166f, global2.d), vec4<f32>(1904f, -1000f, 322f, arg_2.d), vec4<bool>(arg_1.x, arg_1.x, false, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-615f, var_0.c.x, global2.d, 915f)))))), select(vec4<bool>(var_0.d.x, global2.c < arg_2.c, true, all(vec4<bool>(false, arg_1.x, false, false))), !(!vec4<bool>(arg_1.x, true, arg_1.x, var_0.d.x)), any(!global2.a)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.e.c.x, -1000f, arg_2.d, 424f) + vec4<f32>(global2.e.c.x, 625f, arg_2.e.c.x, var_0.b.x)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-282f, global2.d, arg_2.d, -1205f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.e.b.x, 975f, global2.e.c.x, global2.e.c.x), vec4<f32>(643f, arg_2.d, arg_2.e.c.x, -856f)) - vec4<f32>(arg_2.e.b.x, 1803f, -699f, var_0.b.x)))));
    var var_2 = arg_2;
    global0 = true;
    return _wgslsmith_sub_vec3_i32(firstTrailingBit(arg_2.e.e), global2.e.e);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_3(Struct_2(select(vec2<bool>(true, true), !vec2<bool>(global2.e.d.x, global2.e.d.x), !select(vec2<bool>(true, global2.e.d.x), global2.a, true)), vec2<bool>(any(vec2<bool>(global2.a.x, global2.a.x)) && true, !global2.b.x), _wgslsmith_sub_u32(1u, u_input.b.x), _wgslsmith_f_op_f32(f32(-1f) * -927f), Struct_1(abs(-vec2<i32>(1i, global1[_wgslsmith_index_u32(global2.c, 6u)])), global2.e.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, 1309f, arg_0.x), vec3<f32>(global2.e.c.x, arg_0.x, global2.e.c.x))), select(vec2<bool>(global2.b.x, false), vec2<bool>(true, true), true), ~vec3<i32>(arg_1.x, arg_1.x, global2.e.e.x))), global2.e, -442f);
    let var_1 = ~u_input.b;
    var var_2 = Struct_1(global2.e.e.xx, var_0.a.e.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global2.e.c)) + vec3<f32>(global2.d, global2.e.b.x, -900f)), global2.e.b)), global2.a, reverseBits(var_0.a.e.e));
    global2 = var_0.a;
    global1 = array<i32, 6>();
    return Struct_1(firstTrailingBit(abs(_wgslsmith_mult_vec2_i32(firstTrailingBit(var_2.a), arg_1))), global2.e.b, vec3<f32>(global2.e.c.x, _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-global2.d)), var_0.a.e.c.x), select(!(!var_2.d), var_0.a.e.d, select(vec2<bool>(true, all(vec2<bool>(false, true))), select(global2.e.d, !global2.a, select(vec2<bool>(var_2.d.x, var_2.d.x), var_0.a.b, false)), global2.b.x)), -func_3(var_0.b.a, !vec3<bool>(var_0.b.d.x, global2.b.x, false), Struct_2(vec2<bool>(false, false), !var_0.a.a, _wgslsmith_div_u32(global2.c, 4294967295u), 466f, global2.e)));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_3) -> Struct_1 {
    let var_0 = false;
    var var_1 = select(firstLeadingBit(firstLeadingBit(arg_2.b.e.x) << (29955u % 32u)), ~_wgslsmith_div_i32(i32(-1i) * -16472i, _wgslsmith_dot_vec2_i32(~arg_1.a.e.e.zy, ~u_input.a)), !any(vec2<bool>(true, true)));
    global0 = arg_1.b.a.x > -func_3(arg_1.b.e.yx, !(!vec3<bool>(arg_1.a.b.x, global2.b.x, global2.e.d.x)), Struct_2(!arg_2.a.a, !vec2<bool>(arg_2.a.a.x, arg_1.b.d.x), 1u ^ arg_1.a.c, global2.e.b.x, global2.e)).x;
    global2 = Struct_2(!(!arg_1.a.b), arg_1.a.b, global2.c, global2.e.c.x, global2.e);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d, arg_2.a.d, -974f, arg_2.c) + vec4<f32>(532f, -805f, arg_2.c, -170f)) * vec4<f32>(arg_1.c, arg_2.b.b.x, arg_2.b.c.x, 645f))))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(round(-193f)), _wgslsmith_f_op_f32(-arg_2.b.c.x), -3471f, _wgslsmith_f_op_f32(floor(1259f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.e.c.x, arg_1.c, global2.e.c.x, 192f) - vec4<f32>(1000f, arg_2.a.d, arg_2.c, arg_2.a.e.b.x))), vec4<f32>(_wgslsmith_f_op_f32(-arg_2.b.c.x), 1056f, 770f, global2.d))))));
    return func_2(vec2<f32>(1f, -1350f), countOneBits(arg_1.a.e.e.zx));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<f32>) -> Struct_3 {
    var var_0 = min(~_wgslsmith_dot_vec3_i32(global2.e.e, vec3<i32>(abs(-2147483647i), ~u_input.a.x, -global1[_wgslsmith_index_u32(117802u, 6u)])), -_wgslsmith_mult_i32(u_input.a.x << (54572u % 32u), u_input.a.x ^ -1i));
    global2 = Struct_2(global2.a, global2.a, _wgslsmith_mod_u32(~max(max(u_input.b.x, u_input.b.x), max(0u, u_input.b.x)), global2.c), _wgslsmith_div_f32(arg_1.x, arg_1.x), Struct_1(firstLeadingBit(global2.e.e.yy), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(687f, global2.e.c.x) * -730f), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(839f - _wgslsmith_f_op_f32(abs(-165f)))), _wgslsmith_f_op_vec3_f32(round(global2.e.c)), vec2<bool>(false, any(select(vec2<bool>(false, false), vec2<bool>(false, true), global2.e.d))), max(~(~vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 6u)], global2.e.a.x, 1i)), _wgslsmith_mult_vec3_i32(select(global2.e.e, global2.e.e, false), -global2.e.e))));
    let var_1 = Struct_2(select(!(!select(vec2<bool>(false, false), global2.e.d, global2.e.d)), !vec2<bool>(!global2.a.x, all(vec4<bool>(global2.e.d.x, global2.e.d.x, true, global2.e.d.x))), select(!(!global2.b), vec2<bool>(true, all(vec4<bool>(global2.e.d.x, true, global2.b.x, true))), !all(vec4<bool>(false, true, false, true)))), select(global2.e.d, select(select(vec2<bool>(global2.b.x, global2.b.x), global2.e.d, global2.a.x), vec2<bool>(global2.a.x, true), true), global2.b.x), 1u, 710f, func_4(_wgslsmith_mod_u32(u_input.b.x, 4294967295u), Struct_3(Struct_2(vec2<bool>(global2.a.x, true), !global2.b, 4294967295u >> (u_input.b.x % 32u), _wgslsmith_f_op_f32(round(global2.e.c.x)), func_2(vec2<f32>(arg_1.x, 119f), u_input.a)), func_2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1.x, -329f))), -vec2<i32>(10200i, 57475i)), 2658f), Struct_3(Struct_2(global2.e.d, select(global2.e.d, vec2<bool>(true, global2.a.x), global2.e.d.x), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 71520u, 1u), vec3<u32>(0u, global2.c, 64756u)), func_2(global2.e.c.xy, vec2<i32>(global1[_wgslsmith_index_u32(global2.c, 6u)], -1i)).c.x, Struct_1(global2.e.e.yz, global2.e.b, vec3<f32>(-382f, global2.e.b.x, arg_1.x), vec2<bool>(true, false), global2.e.e)), func_2(_wgslsmith_div_vec2_f32(arg_0.wx, vec2<f32>(arg_0.x, -510f)), _wgslsmith_clamp_vec2_i32(u_input.a, vec2<i32>(0i, u_input.a.x), u_input.a)), -1322f)));
    let var_2 = Struct_2(select(func_4(~var_1.c, Struct_3(var_1, func_4(17672u, Struct_3(Struct_2(vec2<bool>(var_1.a.x, global2.a.x), global2.a, 0u, 376f, Struct_1(u_input.a, vec3<f32>(1387f, global2.e.b.x, arg_1.x), arg_0.yyz, vec2<bool>(var_1.a.x, global2.e.d.x), vec3<i32>(2147483647i, -2147483647i, global1[_wgslsmith_index_u32(4294967295u, 6u)]))), var_1.e, global2.e.b.x), Struct_3(Struct_2(vec2<bool>(global2.a.x, false), vec2<bool>(true, false), 0u, arg_1.x, Struct_1(u_input.a, vec3<f32>(1203f, 2368f, global2.e.c.x), vec3<f32>(-1042f, global2.d, 404f), var_1.b, global2.e.e)), Struct_1(var_1.e.a, global2.e.b, global2.e.c, global2.b, vec3<i32>(15281i, 24849i, -1i)), -612f)), _wgslsmith_f_op_f32(-arg_1.x)), Struct_3(var_1, var_1.e, -1806f)).d, vec2<bool>(true, global2.a.x), true != func_4(var_1.c, Struct_3(Struct_2(vec2<bool>(var_1.b.x, true), vec2<bool>(false, false), 13634u, 418f, Struct_1(var_1.e.e.zy, arg_1.xzy, global2.e.b, vec2<bool>(false, global2.b.x), vec3<i32>(1i, -1i, 0i))), var_1.e, arg_1.x), Struct_3(Struct_2(global2.e.d, var_1.a, var_1.c, 249f, Struct_1(u_input.a, arg_0.zxy, vec3<f32>(global2.d, arg_1.x, 1270f), var_1.b, vec3<i32>(global2.e.e.x, 46254i, -2147483647i))), var_1.e, 1058f)).d.x), var_1.e.d, global2.c, -1567f, var_1.e);
    var_0 = 1i;
    return Struct_3(var_2, Struct_1(-func_4(max(10645u, 39505u), Struct_3(Struct_2(var_1.b, vec2<bool>(false, false), 30285u, var_1.e.c.x, global2.e), global2.e, arg_0.x), Struct_3(var_2, var_1.e, 332f)).a, arg_0.xzw, arg_1.xyw, vec2<bool>(var_2.b.x, global2.a.x | !global2.a.x), ~func_4(3015u, Struct_3(var_1, var_2.e, -216f), Struct_3(var_1, Struct_1(var_1.e.e.zy, vec3<f32>(565f, 1070f, var_1.d), vec3<f32>(-1000f, global2.d, 507f), vec2<bool>(var_1.b.x, global2.e.d.x), vec3<i32>(-24113i, 23348i, -5965i)), -795f)).e), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1172f)))));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_3) -> i32 {
    let var_0 = arg_1.b.e.zz;
    var var_1 = arg_1.a;
    let var_2 = select(arg_0.wxw, select(select(select(!vec3<bool>(false, var_1.a.x, var_1.e.d.x), select(arg_0.yww, vec3<bool>(true, var_1.a.x, global2.a.x), arg_0.x), select(vec3<bool>(false, false, false), arg_0.ywx, false)), arg_0.wwx, arg_0.zxx), arg_0.wwy, true), false);
    var var_3 = -vec3<i32>(35649i, -global1[_wgslsmith_index_u32(~(~global2.c), 6u)], arg_1.a.e.a.x);
    let var_4 = func_4(4294967295u, Struct_3(Struct_2(vec2<bool>(!arg_1.a.e.d.x, any(vec4<bool>(true, true, false, true))), vec2<bool>(true, true), ~_wgslsmith_div_u32(21265u, 7154u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.c))), Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, 0i), vec2<i32>(global1[_wgslsmith_index_u32(17559u, 6u)], -44122i)), _wgslsmith_f_op_vec3_f32(global2.e.b + var_1.e.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(1132f, -673f, 1000f) + vec3<f32>(-153f, 706f, -1652f)), func_2(global2.e.c.zy, var_3.yx).d, vec3<i32>(29446i, global2.e.a.x, u_input.a.x) >> (vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x) % vec3<u32>(32u)))), arg_1.a.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2187f)) - func_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.d, 1723f, -452f, -1674f), vec4<f32>(502f, global2.d, -639f, -128f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(163f, 301f, 475f, -182f), vec4<f32>(-284f, -929f, arg_1.b.c.x, -997f)))).a.e.c.x)), arg_1);
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(select(!select(vec4<bool>(global2.e.d.x, false, global2.e.d.x, false), !vec4<bool>(global2.b.x, global2.b.x, global2.e.d.x, global2.e.d.x), vec4<bool>(global2.b.x, global2.a.x, global2.a.x, global2.a.x)), vec4<bool>(true, false, !all(vec4<bool>(false, false, global2.a.x, true)), true), select(vec4<bool>(!global2.a.x, global2.e.d.x, !global2.a.x, true), select(!vec4<bool>(global2.a.x, false, global2.e.d.x, true), select(vec4<bool>(global2.a.x, false, true, false), vec4<bool>(false, true, true, false), false), !vec4<bool>(global2.b.x, true, false, global2.e.d.x)), global2.b.x)), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.e.c.x, global2.d, global2.e.c.x, -1019f))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.e.b.x, 600f, -1162f, global2.d))))))));
    let var_1 = Struct_3(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.e.b.x, _wgslsmith_f_op_f32(-global2.d), _wgslsmith_div_f32(287f, global2.d), global2.d)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d, 158f, global2.d, -1000f))))).a, func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(375f, -1221f, global2.e.c.x, global2.e.b.x), vec4<f32>(global2.e.b.x, global2.e.c.x, -1284f, global2.d)))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.e.c.x, 402f, -1032f, 1393f) - vec4<f32>(global2.e.c.x, global2.d, global2.d, 733f))))), vec4<f32>(global2.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-606f * -641f) * _wgslsmith_f_op_f32(-global2.e.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, global2.d))), func_2(_wgslsmith_f_op_vec2_f32(round(global2.e.b.yx)), vec2<i32>(5012i, global1[_wgslsmith_index_u32(u_input.b.x, 6u)])).b.x)).a.e, _wgslsmith_f_op_f32(-global2.e.b.x));
    var var_2 = Struct_1(vec2<i32>(u_input.a.x, reverseBits(31121i)), vec3<f32>(-1192f, _wgslsmith_f_op_f32(629f + global2.e.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(545f * 348f)))), _wgslsmith_f_op_vec3_f32(-global2.e.b), !func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.d, 728f)), -vec2<i32>(-2147483647i, var_0) | abs(var_1.b.e.yy)).d, _wgslsmith_clamp_vec3_i32(-var_1.b.e, -vec3<i32>(_wgslsmith_clamp_i32(30448i, 1i, -3805i), 8993i, ~1i), -global2.e.e));
    var_2 = global2.e;
    var var_3 = func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.c, global2.d, -411f, -1600f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1677f, 1037f, -259f, var_1.b.c.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_2.c.x, var_1.a.e.c.x, 602f)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2.d, -1399f, -448f, -290f), vec4<f32>(var_2.c.x, var_1.c, global2.e.b.x, var_1.a.d)) + vec4<f32>(1540f, 578f, 1229f, global2.d))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1290f, 1000f, 1110f, 1840f), vec4<f32>(751f, var_1.c, -307f, var_1.a.e.c.x), vec4<bool>(true, false, global2.a.x, false))))))));
    global1 = array<i32, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_3.b.c.xy), vec4<u32>(11777u, _wgslsmith_sub_u32(14241u, u_input.b.x), var_3.a.c, global2.c & 1u), var_3.a.c);
}

