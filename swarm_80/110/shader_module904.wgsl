struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<vec4<bool>, 12>;

var<private> global2: array<vec4<u32>, 21>;

var<private> global3: Struct_1 = Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: vec4<bool>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1408f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(721f - _wgslsmith_f_op_f32(f32(-1f) * -547f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2168f))))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-531f)))))));
    let var_1 = Struct_3(arg_0.x);
    global2 = array<vec4<u32>, 21>();
    let var_2 = arg_0 >> (global3.a.zx % vec2<u32>(32u));
    var var_3 = Struct_1(u_input.e.zxw);
    return -reverseBits(abs(~vec4<i32>(0i, global0.x, global0.x, 15139i)) ^ vec4<i32>(4346i, global0.x, ~u_input.c, ~u_input.b));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> Struct_3 {
    var var_0 = Struct_2(vec2<i32>(-1i) * -vec2<i32>(global0.x, global0.x));
    var_0 = Struct_2(-_wgslsmith_mod_vec2_i32(~_wgslsmith_sub_vec2_i32(arg_1.a, arg_1.a), var_0.a));
    return Struct_3(u_input.d);
}

fn func_1() -> Struct_2 {
    var var_0 = 1000f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(919f * 1f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(549f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(558f))))));
    let var_1 = func_3(max(_wgslsmith_dot_vec4_i32(-func_2(vec2<u32>(global3.a.x, u_input.a), true, vec4<bool>(false, false, false, true)), firstLeadingBit(vec4<i32>(u_input.c, global0.x, -28413i, u_input.b)) | _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, -16925i, global0.x, global0.x), vec4<i32>(-38864i, u_input.c, u_input.b, u_input.b))), global0.x << (5898u % 32u)), Struct_2(-(~(~global0.yz))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-240f)) - -484f) + _wgslsmith_f_op_f32(846f - 1156f)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(443f, -260f))))))));
    return Struct_2(_wgslsmith_clamp_vec2_i32(global0.zy, vec2<i32>(28120i, i32(-1i) * -55238i), _wgslsmith_mod_vec2_i32(max(~vec2<i32>(-2147483647i, u_input.b), global0.xz), vec2<i32>(38688i, 2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<i32>(-_wgslsmith_mod_i32(select(2147483647i, global0.x, true), u_input.c & -51578i), -1i));
    var var_1 = func_1();
    let var_2 = _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(abs((vec4<u32>(1u, 46954u, global3.a.x, 47512u) >> (global2[_wgslsmith_index_u32(1u, 21u)] % vec4<u32>(32u))) ^ min(vec4<u32>(146661u, 1u, 50771u, u_input.d), vec4<u32>(31640u, 4294967295u, 40032u, 13857u))), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(u_input.a, global3.a.x), global3.a.x, global3.a.x | u_input.a, 13547u), global2[_wgslsmith_index_u32(~4294967295u, 21u)])), u_input.e);
    let var_3 = Struct_2(func_1().a);
    var_1 = var_3;
    var var_4 = var_3;
    var_0 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(~5475u, select(var_2.x, global3.a.x, true), var_3.a.x << ((~0u << (var_2.x % 32u)) % 32u));
}

