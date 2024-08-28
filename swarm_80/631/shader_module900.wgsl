struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec4<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(-333f, 349f, 2058f, -1000f), vec4<f32>(-1496f, 1599f, -1830f, -259f), vec4<f32>(1640f, -144f, -877f, -1325f), vec4<f32>(311f, -989f, -325f, 464f), vec4<f32>(714f, 380f, 1416f, -984f), vec4<f32>(691f, 291f, 425f, 1862f));

var<private> global1: array<Struct_2, 4>;

var<private> global2: array<bool, 21>;

var<private> global3: Struct_2 = Struct_2(false, Struct_1(2147483647i, -1i), false, 1u);

var<private> global4: array<u32, 30> = array<u32, 30>(9102u, 91188u, 0u, 46715u, 29427u, 108972u, 1u, 22175u, 42607u, 52877u, 0u, 1u, 1u, 38215u, 46344u, 1u, 59195u, 4294967295u, 41999u, 13332u, 13141u, 0u, 1u, 15408u, 4294967295u, 4294967295u, 39703u, 13002u, 2643u, 99611u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> bool {
    var var_0 = u_input.a.x;
    var var_1 = Struct_2(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(55848u, 30u)], 21u)], global3.b, all(select(vec2<bool>(!global3.c, global2[_wgslsmith_index_u32(4294967295u, 21u)]), select(!vec2<bool>(true, global3.a), vec2<bool>(false, global2[_wgslsmith_index_u32(global3.d, 21u)]), true), select(vec2<bool>(true, true), !vec2<bool>(global3.a, false), any(vec2<bool>(global2[_wgslsmith_index_u32(1u, 21u)], true))))), global3.d);
    let var_2 = -1388f;
    global2 = array<bool, 21>();
    global4 = array<u32, 30>();
    return true && all(select(!(!vec3<bool>(global2[_wgslsmith_index_u32(global3.d, 21u)], global2[_wgslsmith_index_u32(1u, 21u)], global2[_wgslsmith_index_u32(0u, 21u)])), !(!vec3<bool>(true, var_1.c, true)), !(!vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 21u)], false, false))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -515f) - _wgslsmith_f_op_f32(f32(-1f) * -1709f)))), -761f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), Struct_1(_wgslsmith_mult_i32(min(9824i, countOneBits(global3.b.b)), ~2147483647i), -2147483647i));
    let var_1 = global2[_wgslsmith_index_u32(~1u, 21u)];
    var var_2 = Struct_1(u_input.b.x, -21532i);
    global2 = array<bool, 21>();
    global0 = array<vec4<f32>, 6>();
    return _wgslsmith_dot_vec2_u32(abs(_wgslsmith_add_vec2_u32(firstTrailingBit(~vec2<u32>(15609u, global3.d)), select(_wgslsmith_add_vec2_u32(vec2<u32>(0u, global3.d), vec2<u32>(14415u, 26314u)), min(vec2<u32>(global3.d, 4294967295u), vec2<u32>(global4[_wgslsmith_index_u32(15726u, 30u)], 1u)), all(arg_0.zz)))), vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(firstTrailingBit(global3.d), 30u)], 30u)], ~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(73117u, 30u)], 30u)], 30u)], _wgslsmith_add_u32(25666u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(74421u, 30u)], 30u)])), 30u)], 30u)]));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1216f, _wgslsmith_f_op_f32(-1099f - _wgslsmith_f_op_f32(floor(721f))), -687f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1944f, 1000f, 1720f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(541f, -203f, -254f) * vec3<f32>(-1000f, 2175f, -299f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(227f, 1182f, 1000f) + vec3<f32>(-801f, 222f, 307f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(462f, 675f, -1705f)), !global2[_wgslsmith_index_u32(49602u, 21u)])), global2[_wgslsmith_index_u32(1u, 21u)] && (global3.c || true))))), global3.b);
    global0 = array<vec4<f32>, 6>();
    let var_1 = vec3<f32>(1608f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -125f), true)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-159f * 746f) - var_0.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a.x * 853f))))));
    var var_2 = global1[_wgslsmith_index_u32(func_4(vec3<bool>(global3.a, func_3(), select(func_3(), global4[_wgslsmith_index_u32(1u, 30u)] == global3.d, global3.c & global3.c)), global3.b) >> (global3.d % 32u), 4u)];
    var_2 = Struct_2(func_3(), global3.b, false, 20233u);
    return Struct_2(any(!select(select(vec2<bool>(global3.a, false), vec2<bool>(false, var_2.c), global3.a), select(vec2<bool>(false, global3.a), vec2<bool>(true, global2[_wgslsmith_index_u32(82086u, 21u)]), vec2<bool>(true, true)), !vec2<bool>(var_2.a, global3.c))), Struct_1(0i, -27189i), (select(true, all(vec2<bool>(global3.a, global2[_wgslsmith_index_u32(4294967295u, 21u)])), true) | (firstTrailingBit(var_2.d) < global3.d)) | true, 0u);
}

fn func_1() -> Struct_2 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -329f))), _wgslsmith_f_op_f32(trunc(-2568f)));
    var var_1 = _wgslsmith_f_op_f32(-var_0.x);
    var_1 = var_0.x;
    global0 = array<vec4<f32>, 6>();
    let var_2 = -(u_input.a.x & global3.b.a) >> ((32647u << ((_wgslsmith_clamp_u32(~global3.d, global3.d, global4[_wgslsmith_index_u32(4294967295u, 30u)] ^ global3.d) << ((_wgslsmith_mult_u32(1u, 4294967295u) >> (global3.d % 32u)) % 32u)) % 32u)) % 32u);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1539f, 993f)), _wgslsmith_f_op_f32(round(640f)))), -693f))));
    global0 = array<vec4<f32>, 6>();
    var var_1 = func_1();
    global2 = array<bool, 21>();
    global2 = array<bool, 21>();
    var var_2 = any(!select(select(vec4<bool>(global2[_wgslsmith_index_u32(var_1.d, 21u)], true, false, global2[_wgslsmith_index_u32(var_1.d, 21u)]), vec4<bool>(var_1.a, global3.a, true, global2[_wgslsmith_index_u32(global3.d, 21u)]), vec4<bool>(global3.a, true, false, true)), !vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(4294967295u, 21u)]), select(vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 21u)], false, false), vec4<bool>(true, false, false, false), var_1.c))) | !any(!(!vec2<bool>(false, global3.c)));
    var var_3 = Struct_3(vec3<f32>(-1062f, var_0.x, var_0.x), Struct_1(u_input.a.x, ~(~(~1i))));
    var var_4 = global0[_wgslsmith_index_u32(10092u, 6u)];
    let x = u_input.a;
    s_output = StorageBuffer(44997i, 4294967295u, _wgslsmith_mult_vec3_i32(vec3<i32>(var_3.b.b, 0i, firstLeadingBit(~(-20531i))), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), var_3.b.b), -2147483647i, var_3.b.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, 1123f, var_0.x, var_0.x) + global0[_wgslsmith_index_u32(~global3.d, 6u)]))), _wgslsmith_f_op_vec2_f32(-var_3.a.zx));
}

