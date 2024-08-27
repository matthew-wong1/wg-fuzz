struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec3<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 26>;

var<private> global1: Struct_1;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec2<f32>, arg_3: Struct_3) -> u32 {
    global1 = arg_0;
    let var_0 = Struct_2(Struct_1(countOneBits(arg_3.b.a.a), firstLeadingBit(abs(select(arg_3.b.a.b, vec3<u32>(global1.b.x, 57655u, global1.b.x), false)))));
    var var_1 = arg_3;
    var var_2 = arg_2.x;
    global0 = array<vec4<f32>, 26>();
    return var_0.a.b.x;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec2<i32>) -> vec4<f32> {
    global1 = arg_2;
    let var_0 = _wgslsmith_f_op_vec2_f32(-arg_1.wy);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-1084f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))) * -1768f);
    let var_2 = Struct_3(-vec3<i32>(~(~u_input.b), arg_2.a.x, _wgslsmith_mod_i32(0i, 2147483647i ^ arg_2.a.x)), Struct_2(arg_2), _wgslsmith_f_op_vec3_f32(-arg_1.zyx), (-2147483647i >> (countOneBits(firstLeadingBit(4294967295u)) % 32u)) ^ ~select(0i, _wgslsmith_add_i32(u_input.b, global1.a.x), true && arg_0.x));
    var var_3 = vec2<bool>(arg_0.x, true);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(var_2.b.a.b.x, 26u)] - _wgslsmith_f_op_vec4_f32(abs(arg_1))));
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_4(select(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false))), true), _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(47741u, 26u)]), Struct_1(~min(-global1.a, global1.a), abs(global1.b) & vec3<u32>(~u_input.a.x, 0u, func_3(Struct_1(global1.a, global1.b), global1.a.x, vec2<f32>(-409f, 662f), Struct_3(vec3<i32>(2147483647i, u_input.b, -1i), Struct_2(Struct_1(global1.a, u_input.a)), vec3<f32>(-104f, -811f, 1349f), -59758i)))), vec2<i32>(-77929i, -u_input.b)));
    var var_1 = !select(select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(true, false, true, false)), u_input.a.x != 35327u), all(select(vec2<bool>(true, true), vec2<bool>(false, false), true))), vec2<bool>(_wgslsmith_div_f32(var_0.x, 318f) < var_0.x, true), vec2<bool>(true, true));
    let var_2 = abs(global1.a.yy);
    global0 = array<vec4<f32>, 26>();
    var var_3 = Struct_2(Struct_1(global1.a, u_input.a));
    return Struct_3(firstTrailingBit(abs(var_3.a.a)), Struct_2(var_3.a), _wgslsmith_f_op_vec4_f32(func_4(select(!vec3<bool>(var_1.x, true, true), !vec3<bool>(var_1.x, var_1.x, var_1.x), all(select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, var_1.x), var_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 1000f, 650f)), vec4<f32>(var_0.x, var_0.x, -889f, var_0.x)))), Struct_1(vec3<i32>(-1i) * -vec3<i32>(-18878i, var_3.a.a.x, var_3.a.a.x), vec3<u32>(u_input.a.x, 4294967295u, ~u_input.a.x)), vec2<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(-16220i, 2147483647i), var_3.a.a.x), -(global1.a.x << (var_3.a.b.x % 32u))))).zyy, var_3.a.a.x);
}

fn func_1() -> Struct_3 {
    let var_0 = all(!select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(true, true)), true));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = array<vec4<f32>, 26>();
    let var_1 = ~u_input.a.x;
    let var_2 = func_2().b.a;
    let var_3 = func_2();
    var var_4 = func_1().b;
    let var_5 = _wgslsmith_div_u32((0u << (~var_4.a.b.x % 32u)) & _wgslsmith_mod_u32(global1.b.x | var_2.b.x, var_0.b.a.b.x), ~var_2.b.x) & 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(44007u, ~var_5, global0[_wgslsmith_index_u32(max(~(~var_2.b.x), global1.b.x), 26u)], ~var_5, ~abs(firstTrailingBit(vec3<u32>(var_3.b.a.b.x, 1u, 0u))));
}

