struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<bool>,
    d: f32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: Struct_3,
    d: vec3<bool>,
}

struct Struct_5 {
    a: i32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 22> = array<Struct_5, 22>(Struct_5(1i, vec4<bool>(false, false, true, false)), Struct_5(-864i, vec4<bool>(true, true, true, true)), Struct_5(-29764i, vec4<bool>(false, true, true, false)), Struct_5(0i, vec4<bool>(true, false, true, false)), Struct_5(2147483647i, vec4<bool>(true, true, true, false)), Struct_5(-1i, vec4<bool>(false, false, true, false)), Struct_5(7681i, vec4<bool>(true, true, false, true)), Struct_5(31501i, vec4<bool>(true, true, false, false)), Struct_5(34640i, vec4<bool>(false, false, true, false)), Struct_5(33386i, vec4<bool>(true, false, false, true)), Struct_5(-1i, vec4<bool>(true, true, false, true)), Struct_5(0i, vec4<bool>(true, false, true, false)), Struct_5(86745i, vec4<bool>(false, false, true, false)), Struct_5(2147483647i, vec4<bool>(false, false, true, true)), Struct_5(39056i, vec4<bool>(true, false, false, true)), Struct_5(i32(-2147483648), vec4<bool>(true, false, true, true)), Struct_5(7021i, vec4<bool>(true, false, false, true)), Struct_5(-1i, vec4<bool>(true, true, false, false)), Struct_5(30985i, vec4<bool>(true, false, false, true)), Struct_5(16197i, vec4<bool>(true, true, true, true)), Struct_5(98847i, vec4<bool>(true, false, false, false)), Struct_5(-19032i, vec4<bool>(false, false, false, false)));

var<private> global1: array<f32, 21> = array<f32, 21>(669f, -1000f, -378f, 2079f, 611f, 259f, 1000f, 464f, 2983f, 908f, -1000f, -840f, -739f, 1935f, 261f, -1895f, 203f, 1068f, 475f, 1000f, -760f);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 21>();
    global0 = array<Struct_5, 22>();
    global1 = array<f32, 21>();
    let var_0 = _wgslsmith_f_op_f32(105f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -257f)));
    global1 = array<f32, 21>();
    global1 = array<f32, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - -408f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 21u)] * -511f))), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x | u_input.c.x, 21u)]))), -2170f, -829f), ~_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -10505i, 2147483647i, -54074i), vec4<i32>(77507i, -24201i, -10040i, 0i), vec4<i32>(2147483647i, -2147483647i, 24640i, -28053i)), _wgslsmith_sub_vec4_i32(vec4<i32>(55657i, 2789i, 21938i, -2147483647i), vec4<i32>(1i, -50131i, 5671i, 0i))) & vec4<i32>(2147483647i, -2147483647i, _wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, 22873i), _wgslsmith_add_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(0i, 1i))), countOneBits(1i)), -2147483647i);
}

