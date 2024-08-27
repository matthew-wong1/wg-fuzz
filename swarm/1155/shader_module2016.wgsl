struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec4<bool>;

var<private> global2: array<vec4<u32>, 6> = array<vec4<u32>, 6>(vec4<u32>(33076u, 1u, 64811u, 19466u), vec4<u32>(1u, 0u, 1u, 22856u), vec4<u32>(4294967295u, 4294967295u, 58993u, 4294967295u), vec4<u32>(0u, 0u, 0u, 32688u), vec4<u32>(5865u, 10634u, 37656u, 1u), vec4<u32>(23939u, 26526u, 0u, 0u));

var<private> global3: array<f32, 19> = array<f32, 19>(382f, -1948f, 352f, 1000f, 1657f, 470f, -1169f, -716f, 2012f, -597f, -654f, -533f, 1491f, 479f, -1112f, -265f, -259f, -417f, 262f);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2) -> vec4<i32> {
    global2 = array<vec4<u32>, 6>();
    let var_0 = arg_1;
    let var_1 = countOneBits(firstTrailingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(arg_1.c, vec2<i32>(arg_1.d.a.x, u_input.a)), _wgslsmith_mult_vec2_i32(vec2<i32>(8850i, arg_1.d.a.x), arg_1.d.a.zx)), -_wgslsmith_mod_vec2_i32(global0.zy, var_0.d.a.yw))));
    let var_2 = Struct_3(arg_1.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(170f, 1306f, 114f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(965f, var_0.a, -795f)))))));
    var var_3 = -53330i;
    return _wgslsmith_sub_vec4_i32(max(firstLeadingBit(arg_1.d.a), var_2.a.a), var_2.a.a);
}

fn func_2(arg_0: vec2<f32>, arg_1: bool) -> u32 {
    global0 = _wgslsmith_add_vec4_i32(~vec4<i32>(max(select(0i, 12732i, false), global0.x), -min(u_input.a, -1i), ~(-32813i), -35534i), max(~(~(-vec4<i32>(global0.x, u_input.a, global0.x, u_input.a))), func_3(vec2<u32>(1u, 1u), Struct_2(arg_0.x, global1.x, vec2<i32>(global0.x, global0.x), Struct_1(vec4<i32>(u_input.a, -31279i, u_input.a, 12470i)))) << (firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u))));
    let var_0 = Struct_3(Struct_1(_wgslsmith_sub_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, -1i, global0.x), vec4<i32>(-2147483647i, -1i, -2147483647i, 42475i)), vec4<i32>(32550i, max(5340i, 1i), -global0.x, global0.x))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(744f)))), -446f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1204f) - _wgslsmith_f_op_f32(-arg_0.x)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -739f), 680f)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-var_0.b);
    global0 = firstTrailingBit(var_0.a.a);
    global2 = array<vec4<u32>, 6>();
    return min(abs(26060u), ~reverseBits(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(45536u, 35990u, 4294967295u, 9707u), global2[_wgslsmith_index_u32(1u, 6u)]), ~4294967295u)));
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_2) -> Struct_1 {
    global3 = array<f32, 19>();
    var var_0 = vec3<u32>(_wgslsmith_div_u32(abs(arg_1.x), ~4294967295u), ~func_2(vec2<f32>(1000f, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_1.x, 28650u), 19u)]), !(global3[_wgslsmith_index_u32(1u, 19u)] == global3[_wgslsmith_index_u32(66598u, 19u)])), arg_1.x);
    let var_1 = arg_2;
    global2 = array<vec4<u32>, 6>();
    let var_2 = Struct_1(vec4<i32>(-47763i, ~(-(~u_input.a)), max(2147483647i, -u_input.a), arg_2.d.a.x));
    return Struct_1(vec4<i32>(var_2.a.x << (~(~var_0.x) % 32u), global0.x, max(-24290i, -2147483647i ^ _wgslsmith_mod_i32(-1i, global0.x)), func_3(~arg_1.zy, arg_2).x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!global1.x, abs(countOneBits(reverseBits(vec4<u32>(25932u, 4294967295u, 6487u, 0u)))), Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1070f, _wgslsmith_f_op_f32(-698f - global3[_wgslsmith_index_u32(0u, 19u)]))))), any(!select(vec3<bool>(true, false, global1.x), vec3<bool>(global1.x, global1.x, global1.x), global1.xzy)), abs(_wgslsmith_sub_vec2_i32(-global0.wy, global0.xx)), Struct_1(-(~vec4<i32>(0i, -27956i, u_input.a, 1i)))));
    global1 = select(vec4<bool>(true, !any(select(global1.yz, vec2<bool>(true, global1.x), vec2<bool>(false, global1.x))), !global1.x, global1.x), select(vec4<bool>(true, !global1.x, all(global1.zx), true), select(vec4<bool>(!global1.x, global1.x || global1.x, global3[_wgslsmith_index_u32(25073u, 19u)] < 1058f, global1.x), !select(vec4<bool>(false, global1.x, false, true), vec4<bool>(true, true, true, global1.x), vec4<bool>(global1.x, global1.x, true, true)), !vec4<bool>(global1.x, true, false, global1.x)), global1.x), vec4<bool>(-49622i > max(-1i, -global0.x), any(vec2<bool>(false || global1.x, global1.x)), all(vec2<bool>(false, global1.x)) & true, all(select(!vec2<bool>(global1.x, false), global1.zz, true))));
    var var_1 = Struct_1(vec4<i32>(max(select(1i, global0.x, false), ~global0.x), ~max(1i, 1i), 2147483647i, ~(~firstTrailingBit(global0.x))));
    let var_2 = var_1.a.x;
    let var_3 = func_1(all(!select(!vec3<bool>(true, global1.x, global1.x), global1.wwy, select(global1.zzx, vec3<bool>(false, true, true), global1.x))), select(global2[_wgslsmith_index_u32(select(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 1u, 50950u), vec3<u32>(1u, 1u, 1u)), ~1u, true), 6u)], global2[_wgslsmith_index_u32(56476u, 6u)], true), Struct_2(_wgslsmith_f_op_f32(-804f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1267f) * 1433f)), global1.x, firstLeadingBit(~vec2<i32>(global0.x, var_0.a.x)) << (~(~vec2<u32>(1188u, 848u)) % vec2<u32>(32u)), func_1(false, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(109570u, 4294967295u, 4294967295u), ~vec3<u32>(4294967295u, 0u, 4294967295u)), 6u)], Struct_2(-568f, global1.x, ~vec2<i32>(1i, 1i), var_0))));
    let x = u_input.a;
    s_output = StorageBuffer(-1300f, _wgslsmith_f_op_f32(f32(-1f) * -1304f), select(~firstLeadingBit(global2[_wgslsmith_index_u32(34487u, 6u)]), global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(47957u, 0u, 99282u, 7248u), abs(vec4<u32>(0u, 1u, 15364u, 4294967295u))), 6u)], any(select(vec3<bool>(true, global1.x, false), global1.yyz, false))), _wgslsmith_mod_vec3_u32(~(vec3<u32>(5553u, 4294967295u, 4294967295u) | select(vec3<u32>(1u, 48108u, 1u), vec3<u32>(1u, 8276u, 4294967295u), global1.yyz)), ~(~firstTrailingBit(vec3<u32>(4294967295u, 0u, 37219u)))));
}

