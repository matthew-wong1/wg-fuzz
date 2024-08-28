struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-6604i, 192f, 15140i);

var<private> global1: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(-1i, -1000f, -1i), Struct_1(-3298i, -1142f, 19855i), Struct_1(4121i, 1000f, 1i), Struct_1(-1i, 995f, -62496i), Struct_1(28562i, 1297f, 7801i), Struct_1(-581i, -1640f, -4489i), Struct_1(1i, 2441f, -3800i), Struct_1(i32(-2147483648), -2052f, -6465i), Struct_1(54732i, 1739f, 49191i), Struct_1(36876i, 728f, 2147483647i), Struct_1(6814i, -962f, -16687i), Struct_1(48936i, 843f, i32(-2147483648)), Struct_1(36412i, 183f, -1i), Struct_1(-16678i, -1878f, 5035i), Struct_1(10806i, -732f, 2147483647i), Struct_1(i32(-2147483648), -752f, -41748i), Struct_1(i32(-2147483648), 789f, -1i), Struct_1(1i, 220f, -1i), Struct_1(i32(-2147483648), 417f, i32(-2147483648)), Struct_1(2147483647i, 1000f, 0i), Struct_1(-41191i, 480f, 85733i), Struct_1(-70949i, 219f, 2147483647i), Struct_1(2147483647i, -372f, -17514i), Struct_1(6376i, 1117f, 2147483647i), Struct_1(-1i, 950f, -7463i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<i32>) -> vec4<i32> {
    var var_0 = !(!(1000f == global0.b));
    let var_1 = Struct_1(firstLeadingBit(arg_0.x), global0.b, global0.a);
    global1 = array<Struct_1, 25>();
    return -(~arg_1);
}

fn func_3(arg_0: f32) -> i32 {
    let var_0 = u_input.b;
    global1 = array<Struct_1, 25>();
    var var_1 = Struct_1(global0.a, -1000f, global0.a);
    return max(_wgslsmith_dot_vec2_i32(-(~vec2<i32>(-25895i, 0i)), (vec2<i32>(var_1.a, global0.c) & vec2<i32>(2147483647i, global0.c)) >> (_wgslsmith_div_vec2_u32(vec2<u32>(45377u, 14477u), var_0.zz) % vec2<u32>(32u))), 1i) >> (_wgslsmith_sub_u32(43924u, u_input.a) % 32u);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> f32 {
    var var_0 = _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(-vec2<i32>(abs(-49683i), arg_2.x), arg_2.zx | ~(-arg_0.yz), ~(-arg_0.zy)), firstTrailingBit(~(-arg_2.xx & arg_0.zw)), vec2<i32>(abs(-2147483647i), -60109i));
    var var_1 = Struct_1(_wgslsmith_mod_i32(arg_0.x, arg_1.a), _wgslsmith_f_op_f32(-arg_3.b), arg_3.a);
    let var_2 = Struct_1(_wgslsmith_div_i32(-34489i, var_1.a ^ 1i) << (1u % 32u), -1548f, func_2(reverseBits(vec4<i32>(global0.c, 31859i, var_0.x, -2147483647i)), arg_0).x | 0i);
    var var_3 = min(~select(_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a, 11224u), u_input.a), max(max(u_input.a, 4294967295u), u_input.c >> (38264u % 32u)), all(vec3<bool>(false, false, false))), countOneBits(u_input.a));
    var var_4 = 0u;
    return -1083f;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = 57616u;
    global1 = array<Struct_1, 25>();
    var var_1 = Struct_1(_wgslsmith_div_i32(1i, 18982i), _wgslsmith_f_op_f32(func_4(_wgslsmith_sub_vec4_i32(-vec4<i32>(-1368i, -33029i, arg_2.c, arg_1.a), _wgslsmith_div_vec4_i32(vec4<i32>(arg_0.a, 0i, arg_2.a, arg_1.c), vec4<i32>(arg_2.c, arg_0.c, 14272i, 1i))) & (func_2(vec4<i32>(47437i, arg_0.c, -1i, 0i), vec4<i32>(arg_2.c, 0i, -1i, arg_2.c)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.b.x, 24665u, var_0), vec4<u32>(15707u, var_0, 56583u, 0u)) % vec4<u32>(32u))), Struct_1(arg_1.a << (firstTrailingBit(var_0) % 32u), global0.b, 32629i), vec3<i32>(-59341i, _wgslsmith_mod_i32(global0.c, abs(-1i)), _wgslsmith_add_i32(arg_1.c >> (u_input.b.x % 32u), func_3(-210f))), Struct_1(-31218i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(770f, arg_1.b))), 22003i))), arg_0.a);
    let var_2 = arg_2;
    let var_3 = firstTrailingBit(select(~firstLeadingBit(var_0), max(_wgslsmith_mult_u32(~var_0, 1u), 0u), true));
    return abs(reverseBits(abs(firstTrailingBit(4294967295u))));
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = arg_0;
    global0 = arg_0;
    var var_1 = global1[_wgslsmith_index_u32(~u_input.a, 25u)];
    let var_2 = !vec2<bool>(false, !any(vec3<bool>(true, true, true)));
    var_1 = var_0;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    global1 = array<Struct_1, 25>();
    global0 = func_5(global1[_wgslsmith_index_u32(func_1(global1[_wgslsmith_index_u32(0u, 25u)], global1[_wgslsmith_index_u32(13127u, 25u)], global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(2190u, 0u), u_input.b.zz), ~u_input.b.yz)), 25u)]), 25u)], _wgslsmith_div_u32(u_input.b.x, 1u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.b)));
    var var_2 = func_5(global1[_wgslsmith_index_u32(6280u, 25u)], ~_wgslsmith_mult_u32(u_input.b.x, _wgslsmith_clamp_u32(~u_input.b.x, u_input.b.x, 49945u)));
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

