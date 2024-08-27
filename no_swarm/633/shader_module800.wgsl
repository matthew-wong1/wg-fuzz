struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<u32>, 16>;

var<private> global2: array<i32, 13>;

var<private> global3: u32;

var<private> global4: u32 = 0u;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(global0.a, -278f, false)), _wgslsmith_div_f32(-914f, global0.a)))))));
    return Struct_1(_wgslsmith_f_op_f32(-global0.a));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = arg_2;
    global1 = array<vec2<u32>, 16>();
    let var_1 = _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.a, _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(264u, 16u)], vec2<u32>(arg_3.x, arg_3.x))) >> (abs(arg_1.wwz) % vec3<u32>(32u)), arg_1.ywz);
    global0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + arg_2.a), _wgslsmith_f_op_f32(max(var_0.a, arg_2.a)))));
    global0 = func_2(_wgslsmith_add_i32(29567i, ~(-(0i ^ global2[_wgslsmith_index_u32(u_input.b, 13u)]))), countOneBits(global2[_wgslsmith_index_u32(4294967295u, 13u)]));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.a))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(global0.a, arg_0.a)), arg_0.a)))) * global0.a));
}

fn func_1() -> Struct_1 {
    let var_0 = -vec4<i32>(0i, _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(~0u, 13u)], select(global2[_wgslsmith_index_u32(4294967295u << (0u % 32u), 13u)], global2[_wgslsmith_index_u32(u_input.a, 13u)], false)), -66335i, 0i);
    var var_1 = -2147483647i;
    return func_3(func_2(i32(-1i) * -3874i, -1i), vec4<u32>(u_input.a, 0u, ~u_input.a, u_input.a), Struct_1(-2034f), vec2<u32>(_wgslsmith_mult_u32(~u_input.b << (73102u % 32u), 6529u), _wgslsmith_mult_u32(46640u, _wgslsmith_mod_u32(0u, 15135u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = array<vec2<u32>, 16>();
    let var_1 = firstTrailingBit(vec4<i32>(_wgslsmith_div_i32(firstTrailingBit(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, u_input.a), 13u)]), _wgslsmith_dot_vec2_i32(vec2<i32>(53100i, global2[_wgslsmith_index_u32(u_input.b, 13u)]), vec2<i32>(2147483647i, global2[_wgslsmith_index_u32(u_input.b, 13u)])) & ~global2[_wgslsmith_index_u32(41856u, 13u)]), -firstLeadingBit(global2[_wgslsmith_index_u32(4294967295u, 13u)] >> (u_input.b % 32u)), global2[_wgslsmith_index_u32(u_input.b, 13u)], 2147483647i));
    var var_2 = true;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(round(-127f)));
    global3 = max(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(select(4294967295u, 61492u, true) >> ((u_input.a & 1u) % 32u), _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.b, 0u, 0u, 48314u), vec4<u32>(19395u, 4539u, u_input.b, u_input.a), vec4<bool>(false, true, false, true)), ~vec4<u32>(u_input.b, 5915u, 60839u, u_input.a))), global1[_wgslsmith_index_u32(countOneBits(u_input.b), 16u)]));
    let var_4 = abs(~reverseBits(global1[_wgslsmith_index_u32(u_input.a, 16u)]));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-692f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, var_0.a) * var_0.a)), firstTrailingBit(~u_input.b) << (5728u % 32u), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 1u), 13u)]);
}

