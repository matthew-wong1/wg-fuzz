struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec2<u32>,
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

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true));

var<private> global1: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(Struct_1(false)), Struct_2(Struct_1(false)), Struct_2(Struct_1(true)), Struct_2(Struct_1(true)), Struct_2(Struct_1(false)), Struct_2(Struct_1(false)), Struct_2(Struct_1(false)), Struct_2(Struct_1(true)), Struct_2(Struct_1(false)), Struct_2(Struct_1(true)), Struct_2(Struct_1(false)), Struct_2(Struct_1(false)), Struct_2(Struct_1(true)), Struct_2(Struct_1(false)), Struct_2(Struct_1(true)), Struct_2(Struct_1(true)), Struct_2(Struct_1(false)), Struct_2(Struct_1(false)), Struct_2(Struct_1(false)), Struct_2(Struct_1(true)), Struct_2(Struct_1(false)));

var<private> global2: vec2<i32>;

var<private> global3: Struct_1 = Struct_1(false);

var<private> global4: array<vec2<bool>, 3> = array<vec2<bool>, 3>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(arg_0.a.a);
    var var_1 = firstLeadingBit(u_input.c | _wgslsmith_div_i32(countOneBits(u_input.c), _wgslsmith_dot_vec3_i32(vec3<i32>(10294i, -2147483647i, -61841i), vec3<i32>(-22236i, global2.x, 0i)))) >> (9087u % 32u);
    let var_2 = reverseBits(min(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, u_input.a, u_input.b, 32607u), abs(vec4<u32>(u_input.b, u_input.d.x, 1u, 0u))), ~abs(vec4<u32>(15577u, u_input.b, u_input.b, 4294967295u) & vec4<u32>(0u, 66846u, 0u, 1u))));
    return Struct_2(Struct_1(global3.a || !(var_0.a | false)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_2) -> Struct_2 {
    global2 = _wgslsmith_clamp_vec2_i32(~(-_wgslsmith_sub_vec2_i32(~vec2<i32>(global2.x, global2.x), -vec2<i32>(3914i, u_input.c))), vec2<i32>(-5278i, 2147483647i), -_wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(-1i, global2.x)), (vec2<i32>(0i, 7602i) ^ vec2<i32>(global2.x, u_input.c)) | firstTrailingBit(vec2<i32>(u_input.c, global2.x))));
    global0 = array<Struct_1, 16>();
    return func_2(arg_2);
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> vec4<f32> {
    global1 = array<Struct_2, 21>();
    var var_0 = func_3(global3.a, arg_0, func_2(Struct_2(Struct_1(true))));
    let var_1 = global4[_wgslsmith_index_u32(~1u, 3u)];
    let var_2 = ~abs(select(~_wgslsmith_add_vec3_u32(vec3<u32>(arg_0, u_input.a, 34450u), vec3<u32>(u_input.a, arg_0, arg_0)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 1u, arg_0), ~vec3<u32>(0u, u_input.e.x, 54744u)), vec3<bool>(true, true, true)));
    var_0 = Struct_2(func_3(_wgslsmith_add_i32(abs(u_input.c), global2.x) != ~(~0i), 46691u, func_2(arg_1)).a);
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1474f, -1094f, 981f, -994f) - vec4<f32>(1011f, -1272f, -1185f, 1768f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(595f, -1000f, -2622f, -626f) - vec4<f32>(1476f, -244f, 390f, -1000f)))))))));
}

fn func_4(arg_0: vec4<f32>) -> Struct_1 {
    global2 = _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, firstTrailingBit(global2.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(min(u_input.c, u_input.c) & -2147483647i, -min(-46119i, -1i)), vec2<i32>(48761i, ~(-23943i))));
    var var_0 = vec2<f32>(111f, arg_0.x);
    var var_1 = vec4<i32>(_wgslsmith_div_i32(firstLeadingBit(~u_input.c), firstTrailingBit(firstLeadingBit(17978i))), countOneBits(-(-916i >> (1u % 32u))), u_input.c, ~select(-2147483647i, countOneBits(u_input.c), !global3.a)) & reverseBits(vec4<i32>(-_wgslsmith_div_i32(1i, 15371i), max(firstTrailingBit(global2.x), abs(2147483647i)), u_input.c, u_input.c));
    global3 = func_2(Struct_2(func_2(func_2(global1[_wgslsmith_index_u32(u_input.b, 21u)])).a)).a;
    var var_2 = vec2<bool>(_wgslsmith_f_op_f32(-var_0.x) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(252f + arg_0.x)) * -1342f), global3.a);
    return global0[_wgslsmith_index_u32(4294967295u, 16u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 21u)];
    global1 = array<Struct_2, 21>();
    let var_1 = select(!select(!vec3<bool>(true, true, global3.a), select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, global3.a), vec3<bool>(global3.a, false, true)), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), !(!var_0.a.a)), !select(!(!vec3<bool>(true, var_0.a.a, global3.a)), !(!vec3<bool>(global3.a, false, false)), vec3<bool>(any(global4[_wgslsmith_index_u32(1u, 3u)]), global3.a, !var_0.a.a)), (all(!vec4<bool>(false, global3.a, false, global3.a)) && true) && true);
    global1 = array<Struct_2, 21>();
    var_0 = Struct_2(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(u_input.a, Struct_2(global0[_wgslsmith_index_u32(1u, 16u)]))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2279f, 1064f, 406f, 1000f) - vec4<f32>(-278f, -1398f, -163f, 1445f)) - vec4<f32>(651f, 1889f, 276f, 1153f)))));
    let var_2 = u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(global2.x >> (_wgslsmith_mod_u32(~(~var_2), _wgslsmith_mult_u32(17607u, u_input.e.x)) % 32u));
}

