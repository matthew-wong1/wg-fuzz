struct Struct_1 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(2147483647i, 1i);

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(false, 17809i), Struct_1(true, i32(-2147483648)), Struct_1(true, i32(-2147483648)), Struct_1(false, 21026i), Struct_1(false, 5627i), Struct_1(false, -35689i), Struct_1(true, 2147483647i), Struct_1(false, -30053i), Struct_1(false, 0i), Struct_1(false, -39249i), Struct_1(true, 42118i), Struct_1(false, 16883i), Struct_1(false, -1i), Struct_1(false, 1i), Struct_1(true, -14465i), Struct_1(true, -50833i), Struct_1(true, 55975i), Struct_1(true, -1i), Struct_1(true, 22664i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: i32) -> bool {
    let var_0 = Struct_1(!arg_1.x, _wgslsmith_mult_i32(_wgslsmith_div_i32(-2147483647i, _wgslsmith_mod_i32(-global0.x, -55895i)), u_input.a.x));
    global0 = arg_0.zz;
    return true;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global1 = array<Struct_1, 19>();
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -425f), _wgslsmith_f_op_f32(trunc(335f)), _wgslsmith_div_f32(965f, 1646f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-502f, 299f, -1162f)))))));
    global1 = array<Struct_1, 19>();
    global0 = ~u_input.a.xw;
    let var_1 = Struct_1(true, -2147483647i);
    return Struct_1(false && arg_1.a, 1i);
}

fn func_1(arg_0: i32, arg_1: vec3<u32>) -> f32 {
    var var_0 = Struct_1(any(vec2<bool>(false || all(vec4<bool>(false, false, true, false)), false)), arg_0);
    global1 = array<Struct_1, 19>();
    var var_1 = func_3(Struct_1(true, -11102i), Struct_1(!(!func_2(vec4<i32>(global0.x, global0.x, u_input.a.x, -38356i), vec2<bool>(false, true), global0.x)), -select(-42160i, global0.x, !var_0.a)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.wy, _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(0u, 63571u), arg_1.x), arg_1.xz)), 19u)], Struct_1(u_input.b.x > ~25285u, ~(~(-u_input.c))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1069f));
    global1 = array<Struct_1, 19>();
    return -364f;
}

fn func_4(arg_0: f32) -> bool {
    var var_0 = Struct_1(~_wgslsmith_mod_u32(abs(u_input.b.x), ~u_input.b.x) >= firstTrailingBit(~(~1u)), 0i);
    global1 = array<Struct_1, 19>();
    global1 = array<Struct_1, 19>();
    var_0 = Struct_1(false, abs(min(_wgslsmith_clamp_i32(func_3(global1[_wgslsmith_index_u32(u_input.b.x, 19u)], global1[_wgslsmith_index_u32(u_input.b.x, 19u)], Struct_1(false, var_0.b), global1[_wgslsmith_index_u32(55795u, 19u)]).b, u_input.a.x, 1i), -1i)));
    var_0 = global1[_wgslsmith_index_u32(u_input.b.x, 19u)];
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), any(vec4<bool>(true, true, true, true)))));
    var_0 = !(!(!(!vec3<bool>(true, var_0.x, false))));
    global1 = array<Struct_1, 19>();
    let var_1 = u_input.b.x;
    let var_2 = Struct_1(select(!func_4(_wgslsmith_f_op_f32(func_1(49102i, vec3<u32>(34598u, 120309u, var_1)))), func_3(global1[_wgslsmith_index_u32(36501u, 19u)], Struct_1(var_0.x, u_input.c), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(select(u_input.b.x, 4186u, false), min(var_1, 0u)), 19u)], global1[_wgslsmith_index_u32(1u, 19u)]).a, true), 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yz >> ((~u_input.b.xz << (u_input.b.zx % vec2<u32>(32u))) % vec2<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(step(-971f, -491f)), 252f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2114f - 863f), -278f, true)), _wgslsmith_f_op_f32(-1f)), -645f));
}

