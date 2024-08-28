struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: vec2<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

var<private> global1: vec3<u32> = vec3<u32>(30629u, 4294967295u, 66373u);

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(true, vec2<f32>(-571f, -1027f), 8084u), Struct_1(false, vec2<f32>(1201f, 1000f), 77079u), Struct_1(false, vec2<f32>(1000f, 790f), 4294967295u), Struct_1(false, vec2<f32>(1104f, 363f), 44809u), Struct_1(true, vec2<f32>(-1754f, -447f), 4294967295u), Struct_1(true, vec2<f32>(1079f, -805f), 4294967295u), Struct_1(false, vec2<f32>(349f, -425f), 4294967295u), Struct_1(false, vec2<f32>(415f, 2198f), 0u), Struct_1(false, vec2<f32>(-591f, -237f), 4294967295u), Struct_1(false, vec2<f32>(-1729f, -224f), 24721u), Struct_1(false, vec2<f32>(1773f, -1940f), 4294967295u), Struct_1(true, vec2<f32>(1840f, -552f), 1u), Struct_1(false, vec2<f32>(-1352f, 1641f), 32669u), Struct_1(true, vec2<f32>(-532f, 821f), 27292u), Struct_1(true, vec2<f32>(-492f, -429f), 0u), Struct_1(false, vec2<f32>(547f, 1670f), 51950u), Struct_1(true, vec2<f32>(-1000f, -788f), 8612u), Struct_1(false, vec2<f32>(-121f, -383f), 4294967295u), Struct_1(false, vec2<f32>(1000f, 582f), 64560u), Struct_1(false, vec2<f32>(-1931f, 1600f), 0u), Struct_1(true, vec2<f32>(-436f, 284f), 32406u), Struct_1(true, vec2<f32>(-499f, 787f), 30013u), Struct_1(false, vec2<f32>(-209f, -1571f), 46678u), Struct_1(true, vec2<f32>(1000f, 1184f), 67702u), Struct_1(false, vec2<f32>(-660f, 1031f), 120082u), Struct_1(true, vec2<f32>(-832f, -442f), 48281u), Struct_1(true, vec2<f32>(-1300f, -681f), 0u), Struct_1(true, vec2<f32>(114f, 424f), 13208u), Struct_1(false, vec2<f32>(-1470f, 473f), 35248u));

var<private> global3: array<vec3<bool>, 10> = array<vec3<bool>, 10>(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true));

var<private> global4: array<bool, 16>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: u32) -> u32 {
    let var_0 = abs(4294967295u);
    var var_1 = global2[_wgslsmith_index_u32(4294967295u, 29u)];
    let var_2 = any(!arg_0.zz);
    let var_3 = var_1.b.x;
    let var_4 = Struct_1(all(select(arg_0.xy, arg_0.zz, var_1.b.x > _wgslsmith_f_op_f32(var_1.b.x * -765f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_1.b), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.b)))), true)), 0u);
    return ~var_1.c;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = arg_2.xwy;
    let var_1 = vec2<bool>(true, true);
    let var_2 = global2[_wgslsmith_index_u32(reverseBits(arg_3.c), 29u)];
    var_0 = select(!global3[_wgslsmith_index_u32(func_3(select(select(vec3<bool>(true, true, false), arg_2.zwz, arg_3.a), vec3<bool>(false, global4[_wgslsmith_index_u32(0u, 16u)], var_1.x), var_1.x), arg_3.b.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.c, arg_1.c, 9927u), vec3<u32>(1u, arg_1.c, 70559u))), 10u)], !(!arg_2.xxz), vec3<bool>(true, true, true));
    global1 = vec3<u32>(u_input.a, _wgslsmith_mult_u32(var_2.c, 1u), ~var_2.c);
    return vec3<u32>(~_wgslsmith_sub_u32(1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(46303u, arg_1.c, 42428u, arg_3.c), vec4<u32>(arg_1.c, 1u, var_2.c, 1u))), firstLeadingBit(global1.x), 1u);
}

fn func_1() -> Struct_1 {
    let var_0 = -1764f;
    let var_1 = !(max(_wgslsmith_sub_u32(46590u, u_input.a), 44891u) != _wgslsmith_dot_vec3_u32(func_2(vec3<f32>(-410f, var_0, -2040f), Struct_1(false, vec2<f32>(101f, var_0), u_input.a), vec4<bool>(false, global4[_wgslsmith_index_u32(0u, 16u)], global4[_wgslsmith_index_u32(1u, 16u)], global4[_wgslsmith_index_u32(3716u, 16u)]), Struct_1(true, vec2<f32>(var_0, 697f), global1.x)), vec3<u32>(0u, u_input.a, 98813u) | vec3<u32>(28993u, global1.x, global1.x))) & true;
    let var_2 = Struct_1(false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(var_0, var_0), var_0) - vec2<f32>(_wgslsmith_f_op_f32(var_0 + var_0), _wgslsmith_f_op_f32(select(616f, var_0, true))))), u_input.a << (21975u % 32u));
    global3 = array<vec3<bool>, 10>();
    global1 = vec3<u32>(global1.x, 24456u, firstLeadingBit(global1.x)) & vec3<u32>(_wgslsmith_div_u32(~global1.x ^ _wgslsmith_div_u32(var_2.c, 976u), ~(~0u)), ~reverseBits(8807u), ~firstTrailingBit(~4294967295u));
    return Struct_1(true, var_2.b, _wgslsmith_mult_u32(4294967295u, ~u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = ~firstLeadingBit(reverseBits(vec3<u32>(_wgslsmith_mod_u32(4294967295u, 30914u), _wgslsmith_mod_u32(31591u, 3688u), _wgslsmith_div_u32(u_input.a, 1u))));
    var var_1 = _wgslsmith_mod_vec4_i32(-((countOneBits(vec4<i32>(u_input.c, u_input.c, -3920i, u_input.c)) | -vec4<i32>(12662i, 2147483647i, u_input.b, 2893i)) ^ ~vec4<i32>(-1i, u_input.c, 41477i, 5063i)), select(vec4<i32>(reverseBits(~1136i), _wgslsmith_dot_vec2_i32(min(vec2<i32>(u_input.b, 2147483647i), vec2<i32>(u_input.c, u_input.c)), vec2<i32>(u_input.c, u_input.c)), abs(_wgslsmith_sub_i32(u_input.c, 1i)), reverseBits(u_input.c ^ u_input.c)), -((vec4<i32>(u_input.b, u_input.b, 2147483647i, 2147483647i) >> (vec4<u32>(4294967295u, 0u, global1.x, u_input.a) % vec4<u32>(32u))) & firstLeadingBit(vec4<i32>(22058i, -2147483647i, -2147483647i, 41702i))), !vec4<bool>(false, global4[_wgslsmith_index_u32(1u, 16u)] && global4[_wgslsmith_index_u32(17471u, 16u)], false | global4[_wgslsmith_index_u32(48u, 16u)], true)));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_0.b.x, -396f))));
    global1 = ~(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, global1.x), vec3<u32>(u_input.a, u_input.a, 49681u) | vec3<u32>(u_input.a, var_0.c, 292u))));
    let var_3 = global0[_wgslsmith_index_u32(19496u, 11u)];
    var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(var_1.x, reverseBits(u_input.c) & _wgslsmith_dot_vec2_i32(vec2<i32>(-89518i, var_1.x), var_1.yy), (1i | u_input.b) << (1u % 32u), _wgslsmith_mod_i32(u_input.c, 13031i)) & -_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 18979i, var_1.x, u_input.c), vec4<i32>(-19913i, -58818i, var_1.x, var_1.x)), -vec4<i32>(16744i, 1i, u_input.b, -24667i)), vec4<i32>((-var_1.x | 2147483647i) ^ reverseBits(u_input.b), -(~u_input.b), u_input.b, -abs(0i)));
    let var_4 = func_1();
    let var_5 = global4[_wgslsmith_index_u32(13785u, 16u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(~vec3<u32>(var_0.c >> (var_4.c % 32u), 0u >> (global1.x % 32u), _wgslsmith_sub_u32(var_4.c, var_4.c)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.c, u_input.a, global1.x), ~vec3<u32>(23424u, 2758u, var_4.c))), _wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(833f)), _wgslsmith_f_op_f32(trunc(-1052f))) * var_0.b.x)), 1949f, _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_4.c, _wgslsmith_mod_u32(4294967295u, global1.x)), vec2<u32>(~var_3.c, var_0.c)), _wgslsmith_div_vec2_u32(~firstTrailingBit(vec2<u32>(4294967295u, 4294967295u)), ~firstLeadingBit(vec2<u32>(global1.x, var_0.c))), max(global1.yx ^ vec2<u32>(var_4.c, 24625u), _wgslsmith_mult_vec2_u32(global1.xx, _wgslsmith_add_vec2_u32(global1.yy, global1.xz)))), _wgslsmith_mult_vec2_u32(global1.yx, global1.yx));
}

