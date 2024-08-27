struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(-916f, vec3<bool>(false, true, true));

var<private> global1: f32 = 789f;

var<private> global2: Struct_3;

var<private> global3: array<u32, 14>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> vec4<bool> {
    var var_0 = select(_wgslsmith_mod_vec2_i32(u_input.b.yx, u_input.b.zz), firstLeadingBit(_wgslsmith_mult_vec2_i32(u_input.b.zz ^ u_input.b.yz, vec2<i32>(1i << (arg_2 % 32u), u_input.b.x))), select(global2.b.yz, !vec2<bool>(global2.b.x, arg_2 != arg_2), global2.b.x && false));
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a, global0.a) * vec2<f32>(global2.a, global0.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a, 347f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, -830f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a, global0.a)) - vec2<f32>(global0.a, global0.a))))));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(floor(1440f)), select(global2.b, global2.b, select(!select(global2.b, global2.b, global0.b), !global2.b, select(select(vec3<bool>(global2.b.x, false, false), vec3<bool>(true, true, global0.b.x), false), vec3<bool>(global2.b.x, global0.b.x, global2.b.x), vec3<bool>(true, false, global0.b.x)))));
    let var_3 = Struct_2(Struct_1(select(~(~vec3<u32>(arg_1.a.x, 4294967295u, u_input.e.x)), _wgslsmith_mod_vec3_u32(arg_1.a, arg_1.a << (arg_1.a % vec3<u32>(32u))), true)), select(var_2.b.xy, var_2.b.yy, select(vec2<bool>(all(vec2<bool>(true, var_2.b.x)), any(vec2<bool>(var_2.b.x, true))), select(vec2<bool>(global0.b.x, true), vec2<bool>(var_2.b.x, false), global2.b.x), vec2<bool>(global2.b.x & global2.b.x, any(vec4<bool>(global0.b.x, global0.b.x, global0.b.x, true))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(723f, -1009f, var_2.a) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, var_1.x, global0.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a, -361f, 904f) * vec3<f32>(181f, -1321f, var_2.a)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.a, var_2.a, -502f), vec3<f32>(var_2.a, 753f, global2.a), global2.b.x)))) - vec3<f32>(946f, 1921f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1326f + global0.a))))));
    let var_4 = !(!vec3<bool>(true, false, all(vec2<bool>(false, var_2.b.x))));
    return vec4<bool>(var_4.x, false, false && var_3.b.x, select(global0.b.x, false, all(var_4.xy)));
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_3) -> u32 {
    var var_0 = -1000f;
    let var_1 = Struct_3(global0.a, arg_2.b);
    let var_2 = !vec4<bool>(global2.b.x, global0.b.x, any(func_3(arg_1, Struct_1(vec3<u32>(u_input.e.x, 0u, 4294967295u)), 16309u)) | !(global0.a > var_1.a), true);
    let var_3 = u_input.a.yxx;
    let var_4 = Struct_1(var_3);
    return _wgslsmith_add_u32(1u ^ _wgslsmith_sub_u32(global3[_wgslsmith_index_u32(4294967295u, 14u)], 39051u), countOneBits(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(var_3.x & global3[_wgslsmith_index_u32(var_4.a.x, 14u)], abs(54640u)), 4294967295u), 14u)]));
}

fn func_1() -> Struct_3 {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.d, ~((func_2(u_input.b, -1i, Struct_3(global0.a, global2.b)) & ~89005u) ^ ~reverseBits(u_input.c))), 14u)];
    let var_1 = !select(select(func_3(-u_input.b.x, Struct_1(u_input.a.yxx), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.c), vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(u_input.d, 14u)]))), func_3(1i, Struct_1(vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(0u, 14u)], 0u)), 1u), !select(vec4<bool>(true, global2.b.x, true, global0.b.x), vec4<bool>(false, global0.b.x, global0.b.x, true), vec4<bool>(global2.b.x, global0.b.x, true, false))), vec4<bool>(true, global0.b.x, select(true, !global2.b.x, global2.b.x), true), false);
    let var_2 = Struct_3(-1000f, vec3<bool>(all(!vec4<bool>(false, var_1.x, global0.b.x, true)) || (-555f < _wgslsmith_div_f32(global0.a, global2.a)), !(u_input.d != _wgslsmith_add_u32(u_input.d, u_input.d)), true));
    var var_3 = select(vec2<bool>(!(true | select(var_2.b.x, true, var_1.x)), -678f < _wgslsmith_f_op_f32(-global2.a)), func_3(firstLeadingBit(min(u_input.b.x, ~u_input.b.x)), Struct_1(~u_input.a.wyw ^ ~vec3<u32>(33897u, 43942u, u_input.a.x)), 16854u).yx, !(!vec2<bool>(global2.a <= global2.a, all(var_1))));
    global1 = 1641f;
    return var_2;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_3) -> Struct_3 {
    global3 = array<u32, 14>();
    global0 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_0.a)))), !vec3<bool>(max(0u, u_input.c) == (u_input.a.x << (global3[_wgslsmith_index_u32(u_input.a.x, 14u)] % 32u)), true, true));
    var var_0 = _wgslsmith_sub_i32(u_input.b.x, _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.b.x, -1i), u_input.b.x));
    global2 = Struct_3(global2.a, arg_0.b);
    global3 = array<u32, 14>();
    return Struct_3(973f, vec3<bool>(arg_2.b.x, any(!func_1().b.yz), true));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(func_1(), global2.b.yy, func_1());
    global0 = Struct_3(_wgslsmith_f_op_f32(-204f - -538f), global0.b);
    global3 = array<u32, 14>();
    let var_0 = Struct_2(Struct_1(u_input.a.wwy), select(global2.b.xy, func_4(func_4(func_1(), vec2<bool>(global2.b.x, false), func_4(Struct_3(global0.a, vec3<bool>(global0.b.x, global0.b.x, true)), global0.b.zx, Struct_3(global2.a, global2.b))), select(vec2<bool>(global0.b.x, false), vec2<bool>(global2.b.x, global0.b.x), global0.b.xx), Struct_3(_wgslsmith_f_op_f32(-global0.a), select(global2.b, vec3<bool>(global0.b.x, false, true), global0.b))).b.yz, global2.b.xx), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2.a, _wgslsmith_f_op_f32(global2.a + global0.a), -618f), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, global2.a, global0.a)), vec3<f32>(1448f, -1086f, global2.a))))), vec3<f32>(_wgslsmith_f_op_f32(global2.a + _wgslsmith_f_op_f32(-global0.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(102f * global0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1812f))))));
    let var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.a, 65598u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.a)) * _wgslsmith_f_op_f32(func_4(Struct_3(global0.a, vec3<bool>(global0.b.x, var_0.b.x, false)), var_0.b, Struct_3(-1000f, global2.b)).a - -517f)), global2.a);
}

