struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: bool,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 24>;

var<private> global1: f32 = -1000f;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_2, arg_3: Struct_3) -> bool {
    let var_0 = abs(_wgslsmith_add_i32(_wgslsmith_sub_i32(2147483647i & arg_2.c.x, arg_3.b.e), -17951i)) | arg_3.b.e;
    var var_1 = firstTrailingBit(u_input.b) >= arg_2.b.b.x;
    var var_2 = ~(_wgslsmith_mod_vec3_u32((vec3<u32>(u_input.b, 0u, u_input.b) & vec3<u32>(47503u, 0u, arg_2.a.b.x)) >> (~vec3<u32>(u_input.b, 15906u, 0u) % vec3<u32>(32u)), vec3<u32>(~u_input.b, ~0u, ~arg_2.a.d.x)) ^ ~(~(~vec3<u32>(0u, 4701u, arg_2.a.d.x))));
    global0 = array<Struct_4, 24>();
    global0 = array<Struct_4, 24>();
    return !arg_0.x;
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = Struct_2(arg_1.b, Struct_1(vec3<bool>(true, func_3(select(vec4<bool>(true, arg_1.a.a.x, true, arg_1.b.a.x), vec4<bool>(arg_1.b.a.x, false, true, arg_1.a.a.x), true), arg_1.b.a.x, Struct_2(Struct_1(arg_1.a.a, arg_1.b.d, arg_1.a.a.x, arg_1.a.d, 1i), Struct_1(vec3<bool>(true, true, arg_1.b.c), vec2<u32>(u_input.b, 13631u), false, vec2<u32>(arg_1.a.d.x, arg_1.b.d.x), -1i), arg_1.c), Struct_3(false, Struct_1(arg_1.a.a, vec2<u32>(u_input.b, 58712u), false, arg_1.a.d, 6345i), vec4<bool>(arg_1.a.a.x, arg_1.b.a.x, true, arg_1.b.a.x))), arg_1.a.a.x), arg_1.b.d, false, reverseBits(arg_1.b.d), -21327i >> ((19281u ^ _wgslsmith_add_u32(u_input.b, 4294967295u)) % 32u)), -firstLeadingBit(arg_1.c));
    global0 = array<Struct_4, 24>();
    var var_1 = true;
    let var_2 = Struct_1(!select(select(arg_1.a.a, arg_1.b.a, 77341i <= arg_0), vec3<bool>(true, !arg_1.b.c, true), vec3<bool>(true, true, true)), vec2<u32>(~(~u_input.b), _wgslsmith_mult_u32(4294967295u, 1u) ^ arg_1.b.d.x), select(!all(vec2<bool>(var_0.a.c, true)), false, var_0.a.c), vec2<u32>(~(~_wgslsmith_mod_u32(u_input.b, arg_1.b.b.x)), ~25525u), ~_wgslsmith_sub_i32(max(11006i, ~2710i), abs(_wgslsmith_div_i32(1i, 1i))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -758f)))));
    return var_2;
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    return arg_0.b;
}

fn func_1(arg_0: vec3<bool>, arg_1: f32) -> Struct_1 {
    let var_0 = -u_input.a;
    global1 = 1000f;
    global1 = 555f;
    let var_1 = -firstLeadingBit(-1i);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1128f, -1345f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * arg_1))));
    return func_4(Struct_2(func_2(var_1, Struct_2(Struct_1(vec3<bool>(arg_0.x, false, true), vec2<u32>(u_input.b, 1u), false, vec2<u32>(1u, u_input.b), var_1), Struct_1(arg_0, vec2<u32>(u_input.b, 1u), arg_0.x, vec2<u32>(u_input.b, u_input.b), var_0), reverseBits(vec4<i32>(var_1, 2147483647i, var_0, -58045i)))), Struct_1(arg_0, reverseBits(~vec2<u32>(1u, u_input.b)), true, vec2<u32>(u_input.b ^ 0u, u_input.b), ~0i), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.a, 65327i, u_input.a), -vec4<i32>(u_input.a, -26563i, u_input.a, var_1)) & -countOneBits(vec4<i32>(var_0, var_1, -51043i, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 24>();
    var var_0 = Struct_4(Struct_2(func_1(vec3<bool>(true, true, true), -427f), func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 44753i, -1i, u_input.a), _wgslsmith_sub_vec4_i32(vec4<i32>(-5014i, 2147483647i, 39251i, 0i), vec4<i32>(u_input.a, 9497i, -2147483647i, 2147483647i))), Struct_2(func_4(Struct_2(Struct_1(vec3<bool>(false, false, false), vec2<u32>(u_input.b, 8102u), true, vec2<u32>(0u, u_input.b), u_input.a), Struct_1(vec3<bool>(false, false, true), vec2<u32>(1u, 91300u), false, vec2<u32>(1u, 95541u), u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 0i))), func_1(vec3<bool>(true, false, false), 1000f), ~vec4<i32>(50876i, -1i, u_input.a, u_input.a))), vec4<i32>(0i, -1i, func_4(Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<u32>(u_input.b, u_input.b), true, vec2<u32>(31296u, 89433u), 19646i), Struct_1(vec3<bool>(false, true, false), vec2<u32>(u_input.b, u_input.b), false, vec2<u32>(u_input.b, 0u), u_input.a), vec4<i32>(u_input.a, u_input.a, -1i, u_input.a))).e, ~21447i)), _wgslsmith_mult_vec3_i32(abs(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 31637i, u_input.a), vec3<i32>(48508i, u_input.a, u_input.a)), ~vec3<i32>(12318i, 55562i, u_input.a))), vec3<i32>(~_wgslsmith_div_i32(u_input.a, 1i), 1i, 1i)), true);
    global0 = array<Struct_4, 24>();
    let var_1 = Struct_2(func_4(Struct_2(Struct_1(var_0.a.a.a, ~var_0.a.b.b, func_4(var_0.a).c, ~vec2<u32>(456u, 87029u), u_input.a), func_1(vec3<bool>(true, false, var_0.a.b.a.x), _wgslsmith_f_op_f32(abs(-523f))), countOneBits(vec4<i32>(-7821i, u_input.a, 1i, var_0.a.c.x)))), Struct_1(!var_0.a.a.a, var_0.a.a.b, 1000f != _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1215f, -1031f), _wgslsmith_f_op_f32(sign(-1000f)), var_0.c)), _wgslsmith_sub_vec2_u32(vec2<u32>(firstLeadingBit(4294967295u), 1u), var_0.a.b.d), -37985i), vec4<i32>(var_0.a.c.x, ~var_0.b.x, -55169i, 42504i));
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -853f);
    global1 = 917f;
    var_0 = global0[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(_wgslsmith_div_u32(1u, var_1.a.d.x), var_1.a.d.x)), 24u)];
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~(~var_1.a.b.x >> (~u_input.b % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1091f - -2072f))));
}

