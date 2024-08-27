struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec3<bool>,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<u32, 6>;

var<private> global2: array<Struct_2, 25>;

var<private> global3: vec4<u32> = vec4<u32>(1u, 1u, 1u, 109028u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> vec2<bool> {
    global2 = array<Struct_2, 25>();
    let var_0 = Struct_2(1000f);
    global2 = array<Struct_2, 25>();
    global2 = array<Struct_2, 25>();
    global0 = _wgslsmith_mod_u32(8633u, u_input.b.x);
    return vec2<bool>(!all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))) & true, false);
}

fn func_1(arg_0: f32, arg_1: f32) -> vec3<bool> {
    let var_0 = func_2();
    global2 = array<Struct_2, 25>();
    global2 = array<Struct_2, 25>();
    global3 = vec4<u32>(0u & _wgslsmith_dot_vec4_u32(vec4<u32>(0u, reverseBits(0u), abs(global1[_wgslsmith_index_u32(4294967295u, 6u)]), _wgslsmith_mod_u32(u_input.c.x, 1u)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global3.x, global3.x, 85660u), u_input.c), global3.x ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 6u)], 6u)], 6u)], global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, global1[_wgslsmith_index_u32(1u, 6u)]), 6u)], 68589u)), u_input.c.x | 4294967295u, min(4294967295u, u_input.c.x), ~select(1u, ~firstLeadingBit(0u), var_0.x));
    var var_1 = _wgslsmith_mult_u32(143841u, global3.x);
    return vec3<bool>(var_0.x, true, true);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: f32) -> vec4<u32> {
    global1 = array<u32, 6>();
    var var_0 = Struct_3(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(u_input.c.x, 1u)), u_input.c.xz) >> (abs(_wgslsmith_div_u32(~global3.x, u_input.a)) % 32u), 25u)], select(!(!(!vec4<bool>(true, arg_0.b.x, arg_0.c.x, true))), !vec4<bool>(-302f > arg_3, select(arg_0.b.x, true, false), !arg_1.b.x, arg_0.b.x), !((global1[_wgslsmith_index_u32(arg_0.e, 6u)] != global3.x) & true)), Struct_1(reverseBits(vec3<i32>(106492i, ~52746i, _wgslsmith_add_i32(arg_1.d.x, 8046i))), !arg_1.c.xy, !func_1(_wgslsmith_f_op_f32(max(arg_3, arg_3)), 294f), arg_0.a, 12222u));
    global1 = array<u32, 6>();
    return vec4<u32>(0u, arg_0.e, countOneBits(max(arg_0.e, ~_wgslsmith_mod_u32(arg_0.e, var_0.c.e))), abs(4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!func_1(620f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1031f * -1000f))), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(676f)), -832f))), 1000f), func_1(1039f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2011f), _wgslsmith_f_op_f32(-757f * 1000f), true)) * _wgslsmith_f_op_f32(trunc(-1044f)))));
    let var_1 = Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(min(~vec4<u32>(u_input.c.x, 46058u, 0u, 1u), ~vec4<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3841u, 6u)], 6u)], global1[_wgslsmith_index_u32(75601u, 6u)], 1u)), func_3(Struct_1(vec3<i32>(-29030i, -1i, -2147483647i), vec2<bool>(true, true), vec3<bool>(var_0.x, true, false), vec3<i32>(-64654i, -2147483647i, -1136i), u_input.a), Struct_1(vec3<i32>(14464i, 0i, -15037i), vec2<bool>(var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true), vec3<i32>(-18717i, -2147483647i, 0i), 0u), 0i, 667f)), max(~0u, 1u)), 25u)], vec4<bool>(var_0.x, all(func_2()), ~global1[_wgslsmith_index_u32(select(global1[_wgslsmith_index_u32(1u, 6u)], global3.x, var_0.x), 6u)] > 1u, all(vec3<bool>(!var_0.x, !var_0.x, true))), Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1273i, min(-40021i, 49122i)), ~firstLeadingBit(vec3<i32>(1i, 0i, -8058i))), vec2<bool>(var_0.x, true), !(!vec3<bool>(false, var_0.x, false)), vec3<i32>(-1i) * -vec3<i32>(-46218i, -15117i, 1i), global3.x));
    global2 = array<Struct_2, 25>();
    var_0 = vec3<bool>(true, var_1.a.a >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-899f, _wgslsmith_f_op_f32(f32(-1f) * -925f), func_1(var_1.a.a, var_1.a.a).x)))), var_1.c.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~1i, -((var_1.c.d.x | var_1.c.d.x) << (~1u % 32u))));
}

