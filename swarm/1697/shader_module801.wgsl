struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: i32,
    d: vec4<bool>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: f32 = -2952f;

var<private> global2: u32 = 17305u;

var<private> global3: array<f32, 6>;

var<private> global4: array<Struct_1, 3>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1() -> bool {
    var var_0 = true;
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 6u)], global3[_wgslsmith_index_u32(u_input.b.x, 6u)], global3[_wgslsmith_index_u32(u_input.a.x, 6u)]) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(1u, 6u)], global3[_wgslsmith_index_u32(0u, 6u)], global3[_wgslsmith_index_u32(u_input.b.x, 6u)]))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 6u)], 1986f, 471f), vec3<f32>(1454f, global3[_wgslsmith_index_u32(u_input.b.x, 6u)], global3[_wgslsmith_index_u32(1u, 6u)])))))) * vec3<f32>(global3[_wgslsmith_index_u32(firstLeadingBit(4294967295u & u_input.b.x), 6u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2003f - global3[_wgslsmith_index_u32(u_input.b.x, 6u)])), global3[_wgslsmith_index_u32(0u, 6u)])));
    let var_2 = Struct_3(false);
    return var_2.a;
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_1) -> u32 {
    let var_0 = vec2<i32>(1i, 1i);
    var var_1 = -_wgslsmith_add_vec3_i32(vec3<i32>(abs(firstTrailingBit(arg_2.x)), ~arg_3.d, arg_3.d), _wgslsmith_div_vec3_i32(-_wgslsmith_sub_vec3_i32(arg_2.zxx, arg_2.wwx), countOneBits(select(arg_2.zww, arg_2.zwz, arg_3.b))));
    let var_2 = Struct_1(arg_0, false, -999f, arg_3.d, 2147483647i);
    let var_3 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, arg_1), arg_1);
    let var_4 = vec3<bool>(!arg_3.b, any(select(vec4<bool>(!arg_3.b, var_2.a > arg_3.c, var_2.b, !var_2.b), select(select(vec4<bool>(var_2.b, true, true, var_2.b), vec4<bool>(true, false, true, arg_3.b), arg_3.b), vec4<bool>(var_2.b, arg_3.b, var_2.b, arg_3.b), true), select(select(vec4<bool>(false, false, false, arg_3.b), vec4<bool>(arg_3.b, false, false, var_2.b), vec4<bool>(false, arg_3.b, arg_3.b, false)), select(vec4<bool>(true, arg_3.b, var_2.b, arg_3.b), vec4<bool>(arg_3.b, var_2.b, arg_3.b, var_2.b), false), arg_3.b))), !(all(vec3<bool>(false, true, arg_3.b)) || false) && any(!vec3<bool>(var_2.b, false, var_2.b)));
    return _wgslsmith_sub_u32(~(~(~arg_1)), _wgslsmith_mult_u32(countOneBits(u_input.b.x), var_3)) | (0u ^ ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(41632u, u_input.a.x, u_input.a.x, var_3), u_input.b)));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec4<bool>) -> Struct_1 {
    global2 = ~0u;
    var var_0 = Struct_3(arg_2.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-386f, 501f, global3[_wgslsmith_index_u32(21171u, 6u)])) + vec3<f32>(1000f, -139f, -223f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(1u, 6u)], -1527f, 845f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(0u, 6u)], global3[_wgslsmith_index_u32(arg_1, 6u)], arg_0))), arg_2.zxy)), vec3<f32>(_wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(70676u, 6u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(784f + -820f)), -676f)));
    global3 = array<f32, 6>();
    var var_2 = select(-(~(-vec2<i32>(-2147483647i, 1i))), -(vec2<i32>(-1i) * -vec2<i32>(42401i, -1i)), vec2<bool>(true, func_3(630f, arg_1, vec4<i32>(-13120i, 9592i, -23677i, -1i), global4[_wgslsmith_index_u32(71199u, 3u)]) >= 30749u)) ^ vec2<i32>(reverseBits(1i), countOneBits(28550i));
    return Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(arg_0)), var_1.x)))), !select(false, true, arg_2.x), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_1, 6u)]), min(var_2.x, var_2.x), ~var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(u_input.a.x);
    var var_1 = _wgslsmith_clamp_vec4_i32(~select(firstLeadingBit(vec4<i32>(1i, 1i, 1i, 1i)), -vec4<i32>(-17162i, 1i, -14600i, 2147483647i), vec4<bool>(true, true, true, true)), countOneBits(vec4<i32>(select(firstTrailingBit(-1i), countOneBits(0i), true), abs(2147483647i), -1i, _wgslsmith_add_i32(1i, 1i))), ~((vec4<i32>(-1i) * -vec4<i32>(1i, -9962i, 0i, 2147483647i)) << (~(vec4<u32>(u_input.b.x, u_input.b.x, 29609u, u_input.a.x) & vec4<u32>(9011u, 82346u, 0u, 22301u)) % vec4<u32>(32u))));
    global4 = array<Struct_1, 3>();
    let var_2 = func_2(-806f, 0u >> ((u_input.a.x | u_input.b.x) % 32u), select(!select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, false, true)), vec4<bool>(!func_1(), !all(vec4<bool>(true, true, false, true)), true, true), true));
    let var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a - 258f) + _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(min(u_input.b.x, 4294967295u), 6u)], _wgslsmith_f_op_f32(f32(-1f) * -1485f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c, 249f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(51823u, 6u)], -382f), vec2<f32>(var_2.a, 1000f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(373f, -1000f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, var_2.a)))), select(vec2<bool>(true, true), vec2<bool>(var_2.b, var_2.b), vec2<bool>(true, true))))));
    global1 = _wgslsmith_f_op_f32(-var_3.x);
    var var_4 = select(select(u_input.b.xw, vec2<u32>(_wgslsmith_div_u32(1u, ~u_input.b.x), firstLeadingBit(abs(u_input.b.x))), vec2<bool>(var_2.b, _wgslsmith_div_f32(593f, -2529f) <= _wgslsmith_f_op_f32(var_3.x * var_2.a))), u_input.b.xz, var_2.b);
    var var_5 = abs(~u_input.b);
    var_1 = ~max(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(13494i, 11625i, -27913i, -15522i), vec4<i32>(var_2.e, var_1.x, -14797i, var_1.x), vec4<i32>(15201i, var_1.x, var_2.d, var_2.e)), firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.e, 0i, var_2.e, 1i), vec4<i32>(0i, 47761i, var_2.d, 2147483647i), vec4<i32>(var_2.d, var_1.x, var_2.e, -57499i))), (var_2.b & false) && !var_2.b), countOneBits(_wgslsmith_clamp_vec4_i32(-vec4<i32>(-1i, 0i, -1i, var_2.d), countOneBits(vec4<i32>(-2147483647i, 0i, var_1.x, var_1.x)), reverseBits(vec4<i32>(0i, 1i, var_2.d, -23809i)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, 2147483647i, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_3, vec2<f32>(var_2.c, var_3.x), vec2<bool>(false, var_2.b))))), _wgslsmith_f_op_vec2_f32(-var_3))), -1749f, -(~(abs(vec4<i32>(var_2.e, var_2.e, -1i, var_2.d)) & (vec4<i32>(var_1.x, var_1.x, 2147483647i, var_2.e) << (u_input.b % vec4<u32>(32u))))));
}

