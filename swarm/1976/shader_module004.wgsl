struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<vec2<bool>, 6> = array<vec2<bool>, 6>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false));

var<private> global2: Struct_2 = Struct_2(vec4<f32>(-1243f, 1000f, -1011f, 1000f), Struct_1(i32(-2147483648), -539f, true, vec3<f32>(-188f, -712f, 313f), false), -603f);

var<private> global3: bool;

var<private> global4: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(vec3<i32>(2147483647i, i32(-2147483648), 9471i), 2147483647i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> vec4<i32> {
    return _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(2147483647i, global2.b.a) | (u_input.b.x >> (4294967295u % 32u)), _wgslsmith_add_i32(select(global2.b.a, -2147483647i, arg_0), u_input.b.x)), ~u_input.b.x, abs(global2.b.a), 1i), vec4<i32>(1i, ~10628i, 1i & firstTrailingBit(1i), min(firstTrailingBit(~global2.b.a), _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(0i, u_input.b.x)) & _wgslsmith_div_i32(u_input.b.x, u_input.b.x))));
}

fn func_2() -> Struct_2 {
    global4 = array<Struct_3, 1>();
    var var_0 = -(~firstTrailingBit(func_3(!global2.b.c)));
    let var_1 = ~_wgslsmith_sub_i32(firstTrailingBit(-_wgslsmith_sub_i32(0i, var_0.x)), 13781i);
    var var_2 = !vec3<bool>(-1i == (_wgslsmith_sub_i32(0i, var_0.x) & ~(-59884i)), !global2.b.c, global2.b.c);
    let var_3 = u_input.a;
    return Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.b.d.x, global2.c))), global2.a.x, -897f, global2.a.x)), global2.b, global2.b.b);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: bool) -> Struct_1 {
    global3 = all(vec2<bool>(false, arg_0.c));
    global4 = array<Struct_3, 1>();
    var var_0 = Struct_2(arg_2.a, arg_0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.c - _wgslsmith_f_op_f32(arg_0.d.x + _wgslsmith_f_op_f32(sign(-803f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b - _wgslsmith_f_op_f32(arg_0.d.x + global2.b.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -1118f)))));
    global3 = var_0.b.e;
    global3 = all(select(!(!select(vec4<bool>(false, false, true, arg_3), vec4<bool>(arg_3, arg_2.b.c, true, arg_0.e), true)), vec4<bool>(arg_3, any(global1[_wgslsmith_index_u32(firstTrailingBit(global0.x), 6u)]), true || select(false, var_0.b.c, false), !arg_2.b.e), vec4<bool>(!arg_0.c && true, !all(vec3<bool>(global2.b.e, true, global2.b.c)), true, false)));
    return global2.b;
}

fn func_1(arg_0: Struct_3, arg_1: i32) -> f32 {
    global1 = array<vec2<bool>, 6>();
    var var_0 = u_input.b;
    let var_1 = vec2<bool>(_wgslsmith_f_op_f32(trunc(global2.c)) > global2.b.d.x, global2.b.c);
    let var_2 = Struct_1(arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -934f)) * _wgslsmith_f_op_f32(-global2.c)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(global2.a.x))))), !(!global2.b.c), global2.a.ywy, any(select(!vec2<bool>(var_1.x, global2.b.e), var_1, vec2<bool>(select(global2.b.e, var_1.x, false), var_1.x))));
    let var_3 = Struct_2(global2.a, func_4(Struct_1(firstTrailingBit(arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-778f + 1214f)), false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.b.d)), var_2.c), firstTrailingBit(select(~vec3<u32>(u_input.a.x, global0.x, global0.x), ~vec3<u32>(4294967295u, global0.x, 0u), var_2.c)), func_2(), global2.b.e), _wgslsmith_f_op_f32(select(1376f, global2.c, false)));
    return -1038f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~select(u_input.a.yxx, min(u_input.a.yyy, vec3<u32>(global0.x, global0.x, global0.x)), global2.b.c)));
    let var_1 = _wgslsmith_f_op_f32(select(global2.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x + -1264f)))), true));
    global2 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1013f + global2.a.x) + _wgslsmith_f_op_f32(var_1 * global2.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_3(vec3<i32>(u_input.b.x, u_input.b.x, 7924i), u_input.b.x), u_input.b.x)) + -490f), _wgslsmith_div_f32(2393f, _wgslsmith_f_op_f32(-465f * var_1)), var_1)), global2.b, _wgslsmith_f_op_f32(-var_1));
    var var_2 = select(global1[_wgslsmith_index_u32(~(~(abs(var_0.x) << (4294967295u % 32u))), 6u)], !vec2<bool>(true, select(true, any(vec4<bool>(false, global2.b.e, true, global2.b.e)), global2.b.e)), !global1[_wgslsmith_index_u32(~(~max(29888u, u_input.a.x)), 6u)]);
    var var_3 = -_wgslsmith_div_vec3_i32(-abs(firstTrailingBit(vec3<i32>(global2.b.a, -4475i, u_input.b.x))), _wgslsmith_add_vec3_i32(vec3<i32>(firstLeadingBit(2147483647i), countOneBits(22760i), 45095i), ~(~vec3<i32>(global2.b.a, 45865i, global2.b.a))));
    var var_4 = func_2().b;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, ~11141u, 8649u));
}

