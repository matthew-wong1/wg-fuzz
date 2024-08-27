struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, vec3<u32>(0u, 22523u, 41599u), 1u);

var<private> global1: bool;

var<private> global2: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(false, vec3<u32>(8650u, 104843u, 0u), 86075u), Struct_1(true, vec3<u32>(39358u, 1u, 19352u), 1u), Struct_1(true, vec3<u32>(1u, 0u, 6515u), 0u), Struct_1(true, vec3<u32>(31741u, 4294967295u, 1u), 101828u), Struct_1(true, vec3<u32>(0u, 0u, 57971u), 4294967295u));

var<private> global3: array<vec2<f32>, 2>;

var<private> global4: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: vec2<u32>, arg_1: bool) -> bool {
    return any(global4.zy);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_2) -> bool {
    global3 = array<vec2<f32>, 2>();
    let var_0 = Struct_2(~arg_2.a, arg_0);
    let var_1 = all(!arg_1);
    let var_2 = global2[_wgslsmith_index_u32(var_0.b.b.x, 5u)];
    global1 = true;
    return var_2.a;
}

fn func_2() -> i32 {
    global4 = select(vec3<bool>(global0.a, func_1(global0.b.xz, !func_1(vec2<u32>(u_input.a.x, global0.c), global4.x)), u_input.b > firstLeadingBit(~(-28962i))), !select(!select(vec3<bool>(global4.x, global4.x, global0.a), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), !vec3<bool>(true, global4.x, global4.x), vec3<bool>(!global4.x, global4.x, global0.a)), !vec3<bool>(!(true | global4.x), func_3(Struct_1(global4.x, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.x), !vec4<bool>(false, global0.a, global0.a, global4.x), Struct_2(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 2147483647i), global2[_wgslsmith_index_u32(4294967295u, 5u)])), false));
    let var_0 = !vec4<bool>(!all(!vec3<bool>(global4.x, global0.a, false)), all(select(vec3<bool>(true, global0.a, false), vec3<bool>(true, true, false), global4.x && global4.x)), !global4.x, global0.a);
    global1 = global0.a;
    let var_1 = false;
    var var_2 = Struct_2(-vec4<i32>(u_input.b | 1i, ~abs(35714i), firstTrailingBit(-40752i) << (u_input.a.x % 32u), 0i), Struct_1(var_0.x, _wgslsmith_div_vec3_u32(global0.b, vec3<u32>(_wgslsmith_div_u32(2078u, 1u), u_input.a.x, ~0u)), ~(~26279u)));
    return i32(-1i) * -max(-_wgslsmith_dot_vec3_i32(u_input.c, u_input.c), _wgslsmith_sub_i32(-1i, -3113i));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = !vec3<bool>(true, func_1(~select(global0.b.xz, u_input.a.yz, global4.x), true), global4.x);
    global1 = select(!global4.x, global4.x, global4.x);
    var var_0 = ~vec4<u32>(global0.b.x, global0.b.x, 59443u, 0u);
    var var_1 = -func_2();
    let var_2 = vec2<i32>(countOneBits(_wgslsmith_clamp_i32(min(_wgslsmith_clamp_i32(-2147483647i, 0i, u_input.b), abs(u_input.c.x)), 0i, -2147483647i)), u_input.c.x >> (u_input.a.x % 32u));
    global0 = global2[_wgslsmith_index_u32(4294967295u, 5u)];
    global4 = vec3<bool>(!global4.x, !func_1(min(reverseBits(vec2<u32>(u_input.a.x, global0.b.x)), _wgslsmith_mod_vec2_u32(u_input.a.zy, vec2<u32>(7507u, 28782u))), all(select(vec4<bool>(false, true, true, global4.x), vec4<bool>(global4.x, global0.a, global0.a, global0.a), global4.x))), select(~var_0.x != var_0.x, true, global0.a));
    var var_3 = ~(~var_0.x);
    global4 = vec3<bool>(false, all(select(select(!vec4<bool>(global4.x, global0.a, global4.x, true), vec4<bool>(global0.a, global4.x, global0.a, global4.x), vec4<bool>(false, global0.a, true, global0.a)), select(vec4<bool>(true, global4.x, global0.a, false), !vec4<bool>(global4.x, true, true, true), any(vec2<bool>(global4.x, global0.a))), global4.x)), false);
    let x = u_input.a;
    s_output = StorageBuffer(-147f, global3[_wgslsmith_index_u32(min(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1800u, global0.b.x, var_0.x) & u_input.a, ~vec3<u32>(4294967295u, var_0.x, 4294967295u)), global0.b), var_0.x), 2u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2307f, -450f)) - -189f), _wgslsmith_f_op_f32(-1f))));
}

