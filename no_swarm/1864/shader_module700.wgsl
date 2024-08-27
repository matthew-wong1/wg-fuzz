struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1) -> vec3<bool> {
    return !(!vec3<bool>(any(vec3<bool>(true, true, false)), false, select(true, false, true) & true));
}

fn func_3() -> bool {
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    let var_0 = (countOneBits(abs(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))) | firstTrailingBit(~vec3<i32>(1i, u_input.a.x, u_input.a.x))) & countOneBits(select(select(vec3<i32>(u_input.a.x, u_input.a.x, 11758i), vec3<i32>(0i, u_input.a.x, u_input.a.x) & vec3<i32>(-2147483647i, u_input.d, u_input.a.x), true), select(-vec3<i32>(11486i, -10826i, u_input.d), ~vec3<i32>(u_input.a.x, u_input.d, 1i), false), all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)))));
    global0 = array<Struct_1, 17>();
    return (u_input.b.x >= _wgslsmith_mult_u32(abs(u_input.c), 36252u)) | func_2(Struct_1(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(u_input.b.zz, vec2<u32>(4294967295u, u_input.c)), u_input.b.zz >> (vec2<u32>(u_input.b.x, u_input.c) % vec2<u32>(32u)))), vec2<u32>(u_input.c, 19250u), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(firstLeadingBit(u_input.b.x), ~reverseBits(4294967295u)), 17u)]).x;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: f32, arg_3: i32) -> u32 {
    let var_0 = u_input.d;
    global0 = array<Struct_1, 17>();
    let var_1 = Struct_1(arg_0.xx | (_wgslsmith_div_vec2_u32(arg_0.xy, abs(u_input.b.zy)) >> (u_input.b.xy % vec2<u32>(32u))));
    let var_2 = arg_2;
    let var_3 = select(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), func_2(global0[_wgslsmith_index_u32(var_1.a.x, 17u)], vec2<u32>(arg_0.x, arg_0.x), global0[_wgslsmith_index_u32(36244u, 17u)]))), !(!(!func_2(Struct_1(vec2<u32>(15951u, 1u)), u_input.b.zy, global0[_wgslsmith_index_u32(93208u, 17u)]))), vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) + _wgslsmith_f_op_f32(-var_2)) <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2 + var_2))), false, func_3()));
    return 33347u & ~_wgslsmith_clamp_u32(~(~1u), 17489u, u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (vec4<u32>(u_input.b.x, 4294967295u, u_input.c, abs(func_1(vec4<u32>(u_input.c, 0u, u_input.c, 4294967295u), vec4<i32>(-17102i, -19189i, u_input.d, -2147483647i), 260f, u_input.a.x))) & reverseBits(~reverseBits(vec4<u32>(21937u, 0u, 4294967295u, u_input.b.x)))) ^ countOneBits(~firstTrailingBit(~vec4<u32>(u_input.b.x, 0u, u_input.c, u_input.c)));
    let var_1 = max(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, _wgslsmith_div_i32(u_input.a.x ^ -45413i, u_input.d), countOneBits(u_input.d), -(~2147483647i)), _wgslsmith_mod_vec4_i32(~reverseBits(vec4<i32>(0i, u_input.d, u_input.d, u_input.d)), countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, 26444i, -32099i, 1i), vec4<i32>(u_input.d, u_input.a.x, 30800i, 2147483647i))))), countOneBits(-(vec4<i32>(u_input.d, 1i, -1i, -2147483647i) >> (~vec4<u32>(u_input.b.x, var_0.x, var_0.x, var_0.x) % vec4<u32>(32u)))));
    var var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(1f, -1565f)), var_0.zxy, ~vec3<i32>(-_wgslsmith_clamp_i32(var_1.x, u_input.a.x, var_1.x), ~u_input.a.x, ~max(-1i, 28767i)), vec4<i32>(-1i, var_1.x, _wgslsmith_add_i32(u_input.d, 2147483647i), 2147483647i), u_input.d);
}

