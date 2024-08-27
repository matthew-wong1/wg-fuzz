struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: array<Struct_1, 4>;

var<private> global2: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(true, vec3<i32>(-13774i, 1i, 1i), -1546f, true), Struct_1(true, vec3<i32>(56183i, 1i, i32(-2147483648)), 404f, true), Struct_1(true, vec3<i32>(-5804i, 12661i, -2335i), -186f, true), Struct_1(true, vec3<i32>(-9656i, 2147483647i, -20162i), -1049f, true), Struct_1(false, vec3<i32>(1i, -1i, -1i), 1059f, false), Struct_1(false, vec3<i32>(-1i, -1i, 0i), 543f, false), Struct_1(false, vec3<i32>(-74112i, 0i, 1i), -340f, true), Struct_1(true, vec3<i32>(i32(-2147483648), -1i, 1i), 664f, false), Struct_1(false, vec3<i32>(i32(-2147483648), -45296i, 25124i), 319f, true), Struct_1(true, vec3<i32>(i32(-2147483648), 0i, -1i), -617f, false), Struct_1(true, vec3<i32>(5548i, 2147483647i, 21100i), 803f, false), Struct_1(false, vec3<i32>(1i, -1i, 0i), 255f, false), Struct_1(true, vec3<i32>(2147483647i, -35766i, 42237i), 454f, false), Struct_1(false, vec3<i32>(-50584i, 2147483647i, 17066i), -673f, true), Struct_1(false, vec3<i32>(-1i, 13419i, -27279i), -142f, true));

var<private> global3: Struct_1 = Struct_1(true, vec3<i32>(i32(-2147483648), 1i, -720i), -1000f, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = firstTrailingBit(-reverseBits(-min(vec4<i32>(arg_0.b.x, -13332i, u_input.a.x, arg_0.b.x), vec4<i32>(arg_0.b.x, arg_0.b.x, u_input.b.x, u_input.c))));
    global3 = Struct_1(!(any(select(vec4<bool>(false, true, global3.d, arg_0.d), vec4<bool>(global3.a, false, arg_0.a, false), true)) && false), u_input.a >> (abs(~_wgslsmith_clamp_vec3_u32(vec3<u32>(73820u, 3089u, 51020u), vec3<u32>(0u, 0u, 27889u), vec3<u32>(32322u, 36644u, 36386u))) % vec3<u32>(32u)), -359f, false);
    var var_1 = countOneBits(~vec4<u32>(abs(1u), _wgslsmith_div_u32(79941u, ~0u), _wgslsmith_sub_u32(1723u, 1u), reverseBits(~4294967295u)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) - -558f);
    var var_3 = var_1.x;
    return vec3<bool>(any(!vec2<bool>(true, all(vec2<bool>(true, false)))), true, !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(129f + -101f) + _wgslsmith_f_op_f32(var_2 + global3.c)) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2 + 133f), _wgslsmith_f_op_f32(min(733f, 1140f)))));
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: f32) -> vec3<bool> {
    global1 = array<Struct_1, 4>();
    let var_0 = arg_1;
    var var_1 = true;
    let var_2 = !global3.a;
    var var_3 = 464f;
    return select(vec3<bool>(true, !(!(false && var_2)), any(!vec2<bool>(var_2, global3.d))), func_3(global0[_wgslsmith_index_u32(arg_1.x, 15u)]), all(vec2<bool>(-411f < arg_2, true)) | !global3.a);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    let var_0 = 4294967295u;
    global3 = global1[_wgslsmith_index_u32(30283u, 4u)];
    var var_1 = ~(arg_1.b.x ^ arg_1.b.x);
    let var_2 = Struct_1(false, vec3<i32>(1i, 0i, _wgslsmith_mod_i32(_wgslsmith_add_i32(~arg_1.b.x, 0i), 1i)), _wgslsmith_f_op_f32(-arg_0.c), all(vec2<bool>(all(func_2(0u, vec2<u32>(var_0, var_0), arg_0.c)), (1u >= var_0) | false)));
    global0 = array<Struct_1, 15>();
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!(!(func_1(global1[_wgslsmith_index_u32(15790u, 4u)], Struct_1(global3.a, u_input.a, global3.c, global3.d), Struct_1(global3.a, global3.b, global3.c, true)) | select(global3.d, true, true))), countOneBits(countOneBits(~(vec3<i32>(0i, -29690i, global3.b.x) << (vec3<u32>(1u, 54004u, 27795u) % vec3<u32>(32u))))), -621f, any(vec4<bool>(-231f >= _wgslsmith_f_op_f32(min(global3.c, global3.c)), true, any(vec2<bool>(global3.d, false)), false)));
    global0 = array<Struct_1, 15>();
    global1 = array<Struct_1, 4>();
    let var_1 = !global3.a;
    var var_2 = Struct_1(global3.d, firstTrailingBit(vec3<i32>(~(~(-593i)), -u_input.c, global3.b.x << (~47440u % 32u))), -406f, global3.a);
    var var_3 = _wgslsmith_mult_i32(34998i, -max(~(~u_input.c), var_0.b.x));
    let var_4 = select(-_wgslsmith_add_vec3_i32(var_2.b, vec3<i32>(_wgslsmith_dot_vec2_i32(global3.b.zz, vec2<i32>(-2147483647i, -2147483647i)), -2147483647i, -1i)), -(~(~vec3<i32>(1i, 1i, 1i))), vec3<bool>(var_1, all(!(!vec2<bool>(true, global3.a))), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1812f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-865f * var_2.c)))), 639f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1844f)) - _wgslsmith_f_op_f32(-var_2.c))), _wgslsmith_clamp_vec4_u32(~_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(1u, 4294967295u, 0u, 23221u)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 1u, 8535u), vec4<u32>(27475u, 5155u, 0u, 0u))), firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_sub_vec4_u32(max(firstTrailingBit(vec4<u32>(1u, 0u, 18411u, 23567u)), ~vec4<u32>(70305u, 18491u, 587u, 4294967295u)), firstLeadingBit(firstLeadingBit(vec4<u32>(10274u, 38820u, 4294967295u, 1u))))), global3.b.x, ~(var_4 >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))));
}

