struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(49103i), Struct_1(-1i));

var<private> global1: bool;

var<private> global2: array<f32, 6>;

var<private> global3: Struct_2;

var<private> global4: Struct_1;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_1(_wgslsmith_add_i32(~1i & global4.a, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(arg_0.a, 12515i), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, 1i), vec2<i32>(-2147483647i, global3.b.a), u_input.d.wz)), 2147483647i)));
    var var_1 = ~abs(global4.a);
    global0 = array<Struct_1, 2>();
    var var_2 = global2[_wgslsmith_index_u32(~countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(~74532u, ~64100u), vec2<u32>(1u, 1u))), 6u)];
    global4 = Struct_1(0i);
    return 1u;
}

fn func_2() -> u32 {
    global4 = global3.b;
    global0 = array<Struct_1, 2>();
    let var_0 = ~(~(~(4294967295u | func_3(global3.b))));
    return 1218u;
}

fn func_4(arg_0: u32) -> bool {
    let var_0 = reverseBits(~4989i) << (arg_0 % 32u);
    var var_1 = false;
    global4 = Struct_1(-2147483647i);
    let var_2 = true;
    global4 = Struct_1(2147483647i);
    return var_2;
}

fn func_1() -> vec3<i32> {
    let var_0 = any(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, true, true), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false))));
    let var_1 = vec2<bool>(!all(vec2<bool>(var_0, var_0)) != var_0, func_4(func_2()));
    var var_2 = _wgslsmith_sub_u32(54818u, _wgslsmith_div_u32(~(~func_2()), 1u));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-272f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 6u)]), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(8923u >> (1u % 32u), 6u)] + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 6u)] + global2[_wgslsmith_index_u32(32493u, 6u)]))))) + vec3<f32>(_wgslsmith_f_op_f32(439f - -265f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -363f)))), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(func_2(), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), countOneBits(vec2<u32>(4294967295u, 0u)))), 6u)]));
    let var_4 = Struct_2(Struct_1(abs(_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.b.x, -28993i), 1i))), global3.b);
    return u_input.b;
}

fn func_5(arg_0: i32, arg_1: vec3<i32>) -> u32 {
    global4 = global0[_wgslsmith_index_u32((1u & (0u ^ func_3(Struct_1(global3.b.a)))) >> (4294967295u % 32u), 2u)];
    let var_0 = _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(5413u, 6u)]));
    return _wgslsmith_div_u32(select(11528u, ~1u, true), 5483u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(~1u, 50496u, ~1u), vec3<u32>(1u, ~(~0u), 0u));
    global3 = Struct_2(global3.b, Struct_1(u_input.c.x));
    let var_1 = func_5(_wgslsmith_sub_i32(~(-2147483647i), global3.a.a), func_1());
    var var_2 = vec4<bool>(true, false | any(select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true))), 1u > var_0.x, true);
    global0 = array<Struct_1, 2>();
    var var_3 = _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(firstLeadingBit(~u_input.d), u_input.d), abs(vec4<i32>(31839i, ~global3.a.a << ((var_0.x << (0u % 32u)) % 32u), global3.b.a, -u_input.a | max(u_input.d.x, global4.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(10220u, 6u)], global2[_wgslsmith_index_u32(14363u, 6u)], -671f) * vec3<f32>(-1525f, -820f, global2[_wgslsmith_index_u32(var_1, 6u)]))))), _wgslsmith_f_op_f32(775f - global2[_wgslsmith_index_u32(max(~var_1, _wgslsmith_div_u32(var_0.x, 0u) ^ reverseBits(var_0.x)), 6u)]));
}

