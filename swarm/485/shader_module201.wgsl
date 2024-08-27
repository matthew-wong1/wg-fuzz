struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: bool,
    d: f32,
    e: bool,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: u32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(-376f);

var<private> global1: array<vec4<bool>, 6> = array<vec4<bool>, 6>(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false));

var<private> global2: Struct_5;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    global0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -346f)));
    var var_0 = Struct_2(vec2<i32>(min(-20723i, u_input.a) >> (select(_wgslsmith_div_u32(0u, 25922u), firstLeadingBit(u_input.b), false) % 32u), abs(u_input.c)), u_input.b, ~abs(67078u) >= u_input.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1006f), true);
    let var_1 = any(select(!select(select(vec3<bool>(false, var_0.e, var_0.c), vec3<bool>(true, var_0.e, true), var_0.e), vec3<bool>(var_0.e, var_0.e, var_0.c), var_0.e || var_0.c), vec3<bool>(var_0.c, _wgslsmith_mult_i32(var_0.a.x, 1i) < var_0.a.x, true), (var_0.e | true) & var_0.c));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, -808f, global0.a)) - vec3<f32>(global2.a, -1203f, 1544f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.a, global0.a, global2.a)))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1106f, var_0.d, 748f) * vec3<f32>(global0.a, 403f, -1000f)))))));
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(810f, global0.a, global0.a, _wgslsmith_div_f32(1047f, -1000f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-778f, global0.a, var_2.x, var_2.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, 1442f, -581f, global2.a) - vec4<f32>(var_2.x, 683f, -219f, -180f))))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1372f, _wgslsmith_f_op_f32(979f - 1000f), global2.a, _wgslsmith_f_op_f32(119f - 991f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.a, global2.a, var_2.x, -1000f), vec4<f32>(-557f, var_0.d, -644f, 1874f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1836f, var_0.d, -1000f, -1322f))))))));
    return -502f;
}

fn func_2() -> Struct_5 {
    var var_0 = !((1f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(780f * global0.a))) & all(global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.d.x, u_input.d.x), 6u)]));
    global0 = Struct_5(1000f);
    var var_1 = Struct_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-745f * 403f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))));
    let var_2 = ~u_input.a;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1194f + _wgslsmith_f_op_f32(global0.a * -458f)))));
    return Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.a)) * global0.a));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1284f)));
    global1 = array<vec4<bool>, 6>();
    global2 = func_2();
    let var_1 = true;
    var var_2 = Struct_2(~(-(~vec2<i32>(6268i, u_input.a) >> (min(u_input.d.xx, vec2<u32>(u_input.e, u_input.b)) % vec2<u32>(32u)))), abs(u_input.e), any(!select(select(vec3<bool>(var_1, true, false), vec3<bool>(false, false, var_1), vec3<bool>(false, var_1, var_1)), !vec3<bool>(var_1, var_1, true), var_1)), var_0, true);
    return _wgslsmith_dot_vec2_u32(countOneBits(u_input.d.xz << (u_input.d.yz % vec2<u32>(32u))) >> (~select(select(vec2<u32>(var_2.b, 1u), u_input.d.yx, vec2<bool>(var_2.e, var_2.e)), u_input.d.yx, select(true, true, var_1)) % vec2<u32>(32u)), ~(~vec2<u32>(var_2.b, reverseBits(u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 6>();
    global1 = array<vec4<bool>, 6>();
    var var_0 = vec2<u32>(_wgslsmith_div_u32(1u >> (~(4294967295u ^ u_input.d.x) % 32u), u_input.d.x ^ ~select(20255u, u_input.b, true)), func_1());
    let var_1 = true;
    var var_2 = -1000f;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.d.zy, -u_input.c, global0.a, -726f, vec2<f32>(1159f, _wgslsmith_f_op_f32(-global0.a)));
}

