struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9>;

var<private> global1: array<vec3<bool>, 2>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: u32) -> u32 {
    let var_0 = -434f;
    global1 = array<vec3<bool>, 2>();
    global0 = array<i32, 9>();
    var var_1 = Struct_1(1000f);
    var var_2 = any(select(select(global1[_wgslsmith_index_u32(4294967295u, 2u)], global1[_wgslsmith_index_u32(13181u, 2u)], !global1[_wgslsmith_index_u32(arg_0, 2u)]), vec3<bool>(any(global1[_wgslsmith_index_u32(~4294967295u, 2u)]), any(global1[_wgslsmith_index_u32(4294967295u, 2u)]) && true, !select(false, true, false)), select(!global1[_wgslsmith_index_u32(u_input.b.x << (54730u % 32u), 2u)], select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), vec3<bool>(true, false, false)), all(vec3<bool>(false, false, true)))));
    return 1u;
}

fn func_3() -> bool {
    var var_0 = ~vec4<u32>(44505u, 12006u, ((u_input.b.x >> (u_input.b.x % 32u)) >> (~0u % 32u)) & ~(~u_input.b.x), u_input.b.x);
    let var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(~reverseBits(vec2<i32>(u_input.c.x, u_input.c.x)), max(abs(vec2<i32>(2147483647i, -27743i)), _wgslsmith_mult_vec2_i32(vec2<i32>(30275i, global0[_wgslsmith_index_u32(u_input.b.x, 9u)]), u_input.c.wx))), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(select(u_input.c.yz, vec2<i32>(-2147483647i, 5289i), false), u_input.c.zw), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), abs(vec2<i32>(1i, 12026i)))), u_input.c.x), firstLeadingBit(vec3<i32>(2147483647i, firstTrailingBit(reverseBits(0i)), u_input.c.x & (i32(-1i) * -1833i))));
    let var_2 = Struct_1(-310f);
    var_0 = ~abs(firstTrailingBit(vec4<u32>(25887u, 14686u, 9011u, 33824u) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_0.x, 1u, 88839u), vec4<u32>(1u, var_0.x, var_0.x, 5875u)) % vec4<u32>(32u))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(step(-128f, var_2.a)), _wgslsmith_f_op_f32(max(var_2.a, var_2.a)), _wgslsmith_f_op_f32(abs(-1557f)), var_2.a))))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(814f, var_2.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.a), -233f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(var_2.a, var_2.a, false))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1938f, -327f, 306f, _wgslsmith_div_f32(311f, var_2.a))), !vec4<bool>(true, true, all(global1[_wgslsmith_index_u32(1u, 2u)]), true))));
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec4<bool>, arg_3: Struct_1) -> i32 {
    var var_0 = select(select(firstLeadingBit(u_input.b.yy), countOneBits(vec2<u32>(u_input.b.x, u_input.b.x) | vec2<u32>(u_input.b.x, 0u)) | vec2<u32>(_wgslsmith_add_u32(4672u, u_input.b.x), ~1u), all(!(!vec4<bool>(false, arg_1, arg_2.x, true)))), u_input.b.zx, arg_2.zy);
    var var_1 = Struct_1(-1030f);
    var_0 = ~(~_wgslsmith_add_vec2_u32(u_input.b.xz, u_input.b.yz));
    var var_2 = ~(~_wgslsmith_mult_u32(0u, u_input.b.x));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(abs(-793f)));
    return reverseBits(_wgslsmith_sub_i32(i32(-1i) * -1i, global0[_wgslsmith_index_u32(u_input.b.x, 9u)]));
}

fn func_2() -> i32 {
    global1 = array<vec3<bool>, 2>();
    global0 = array<i32, 9>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(min(-1088f, 1f)));
    var var_1 = Struct_1(-1000f);
    return func_4(Struct_1(_wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(-var_1.a))), true | (true | !(global0[_wgslsmith_index_u32(0u, 9u)] > 0i)), !vec4<bool>(!func_3(), select(true, all(vec4<bool>(true, false, true, true)), true), true, true), Struct_1(_wgslsmith_f_op_f32(-var_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    global0 = array<i32, 9>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(abs(33197u)), _wgslsmith_sub_u32(func_1(u_input.b.x << (u_input.b.x % 32u)) >> (~0u % 32u), ~u_input.b.x)), 9u)];
    let var_2 = 0u;
    var_1 = _wgslsmith_add_i32(~_wgslsmith_mult_i32(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(countOneBits(var_2), 9u)], 27080i), u_input.a.x), func_2());
    let var_3 = Struct_1(_wgslsmith_f_op_f32(min(-517f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-770f)))) - _wgslsmith_f_op_f32(f32(-1f) * -1696f)))));
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_clamp_vec2_u32(max(u_input.b.xx, u_input.b.yy), u_input.b.yx >> (vec2<u32>(380u, u_input.b.x) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(u_input.b.yx, u_input.b.yx)) ^ ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, var_2), u_input.b.yx)) & u_input.b.xz);
}

