struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec2<f32>,
    d: vec2<i32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(false, true, true, false), vec3<u32>(1u, 45167u, 4981u), -127f);

var<private> global1: array<vec3<i32>, 20>;

var<private> global2: array<u32, 22> = array<u32, 22>(1u, 4294967295u, 47686u, 42390u, 98964u, 7929u, 4294967295u, 21584u, 1u, 52400u, 24856u, 1u, 4294967295u, 0u, 72622u, 20387u, 0u, 0u, 4294967295u, 1u, 0u, 30630u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = Struct_1(select(select(select(global0.a, global0.a, global0.a), vec4<bool>(true, true, true, true), global0.a.x), global0.a, !vec4<bool>(any(global0.a), global0.a.x | global0.a.x, true, u_input.c >= u_input.c)), global0.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)), _wgslsmith_f_op_f32(-global0.c))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.c, _wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(global0.c, var_0.c)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -857f) + 290f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.c)) + 111f))), _wgslsmith_f_op_f32(-1031f + var_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_0.c))))));
    let var_2 = var_1.yy;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.c)))));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> vec2<i32> {
    global0 = Struct_1(vec4<bool>(true, false, global0.a.x, true), firstTrailingBit(~arg_1.b), global0.c);
    let var_0 = u_input.b;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) - _wgslsmith_f_op_f32(-arg_1.c)), _wgslsmith_f_op_f32(func_3(arg_1.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -311f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1408f * arg_1.c))), 1053f, _wgslsmith_f_op_f32(func_3(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(7439u, 22u)], arg_1.b.x))), global0.c) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c, global0.c, -665f, 395f) + vec4<f32>(global0.c, -154f, 679f, -662f))))));
    var var_2 = arg_1;
    var var_3 = arg_1;
    return vec2<i32>(8043i, arg_0);
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = 58448u;
    global2 = array<u32, 22>();
    let var_1 = abs(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(global0.b.x), _wgslsmith_dot_vec4_u32(u_input.b, u_input.b), ~global2[_wgslsmith_index_u32(11056u, 22u)], var_0), _wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(var_0, var_0, u_input.b.x, global2[_wgslsmith_index_u32(1u, 22u)]))), 20u)] ^ ~countOneBits(global1[_wgslsmith_index_u32(~u_input.d.x, 20u)]));
    var var_2 = Struct_1(select(global0.a, global0.a, !select(global0.c < -457f, true, true)), vec3<u32>(abs(41826u), 4294967295u, countOneBits(_wgslsmith_dot_vec3_u32(u_input.b.wwx >> (vec3<u32>(global0.b.x, 0u, 4294967295u) % vec3<u32>(32u)), ~global0.b))), global0.c);
    let var_3 = 25892u;
    return Struct_1(vec4<bool>(arg_1, arg_1, !arg_1, global0.a.x == all(vec2<bool>(arg_1, var_2.a.x))), u_input.b.www, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.c)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(-global0.c)), _wgslsmith_f_op_f32(global0.c * var_2.c), true))));
}

fn func_1(arg_0: vec3<f32>) -> u32 {
    global1 = array<vec3<i32>, 20>();
    global1 = array<vec3<i32>, 20>();
    let var_0 = -14152i;
    var var_1 = -867f;
    global0 = func_4(~(_wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, 70221u), 1u) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(33062u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(23792u, 22u)], 22u)], u_input.d.x, global0.b.x), u_input.b) % 32u)), all(vec2<bool>(!global0.a.x, true)), func_2(0i, Struct_1(!global0.a, _wgslsmith_div_vec3_u32(~global0.b, u_input.b.ywx), _wgslsmith_f_op_f32(-668f - 861f))));
    return global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(108502u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d.x, 22u)], 22u)], _wgslsmith_dot_vec4_u32(u_input.b, _wgslsmith_mult_vec4_u32(vec4<u32>(11248u, 1u, 1u, 16072u), u_input.b)) & ~54162u), vec3<u32>(u_input.b.x | ~global2[_wgslsmith_index_u32(u_input.d.x, 22u)], ~4294967295u, ~79843u)), 22u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_clamp_vec2_u32(vec2<u32>(36126u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 22u)], 22u)]), ~vec2<u32>(global0.b.x, _wgslsmith_clamp_u32(103657u, global0.b.x, 1u)), u_input.b.zz);
    let var_1 = max(~52862u, 47515u);
    global1 = array<vec3<i32>, 20>();
    var_0 = _wgslsmith_mod_vec2_u32(global0.b.zy, firstLeadingBit(~vec2<u32>(select(var_0.x, var_1, false), var_1)));
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1500f, 1256f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1, ~1u), 22u)], func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1205f, 1000f, var_2)) * vec3<f32>(1132f, var_2, global0.c)))), ~(-79125i), _wgslsmith_mult_vec4_u32(u_input.b, u_input.b), global0.c, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-148f, var_2), vec2<f32>(global0.c, global0.c), vec2<bool>(global0.a.x, false))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 418f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(302f, var_2))))), vec2<bool>(var_2 != -1000f, func_4(var_0.x, any(vec3<bool>(global0.a.x, true, global0.a.x)), ~vec2<i32>(u_input.c, u_input.a)).a.x))));
}

