struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11> = array<f32, 11>(-308f, -1028f, 1451f, 390f, -747f, -1000f, 305f, -1841f, -2054f, -238f, 1195f);

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(0u, vec3<i32>(2147483647i, 0i, -24690i)), Struct_1(50533u, vec3<i32>(1i, 11164i, -32274i)), Struct_1(40290u, vec3<i32>(-36572i, 0i, -8571i)), Struct_1(4294967295u, vec3<i32>(2147483647i, -32179i, -1i)), Struct_1(4294967295u, vec3<i32>(-1i, 56685i, -30707i)), Struct_1(16162u, vec3<i32>(42317i, -1i, -1889i)), Struct_1(1u, vec3<i32>(-4926i, 0i, i32(-2147483648))), Struct_1(1u, vec3<i32>(10567i, 41524i, 2147483647i)), Struct_1(53139u, vec3<i32>(1i, 7068i, 11777i)));

var<private> global2: vec3<u32>;

var<private> global3: u32 = 4294967295u;

var<private> global4: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(24969u, vec3<i32>(0i, 0i, 17042i)), Struct_1(4294967295u, vec3<i32>(-31610i, 2147483647i, -67107i)), Struct_1(7253u, vec3<i32>(64167i, -9547i, 84769i)), Struct_1(0u, vec3<i32>(2147483647i, 27911i, 10855i)), Struct_1(16211u, vec3<i32>(2147483647i, -63830i, 30122i)), Struct_1(37407u, vec3<i32>(-8876i, 1729i, 35764i)), Struct_1(21707u, vec3<i32>(-34513i, i32(-2147483648), 2876i)), Struct_1(4294967295u, vec3<i32>(i32(-2147483648), 2147483647i, 40750i)), Struct_1(0u, vec3<i32>(-1i, 1i, -1i)), Struct_1(0u, vec3<i32>(i32(-2147483648), 2147483647i, -21809i)), Struct_1(0u, vec3<i32>(i32(-2147483648), -19325i, 27650i)), Struct_1(33501u, vec3<i32>(i32(-2147483648), 1i, -1i)), Struct_1(0u, vec3<i32>(-63694i, -49358i, 2234i)), Struct_1(36322u, vec3<i32>(-1i, -1i, 1i)), Struct_1(0u, vec3<i32>(-48755i, 0i, 35777i)), Struct_1(28168u, vec3<i32>(-14587i, -62387i, -1i)), Struct_1(49537u, vec3<i32>(2147483647i, 47842i, 47368i)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: Struct_1) -> bool {
    var var_0 = arg_2.b;
    var var_1 = Struct_1(firstLeadingBit(global2.x) >> (4294967295u % 32u), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(min(87448i, arg_1.x), 1i), var_0.x), _wgslsmith_mult_i32(1i, -_wgslsmith_add_i32(1i, arg_2.b.x)), arg_2.b.x));
    let var_2 = Struct_1(0u, min(u_input.a.zyx, u_input.a.zyy));
    let var_3 = Struct_1(0u, -(~(~(vec3<i32>(u_input.a.x, 0i, 1i) >> (vec3<u32>(0u, u_input.b.x, 4294967295u) % vec3<u32>(32u))))));
    global1 = array<Struct_1, 9>();
    return (u_input.a.x >= ((-1i >> (global2.x % 32u)) | var_0.x)) & any(!vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 11u)] < 1011f, all(vec4<bool>(true, false, false, false)), true));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1373f, 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-587f, global0[_wgslsmith_index_u32(global2.x, 11u)])) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.b.x, 11u)]))))) - _wgslsmith_f_op_f32(-arg_0.x));
    var var_1 = Struct_1(64458u, abs(arg_1.xzx));
    let var_2 = ~(u_input.b.xy << (u_input.b.xx % vec2<u32>(32u)));
    var var_3 = arg_1.wy;
    global2 = u_input.b.xyx;
    return global2.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global3 = arg_3.a;
    let var_0 = Struct_1(1u, arg_2.b);
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1167f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(795f * -234f), global0[_wgslsmith_index_u32(arg_3.a, 11u)]))), _wgslsmith_f_op_f32(ceil(1075f))));
    var var_2 = var_0;
    global0 = array<f32, 11>();
    return abs(_wgslsmith_clamp_u32(0u, 4294967295u, arg_2.a));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(reverseBits(0u), 11u)]);
    let var_1 = !func_2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.b.x, 11u)], var_0)), var_0, -1373f))), u_input.a.wy, global1[_wgslsmith_index_u32(select(~(u_input.c ^ 0u), _wgslsmith_clamp_u32(global2.x, ~3386u, 1u), false), 9u)]);
    var var_2 = global4[_wgslsmith_index_u32(~(func_4(global4[_wgslsmith_index_u32(~38842u | abs(global2.x), 17u)], global1[_wgslsmith_index_u32(~firstTrailingBit(u_input.b.x), 9u)], Struct_1(global2.x, ~u_input.a.xzw), global4[_wgslsmith_index_u32(~func_3(vec4<f32>(global0[_wgslsmith_index_u32(global2.x, 11u)], 346f, -672f, var_0), u_input.a), 17u)]) << (abs(min(global2.x, u_input.b.x)) % 32u)), 17u)];
    var_2 = Struct_1(global2.x & 55325u, -max(u_input.a.yyy, vec3<i32>(u_input.a.x, ~u_input.a.x, firstTrailingBit(1i))));
    var var_3 = reverseBits(~(-firstTrailingBit(_wgslsmith_sub_vec4_i32(u_input.a, u_input.a))));
    return global1[_wgslsmith_index_u32(1u, 9u)];
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 17>();
    let var_0 = u_input.a.x;
    let var_1 = vec4<f32>(1f, -1622f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global2.x, 11u)])), -873f);
    global3 = global2.x;
    var var_2 = func_1();
    let var_3 = Struct_1(countOneBits(_wgslsmith_mod_u32(global2.x, countOneBits(~4294967295u))), var_2.b);
    let var_4 = var_3;
    var var_5 = global2.yx;
    let x = u_input.a;
    s_output = StorageBuffer(~(~firstTrailingBit(~u_input.b)), vec3<i32>(func_1().b.x, -10433i, min(u_input.a.x, var_0 ^ _wgslsmith_sub_i32(17141i, var_3.b.x))), func_1().b.x, vec4<u32>(var_3.a, var_4.a, firstTrailingBit(_wgslsmith_dot_vec3_u32(~u_input.b.yyz, u_input.b.yww)), 1u));
}

