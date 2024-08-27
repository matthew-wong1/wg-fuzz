struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: vec3<u32> = vec3<u32>(86615u, 40642u, 8451u);

var<private> global2: array<vec4<u32>, 27> = array<vec4<u32>, 27>(vec4<u32>(32418u, 33822u, 65879u, 11924u), vec4<u32>(42152u, 0u, 4294967295u, 3192u), vec4<u32>(4294967295u, 4294967295u, 0u, 36002u), vec4<u32>(4294967295u, 45174u, 63391u, 4294967295u), vec4<u32>(102856u, 4294967295u, 1u, 25999u), vec4<u32>(0u, 0u, 4294967295u, 1u), vec4<u32>(53468u, 0u, 24431u, 1u), vec4<u32>(77435u, 72754u, 64862u, 19040u), vec4<u32>(58326u, 1u, 0u, 0u), vec4<u32>(0u, 59357u, 0u, 56294u), vec4<u32>(1u, 4294967295u, 121159u, 4294967295u), vec4<u32>(4294967295u, 85291u, 21290u, 70361u), vec4<u32>(30784u, 75574u, 21235u, 0u), vec4<u32>(4294967295u, 12384u, 21294u, 2658u), vec4<u32>(4294967295u, 86166u, 0u, 19449u), vec4<u32>(0u, 49542u, 0u, 0u), vec4<u32>(27823u, 4294967295u, 1u, 0u), vec4<u32>(1u, 34072u, 1u, 23715u), vec4<u32>(7996u, 109148u, 1u, 4294967295u), vec4<u32>(10u, 48334u, 4294967295u, 26383u), vec4<u32>(724u, 72522u, 0u, 33012u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(11729u, 72171u, 0u, 42960u), vec4<u32>(4294967295u, 1u, 15716u, 59257u), vec4<u32>(1u, 4294967295u, 12844u, 60082u), vec4<u32>(6819u, 4294967295u, 16850u, 1u), vec4<u32>(1u, 0u, 0u, 54563u));

var<private> global3: array<f32, 17> = array<f32, 17>(403f, 545f, -372f, -392f, 226f, 105f, 581f, 833f, 147f, 2214f, -549f, 140f, 1267f, -1000f, 1439f, 1075f, 1000f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1() -> vec3<u32> {
    return vec3<u32>(75215u, _wgslsmith_sub_u32(54140u, min(2113u, _wgslsmith_dot_vec2_u32(reverseBits(global1.yx), ~u_input.d.xz))), u_input.b);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = all(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), false)) && all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false))), any(vec3<bool>(false, true, false))));
    global1 = u_input.d;
    var var_1 = ~(~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, global1.x, global1.x), select(vec3<u32>(49150u, global1.x, global1.x), u_input.d, vec3<bool>(true, false, false))));
    global2 = array<vec4<u32>, 27>();
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(1u, 17u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(global1.x, 17u)], global3[_wgslsmith_index_u32(global1.x, 17u)]))) - global3[_wgslsmith_index_u32(global1.x, 17u)]), _wgslsmith_f_op_f32(max(421f, _wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(1u, 17u)]))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-789f - global3[_wgslsmith_index_u32(4294967295u, 17u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(14895u, 17u)])) * _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(0u, 17u)]))), global3[_wgslsmith_index_u32(arg_0.e.d, 17u)]) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-518f, global3[_wgslsmith_index_u32(6410u, 17u)], 623f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(357f, -1000f, 1950f) * vec3<f32>(-1151f, global3[_wgslsmith_index_u32(arg_0.c.x, 17u)], 960f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2516f, global3[_wgslsmith_index_u32(0u, 17u)], global3[_wgslsmith_index_u32(arg_0.c.x, 17u)]) + vec3<f32>(872f, global3[_wgslsmith_index_u32(68255u, 17u)], global3[_wgslsmith_index_u32(0u, 17u)]))))));
    return select(~(~(~vec4<u32>(arg_1.c, global1.x, 34523u, u_input.d.x))) >> (arg_0.b % vec4<u32>(32u)), arg_1.b, !(~(~34542u) < (arg_0.d.d << (~arg_1.c % 32u))));
}

fn func_2() -> vec2<u32> {
    global0 = 7698u;
    var var_0 = Struct_2(25321i, vec4<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(global1.x, 27u)], global2[_wgslsmith_index_u32(u_input.d.x, 27u)]), global1.x, global1.x), _wgslsmith_mod_vec3_u32(firstTrailingBit(u_input.d), _wgslsmith_sub_vec3_u32(vec3<u32>(79530u, 1u, 1u), u_input.d))), 441u, u_input.b ^ firstLeadingBit(1u)), ~func_3(Struct_2(-1i, vec4<u32>(0u, 1u, 54877u, global1.x), vec4<u32>(1u, u_input.d.x, global1.x, 1u), Struct_1(1i, vec4<u32>(u_input.b, 0u, global1.x, 2173u), 1u, u_input.d.x), Struct_1(8869i, vec4<u32>(13637u, 62645u, 4018u, 18398u), global1.x, global1.x)), Struct_1(u_input.a.x, vec4<u32>(4294967295u, 1u, 0u, global1.x) ^ global2[_wgslsmith_index_u32(u_input.d.x, 27u)], _wgslsmith_dot_vec3_u32(u_input.d, u_input.d), ~global1.x)), Struct_1(-7869i, vec4<u32>(global1.x, ~_wgslsmith_div_u32(4294967295u, u_input.b), ~func_3(Struct_2(u_input.a.x, vec4<u32>(4151u, 25469u, u_input.d.x, 2701u), vec4<u32>(global1.x, global1.x, 12791u, 1u), Struct_1(u_input.c, vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), global1.x, global1.x), Struct_1(-1i, global2[_wgslsmith_index_u32(45392u, 27u)], global1.x, global1.x)), Struct_1(u_input.c, vec4<u32>(global1.x, u_input.b, 0u, 0u), global1.x, 42976u)).x, ~global1.x), 51955u, ~u_input.b), Struct_1(-2147483647i, select(global2[_wgslsmith_index_u32(~39861u, 27u)], global2[_wgslsmith_index_u32(7166u, 27u)], select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false))), select(~0u, ~_wgslsmith_dot_vec2_u32(u_input.d.zy, u_input.d.xz), all(vec2<bool>(true, true))), 4294967295u));
    var var_1 = vec4<bool>(any(vec4<bool>(true, true, true, true)), false, !select(true, true, true), true);
    let var_2 = Struct_1(var_0.d.a, ~(~firstTrailingBit(var_0.b)), _wgslsmith_mod_u32(~(~1u), _wgslsmith_mod_u32(firstTrailingBit(~var_0.d.d), ~(~4294967295u))), ~u_input.d.x);
    global2 = array<vec4<u32>, 27>();
    return max(u_input.d.xy, vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, ~u_input.d.x), u_input.d.x), ~4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = func_2();
    var var_2 = 33503i;
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 17u)] * 603f)), global3[_wgslsmith_index_u32(1u, 17u)]), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.x, global1.x, 43700u), vec3<u32>(global1.x, u_input.b, var_0.x)), 17u)] + _wgslsmith_f_op_f32(-516f * _wgslsmith_f_op_f32(f32(-1f) * -912f))), _wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(29444u, 17u)], -1086f)), 105f), _wgslsmith_mod_u32(u_input.b, _wgslsmith_add_u32(func_1().x, ~u_input.d.x)), vec4<i32>(min(u_input.a.x, 60962i ^ u_input.c) | _wgslsmith_sub_i32(u_input.a.x, u_input.c), max(u_input.a.x, u_input.c), -27694i, u_input.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(48650u, 17u)]))), 1000f)));
}

