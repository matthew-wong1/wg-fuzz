struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 32> = array<vec2<u32>, 32>(vec2<u32>(65852u, 1u), vec2<u32>(11723u, 70297u), vec2<u32>(1u, 668u), vec2<u32>(23567u, 11613u), vec2<u32>(0u, 1909u), vec2<u32>(1u, 21u), vec2<u32>(33146u, 4294967295u), vec2<u32>(5590u, 9515u), vec2<u32>(0u, 47820u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(52509u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 12335u), vec2<u32>(0u, 1u), vec2<u32>(31228u, 25663u), vec2<u32>(4294967295u, 56471u), vec2<u32>(47275u, 1u), vec2<u32>(66206u, 1u), vec2<u32>(0u, 0u), vec2<u32>(14568u, 0u), vec2<u32>(23882u, 55381u), vec2<u32>(5911u, 32227u), vec2<u32>(60712u, 4294967295u), vec2<u32>(1u, 87353u), vec2<u32>(4294967295u, 36475u), vec2<u32>(47077u, 42221u), vec2<u32>(35260u, 26982u), vec2<u32>(1u, 52125u), vec2<u32>(16005u, 1u), vec2<u32>(0u, 16227u));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> bool {
    global0 = array<vec2<u32>, 32>();
    var var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(-arg_0.b.c, 13508i), vec2<i32>(arg_1.b.c, max(-2147483647i, 5637i))) >> (3787u % 32u);
    var_0 = arg_0.b.c;
    var var_1 = arg_1;
    let var_2 = _wgslsmith_add_u32(~33014u, 1u);
    return true;
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = ~min(select(0u, min(~0u, arg_0.e), false), firstTrailingBit(arg_0.e));
    var_0 = ~_wgslsmith_clamp_u32(arg_0.e, 4294967295u, ~firstLeadingBit(reverseBits(arg_0.e)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1652f + _wgslsmith_div_f32(976f, 967f))) + -1542f));
    var var_2 = abs(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.a, arg_0.c, 0i), -vec3<i32>(-2147483647i, 23887i, arg_0.c), min(vec3<i32>(1i, arg_0.c, 15792i), vec3<i32>(-61261i, u_input.a, arg_0.c)) << (abs(vec3<u32>(15021u, 31119u, arg_0.a)) % vec3<u32>(32u))), ~min(vec3<i32>(-7805i, arg_0.c, u_input.a), ~vec3<i32>(-28628i, arg_0.c, 2147483647i))));
    var_2 = firstLeadingBit(-countOneBits(vec3<i32>(arg_0.c, u_input.a, arg_0.c)) | abs(abs(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, 4077i, u_input.a), vec3<i32>(arg_0.c, arg_0.c, var_2.x)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_0.b.x, 1762f)))) - _wgslsmith_f_op_f32(round(arg_0.b.x)));
}

fn func_1() -> Struct_1 {
    let var_0 = any(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(false, false, true))), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), any(vec3<bool>(false, true, false))), vec2<bool>(func_2(Struct_2(vec4<u32>(0u, 0u, 1989u, 0u), Struct_1(4294967295u, vec4<f32>(1100f, -641f, 730f, 913f), -1i, global0[_wgslsmith_index_u32(114027u, 32u)], 83640u)), Struct_2(vec4<u32>(4294967295u, 151993u, 4739u, 4294967295u), Struct_1(4294967295u, vec4<f32>(738f, 2234f, -860f, 2868f), u_input.a, vec2<u32>(4294967295u, 14277u), 0u))), all(vec2<bool>(false, true)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-598f + -784f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(409f, 176f), _wgslsmith_f_op_f32(func_3(Struct_1(34153u, vec4<f32>(810f, -313f, 193f, 785f), 1i, global0[_wgslsmith_index_u32(4294967295u, 32u)], 16257u))), select(true, var_0, var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1241f * -1000f) + _wgslsmith_f_op_f32(ceil(647f))))) + vec3<f32>(1f, 1f, 1f));
    let var_2 = !select(select(!select(vec4<bool>(var_0, var_0, var_0, false), vec4<bool>(true, false, var_0, var_0), vec4<bool>(var_0, var_0, true, var_0)), select(!vec4<bool>(true, var_0, true, var_0), !vec4<bool>(false, var_0, false, false), vec4<bool>(var_0, var_0, var_0, var_0)), true), select(select(!vec4<bool>(false, false, var_0, var_0), select(vec4<bool>(true, true, var_0, false), vec4<bool>(var_0, true, true, var_0), vec4<bool>(true, var_0, false, var_0)), all(vec3<bool>(false, true, true))), !(!vec4<bool>(var_0, false, var_0, var_0)), all(vec2<bool>(true, false))), any(select(select(vec3<bool>(var_0, var_0, false), vec3<bool>(false, var_0, var_0), vec3<bool>(true, true, var_0)), !vec3<bool>(true, var_0, var_0), vec3<bool>(var_0, false, false))));
    global0 = array<vec2<u32>, 32>();
    var var_3 = firstTrailingBit(u_input.a);
    return Struct_1(~1u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.x + var_1.x), 764f))), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1190f) * 1000f)), _wgslsmith_f_op_f32(max(var_1.x, var_1.x)), -1000f), u_input.a, ~(~vec2<u32>(_wgslsmith_mult_u32(4294967295u, 1u), 108790u)), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = firstLeadingBit(~var_0.d.x & select(~abs(22678u), 9053u, true));
    global0 = array<vec2<u32>, 32>();
    global0 = array<vec2<u32>, 32>();
    global0 = array<vec2<u32>, 32>();
    let var_2 = Struct_2(vec4<u32>(~(~var_0.e), 4294967295u, var_0.d.x, countOneBits(select(var_0.a, var_0.d.x, true))) << (~select(_wgslsmith_add_vec4_u32(vec4<u32>(19803u, var_0.e, var_0.a, 22007u), vec4<u32>(66326u, 27578u, 1u, var_0.e)), vec4<u32>(0u, var_0.a, 0u, var_0.e) | vec4<u32>(0u, 27532u, 0u, var_0.e), vec4<bool>(true, true, true, true)) % vec4<u32>(32u)), var_0);
    var var_3 = abs(_wgslsmith_sub_vec3_u32(var_2.a.wzy & var_2.a.ywz, vec3<u32>(~var_0.d.x, var_2.b.a, var_0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(select(~vec3<i32>(~1i, _wgslsmith_mult_i32(var_0.c, var_2.b.c), -var_2.b.c), vec3<i32>(-37958i, ~var_0.c, ~select(var_2.b.c, 2147483647i, false)), var_2.b.d.x <= _wgslsmith_dot_vec3_u32(vec3<u32>(7264u, var_3.x, var_2.a.x), ~var_2.a.wzz)), var_2.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_2.b.b.x), var_2.b.b.x) - vec2<f32>(_wgslsmith_f_op_f32(-222f * 347f), _wgslsmith_f_op_f32(var_0.b.x + 365f))) - _wgslsmith_f_op_vec2_f32(max(var_0.b.yx, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_0.b.zy)))))));
}

