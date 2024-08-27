struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 10> = array<vec3<i32>, 10>(vec3<i32>(-42072i, -9649i, 32746i), vec3<i32>(60882i, -11992i, i32(-2147483648)), vec3<i32>(-39929i, -8320i, -1i), vec3<i32>(38600i, 26125i, -51901i), vec3<i32>(74324i, 2147483647i, 21355i), vec3<i32>(0i, -71981i, -54570i), vec3<i32>(2147483647i, 4774i, 4815i), vec3<i32>(-17975i, -22364i, i32(-2147483648)), vec3<i32>(-32317i, 10907i, -25484i), vec3<i32>(-1i, i32(-2147483648), -66076i));

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_2, 25>;

var<private> global3: array<bool, 14> = array<bool, 14>(false, true, false, true, false, false, true, true, true, false, true, true, true, false);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: f32) -> f32 {
    global0 = array<vec3<i32>, 10>();
    let var_0 = arg_2;
    global3 = array<bool, 14>();
    global3 = array<bool, 14>();
    return _wgslsmith_f_op_f32(arg_2 - arg_2);
}

fn func_2(arg_0: vec3<u32>) -> vec4<f32> {
    let var_0 = -(~vec4<i32>(-54643i, i32(-1i) * -247i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), select(vec4<i32>(-23087i, -33741i, 4060i, -4313i), vec4<i32>(29366i, -25209i, 2147483647i, 66795i), global1.x)), abs(abs(48765i))));
    let var_1 = (~1u | ~_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.b, 4294967295u), u_input.a)) | 4294967295u;
    global2 = array<Struct_2, 25>();
    global2 = array<Struct_2, 25>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -253f))))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(728f, 434f, 613f, 545f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1059f, 1000f, -401f, 850f) * vec4<f32>(455f, -897f, -418f, -770f))))) + vec4<f32>(-358f, 1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-823f - -1000f), _wgslsmith_f_op_f32(1433f + 195f), global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec3<i32>(var_0.x, 1i, 1i), vec4<bool>(global3[_wgslsmith_index_u32(1u, 14u)], true, true, global1.x)), vec4<u32>(u_input.a, 1u, 29666u, 55767u), -925f))))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: vec4<f32>) -> vec4<f32> {
    global0 = array<vec3<i32>, 10>();
    global1 = select(arg_1, arg_1, global1.x);
    let var_0 = Struct_3(_wgslsmith_sub_u32(1u, 1u), arg_3.x, vec2<bool>(!global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c.x, u_input.b << (u_input.b % 32u)), 14u)], arg_1.x));
    var var_1 = reverseBits(~4294967295u);
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(arg_3)) - _wgslsmith_f_op_vec4_f32(func_2(u_input.c.xzw))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1122f, var_0.b, 263f) * vec4<f32>(arg_3.x, arg_3.x, var_0.b, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, 1335f, arg_3.x, -1007f)), arg_1))), _wgslsmith_f_op_vec4_f32(round(arg_3)), arg_1)), Struct_1(-select(arg_0, arg_0, all(vec3<bool>(true, true, true))), !vec4<bool>(true, arg_2.x <= arg_2.x, true, var_0.c.x)), Struct_1(~select(firstTrailingBit(vec3<i32>(arg_0.x, -42480i, -12393i)), ~global0[_wgslsmith_index_u32(101708u, 10u)], select(vec3<bool>(var_0.c.x, false, global1.x), global1.xwz, global3[_wgslsmith_index_u32(u_input.c.x, 14u)])), arg_1));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-322f)) + -1647f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(488f - 1814f) * _wgslsmith_f_op_vec4_f32(func_2(u_input.c.ywy)).x))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1400f - var_2.a.x)), -1000f, arg_3.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_3.x - var_2.a.x)))), _wgslsmith_f_op_vec4_f32(-var_2.a), true && arg_1.x)));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_2, arg_3: f32) -> vec4<bool> {
    var var_0 = arg_2;
    var var_1 = vec2<f32>(arg_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a.x))));
    var var_2 = vec3<i32>(~var_0.b.a.x, arg_2.b.a.x, ~(-1i));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-168f, var_1.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec4_f32(func_2(vec3<u32>(40094u, 38211u, 0u))).x, -893f)), var_1.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(925f, arg_3), -107f, _wgslsmith_f_op_f32(f32(-1f) * -1951f), arg_3), vec4<f32>(1764f, _wgslsmith_f_op_f32(var_0.a.x + arg_2.a.x), _wgslsmith_f_op_f32(-arg_2.a.x), arg_2.a.x))) - _wgslsmith_f_op_vec4_f32(-var_0.a)));
    var_0 = global2[_wgslsmith_index_u32(u_input.c.x, 25u)];
    return !var_0.c.b;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: vec3<f32>) -> StorageBuffer {
    var var_0 = ~(~u_input.a);
    var var_1 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.a.x, arg_2.a.x), -vec2<i32>(arg_1.x, arg_2.a.x)) << (firstLeadingBit(40059u) % 32u), ~arg_1.x, _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(arg_1.x, -17974i)), arg_0.b.a.xx), arg_2.a.x) ^ select(vec4<i32>(63556i, arg_1.x, firstTrailingBit(-2147483647i << (u_input.b % 32u)), -2147483647i | _wgslsmith_div_i32(arg_1.x, -2147483647i)), countOneBits(select(_wgslsmith_div_vec4_i32(vec4<i32>(arg_2.a.x, arg_0.c.a.x, arg_1.x, 2147483647i), vec4<i32>(-21291i, -2147483647i, -1109i, arg_1.x)), min(vec4<i32>(arg_0.b.a.x, 53222i, arg_0.c.a.x, arg_1.x), vec4<i32>(-37838i, -24494i, 18724i, arg_2.a.x)), true)), !func_4(-2147483647i, arg_0.b.a.x, Struct_2(vec4<f32>(arg_3.x, arg_3.x, 1000f, arg_3.x), Struct_1(vec3<i32>(arg_1.x, arg_2.a.x, arg_1.x), arg_2.b), Struct_1(vec3<i32>(-1i, arg_0.b.a.x, arg_2.a.x), vec4<bool>(arg_2.b.x, global3[_wgslsmith_index_u32(u_input.b, 14u)], false, global1.x))), 249f));
    let var_2 = global2[_wgslsmith_index_u32(4294967295u, 25u)];
    var var_3 = global1.x || !(!global1.x);
    var var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(369f, -1701f, var_2.a.x, 336f)), var_2.a)) + var_2.a)), Struct_1(vec3<i32>(arg_2.a.x, 2147483647i, abs(-7154i)), vec4<bool>(global1.x, arg_1.x >= select(14386i, -2147483647i, arg_2.b.x), all(select(arg_0.c.b, vec4<bool>(var_2.c.b.x, arg_2.b.x, arg_2.b.x, false), arg_2.b)), true || var_2.c.b.x)), arg_0.c);
    return StorageBuffer(~29988u, ~(~(u_input.c.zx ^ _wgslsmith_add_vec2_u32(u_input.c.xw, u_input.c.ww))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 14>();
    let x = u_input.a;
    s_output = func_5(global2[_wgslsmith_index_u32(~27334u, 25u)], vec4<i32>(1i, 1i, 1i, 1i), Struct_1(vec3<i32>(select(-2147483647i, -29487i, global3[_wgslsmith_index_u32(2649u, 14u)]) | ~(-28481i), _wgslsmith_mod_i32(_wgslsmith_div_i32(-2147483647i, -2147483647i), 2147483647i), ~_wgslsmith_sub_i32(1i, 0i)), func_4(_wgslsmith_mod_i32(~1i, -1i << (u_input.c.x % 32u)), -17777i, Struct_2(_wgslsmith_f_op_vec4_f32(func_1(global0[_wgslsmith_index_u32(21120u, 10u)], vec4<bool>(true, global1.x, true, false), vec2<i32>(1i, 12483i), vec4<f32>(748f, -411f, 320f, 1254f))), Struct_1(global0[_wgslsmith_index_u32(u_input.b, 10u)], vec4<bool>(true, false, true, global3[_wgslsmith_index_u32(0u, 14u)])), Struct_1(global0[_wgslsmith_index_u32(47309u, 10u)], vec4<bool>(false, true, global1.x, global3[_wgslsmith_index_u32(u_input.c.x, 14u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1546f, 502f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(585f, 1373f, 910f)))));
}

