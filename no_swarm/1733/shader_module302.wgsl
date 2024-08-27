struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_2, 24>;

var<private> global2: bool = true;

var<private> global3: array<f32, 16> = array<f32, 16>(165f, 321f, 663f, -856f, -1000f, 484f, -394f, 1024f, -1000f, -237f, 660f, -739f, -708f, -878f, -360f, 404f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~(~(u_input.b >> (u_input.a.x % 32u))), _wgslsmith_mult_u32(1u, 4294967295u)), 24u)];
    let var_1 = true;
    global2 = !(~u_input.a.x > _wgslsmith_mult_u32(u_input.b, u_input.b));
    let var_2 = Struct_1(abs(vec3<u32>(u_input.b, ~1u, _wgslsmith_clamp_u32(1u, 127495u, 1u))), vec3<bool>(true, false, !all(select(vec4<bool>(var_1, true, false, var_1), vec4<bool>(false, var_1, var_1, true), false))), select(vec2<u32>(u_input.b, u_input.a.x), max(~(~u_input.a.xx), u_input.a.zz), all(vec3<bool>(true, true, true)) == (_wgslsmith_f_op_f32(exp2(var_0.a)) >= _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(u_input.a.x, 16u)])))));
    global3 = array<f32, 16>();
    return ~(~var_2.c.x);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = abs(select(~(~1u), func_3(), true));
    let var_1 = _wgslsmith_mod_vec2_u32(u_input.a.zz, u_input.a.xz);
    return Struct_1(u_input.a, vec3<bool>(true, true, true), u_input.a.xz);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2) -> vec3<bool> {
    var var_0 = func_2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(680f, global3[_wgslsmith_index_u32(49463u, 16u)]))), Struct_2(arg_1.a));
    let var_1 = select(_wgslsmith_add_vec4_u32(~vec4<u32>(var_0.a.x, min(var_0.a.x, u_input.b), ~95648u, ~0u), countOneBits(_wgslsmith_div_vec4_u32(max(vec4<u32>(4294967295u, 7168u, 4294967295u, 55286u), vec4<u32>(var_0.a.x, 21682u, 1u, var_0.c.x)), max(vec4<u32>(var_0.c.x, var_0.c.x, u_input.b, 4294967295u), vec4<u32>(var_0.a.x, 4294967295u, u_input.a.x, 25631u))))), ~_wgslsmith_clamp_vec4_u32(select(reverseBits(vec4<u32>(0u, var_0.c.x, u_input.b, 41154u)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 47277u), vec4<u32>(var_0.a.x, var_0.c.x, var_0.a.x, var_0.a.x)), true), vec4<u32>(4294967295u, ~1u, 4294967295u, 16686u), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.a.x, u_input.b, u_input.b), vec4<u32>(59764u, 0u, 89529u, 4294967295u), vec4<u32>(0u, u_input.a.x, u_input.b, 0u))), select(!(!(!vec4<bool>(false, false, var_0.b.x, false))), select(!select(vec4<bool>(var_0.b.x, var_0.b.x, true, var_0.b.x), vec4<bool>(false, false, true, var_0.b.x), var_0.b.x), select(select(vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x), vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, true), var_0.b.x), !vec4<bool>(true, var_0.b.x, var_0.b.x, var_0.b.x), vec4<bool>(var_0.b.x, var_0.b.x, true, true)), all(vec2<bool>(true, false))), all(vec2<bool>(var_0.b.x, false)) | false));
    var var_2 = global1[_wgslsmith_index_u32(~1u, 24u)];
    var var_3 = select(var_0.a, vec3<u32>(var_0.c.x, ~firstLeadingBit(var_1.x), _wgslsmith_div_u32(~var_1.x, ~11843u)), var_0.b);
    return vec3<bool>(arg_0.x != abs(-(arg_0.x | arg_0.x)), var_0.b.x, var_0.b.x);
}

fn func_4(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = abs(-(~max(-9449i, u_input.c)) & 2147483647i);
    global2 = all(vec3<bool>(arg_0.x, !arg_0.x, true)) || arg_0.x;
    var var_1 = global3[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1040f, 541f)), Struct_2(global3[_wgslsmith_index_u32(u_input.b, 16u)])).c.x, 1u), _wgslsmith_mult_u32(func_2(vec2<f32>(global3[_wgslsmith_index_u32(0u, 16u)], 353f), global1[_wgslsmith_index_u32(9481u, 24u)]).a.x >> (1u % 32u), ~(~u_input.a.x)), ~(u_input.a.x ^ u_input.a.x) >> (~54124u % 32u))), 16u)];
    let var_2 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(649f, _wgslsmith_f_op_f32(626f * 1013f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3[_wgslsmith_index_u32(2389u, 16u)], -939f), vec2<f32>(global3[_wgslsmith_index_u32(0u, 16u)], -718f), true)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1548f, global3[_wgslsmith_index_u32(u_input.a.x, 16u)]), vec2<f32>(551f, global3[_wgslsmith_index_u32(0u, 16u)]))))))), global1[_wgslsmith_index_u32(firstTrailingBit(1u), 24u)]);
    let var_3 = 1f;
    return Struct_1(var_2.a, func_1(vec4<i32>(-(1i ^ u_input.c), -42178i | u_input.c, firstLeadingBit(-54662i), min(42223i, var_0)), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3), 1f))), _wgslsmith_add_vec2_u32(func_2(vec2<f32>(-729f, -302f), Struct_2(-123f)).c, u_input.a.xy));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec3<f32>) -> StorageBuffer {
    global0 = arg_0.b.x;
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_0.c.x, 16u)]) - _wgslsmith_f_op_f32(arg_1 * 1370f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1)) - -397f)) + vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -211f) * -465f))), _wgslsmith_f_op_f32(-158f * _wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(arg_0.a.x, 16u)])))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(arg_1 - -607f)), _wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(arg_0.a.x, 16u)])), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(0u, 16u)], -147f), _wgslsmith_f_op_f32(var_0.x + 1281f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2 * vec3<f32>(589f, -1220f, var_0.x))), vec3<f32>(_wgslsmith_f_op_f32(-708f + var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -391f), var_0.x)))));
    let var_2 = _wgslsmith_f_op_f32(-730f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-284f, -1421f, true))))));
    let var_3 = var_2;
    return StorageBuffer(u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = true;
    let x = u_input.a;
    s_output = func_5(func_4(vec4<bool>(false, all(func_1(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), Struct_2(-378f))), true, true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 16u)]))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(u_input.b, 16u)]))))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b, 16u)]))), -407f, _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(countOneBits(~30029u), 16u)], global3[_wgslsmith_index_u32(u_input.a.x, 16u)]))));
}

