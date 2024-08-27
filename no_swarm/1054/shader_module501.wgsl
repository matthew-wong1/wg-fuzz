struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 27>;

var<private> global1: f32;

var<private> global2: array<bool, 28>;

var<private> global3: array<vec3<bool>, 20>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: vec4<bool>, arg_3: f32) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3))) - _wgslsmith_div_f32(-380f, arg_3)) - _wgslsmith_f_op_f32(ceil(arg_3)));
}

fn func_2(arg_0: Struct_5, arg_1: vec3<u32>) -> bool {
    let var_0 = u_input.b.yy;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-360f, -150f, 1f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1306f, 1256f, -1335f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-303f, -831f, -264f)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2276f * 541f))), _wgslsmith_f_op_f32(func_3(_wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.a.x, 1i), _wgslsmith_mod_i32(33756i, u_input.a.x)), Struct_4(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, 0i, u_input.a.x), vec4<i32>(-1i, u_input.a.x, u_input.a.x, -24798i))), vec4<bool>(any(vec3<bool>(false, arg_0.b.b.x, global2[_wgslsmith_index_u32(100429u, 28u)])), arg_0.b.b.x, false, global2[_wgslsmith_index_u32(0u, 28u)] | arg_0.b.b.x), -837f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1809f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1744f, -138f)))));
    let var_2 = arg_0;
    let var_3 = true;
    global1 = var_1.x;
    return arg_0.a.x & var_3;
}

fn func_1() -> f32 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-437f, -125f), _wgslsmith_f_op_f32(f32(-1f) * -166f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1114f, 2861f, true))))), _wgslsmith_f_op_f32(select(-402f, -1228f, any(select(global3[_wgslsmith_index_u32(u_input.b.x, 20u)], vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 28u)], false), global2[_wgslsmith_index_u32(u_input.b.x, 28u)]))))));
    global0 = array<Struct_3, 27>();
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1343f, _wgslsmith_f_op_f32(sign(1558f)), global2[_wgslsmith_index_u32(u_input.b.x, 28u)] || global2[_wgslsmith_index_u32(u_input.b.x, 28u)])) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(246f + -136f), _wgslsmith_f_op_f32(415f * -1000f)))) * _wgslsmith_f_op_f32(303f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-780f)), _wgslsmith_f_op_f32(f32(-1f) * -588f))))), _wgslsmith_f_op_f32(-273f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-316f, 910f)), -713f, global2[_wgslsmith_index_u32(552u, 28u)]))));
    var var_0 = Struct_5(vec2<bool>(true, true), Struct_2(~_wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(u_input.b.x, 35043u)), vec2<u32>(u_input.b.x, 4294967295u), ~u_input.b.yx), !vec4<bool>(select(false, true, false), func_2(Struct_5(vec2<bool>(global2[_wgslsmith_index_u32(13834u, 28u)], true), Struct_2(vec2<u32>(56407u, u_input.b.x), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 28u)], false, global2[_wgslsmith_index_u32(0u, 28u)], true))), vec3<u32>(1159u, u_input.b.x, u_input.b.x)), true, true)));
    let var_1 = global0[_wgslsmith_index_u32(4294967295u, 27u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -958f))), 1f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-414f, 393f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-512f - 1015f) - _wgslsmith_f_op_f32(f32(-1f) * -388f)))))));
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_1 = global2[_wgslsmith_index_u32(u_input.b.x, 28u)];
    var var_2 = -452f;
    let var_3 = any(vec4<bool>(true, _wgslsmith_f_op_f32(func_1()) <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(145f, -156f) * 826f), !global2[_wgslsmith_index_u32(u_input.b.x, 28u)], all(select(!vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 28u)], global2[_wgslsmith_index_u32(4294967295u, 28u)]), select(global3[_wgslsmith_index_u32(u_input.b.x, 20u)], vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 28u)], global2[_wgslsmith_index_u32(u_input.b.x, 28u)]), global3[_wgslsmith_index_u32(0u, 20u)]), !global3[_wgslsmith_index_u32(0u, 20u)]))));
    var var_4 = select(!select(vec4<bool>(!var_3, false, true, all(vec2<bool>(true, false))), select(!vec4<bool>(false, false, var_3, global2[_wgslsmith_index_u32(u_input.b.x, 28u)]), vec4<bool>(true, true, true, true), select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 28u)], var_3, global2[_wgslsmith_index_u32(u_input.b.x, 28u)], true), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 28u)], true, true, var_3), vec4<bool>(var_3, var_3, var_3, var_3))), any(vec2<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 28u)], global2[_wgslsmith_index_u32(u_input.b.x, 28u)]))), vec4<bool>(true, false, !all(vec2<bool>(true, true)), false), !select(vec4<bool>(var_3, global2[_wgslsmith_index_u32(0u, 28u)] & global2[_wgslsmith_index_u32(u_input.b.x, 28u)], all(vec2<bool>(var_3, false)), var_3), !(!vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 28u)], var_3, true, true)), !(u_input.a.x >= u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(~vec3<u32>(1u, 1088u, u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(596f))));
}

