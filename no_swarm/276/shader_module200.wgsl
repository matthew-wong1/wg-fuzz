struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec3<u32>,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<bool>, 30> = array<vec4<bool>, 30>(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true));

var<private> global2: Struct_2 = Struct_2(vec4<i32>(-8963i, 1i, -74066i, 1i));

var<private> global3: vec2<bool> = vec2<bool>(false, false);

var<private> global4: array<Struct_2, 12>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_1(arg_0: vec2<bool>, arg_1: u32) -> u32 {
    let var_0 = -28198i;
    var var_1 = abs(abs(vec3<u32>(select(countOneBits(27855u), 1u, false), 0u, 1u)));
    global0 = u_input.b.x;
    global4 = array<Struct_2, 12>();
    global0 = ~(~22261u) | ~arg_1;
    return var_1.x;
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: i32) -> vec2<bool> {
    var var_0 = -abs(abs(~_wgslsmith_mod_vec2_i32(u_input.c, u_input.c)));
    let var_1 = Struct_1(arg_1.x, vec2<bool>(_wgslsmith_f_op_f32(1371f + _wgslsmith_f_op_f32(594f - 948f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-193f, -738f, true)) - 441f), global3.x), ~_wgslsmith_mod_vec3_u32(~max(vec3<u32>(arg_1.x, 13380u, 0u), arg_1.xxx), arg_1.zyy >> ((vec3<u32>(13804u, 5926u, 80562u) | vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u))), _wgslsmith_mult_i32(global2.a.x, reverseBits(countOneBits(-61270i) & var_0.x)), select(!select(select(vec2<bool>(false, global3.x), vec2<bool>(global3.x, false), vec2<bool>(global3.x, false)), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(global3.x, true), vec2<bool>(true, true))), vec2<bool>(global3.x, global3.x), true));
    global3 = vec2<bool>(!all(!(!vec3<bool>(false, var_1.e.x, global3.x))), !var_1.e.x);
    let var_2 = global2.a;
    let var_3 = 2046f;
    return var_1.b;
}

fn func_2() -> StorageBuffer {
    var var_0 = Struct_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, _wgslsmith_mod_u32(u_input.a, 10073u), u_input.a | 1u), ~vec3<u32>(u_input.a, 0u, firstLeadingBit(70234u))), select(!select(vec2<bool>(false, global3.x), func_3(vec3<i32>(u_input.c.x, -2803i, u_input.c.x), vec4<u32>(u_input.b.x, 1u, u_input.a, 17091u), 0i), global3.x), vec2<bool>(global3.x, select(all(vec3<bool>(global3.x, global3.x, true)), global3.x, false)), false), ~(~(~vec3<u32>(4294967295u, 45189u, 1u) & ~vec3<u32>(u_input.a, u_input.b.x, 36005u))), ~1i, select(select(func_3(firstTrailingBit(vec3<i32>(-2147483647i, u_input.c.x, global2.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 48085u, u_input.a, u_input.b.x), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), u_input.c.x >> (u_input.a % 32u)), select(func_3(vec3<i32>(-19495i, 1i, global2.a.x), vec4<u32>(45575u, 0u, u_input.b.x, 28300u), 1i), vec2<bool>(global3.x, global3.x), !vec2<bool>(global3.x, global3.x)), 1i <= global2.a.x), select(select(select(vec2<bool>(global3.x, global3.x), vec2<bool>(global3.x, false), vec2<bool>(true, global3.x)), func_3(vec3<i32>(42727i, 2147483647i, global2.a.x), vec4<u32>(1u, 4294967295u, u_input.b.x, u_input.a), -2147483647i), vec2<bool>(true, false)), vec2<bool>(any(vec3<bool>(global3.x, true, global3.x)), all(global1[_wgslsmith_index_u32(1u, 30u)])), !func_3(vec3<i32>(u_input.c.x, -2147483647i, -1i), vec4<u32>(u_input.b.x, 13916u, u_input.b.x, 11341u), u_input.c.x)), true));
    let var_1 = vec3<i32>(_wgslsmith_mult_i32(global2.a.x, -61705i) >> (var_0.c.x % 32u), 1i, 1i);
    global0 = _wgslsmith_mod_u32(~(~4294967295u), ~(~var_0.c.x));
    let var_2 = Struct_2(-firstLeadingBit(firstTrailingBit(global2.a << (vec4<u32>(var_0.a, var_0.a, u_input.a, 28293u) % vec4<u32>(32u)))));
    global0 = 4294967295u;
    return StorageBuffer(firstTrailingBit(~global2.a.x), 886f, global2.a.x, var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_mult_u32(firstLeadingBit(abs(0u)), abs(u_input.a)), ~(~_wgslsmith_mod_u32(u_input.a, u_input.a))));
    global1 = array<vec4<bool>, 30>();
    global1 = array<vec4<bool>, 30>();
    var var_0 = Struct_1(~u_input.a, vec2<bool>(false, u_input.c.x < -1i), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, countOneBits(u_input.b.x), _wgslsmith_sub_u32(58729u, u_input.a)), ~(~vec3<u32>(11890u, 0u, 91012u))), ~global2.a.x, vec2<bool>(true, global3.x));
    let var_1 = ~func_1(!(!var_0.b), 0u);
    let var_2 = Struct_2(vec4<i32>(abs(-(2147483647i << (var_1 % 32u))), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(u_input.c.x, u_input.c.x, var_0.d, -3842i)), vec4<i32>(-2147483647i, u_input.c.x, global2.a.x, u_input.c.x), ~vec4<i32>(-30432i, var_0.d, -2147483647i, -2147483647i)), ~_wgslsmith_mod_vec4_i32(global2.a, global2.a)), u_input.c.x, u_input.c.x | 3005i));
    global2 = Struct_2(-(~var_2.a));
    let var_3 = Struct_1(~u_input.a, var_0.b, vec3<u32>(0u, _wgslsmith_dot_vec3_u32(~(~var_0.c), ~(~var_0.c)), 1u), 9469i, select(var_0.b, !vec2<bool>(all(global1[_wgslsmith_index_u32(var_1, 30u)]), any(vec2<bool>(true, true))), all(!vec3<bool>(true, global3.x, true))));
    let x = u_input.a;
    s_output = func_2();
}

