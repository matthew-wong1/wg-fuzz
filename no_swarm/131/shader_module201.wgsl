struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(i32(-2147483648), Struct_1(vec4<bool>(true, true, false, false))), Struct_2(1i, Struct_1(vec4<bool>(true, false, false, true))), Struct_2(-1i, Struct_1(vec4<bool>(false, false, true, false))), Struct_2(-5865i, Struct_1(vec4<bool>(false, false, true, false))), Struct_2(18741i, Struct_1(vec4<bool>(false, false, true, true))), Struct_2(1i, Struct_1(vec4<bool>(false, true, true, true))), Struct_2(-1i, Struct_1(vec4<bool>(true, true, false, true))), Struct_2(1i, Struct_1(vec4<bool>(false, false, true, false))), Struct_2(-3384i, Struct_1(vec4<bool>(false, true, false, false))), Struct_2(-1i, Struct_1(vec4<bool>(false, true, true, true))), Struct_2(-1i, Struct_1(vec4<bool>(false, true, false, true))), Struct_2(-54908i, Struct_1(vec4<bool>(true, true, true, false))), Struct_2(0i, Struct_1(vec4<bool>(true, true, false, true))), Struct_2(0i, Struct_1(vec4<bool>(false, true, true, true))), Struct_2(0i, Struct_1(vec4<bool>(true, false, false, false))), Struct_2(-4566i, Struct_1(vec4<bool>(false, true, true, true))), Struct_2(-29161i, Struct_1(vec4<bool>(false, true, true, true))), Struct_2(-1i, Struct_1(vec4<bool>(true, false, false, true))));

var<private> global1: vec4<i32>;

var<private> global2: Struct_2 = Struct_2(-1i, Struct_1(vec4<bool>(false, false, false, false)));

var<private> global3: array<bool, 3>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_3 {
    global0 = array<Struct_2, 18>();
    let var_0 = -1i;
    global1 = arg_3;
    return arg_1;
}

fn func_3(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: f32, arg_3: vec2<bool>) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(8979u, 18u)];
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.a.x | reverseBits(arg_0.a.x << (arg_0.a.x % 32u)), ~(~(45807u >> (abs(arg_0.a.x) % 32u)))), 18u)];
    var var_2 = !var_0.b.a.x;
    var_2 = global3[_wgslsmith_index_u32(abs(arg_0.a.x), 3u)];
    var var_3 = ~min(min(_wgslsmith_clamp_u32(26850u, 18344u, 1u), arg_0.a.x), 4294967295u) & arg_0.a.x;
    return ~_wgslsmith_dot_vec4_u32(~arg_0.a, firstLeadingBit(arg_0.a));
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(select(_wgslsmith_mult_u32(85722u, func_3(func_2(4294967295u, Struct_3(vec4<u32>(0u, 4294967295u, 69373u, 4294967295u), global3[_wgslsmith_index_u32(40594u, 3u)]), global2.b, vec4<i32>(-46625i, u_input.a, 0i, 2147483647i)), !vec4<bool>(global2.b.a.x, global2.b.a.x, global2.b.a.x, false), arg_0, !vec2<bool>(global2.b.a.x, global3[_wgslsmith_index_u32(4294967295u, 3u)])) ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(63903u, 12304u, 1u, 50359u), vec4<u32>(1u, 4294967295u, 37333u, 4294967295u))), _wgslsmith_sub_u32(~0u, 61062u), ~global2.a < abs((global1.x << (57887u % 32u)) ^ abs(-17152i))), 18u)];
    var var_1 = -vec4<i32>(u_input.a, ~min(_wgslsmith_mult_i32(var_0.a, -2147483647i), 1i), var_0.a & -2409i, 2147483647i);
    let var_2 = 67894i;
    global2 = global0[_wgslsmith_index_u32(4294967295u, 18u)];
    var var_3 = vec4<bool>(global3[_wgslsmith_index_u32((select(~27554u, _wgslsmith_mod_u32(27960u, 4294967295u), global1.x > -7293i) << (0u % 32u)) ^ 0u, 3u)], global2.b.a.x || var_0.b.a.x, all(!vec3<bool>(global3[_wgslsmith_index_u32(1u, 3u)] != false, false, all(var_0.b.a.yz))), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 1u, 4294967295u), 3u)]);
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(global1.x, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(111f)), -275f)))));
    global2 = global0[_wgslsmith_index_u32(1u, 18u)];
    global3 = array<bool, 3>();
    let var_0 = global0[_wgslsmith_index_u32(1u, 18u)];
    var var_1 = Struct_2(min(0i, i32(-1i) * -51219i), func_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-262f - -723f)))));
    var var_2 = var_0.b;
    var var_3 = !all(vec2<bool>(var_1.b.a.x, true));
    let var_4 = func_1(853f).a.zw;
    var_2 = global2.b;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec2<u32>(_wgslsmith_div_u32(func_2(0u, Struct_3(vec4<u32>(1929u, 1u, 4294967295u, 1u), true), Struct_1(var_2.a), vec4<i32>(global2.a, global1.x, global2.a, 2147483647i)).a.x, 0u), ~min(4294967295u, 1u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1052f * _wgslsmith_f_op_f32(f32(-1f) * -146f)), -118f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -886f)))), 1u, ~(select(-vec4<i32>(0i, -14439i, 2147483647i, var_1.a), vec4<i32>(0i, 2147483647i, var_0.a, u_input.a), var_1.b.a) << (~vec4<u32>(4294967295u, 1u, 4294967295u, 0u) % vec4<u32>(32u))));
}

