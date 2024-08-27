struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11>;

var<private> global1: array<f32, 32>;

var<private> global2: array<Struct_1, 26>;

var<private> global3: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(19930i, vec2<bool>(false, false)), Struct_1(-1i, vec2<bool>(false, false)), Struct_1(17905i, vec2<bool>(false, false)), Struct_1(i32(-2147483648), vec2<bool>(true, false)), Struct_1(1i, vec2<bool>(true, true)), Struct_1(1i, vec2<bool>(false, true)), Struct_1(-37130i, vec2<bool>(true, false)), Struct_1(5093i, vec2<bool>(false, true)), Struct_1(-15513i, vec2<bool>(false, true)), Struct_1(-1i, vec2<bool>(true, false)), Struct_1(-37051i, vec2<bool>(false, true)), Struct_1(-32131i, vec2<bool>(true, true)), Struct_1(1i, vec2<bool>(true, false)), Struct_1(0i, vec2<bool>(false, true)), Struct_1(2147483647i, vec2<bool>(false, false)), Struct_1(-31022i, vec2<bool>(false, false)), Struct_1(2147483647i, vec2<bool>(true, true)), Struct_1(i32(-2147483648), vec2<bool>(false, false)), Struct_1(-1i, vec2<bool>(false, true)), Struct_1(-1i, vec2<bool>(false, true)), Struct_1(-1i, vec2<bool>(false, false)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: f32, arg_3: vec2<bool>) -> u32 {
    global1 = array<f32, 32>();
    var var_0 = vec2<i32>(~(~1i), -21157i);
    global1 = array<f32, 32>();
    global0 = array<i32, 11>();
    var var_1 = vec2<u32>(~(~4294967295u), abs(1u));
    return u_input.a;
}

fn func_1(arg_0: bool, arg_1: vec4<bool>) -> i32 {
    let var_0 = vec4<u32>(~(~129070u), _wgslsmith_div_u32(~(~24143u), _wgslsmith_mod_u32(0u, u_input.a)), u_input.a, 0u);
    return global0[_wgslsmith_index_u32(func_2(-2147483647i, Struct_1(global0[_wgslsmith_index_u32(~(~(u_input.a >> (12616u % 32u))), 11u)], select(select(!arg_1.ww, vec2<bool>(false, arg_0), arg_1.zy), select(arg_1.wz, !vec2<bool>(arg_1.x, true), arg_1.xz), true)), _wgslsmith_div_f32(322f, global1[_wgslsmith_index_u32(abs(var_0.x), 32u)]), vec2<bool>(all(!select(arg_1, vec4<bool>(true, false, true, false), arg_1)), true)), 11u)];
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> vec4<u32> {
    let var_0 = global1[_wgslsmith_index_u32(u_input.a, 32u)];
    global3 = array<Struct_1, 21>();
    global2 = array<Struct_1, 26>();
    global3 = array<Struct_1, 21>();
    let var_1 = select(select(arg_0, !arg_0, vec3<bool>(false, ~4294967295u > _wgslsmith_clamp_u32(u_input.a, 34482u, u_input.a), !(u_input.a < u_input.a))), select(vec3<bool>(!arg_1.b.x, arg_0.x, _wgslsmith_div_i32(arg_1.a, 1i) <= ~(-8288i)), !vec3<bool>(arg_2.b.x, 715f < global1[_wgslsmith_index_u32(u_input.a, 32u)], true), all(vec2<bool>(true, false))), vec3<bool>(!all(!vec4<bool>(arg_2.b.x, false, true, false)), false, global1[_wgslsmith_index_u32(~u_input.a, 32u)] == global1[_wgslsmith_index_u32(~abs(u_input.a), 32u)]));
    return vec4<u32>(_wgslsmith_mult_u32(firstTrailingBit(4294967295u) >> (u_input.a % 32u), u_input.a), reverseBits(u_input.a), 0u >> (_wgslsmith_sub_u32((3328u & u_input.a) >> (select(0u, u_input.a, arg_2.b.x) % 32u), (u_input.a >> (u_input.a % 32u)) << (~50157u % 32u)) % 32u), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 32>();
    var var_0 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i | global0[_wgslsmith_index_u32(41757u, 11u)], -3768i, -2147483647i), _wgslsmith_add_vec3_i32(vec3<i32>(20598i, 13847i, 25884i), vec3<i32>(-21016i, global0[_wgslsmith_index_u32(u_input.a, 11u)], 1i)) & ~vec3<i32>(28761i, global0[_wgslsmith_index_u32(1726u, 11u)], global0[_wgslsmith_index_u32(u_input.a, 11u)])), (func_1(false, vec4<bool>(false, true, false, false)) ^ 0i) | -6511i), select(vec2<bool>(any(vec3<bool>(false, false, false)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(13671u, u_input.a), 11u)] <= ~global0[_wgslsmith_index_u32(4294967295u, 11u)]), vec2<bool>(!any(vec2<bool>(false, false)), all(vec3<bool>(false, false, false))), vec2<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), (u_input.a <= 0u) || false)));
    global2 = array<Struct_1, 26>();
    global1 = array<f32, 32>();
    global2 = array<Struct_1, 26>();
    global0 = array<i32, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, ~((abs(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 11u)], var_0.a, var_0.a, global0[_wgslsmith_index_u32(u_input.a, 11u)])) ^ vec4<i32>(var_0.a, 60111i, -1i, global0[_wgslsmith_index_u32(u_input.a, 11u)])) >> (func_3(select(vec3<bool>(false, var_0.b.x, true), vec3<bool>(true, true, true), vec3<bool>(true, false, var_0.b.x)), Struct_1(global0[_wgslsmith_index_u32(u_input.a, 11u)], var_0.b), global2[_wgslsmith_index_u32(select(4294967295u, 92382u, false), 26u)], var_0.b.x) % vec4<u32>(32u))), (~(~vec4<u32>(u_input.a, 0u, u_input.a, u_input.a)) ^ ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), vec4<u32>(5472u, u_input.a, u_input.a, 1u))) >> ((func_3(select(vec3<bool>(false, var_0.b.x, true), vec3<bool>(var_0.b.x, var_0.b.x, false), vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x)), Struct_1(2147483647i, vec2<bool>(var_0.b.x, false)), Struct_1(var_0.a, var_0.b), false) & ~max(vec4<u32>(u_input.a, u_input.a, 0u, 36885u), vec4<u32>(u_input.a, 0u, u_input.a, 18418u))) % vec4<u32>(32u)), ~0u, vec4<u32>(u_input.a, 1u, u_input.a, ~71246u));
}

