struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec3<i32>,
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

var<private> global0: vec4<bool> = vec4<bool>(true, false, true, false);

var<private> global1: f32 = -948f;

var<private> global2: vec3<i32>;

var<private> global3: array<Struct_1, 9>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> f32 {
    global1 = _wgslsmith_f_op_f32(-1000f - -1242f);
    let var_0 = u_input.a.x;
    let var_1 = vec3<i32>(-min(1i, _wgslsmith_mod_i32(u_input.c, global2.x)) & u_input.c, ~(-(~(~u_input.c))), _wgslsmith_mult_i32(_wgslsmith_mod_i32(reverseBits(global2.x), u_input.e.x), ~(~global2.x >> (~var_0 % 32u))));
    var var_2 = global3[_wgslsmith_index_u32(u_input.a.x, 9u)];
    var_2 = global3[_wgslsmith_index_u32(select(_wgslsmith_div_u32(96798u, var_0), ~abs(~1u), true), 9u)];
    return _wgslsmith_f_op_f32(select(357f, _wgslsmith_f_op_f32(ceil(-879f)), var_2.b.x));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<i32>) -> u32 {
    global1 = -302f;
    global0 = vec4<bool>(global0.x, !global0.x, false, !any(!vec4<bool>(true, global0.x, true, true)));
    let var_0 = _wgslsmith_div_vec2_u32(firstTrailingBit(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a.x, u_input.b), vec2<u32>(17194u, u_input.d.x) & u_input.a.zx, ~vec2<u32>(u_input.b, 0u))), ~u_input.a.yz ^ u_input.d);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(func_2()))) * arg_0.x);
    var var_1 = false;
    return abs(firstTrailingBit(_wgslsmith_mod_u32(4294967295u >> (1u % 32u), var_0.x)) << (u_input.a.x % 32u));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> StorageBuffer {
    global1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(arg_0.a.x))))), -1306f, global0.x));
    global1 = _wgslsmith_f_op_f32(max(391f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-152f * 604f))));
    global0 = vec4<bool>(arg_3.b.x && ((~u_input.a.x == 27194u) && true), all(select(!arg_0.b, select(select(arg_0.b, vec3<bool>(arg_2.b.x, true, false), true), select(vec3<bool>(global0.x, global0.x, arg_3.b.x), vec3<bool>(true, global0.x, arg_0.b.x), vec3<bool>(global0.x, arg_3.b.x, false)), any(vec3<bool>(false, global0.x, global0.x))), true)), select(false, false, ~u_input.e.x != u_input.c), !any(arg_0.b));
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(arg_2.a, _wgslsmith_f_op_vec4_f32(-arg_2.a)))), vec3<bool>(any(!vec2<bool>(arg_3.b.x, false)), global0.x, !(!select(arg_2.b.x, false, true))));
    global1 = _wgslsmith_f_op_f32(var_0.a.x + 1419f);
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -628f)) - _wgslsmith_f_op_f32(abs(-2138f))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_3(global3[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1502f, -1000f)), ~(~vec4<i32>(-48992i, 23902i, u_input.e.x, -2147483647i) & ~vec4<i32>(-75318i, global2.x, global2.x, -37136i))), 9u)], _wgslsmith_mult_u32(u_input.d.x, ~(~u_input.a.x) & u_input.b), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-704f, -875f, _wgslsmith_f_op_f32(select(-367f, 221f, true)), -389f)), global0.xwx), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.d.x, 1u, 4294967295u << (~_wgslsmith_dot_vec4_u32(vec4<u32>(155u, 85806u, 0u, 53450u), vec4<u32>(798u, 29253u, 4294967295u, u_input.a.x)) % 32u)), 9u)]);
}

