struct Struct_1 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32 = -2723i;

var<private> global2: array<vec3<bool>, 5> = array<vec3<bool>, 5>(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true));

var<private> global3: array<vec4<bool>, 21>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_1(global0.a, ~global0.b);
    var var_1 = Struct_1(false, 4294967295u);
    global0 = Struct_1(true, arg_1.x);
    global1 = countOneBits(_wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 55823i), vec2<i32>(2147483647i, 1i))), vec2<i32>(_wgslsmith_add_i32(select(arg_0, 77812i, true), 2147483647i >> (arg_2 % 32u)), 36059i)));
    let var_2 = _wgslsmith_mult_vec3_u32(~(~max(vec3<u32>(0u, u_input.a.x, 5037u), abs(vec3<u32>(arg_2, arg_2, var_0.b)))), ~firstTrailingBit(~vec3<u32>(u_input.a.x, var_1.b, var_0.b)));
    return Struct_1(select(false, global0.a, false), 4951u);
}

fn func_3(arg_0: vec3<u32>, arg_1: u32) -> vec4<i32> {
    global2 = array<vec3<bool>, 5>();
    let var_0 = countOneBits(firstTrailingBit(~firstTrailingBit(vec4<u32>(1u, 49948u, u_input.a.x, u_input.a.x) & vec4<u32>(4294967295u, arg_0.x, 56118u, 4312u))));
    let var_1 = -2147483647i;
    var var_2 = var_1;
    let var_3 = _wgslsmith_add_vec2_u32(var_0.wz, vec2<u32>(~0u, 0u));
    return vec4<i32>(i32(-1i) * -4672i, -28782i | _wgslsmith_clamp_i32(~(var_1 << (global0.b % 32u)), -1i & firstTrailingBit(var_1), -19148i), -2147483647i, -(var_1 << (43372u % 32u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_1(!arg_0.a, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(54947u, global0.b) >> (u_input.a % vec2<u32>(32u)), ~vec2<u32>(arg_0.b, global0.b)), vec2<u32>(0u, ~arg_0.b)), (~arg_0.b >> (reverseBits(u_input.a.x) % 32u)) & 0u));
    let var_1 = reverseBits(~(~max(vec3<u32>(37991u, 63515u, 4294967295u), vec3<u32>(35756u, arg_0.b, global0.b)) & vec3<u32>(41236u, u_input.a.x, 16078u)));
    var var_2 = arg_0;
    var var_3 = arg_0;
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(498f, -288f)))))) * vec2<f32>(1f, 1f)));
    return func_2(~(-12094i), _wgslsmith_div_vec2_u32(var_1.zz, var_1.yx), _wgslsmith_div_u32(var_3.b, 2278u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b, var_1.x, global0.b, 4294967295u), ~vec4<u32>(4294967295u, u_input.a.x, 4294967295u, global0.b)) % 32u)));
}

fn func_1(arg_0: vec4<bool>, arg_1: i32) -> vec4<f32> {
    let var_0 = true;
    let var_1 = !global0.a;
    var var_2 = vec3<i32>(max(_wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, arg_1, arg_1), vec3<i32>(arg_1, 1i, ~arg_1)), -_wgslsmith_clamp_i32(-42046i, arg_1 << (u_input.a.x % 32u), ~arg_1)), -(i32(-1i) * -abs(arg_1)), arg_1 & ~abs(i32(-1i) * -13601i));
    let var_3 = func_4(func_2(~2147483647i, ~vec2<u32>(u_input.a.x, ~0u), _wgslsmith_mult_u32(1u, abs(1u))), -(~func_3(vec3<u32>(u_input.a.x, 0u, 4294967295u), 37521u) << (~select(vec4<u32>(global0.b, global0.b, 60384u, u_input.a.x), vec4<u32>(u_input.a.x, 3020u, global0.b, u_input.a.x), var_1) % vec4<u32>(32u))));
    var_2 = (-countOneBits(max(vec3<i32>(22719i, 1i, 51968i), vec3<i32>(arg_1, -5119i, 1i))) & select(_wgslsmith_clamp_vec3_i32(vec3<i32>(14988i, var_2.x, arg_1), ~vec3<i32>(arg_1, arg_1, 21738i), reverseBits(vec3<i32>(1431i, arg_1, 7138i))), -abs(vec3<i32>(-2147483647i, var_2.x, -43020i)), !(!vec3<bool>(var_3.a, true, var_3.a)))) << (min(vec3<u32>(~4294967295u, global0.b, global0.b), vec3<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(6089u, 50334u, 0u), min(vec3<u32>(15544u, 1u, var_3.b), vec3<u32>(global0.b, u_input.a.x, 133u))), 4294967295u)) % vec3<u32>(32u));
    return vec4<f32>(_wgslsmith_f_op_f32(-1142f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-726f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-166f)) - _wgslsmith_f_op_f32(round(-934f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1102f, _wgslsmith_f_op_f32(f32(-1f) * -966f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(187f, _wgslsmith_f_op_f32(round(-424f))) * _wgslsmith_f_op_f32(f32(-1f) * -816f))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_2.a & !func_4(Struct_1(!global0.a, 0u), ~reverseBits(vec4<i32>(1112i, 1i, 22853i, 51364i))).a;
    var var_1 = _wgslsmith_add_i32(~(-1i), max(~(-1i) >> (arg_2.b % 32u), 1i));
    let var_2 = vec2<bool>(true, true);
    global0 = Struct_1(any(!(!global2[_wgslsmith_index_u32(1u, 5u)])) != arg_1.a, ~u_input.a.x);
    var var_3 = _wgslsmith_dot_vec3_i32(min(_wgslsmith_add_vec3_i32(-vec3<i32>(-48876i, 0i, 28441i), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(-4782i, 1i)), 2147483647i, 2147483647i)), vec3<i32>(2107i, firstTrailingBit(-21412i), countOneBits(_wgslsmith_clamp_i32(2147483647i, -1i, 1i)))), _wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, ~(-2147483647i)), -vec3<i32>(29720i, firstTrailingBit(24195i), _wgslsmith_add_i32(2147483647i, -1i))));
    return func_4(func_4(func_4(Struct_1(!global0.a, ~arg_2.b), vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_sub_vec4_i32(~vec4<i32>(1i, 1i, 1i, 1i), ~(~vec4<i32>(-63398i, 0i, -15924i, 1i)))), vec4<i32>(2147483647i, -1i, abs(~min(22717i, 1i)), func_3(vec3<u32>(global0.b, max(0u, 15535u), ~global0.b), ~(u_input.a.x ^ 56070u)).x));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    global2 = array<vec3<bool>, 5>();
    global0 = arg_1;
    var var_0 = arg_1;
    global0 = arg_1;
    global0 = arg_1;
    return Struct_1(false == arg_1.a, (_wgslsmith_dot_vec4_u32(~vec4<u32>(67831u, 40856u, arg_2, u_input.a.x), ~vec4<u32>(global0.b, arg_1.b, global0.b, 0u)) >> ((~arg_0.b >> (arg_2 % 32u)) % 32u)) ^ _wgslsmith_mod_u32(~arg_1.b | 4294967295u, 0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_1(_wgslsmith_div_u32(global0.b, u_input.a.x) < (global0.b >> (33623u % 32u)), 10979u), func_5(_wgslsmith_f_op_vec4_f32(func_1(global3[_wgslsmith_index_u32(select(u_input.a.x, u_input.a.x, global0.a), 21u)], 17130i)), Struct_1(true, ~109792u), func_2(-firstTrailingBit(2147483647i), u_input.a, global0.b)), _wgslsmith_mod_u32(~reverseBits(1u | global0.b), _wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 79640u, 24114u), vec3<u32>(u_input.a.x, 51526u, global0.b)), firstLeadingBit(global0.b & 9289u))));
    global3 = array<vec4<bool>, 21>();
    global0 = var_0;
    var var_1 = var_0;
    let var_2 = vec2<u32>(19631u, abs(_wgslsmith_dot_vec3_u32(~select(vec3<u32>(63163u, 48722u, u_input.a.x), vec3<u32>(global0.b, u_input.a.x, var_0.b), global0.a), reverseBits(vec3<u32>(var_0.b, u_input.a.x, u_input.a.x)) | select(vec3<u32>(global0.b, u_input.a.x, global0.b), vec3<u32>(4294967295u, 4437u, 89087u), var_1.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(573f)), 1000f), _wgslsmith_add_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(0i, 2147483647i, -1i) << (vec3<u32>(global0.b, var_2.x, 1u) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(-25659i, -2147483647i, 1i), vec3<i32>(-5444i, -8067i, -3484i))), ~vec3<i32>(_wgslsmith_clamp_i32(12996i, 9037i, 6848i), 1i, i32(-1i) * -33433i)), ~max(vec3<u32>(58166u, 0u, u_input.a.x), vec3<u32>(u_input.a.x, 1u, _wgslsmith_sub_u32(var_1.b, 1u))), _wgslsmith_mod_u32(var_1.b, var_2.x));
}

