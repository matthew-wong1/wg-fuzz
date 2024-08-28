struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, false);

var<private> global1: Struct_2;

var<private> global2: array<vec4<f32>, 14>;

var<private> global3: array<vec4<bool>, 18> = array<vec4<bool>, 18>(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true));

var<private> global4: array<f32, 28> = array<f32, 28>(910f, 357f, 1000f, 1593f, 771f, -293f, -372f, 706f, -448f, 1489f, 352f, -1000f, 1966f, -1271f, 937f, -209f, 873f, 695f, 1546f, -1595f, -1000f, -395f, 1581f, -296f, 196f, 454f, -279f, 1632f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> vec3<f32> {
    var var_0 = ~(~abs(4294967295u));
    global2 = array<vec4<f32>, 14>();
    global0 = vec3<bool>(global1.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(311f, 1066f), _wgslsmith_f_op_f32(f32(-1f) * -590f))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(907f + global4[_wgslsmith_index_u32(4294967295u, 28u)]) * -225f), 250f), any(global0.xz));
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(0u, 28u)]), -1234f, _wgslsmith_f_op_f32(floor(global4[_wgslsmith_index_u32(u_input.b, 28u)])), -555f)));
    return _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(26168u, 61238u), 28u)], _wgslsmith_f_op_f32(f32(-1f) * -3584f))), _wgslsmith_f_op_f32(f32(-1f) * -1850f), -743f)));
}

fn func_2() -> Struct_3 {
    let var_0 = vec3<bool>(all(vec2<bool>(global1.a.x || any(vec2<bool>(true, false)), !(global1.a.x && false))), false, !(u_input.b < ~1u));
    global1 = Struct_2(vec2<bool>(all(vec4<bool>(false, all(global3[_wgslsmith_index_u32(0u, 18u)]), !var_0.x, global0.x)), var_0.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1573f, _wgslsmith_f_op_f32(-109f - _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(44633u, 28u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.b, 28u)]))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(45668u, 28u)], -453f, global4[_wgslsmith_index_u32(u_input.b, 28u)])) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(u_input.b, 28u)], -1501f, global4[_wgslsmith_index_u32(u_input.b, 28u)]))))), true)) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(max(vec4<i32>(2147483647i, -1i, -37835i, 0i), vec4<i32>(u_input.a.x, -41720i, -13215i, u_input.a.x)), ~49758u), ~vec2<u32>(u_input.b, u_input.b))), vec3<f32>(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(8606u, 39111u), 0u >> (u_input.b % 32u)), 28u)], global4[_wgslsmith_index_u32(~(u_input.b >> (u_input.b % 32u)), 28u)], 302f))));
    var var_2 = all(select(select(global3[_wgslsmith_index_u32(~(~30640u), 18u)], global3[_wgslsmith_index_u32(_wgslsmith_add_u32(27496u, ~u_input.b), 18u)], vec4<bool>(all(var_0), any(vec2<bool>(true, true)), global1.a.x, true)), !vec4<bool>(true, true, false, var_0.x), !select(vec4<bool>(false, true, global1.a.x, var_0.x), vec4<bool>(true, global1.a.x, true, var_0.x), vec4<bool>(true, var_0.x, true, false))));
    var var_3 = Struct_4(global3[_wgslsmith_index_u32(u_input.b, 18u)], reverseBits(~u_input.b | 11968u) >> (u_input.b % 32u), global1.a.x);
    return Struct_3(vec3<i32>(-(~u_input.a.x), _wgslsmith_add_i32(u_input.a.x, ~(~0i)), firstLeadingBit(-57831i)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(var_3.b, 14u)] * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(global2[_wgslsmith_index_u32(var_3.b, 14u)])), _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(var_3.b, 14u)])))), _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(30760u, 14u)])), var_1, true);
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: vec4<f32>, arg_3: Struct_3) -> f32 {
    let var_0 = vec4<u32>(4294967295u, ~arg_0 ^ u_input.b, arg_0, 8959u);
    global1 = Struct_2(!global1.a);
    var var_1 = arg_3.c.x;
    global3 = array<vec4<bool>, 18>();
    var var_2 = true;
    return -243f;
}

fn func_1() -> Struct_2 {
    global2 = array<vec4<f32>, 14>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(1u, true, _wgslsmith_f_op_vec4_f32(vec4<f32>(-370f, 901f, -252f, global4[_wgslsmith_index_u32(23214u, 28u)]) + vec4<f32>(-1259f, global4[_wgslsmith_index_u32(95332u, 28u)], global4[_wgslsmith_index_u32(58137u, 28u)], global4[_wgslsmith_index_u32(534u, 28u)])), func_2()))) != _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_1 = vec2<bool>(func_2().d, !global0.x);
    let var_2 = Struct_4(!(!global3[_wgslsmith_index_u32(~115373u, 18u)]), u_input.b & (~u_input.b ^ select(_wgslsmith_dot_vec2_u32(vec2<u32>(117575u, 4294967295u), vec2<u32>(66675u, 3488u)), firstLeadingBit(1u), !global0.x)), all(global0.xx));
    var var_3 = var_2.a.yyy;
    return Struct_2(vec2<bool>(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(6730u, u_input.b, var_2.b), vec3<u32>(16643u, var_2.b, u_input.b))) < max(u_input.b, 1u | u_input.b), !global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<bool>, 18>();
    var var_0 = func_1();
    var_0 = func_1();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(func_2().c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-230f - global4[_wgslsmith_index_u32(0u, 28u)]))), -983f, -1027f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(30051u, 28u)], _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.b, 28u)]), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.b, 28u)] * 288f), -840f)))));
    global4 = array<f32, 28>();
    var var_2 = vec3<u32>(51799u, u_input.b, 0u);
    var var_3 = Struct_2(vec2<bool>(true, all(!select(vec3<bool>(true, global1.a.x, true), vec3<bool>(var_0.a.x, global0.x, true), vec3<bool>(true, false, global1.a.x)))));
    var var_4 = Struct_3(u_input.a, global2[_wgslsmith_index_u32(u_input.b, 14u)], var_1.xwz, (true || all(vec2<bool>(var_0.a.x, true))) | false);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-390f, var_1.x, -1149f, global4[_wgslsmith_index_u32(u_input.b, 28u)]))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x - var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -160f)), var_1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_4.b.x, global4[_wgslsmith_index_u32(10047u, 28u)])))))), u_input.a.zz);
}

