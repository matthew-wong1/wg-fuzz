struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(0u), Struct_1(108511u), Struct_1(28445u), Struct_1(0u), Struct_1(11769u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(67662u), Struct_1(4294967295u), Struct_1(50660u), Struct_1(26091u), Struct_1(4294967295u), Struct_1(4294967295u));

var<private> global1: array<i32, 25>;

var<private> global2: vec2<i32> = vec2<i32>(2147483647i, 1100i);

var<private> global3: Struct_1;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec4<u32>) -> StorageBuffer {
    let var_0 = vec4<bool>(true, true, true, true);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1120f);
    var var_2 = -2147483647i;
    global0 = array<Struct_1, 13>();
    let var_3 = Struct_2(firstLeadingBit(select(~vec4<u32>(4294967295u, arg_0.x, 14350u, 0u), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(18320u, arg_0.x, 0u, 4294967295u), arg_0), ~vec4<u32>(66143u, 1u, arg_0.x, 22493u)), !vec4<bool>(false, var_0.x, var_0.x, var_0.x))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c, 2284u), 13u)], _wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(vec2<i32>(global2.x, global2.x), vec2<i32>(1i, 0i)), select(vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 25u)] ^ global2.x, -u_input.b), vec2<i32>(u_input.a, _wgslsmith_clamp_i32(u_input.a, 3601i, u_input.b)), var_0.x)));
    return StorageBuffer(1000f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 13>();
    global0 = array<Struct_1, 13>();
    let var_0 = vec4<bool>(false, -2147483647i <= _wgslsmith_mult_i32(~_wgslsmith_mult_i32(0i, 59390i), global2.x), any(vec2<bool>(!all(vec4<bool>(true, false, true, false)), all(vec2<bool>(true, true)))), true | all(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true))));
    global3 = Struct_1((_wgslsmith_mod_u32(u_input.c, 1u & global3.a) & _wgslsmith_mult_u32(max(u_input.c, global3.a), u_input.c)) | 93013u);
    var var_1 = _wgslsmith_clamp_vec3_u32(~(~(~(~vec3<u32>(0u, 0u, 19245u)))), ~select(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, u_input.c), vec3<u32>(global3.a, u_input.c, global3.a), vec3<u32>(global3.a, u_input.c, 68751u)) << (~vec3<u32>(1u, global3.a, global3.a) % vec3<u32>(32u)), vec3<u32>(~52838u, ~15760u, global3.a), vec3<bool>(false, true, true)), ~abs(~(~vec3<u32>(global3.a, global3.a, global3.a))));
    global1 = array<i32, 25>();
    global3 = global0[_wgslsmith_index_u32(1u, 13u)];
    let x = u_input.a;
    s_output = func_1((((vec4<u32>(3168u, 33463u, u_input.c, 9576u) >> (vec4<u32>(global3.a, u_input.c, var_1.x, global3.a) % vec4<u32>(32u))) ^ reverseBits(vec4<u32>(var_1.x, global3.a, 0u, var_1.x))) >> (abs(_wgslsmith_div_vec4_u32(vec4<u32>(10395u, global3.a, 4294967295u, 16640u), vec4<u32>(67170u, global3.a, var_1.x, 1u))) % vec4<u32>(32u))) & (~vec4<u32>(0u, global3.a, global3.a, u_input.c) & abs(~vec4<u32>(4294967295u, 1u, global3.a, 1u))));
}

