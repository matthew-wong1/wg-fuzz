struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 25> = array<vec2<f32>, 25>(vec2<f32>(-102f, 800f), vec2<f32>(-665f, -780f), vec2<f32>(936f, -1429f), vec2<f32>(655f, -3712f), vec2<f32>(1634f, -1416f), vec2<f32>(-1277f, 712f), vec2<f32>(-2241f, 553f), vec2<f32>(-2259f, 1033f), vec2<f32>(-1792f, 318f), vec2<f32>(-1557f, -1432f), vec2<f32>(-1139f, -1254f), vec2<f32>(-896f, -508f), vec2<f32>(311f, 309f), vec2<f32>(792f, 878f), vec2<f32>(286f, -1749f), vec2<f32>(-1246f, 242f), vec2<f32>(-667f, -128f), vec2<f32>(1260f, 243f), vec2<f32>(-1400f, 174f), vec2<f32>(-1000f, 809f), vec2<f32>(700f, 197f), vec2<f32>(178f, 1384f), vec2<f32>(-875f, 742f), vec2<f32>(-675f, -464f), vec2<f32>(449f, 1000f));

var<private> global1: array<Struct_2, 32>;

var<private> global2: Struct_2 = Struct_2(-25118i, -814f, true, Struct_1(vec2<bool>(false, false), -906i));

var<private> global3: array<Struct_2, 23>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> u32 {
    var var_0 = Struct_2(u_input.b, _wgslsmith_f_op_f32(global2.b + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.b + global2.b)))))), true | any(vec4<bool>(true, global2.c, any(vec3<bool>(true, false, true)), !global2.d.a.x)), Struct_1(select(vec2<bool>(global2.d.a.x || false, global2.c), !(!vec2<bool>(false, global2.d.a.x)), true), global2.d.b));
    var_0 = Struct_2(~(~1i), var_0.b, all(vec4<bool>(true, true, true, true)), Struct_1(!vec2<bool>(false, var_0.d.a.x), ~_wgslsmith_div_i32(abs(0i), global2.a)));
    var var_1 = Struct_2(_wgslsmith_clamp_i32(abs(_wgslsmith_sub_i32(u_input.b, global2.d.b)), firstTrailingBit(1i), -16737i), _wgslsmith_f_op_f32(-1368f * global2.b), var_0.d.a.x, Struct_1(vec2<bool>(global2.c, any(select(vec2<bool>(global2.d.a.x, global2.c), global2.d.a, vec2<bool>(true, true)))), min(countOneBits(global2.a), -1i) >> (1u % 32u)));
    global2 = global1[_wgslsmith_index_u32(1u, 32u)];
    global2 = global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(66178u, 0u, 15635u)), 1u), 32u)];
    return 1u;
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>) -> u32 {
    global1 = array<Struct_2, 32>();
    global1 = array<Struct_2, 32>();
    let var_0 = Struct_1(select(select(vec2<bool>(all(vec4<bool>(true, false, arg_1.x, false)), global2.c | global2.d.a.x), arg_0.d.a, global2.c), select(vec2<bool>(arg_1.x, true), !(!global2.d.a), vec2<bool>(true, !arg_1.x)), select(!(!global2.d.a), arg_0.d.a, arg_1.yy)), ~(firstTrailingBit(-38547i) >> (0u % 32u)));
    return (_wgslsmith_mult_u32(1u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 98619u, 7897u, 2094u), vec4<u32>(51938u, 1u, 2649u, 4294967295u)))) << (35702u % 32u)) | 21431u;
}

fn func_1() -> vec3<bool> {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(func_3(global3[_wgslsmith_index_u32(func_2(), 23u)], select(vec3<bool>(true, global2.d.a.x, global2.c), vec3<bool>(true, global2.c, global2.c), global2.d.a.x)), ~1u, ~abs(77092u)), select(_wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, 17935u, 50714u), ~vec3<u32>(92085u, 1u, 1u) | select(vec3<u32>(32463u, 70417u, 4294967295u), vec3<u32>(1u, 4294967295u, 1u), vec3<bool>(global2.d.a.x, global2.c, false))), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(4294967295u, 22781u, 4294967295u), _wgslsmith_sub_u32(17809u, 3288u), 31025u), vec3<u32>(1u, 1u, 1u)), select(!global2.d.a.x, select(any(vec3<bool>(true, true, true)), any(vec4<bool>(true, global2.d.a.x, global2.c, false)), !global2.d.a.x), !any(global2.d.a)))), 32u)];
    global3 = array<Struct_2, 23>();
    var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~1u, func_2(), firstLeadingBit(13174u), 687u), ~vec4<u32>(19781u, 28523u, abs(0u), 1u) >> ((~reverseBits(vec4<u32>(0u, 0u, 28174u, 1u)) << (vec4<u32>(1u, select(0u, 11176u, false), 1u, ~4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u))), 32u)];
    let var_1 = Struct_2(u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.b, _wgslsmith_f_op_f32(-var_0.b))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.b * -1007f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -100f) * global2.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b))) > 1845f, Struct_1(!vec2<bool>(global2.d.a.x, all(vec3<bool>(false, true, global2.d.a.x))), i32(-1i) * -38018i));
    global2 = global1[_wgslsmith_index_u32(~abs(~10767u), 32u)];
    return vec3<bool>(false, true, var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(global2.c || all(func_1())));
    var var_1 = vec2<bool>(global2.d.a.x, abs(-5480i) == u_input.b);
    global3 = array<Struct_2, 23>();
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b + -1112f) - 123f), _wgslsmith_f_op_f32(-global2.b), -1000f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-152f + global2.b)), -1025f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b))), func_1())));
    var var_3 = func_1().zz;
    let var_4 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(var_2.x + global2.b)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, -1000f) - vec2<f32>(-199f, _wgslsmith_f_op_f32(-global2.b))))));
    global2 = Struct_2(u_input.b, var_4.x, true, Struct_1(!(!vec2<bool>(false, var_1.x)), _wgslsmith_div_i32(-u_input.b, u_input.b)));
    var var_5 = global2.d;
    let x = u_input.a;
    s_output = StorageBuffer(~0i, var_2.x);
}

