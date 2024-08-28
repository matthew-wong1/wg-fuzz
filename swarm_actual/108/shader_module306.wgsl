struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 32>;

var<private> global1: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(-1i, vec4<i32>(-1237i, 2147483647i, 0i, 4512i), 37253u, vec3<u32>(1u, 88273u, 35882u), false), Struct_1(1i, vec4<i32>(15264i, 60174i, 2147483647i, i32(-2147483648)), 2919u, vec3<u32>(1u, 0u, 4294967295u), false), Struct_1(i32(-2147483648), vec4<i32>(0i, 1i, 2097i, -1i), 1u, vec3<u32>(4294967295u, 11350u, 36664u), false), Struct_1(0i, vec4<i32>(-73076i, 0i, -1i, 36606i), 0u, vec3<u32>(0u, 18936u, 49653u), true), Struct_1(0i, vec4<i32>(1i, 48492i, -19992i, -20975i), 11424u, vec3<u32>(0u, 1u, 1u), true), Struct_1(53559i, vec4<i32>(i32(-2147483648), 2780i, -73010i, 8747i), 4294967295u, vec3<u32>(50368u, 0u, 8441u), true), Struct_1(0i, vec4<i32>(-5741i, i32(-2147483648), 0i, 36488i), 0u, vec3<u32>(4294967295u, 1u, 25958u), false), Struct_1(-7331i, vec4<i32>(66173i, 25707i, 37823i, -44274i), 30204u, vec3<u32>(4294967295u, 15907u, 0u), false), Struct_1(23604i, vec4<i32>(0i, 5839i, 1i, 0i), 0u, vec3<u32>(73037u, 73704u, 24775u), false), Struct_1(0i, vec4<i32>(1i, -1i, i32(-2147483648), -33993i), 16427u, vec3<u32>(0u, 0u, 35777u), false), Struct_1(30987i, vec4<i32>(1i, 0i, i32(-2147483648), -44512i), 0u, vec3<u32>(1u, 10693u, 0u), true), Struct_1(-1i, vec4<i32>(20346i, 23327i, -1i, -9599i), 48898u, vec3<u32>(1u, 71607u, 20398u), false), Struct_1(2147483647i, vec4<i32>(1i, 19616i, -1i, 24143i), 17265u, vec3<u32>(35034u, 33134u, 50616u), false), Struct_1(5217i, vec4<i32>(28316i, 0i, -1i, -36879i), 20440u, vec3<u32>(1u, 1u, 49471u), false), Struct_1(0i, vec4<i32>(-55023i, i32(-2147483648), -21602i, -61972i), 4294967295u, vec3<u32>(41187u, 30596u, 83639u), true), Struct_1(-18841i, vec4<i32>(24795i, -1i, 37921i, 0i), 18990u, vec3<u32>(70556u, 0u, 1u), true), Struct_1(i32(-2147483648), vec4<i32>(1i, -29950i, 20423i, 2147483647i), 5048u, vec3<u32>(31444u, 1u, 33909u), false), Struct_1(-1i, vec4<i32>(1i, 22387i, -31348i, 10160i), 0u, vec3<u32>(49994u, 36242u, 72317u), false), Struct_1(8602i, vec4<i32>(-26812i, 0i, -27151i, i32(-2147483648)), 57246u, vec3<u32>(4294967295u, 4294967295u, 0u), false), Struct_1(2147483647i, vec4<i32>(9835i, -53787i, 24890i, i32(-2147483648)), 57055u, vec3<u32>(4294967295u, 0u, 1u), true), Struct_1(9800i, vec4<i32>(-12153i, 2147483647i, 10398i, 75460i), 0u, vec3<u32>(0u, 0u, 47588u), false), Struct_1(-60225i, vec4<i32>(-1i, -1i, 11325i, 0i), 50672u, vec3<u32>(31173u, 31317u, 4482u), true), Struct_1(i32(-2147483648), vec4<i32>(-24043i, -46503i, -25696i, -3332i), 1u, vec3<u32>(4294967295u, 45794u, 4294967295u), true), Struct_1(1131i, vec4<i32>(-1i, 2147483647i, 19813i, 0i), 18682u, vec3<u32>(35808u, 0u, 4294967295u), true));

var<private> global2: array<vec4<bool>, 6> = array<vec4<bool>, 6>(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec2<i32> {
    var var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -1476f, -1478f), vec3<f32>(-692f, -1718f, 1029f)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1084f, -116f, 781f), vec3<f32>(490f, 899f, 2216f))))) - vec3<f32>(-949f, _wgslsmith_f_op_f32(f32(-1f) * -478f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 1581f) - 1688f))));
    var var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-7892i, 2147483647i, 73082i, 17974i), vec4<i32>(-14956i, 2147483647i, 470i, -1i), true), vec4<i32>(1i, 1i, 1i, 1i) ^ select(vec4<i32>(3348i, 15836i, -85098i, -37070i), vec4<i32>(1i, -20772i, -1i, 44592i), false)), _wgslsmith_sub_i32(reverseBits(countOneBits(13624i)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 5139i, -35680i, -2686i), vec4<i32>(0i, 1i, -4370i, 2147483647i))), -(_wgslsmith_clamp_i32(11461i, -2761i, 0i) | 30784i)), max(-(vec3<i32>(-1i) * -vec3<i32>(0i, -85537i, 19493i)), vec3<i32>(1i, 1i, 1i)));
    global1 = array<Struct_1, 24>();
    let var_2 = true;
    global1 = array<Struct_1, 24>();
    return abs(vec2<i32>(~firstLeadingBit(var_1.x), _wgslsmith_sub_i32(12469i, -1i)) ^ vec2<i32>(i32(-1i) * -var_1.x, _wgslsmith_dot_vec2_i32(max(var_1.yx, vec2<i32>(1i, -8805i)), var_1.zy)));
}

fn func_2() -> f32 {
    global2 = array<vec4<bool>, 6>();
    var var_0 = Struct_1(-1i, vec4<i32>(~(-2147483647i), -37343i, 19722i, abs(1i)), 0u, ~vec3<u32>(37495u, 4294967295u, ~u_input.a.x), !all(!select(global2[_wgslsmith_index_u32(1u, 6u)], global2[_wgslsmith_index_u32(4294967295u, 6u)], global2[_wgslsmith_index_u32(36409u, 6u)])));
    var var_1 = global0[_wgslsmith_index_u32(countOneBits(countOneBits(~4294967295u ^ var_0.c)), 32u)];
    let var_2 = var_1.a.zz;
    var var_3 = _wgslsmith_div_vec2_i32(firstLeadingBit(-select(vec2<i32>(var_0.b.x, 28386i), vec2<i32>(var_0.b.x, var_2.x), vec2<bool>(false, var_0.e)) ^ ~func_3()), -func_3());
    return _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(f32(-1f) * -709f));
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: vec2<bool>, arg_3: u32) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(375f)) + _wgslsmith_f_op_f32(1000f * -635f)))))));
    var var_1 = global0[_wgslsmith_index_u32(28601u, 32u)];
    var var_2 = vec2<f32>(_wgslsmith_div_f32(var_0, 1300f), -106f);
    var var_3 = _wgslsmith_f_op_f32(func_2());
    global2 = array<vec4<bool>, 6>();
    return StorageBuffer(_wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(236f)) * var_2.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 32>();
    var var_0 = vec3<i32>(0i, _wgslsmith_sub_i32(1i, countOneBits(5819i)), _wgslsmith_sub_i32(~select(2147483647i, 1i, true), min(i32(-1i) * -2147483647i, -7080i))) >> (_wgslsmith_add_vec3_u32(vec3<u32>(min(~65782u, ~u_input.a.x), 3692u, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(4294967295u, 8745u, 59252u, 5787u)), u_input.a)), u_input.a.zwx) % vec3<u32>(32u));
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-568f, 801f, 1147f) + vec3<f32>(1509f, 362f, 496f)) - vec3<f32>(-364f, -387f, _wgslsmith_f_op_f32(1412f * 1233f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-475f, -857f, -1088f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2160f, 734f, 294f)))) - vec3<f32>(_wgslsmith_f_op_f32(-1002f - -302f), _wgslsmith_f_op_f32(f32(-1f) * -1025f), 350f))));
    global1 = array<Struct_1, 24>();
    var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1000f, var_1.a.x))));
    var var_2 = select(u_input.a.wwy >> (~(~abs(vec3<u32>(15374u, 6324u, u_input.a.x))) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(23493u, u_input.a.x, u_input.a.x) >> (u_input.a.xyw % vec3<u32>(32u)), u_input.a.yzz), vec3<u32>(0u, 43314u, ~abs(29946u))), true);
    let x = u_input.a;
    s_output = func_1(Struct_3(all(vec3<bool>(true, true, true)), vec4<u32>(u_input.a.x, 9185u, 7098u, 102115u)), ((_wgslsmith_f_op_f32(-var_1.a.x) != var_1.a.x) || any(vec3<bool>(false, true, false))) & true, vec2<bool>(true, any(select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, false), true)))), 0u);
}

