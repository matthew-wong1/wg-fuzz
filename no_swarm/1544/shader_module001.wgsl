struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec3<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<Struct_3, 3>;

var<private> global2: array<Struct_4, 23> = array<Struct_4, 23>(Struct_4(vec2<u32>(81183u, 44041u)), Struct_4(vec2<u32>(4294967295u, 1u)), Struct_4(vec2<u32>(4294967295u, 36545u)), Struct_4(vec2<u32>(4294967295u, 123739u)), Struct_4(vec2<u32>(56130u, 4294967295u)), Struct_4(vec2<u32>(91270u, 4294967295u)), Struct_4(vec2<u32>(52510u, 1u)), Struct_4(vec2<u32>(35497u, 1u)), Struct_4(vec2<u32>(33036u, 4294967295u)), Struct_4(vec2<u32>(826u, 52526u)), Struct_4(vec2<u32>(1u, 79419u)), Struct_4(vec2<u32>(1u, 6054u)), Struct_4(vec2<u32>(20632u, 4294967295u)), Struct_4(vec2<u32>(65660u, 0u)), Struct_4(vec2<u32>(128u, 1u)), Struct_4(vec2<u32>(1u, 59808u)), Struct_4(vec2<u32>(39587u, 53526u)), Struct_4(vec2<u32>(32405u, 44989u)), Struct_4(vec2<u32>(0u, 111323u)), Struct_4(vec2<u32>(62127u, 2995u)), Struct_4(vec2<u32>(4294967295u, 1u)), Struct_4(vec2<u32>(83052u, 4986u)), Struct_4(vec2<u32>(0u, 0u)));

var<private> global3: Struct_1 = Struct_1(false, vec3<bool>(true, true, true), vec3<u32>(1u, 0u, 92933u), false);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: vec3<u32>) -> i32 {
    global3 = arg_1;
    global2 = array<Struct_4, 23>();
    return 1i;
}

fn func_2(arg_0: vec4<f32>) -> bool {
    global0 = 0u;
    let var_0 = firstTrailingBit(-reverseBits(_wgslsmith_div_i32(39875i, func_3(u_input.a.x, Struct_1(global3.b.x, global3.b, u_input.a, false), 4294967295u, vec3<u32>(4294967295u, u_input.a.x, global3.c.x)))));
    global2 = array<Struct_4, 23>();
    global2 = array<Struct_4, 23>();
    let var_1 = _wgslsmith_f_op_f32(-927f - _wgslsmith_f_op_f32(min(-1414f, _wgslsmith_div_f32(arg_0.x, arg_0.x))));
    return any(select(vec2<bool>(_wgslsmith_div_f32(-668f, 2144f) < _wgslsmith_f_op_f32(round(arg_0.x)), any(vec4<bool>(true, true, true, true))), vec2<bool>(global3.d == (arg_0.x <= arg_0.x), (var_0 <= var_0) && global3.d), vec2<bool>(!all(vec2<bool>(false, true)), false)));
}

fn func_1() -> Struct_2 {
    global0 = u_input.a.x;
    global0 = 1u;
    var var_0 = !vec2<bool>(~(2147483647i >> (1u % 32u)) < u_input.b.x, func_2(vec4<f32>(_wgslsmith_f_op_f32(select(1154f, 226f, global3.b.x)), _wgslsmith_f_op_f32(-571f - 793f), _wgslsmith_f_op_f32(1120f - -1000f), -1331f)));
    let var_1 = u_input.b.xzy;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-137f + _wgslsmith_f_op_f32(-188f - 286f)), 1f)));
    return Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 - var_2)), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2)) + var_2), var_2), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2, var_2, var_2, var_2), vec4<f32>(401f, -592f, var_2, 929f), global3.a)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(238f, -1809f, -250f, var_2)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1170f, var_2, var_2, -524f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_2, 387f, var_2)))))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: bool) -> Struct_1 {
    var var_0 = arg_0.a;
    global3 = Struct_1(!(176f >= _wgslsmith_f_op_f32(975f - arg_0.a.x)) || all(select(vec3<bool>(global3.d, false, arg_2), !global3.b, false)), global3.b, vec3<u32>(0u, 0u, 0u), arg_2);
    return Struct_1(all(!global3.b), global3.b, ~(~global3.c), true);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_4(func_1(), 1528f, false);
    let var_0 = global2[_wgslsmith_index_u32(u_input.a.x, 23u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(345f, -501f, 1000f, -851f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1304f, -664f, -1000f, -1000f), vec4<f32>(798f, -926f, -392f, 245f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(151f, 306f, -330f, -1128f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-241f, -2796f, -372f, -942f))))));
    global1 = array<Struct_3, 3>();
    global2 = array<Struct_4, 23>();
    var var_2 = 1i ^ _wgslsmith_sub_i32((1i & func_3(4294967295u, Struct_1(false, vec3<bool>(global3.a, true, false), vec3<u32>(global3.c.x, 6304u, var_0.a.x), true), 4294967295u, u_input.a)) << (~firstLeadingBit(1u) % 32u), -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~u_input.b.x, 0i), global3.c.x, 31730i, ~1u);
}

