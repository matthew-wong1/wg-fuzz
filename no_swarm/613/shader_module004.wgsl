struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 24>;

var<private> global2: f32 = -1269f;

var<private> global3: array<vec3<f32>, 18> = array<vec3<f32>, 18>(vec3<f32>(964f, 1170f, -1452f), vec3<f32>(1000f, -1831f, 162f), vec3<f32>(-356f, 1000f, 167f), vec3<f32>(420f, 150f, -1662f), vec3<f32>(-890f, -310f, 1139f), vec3<f32>(3129f, 1500f, 1673f), vec3<f32>(266f, -1257f, 2033f), vec3<f32>(-174f, 955f, -522f), vec3<f32>(584f, -795f, 683f), vec3<f32>(2010f, -1478f, -311f), vec3<f32>(834f, -1269f, 525f), vec3<f32>(692f, -750f, 754f), vec3<f32>(2295f, 431f, 596f), vec3<f32>(802f, -1564f, 649f), vec3<f32>(-1272f, 208f, 703f), vec3<f32>(712f, -502f, 423f), vec3<f32>(761f, 1136f, -788f), vec3<f32>(1290f, 1464f, 420f));

var<private> global4: array<Struct_1, 3>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: u32) -> vec4<f32> {
    let var_0 = arg_0;
    var var_1 = Struct_1(arg_0.a.a, global0.a.a, arg_2, ~global0.a.d, select(vec2<bool>(true, true), vec2<bool>(false, true && all(vec4<bool>(global0.a.b, true, true, true))), all(select(select(vec3<bool>(var_0.a.a, true, true), vec3<bool>(global0.b, true, global0.b), arg_0.a.a), !vec3<bool>(false, arg_0.b, true), select(vec3<bool>(var_0.a.a, global0.a.e.x, true), vec3<bool>(global0.a.e.x, false, global0.a.a), vec3<bool>(false, false, global0.b))))));
    let var_2 = global0.a;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1226f, -1384f, -100f, -337f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(835f, -487f, 659f, -1560f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-517f, -453f, 2814f, 1721f) - vec4<f32>(-1701f, -678f, 1440f, 126f)) + vec4<f32>(-1000f, 333f, -416f, -233f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-595f, 142f, -525f, -418f))), vec4<f32>(-1564f, 1000f, -879f, -918f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-110f, -435f, -213f, -1214f)) - vec4<f32>(613f, 395f, -586f, -1000f)))));
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: vec4<bool>, arg_3: vec4<i32>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_3(Struct_2(Struct_1(global0.b, arg_1 <= _wgslsmith_f_op_f32(-110f + arg_1), u_input.a, ~(-30182i), select(arg_0.a.e, !arg_2.yy, true)), ((32845u <= arg_0.a.c) || true) || true), ~(~arg_3), ~arg_0.a.c));
    var var_1 = abs(countOneBits(abs(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.c.x, 2147483647i, global0.a.d), vec4<i32>(arg_3.x, -1i, global0.a.d, arg_0.a.d)))));
    return vec4<u32>(_wgslsmith_add_u32(~0u, ~arg_0.a.c), ~min(~global0.a.c, ~3409u), ~u_input.b, min(arg_0.a.c, arg_0.a.c)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_add_u32(arg_0.a.c, 0u) ^ global0.a.c, 87201u, abs(arg_0.a.c), global0.a.c), vec4<u32>(36452u, ~u_input.a, ~(~4294967295u), ~(~0u))) % vec4<u32>(32u));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1155f)));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u << (~max(0u, 1u & u_input.a) % 32u), 0u), 24u)];
    let var_2 = ((vec4<u32>(var_1.a.c & var_1.a.c, _wgslsmith_mod_u32(121692u, 1u), var_1.a.c, _wgslsmith_sub_u32(4302u, 4090u)) << (firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.a, 37235u, 31129u), vec4<u32>(22232u, 26795u, 0u, 0u))) % vec4<u32>(32u))) & (min(func_2(global1[_wgslsmith_index_u32(global0.a.c, 24u)], 899f, vec4<bool>(global0.a.a, var_1.b, var_1.b, var_1.a.a), vec4<i32>(var_1.a.d, var_1.a.d, var_1.a.d, 1i)), vec4<u32>(var_1.a.c, var_1.a.c, 98u, 30404u) << (vec4<u32>(5125u, u_input.b, var_1.a.c, 0u) % vec4<u32>(32u))) ^ ~vec4<u32>(global0.a.c, 816u, 13594u, var_1.a.c))) << (~vec4<u32>(min(global0.a.c, u_input.b), ~firstTrailingBit(22969u), 1u, ~14309u) % vec4<u32>(32u));
    var var_3 = ~max(u_input.c.x, ~(~var_1.a.d));
    var var_4 = vec4<u32>(_wgslsmith_mod_u32(37023u, _wgslsmith_mult_u32(~4294967295u ^ var_2.x, ~_wgslsmith_div_u32(4294967295u, global0.a.c))), global0.a.c, 2046u, global0.a.c);
    return _wgslsmith_f_op_f32(-1f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(330f, -478f) * _wgslsmith_f_op_f32(floor(575f))), _wgslsmith_f_op_f32(func_1())) - 486f) - -714f);
    var var_1 = !(!select(!vec4<bool>(true, global0.a.e.x, false, true), vec4<bool>(true, false, any(vec4<bool>(false, global0.a.e.x, global0.b, global0.a.b)), true), !vec4<bool>(global0.a.a, false, global0.a.e.x, global0.a.a)));
    var var_2 = global1[_wgslsmith_index_u32(~(~16420u), 24u)];
    global1 = array<Struct_2, 24>();
    var var_3 = -(~_wgslsmith_clamp_vec4_i32(-vec4<i32>(-1i, 0i, global0.a.d, -1i), countOneBits(vec4<i32>(var_2.a.d, var_2.a.d, global0.a.d, global0.a.d)), reverseBits(vec4<i32>(u_input.d, global0.a.d, u_input.d, -16379i)) << (~vec4<u32>(global0.a.c, u_input.b, 1u, 13864u) % vec4<u32>(32u))));
    global0 = Struct_2(Struct_1(true, false, abs(~(~1u)), 2147483647i, var_1.yw), -1457i < (-32715i | reverseBits(~var_2.a.d)));
    var_1 = vec4<bool>(var_2.a.c <= ~_wgslsmith_sub_u32(global0.a.c, reverseBits(var_2.a.c)), any(vec3<bool>(global0.a.e.x, false, any(var_1.zzx))), true, all(!vec3<bool>(!global0.b, global0.a.b, true)));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-222f, var_0, var_0, var_0), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1397f, var_0, var_0, var_0)))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 709f, -766f, 595f)))))));
    var_1 = !vec4<bool>(true, global0.a.a & true, false, false);
    let x = u_input.a;
    s_output = StorageBuffer(0i, var_4.x, 1u);
}

