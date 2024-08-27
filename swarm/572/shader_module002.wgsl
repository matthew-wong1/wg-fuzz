struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: bool,
    d: bool,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 23>;

var<private> global1: array<Struct_1, 18>;

var<private> global2: u32 = 12862u;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_1(arg_0: vec4<bool>, arg_1: i32) -> u32 {
    let var_0 = Struct_1(!(!(!arg_0.zww)), 43371i, any(arg_0), any(vec3<bool>(!arg_0.x, true, true)), _wgslsmith_clamp_vec2_u32(reverseBits(~(~vec2<u32>(21346u, u_input.a))), firstLeadingBit(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(44411u, 36885u), vec2<u32>(1u, 0u)), vec2<u32>(u_input.a, 73181u) & vec2<u32>(83125u, 4289u))), vec2<u32>(u_input.a, 38248u)));
    global1 = array<Struct_1, 18>();
    var var_1 = var_0;
    global1 = array<Struct_1, 18>();
    global2 = firstLeadingBit(~(~var_1.e.x));
    return 0u;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = any(vec2<bool>(false, !arg_3.c));
    global1 = array<Struct_1, 18>();
    return select(-firstLeadingBit(arg_0.b), -62549i, false);
}

fn func_2(arg_0: bool) -> vec4<u32> {
    var var_0 = Struct_1(vec3<bool>(arg_0, any(!select(vec4<bool>(arg_0, arg_0, false, true), vec4<bool>(false, arg_0, true, arg_0), true)), ~(~48848u) <= func_1(!vec4<bool>(false, arg_0, true, false), -2147483647i)), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(u_input.b, 2147483647i | u_input.b, u_input.b)), vec3<i32>(1i, min(max(u_input.c, u_input.c), u_input.b >> (0u % 32u)), _wgslsmith_div_i32(func_3(global1[_wgslsmith_index_u32(u_input.a, 18u)], Struct_1(vec3<bool>(true, true, arg_0), u_input.c, true, arg_0, vec2<u32>(44477u, 4294967295u)), Struct_1(vec3<bool>(true, false, true), -1i, false, arg_0, vec2<u32>(47903u, u_input.a)), global1[_wgslsmith_index_u32(0u, 18u)]), 15765i))), arg_0, arg_0, ~(~vec2<u32>(24540u, u_input.a)));
    var_0 = global1[_wgslsmith_index_u32(~4294967295u, 18u)];
    let var_1 = _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.e.x, 61661u, u_input.a), vec3<u32>(0u, 44132u, var_0.e.x)) >> (vec3<u32>(var_0.e.x, 1u, 4294967295u) % vec3<u32>(32u)), vec3<u32>(u_input.a, 31100u, u_input.a)) << (_wgslsmith_sub_vec3_u32(vec3<u32>(~26085u, _wgslsmith_mult_u32(52234u, 41540u), 4294967295u), countOneBits(~vec3<u32>(20659u, u_input.a, var_0.e.x))) % vec3<u32>(32u)), firstTrailingBit(~_wgslsmith_sub_vec3_u32(abs(vec3<u32>(1u, 24642u, 45554u)), vec3<u32>(var_0.e.x, u_input.a, 0u))));
    var_0 = global1[_wgslsmith_index_u32(3213u, 18u)];
    var var_2 = _wgslsmith_f_op_f32(min(489f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -817f))))))));
    return _wgslsmith_clamp_vec4_u32(~vec4<u32>(~0u, countOneBits(var_0.e.x), 41177u, _wgslsmith_sub_u32(var_1.x, 17222u)), _wgslsmith_mult_vec4_u32(vec4<u32>(reverseBits(reverseBits(var_0.e.x)), 1u, max(~var_1.x, ~5976u), u_input.a), firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, var_0.e.x, var_1.x, 40420u), reverseBits(vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.a))))), vec4<u32>(firstTrailingBit(15376u), var_1.x, 63725u, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~func_1(vec4<bool>(true, true, true, true), _wgslsmith_mod_i32(u_input.b, u_input.c)) | u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~(~18873u >> (countOneBits(u_input.a) % 32u)), 1u), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~func_2(true), ~firstTrailingBit(vec4<u32>(u_input.a, 16991u, 55543u, u_input.a)) | (_wgslsmith_mult_vec4_u32(vec4<u32>(55455u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 54736u, u_input.a, 24483u)) | vec4<u32>(u_input.a, u_input.a, 21683u, u_input.a))), 23u)]);
}

