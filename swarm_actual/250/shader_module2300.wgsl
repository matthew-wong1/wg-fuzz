struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4> = array<i32, 4>(-8399i, 30889i, -505i, 64748i);

var<private> global1: array<Struct_5, 15>;

var<private> global2: array<f32, 14> = array<f32, 14>(507f, -1174f, 486f, 583f, -977f, 755f, -2195f, 1106f, 353f, -506f, -487f, 691f, 1084f, -971f);

var<private> global3: i32;

var<private> global4: f32;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: i32, arg_1: vec4<bool>, arg_2: vec4<i32>, arg_3: bool) -> i32 {
    global0 = array<i32, 4>();
    var var_0 = !(!vec3<bool>(arg_3, !arg_1.x, arg_1.x));
    return -2147483647i;
}

fn func_1(arg_0: f32) -> Struct_4 {
    return Struct_4(Struct_1(func_2(~(~global0[_wgslsmith_index_u32(46027u, 4u)]), vec4<bool>(true, true, true, true), ~abs(vec4<i32>(0i, global0[_wgslsmith_index_u32(38552u, 4u)], 1i, global0[_wgslsmith_index_u32(u_input.a, 4u)])), any(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(455f + 760f))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, false, false, true))), 2030f);
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~u_input.a, 1u), vec3<u32>(70055u, abs(42003u), ~u_input.a) ^ ((vec3<u32>(u_input.a, 78459u, u_input.a) | vec3<u32>(6580u, u_input.a, u_input.a)) ^ ~vec3<u32>(16311u, u_input.a, u_input.a))), u_input.a);
    global1 = array<Struct_5, 15>();
    var var_1 = Struct_3(-542f);
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(102f, var_1.a) * _wgslsmith_f_op_f32(trunc(1417f))), func_1(global2[_wgslsmith_index_u32(reverseBits(u_input.a), 14u)]).a.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a, 14u)] * global2[_wgslsmith_index_u32(4294967295u, 14u)]), 1070f))), global2[_wgslsmith_index_u32(0u, 14u)]) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(19470u, 14u)]), -183f, func_1(469f).b), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1501f, var_1.a, -1296f), vec3<f32>(-737f, -475f, var_1.a)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, var_1.a, 110f) - vec3<f32>(346f, global2[_wgslsmith_index_u32(var_0, 14u)], -698f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1422f * -1110f), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(48368u, 14u)] + global2[_wgslsmith_index_u32(36534u, 14u)]), _wgslsmith_f_op_f32(step(var_1.a, global2[_wgslsmith_index_u32(1u, 14u)]))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-795f, global2[_wgslsmith_index_u32(4294967295u, 14u)], var_1.a)))));
    let var_3 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(803f)) - _wgslsmith_f_op_f32(min(var_1.a, _wgslsmith_f_op_f32(trunc(var_2.x))))))).a;
    return _wgslsmith_mult_i32(func_1(-332f).a.a, -global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.a, ~51358u), 4u)]);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: i32, arg_3: i32) -> vec3<f32> {
    var var_0 = abs(countOneBits(abs(~min(vec4<u32>(u_input.a, u_input.a, 26521u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))));
    var_0 = ~(vec4<u32>(10204u, u_input.a, 1u, ~(39068u >> (u_input.a % 32u))) | vec4<u32>(_wgslsmith_dot_vec2_u32(var_0.zx & vec2<u32>(1u, u_input.a), ~var_0.zz), u_input.a, min(var_0.x, 10227u), min(max(2539u, 29883u), ~var_0.x)));
    let var_1 = ~vec2<u32>(~abs(u_input.a), 4294967295u);
    let var_2 = ~(~(~max(vec3<u32>(4294967295u, 0u, var_0.x), vec3<u32>(var_0.x, u_input.a, var_0.x)))) << (var_0.zyz % vec3<u32>(32u));
    var_0 = max(~vec4<u32>(var_0.x, _wgslsmith_mod_u32(var_0.x, 58567u), _wgslsmith_clamp_u32(abs(65238u), var_1.x, abs(var_2.x)), max(~61159u, ~u_input.a)), ~_wgslsmith_sub_vec4_u32(countOneBits(~vec4<u32>(u_input.a, 13043u, var_2.x, 28978u)), ~vec4<u32>(14968u, var_2.x, var_1.x, var_1.x) | min(vec4<u32>(58678u, var_1.x, 1u, 4294967295u), vec4<u32>(var_2.x, u_input.a, var_0.x, var_2.x))));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1332f, global2[_wgslsmith_index_u32(85277u, 14u)], global2[_wgslsmith_index_u32(14815u, 14u)])))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.a.b, 2436f, arg_1.a.b), vec3<f32>(711f, -1367f, global2[_wgslsmith_index_u32(118649u, 14u)])))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(func_1(-458f), Struct_2(Struct_1(global0[_wgslsmith_index_u32(21271u, 4u)], global2[_wgslsmith_index_u32(0u, 14u)], vec4<bool>(false, false, false, false)), -u_input.b.zy), func_3(), ~abs(global0[_wgslsmith_index_u32(15345u, 4u)]))) - vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 14u)], global2[_wgslsmith_index_u32(~(~0u), 14u)], _wgslsmith_f_op_f32(f32(-1f) * -476f))), min(u_input.b >> (vec3<u32>(abs(0u), _wgslsmith_mult_u32(0u, u_input.a), u_input.a) % vec3<u32>(32u)), u_input.b));
}

