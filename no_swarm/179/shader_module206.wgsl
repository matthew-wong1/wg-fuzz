struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
    c: u32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
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

var<private> global0: array<f32, 12> = array<f32, 12>(-445f, 1441f, -439f, 1289f, 1209f, 1132f, 1320f, 210f, -417f, 234f, 106f, -1480f);

var<private> global1: array<u32, 5> = array<u32, 5>(4294967295u, 39946u, 1u, 46184u, 1u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: i32) -> bool {
    var var_0 = Struct_1(abs(_wgslsmith_mult_vec4_u32(~vec4<u32>(1416u, arg_2.x, 64744u, 69876u), ~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, global1[_wgslsmith_index_u32(15029u, 5u)], global1[_wgslsmith_index_u32(97812u, 5u)]), vec4<u32>(27924u, 1u, 5924u, 22238u)))), vec3<i32>(-1i) * -max(abs(vec3<i32>(-751i, arg_3, 13041i)), select(vec3<i32>(arg_3, 2147483647i, -11910i), vec3<i32>(-46101i, arg_3, arg_3), arg_1.a)), reverseBits(-2266i), select(select(select(select(vec4<bool>(false, arg_1.a, arg_1.a, arg_1.a), vec4<bool>(true, arg_1.a, arg_1.a, false), arg_1.a), vec4<bool>(arg_1.a, arg_1.a, false, arg_1.a), false), vec4<bool>(arg_3 > arg_3, arg_2.x < 0u, select(true, arg_1.a, true), arg_1.a), !(!vec4<bool>(false, arg_1.a, true, arg_1.a))), vec4<bool>(true, arg_1.a & true, arg_1.a, global0[_wgslsmith_index_u32(1u, 12u)] != _wgslsmith_f_op_f32(-2411f - -403f)), select(vec4<bool>(arg_1.a, arg_1.a, true, true), !vec4<bool>(false, true, arg_1.a, false), select(vec4<bool>(arg_1.a, true, arg_1.a, arg_1.a), select(vec4<bool>(arg_1.a, false, arg_1.a, false), vec4<bool>(arg_1.a, false, arg_1.a, arg_1.a), arg_1.a), !vec4<bool>(arg_1.a, arg_1.a, false, arg_1.a)))));
    let var_1 = Struct_4(!(!(!vec2<bool>(arg_1.a, arg_1.a))), Struct_3(arg_1.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.x, 473f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(arg_1.b + arg_0.xy))), !select(var_0.d.xx, vec2<bool>(var_0.d.x, arg_1.a), vec2<bool>(arg_1.a, arg_1.a))))), ~(~10727u), ~(~countOneBits(vec4<i32>(arg_3, -2147483647i, var_0.c, -2147483647i) & vec4<i32>(1i, 0i, var_0.b.x, -2147483647i))));
    var var_2 = Struct_1(~_wgslsmith_mult_vec4_u32(vec4<u32>(~41024u, 66360u, 0u << (u_input.a.x % 32u), 4294967295u), ~(var_0.a ^ var_0.a)), vec3<i32>(arg_3, countOneBits(1i), var_0.c >> (_wgslsmith_sub_u32(4294967295u, var_0.a.x) % 32u)), var_0.c, select(vec4<bool>(true, true, any(select(vec4<bool>(var_1.a.x, false, var_1.b.a, true), vec4<bool>(false, true, var_1.b.a, false), var_0.d)), arg_1.a), var_0.d, !var_0.d));
    var_0 = Struct_1(var_2.a & _wgslsmith_mod_vec4_u32(abs(vec4<u32>(43752u, 0u, 38470u, var_0.a.x)), _wgslsmith_div_vec4_u32(vec4<u32>(60252u, 403u, 1u, 4294967295u), _wgslsmith_add_vec4_u32(var_0.a, var_0.a))), reverseBits(var_0.b), ~(-2147483647i), vec4<bool>(true, any(var_0.d.wwz), all(!vec3<bool>(false, var_1.b.a, var_2.d.x)), all(vec2<bool>(all(var_2.d.yz), arg_1.a))));
    let var_3 = Struct_1(var_0.a, abs(var_2.b), -45430i, var_0.d);
    return (!any(select(vec2<bool>(true, true), var_1.a, true)) && true) && select(false, -1222f == _wgslsmith_f_op_f32(select(arg_1.b.x, global0[_wgslsmith_index_u32(1791u, 12u)], true)), true);
}

fn func_2() -> vec4<i32> {
    let var_0 = abs(vec4<i32>(-1924i, min((i32(-1i) * -20509i) >> (1u % 32u), ~abs(13333i)), -1i, 2147483647i));
    var var_1 = Struct_4(vec2<bool>(select(!func_3(vec3<f32>(1288f, 688f, 944f), Struct_3(true, vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], 617f)), vec3<u32>(u_input.a.x, u_input.b.x, u_input.b.x), -2147483647i), true, true), false), Struct_3(all(select(vec2<bool>(false, false), vec2<bool>(false, false), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 12u)], global0[_wgslsmith_index_u32(3859u, 12u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-782f, global0[_wgslsmith_index_u32(19452u, 12u)]))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-756f, global0[_wgslsmith_index_u32(u_input.b.x, 12u)]), vec2<f32>(-2318f, -238f))))))), (_wgslsmith_mod_u32(min(u_input.b.x, 1u), ~0u) >> (52995u % 32u)) ^ firstLeadingBit(~countOneBits(u_input.a.x)), -var_0);
    global0 = array<f32, 12>();
    var_1 = Struct_4(vec2<bool>(true, true), var_1.b, ~(~_wgslsmith_dot_vec3_u32(~u_input.b, ~u_input.b)), var_1.d);
    var var_2 = -138f;
    return _wgslsmith_add_vec4_i32(min(~(~(-var_1.d)), vec4<i32>(abs(1i), ~(-9334i), ~9427i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_1.d.x), var_0.wz), var_0.x))), _wgslsmith_add_vec4_i32(var_1.d, var_1.d));
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> Struct_4 {
    var var_0 = Struct_1(min(_wgslsmith_clamp_vec4_u32(countOneBits(countOneBits(vec4<u32>(global1[_wgslsmith_index_u32(0u, 5u)], u_input.a.x, 4294967295u, 56852u))), vec4<u32>(u_input.a.x, ~0u, 1u, _wgslsmith_mod_u32(u_input.b.x, 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 5u)], 22660u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(98021u, 5u)], 5u)], 0u), ~vec4<u32>(u_input.b.x, 24249u, u_input.a.x, u_input.b.x))), vec4<u32>(~(41950u | u_input.b.x), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(8260u, u_input.a.x), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 5u)], 5u)], 5u)], 35744u)), 5u)], u_input.a.x, 4294967295u)), -(~_wgslsmith_add_vec3_i32(vec3<i32>(-1i, arg_0, 44377i), vec3<i32>(-22919i, 48606i, 0i)) | -countOneBits(vec3<i32>(1i, arg_0, -30540i))), arg_0, select(select(vec4<bool>(arg_1.a, false, !arg_1.a, arg_1.a), vec4<bool>(false, true, all(vec3<bool>(arg_1.a, arg_1.a, arg_1.a)), !arg_1.a), true), select(select(!vec4<bool>(false, arg_1.a, arg_1.a, arg_1.a), vec4<bool>(false, true, arg_1.a, arg_1.a), !vec4<bool>(arg_1.a, arg_1.a, arg_1.a, arg_1.a)), select(select(vec4<bool>(arg_1.a, false, true, true), vec4<bool>(true, arg_1.a, false, arg_1.a), vec4<bool>(true, arg_1.a, arg_1.a, true)), vec4<bool>(true, false, arg_1.a, arg_1.a), vec4<bool>(false, arg_1.a, true, arg_1.a)), arg_1.a), arg_1.a));
    let var_1 = Struct_2(~(~u_input.b.xz) | reverseBits(~(~vec2<u32>(61996u, 19608u))), Struct_1(vec4<u32>(u_input.a.x, 4294967295u, 0u, 2814u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, u_input.b.x), u_input.b.yz) % 32u)), vec3<i32>(abs(firstTrailingBit(var_0.b.x)), firstTrailingBit(arg_0), arg_0), -var_0.b.x, var_0.d), Struct_1(min(vec4<u32>(global1[_wgslsmith_index_u32(1u, 5u)], 7404u, 19869u, global1[_wgslsmith_index_u32(1u, 5u)]), ~vec4<u32>(1u, 4294967295u, 73153u, 53715u)) & vec4<u32>(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(47533u, 5u)], u_input.b.x), firstTrailingBit(global1[_wgslsmith_index_u32(0u, 5u)]), global1[_wgslsmith_index_u32(var_0.a.x, 5u)] >> (var_0.a.x % 32u), 1u), ~(-vec3<i32>(var_0.c, -1i, arg_0)), _wgslsmith_div_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, 1i, 1i), vec3<i32>(37988i, 1i, var_0.b.x))), select(select(vec4<bool>(var_0.d.x, true, arg_1.a, true), !var_0.d, arg_1.a), select(select(var_0.d, var_0.d, var_0.d.x), select(var_0.d, var_0.d, var_0.d), false), any(select(vec3<bool>(false, false, arg_1.a), var_0.d.zwy, var_0.d.zzx)))), Struct_1(vec4<u32>(_wgslsmith_add_u32(~u_input.b.x, 77626u), firstTrailingBit(~global1[_wgslsmith_index_u32(0u, 5u)]), ~max(global1[_wgslsmith_index_u32(21567u, 5u)], 4294967295u), countOneBits(~var_0.a.x)), var_0.b, arg_0, var_0.d), Struct_1(_wgslsmith_mult_vec4_u32(~var_0.a, _wgslsmith_sub_vec4_u32(var_0.a, var_0.a)), vec3<i32>(-2147483647i, 12469i, arg_0), 2147483647i, vec4<bool>(false, true, var_0.d.x, var_0.d.x)));
    let var_2 = vec4<f32>(_wgslsmith_div_f32(arg_1.b.x, _wgslsmith_f_op_f32(-arg_1.b.x)), -127f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(164f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b.x), -2455f))))), global0[_wgslsmith_index_u32(var_0.a.x, 12u)]);
    let var_3 = _wgslsmith_mult_u32(var_0.a.x, _wgslsmith_div_u32(var_0.a.x | 29095u, 21750u) | _wgslsmith_mod_u32(u_input.a.x, var_0.a.x << (1u % 32u))) | ~global1[_wgslsmith_index_u32(1u, 5u)];
    let var_4 = Struct_1(vec4<u32>(max(global1[_wgslsmith_index_u32(u_input.b.x ^ var_1.e.a.x, 5u)], global1[_wgslsmith_index_u32(47505u, 5u)]), u_input.a.x, _wgslsmith_sub_u32(~(~global1[_wgslsmith_index_u32(var_1.e.a.x, 5u)]), var_0.a.x), ~(~(~18455u))), reverseBits(vec3<i32>(var_1.d.b.x, var_0.b.x, min(var_0.c, var_0.b.x)) << (var_1.e.a.xwz % vec3<u32>(32u))), firstLeadingBit(~_wgslsmith_sub_i32(-var_1.d.b.x, var_0.b.x)), select(!vec4<bool>(func_3(var_2.ywz, arg_1, var_0.a.yyw, 3125i), select(var_1.c.d.x, var_0.d.x, var_0.d.x), true, false & var_0.d.x), select(select(select(var_0.d, vec4<bool>(true, false, arg_1.a, arg_1.a), true), select(var_0.d, var_0.d, var_1.e.d), select(var_0.d, vec4<bool>(false, false, var_0.d.x, true), false)), vec4<bool>(any(var_0.d.yz), true, true, var_0.d.x | true), var_1.c.d), var_1.c.d.x));
    return Struct_4(!select(vec2<bool>(any(var_0.d), false), vec2<bool>(true, var_4.d.x), arg_1.a), Struct_3(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.b))), var_4.a.x, _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-arg_0, firstLeadingBit(63932i), var_1.e.c, 31088i), vec4<i32>(var_4.c, 1i, var_1.e.c, 64217i)), -vec4<i32>(~(-2147483647i), var_4.b.x >> (0u % 32u), 2147483647i, -1i)));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: vec4<bool>, arg_3: u32) -> bool {
    var var_0 = ~24234u;
    var var_1 = func_4(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -func_2(), -vec4<i32>(1i, 1i, i32(-1i) * -9078i, -2147483647i)), Struct_3(!(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(79052u, 12u)] - 850f) != -1000f), _wgslsmith_f_op_vec2_f32(exp2(arg_0))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-482f + 1455f)), -216f))) - vec2<f32>(421f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_3, 12u)])))));
    let var_3 = !(!vec4<bool>(true, _wgslsmith_f_op_f32(ceil(var_1.b.b.x)) != _wgslsmith_f_op_f32(-arg_0.x), func_3(vec3<f32>(483f, arg_0.x, arg_0.x), func_4(var_1.d.x, var_1.b).b, u_input.b, var_1.d.x), _wgslsmith_mult_i32(var_1.d.x, var_1.d.x) != (-23007i << (var_1.c % 32u))));
    let var_4 = Struct_2(abs(_wgslsmith_sub_vec2_u32(abs(u_input.b.zy) >> ((u_input.a << (u_input.a % vec2<u32>(32u))) % vec2<u32>(32u)), ~u_input.a << (firstTrailingBit(u_input.b.yz) % vec2<u32>(32u)))), Struct_1(abs(vec4<u32>(1u, 0u, ~var_1.c, u_input.b.x | 18823u)), var_1.d.wyy, ~_wgslsmith_div_i32(32905i | var_1.d.x, ~var_1.d.x), !(!vec4<bool>(arg_1, var_1.a.x, false, false))), Struct_1(~firstLeadingBit(vec4<u32>(u_input.b.x, arg_3, 37872u, u_input.a.x)) ^ vec4<u32>(var_1.c, 4294967295u ^ global1[_wgslsmith_index_u32(18116u, 5u)], func_4(var_1.d.x, Struct_3(true, var_2)).c, func_4(var_1.d.x, Struct_3(var_3.x, arg_0)).c), _wgslsmith_div_vec3_i32(-vec3<i32>(2147483647i, 0i, var_1.d.x), -var_1.d.yxx), _wgslsmith_mult_i32(-var_1.d.x, var_1.d.x), vec4<bool>(any(select(var_3, vec4<bool>(arg_1, false, true, arg_1), vec4<bool>(arg_2.x, true, true, arg_1))), true, 60184u == ~u_input.a.x, true)), Struct_1(vec4<u32>(_wgslsmith_mod_u32(firstLeadingBit(u_input.b.x), max(arg_3, 4294967295u)), _wgslsmith_dot_vec2_u32(countOneBits(u_input.a), min(vec2<u32>(var_1.c, u_input.a.x), u_input.a)), ~u_input.b.x, var_1.c | (global1[_wgslsmith_index_u32(10068u, 5u)] << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 5u)], 5u)] % 32u))), vec3<i32>((var_1.d.x ^ 2147483647i) | 1i, -1i, -1i), 24252i, vec4<bool>(any(select(vec3<bool>(arg_1, true, false), var_3.wwx, false)), !(true & var_3.x), func_3(vec3<f32>(var_2.x, -857f, var_2.x), var_1.b, countOneBits(u_input.b), -34974i), true)), Struct_1(vec4<u32>(var_1.c, 73612u, _wgslsmith_div_u32(_wgslsmith_sub_u32(12872u, global1[_wgslsmith_index_u32(0u, 5u)]), _wgslsmith_dot_vec2_u32(vec2<u32>(10992u, 7503u), vec2<u32>(29885u, 49009u))), _wgslsmith_div_u32(~60674u, var_1.c & 0u)), ~vec3<i32>(~var_1.d.x, -1i, _wgslsmith_dot_vec4_i32(var_1.d, var_1.d)), 28421i, !vec4<bool>(any(vec2<bool>(true, arg_1)), func_3(vec3<f32>(-197f, 1644f, var_1.b.b.x), var_1.b, u_input.b, 2147483647i), var_2.x == 423f, true)));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i;
    var var_1 = ~(~_wgslsmith_mod_vec4_u32(~(vec4<u32>(77015u, global1[_wgslsmith_index_u32(42826u, 5u)], 14196u, 55977u) << (vec4<u32>(50905u, 75133u, 0u, global1[_wgslsmith_index_u32(6546u, 5u)]) % vec4<u32>(32u))), ~select(vec4<u32>(u_input.a.x, 0u, 4294967295u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 67326u, global1[_wgslsmith_index_u32(u_input.b.x, 5u)]), false)));
    global1 = array<u32, 5>();
    global0 = array<f32, 12>();
    var_1 = vec4<u32>(abs(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(~0u, 5u)], 5u)]), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 5u)], 5u)], 1u << (_wgslsmith_sub_u32(~var_1.x, 4294967295u) % 32u), ~(~(~var_1.x))) >> (countOneBits(vec4<u32>(11903u, ~(~0u), firstTrailingBit(max(4294967295u, var_1.x)), ~0u)) % vec4<u32>(32u));
    var_0 = _wgslsmith_mult_i32(~select(-37834i, ~0i << (global1[_wgslsmith_index_u32(var_1.x, 5u)] % 32u), func_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)]), vec2<f32>(-567f, -1638f), true)), false, vec4<bool>(true, false, true, true), 0u)), _wgslsmith_clamp_i32(func_2().x << (countOneBits(u_input.b.x) % 32u), 0i, _wgslsmith_sub_i32(func_2().x, ~countOneBits(-1i))));
    var_1 = ~min(vec4<u32>(var_1.x, u_input.a.x, ~abs(1u), ~firstLeadingBit(var_1.x)), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, u_input.a.x), 5u)], _wgslsmith_clamp_u32(1u, u_input.a.x, 21851u)), 5u)], 5u)], 1u, var_1.x, u_input.a.x));
    var var_2 = func_4(~13847i, func_4(_wgslsmith_sub_i32(0i, _wgslsmith_sub_i32(-1i, -1i)), Struct_3(true, vec2<f32>(_wgslsmith_f_op_f32(round(1259f)), _wgslsmith_f_op_f32(max(-513f, -732f))))).b).b;
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

