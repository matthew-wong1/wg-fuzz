struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec4<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: i32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 29>;

var<private> global1: array<Struct_3, 4>;

var<private> global2: array<bool, 4>;

var<private> global3: vec2<i32> = vec2<i32>(-18547i, 1i);

var<private> global4: vec2<bool>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> i32 {
    global3 = _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global3.x, global3.x), firstTrailingBit(vec2<i32>(1i, -2147483647i))), select(vec2<i32>(global3.x, -21336i) ^ vec2<i32>(0i, -15554i), vec2<i32>(global3.x, 1i) | vec2<i32>(2147483647i, -12412i), !global2[_wgslsmith_index_u32(4294967295u, 4u)])), _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, global3.x), _wgslsmith_add_vec2_i32(vec2<i32>(global3.x, global3.x), vec2<i32>(global3.x, global3.x)))), vec2<i32>(-73244i, -28196i));
    var var_0 = all(vec2<bool>(global2[_wgslsmith_index_u32(~(~min(u_input.a.x, 0u)), 4u)], global4.x));
    var var_1 = global3.x;
    var_0 = global2[_wgslsmith_index_u32(4294967295u, 4u)];
    var var_2 = ~_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-32116i, global3.x, 18988i), vec3<i32>(global3.x, 1i, global3.x), vec3<i32>(0i, global3.x, global3.x)), vec3<i32>(40656i, global3.x, global3.x), vec3<i32>(global3.x, global3.x, global3.x)) & max(vec3<i32>(global3.x, -2147483647i, global3.x), countOneBits(vec3<i32>(global3.x, -14882i, 36005i))), _wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(1i, 1498i, global3.x)), -vec3<i32>(global3.x, -3046i, global3.x)) >> (u_input.a.zzy % vec3<u32>(32u)));
    return abs(~reverseBits(select(63902i, -1i, global2[_wgslsmith_index_u32(26651u, 4u)]) | var_2.x));
}

fn func_2() -> StorageBuffer {
    global0 = array<Struct_4, 29>();
    let var_0 = (~func_3() ^ (select(global3.x, -global3.x, all(vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 4u)], global2[_wgslsmith_index_u32(65038u, 4u)], false))) >> (select(u_input.b.x, ~u_input.b.x, false) % 32u))) <= global3.x;
    return StorageBuffer(u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(158f, _wgslsmith_div_f32(-864f, 1467f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-250f - -420f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-207f + -1073f), _wgslsmith_f_op_f32(-781f - -362f))))), -_wgslsmith_dot_vec2_i32(-reverseBits(vec2<i32>(global3.x, global3.x)), abs(vec2<i32>(-38665i, global3.x) << (vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u)))));
}

fn func_1(arg_0: Struct_3) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-arg_0.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.b, arg_0.a.b.x, 1000f, 2152f), arg_0.c, global4.x)) + arg_0.c) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(arg_0.c, arg_0.c)), _wgslsmith_f_op_vec4_f32(-arg_0.c)))))));
    global2 = array<bool, 4>();
    let var_1 = vec4<i32>(-global3.x, firstLeadingBit(3219i), global3.x, 1i << (~u_input.a.x % 32u));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1011f), 443f, 1480f);
    global2 = array<bool, 4>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 177f;
    let x = u_input.a;
    s_output = func_1(global1[_wgslsmith_index_u32(~0u, 4u)]);
}

