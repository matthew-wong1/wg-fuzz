struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_2 = Struct_2(vec3<bool>(false, true, true), vec3<bool>(true, false, false));

var<private> global2: vec4<i32> = vec4<i32>(-1i, -43700i, -1i, 10502i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: vec2<bool>, arg_3: i32) -> bool {
    let var_0 = true;
    let var_1 = Struct_3(Struct_2(!select(global1.a, select(vec3<bool>(var_0, false, true), global1.b, global1.a.x), global1.a.x), global1.a), Struct_1(true, -u_input.d != (abs(36725i) << (1u % 32u))));
    global1 = var_1.a;
    global0 = ~arg_0.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_1.yyy)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.yxy)));
    return select(arg_0.x >= arg_0.x, !(!var_1.b.b), false);
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = Struct_1(!any(!(!vec4<bool>(true, true, global1.b.x, global1.b.x))), true);
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-172f, 826f, -867f), vec3<f32>(143f, 276f, -795f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1237f, 212f, 1408f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2193f, -2063f)) - -825f), 291f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(135f, 463f))), global1.a.x))));
    var_0 = Struct_1(true, select(!func_3(vec2<u32>(u_input.e.x, u_input.e.x), vec4<f32>(var_1.x, -1690f, -194f, var_1.x), global1.a.zx, global2.x) || true, true, !(_wgslsmith_add_i32(u_input.c, global2.x) < 2147483647i)));
    global1 = Struct_2(!select(global1.a, global1.b, vec3<bool>(false, all(vec4<bool>(false, var_0.b, true, true)), true)), !global1.a);
    let var_2 = Struct_1(all(vec2<bool>(true, true)), true);
    return Struct_2(global1.a, select(vec3<bool>(-334f == var_1.x, false, false), !vec3<bool>(true, all(vec2<bool>(false, false)), !var_0.b), global1.a));
}

fn func_1(arg_0: Struct_2) -> StorageBuffer {
    global1 = Struct_2(select(vec3<bool>(global1.b.x, !global1.b.x, any(vec4<bool>(true, arg_0.a.x, false, false))), global1.b, !all(global1.b)), select(arg_0.a, select(arg_0.a, arg_0.b, !select(arg_0.b, arg_0.b, true)), select(vec3<bool>(arg_0.a.x, arg_0.b.x, !global1.b.x), select(select(arg_0.a, vec3<bool>(global1.b.x, false, arg_0.b.x), vec3<bool>(true, false, false)), global1.a, vec3<bool>(true, false, false)), !(!arg_0.a.x))));
    global1 = func_2(7642i);
    global1 = func_2(_wgslsmith_div_i32(0i, firstTrailingBit(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b))));
    global0 = reverseBits(u_input.e.x);
    global2 = -u_input.b;
    return StorageBuffer(33938u, u_input.e.x >> (0u % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-699f, _wgslsmith_f_op_f32(f32(-1f) * -652f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -902f) + _wgslsmith_f_op_f32(1072f * 500f)), !all(arg_0.a)))), global2.x, (vec3<i32>(12332i | u_input.b.x, 22407i, u_input.b.x) >> (u_input.e.wyw % vec3<u32>(32u))) << (select(vec3<u32>(4294967295u, 0u, u_input.e.x) | vec3<u32>(u_input.e.x, 33739u, 10253u), _wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(u_input.e.x, 43599u, 4294967295u)), vec3<u32>(u_input.e.x, u_input.e.x, 378u)), select(func_2(-1i).b, vec3<bool>(global1.b.x, true, arg_0.a.x), true)) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 23880u;
    let var_0 = -70027i >> (u_input.e.x % 32u);
    let var_1 = Struct_2(global1.a, vec3<bool>(select(any(!global1.a), global1.b.x, true), false, global1.a.x));
    let x = u_input.a;
    s_output = func_1(var_1);
}

