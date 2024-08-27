struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec4<bool>,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26>;

var<private> global1: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(vec4<bool>(true, true, false, false)), Struct_3(vec4<bool>(true, true, false, true)), Struct_3(vec4<bool>(true, false, true, false)), Struct_3(vec4<bool>(false, true, false, true)), Struct_3(vec4<bool>(false, true, false, false)), Struct_3(vec4<bool>(false, true, true, false)), Struct_3(vec4<bool>(true, true, false, false)), Struct_3(vec4<bool>(true, false, false, true)));

var<private> global2: vec3<u32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: vec4<f32>) -> u32 {
    var var_0 = arg_0.ww;
    let var_1 = global0[_wgslsmith_index_u32(~4294967295u, 26u)];
    let var_2 = _wgslsmith_f_op_vec3_f32(arg_0.yxy - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.yzz * _wgslsmith_f_op_vec3_f32(-arg_0.xxx))));
    let var_3 = select(~abs(vec2<u32>(_wgslsmith_mult_u32(1u, 1u), 4294967295u)), ~u_input.a.xz, !(!all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)))));
    global2 = _wgslsmith_sub_vec3_u32(reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(~var_3.x, _wgslsmith_add_u32(1u, 0u), ~var_3.x), ~(~u_input.a))), u_input.a);
    return max(var_3.x, ~(~(~(~34269u))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4) -> i32 {
    var var_0 = !(!any(arg_0.a.wxx));
    var var_1 = arg_0.a.x;
    var var_2 = arg_1;
    return _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b, reverseBits(-40972i)), -vec3<i32>(10743i, -7066i, 33051i) & min(vec3<i32>(global0[_wgslsmith_index_u32(var_2.a, 26u)], global0[_wgslsmith_index_u32(0u, 26u)], u_input.b), countOneBits(vec3<i32>(u_input.b, u_input.b, -2147483647i)) >> (~vec3<u32>(global2.x, var_2.a, 14153u) % vec3<u32>(32u))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4) -> Struct_2 {
    var var_0 = min(~abs(u_input.a), vec3<u32>(0u, 67369u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a, 13524u, 1u, global2.x), vec4<u32>(0u, arg_1.a, 1u, global2.x)) ^ abs(func_2(vec4<f32>(-411f, -2604f, arg_0.b.x, arg_0.b.x)))));
    var var_1 = vec4<f32>(-1434f, -1000f, 824f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1000f, arg_0.b.x)), arg_0.b.x)));
    var var_2 = vec4<i32>(-10200i, u_input.b, ~(~func_3(Struct_3(arg_0.c), arg_1)), -13107i) ^ countOneBits(~vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(~34580u, 26u)], global0[_wgslsmith_index_u32(u_input.a.x, 26u)], u_input.b ^ global0[_wgslsmith_index_u32(14098u, 26u)]));
    let var_3 = ~vec4<u32>(countOneBits(1u), _wgslsmith_clamp_u32(var_0.x, ~29701u, arg_1.a), 21303u, var_0.x);
    var var_4 = arg_0.d.xx;
    return Struct_2(vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(min(var_1.x, 771f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-arg_0.b.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + -930f)), arg_0.b.x), max(reverseBits(vec3<u32>(_wgslsmith_clamp_u32(4294967295u, 1u, arg_0.a.x), global2.x ^ var_0.x, arg_1.a)), vec3<u32>(24752u, ~(7967u ^ var_3.x), 75050u)), _wgslsmith_div_vec3_i32(-var_2.wyy | vec3<i32>(1i, _wgslsmith_clamp_i32(var_2.x, 11722i, global0[_wgslsmith_index_u32(4294967295u, 26u)]), 0i), vec3<i32>(-1i) * -vec3<i32>(-2147483647i, var_2.x, -7502i)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: f32) -> StorageBuffer {
    var var_0 = arg_0;
    var var_1 = min(~func_2(_wgslsmith_f_op_vec4_f32(-arg_0.a)) ^ ~(_wgslsmith_add_u32(var_0.b.x, global2.x) << (arg_0.b.x % 32u)), min(4294967295u, 1u));
    global1 = array<Struct_3, 8>();
    var var_2 = _wgslsmith_f_op_f32(trunc(1000f));
    var var_3 = arg_0.c.x != global0[_wgslsmith_index_u32(~1u, 26u)];
    return StorageBuffer(select(~arg_1.wxx, _wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.a.x, 19421u), arg_1.yyy), vec3<bool>(true, true, var_0.a.x == 483f)) >> (vec3<u32>(arg_0.b.x ^ _wgslsmith_sub_u32(arg_1.x, var_0.b.x), ~(arg_1.x >> (44624u % 32u)), _wgslsmith_dot_vec4_u32(~arg_1, _wgslsmith_div_vec4_u32(vec4<u32>(12387u, arg_0.b.x, arg_0.b.x, arg_0.b.x), vec4<u32>(u_input.a.x, arg_1.x, var_0.b.x, 8172u)))) % vec3<u32>(32u)), vec2<u32>(abs(var_0.b.x), ~global2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(global2.x, u_input.a.x), vec2<u32>(global2.x, 22077u) ^ u_input.a.zy), vec3<f32>(1f, _wgslsmith_f_op_f32(1615f + -221f), -737f), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), false), vec4<bool>(true, false, true, false), true), vec3<bool>(all(vec2<bool>(true, false)), true, true), u_input.a.x), Struct_4(global2.x)), ~(countOneBits(select(vec4<u32>(4294967295u, u_input.a.x, global2.x, global2.x), vec4<u32>(4372u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(true, false, true, true))) >> ((vec4<u32>(4294967295u, 105792u, 41089u, 48596u) ^ ~vec4<u32>(27875u, global2.x, global2.x, global2.x)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -761f) + _wgslsmith_f_op_f32(round(-102f)))))));
}

