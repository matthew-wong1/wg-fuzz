struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> vec3<u32> {
    let var_0 = vec3<u32>(30660u, 1u, 4294967295u);
    global0 = array<Struct_2, 13>();
    let var_1 = Struct_1(~(~vec3<i32>(10205i, 1i, u_input.a.x)));
    let var_2 = global0[_wgslsmith_index_u32(~var_0.x, 13u)];
    let var_3 = 59319i;
    return vec3<u32>(~39725u << (~(var_2.a.x | abs(var_0.x)) % 32u), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 42244u, 1u), select(var_2.a.zwz, vec3<u32>(64421u, var_2.a.x, var_0.x), var_2.d))), ~_wgslsmith_mult_u32(firstLeadingBit(var_2.a.x), ~1u) ^ 52151u);
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(min(-2273f, _wgslsmith_f_op_f32(210f + -155f)));
    let var_1 = vec3<i32>(u_input.a.x, countOneBits(_wgslsmith_clamp_i32(i32(-1i) * -u_input.a.x, (-11531i ^ u_input.a.x) & 1i, u_input.a.x)), -24043i);
    global0 = array<Struct_2, 13>();
    var var_2 = countOneBits(min(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(49792u, 19360u, 66215u), select(vec3<u32>(50030u, 96793u, 55874u), vec3<u32>(1u, 49140u, 4294967295u), true), vec3<u32>(1u, 1u, 1u)), countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 32958u, 1u), vec3<u32>(136785u, 1u, 4294967295u)))), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(3535u, 73194u, 4294967295u), vec3<u32>(38328u, 4294967295u, 21802u))));
    var_2 = vec3<u32>(0u, _wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(27250u, 1u, 1u), vec3<u32>(12915u, var_2.x, 4294967295u)) >> (firstLeadingBit(~vec3<u32>(4294967295u, 4294967295u, var_2.x)) % vec3<u32>(32u)), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_0)))), func_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1051f - var_0)))).x);
    return var_2.x;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1059f))))) + _wgslsmith_f_op_f32(-210f + _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(333f)))))));
    global0 = array<Struct_2, 13>();
    global0 = array<Struct_2, 13>();
    var var_1 = firstLeadingBit(arg_0.a.x);
    var var_2 = arg_1;
    return _wgslsmith_sub_u32(1u, func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ((abs(func_1(Struct_1(vec3<i32>(4698i, u_input.a.x, u_input.a.x)), true, 0u)) ^ ~51204u) ^ ~firstTrailingBit(1u)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(func_2(), func_1(Struct_1(vec3<i32>(u_input.a.x, 2147483647i, 24648i)), any(vec3<bool>(true, true, true)), min(6351u, 49428u)), _wgslsmith_clamp_u32(~40483u, 1u, ~4294967295u), ~_wgslsmith_mult_u32(1u, 1960u)), vec4<u32>(~(~9622u), _wgslsmith_dot_vec2_u32(vec2<u32>(7913u, 0u), ~vec2<u32>(0u, 14736u)), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 1u)), firstTrailingBit(23575u >> (1u % 32u)))) % 32u);
    let var_1 = !vec3<bool>(any(vec3<bool>(true, true, true)), true, true);
    let var_2 = Struct_1(min(abs(vec3<i32>(0i, u_input.a.x, -2909i)), select(abs(vec3<i32>(0i, u_input.a.x, 7020i)) ^ ~vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), _wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.a.x, -17838i, 17315i), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, 10373i, -4889i), vec3<i32>(56329i, u_input.a.x, 21831i))), select(vec3<bool>(false, var_1.x, true), select(var_1, var_1, vec3<bool>(true, var_1.x, false)), true))));
    global0 = array<Struct_2, 13>();
    let var_3 = firstLeadingBit(vec4<u32>(18085u, ~(~42214u), _wgslsmith_dot_vec3_u32(firstLeadingBit(~vec3<u32>(12222u, 1u, 27732u)), max(~vec3<u32>(0u, 59464u, 4188u), vec3<u32>(0u, 1u, 1u))), max(~1u, 0u << (~4294967295u % 32u))));
    var_0 = 14198u;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(var_3.wzw & var_3.wzz) ^ select(var_3.yyx, var_3.zzx, !vec3<bool>(var_1.x, var_1.x, var_1.x))), 101372u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-698f, _wgslsmith_f_op_f32(f32(-1f) * -1814f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2118f - -336f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, -1291f)))), var_2.a.xz & select(firstTrailingBit(-vec2<i32>(0i, var_2.a.x)), var_2.a.yx & u_input.a, var_1.x), var_3.x);
}

