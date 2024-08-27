struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1>;

var<private> global1: u32 = 107957u;

var<private> global2: vec3<i32> = vec3<i32>(-28362i, -20836i, 2147483647i);

var<private> global3: f32;

var<private> global4: array<vec4<bool>, 20>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(~(-u_input.c.x), _wgslsmith_mult_i32(arg_0, u_input.d), -_wgslsmith_mod_i32(-49661i, 52641i)), (reverseBits(vec3<i32>(28026i, u_input.c.x, global2.x)) ^ -vec3<i32>(arg_0, 62057i, arg_0)) & abs(vec3<i32>(-1i, -11931i, arg_0))) ^ vec3<i32>(_wgslsmith_add_i32(firstTrailingBit(1i), ~0i << ((u_input.b << (14179u % 32u)) % 32u)), -1i, ~global0[_wgslsmith_index_u32(17907u, 1u)]);
    global0 = array<i32, 1>();
    let var_1 = firstLeadingBit(12385i) << (~_wgslsmith_div_u32(select(~u_input.a, u_input.e.x, any(global4[_wgslsmith_index_u32(u_input.a, 20u)])), 58104u) % 32u);
    global2 = vec3<i32>(var_0.x, u_input.c.x, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_add_u32(u_input.e.x, u_input.e.x), _wgslsmith_dot_vec3_u32(vec3<u32>(84570u, u_input.e.x, u_input.b), vec3<u32>(u_input.a, u_input.e.x, u_input.a)), _wgslsmith_sub_u32(u_input.e.x, 4294967295u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.e.x, u_input.a, 99442u), vec3<u32>(u_input.a, u_input.a, 4294967295u))), _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(u_input.b, 4079u, 4294967295u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 35238u, 37453u), vec3<u32>(2102u, u_input.e.x, 1u)) & ~vec3<u32>(43420u, u_input.b, u_input.a))), 1u)]);
    let var_2 = ~u_input.e << (~u_input.e % vec2<u32>(32u));
    return false;
}

fn func_2() -> Struct_2 {
    global3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-669f - 313f) + 652f), -2805f));
    let var_0 = Struct_1(min(u_input.d, _wgslsmith_add_i32(global2.x, global2.x & 1i) & (global2.x ^ abs(u_input.d))), func_3(0i));
    global1 = ~(~(~u_input.b));
    global4 = array<vec4<bool>, 20>();
    var var_1 = -((-countOneBits(vec3<i32>(-6297i, 35192i, var_0.a)) << (countOneBits(vec3<u32>(u_input.a, 7080u, 0u)) % vec3<u32>(32u))) ^ countOneBits(vec3<i32>(23425i, global0[_wgslsmith_index_u32(firstTrailingBit(u_input.e.x), 1u)], 1i)));
    return Struct_2(var_0, var_0, _wgslsmith_mult_i32(var_0.a, 1i), ~(~vec4<i32>(-5748i, 1i, 63626i, ~(-1i))));
}

fn func_1(arg_0: i32) -> u32 {
    var var_0 = func_2();
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-340f, 924f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1149f))))))));
    var var_2 = -global0[_wgslsmith_index_u32(~select(_wgslsmith_mod_u32(u_input.a, u_input.b), _wgslsmith_mult_u32(1u, u_input.e.x), var_0.a.b && var_0.b.b) >> (0u % 32u), 1u)];
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1));
    global4 = array<vec4<bool>, 20>();
    return ~firstLeadingBit(_wgslsmith_add_u32(4294967295u, abs(_wgslsmith_div_u32(29618u, 54549u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 1>();
    var var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(func_1(-1i), _wgslsmith_mod_u32(~u_input.a, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.e.x, u_input.b), vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.a)), countOneBits(vec4<u32>(u_input.a, 0u, u_input.a, 0u)))), 25429u, ~(~(~6763u))), max(max(~vec4<u32>(1u, 40549u, u_input.e.x, u_input.e.x), min(vec4<u32>(1113u, u_input.e.x, u_input.e.x, 0u), vec4<u32>(u_input.a, u_input.b, u_input.e.x, 32178u))), ~select(vec4<u32>(7629u, u_input.e.x, 80714u, u_input.b), vec4<u32>(74245u, u_input.b, u_input.a, u_input.b), false)) << ((vec4<u32>(u_input.b, ~u_input.e.x, 34258u, u_input.e.x) >> (vec4<u32>(47856u, _wgslsmith_clamp_u32(4294967295u, u_input.b, 1u), abs(0u), ~38102u) % vec4<u32>(32u))) % vec4<u32>(32u)));
    global1 = _wgslsmith_mod_u32(abs(u_input.a), 0u);
    let var_1 = func_3(_wgslsmith_clamp_i32(42190i, global0[_wgslsmith_index_u32(u_input.a, 1u)], max(_wgslsmith_sub_i32(select(-23871i, u_input.c.x, true), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, 63781i, -1i), vec4<i32>(22013i, 22846i, 0i, 25147i))), global2.x)));
    let var_2 = func_2().b;
    let var_3 = var_0.xy;
    var var_4 = ~max(u_input.d, -countOneBits(-1009i)) >> (var_0.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2107f, 1284f, 936f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(704f, 673f, -667f))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1202f, 598f, 850f)))))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2385f * -655f)), _wgslsmith_f_op_f32(f32(-1f) * -302f), 1765f)), ~(~reverseBits(vec4<u32>(var_0.x, 30979u, 4294967295u, 4294967295u))));
}

