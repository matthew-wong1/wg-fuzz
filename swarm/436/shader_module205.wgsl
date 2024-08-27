struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), 0i, 76909i);

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(2147483647i, vec3<bool>(true, false, true), vec3<u32>(53129u, 57045u, 73448u)), Struct_1(-15953i, vec3<bool>(true, true, false), vec3<u32>(1u, 0u, 1u)), Struct_1(148i, vec3<bool>(false, false, true), vec3<u32>(4294967295u, 25126u, 30517u)), Struct_1(i32(-2147483648), vec3<bool>(false, true, false), vec3<u32>(4294967295u, 49386u, 1u)), Struct_1(0i, vec3<bool>(false, true, false), vec3<u32>(35960u, 4294967295u, 45861u)), Struct_1(1i, vec3<bool>(false, true, true), vec3<u32>(144454u, 20335u, 47066u)), Struct_1(-25055i, vec3<bool>(true, false, true), vec3<u32>(46729u, 4294967295u, 1u)), Struct_1(-3801i, vec3<bool>(false, false, true), vec3<u32>(1u, 1u, 0u)), Struct_1(11183i, vec3<bool>(false, true, false), vec3<u32>(48851u, 25318u, 4294967295u)), Struct_1(i32(-2147483648), vec3<bool>(true, false, false), vec3<u32>(0u, 1u, 4294967295u)), Struct_1(-81437i, vec3<bool>(true, true, false), vec3<u32>(0u, 0u, 1u)), Struct_1(-68012i, vec3<bool>(false, false, false), vec3<u32>(10909u, 33638u, 28306u)), Struct_1(16501i, vec3<bool>(true, false, true), vec3<u32>(1u, 1u, 4294967295u)), Struct_1(53389i, vec3<bool>(true, true, false), vec3<u32>(5381u, 54495u, 1u)), Struct_1(-10301i, vec3<bool>(false, true, false), vec3<u32>(23555u, 1u, 54147u)), Struct_1(2147483647i, vec3<bool>(false, false, false), vec3<u32>(41750u, 4294967295u, 0u)), Struct_1(-1i, vec3<bool>(true, false, false), vec3<u32>(4294967295u, 1u, 14184u)));

var<private> global2: array<bool, 6> = array<bool, 6>(false, true, false, true, true, true);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec3<i32>) -> vec3<i32> {
    let var_0 = global1[_wgslsmith_index_u32(~(select(u_input.a.x, arg_1, false) << (reverseBits(reverseBits(~u_input.a.x)) % 32u)), 17u)];
    let var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~u_input.a.www << (firstLeadingBit(~u_input.a.wzw) % vec3<u32>(32u)), ~(~vec3<u32>(var_0.c.x, 20534u, 1u) | _wgslsmith_mod_vec3_u32(u_input.a.wyz, var_0.c))), 17u)];
    global2 = array<bool, 6>();
    var var_2 = _wgslsmith_mult_u32(abs(var_1.c.x), 30940u);
    var_2 = arg_1 << (_wgslsmith_mod_u32(~_wgslsmith_add_u32(u_input.a.x | 81924u, _wgslsmith_add_u32(60160u, var_0.c.x)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), _wgslsmith_clamp_vec2_u32(var_1.c.zy, vec2<u32>(1u, 65897u), var_1.c.zx))) % 32u);
    return vec3<i32>(global0.x, firstLeadingBit(global0.x), ~(~(_wgslsmith_dot_vec2_i32(arg_2.xy, vec2<i32>(global0.x, global0.x)) ^ -var_1.a)));
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    global0 = ~min(_wgslsmith_clamp_vec3_i32(vec3<i32>(abs(global0.x), global0.x, global0.x >> (0u % 32u)), firstLeadingBit(vec3<i32>(global0.x, -1i, 1i) >> (vec3<u32>(u_input.a.x, u_input.a.x, arg_0.x) % vec3<u32>(32u))), countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, global0.x, global0.x), vec3<i32>(global0.x, global0.x, -8164i)))), -vec3<i32>(global0.x >> (u_input.a.x % 32u), global0.x, ~19726i));
    global0 = firstTrailingBit(-_wgslsmith_div_vec3_i32(vec3<i32>(global0.x, global0.x, global0.x), vec3<i32>(1i, 16315i, -18101i))) & func_3(global2[_wgslsmith_index_u32(~28522u, 6u)], _wgslsmith_clamp_u32(arg_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_0.x, u_input.a.x), vec3<u32>(103952u, 0u, 0u) & u_input.a.xzw), u_input.a.x), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, -70961i, global0.x), -vec3<i32>(global0.x, global0.x, 47924i), max(vec3<i32>(1i, global0.x, -2147483647i), vec3<i32>(global0.x, 5298i, 1i))));
    var var_0 = _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(~(-vec4<i32>(global0.x, -2147483647i, 0i, global0.x)), -(vec4<i32>(26405i, 0i, 33199i, global0.x) & vec4<i32>(global0.x, 2147483647i, -2147483647i, -27919i))) | _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(global0.x, global0.x), -6503i, global0.x, -global0.x), ~vec4<i32>(global0.x, global0.x, global0.x, global0.x)), countOneBits(_wgslsmith_clamp_vec4_i32(~vec4<i32>(39282i, global0.x, global0.x, 5541i), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, global0.x, 0i, -1i), vec4<i32>(global0.x, 3112i, global0.x, global0.x), vec4<i32>(10320i, global0.x, 9145i, global0.x)), vec4<i32>(-1i, global0.x, 53845i, global0.x)), vec4<i32>(global0.x, 1i, 27689i, _wgslsmith_mod_i32(2147483647i, -5689i)))));
    let var_1 = 877f;
    let var_2 = global1[_wgslsmith_index_u32(21339u, 17u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1, _wgslsmith_div_f32(503f, _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(var_1 - 1000f))))) - -2288f);
}

fn func_1() -> vec3<i32> {
    var var_0 = -1308f;
    global1 = array<Struct_1, 17>();
    var var_1 = _wgslsmith_f_op_f32(func_2(~u_input.a.xwz));
    let var_2 = u_input.a.zy;
    var var_3 = firstTrailingBit(-reverseBits(~(-vec3<i32>(29788i, global0.x, 2147483647i))));
    return _wgslsmith_div_vec3_i32(~(~_wgslsmith_mod_vec3_i32(vec3<i32>(var_3.x, -25427i, 26112i), vec3<i32>(-42503i, 1i, var_3.x)) | ~vec3<i32>(-509i, global0.x, global0.x)), -(~((vec3<i32>(-1i, var_3.x, 22916i) >> (vec3<u32>(53074u, u_input.a.x, u_input.a.x) % vec3<u32>(32u))) & abs(vec3<i32>(2147483647i, -1i, var_3.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 6>();
    var var_0 = 1i;
    global2 = array<bool, 6>();
    global1 = array<Struct_1, 17>();
    global2 = array<bool, 6>();
    global0 = -firstLeadingBit(select(func_1(), ~(vec3<i32>(global0.x, 1113i, 0i) >> (vec3<u32>(4294967295u, 1u, u_input.a.x) % vec3<u32>(32u))), !any(vec3<bool>(false, global2[_wgslsmith_index_u32(0u, 6u)], global2[_wgslsmith_index_u32(1u, 6u)]))));
    var_0 = _wgslsmith_clamp_i32(global0.x, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(global0.x, 18654i, 9449i) & ~1i, select(-23902i, global0.x, !any(vec2<bool>(global2[_wgslsmith_index_u32(28511u, 6u)], true)))), -6210i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zzw, 14627i, u_input.a.wz, vec4<i32>(~(~global0.x), func_3(u_input.a.x >= (u_input.a.x | u_input.a.x), 103025u, ~firstTrailingBit(vec3<i32>(global0.x, -21723i, global0.x))).x, -_wgslsmith_sub_i32(37311i, select(0i, 0i, global2[_wgslsmith_index_u32(1284u, 6u)])), global0.x), select(vec2<i32>(global0.x, -10079i) & ~min(global0.xx, global0.zx), global0.zx << (_wgslsmith_mod_vec2_u32(firstLeadingBit(u_input.a.yy), vec2<u32>(118457u, 1u)) % vec2<u32>(32u)), vec2<bool>(true, all(select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 6u)], false, false), vec3<bool>(global2[_wgslsmith_index_u32(11642u, 6u)], global2[_wgslsmith_index_u32(4294967295u, 6u)], global2[_wgslsmith_index_u32(4294967295u, 6u)]), vec3<bool>(false, true, global2[_wgslsmith_index_u32(7233u, 6u)]))))));
}

