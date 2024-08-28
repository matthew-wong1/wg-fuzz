struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec3<i32>(1i, 2147483647i, 11379i));

var<private> global2: array<vec3<i32>, 30>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec3<bool>, arg_3: Struct_1) -> u32 {
    let var_0 = arg_3;
    global2 = array<vec3<i32>, 30>();
    var var_1 = -429f;
    global1 = var_0;
    let var_2 = global0.a.yz;
    return 1u;
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> i32 {
    global1 = Struct_1(global2[_wgslsmith_index_u32((u_input.a.x | func_2(1u, 4294967295u, vec3<bool>(true, false, false), arg_0)) ^ u_input.a.x, 30u)]);
    global0 = Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(49447u, u_input.a.x, 6405u), 30u)]);
    let var_0 = Struct_1(vec3<i32>(abs(1i), 33511i, countOneBits(_wgslsmith_mod_i32(arg_0.a.x, arg_0.a.x))) << (vec3<u32>(1u << (1u % 32u), 1u, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x) & _wgslsmith_mod_u32(u_input.a.x, 85152u)) % vec3<u32>(32u)));
    global1 = Struct_1(vec3<i32>(global0.a.x, global1.a.x, _wgslsmith_mod_i32(arg_0.a.x, select(global0.a.x, global0.a.x, true)) ^ global1.a.x));
    let var_1 = ~(~global1.a.x);
    return 12566i;
}

fn func_1(arg_0: f32, arg_1: bool) -> bool {
    var var_0 = _wgslsmith_div_u32(u_input.a.x, ~abs(~32583u ^ firstTrailingBit(u_input.a.x)));
    let var_1 = vec2<u32>(~func_2(~(~0u), u_input.a.x, vec3<bool>(arg_1, arg_1 & arg_1, arg_1), Struct_1(select(global2[_wgslsmith_index_u32(u_input.a.x, 30u)], global0.a, true))), u_input.a.x);
    let var_2 = reverseBits(var_1.x);
    let var_3 = u_input.a;
    var var_4 = _wgslsmith_f_op_f32(-arg_0);
    return any(select(vec3<bool>(arg_1, arg_1, true), vec3<bool>(!(arg_1 & true), func_3(Struct_1(vec3<i32>(0i, -7849i, 9785i)), arg_0) <= -6128i, any(!vec2<bool>(arg_1, arg_1))), arg_1 && arg_1));
}

fn func_4(arg_0: bool) -> Struct_1 {
    var var_0 = 43521u;
    global1 = Struct_1(global1.a);
    let var_1 = global0.a.x;
    let var_2 = !vec2<bool>(select(!(!arg_0), arg_0, !(!arg_0)), arg_0);
    let var_3 = Struct_1(global0.a | vec3<i32>(-26803i >> (1u % 32u), global0.a.x & global1.a.x, 1i));
    return Struct_1(vec3<i32>(-global1.a.x, 0i, abs(_wgslsmith_add_i32(global1.a.x, 2147483647i) ^ -16532i)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<i32>, 30>();
    global2 = array<vec3<i32>, 30>();
    global1 = func_4(select(true, any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true)) && true, func_1(_wgslsmith_f_op_f32(f32(-1f) * -1860f), true)));
    global0 = Struct_1(firstLeadingBit(-reverseBits(vec3<i32>(-2147483647i, global1.a.x, 56875i))));
    var var_0 = select(vec3<bool>(true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true)), !all(vec2<bool>(false, true))), vec3<bool>(true, false, true), vec3<bool>(!(~u_input.a.x >= _wgslsmith_mult_u32(1u, 1u)), func_1(2744f, false), false));
    global0 = func_4(false);
    let var_1 = func_4(any(!(!select(vec3<bool>(var_0.x, false, true), vec3<bool>(var_0.x, true, var_0.x), var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(4294967295u, 5702u))) ^ u_input.a, ~64620i, firstTrailingBit(u_input.a.x << ((u_input.a.x | 1u) % 32u)));
}

