struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec4<u32>, 17>;

var<private> global2: vec2<bool> = vec2<bool>(false, true);

var<private> global3: Struct_2 = Struct_2(Struct_1(31219u), 1u);

var<private> global4: array<Struct_2, 14>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec4<f32>) -> f32 {
    let var_0 = arg_0.zw;
    let var_1 = u_input.a.wyw;
    global3 = global4[_wgslsmith_index_u32(max(~global3.a.a, abs(global3.b)), 14u)];
    global0 = ~(-(~_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.x, u_input.a.x, 4788i), var_1), ~vec3<i32>(2147483647i, 2147483647i, -1i))));
    var var_2 = ~u_input.b.zz;
    return arg_0.x;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: vec3<f32>, arg_3: u32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1181f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<f32>(-493f, _wgslsmith_f_op_f32(floor(-1238f)), arg_2.x, _wgslsmith_f_op_f32(select(240f, -204f, global2.x))))))));
    var var_1 = ~(~4294967295u);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(round(arg_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -1588f), -772f);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_0.xz)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.x, 1801f), _wgslsmith_f_op_vec2_f32(-arg_0.xx)) - arg_0.yy)));
    var_1 = ~1u;
    return true;
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<bool>) -> bool {
    global3 = Struct_2(global3.a, 117155u);
    var var_0 = _wgslsmith_f_op_f32(-1410f - _wgslsmith_div_f32(-1380f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(103f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-979f, -611f)) - _wgslsmith_f_op_f32(-arg_0.x)))));
    global1 = array<vec4<u32>, 17>();
    let var_1 = global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(12064u, 0u), u_input.b.x), u_input.b.x), 14u)];
    global2 = arg_1;
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.a;
    let var_1 = select(!select(vec4<bool>(true, true, true, !global2.x), vec4<bool>(global2.x || false, global2.x, global2.x && true, true), select(vec4<bool>(true, false, global2.x, true), !vec4<bool>(false, false, false, global2.x), vec4<bool>(true, true, false, global2.x))), vec4<bool>(func_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-692f, 1000f, -1222f)), vec3<f32>(-298f, -651f, -1368f), select(vec3<bool>(global2.x, global2.x, true), vec3<bool>(true, global2.x, false), global2.x))), select(vec2<bool>(global2.x, true), select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1455f, -1317f, 452f)), 59692u), all(vec3<bool>(all(vec2<bool>(global2.x, false)), true, false)), func_3(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -766f), -1891f, _wgslsmith_div_f32(-579f, 579f)), select(select(vec2<bool>(global2.x, true), vec2<bool>(global2.x, global2.x), global2.x), vec2<bool>(global2.x, true), true)), true), false);
    global2 = !select(!var_1.wx, select(var_1.zx, vec2<bool>(true, u_input.a.x < u_input.a.x), global2.x), any(select(!var_1.xy, vec2<bool>(true, false), select(var_1.wz, var_1.yy, vec2<bool>(var_1.x, var_1.x)))));
    global1 = array<vec4<u32>, 17>();
    var var_2 = _wgslsmith_mult_vec4_u32(~vec4<u32>(~u_input.b.x, u_input.b.x, 0u, 4294967295u), ~(~(vec4<u32>(1u, 29030u, u_input.b.x, var_0.a) >> (vec4<u32>(u_input.b.x, u_input.b.x, var_0.a, 1u) % vec4<u32>(32u))))) | _wgslsmith_sub_vec4_u32(vec4<u32>(global3.b << (~64370u % 32u), _wgslsmith_sub_u32(u_input.b.x >> (15449u % 32u), _wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(98296u, 17u)], global1[_wgslsmith_index_u32(u_input.b.x, 17u)])), reverseBits(global3.b), 94662u), ~(~global1[_wgslsmith_index_u32(u_input.b.x, 17u)]) >> (global1[_wgslsmith_index_u32(u_input.b.x, 17u)] % vec4<u32>(32u)));
    global0 = u_input.a.x;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1521f))), -253f))));
    let var_4 = Struct_2(Struct_1(abs(var_2.x)), _wgslsmith_add_u32(18401u, firstTrailingBit(firstLeadingBit(select(4294967295u, u_input.b.x, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(firstLeadingBit(_wgslsmith_sub_vec3_u32(~vec3<u32>(23221u, var_4.b, 1u), firstLeadingBit(u_input.b))), vec3<u32>(1u, ~7579u, ~_wgslsmith_add_u32(42839u, 58119u))));
}

