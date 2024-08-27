struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 26>;

var<private> global2: array<f32, 21> = array<f32, 21>(1145f, -1212f, -222f, -851f, -1000f, -1000f, 301f, 942f, 354f, -405f, -1000f, -288f, -352f, -401f, 451f, 570f, 2615f, -722f, 346f, -1778f, -694f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_3) -> Struct_2 {
    let var_0 = global1[_wgslsmith_index_u32(~abs(u_input.b), 26u)];
    global1 = array<Struct_2, 26>();
    global1 = array<Struct_2, 26>();
    global1 = array<Struct_2, 26>();
    global2 = array<f32, 21>();
    return global1[_wgslsmith_index_u32(var_0.d.e, 26u)];
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-670f, _wgslsmith_f_op_f32(abs(-1470f)), 944f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(111f, global2[_wgslsmith_index_u32(0u, 21u)], 1014f))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2[_wgslsmith_index_u32(arg_0.d.c, 21u)], global2[_wgslsmith_index_u32(1u, 21u)], 507f))))))));
    global0 = arg_0.d;
    var var_1 = arg_0.a;
    global1 = array<Struct_2, 26>();
    global1 = array<Struct_2, 26>();
    return global0.d;
}

fn func_4(arg_0: bool, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_3(Struct_2(~_wgslsmith_div_vec4_i32(vec4<i32>(0i, u_input.c, global0.b, 22054i), abs(vec4<i32>(u_input.d, 0i, global0.b, global0.a.x))), global2[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(arg_1.x, ~u_input.b)), 21u)], -817f, Struct_1(global0.a, 1i, u_input.b, any(!vec2<bool>(arg_0, true)), 0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_div_f32(279f, 1220f)) - global2[_wgslsmith_index_u32(14893u, 21u)])), Struct_1(vec2<i32>(_wgslsmith_mult_i32(global0.b | -14680i, max(u_input.a.x, 32414i)), 1i), i32(-1i) * -(~18348i), u_input.b, any(!vec4<bool>(global0.d, arg_0, arg_0, arg_0)), u_input.b), max(_wgslsmith_mult_u32(~(3813u & u_input.b), arg_1.x), _wgslsmith_mult_u32(1u, 20005u)), !global0.d || !all(vec3<bool>(false, arg_0, arg_0)));
    var var_1 = true;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(834f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(751f + -1286f), _wgslsmith_div_f32(var_0.a.b, global2[_wgslsmith_index_u32(16970u, 21u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-var_0.a.b)))), -276f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1016f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(374f, global2[_wgslsmith_index_u32(arg_1.x, 21u)]) - -564f))));
    let var_3 = vec4<u32>(var_0.b.c, 4294967295u, u_input.b >> (max(u_input.b, max(~u_input.b, 1u)) % 32u), 1u);
    var var_4 = ~(~(~max(40601i, 4782i)) | select(var_0.a.d.b, func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(global0.c, 21u)], 1000f, -537f)), func_3(Struct_2(vec4<i32>(u_input.a.x, global0.a.x, -1i, global0.a.x), 1362f, 823f, var_0.b, -470f), var_0.a.a.yzw), Struct_3(Struct_2(var_0.a.a, var_2.x, -839f, Struct_1(vec2<i32>(u_input.a.x, global0.a.x), -2147483647i, 81072u, global0.d, global0.e), global2[_wgslsmith_index_u32(0u, 21u)]), Struct_1(vec2<i32>(global0.b, u_input.d), 35069i, 57342u, true, 65556u), 4294967295u, true)).a.x, func_3(Struct_2(var_0.a.a, -737f, global2[_wgslsmith_index_u32(u_input.b, 21u)], var_0.a.d, global2[_wgslsmith_index_u32(10029u, 21u)]), ~vec3<i32>(var_0.b.a.x, 1i, 2147483647i))));
    return func_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(630f - -2580f) - 647f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1552f, 1000f)) * -112f), var_2.x), arg_0, var_0).d;
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: bool) -> i32 {
    let var_0 = func_4(any(vec3<bool>(func_3(func_2(vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 21u)], -359f, arg_0), global0.d, Struct_3(Struct_2(vec4<i32>(-1i, global0.b, u_input.a.x, u_input.c), global2[_wgslsmith_index_u32(u_input.b, 21u)], -1000f, Struct_1(global0.a, u_input.a.x, 1u, arg_2, 47035u), -1934f), Struct_1(u_input.a, arg_1.x, 68281u, global0.d, u_input.b), 15888u, false)), vec3<i32>(u_input.d, global0.b, arg_1.x)), !(global0.d & global0.d), false)), _wgslsmith_div_vec2_u32(~max(abs(vec2<u32>(u_input.b, u_input.b)), ~vec2<u32>(1u, 494u)), ~(~vec2<u32>(1u, u_input.b) << (countOneBits(vec2<u32>(34642u, global0.c)) % vec2<u32>(32u)))));
    var var_1 = _wgslsmith_mod_vec2_u32(~(~_wgslsmith_div_vec2_u32(select(vec2<u32>(1u, var_0.e), vec2<u32>(u_input.b, u_input.b), vec2<bool>(var_0.d, false)), ~vec2<u32>(1u, var_0.c))), select(~firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 76134u), vec2<u32>(84079u, 29120u))), vec2<u32>(u_input.b, ~firstLeadingBit(u_input.b)), any(vec2<bool>(true, true))));
    let var_2 = 1f;
    let var_3 = u_input.b;
    let var_4 = 14412u;
    return arg_1.x;
}

fn func_5(arg_0: u32, arg_1: vec4<i32>, arg_2: i32) -> Struct_3 {
    let var_0 = vec4<i32>(-1i, 0i, global0.b, _wgslsmith_mult_i32(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2[_wgslsmith_index_u32(1u, 21u)], -326f, global2[_wgslsmith_index_u32(global0.e, 21u)]), vec3<f32>(-264f, -158f, -1147f)))), all(vec4<bool>(global0.d, false, global0.d, true)), Struct_3(global1[_wgslsmith_index_u32(u_input.b, 26u)], Struct_1(u_input.a, 6866i, 4294967295u, global0.d, 75981u), ~22547u, any(vec2<bool>(false, global0.d)))).a.x, -56145i));
    global2 = array<f32, 21>();
    global2 = array<f32, 21>();
    var var_1 = Struct_1(~(-vec2<i32>(min(-31651i, -2147483647i), reverseBits(arg_2))), select(func_4(global0.d, firstLeadingBit(vec2<u32>(u_input.b, arg_0)) ^ ~vec2<u32>(0u, 4294967295u)).a.x, firstTrailingBit(43644i), !(false && global0.d)), ~1u, global0.d, 1u);
    var var_2 = (~(~1u) | _wgslsmith_add_u32(global0.c >> (~1u % 32u), firstTrailingBit(~68903u))) ^ u_input.b;
    return Struct_3(global1[_wgslsmith_index_u32(~(~min(_wgslsmith_mod_u32(85125u, 51903u), _wgslsmith_mult_u32(var_1.e, var_1.c))), 26u)], Struct_1(arg_1.zz, -arg_2 << (_wgslsmith_mod_u32(1u, _wgslsmith_div_u32(u_input.b, 4294967295u)) % 32u), var_1.e, !var_1.d, _wgslsmith_mod_u32(29121u, ~global0.c) | ~(~4294967295u)), global0.e, var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~select(_wgslsmith_mult_vec4_i32(-vec4<i32>(global0.a.x, global0.b, -1i, global0.b), vec4<i32>(global0.b, -1i, 29980i, -16826i)), ~(~vec4<i32>(u_input.d, global0.b, -2147483647i, global0.b)), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1634f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 21u)] * global2[_wgslsmith_index_u32(1538u, 21u)])))))), -265f, Struct_1(vec2<i32>(~(~(-1i)), 2147483647i), u_input.c, abs(~global0.e), false, global0.e ^ global0.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-127f - -564f) - 161f));
    var_0 = global1[_wgslsmith_index_u32(66294u, 26u)];
    let var_1 = ~4436u >> (_wgslsmith_mod_u32(~global0.e, ~(~15370u)) % 32u);
    global1 = array<Struct_2, 26>();
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1562f + global2[_wgslsmith_index_u32(var_1, 21u)]), _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(~(~global0.c), 21u)]))) - vec2<f32>(-492f, var_0.c));
    global0 = Struct_1(global0.a, -1i << (_wgslsmith_sub_u32(~_wgslsmith_mult_u32(global0.c, 4294967295u), 0u) % 32u), u_input.b, any(vec3<bool>(true && any(vec2<bool>(true, false)), global0.d, false)), 0u);
    var var_3 = func_5(firstTrailingBit(~u_input.b), _wgslsmith_add_vec4_i32(vec4<i32>(firstLeadingBit(2147483647i) >> ((u_input.b & var_0.d.e) % 32u), func_1(195f, vec4<i32>(u_input.a.x, 2147483647i, 9264i, u_input.a.x), global0.e == 1u), firstLeadingBit(abs(var_0.a.x)), ~(-34870i) >> (firstTrailingBit(14818u) % 32u)), vec4<i32>(-36962i, abs(var_0.a.x), var_0.d.b, 0i) | _wgslsmith_mult_vec4_i32(~var_0.a, countOneBits(var_0.a))), ~(u_input.d >> (4595u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(select(vec4<u32>(global0.e, ~1u, ~0u, ~1u), firstLeadingBit(vec4<u32>(var_1, 0u, 0u, 1u)), vec4<bool>(true, !var_0.d.d, false, var_0.d.d != global0.d))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-960f, -579f)), ~firstTrailingBit(abs(select(vec3<u32>(var_0.d.e, 85576u, 307u), vec3<u32>(51283u, var_1, global0.c), vec3<bool>(global0.d, var_0.d.d, true)))));
}

