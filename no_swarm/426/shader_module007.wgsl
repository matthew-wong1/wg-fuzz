struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 29>;

var<private> global1: vec4<u32> = vec4<u32>(59505u, 1u, 0u, 26230u);

var<private> global2: array<bool, 21>;

var<private> global3: array<Struct_3, 28>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.c.x, 29u)];
    let var_1 = !(!(!(!vec3<bool>(false, true, global2[_wgslsmith_index_u32(var_0.a.c.a.d.x, 21u)]))));
    global0 = array<Struct_4, 29>();
    let var_2 = var_0.a.c;
    global1 = u_input.c;
    return _wgslsmith_add_u32(_wgslsmith_div_u32(min(abs(~37690u), ~min(var_2.a.d.x, 0u)), global1.x), _wgslsmith_div_u32(0u, ~(~firstLeadingBit(0u))));
}

fn func_3(arg_0: u32) -> Struct_2 {
    var var_0 = global3[_wgslsmith_index_u32(global1.x, 28u)];
    global3 = array<Struct_3, 28>();
    let var_1 = ~global1.x;
    global0 = array<Struct_4, 29>();
    let var_2 = Struct_1(vec4<f32>(_wgslsmith_div_f32(var_0.c.a.a.x, var_0.c.a.b), _wgslsmith_f_op_f32(var_0.c.a.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.c.a.b)) * -125f)), var_0.c.a.a.x, _wgslsmith_f_op_f32(var_0.c.a.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -958f) + _wgslsmith_f_op_f32(abs(var_0.c.a.a.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(422f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-157f - 745f))), _wgslsmith_f_op_f32(sign(-756f))), 1u, var_0.c.a.d, u_input.a.x);
    return var_0.c;
}

fn func_1(arg_0: u32, arg_1: vec4<bool>) -> Struct_2 {
    let var_0 = func_3(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(global1.x | global1.x), _wgslsmith_sub_u32(arg_0, ~0u), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(global1.wwz, u_input.c.zzx), vec3<u32>(arg_0, global1.x, u_input.c.x) << (global1.xwx % vec3<u32>(32u))), u_input.c.x), vec4<u32>(max(~global1.x, 1u), func_2(), select(arg_0, 30557u, arg_1.x), abs(~global1.x))));
    var var_1 = var_0;
    global0 = array<Struct_4, 29>();
    global3 = array<Struct_3, 28>();
    var var_2 = false;
    return func_3(30484u);
}

fn func_4(arg_0: Struct_2) -> Struct_4 {
    global2 = array<bool, 21>();
    global2 = array<bool, 21>();
    let var_0 = abs(u_input.c.x);
    global1 = arg_0.a.d ^ (_wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(4294967295u, global1.x, ~global1.x, countOneBits(global1.x))) | ~firstLeadingBit(select(u_input.c, vec4<u32>(1u, 28480u, 38846u, 56672u), true)));
    var var_1 = reverseBits(~1i);
    return Struct_4(global3[_wgslsmith_index_u32(firstTrailingBit(10079u), 28u)], func_3(_wgslsmith_add_u32(func_1(4294967295u, select(vec4<bool>(global2[_wgslsmith_index_u32(global1.x, 21u)], true, global2[_wgslsmith_index_u32(4294967295u, 21u)], global2[_wgslsmith_index_u32(1u, 21u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.c.x, 21u)], true, global2[_wgslsmith_index_u32(11027u, 21u)]), global2[_wgslsmith_index_u32(65368u, 21u)])).a.d.x, _wgslsmith_sub_u32(u_input.c.x, var_0 & 47706u))).a.d.x, ~(~(~global1.zzz)), vec2<u32>(var_0, max(~0u, 26833u)), func_3(func_2()).a.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = func_4(func_1(global1.x, vec4<bool>(!all(vec4<bool>(global2[_wgslsmith_index_u32(33622u, 21u)], global2[_wgslsmith_index_u32(global1.x, 21u)], global2[_wgslsmith_index_u32(82040u, 21u)], true)), false, !(u_input.b.x > u_input.b.x), any(!vec2<bool>(true, global2[_wgslsmith_index_u32(5622u, 21u)])))));
    var var_2 = u_input.b.x;
    global3 = array<Struct_3, 28>();
    global2 = array<bool, 21>();
    global0 = array<Struct_4, 29>();
    var var_3 = func_1(u_input.c.x, !vec4<bool>((true | global2[_wgslsmith_index_u32(global1.x, 21u)]) | (global2[_wgslsmith_index_u32(u_input.c.x, 21u)] & var_1.a.b.x), !var_1.a.b.x, true, true)).a.e;
    var var_4 = _wgslsmith_div_u32(~min(0u, u_input.c.x), func_1(func_3(func_3(_wgslsmith_clamp_u32(var_1.b, 1u, 28368u)).a.c).a.d.x, vec4<bool>(any(!vec2<bool>(var_1.a.b.x, false)), false, any(var_1.a.b), var_1.a.b.x)).a.c);
    let x = u_input.a;
    s_output = StorageBuffer(max(-_wgslsmith_sub_i32(-30975i, u_input.a.x) ^ var_1.a.a, 47740i));
}

