struct Struct_1 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_1 = Struct_1(2147483647i, true);

var<private> global2: vec4<f32>;

var<private> global3: array<vec4<i32>, 29>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<i32> {
    global1 = arg_1;
    let var_0 = Struct_1(~(~(-1i)), false);
    global1 = Struct_1(~abs(reverseBits(54130i)), any(!select(vec2<bool>(arg_2.b, arg_1.b), vec2<bool>(true, true), arg_1.b)));
    let var_1 = ~reverseBits(~firstLeadingBit(vec4<u32>(arg_0.x, 0u, u_input.c.x, global0.x)));
    var var_2 = reverseBits(~vec2<u32>(~(u_input.d ^ arg_0.x), ~(~12937u)));
    return vec4<i32>(-359i, arg_2.a, ~global1.a, abs(1i));
}

fn func_2(arg_0: vec2<bool>) -> u32 {
    let var_0 = _wgslsmith_dot_vec4_i32(-func_3(~u_input.c, Struct_1(global1.a >> (global0.x % 32u), !global1.b), Struct_1(1i, true)), select(vec4<i32>(1i, ~(~global1.a), min(global1.a, _wgslsmith_div_i32(u_input.a, global1.a)), 1i), ~(global3[_wgslsmith_index_u32(1u, 29u)] << (firstTrailingBit(vec4<u32>(4294967295u, 4294967295u, 89225u, 17678u)) % vec4<u32>(32u))), vec4<bool>(arg_0.x, 85632u < (51148u >> (u_input.d % 32u)), select(true, u_input.d < 4294967295u, all(vec4<bool>(global1.b, true, false, true))), arg_0.x)));
    let var_1 = 41625u;
    var var_2 = ~global0.x;
    var var_3 = ~abs(u_input.a);
    var var_4 = Struct_1(firstLeadingBit(-1i), (select(true, u_input.d <= var_1, global1.b) || any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, arg_0.x, false, true), vec4<bool>(global1.b, true, arg_0.x, true)))) && !arg_0.x);
    return u_input.d;
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = ~vec2<i32>(-16676i, _wgslsmith_mod_i32(arg_0.a, _wgslsmith_div_i32(global1.a, 40813i))) << ((vec2<u32>(u_input.c.x, 4294967295u) << (vec2<u32>(92096u, min(~27946u, 1u)) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_1 = vec4<u32>(41079u, ~_wgslsmith_dot_vec2_u32(firstLeadingBit(select(global0.zz, vec2<u32>(40589u, 61514u), vec2<bool>(arg_0.b, arg_0.b))), global0.xx), _wgslsmith_div_u32(1u, firstLeadingBit(0u >> (u_input.d % 32u))) | firstLeadingBit(func_2(vec2<bool>(false, arg_0.b))), min(select(59170u, ~(global0.x | 1u), any(!vec4<bool>(global1.b, false, arg_0.b, arg_0.b))), (1u | ~global0.x) >> (22878u % 32u)));
    return min(firstLeadingBit(abs(var_1.x) | ~5620u), 1u) << (global0.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<i32>, 29>();
    global0 = vec3<u32>(4294967295u, func_1(Struct_1(global1.a, !all(vec4<bool>(global1.b, global1.b, true, global1.b)))), u_input.d);
    global0 = max(u_input.c, countOneBits(u_input.c));
    global0 = vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(0u, global0.x) ^ 1u, u_input.c.x), ~global0.x, abs(u_input.d)) & ~_wgslsmith_div_vec3_u32(u_input.c, u_input.c << ((vec3<u32>(global0.x, u_input.c.x, 23393u) << (vec3<u32>(0u, 1u, 4035u) % vec3<u32>(32u))) % vec3<u32>(32u)));
    global1 = Struct_1(countOneBits(62324i), u_input.d >= global0.x);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -835f));
    global2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + 504f)) - global2.x), global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, 1f))), _wgslsmith_f_op_f32(trunc(-521f)));
    let var_1 = !(!select(!vec4<bool>(true, global1.b, false, false), vec4<bool>(global1.b, 57142u == global0.x, global1.b, true), !(!vec4<bool>(global1.b, global1.b, false, global1.b))));
    let x = u_input.a;
    s_output = StorageBuffer(global2.zz, ~global1.a, global2.yxx, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, -819f, global2.x) * vec4<f32>(521f, global2.x, global2.x, -1267f)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -210f, 1000f, 104f) - vec4<f32>(271f, 266f, global2.x, 975f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, 833f, 873f) - vec4<f32>(global2.x, -162f, 1766f, global2.x))))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(step(-1000f, -512f)), _wgslsmith_f_op_f32(step(-966f, -1307f)), global2.x)))));
}

