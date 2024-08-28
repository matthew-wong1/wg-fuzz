struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28>;

var<private> global1: array<Struct_1, 4>;

var<private> global2: array<vec3<f32>, 22>;

var<private> global3: array<Struct_1, 20>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: u32) -> vec3<i32> {
    var var_0 = 1u;
    global1 = array<Struct_1, 4>();
    var var_1 = global3[_wgslsmith_index_u32(arg_0.b.x ^ _wgslsmith_mod_u32(arg_3, ~arg_0.b.x), 20u)];
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(2324f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, _wgslsmith_add_u32(arg_3, 4294967295u)), 28u)])) * _wgslsmith_f_op_f32(abs(1145f)));
    var_1 = arg_0;
    return u_input.b.wwz;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: f32) -> i32 {
    var var_0 = Struct_1(_wgslsmith_mod_vec2_i32(~arg_0.yx | arg_1.a, -vec2<i32>(_wgslsmith_add_i32(arg_0.x, arg_1.a.x), u_input.a)), arg_1.b);
    let var_1 = var_0.b.xzy;
    var var_2 = Struct_1((firstTrailingBit(max(vec2<i32>(u_input.b.x, u_input.a), var_0.a)) >> (var_1.zy % vec2<u32>(32u))) << (vec2<u32>(arg_1.b.x, max(~var_1.x, 0u)) % vec2<u32>(32u)), ~firstTrailingBit(~max(var_0.b, arg_1.b)));
    let var_3 = reverseBits(4294967295u);
    var var_4 = 1i;
    return ~firstTrailingBit(abs(~u_input.a) ^ (-2339i | ~u_input.b.x));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = select(31932i, abs(~arg_1.a.x), all(vec3<bool>(true, true, true)));
    global2 = array<vec3<f32>, 22>();
    var_0 = _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(func_2(Struct_1(u_input.b.xy, vec4<u32>(arg_1.b.x, arg_1.b.x, 3670u, 24809u)), Struct_1(vec2<i32>(arg_1.a.x, arg_0.a.x), vec4<u32>(24194u, 0u, 1u, 99622u)), ~arg_0.b.wyy, 1u), u_input.b.zyy), ~func_3(~vec4<i32>(u_input.b.x, u_input.a, -52659i, u_input.b.x), arg_0, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_1.b.x, 28u)]))) ^ u_input.b.x;
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(4294967295u, arg_0.b.x), _wgslsmith_div_u32(4294967295u, arg_1.b.x)), 28u)];
    var_1 = 703f;
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_i32(-_wgslsmith_add_i32(-abs(18329i), _wgslsmith_div_i32(max(-16754i, -77919i), u_input.b.x)), -u_input.b.x);
    global0 = array<f32, 28>();
    var var_1 = ~(~1u);
    global0 = array<f32, 28>();
    var var_2 = max(u_input.a, func_1(Struct_1(vec2<i32>(-2147483647i, 2147483647i), vec4<u32>(1u, 1u, 1u, 1u)), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~64275u, _wgslsmith_mod_u32(112237u, 92009u)), 20u)]) ^ ~(var_0 ^ var_0));
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(select(1u, 4294967295u, !any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)))), _wgslsmith_mod_u32(firstTrailingBit(1u), ~_wgslsmith_add_u32(5257u, 23155u)) >> (~_wgslsmith_div_u32(48413u, 1u) % 32u)), 4u)];
    global2 = array<vec3<f32>, 22>();
    let var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(reverseBits(select(reverseBits(var_3.b.x), _wgslsmith_dot_vec3_u32(var_3.b.zxw, vec3<u32>(10717u, 0u, var_3.b.x)), true)), 28u)])));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec2<u32>(~var_3.b.x, ~var_3.b.x)));
}

