struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2 = Struct_2(true, false);

var<private> global2: array<u32, 18> = array<u32, 18>(1u, 4294967295u, 1u, 17390u, 4294967295u, 0u, 1u, 61696u, 20456u, 38270u, 1u, 48289u, 60776u, 71367u, 4294967295u, 4294967295u, 4294967295u, 10726u);

var<private> global3: Struct_2 = Struct_2(false, true);

var<private> global4: array<f32, 32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: u32, arg_1: i32) -> vec3<bool> {
    global2 = array<u32, 18>();
    let var_0 = u_input.a.wy;
    var var_1 = Struct_1(i32(-1i) * -6634i);
    var var_2 = Struct_3(vec3<u32>(global2[_wgslsmith_index_u32(~u_input.a.x, 18u)], 0u, u_input.a.x), Struct_1(_wgslsmith_mult_i32(select(~8437i, i32(-1i) * -21188i, all(vec3<bool>(global1.a, global1.a, true))), 0i)), _wgslsmith_add_i32(-12986i, -1i), Struct_1(global0.a), _wgslsmith_add_i32(select(~(-37118i), abs(global0.a), true), global0.a));
    let var_3 = Struct_2(global3.b, global1.b);
    return select(vec3<bool>(any(vec4<bool>(all(vec2<bool>(true, false)), true, global1.b || false, true)), all(select(!vec2<bool>(global3.a, var_3.b), vec2<bool>(false, var_3.b), select(vec2<bool>(false, global1.a), vec2<bool>(var_3.a, var_3.b), global3.b))), true), !(!(!(!vec3<bool>(false, true, global3.b)))), select(!select(select(vec3<bool>(false, true, false), vec3<bool>(var_3.a, false, true), vec3<bool>(true, true, global1.a)), vec3<bool>(true, true, global3.b), true), !select(vec3<bool>(var_3.b, false, global3.b), !vec3<bool>(false, true, global1.b), !var_3.a), false));
}

fn func_2() -> Struct_2 {
    let var_0 = reverseBits(reverseBits(global2[_wgslsmith_index_u32(1u | u_input.a.x, 18u)] ^ ~u_input.a.x));
    var var_1 = func_3(3749u, -_wgslsmith_mult_i32(~(~global0.a), global0.a));
    let var_2 = Struct_1(global0.a & global0.a);
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(u_input.a.x, 32u)], global4[_wgslsmith_index_u32(4294967295u, 32u)], -177f)), vec3<f32>(1176f, global4[_wgslsmith_index_u32(1u, 32u)], global4[_wgslsmith_index_u32(var_0, 32u)]), global1.b)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global4[_wgslsmith_index_u32(1u, 32u)], 146f, global4[_wgslsmith_index_u32(var_0, 32u)]), vec3<f32>(-1763f, 794f, -730f))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global4[_wgslsmith_index_u32(83389u, 32u)], -388f, 332f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1994f, _wgslsmith_f_op_f32(-1828f - 1491f), _wgslsmith_f_op_f32(f32(-1f) * -369f)) - vec3<f32>(global4[_wgslsmith_index_u32(43223u, 32u)], _wgslsmith_f_op_f32(sign(315f)), -1447f)))) - vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(1u, 32u)] * global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), 32u)]))), -273f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(768f, global4[_wgslsmith_index_u32(var_0, 32u)])))));
    let var_4 = Struct_4(var_2.a, var_1.xx, u_input.c.x);
    return Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(1u, 32u)] * 1192f), _wgslsmith_f_op_f32(max(322f, var_3.x))), var_3.x, true)) == _wgslsmith_f_op_f32(var_3.x * 1465f), all(vec2<bool>(false, global1.b)));
}

fn func_1() -> bool {
    global2 = array<u32, 18>();
    var var_0 = reverseBits(55880u);
    global4 = array<f32, 32>();
    global1 = func_2();
    var var_1 = !vec4<bool>((global3.b | (global1.b || false)) | false, all(vec3<bool>(global3.a, true, global3.a)), global3.b, global0.a >= u_input.b);
    return true;
}

fn func_4(arg_0: vec3<bool>, arg_1: bool) -> Struct_3 {
    var var_0 = any(!vec4<bool>(false, true, global3.b, arg_1)) || select(global1.b, true, func_2().b | true);
    let var_1 = u_input.a >> (reverseBits(firstTrailingBit(u_input.a)) % vec4<u32>(32u));
    return Struct_3(vec3<u32>(u_input.a.x, u_input.a.x, var_1.x) ^ u_input.a.zyw, Struct_1(select(~global0.a, 2147483647i, global1.a)), u_input.b ^ reverseBits(1i), Struct_1(min(_wgslsmith_div_i32(~global0.a, u_input.b), u_input.c.x)), firstLeadingBit(1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(!vec3<bool>(_wgslsmith_add_u32(0u, u_input.a.x) <= _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(4515u, 18u)], 1u), true, select(all(vec4<bool>(global1.b, global1.b, global3.a, global3.b)), !global3.b, func_1())), true);
    var var_1 = Struct_2(false, global1.a);
    let var_2 = 23726i;
    let var_3 = var_0;
    var var_4 = _wgslsmith_add_vec2_i32(u_input.c.xx & vec2<i32>(reverseBits(_wgslsmith_sub_i32(global0.a, 22478i)), var_0.d.a), u_input.c.xx);
    let var_5 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(func_4(select(vec3<bool>(false, global1.b, global3.b), vec3<bool>(true, global1.b, true), vec3<bool>(var_1.b, true, global1.a)), func_3(4294967295u, var_4.x).x).a.x, 32u)])), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(35417u, 32u)])), _wgslsmith_div_f32(global4[_wgslsmith_index_u32(~1u, 32u)], global4[_wgslsmith_index_u32(reverseBits(var_3.a.x), 32u)]))), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~u_input.a, vec4<u32>(~1u, ~var_0.a.x, countOneBits(var_3.a.x), max(80606u, 4294967295u))), 32u)] - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.a.x, 32u)] * global4[_wgslsmith_index_u32(var_0.a.x, 32u)]), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(0u, 32u)] + global4[_wgslsmith_index_u32(var_3.a.x, 32u)]))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -244f))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec4<i32>(select(-1i, var_0.c, global1.a), 0i & u_input.c.x, countOneBits(var_0.b.a), 0i)) ^ vec4<i32>(31557i >> (global2[_wgslsmith_index_u32(84679u << (global2[_wgslsmith_index_u32(var_0.a.x, 18u)] % 32u), 18u)] % 32u), var_4.x, abs(reverseBits(6114i)), ~global0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1163f, 1534f)))))));
}

