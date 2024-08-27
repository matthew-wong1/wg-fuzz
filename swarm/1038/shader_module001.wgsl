struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16> = array<bool, 16>(true, true, false, true, true, false, true, false, true, false, false, true, false, false, true, false);

var<private> global1: u32 = 2707u;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>) -> u32 {
    global1 = ~(~u_input.c);
    global0 = array<bool, 16>();
    global1 = firstTrailingBit(~0u);
    let var_0 = -(63473i ^ arg_0);
    var var_1 = firstLeadingBit(_wgslsmith_add_vec2_u32(firstTrailingBit(firstLeadingBit(vec2<u32>(u_input.c, u_input.c))), _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(u_input.c, 20542u)), reverseBits(vec2<u32>(u_input.c, 9879u)))));
    return var_1.x >> (var_1.x % 32u);
}

fn func_2() -> f32 {
    global0 = array<bool, 16>();
    let var_0 = Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-3199f * 1000f)))), 313f)), Struct_3(Struct_1(u_input.c), Struct_1(u_input.c)));
    global1 = ~func_3(~u_input.b.x, select(!vec4<bool>(global0[_wgslsmith_index_u32(var_0.b.b.a, 16u)], false, true, global0[_wgslsmith_index_u32(var_0.b.b.a, 16u)]), select(!vec4<bool>(global0[_wgslsmith_index_u32(82237u, 16u)], true, false, global0[_wgslsmith_index_u32(var_0.b.b.a, 16u)]), !vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(u_input.c, 16u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(u_input.c, 16u)], true, true), vec4<bool>(global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(var_0.b.b.a, 16u)], global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(var_0.b.b.a, 16u)]), vec4<bool>(global0[_wgslsmith_index_u32(11557u, 16u)], global0[_wgslsmith_index_u32(16620u, 16u)], global0[_wgslsmith_index_u32(u_input.c, 16u)], global0[_wgslsmith_index_u32(u_input.c, 16u)]))), vec4<bool>(false, false, any(vec2<bool>(false, true)), false)));
    let var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.b.x, -48186i), 0i), u_input.e.x, select(u_input.e.x, u_input.a, !all(vec4<bool>(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(var_0.b.b.a, 16u)])))), u_input.b);
    let var_2 = false;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a));
}

fn func_1() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -161f) + 269f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-652f * -1081f)) - -2318f) * _wgslsmith_f_op_f32(func_2())));
    let var_1 = Struct_1(abs(4294967295u) << (select(~1u, u_input.c, global0[_wgslsmith_index_u32(~u_input.c, 16u)]) % 32u));
    return Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -957f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-621f + _wgslsmith_div_f32(1328f, -901f))))), Struct_3(Struct_1(var_1.a), var_1));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 16>();
    var var_0 = u_input.c << (~select(~(~12801u), ~(~1u), true) % 32u);
    var var_1 = func_1();
    var_0 = var_1.b.b.a;
    let var_2 = _wgslsmith_dot_vec2_u32(abs(vec2<u32>(40188u, u_input.c)) >> (~(~vec2<u32>(40994u, 57983u)) % vec2<u32>(32u)), max(select(~vec2<u32>(1u, 41174u), countOneBits(vec2<u32>(4294967295u, u_input.c)), all(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 16u)]))), _wgslsmith_sub_vec2_u32(select(vec2<u32>(var_1.b.b.a, u_input.c), vec2<u32>(28162u, 0u), vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 16u)], global0[_wgslsmith_index_u32(var_1.b.a.a, 16u)])), min(vec2<u32>(var_1.b.b.a, var_1.b.a.a), vec2<u32>(var_1.b.a.a, var_1.b.b.a))))) >> (func_3(i32(-1i) * -2147483647i, !(!(!vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(u_input.c, 16u)], global0[_wgslsmith_index_u32(var_1.b.a.a, 16u)])))) % 32u);
    var_0 = 0u;
    global0 = array<bool, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(25329u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-410f, 140f, var_1.a)))));
}

