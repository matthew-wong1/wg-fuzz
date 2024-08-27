struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
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

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(-11505i, vec4<u32>(0u, 53761u, 0u, 4294967295u)), Struct_1(-5749i, vec4<u32>(0u, 0u, 81085u, 1u)), Struct_1(0i, vec4<u32>(55769u, 52626u, 23194u, 0u)), Struct_1(-2383i, vec4<u32>(0u, 36726u, 14016u, 32478u)), Struct_1(2147483647i, vec4<u32>(1u, 4294967295u, 24383u, 36060u)), Struct_1(0i, vec4<u32>(1u, 4294967295u, 11455u, 8197u)), Struct_1(-1i, vec4<u32>(1u, 21547u, 4294967295u, 46001u)), Struct_1(-26422i, vec4<u32>(4294967295u, 78700u, 4294967295u, 1868u)), Struct_1(0i, vec4<u32>(14289u, 1u, 4294967295u, 13880u)), Struct_1(34827i, vec4<u32>(8546u, 1u, 20050u, 1u)));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = vec3<u32>(firstLeadingBit(_wgslsmith_mod_u32(~u_input.c.x & abs(u_input.c.x), _wgslsmith_div_u32(u_input.c.x, u_input.c.x) >> (u_input.c.x % 32u))), u_input.c.x, firstLeadingBit(4294967295u & ~(~u_input.c.x)));
    global0 = array<Struct_1, 10>();
    let var_1 = Struct_1(u_input.a, firstTrailingBit(vec4<u32>(u_input.c.x, _wgslsmith_mult_u32(var_0.x, 1u), 2621u, u_input.c.x)));
    global0 = array<Struct_1, 10>();
    let var_2 = _wgslsmith_clamp_u32(u_input.c.x, ~(_wgslsmith_mult_u32(u_input.c.x, 0u) ^ reverseBits(1u)) << (~(~firstLeadingBit(1u)) % 32u), _wgslsmith_clamp_u32(~(35532u & _wgslsmith_clamp_u32(u_input.c.x, 4294967295u, 0u)), max(var_1.b.x, ~37179u), ~(u_input.c.x ^ var_0.x) ^ _wgslsmith_add_u32(var_1.b.x, 0u)));
    return ~0u;
}

fn func_2(arg_0: vec4<u32>) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.c.x, 10u)];
    let var_1 = Struct_2(_wgslsmith_div_u32(arg_0.x, 4294967295u), -1921f);
    let var_2 = true;
    var var_3 = Struct_1(u_input.b, vec4<u32>(func_3(var_1.b), 4294967295u, 0u, var_1.a));
    var_3 = global0[_wgslsmith_index_u32(var_1.a, 10u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1971f - -134f) + 1f), -781f)));
}

fn func_1(arg_0: i32) -> vec2<i32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-546f * -2163f) - -1131f) + _wgslsmith_f_op_f32(func_2(vec4<u32>(firstTrailingBit(15019u), 0u, u_input.c.x, _wgslsmith_add_u32(u_input.c.x, 1u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(978f + 1288f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-780f, -704f))) + _wgslsmith_f_op_f32(-1050f * _wgslsmith_div_f32(834f, _wgslsmith_f_op_f32(f32(-1f) * -807f)))));
    let var_1 = global0[_wgslsmith_index_u32(reverseBits(u_input.c.x), 10u)];
    let var_2 = 0u;
    global0 = array<Struct_1, 10>();
    var_0 = vec2<f32>(var_0.x, 1000f);
    return vec2<i32>(var_1.a, -(1i & ~arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_div_vec2_i32(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(u_input.b, -31131i)) >> (abs(vec2<u32>(4294967295u, u_input.c.x)) % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(min(-vec2<i32>(-2147483647i, u_input.b), ~vec2<i32>(-22352i, u_input.b)), ~func_1(u_input.a)));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-563f - -130f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(486f - -1896f)))), _wgslsmith_f_op_f32(423f + -1332f))));
    let x = u_input.a;
    s_output = StorageBuffer(2189u);
}

