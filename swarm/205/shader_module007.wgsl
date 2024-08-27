struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<u32> = vec2<u32>(0u, 0u);

var<private> global2: array<Struct_1, 15>;

var<private> global3: Struct_1 = Struct_1(vec4<i32>(-1i, -27389i, 2147483647i, i32(-2147483648)), 0u, -1524f, vec4<u32>(4294967295u, 32103u, 0u, 0u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32) -> vec4<bool> {
    global3 = global2[_wgslsmith_index_u32(73069u, 15u)];
    let var_0 = firstTrailingBit(vec3<u32>(~_wgslsmith_clamp_u32(20582u, 16087u, 46180u), global1.x, global1.x) | _wgslsmith_add_vec3_u32(~abs(vec3<u32>(global3.b, 77584u, global3.b)), ~global3.d.zwz));
    var var_1 = false;
    var var_2 = select(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(8737u, var_0.x) | ~global1.x, var_0.x), select(select(abs(vec2<u32>(global1.x, global3.b)), ~vec2<u32>(1u, var_0.x), false), vec2<u32>(min(4294967295u, global1.x), _wgslsmith_mult_u32(var_0.x, 4294967295u)), select(vec2<bool>(true, true), vec2<bool>(true, true), false))), var_0.xz, select(select(vec2<bool>(true, false), vec2<bool>(true, true), any(vec3<bool>(true, true, true))), !select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(false, false), vec2<bool>(true, true)), all(vec2<bool>(true, true))));
    global2 = array<Struct_1, 15>();
    return select(vec4<bool>(all(vec2<bool>(true, true)), select(true, false, !select(true, false, true)), false, true), vec4<bool>(!(!all(vec4<bool>(false, false, true, true))), all(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), true, true), !vec4<bool>(true, any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-global3.c) <= global3.c, all(vec3<bool>(true, true, true))));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: Struct_2) -> bool {
    let var_0 = 39055i;
    var var_1 = arg_2;
    var var_2 = arg_2.a.a.x;
    var var_3 = !func_3(arg_3.e);
    global1 = ~(~(~vec2<u32>(_wgslsmith_dot_vec2_u32(arg_0.a.d.zw, vec2<u32>(arg_0.a.d.x, global3.d.x)), 80804u)));
    return true;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<f32>) -> u32 {
    var var_0 = !select(vec4<bool>(true, !func_2(Struct_2(global2[_wgslsmith_index_u32(global1.x, 15u)], global3.c, global3.a.x, Struct_1(global3.a, 0u, global3.c, vec4<u32>(1u, 64922u, 0u, global3.d.x)), u_input.b), vec2<bool>(false, true), Struct_2(global2[_wgslsmith_index_u32(0u, 15u)], global3.c, -10724i, Struct_1(global3.a, 1u, 299f, vec4<u32>(64485u, global3.b, global1.x, 44207u)), -1i), Struct_2(Struct_1(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.b), global1.x, arg_1.x, global3.d), global3.c, 0i, global2[_wgslsmith_index_u32(119169u, 15u)], -1i)), all(vec3<bool>(true, true, true)), true), vec4<bool>(true, true, true, true), select(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true), all(vec4<bool>(true, false, true, false))));
    let var_1 = select(_wgslsmith_add_vec2_i32(vec2<i32>(12371i, 0i), firstTrailingBit(vec2<i32>(-8304i, -18753i) >> (global3.d.xz % vec2<u32>(32u)))) >> (_wgslsmith_sub_vec2_u32(global3.d.wx, vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 22770u, 8633u), vec3<u32>(global1.x, global1.x, 0u)), ~global3.b)) % vec2<u32>(32u)), global3.a.xz, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-460f, arg_0.x) - -916f) >= _wgslsmith_f_op_f32(f32(-1f) * -1123f));
    var var_2 = Struct_3(Struct_1(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(~global3.a, global3.a), vec4<i32>(-35291i | u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -45853i, var_1.x, 1683i), global3.a), -6416i, u_input.b ^ 76135i)), ~(~(~global1.x)), global3.c, vec4<u32>(global3.d.x, ~firstLeadingBit(global1.x), 36042u, ~global3.d.x)));
    let var_3 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.wxx) * vec3<f32>(global3.c, arg_1.x, 1000f))))))));
    return _wgslsmith_div_u32(~_wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec4_u32(global3.d, vec4<u32>(13751u, 4294967295u, var_2.a.b, 50304u))), _wgslsmith_dot_vec4_u32(~(vec4<u32>(global3.d.x, 1u, 13392u, global1.x) | vec4<u32>(global1.x, 0u, 4294967295u, 4294967295u)), firstLeadingBit(global3.d << (vec4<u32>(global1.x, 1u, global1.x, global3.d.x) % vec4<u32>(32u))))) ^ _wgslsmith_dot_vec3_u32(global3.d.xxz, _wgslsmith_div_vec3_u32(vec3<u32>(~var_2.a.d.x, 50734u, ~global1.x), ~global3.d.ywz & vec3<u32>(44719u, 0u, global3.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32(global3.b ^ func_1(vec4<f32>(global3.c, -599f, _wgslsmith_f_op_f32(780f * 192f), _wgslsmith_f_op_f32(abs(433f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(global3.c, global3.c), vec2<f32>(1236f, -1822f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(2829f, 2640f), vec2<f32>(1335f, -282f), false))))), ~(~8269u));
    let var_1 = Struct_3(global2[_wgslsmith_index_u32(26198u, 15u)]);
    var var_2 = _wgslsmith_add_i32((firstTrailingBit(global3.a.x) >> (0u % 32u)) | u_input.a, countOneBits(37719i));
    var_2 = ~u_input.b;
    var var_3 = !(!select(vec4<bool>(var_1.a.b == 18281u, select(false, false, true), global3.a.x != 1i, all(vec4<bool>(false, false, true, true))), select(vec4<bool>(true, true, true, true), func_3(0i), any(vec4<bool>(true, false, true, false))), func_2(Struct_2(Struct_1(var_1.a.a, var_1.a.d.x, global3.c, vec4<u32>(4294967295u, 42383u, global1.x, 25693u)), var_1.a.c, var_1.a.a.x, var_1.a, var_1.a.a.x), vec2<bool>(true, true), Struct_2(var_1.a, 1028f, 37361i, var_1.a, u_input.a), Struct_2(Struct_1(vec4<i32>(global3.a.x, global3.a.x, var_1.a.a.x, u_input.b), global3.d.x, global3.c, vec4<u32>(1u, 66546u, 71965u, var_1.a.d.x)), -332f, var_1.a.a.x, var_1.a, 2147483647i))));
    global2 = array<Struct_1, 15>();
    var_2 = max(reverseBits(u_input.b), 22562i);
    let var_4 = ~vec3<u32>(0u & countOneBits(var_1.a.b), 65818u, min(19116u, var_1.a.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, var_1.a.a.x ^ var_1.a.a.x);
}

