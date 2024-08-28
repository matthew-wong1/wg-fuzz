struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<vec3<bool>, 3>;

var<private> global2: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(-1i, false, 4294967295u), Struct_1(1i, true, 68383u), Struct_1(20892i, true, 45231u), Struct_1(2147483647i, true, 0u), Struct_1(1i, true, 7171u), Struct_1(35224i, true, 4294967295u), Struct_1(17684i, true, 17609u), Struct_1(1i, false, 4294967295u));

var<private> global3: f32;

var<private> global4: vec3<u32> = vec3<u32>(0u, 0u, 14234u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> bool {
    let var_0 = vec3<i32>(_wgslsmith_div_i32(u_input.a.x | arg_1.a, u_input.a.x >> (~arg_0 % 32u)), _wgslsmith_add_i32(firstTrailingBit(u_input.a.x & 0i), 1i) & abs(i32(-1i) * -u_input.b.x), arg_1.a);
    global2 = array<Struct_1, 8>();
    var var_1 = arg_0;
    let var_2 = arg_1;
    var var_3 = vec3<bool>(false, arg_1.b, true);
    return true;
}

fn func_3(arg_0: vec2<bool>, arg_1: u32, arg_2: bool) -> f32 {
    global2 = array<Struct_1, 8>();
    let var_0 = ~max(~vec4<u32>(global4.x, 48113u, 11292u, 21939u), min(vec4<u32>(arg_1, global4.x, 4294967295u, 21902u), vec4<u32>(global4.x, arg_1, 828u, arg_1)) ^ vec4<u32>(1u, arg_1, 76720u, arg_1)) >> (vec4<u32>(~(_wgslsmith_dot_vec2_u32(vec2<u32>(global4.x, arg_1), global4.yx) >> ((global4.x ^ 1u) % 32u)), ~(_wgslsmith_mod_u32(2088u, arg_1) & arg_1), firstTrailingBit(~(~arg_1)), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1, arg_1, 1u, arg_1), vec4<u32>(1u, ~1748u, 35226u, arg_1))) % vec4<u32>(32u));
    global2 = array<Struct_1, 8>();
    let var_1 = global2[_wgslsmith_index_u32(~4294967295u, 8u)];
    let var_2 = u_input.b;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1805f)) - _wgslsmith_f_op_f32(509f * _wgslsmith_f_op_f32(1000f - -1479f))), -736f)) + 713f);
}

fn func_1(arg_0: Struct_1) -> vec4<u32> {
    global2 = array<Struct_1, 8>();
    var var_0 = Struct_1(u_input.a.x, all(select(vec3<bool>(true, true, true), select(!global1[_wgslsmith_index_u32(global4.x, 3u)], !global1[_wgslsmith_index_u32(arg_0.c, 3u)], false), arg_0.b)), ~(~arg_0.c));
    var var_1 = Struct_1(_wgslsmith_mult_i32(u_input.b.x, _wgslsmith_div_i32(-(~17116i), u_input.a.x)), true, abs(71477u));
    var_0 = Struct_1(1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(!vec2<bool>(false, var_1.b), 1u, func_2(13691u, arg_0)))) >= -772f, countOneBits(global4.x));
    let var_2 = arg_0;
    return firstTrailingBit((~(~vec4<u32>(var_1.c, 0u, global4.x, 33871u)) & _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global4.x, 1u, 0u, var_2.c), vec4<u32>(var_1.c, var_0.c, 87215u, var_0.c)), ~vec4<u32>(48729u, arg_0.c, var_0.c, var_2.c))) & firstLeadingBit(reverseBits(vec4<u32>(7312u, 1u, var_2.c, var_0.c))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = countOneBits(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global4.x, global4.x, global4.x, global4.x) << (vec4<u32>(3951u, global4.x, 4294967295u, global4.x) % vec4<u32>(32u)), func_1(Struct_1(1i, false, global4.x))), 0u, global4.x));
    global4 = ~vec3<u32>(9123u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(global4.yx), ~global4.xy), abs(_wgslsmith_sub_u32(global4.x, global4.x))), ~0u);
    global3 = _wgslsmith_f_op_f32(select(-2124f, _wgslsmith_f_op_f32(func_3(vec2<bool>(all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true))), true), global4.x, all(vec4<bool>(true, true, true, true)))), false));
    var var_0 = true;
    var_0 = true;
    var var_1 = global2[_wgslsmith_index_u32(4294967295u, 8u)];
    let var_2 = !(!(!select(!vec4<bool>(false, false, var_1.b, true), !vec4<bool>(true, true, var_1.b, true), select(vec4<bool>(false, var_1.b, var_1.b, false), vec4<bool>(false, true, var_1.b, false), false))));
    var_0 = (((_wgslsmith_sub_i32(u_input.a.x, u_input.a.x) | u_input.b.x) & u_input.b.x) << (~(~(~0u)) % 32u)) >= u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, func_1(Struct_1(var_1.a, var_1.b, 1u)).x, 17725u), select(~vec3<u32>(4294967295u, 1u, 14709u), ~firstLeadingBit(vec3<u32>(0u, global4.x, 33740u)), var_1.b)));
}

