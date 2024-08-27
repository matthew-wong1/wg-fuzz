struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8> = array<u32, 8>(13859u, 33377u, 22485u, 93587u, 0u, 1u, 4294967295u, 0u);

var<private> global1: Struct_3 = Struct_3(1700f, 704f, Struct_1(88748u), vec2<u32>(18023u, 73608u));

var<private> global2: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3, arg_1: vec4<bool>) -> bool {
    global1 = arg_0;
    let var_0 = Struct_1(4294967295u);
    global0 = array<u32, 8>();
    let var_1 = abs(~u_input.a.x);
    var var_2 = u_input.a;
    return !arg_1.x;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: f32, arg_3: f32) -> vec3<bool> {
    return vec3<bool>(!(arg_2 > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(236f * -1906f))), !func_3(Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -375f), arg_3, Struct_1(19971u), global1.d), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true))), all(vec2<bool>(any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), true)), -546f < _wgslsmith_f_op_f32(arg_2 * 1179f))));
}

fn func_1() -> StorageBuffer {
    let var_0 = !any(select(select(vec3<bool>(true, true, true), func_2(global0[_wgslsmith_index_u32(1u, 8u)], global1.c.a, global1.b, 2316f), true), vec3<bool>(true, u_input.a.x <= u_input.a.x, true), all(vec3<bool>(true, true, true))));
    let var_1 = Struct_3(_wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -543f)), _wgslsmith_div_f32(432f, _wgslsmith_f_op_f32(-global1.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1208f - 828f))), Struct_1(firstTrailingBit(4335u)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.c.a, 8u)] >> (global0[_wgslsmith_index_u32(23673u, 8u)] % 32u), 8u)] ^ 86758u, 8u)]), vec2<u32>(global1.d.x, 1u)));
    var var_2 = select(vec3<i32>(0i, (18079i << (var_1.d.x % 32u)) >> (firstTrailingBit(3290u) % 32u), max(i32(-1i) * -15811i, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a.x, 1i), _wgslsmith_mod_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, -18587i))))), vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), u_input.a.x, u_input.a.x), vec3<bool>(var_0 || (!var_0 && true), true, !all(vec3<bool>(false, var_0, var_0))));
    var var_3 = all(!vec2<bool>(var_0, !(1000f > global1.b)));
    global0 = array<u32, 8>();
    return StorageBuffer(global1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 2339i;
    global0 = array<u32, 8>();
    let x = u_input.a;
    s_output = func_1();
}

