struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec3<u32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 11>;

var<private> global1: Struct_1 = Struct_1(vec3<i32>(1i, 573i, -1401i), -558f, vec3<u32>(39512u, 0u, 1u), false, 18821u);

var<private> global2: Struct_2 = Struct_2(20904i, vec3<bool>(false, false, true));

var<private> global3: i32 = 8032i;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool) -> vec2<bool> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.b)) + _wgslsmith_f_op_f32(floor(global1.b)))))), global1.b);
    return global2.b.zz;
}

fn func_3() -> bool {
    let var_0 = global1.a;
    let var_1 = countOneBits(abs(vec3<u32>(countOneBits(_wgslsmith_div_u32(36114u, 3957u)), _wgslsmith_mod_u32(global1.c.x, u_input.d.x) >> (_wgslsmith_sub_u32(4294967295u, 1u) % 32u), _wgslsmith_dot_vec2_u32(firstLeadingBit(global1.c.zx), firstTrailingBit(vec2<u32>(global1.c.x, 1u))))));
    return global2.b.x;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<i32>) -> bool {
    var var_0 = ~vec3<u32>(arg_0.x, 4294967295u >> (~_wgslsmith_sub_u32(u_input.e, u_input.e) % 32u), ~4294967295u);
    global3 = abs(11739i);
    let var_1 = select(func_2(all(vec2<bool>(true, global2.b.x == true))), vec2<bool>(true, false), func_3());
    global0 = array<vec4<u32>, 11>();
    var var_2 = Struct_1(~abs(~_wgslsmith_div_vec3_i32(u_input.a.zwx, vec3<i32>(33978i, global1.a.x, 11615i))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global1.b, _wgslsmith_f_op_f32(-813f - global1.b))), _wgslsmith_div_f32(-600f, 1000f)), -794f), ~vec3<u32>(_wgslsmith_mod_u32(arg_0.x, ~var_0.x), arg_0.x, var_0.x), var_1.x, 0u);
    return _wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, global1.e, 4294967295u, 4294967295u), global0[_wgslsmith_index_u32(global1.c.x, 11u)]), var_2.c.x), select(~var_2.c, vec3<u32>(53454u, _wgslsmith_div_u32(u_input.e, 66841u), abs(arg_0.x)), vec3<bool>(global1.d, true, var_1.x | var_2.d))) != _wgslsmith_div_u32(~4294967295u, firstTrailingBit(0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global1.a, global1.b, global1.c, func_1(global1.c.yx ^ ~countOneBits(vec2<u32>(24837u, 20753u)), ~(~(u_input.a.zz | vec2<i32>(2147483647i, 2147483647i)))), 67683u);
    let var_1 = ~reverseBits(~global0[_wgslsmith_index_u32(u_input.e ^ var_0.c.x, 11u)] >> (max(~vec4<u32>(1u, 4294967295u, 4294967295u, 1u), vec4<u32>(global1.e, 1u, u_input.c, 1u)) % vec4<u32>(32u)));
    let var_2 = ~min(var_1.x, ~(~(~var_1.x)));
    let var_3 = Struct_2(global1.a.x, vec3<bool>(true, all(vec3<bool>(var_0.c.x > 4897u, func_2(var_0.d).x, false)), all(!select(vec4<bool>(true, global1.d, false, true), vec4<bool>(false, true, global2.b.x, var_0.d), false))));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b))) - 288f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(744f, _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_mult_i32(0i, 0i) == _wgslsmith_clamp_i32(-2147483647i, u_input.a.x, u_input.a.x))));
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(min(var_0.b, global1.b))), var_0.b)), 754f));
    global3 = var_3.a;
    global2 = var_3;
    var_0 = Struct_1(u_input.a.xwy, var_0.b, countOneBits(vec3<u32>(1u, _wgslsmith_add_u32(_wgslsmith_mod_u32(var_0.c.x, var_1.x), 4419u), 1u)), max(global2.a << (abs(var_0.e) % 32u), 0i) < abs(var_3.a), ~35721u);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.xz, _wgslsmith_add_vec4_u32(global0[_wgslsmith_index_u32(73679u, 11u)], vec4<u32>(~var_1.x ^ ~global1.c.x, 4294967295u, var_0.c.x, select(reverseBits(global1.c.x), select(4294967295u, 0u, global1.d), true))));
}

