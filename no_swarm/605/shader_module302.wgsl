struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<i32>,
    d: i32,
    e: vec2<bool>,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

var<private> global1: array<i32, 6> = array<i32, 6>(-7841i, 0i, 6236i, 1i, 2147483647i, -1i);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32) -> bool {
    global1 = array<i32, 6>();
    global1 = array<i32, 6>();
    global1 = array<i32, 6>();
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1442f))))))));
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-216f))))), -345f);
    return arg_1.b.b;
}

fn func_2(arg_0: bool, arg_1: vec2<bool>) -> u32 {
    global1 = array<i32, 6>();
    var var_0 = Struct_5(global1[_wgslsmith_index_u32(4294967295u, 6u)], ~max(0u << (firstTrailingBit(13288u) % 32u), 0u), any(!select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_1.x, arg_0, true), true)));
    var var_1 = Struct_3(Struct_2(_wgslsmith_mult_i32(~var_0.a, -2147483647i), Struct_1(-countOneBits(vec2<i32>(u_input.a, -50753i)), !all(vec4<bool>(false, false, arg_0, var_0.c)))), -19619i);
    let var_2 = Struct_5(0i, var_0.b, !func_3(Struct_2(~global1[_wgslsmith_index_u32(1u, 6u)], var_1.a.b), var_1.a, (var_0.b << (44476u % 32u)) >> (firstTrailingBit(10521u) % 32u)));
    var var_3 = 4294967295u;
    return countOneBits(var_2.b);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_4) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(reverseBits(~_wgslsmith_clamp_u32(abs(~arg_0.x), _wgslsmith_sub_u32(arg_0.x, _wgslsmith_mod_u32(0u, 5920u)), func_2(!arg_2.b, arg_3.e))), 6u)];
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-578f + -718f)), _wgslsmith_f_op_f32(f32(-1f) * -148f)))));
    var var_2 = Struct_2(~global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 54704u, arg_0.x), vec4<u32>(21215u, arg_0.x, 1u, arg_0.x))) & 43908u, 6u)], Struct_1(arg_1.yz, any(vec3<bool>(false, all(vec4<bool>(true, arg_2.b, true, false)), arg_3.b.b))));
    var var_3 = Struct_2(2147483647i, arg_2);
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1 - -965f))), _wgslsmith_f_op_f32(-1476f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-639f, 512f)) - 574f))));
    return _wgslsmith_mult_u32(~_wgslsmith_add_u32(_wgslsmith_mult_u32(~arg_0.x, ~arg_0.x), arg_0.x), func_2(any(select(select(arg_3.a, vec2<bool>(arg_2.b, var_3.b.b), var_3.b.b), vec2<bool>(true, false), select(arg_3.e, vec2<bool>(true, false), arg_3.a.x))), select(arg_3.a, !select(arg_3.a, vec2<bool>(var_2.b.b, var_2.b.b), arg_3.e), var_3.b.b & false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(!(!vec3<bool>(any(vec3<bool>(true, false, false)), any(vec4<bool>(true, false, true, false)), true)));
    var var_1 = max(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(select(vec4<i32>(u_input.a, global1[_wgslsmith_index_u32(81689u, 6u)], 36349i, 0i), -vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(2194u, 6u)], global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(51633u, 6u)]), vec4<bool>(true, true, true, true)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-12343i, -1i, global1[_wgslsmith_index_u32(13952u, 6u)]), vec3<i32>(global1[_wgslsmith_index_u32(1u, 6u)], -2147483647i, -1i)), 1i, _wgslsmith_sub_i32(u_input.a, -2273i), -u_input.a)), -_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, global1[_wgslsmith_index_u32(0u, 6u)], 15031i, -2147483647i), vec4<i32>(-6281i, 16909i, -25066i, 36465i)) >> (vec4<u32>(1u, 1u, 45186u, func_1(vec4<u32>(1u, 1u, 24497u, 0u), vec3<i32>(-16185i, -91513i, 3720i), Struct_1(vec2<i32>(-1i, global1[_wgslsmith_index_u32(48338u, 6u)]), false), Struct_4(vec2<bool>(true, true), Struct_1(vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 6u)], -6588i), false), vec4<i32>(77361i, 5058i, global1[_wgslsmith_index_u32(29948u, 6u)], global1[_wgslsmith_index_u32(1u, 6u)]), 6477i, vec2<bool>(false, false)))) % vec4<u32>(32u))), vec4<i32>(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-8821i, global1[_wgslsmith_index_u32(1u, 6u)]) << (vec2<u32>(14777u, 4294967295u) % vec2<u32>(32u)), vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 6u)], -7308i)), u_input.a, 1i) ^ reverseBits(abs(firstTrailingBit(vec4<i32>(0i, 1i, 26458i, global1[_wgslsmith_index_u32(4294967295u, 6u)])))));
    let var_2 = 22739i;
    var_0 = select(!(!func_3(Struct_2(global1[_wgslsmith_index_u32(1u, 6u)], Struct_1(var_1.xz, true)), Struct_2(var_2, Struct_1(var_1.xy, false)), func_1(vec4<u32>(13929u, 29372u, 4294967295u, 1u), vec3<i32>(8550i, 1i, var_1.x), Struct_1(var_1.wz, false), Struct_4(vec2<bool>(true, true), Struct_1(vec2<i32>(u_input.a, 2147483647i), true), vec4<i32>(-31888i, 1i, var_1.x, 55770i), -1i, vec2<bool>(false, true))))), all(vec2<bool>(true, true)) | all(select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true))), all(vec3<bool>(true, true, false)));
    let x = u_input.a;
    s_output = StorageBuffer(74810u, _wgslsmith_clamp_vec3_u32(vec3<u32>(64618u, 51693u, min(abs(4294967295u), ~1u)), _wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(46922u, 3676u, 1u)), ~(~vec3<u32>(3625u, 9148u, 9635u))), vec3<u32>(min(1u, ~1u), ~select(0u, 0u, false), abs(_wgslsmith_mod_u32(4294967295u, 67342u)))));
}

