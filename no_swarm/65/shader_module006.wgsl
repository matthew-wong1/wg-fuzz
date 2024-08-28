struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

var<private> global1: vec2<u32>;

var<private> global2: array<vec4<f32>, 16> = array<vec4<f32>, 16>(vec4<f32>(-1571f, -882f, -331f, 537f), vec4<f32>(1000f, 270f, -592f, -1274f), vec4<f32>(-571f, -1605f, 1536f, 1737f), vec4<f32>(575f, -1000f, -472f, 758f), vec4<f32>(1889f, -475f, 142f, 325f), vec4<f32>(-1000f, -1000f, -1457f, 1051f), vec4<f32>(-1025f, 620f, 633f, -173f), vec4<f32>(554f, 1000f, -118f, -1827f), vec4<f32>(-1000f, -656f, -1336f, -1262f), vec4<f32>(-1080f, -839f, 894f, -1535f), vec4<f32>(477f, 1729f, -1948f, 818f), vec4<f32>(1427f, -282f, -1645f, -643f), vec4<f32>(226f, 2546f, 945f, 132f), vec4<f32>(392f, 1822f, -285f, 1277f), vec4<f32>(322f, -806f, 1000f, -1000f), vec4<f32>(-383f, -598f, -549f, -543f));

var<private> global3: array<bool, 19> = array<bool, 19>(true, true, true, true, false, false, true, true, false, true, false, true, true, false, true, true, true, false, true);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: u32, arg_1: f32) -> Struct_1 {
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(-1312f, _wgslsmith_f_op_f32(select(2097f, _wgslsmith_f_op_f32(arg_1 + -128f), false)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_1, -1558f)), _wgslsmith_f_op_f32(arg_1 * arg_1))), arg_1), -(select(vec2<i32>(1i, 1i), vec2<i32>(0i, 19926i) << (u_input.b % vec2<u32>(32u)), select(vec2<bool>(false, global3[_wgslsmith_index_u32(0u, 19u)]), vec2<bool>(true, false), vec2<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 19u)], global3[_wgslsmith_index_u32(u_input.a.x, 19u)]))) | vec2<i32>(1i, 1i)), ~u_input.c.x ^ 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -890f) - _wgslsmith_f_op_f32(-1295f * _wgslsmith_f_op_f32(select(1372f, -298f, false))))));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec2<f32>) -> Struct_2 {
    global3 = array<bool, 19>();
    return Struct_2(func_2(~abs(global0[_wgslsmith_index_u32(global1.x, 16u)]) ^ ((4294967295u | global1.x) & 1u), _wgslsmith_f_op_f32(trunc(1000f))), !vec4<bool>(true & global3[_wgslsmith_index_u32(global1.x, 19u)], arg_0, true, global3[_wgslsmith_index_u32(global1.x, 19u)]));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> bool {
    var var_0 = ~(abs(vec3<u32>(u_input.b.x >> (2570u % 32u), 0u, 1u)) | ~_wgslsmith_mult_vec3_u32(max(vec3<u32>(global0[_wgslsmith_index_u32(650u, 16u)], arg_0.a.c, global0[_wgslsmith_index_u32(u_input.b.x, 16u)]), vec3<u32>(0u, 1u, 75605u)), u_input.c & u_input.a));
    global0 = array<u32, 16>();
    global1 = var_0.zz;
    let var_1 = 2876i;
    let var_2 = _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, arg_1.a.c, firstLeadingBit(firstTrailingBit(_wgslsmith_div_u32(1233u, 4294967295u)))), vec3<u32>(abs(global1.x), firstLeadingBit(1u), 31697u));
    return select(!(_wgslsmith_f_op_f32(max(-1916f, _wgslsmith_f_op_f32(step(-643f, arg_0.a.a.x)))) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.a.a.x)))), 1u > _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], 4294967295u, 76996u, 4294967295u), vec4<u32>(var_2.x, arg_1.a.c, u_input.c.x, 0u)), firstLeadingBit(vec4<u32>(4294967295u, var_2.x, 1u, 0u))), select(min(1u, global1.x), arg_0.a.c, arg_1.b.x)), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = vec4<bool>(!(!func_3(func_1(global3[_wgslsmith_index_u32(59660u, 19u)], 137f, vec2<f32>(1213f, -1047f)), Struct_2(Struct_1(vec3<f32>(-126f, -1883f, 868f), vec2<i32>(0i, 1i), 0u, 280f), vec4<bool>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27495u, 16u)], 19u)], false, global3[_wgslsmith_index_u32(4294967295u, 19u)], global3[_wgslsmith_index_u32(global1.x, 19u)])))), global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.x, 16u)] >> (abs(~(~global1.x)) % 32u), 19u)], false, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.x, 1u & (~global1.x << (global0[_wgslsmith_index_u32(global1.x, 16u)] % 32u))), 19u)]);
    global0 = array<u32, 16>();
    var_1 = !select(func_1(all(select(var_1.xw, var_1.yx, var_1.x)), 321f, vec2<f32>(_wgslsmith_div_f32(681f, 1076f), _wgslsmith_f_op_f32(floor(1003f)))).b, !func_1(all(vec3<bool>(global3[_wgslsmith_index_u32(20560u, 19u)], global3[_wgslsmith_index_u32(var_0.x, 19u)], false)), 544f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1706f, -636f))).b, vec4<bool>(select(!var_1.x, true, true), false & !global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(44195u, 16u)], 19u)], global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_sub_u32(u_input.c.x, var_0.x)), 19u)], true));
    var_1 = vec4<bool>(true, true, true, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-623f, -107f), -585f, -1000f)) + func_2(2228u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -378f), _wgslsmith_f_op_f32(-1735f - 412f))).a), _wgslsmith_div_i32(abs(_wgslsmith_sub_i32(19096i, ~(-2147483647i))), ~(-(~1i))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1864f, 560f, 1261f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1747f, -479f, -1048f)))))), _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(~(-vec2<i32>(2147483647i, -1i)), vec2<i32>(min(21647i, 2908i), _wgslsmith_dot_vec3_i32(vec3<i32>(117i, 38667i, 2147483647i), vec3<i32>(22208i, -1i, -24674i))), vec2<i32>(1i, func_2(u_input.c.x, 258f).b.x)), func_2(global0[_wgslsmith_index_u32(0u, 16u)], -529f).b));
}

