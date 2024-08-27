struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
    c: vec3<u32>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec4<f32>, 13> = array<vec4<f32>, 13>(vec4<f32>(-1351f, 1556f, -921f, 1000f), vec4<f32>(-772f, 995f, 1242f, -469f), vec4<f32>(-1416f, 1015f, -1000f, 388f), vec4<f32>(-932f, -859f, 1144f, 828f), vec4<f32>(2177f, -876f, 1260f, 602f), vec4<f32>(-389f, 1402f, -949f, 213f), vec4<f32>(110f, -819f, -1000f, -710f), vec4<f32>(-747f, -1000f, 506f, -854f), vec4<f32>(1615f, 229f, -1508f, -1000f), vec4<f32>(569f, -960f, 230f, -364f), vec4<f32>(-970f, -340f, -2701f, -628f), vec4<f32>(481f, -316f, 520f, 410f), vec4<f32>(171f, 677f, 611f, 278f));

var<private> global2: array<vec3<bool>, 32>;

var<private> global3: array<vec4<i32>, 25>;

var<private> global4: array<vec3<bool>, 32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>) -> bool {
    global1 = array<vec4<f32>, 13>();
    global2 = array<vec3<bool>, 32>();
    global4 = array<vec3<bool>, 32>();
    global1 = array<vec4<f32>, 13>();
    global0 = -(global3[_wgslsmith_index_u32(select(~18776u, ~19524u, false), 25u)] >> (min(vec4<u32>(~43709u, _wgslsmith_mod_u32(27211u, 4294967295u), _wgslsmith_clamp_u32(4294967295u, 85477u, 1u), countOneBits(80533u)), ~abs(vec4<u32>(0u, 32736u, 1u, 0u))) % vec4<u32>(32u)));
    return true;
}

fn func_2(arg_0: u32, arg_1: Struct_4, arg_2: bool, arg_3: i32) -> Struct_4 {
    global0 = (_wgslsmith_div_vec4_i32(vec4<i32>(global0.x, ~(-5992i), ~u_input.c, -2147483647i), vec4<i32>(~u_input.a, -2147483647i, -2147483647i, i32(-1i) * -19499i)) | -global3[_wgslsmith_index_u32(abs(arg_1.b.x | 25201u), 25u)]) << (countOneBits(firstLeadingBit(~(~vec4<u32>(4294967295u, arg_1.b.x, arg_0, 4294967295u)))) % vec4<u32>(32u));
    global3 = array<vec4<i32>, 25>();
    global4 = array<vec3<bool>, 32>();
    global3 = array<vec4<i32>, 25>();
    let var_0 = vec3<bool>(arg_2, !func_3(arg_1.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1470f, 1408f) + vec2<f32>(arg_1.c, 2634f))), any(!(!vec2<bool>(arg_1.d, arg_1.d))) | false);
    return arg_1;
}

fn func_1() -> Struct_1 {
    global3 = array<vec4<i32>, 25>();
    let var_0 = func_2(~(select(0u, abs(22279u), true) >> (min(~107996u, _wgslsmith_dot_vec2_u32(vec2<u32>(48058u, 33363u), vec2<u32>(6417u, 4294967295u))) % 32u)), Struct_4(vec3<i32>(-1i) * -firstTrailingBit(vec3<i32>(u_input.b, -1i, 0i)), vec3<u32>(1u, 1u, 1u), _wgslsmith_f_op_f32(-1f), all(select(vec2<bool>(true, true), vec2<bool>(true, true), false))), true, -3758i);
    let var_1 = ~global3[_wgslsmith_index_u32(reverseBits(88911u), 25u)];
    let var_2 = !vec3<bool>(true, !(var_0.d && func_3(var_0.c, vec2<f32>(var_0.c, 1000f))), all(select(vec4<bool>(var_0.d, true, false, true), !vec4<bool>(true, true, var_0.d, var_0.d), vec4<bool>(var_0.d, var_0.d, var_0.d, var_0.d))));
    global2 = array<vec3<bool>, 32>();
    return Struct_1(~(~(~vec2<u32>(1u, 14386u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(111f, -1593f, 766f), vec3<f32>(-844f, -854f, -443f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-222f, -426f, 456f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1144f, -397f, -737f) + vec3<f32>(-277f, 1504f, -1025f)))))));
    var var_1 = Struct_2(Struct_1(firstLeadingBit(select(vec2<u32>(1u, 1u), ~vec2<u32>(4294967295u, 23692u), vec2<bool>(true, false)))));
    var var_2 = func_1();
    let var_3 = 1195f;
    let var_4 = !(!global2[_wgslsmith_index_u32(19638u, 32u)]);
    var var_5 = global1[_wgslsmith_index_u32(~var_2.a.x, 13u)];
    global4 = array<vec3<bool>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~select(vec4<u32>(var_2.a.x, var_2.a.x, var_1.a.a.x, var_1.a.a.x) & vec4<u32>(var_1.a.a.x, var_1.a.a.x, var_2.a.x, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_2.a.x, 4294967295u, var_2.a.x), vec4<u32>(var_1.a.a.x, 1u, 19482u, var_2.a.x)), select(vec4<bool>(var_4.x, true, var_4.x, false), vec4<bool>(false, var_4.x, false, var_4.x), vec4<bool>(true, true, var_4.x, var_4.x)))), max(select(min(vec3<u32>(0u, 4294967295u, 1u) >> (vec3<u32>(var_1.a.a.x, var_1.a.a.x, var_1.a.a.x) % vec3<u32>(32u)), vec3<u32>(var_1.a.a.x, 0u, 1u)), func_2(23938u, func_2(var_2.a.x, Struct_4(global0.zyz, vec3<u32>(var_2.a.x, 52887u, var_2.a.x), var_3, false), var_4.x, -2147483647i), func_2(4294967295u, Struct_4(vec3<i32>(0i, global0.x, -1i), vec3<u32>(var_2.a.x, 1u, 2070u), var_0.x, var_4.x), var_4.x, global0.x).d, global0.x).b, true), _wgslsmith_add_vec3_u32(min(vec3<u32>(32143u, var_1.a.a.x, var_1.a.a.x), vec3<u32>(1u, 23841u, 1u)), ~vec3<u32>(var_1.a.a.x, var_1.a.a.x, 8966u)) ^ (vec3<u32>(69710u, 4294967295u, var_1.a.a.x) ^ ~vec3<u32>(var_2.a.x, var_2.a.x, 83926u))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(113f, 406f, 607f, var_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, var_3, var_3, var_0.x)))) * _wgslsmith_f_op_vec4_f32(select(global1[_wgslsmith_index_u32(1u, 13u)], _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1109f, var_5.x, var_5.x, var_0.x), global1[_wgslsmith_index_u32(var_1.a.a.x, 13u)])), !var_4.x))), _wgslsmith_f_op_vec4_f32(abs(global1[_wgslsmith_index_u32(func_2(var_1.a.a.x, Struct_4(global0.zww, vec3<u32>(1u, var_1.a.a.x, 4294967295u), 1069f, var_4.x), true, reverseBits(1994i)).b.x, 13u)])), all(!var_4.xz))), -46268i, var_2.a);
}

