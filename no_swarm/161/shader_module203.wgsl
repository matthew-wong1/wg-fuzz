struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4> = array<i32, 4>(-17200i, 0i, i32(-2147483648), 1i);

var<private> global1: array<vec3<u32>, 18>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec3<i32>, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_1(true, vec3<u32>(~(~u_input.c), firstTrailingBit(0u), u_input.c) << (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 59921u, ~13461u), ~global1[_wgslsmith_index_u32(~u_input.c, 18u)]) % vec3<u32>(32u)), !(!(!(u_input.c <= u_input.a))));
    global0 = array<i32, 4>();
    return Struct_1((!select(false, false, var_0.a) != true) && true, var_0.b >> (firstLeadingBit(vec3<u32>(abs(36734u), 4294967295u, 0u)) % vec3<u32>(32u)), !any(!select(vec3<bool>(false, var_0.c, true), vec3<bool>(false, var_0.c, var_0.a), var_0.c)));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    global1 = array<vec3<u32>, 18>();
    var var_0 = vec4<i32>(~0i, ~14847i, 0i, _wgslsmith_add_i32(u_input.b.x, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(63886u, 46680u), 4u)]));
    var var_1 = ~(-_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(-11063i, 4238i, u_input.b.x, 0i)), firstLeadingBit(vec4<i32>(var_0.x, 1i, u_input.d.x, 48162i)))) >> (select(arg_0.b.x, 4294967295u, true) % 32u);
    let var_2 = vec4<bool>(firstLeadingBit(arg_0.b.x) <= u_input.c, !select(select(true, arg_0.a, arg_0.c), false, true) & !(!(arg_0.b.x < u_input.a)), true, false && (arg_1 || true));
    global0 = array<i32, 4>();
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> f32 {
    let var_0 = -240f;
    return var_0;
}

fn func_1(arg_0: u32) -> StorageBuffer {
    return StorageBuffer(_wgslsmith_f_op_f32(func_4(func_3(func_2(u_input.b.x, 841f, u_input.b.wwz, vec4<f32>(-1279f, -145f, 263f, -1417f)), false), func_2(-2147483647i, _wgslsmith_f_op_f32(f32(-1f) * -293f), vec3<i32>(1i, global0[_wgslsmith_index_u32(u_input.c & 4294967295u, 4u)], _wgslsmith_dot_vec2_i32(u_input.b.zx, u_input.d.yy)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1317f, -107f, -254f, 1000f) + vec4<f32>(-1551f, 1695f, -1000f, 1000f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1212f, -678f, 875f, 1698f)))))), ~0i)), ~firstLeadingBit(reverseBits(arg_0 >> (28825u % 32u))), _wgslsmith_div_vec3_u32(~firstLeadingBit(min(global1[_wgslsmith_index_u32(arg_0, 18u)], vec3<u32>(u_input.c, 1u, arg_0))), global1[_wgslsmith_index_u32(1u, 18u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-785f, 282f) - vec2<f32>(602f, 565f))), vec2<f32>(_wgslsmith_f_op_f32(ceil(316f)), _wgslsmith_f_op_f32(floor(1182f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 4>();
    var var_0 = global1[_wgslsmith_index_u32(u_input.a, 18u)];
    var var_1 = -6728i;
    let x = u_input.a;
    s_output = func_1(~(~u_input.c));
}

