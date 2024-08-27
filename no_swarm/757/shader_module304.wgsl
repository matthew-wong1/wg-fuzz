struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
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

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false));

var<private> global1: i32;

var<private> global2: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global3: array<vec3<i32>, 2> = array<vec3<i32>, 2>(vec3<i32>(20812i, -11388i, 2698i), vec3<i32>(1i, 0i, 19879i));

var<private> global4: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<f32>) -> Struct_2 {
    global0 = array<Struct_1, 11>();
    var var_0 = arg_0.d.x;
    var var_1 = arg_0.a;
    let var_2 = ~_wgslsmith_dot_vec2_u32(~arg_0.c.zy, vec2<u32>(4294967295u, arg_0.c.x));
    let var_3 = Struct_1(arg_0.a.a);
    return arg_0;
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec2<u32>) -> Struct_1 {
    global4 = func_2(arg_0, vec3<f32>(-1201f, _wgslsmith_f_op_f32(abs(-964f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-377f - 322f))))))).a;
    var var_0 = ~22786u;
    global3 = array<vec3<i32>, 2>();
    return Struct_1(true);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<bool>) -> i32 {
    var var_0 = Struct_2(func_3(func_2(Struct_2(Struct_1(global2.x), u_input.b.x == u_input.a.x, u_input.b | u_input.b, global3[_wgslsmith_index_u32(min(u_input.a.x, 66u), 2u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -283f, 1342f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-443f, 134f, -131f) - vec3<f32>(102f, -1667f, -1406f)))), false, ~((vec2<u32>(u_input.a.x, 15866u) ^ vec2<u32>(4294967295u, 676u)) << (~u_input.b.xz % vec2<u32>(32u)))), global4.a, _wgslsmith_mult_vec3_u32(u_input.b, u_input.b), min(firstLeadingBit(arg_0 << (vec3<u32>(u_input.b.x, 43930u, u_input.b.x) % vec3<u32>(32u))) ^ vec3<i32>(~0i, -arg_0.x, _wgslsmith_div_i32(-2147483647i, -24090i)), vec3<i32>(-1i) * -(global3[_wgslsmith_index_u32(71364u, 2u)] << (vec3<u32>(u_input.b.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u)))));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, ~32422u), 11u)];
    return _wgslsmith_clamp_i32(~19554i, ~(~(~u_input.c) ^ _wgslsmith_div_i32(_wgslsmith_sub_i32(arg_0.x, -1i), -55457i)), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(false), !all(vec4<bool>(any(vec2<bool>(true, global2.x)), any(vec4<bool>(global2.x, global4.a, true, global2.x)), true, true)), vec3<u32>(reverseBits(~(~u_input.a.x)), ~_wgslsmith_mult_u32(abs(u_input.a.x), ~4294967295u), firstTrailingBit(u_input.a.x)), global3[_wgslsmith_index_u32(1u, 2u)]);
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 664f, _wgslsmith_f_op_f32(-870f + -963f), 587f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(524f, 348f, 1005f, -741f) + vec4<f32>(-1303f, 1309f, 415f, 255f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(112f, -353f, 258f, 981f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1300f), _wgslsmith_f_op_f32(f32(-1f) * -790f), 1f, _wgslsmith_f_op_f32(-708f + -1000f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-908f, -1000f, -1025f, 2102f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(513f, -408f, -211f, 3514f), vec4<f32>(-2715f, -3202f, -426f, 339f)) - vec4<f32>(1f, 1f, 1f, 1f)), !vec4<bool>(true, true, global2.x, false))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -530f) + _wgslsmith_f_op_f32(-319f - 1368f)), _wgslsmith_f_op_f32(floor(-1000f)), 650f, -806f))));
    global1 = _wgslsmith_mult_i32(~(-2147483647i), select(~countOneBits(func_1(global3[_wgslsmith_index_u32(7294u, 2u)], vec4<bool>(global4.a, global4.a, var_0.b, global4.a))), 1i, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(1917f)));
}

