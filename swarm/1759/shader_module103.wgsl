struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1;

var<private> global2: u32;

var<private> global3: array<vec2<bool>, 8> = array<vec2<bool>, 8>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    return vec4<bool>(global1.b, any(global3[_wgslsmith_index_u32((_wgslsmith_clamp_u32(global1.a.x, u_input.e, 26935u) ^ 6697u) | u_input.b.x, 8u)]), false, false && ((~10605u > reverseBits(u_input.b.x)) && !(!global1.b)));
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = ~(vec2<i32>(arg_0, ~(-arg_0)) | firstLeadingBit(-vec2<i32>(arg_0, arg_0) ^ -vec2<i32>(48938i, 67597i)));
    let var_1 = firstLeadingBit(var_0);
    let var_2 = Struct_1(select(~u_input.d, ~vec4<u32>(2717u, u_input.c, 1u, ~global1.c), select(!func_3(Struct_2(var_1)), !vec4<bool>(true, true, global1.b, true), select(vec4<bool>(true, global1.b, global1.b, true), !vec4<bool>(global1.b, true, true, true), false == global1.b))), false, 1u);
    let var_3 = -(vec4<i32>(18073i, 33562i, -67935i, i32(-1i) * -9723i) | (_wgslsmith_sub_vec4_i32(~vec4<i32>(2147483647i, var_0.x, arg_0, 1i), vec4<i32>(2147483647i, var_1.x, -26768i, -1i)) & -(~vec4<i32>(var_0.x, -2147483647i, 27477i, -13120i))));
    global1 = Struct_1(~(~var_2.a), ~(~(~0u)) == (1u ^ firstLeadingBit(_wgslsmith_add_u32(1u, global1.c))), abs(_wgslsmith_mod_u32(firstTrailingBit(~25687u), 0u)));
    return var_2;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> i32 {
    let var_0 = global3[_wgslsmith_index_u32(~1u, 8u)];
    var var_1 = ~4294967295u;
    let var_2 = Struct_3(-1045f, func_2(~29948i));
    return -_wgslsmith_sub_i32(-(arg_1.x << (var_2.b.c % 32u)), select(_wgslsmith_mult_i32(arg_1.x, 1i), 1i, true)) << (_wgslsmith_div_u32(4294967295u, 27117u) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(979f, 358f))), vec2<f32>(-1176f, 1063f)));
    let var_1 = global1.a.x;
    global0 = all(vec3<bool>(any(select(vec4<bool>(global1.b, false, global1.b, true), select(vec4<bool>(global1.b, true, global1.b, true), vec4<bool>(global1.b, true, global1.b, true), global1.b), true)), any(global3[_wgslsmith_index_u32(~(u_input.b.x & u_input.a), 8u)]), false));
    let var_2 = Struct_2(_wgslsmith_add_vec2_i32(vec2<i32>(func_1(Struct_1(u_input.d, false, u_input.d.x), vec4<i32>(-5902i, 0i, 14925i, -45539i)), 1i) | -_wgslsmith_sub_vec2_i32(vec2<i32>(23252i, -1i), vec2<i32>(1838i, 2147483647i)), vec2<i32>(func_1(func_2(0i), ~vec4<i32>(-1i, 51515i, -2147483647i, 0i)), -1i)));
    global2 = 64880u;
    var var_3 = Struct_2((vec2<i32>(-1i) * -var_2.a) | vec2<i32>(~firstTrailingBit(var_2.a.x), ~reverseBits(-44603i)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~(-vec3<i32>(var_2.a.x, var_3.a.x, var_2.a.x))), abs(-(vec4<i32>(-2881i, var_3.a.x, -14036i, -2147483647i) >> (vec4<u32>(4294967295u, global1.c, global1.c, global1.c) % vec4<u32>(32u)))), firstTrailingBit(-(~(~var_3.a.x))), _wgslsmith_mult_i32(-var_2.a.x, -firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_2.a.x, 26962i), vec3<i32>(37737i, 1i, 5435i)))));
}

