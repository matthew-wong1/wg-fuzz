struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 30>;

var<private> global2: array<u32, 2> = array<u32, 2>(21326u, 1u);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> bool {
    global2 = array<u32, 2>();
    global2 = array<u32, 2>();
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(abs(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 1u), u_input.b.xw)), max(~(u_input.b.xy | vec2<u32>(2470u, 0u)), ~vec2<u32>(global2[_wgslsmith_index_u32(1u, 2u)], u_input.b.x))), u_input.b.wx), 2u)];
    var var_1 = u_input.a;
    global1 = array<Struct_1, 30>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -329f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -326f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-647f, -1000f, false)) - -1328f))) <= -1000f;
}

fn func_2(arg_0: i32, arg_1: Struct_3) -> i32 {
    var var_0 = _wgslsmith_dot_vec3_i32((select(vec3<i32>(0i, arg_0, arg_0) | vec3<i32>(u_input.c, u_input.c, 2147483647i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, arg_0, 56745i), vec3<i32>(1i, -1i, arg_0)), arg_1.a.a) | ((vec3<i32>(arg_0, u_input.c, 9797i) >> (u_input.b.zzy % vec3<u32>(32u))) << (vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 2u)], 0u, 1u) % vec3<u32>(32u)))) | _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0, u_input.c, -2147483647i) << (max(u_input.b.yxz, u_input.b.zwx) % vec3<u32>(32u)), reverseBits(vec3<i32>(1i, u_input.c, arg_0)) << (firstLeadingBit(vec3<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 2u)], global2[_wgslsmith_index_u32(u_input.b.x, 2u)], 48705u)) % vec3<u32>(32u))), _wgslsmith_add_vec3_i32(vec3<i32>(arg_0, reverseBits(u_input.c), 15219i), ~(vec3<i32>(u_input.c, -6000i, arg_0) << (u_input.b.wyw % vec3<u32>(32u))) | vec3<i32>(2147483647i >> (u_input.a % 32u), i32(-1i) * -48623i, u_input.c)));
    let var_1 = Struct_3(arg_1.a);
    let var_2 = var_1;
    var var_3 = Struct_1(vec2<bool>(func_3(), _wgslsmith_sub_i32(u_input.c, firstTrailingBit(-1i)) <= -_wgslsmith_div_i32(arg_0, u_input.c)), !select(vec2<bool>(true, true), select(!vec2<bool>(true, var_2.a.a), select(vec2<bool>(false, arg_1.a.a), vec2<bool>(var_2.a.a, false), vec2<bool>(var_1.a.a, false)), vec2<bool>(true, true)), all(vec3<bool>(true, true, true))), 1000f);
    var var_4 = var_2;
    return -select(-_wgslsmith_clamp_i32(_wgslsmith_mod_i32(-65816i, u_input.c), ~u_input.c, 2147483647i), _wgslsmith_mod_i32(u_input.c, 15669i), true);
}

fn func_1() -> i32 {
    global1 = array<Struct_1, 30>();
    var var_0 = false;
    var var_1 = -_wgslsmith_mod_vec4_i32(vec4<i32>(-_wgslsmith_sub_i32(1i, u_input.c), ~(~u_input.c), -func_2(49071i, Struct_3(Struct_2(false))), u_input.c), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.c, -62276i, u_input.c) & vec4<i32>(-19807i, -1i, u_input.c, -1i), abs(vec4<i32>(u_input.c, u_input.c, -2147483647i, u_input.c))) >> (vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(36498u, 2u)], 2u)], 2u)], u_input.a, global2[_wgslsmith_index_u32(15996u, 2u)])), 4294967295u, _wgslsmith_dot_vec3_u32(u_input.b.yyx, vec3<u32>(5566u, u_input.a, 59213u)), _wgslsmith_dot_vec2_u32(u_input.b.xy, vec2<u32>(11376u, 4294967295u))) % vec4<u32>(32u)));
    let var_2 = vec2<bool>(false, any(select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, false), false), select(vec2<bool>(true, false), vec2<bool>(true, false), true), select(false, any(vec4<bool>(true, true, true, false)), true))));
    let var_3 = -2582i;
    return reverseBits(abs(-(25384i << (u_input.b.x % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mod_u32(102715u, 1u);
    var var_1 = 4294967295u >> ((_wgslsmith_div_u32(0u | _wgslsmith_div_u32(14548u, global2[_wgslsmith_index_u32(72091u, 2u)]), 0u) << (global2[_wgslsmith_index_u32(19915u, 2u)] % 32u)) % 32u);
    let var_2 = Struct_3(Struct_2(!(true || any(vec2<bool>(false, true)))));
    var var_3 = global2[_wgslsmith_index_u32((~countOneBits(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(u_input.b.x, 2u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(43373u, 2u)], 2u)])) & ~min(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(43789u, 2u)], 2u)] << (u_input.b.x % 32u), u_input.b.x)) << (global2[_wgslsmith_index_u32(u_input.b.x, 2u)] % 32u), 2u)];
    var_3 = global2[_wgslsmith_index_u32(abs(min(~1u, 16390u)), 2u)];
    let x = u_input.a;
    s_output = StorageBuffer(func_1());
}

