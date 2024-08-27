struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 3> = array<vec4<u32>, 3>(vec4<u32>(49042u, 1u, 1u, 21275u), vec4<u32>(61826u, 16566u, 27671u, 60670u), vec4<u32>(4294967295u, 70246u, 50362u, 0u));

var<private> global1: array<vec4<i32>, 19> = array<vec4<i32>, 19>(vec4<i32>(2147483647i, -29321i, 2147483647i, -52015i), vec4<i32>(i32(-2147483648), -18087i, 0i, -71576i), vec4<i32>(1i, 2147483647i, i32(-2147483648), 27119i), vec4<i32>(47309i, -25785i, -17533i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -14023i, 0i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 57541i, 6725i, i32(-2147483648)), vec4<i32>(-20380i, -41961i, -24661i, 36146i), vec4<i32>(6776i, -22886i, 2147483647i, -42769i), vec4<i32>(-1i, -17329i, 38513i, 0i), vec4<i32>(-1i, -1i, i32(-2147483648), 2147483647i), vec4<i32>(-17482i, 33368i, 59435i, 68063i), vec4<i32>(-11064i, i32(-2147483648), -14935i, 1i), vec4<i32>(25554i, -39522i, -11332i, 33853i), vec4<i32>(-32148i, -27845i, 0i, -15574i), vec4<i32>(-1i, 2147483647i, -2308i, -55232i), vec4<i32>(1i, -63112i, 12746i, -43293i), vec4<i32>(0i, 33069i, -1i, -21793i), vec4<i32>(36i, -1592i, 23731i, 8659i), vec4<i32>(39874i, 0i, 1i, 1i));

var<private> global2: Struct_2;

var<private> global3: array<Struct_1, 12>;

var<private> global4: Struct_2 = Struct_2(Struct_1(vec3<f32>(-857f, 935f, 1000f)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec2<f32>) -> f32 {
    var var_0 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global4.a.a.x)) * _wgslsmith_f_op_f32(-global2.a.a.x)), global2.a.a.x)));
    global4 = Struct_2(global4.a);
    var var_1 = 0u;
    global4 = Struct_2(global3[_wgslsmith_index_u32(~select(u_input.d.x, max(9516u, 4294967295u), u_input.e < max(u_input.e, 1i)), 12u)]);
    global1 = array<vec4<i32>, 19>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.a.a.x)) * _wgslsmith_f_op_f32(step(var_0.a.a.x, 1474f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-517f, var_0.a.a.x)) * 1133f)) + 731f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.a.x) - _wgslsmith_f_op_f32(global4.a.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2.a.a.x, 1096f)) + 320f))));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32) -> u32 {
    global2 = Struct_2(global4.a);
    var var_0 = _wgslsmith_mult_vec2_i32(reverseBits(firstTrailingBit(arg_0) & -firstTrailingBit(vec2<i32>(u_input.e, arg_0.x))), _wgslsmith_mult_vec2_i32(abs(arg_0 >> (u_input.c.zx % vec2<u32>(32u))), vec2<i32>(0i, -93443i)) | ~arg_0);
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.d.x, ~u_input.a), 3471u), ~abs(u_input.a), reverseBits(u_input.d.x | u_input.c.x)), 12u)];
    var var_2 = firstLeadingBit(~_wgslsmith_dot_vec4_i32(~countOneBits(global1[_wgslsmith_index_u32(0u, 19u)]), global1[_wgslsmith_index_u32(~min(1u, u_input.a), 19u)]));
    return abs(u_input.d.x);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: u32) -> f32 {
    let var_0 = any(vec2<bool>(func_3(select(arg_0.xz, vec2<i32>(-25509i, arg_0.x), vec2<bool>(true, false)), _wgslsmith_f_op_f32(func_2(vec2<f32>(global4.a.a.x, global4.a.a.x)))) < 4294967295u, true));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1277f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(504f, arg_1.a.a.x)))))) * global2.a.a.x);
    var var_2 = !vec3<bool>(!any(select(vec2<bool>(var_0, false), vec2<bool>(var_0, var_0), true)), false, (_wgslsmith_mult_u32(32502u, arg_2) | arg_2) > ~(arg_2 | u_input.c.x));
    let var_3 = global4.a;
    global3 = array<Struct_1, 12>();
    return _wgslsmith_f_op_f32(-var_3.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.a;
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1040f * _wgslsmith_f_op_f32(var_0.a.x * 1147f)), 326f), _wgslsmith_f_op_f32(func_1(vec4<i32>(0i, u_input.e, 69597i, u_input.b), Struct_2(global2.a), 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a.a.x * -406f))));
    var var_2 = global2.a.a.x;
    global4 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a))));
    var var_3 = firstLeadingBit((~firstTrailingBit(vec2<u32>(0u, u_input.a)) << (~vec2<u32>(u_input.d.x, u_input.a) % vec2<u32>(32u))) ^ (_wgslsmith_add_vec2_u32(~vec2<u32>(13602u, 0u), reverseBits(vec2<u32>(u_input.c.x, u_input.c.x))) | u_input.d.zw));
    global0 = array<vec4<u32>, 3>();
    let var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_1.a.zy)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-686f, _wgslsmith_f_op_f32(var_1.a.x + var_0.a.x)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(216f, 579f), var_0.a.zz))), vec2<bool>(true, true))), var_0.a.zx));
    var var_5 = global2.a;
    let var_6 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_5.a.x, _wgslsmith_f_op_f32(-var_0.a.x)))), vec2<i32>(-1i, _wgslsmith_dot_vec2_i32(abs(-vec2<i32>(u_input.e, u_input.b)), select(firstTrailingBit(vec2<i32>(u_input.b, 1i)), -vec2<i32>(u_input.b, u_input.b), var_6.x >= 1u))), vec4<u32>(func_3(~vec2<i32>(-2147483647i, u_input.e), var_4.x), firstTrailingBit(1u), 1u, 21715u) ^ u_input.d);
}

