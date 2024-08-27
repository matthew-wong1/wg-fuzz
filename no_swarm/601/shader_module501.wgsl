struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec3<bool>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: vec4<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: bool,
    d: Struct_4,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(false, true, true), vec3<u32>(1u, 5279u, 28584u), vec3<bool>(true, true, false), 1i, true);

var<private> global1: array<vec3<bool>, 26> = array<vec3<bool>, 26>(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true));

var<private> global2: Struct_5 = Struct_5(Struct_2(Struct_1(vec3<bool>(false, true, true), vec3<u32>(35184u, 0u, 6137u), vec3<bool>(false, true, false), -41162i, false)), true, true, Struct_4(Struct_1(vec3<bool>(true, true, true), vec3<u32>(4294967295u, 5749u, 4294967295u), vec3<bool>(true, false, true), 9672i, false), 1u, vec4<u32>(21685u, 0u, 23333u, 1u)), Struct_2(Struct_1(vec3<bool>(false, false, false), vec3<u32>(19521u, 4173u, 1u), vec3<bool>(true, false, false), 33466i, true)));

var<private> global3: array<Struct_2, 20>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: vec2<i32>, arg_3: vec2<bool>) -> vec3<bool> {
    global0 = global2.a.a;
    let var_0 = Struct_3(~(~global0.b.x), global3[_wgslsmith_index_u32(firstTrailingBit(31106u) ^ ~_wgslsmith_add_u32(global2.d.b, global0.b.x), 20u)], -1i);
    global1 = array<vec3<bool>, 26>();
    global0 = Struct_1(vec3<bool>(true, true, any(select(!vec4<bool>(false, true, arg_3.x, global0.c.x), select(vec4<bool>(false, true, false, false), vec4<bool>(true, global0.e, false, false), false), vec4<bool>(false, true, global2.a.a.a.x, true)))), abs(~var_0.b.a.b >> (global0.b % vec3<u32>(32u))), vec3<bool>(true, !(!(!global0.a.x)), all(vec4<bool>(all(arg_3), true, all(vec4<bool>(false, true, global0.e, true)), select(arg_3.x, var_0.b.a.a.x, global0.a.x)))), 29092i, any(!vec4<bool>(!arg_3.x, !arg_3.x, global0.e, 2567u < global0.b.x)));
    let var_1 = 1i;
    return global1[_wgslsmith_index_u32(~11684u, 26u)];
}

fn func_2(arg_0: Struct_2) -> bool {
    var var_0 = -global0.d;
    var var_1 = Struct_5(global3[_wgslsmith_index_u32(29476u, 20u)], arg_0.a.e, (1u <= ~global0.b.x) | true, global2.d, Struct_2(Struct_1(select(vec3<bool>(false, global2.b, arg_0.a.a.x), !global2.e.a.a, true), (vec3<u32>(global2.e.a.b.x, 1u, 18856u) ^ vec3<u32>(global2.e.a.b.x, 58539u, 1u)) & firstTrailingBit(vec3<u32>(arg_0.a.b.x, arg_0.a.b.x, arg_0.a.b.x)), func_3(_wgslsmith_f_op_f32(f32(-1f) * -1974f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-196f, -612f, 408f, 164f))), u_input.a.xz, select(vec2<bool>(true, true), global0.a.zy, true)), i32(-1i) * -11438i, !global0.a.x)));
    var var_2 = Struct_5(Struct_2(arg_0.a), all(!select(!vec3<bool>(true, arg_0.a.e, false), vec3<bool>(false, var_1.a.a.a.x, global2.e.a.c.x), global0.a)), any(vec3<bool>(true, false, global2.b)), Struct_4(Struct_1(vec3<bool>(global2.b, global2.b, true), vec3<u32>(global0.b.x ^ arg_0.a.b.x, arg_0.a.b.x, _wgslsmith_sub_u32(0u, global0.b.x)), select(vec3<bool>(false, arg_0.a.c.x, arg_0.a.e), select(global1[_wgslsmith_index_u32(26760u, 26u)], vec3<bool>(global2.c, false, arg_0.a.e), false), vec3<bool>(true, global0.e, false)), -30502i, arg_0.a.e), ~firstLeadingBit(abs(0u)), _wgslsmith_add_vec4_u32(~select(global2.d.c, vec4<u32>(global2.d.a.b.x, var_1.d.b, arg_0.a.b.x, global2.d.a.b.x), vec4<bool>(var_1.d.a.e, arg_0.a.c.x, global2.b, global0.e)), vec4<u32>(~global2.e.a.b.x, 4294967295u, _wgslsmith_clamp_u32(global2.e.a.b.x, 20474u, var_1.e.a.b.x), 30999u))), Struct_2(Struct_1(vec3<bool>(true, all(vec4<bool>(global2.c, global0.c.x, var_1.e.a.e, true)), all(vec4<bool>(global2.e.a.e, arg_0.a.e, arg_0.a.c.x, false))), vec3<u32>(12548u, arg_0.a.b.x | 0u, var_1.d.c.x), !select(vec3<bool>(global2.e.a.c.x, var_1.e.a.e, false), vec3<bool>(global2.e.a.a.x, arg_0.a.e, var_1.c), arg_0.a.c), -global0.d, arg_0.a.e)));
    let var_3 = var_2.d.a.d;
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(741f, 349f, 843f, -941f) + vec4<f32>(477f, -1070f, -1236f, 1764f)), vec4<f32>(-1152f, 1000f, -2384f, -883f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1140f, 266f, -665f, -473f) * vec4<f32>(-284f, -1062f, 2788f, -762f))))));
    return var_1.d.a.a.x;
}

fn func_1(arg_0: Struct_2) -> vec3<bool> {
    var var_0 = true;
    var var_1 = global2.d;
    let var_2 = var_1.a;
    global1 = array<vec3<bool>, 26>();
    let var_3 = Struct_5(global3[_wgslsmith_index_u32(~var_2.b.x, 20u)], all(select(select(global2.a.a.a.yx, !vec2<bool>(global2.b, var_2.e), false), vec2<bool>(var_1.a.c.x, true), func_2(Struct_2(Struct_1(vec3<bool>(arg_0.a.a.x, true, true), vec3<u32>(arg_0.a.b.x, arg_0.a.b.x, 0u), global2.a.a.a, -40253i, true))))), false, Struct_4(arg_0.a, 1u, vec4<u32>(_wgslsmith_mod_u32(6157u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.b.x, 4294967295u, 19137u), global2.e.a.b)), ~(~32040u), firstTrailingBit(~var_1.a.b.x), countOneBits(var_2.b.x))), Struct_2(Struct_1(vec3<bool>(var_2.d != arg_0.a.d, arg_0.a.e, global0.c.x), firstTrailingBit(var_2.b), func_3(1000f, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1282f, 1092f, -921f, -934f), vec4<f32>(480f, 443f, -1029f, 1000f), vec4<bool>(var_2.c.x, arg_0.a.c.x, global2.d.a.a.x, true))), reverseBits(u_input.a.zz), select(vec2<bool>(arg_0.a.c.x, var_1.a.c.x), arg_0.a.a.xx, var_1.a.a.zx)), -var_2.d, func_3(_wgslsmith_f_op_f32(1981f + -2103f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(560f, -573f, 909f, 2312f)), vec2<i32>(0i, var_2.d), func_3(621f, vec4<f32>(110f, 401f, 873f, 563f), u_input.a.yz, vec2<bool>(false, false)).yz).x)));
    return var_1.a.a;
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    var var_0 = 1737f;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-721f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(266f, -1584f)))) + _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-823f - _wgslsmith_div_f32(-161f, -455f)))));
    let var_2 = ~global0.d < ~_wgslsmith_mod_i32(firstTrailingBit(arg_0.d), 41699i);
    global1 = array<vec3<bool>, 26>();
    let var_3 = ~global2.a.a.b.x;
    return global2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(select(func_1(Struct_2(Struct_1(vec3<bool>(global2.b, false, true), vec3<u32>(global2.d.b, 0u, global0.b.x), global0.a, 36558i, global0.a.x))), global1[_wgslsmith_index_u32(global0.b.x, 26u)], false), global0.b, !(!vec3<bool>(global2.a.a.a.x, global0.a.x, global0.a.x)), u_input.a.x, true));
    var_0 = global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(global2.e.a.b.x, firstLeadingBit(var_0.a.b.x >> (23562u % 32u)), _wgslsmith_clamp_u32(global2.a.a.b.x, ~var_0.a.b.x, ~var_0.a.b.x)), 20u)];
    var_0 = global2.a;
    var var_1 = Struct_5(Struct_2(var_0.a), all(func_4(Struct_1(global2.d.a.a, vec3<u32>(0u, 4294967295u, var_0.a.b.x) << (vec3<u32>(56491u, 44811u, global0.b.x) % vec3<u32>(32u)), global0.a, _wgslsmith_add_i32(global0.d, -6661i), true)).a.a.yz), global0.e, Struct_4(func_4(global2.e.a).a, var_0.a.b.x, ~(~global2.d.c)), global2.e);
    var_1 = Struct_5(global2.a, !any(select(vec2<bool>(true, var_1.b), var_0.a.c.xz, var_1.c)), firstTrailingBit(-1i) != 1i, Struct_4(Struct_1(func_3(_wgslsmith_f_op_f32(min(-868f, 401f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2150f, 536f, 915f, -1124f)), ~u_input.a.yz, !global0.c.zx), _wgslsmith_add_vec3_u32(~var_1.a.a.b, var_1.e.a.b), vec3<bool>(select(true, true, global0.a.x), false, global0.d == -61568i), ~_wgslsmith_sub_i32(-37788i, -2147483647i), true), 7006u, vec4<u32>(global0.b.x, ~(~124093u), 1u, ~0u)), func_4(Struct_1(var_0.a.c, ~(~var_0.a.b), global0.c, 55523i, true)));
    var var_2 = Struct_3(70916u, global3[_wgslsmith_index_u32(30644u, 20u)], min(global2.d.a.d, global2.d.a.d));
    let var_3 = Struct_5(Struct_2(Struct_1(vec3<bool>(func_4(var_2.b.a).a.a.x, true, true), var_2.b.a.b, vec3<bool>(global0.e, global2.e.a.a.x, !global0.a.x), -firstLeadingBit(var_1.d.a.d), false)), global0.e, true, var_1.d, global2.a);
    let var_4 = var_1.e.a.b & abs(~(~max(var_3.d.a.b, var_0.a.b)));
    global1 = array<vec3<bool>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(max(-(~abs(2147483647i)), _wgslsmith_add_i32(~(-var_1.a.a.d), global0.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-626f)))) - _wgslsmith_f_op_f32(select(410f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-941f, 1134f)), _wgslsmith_f_op_f32(min(-1793f, 841f))), false))), firstLeadingBit(select(vec4<i32>(-1i, _wgslsmith_mod_i32(var_0.a.d, var_3.e.a.d), ~(-2147483647i), -9365i), _wgslsmith_add_vec4_i32(vec4<i32>(0i, 1i, var_1.a.a.d, global0.d), vec4<i32>(31057i, -39614i, global2.a.a.d, global0.d)), !select(vec4<bool>(var_1.c, false, var_0.a.e, true), vec4<bool>(false, var_2.b.a.c.x, var_0.a.c.x, true), vec4<bool>(false, var_0.a.a.x, var_0.a.e, var_3.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1197f * _wgslsmith_f_op_f32(f32(-1f) * -1304f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-280f, 353f))))));
}

