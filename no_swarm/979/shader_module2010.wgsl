struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2>;

var<private> global1: array<u32, 20> = array<u32, 20>(4294967295u, 91089u, 1u, 4294967295u, 1u, 1u, 0u, 0u, 0u, 4294967295u, 4294967295u, 9161u, 28856u, 3793u, 5874u, 4294967295u, 0u, 49743u, 60420u, 1370u);

var<private> global2: f32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec4<bool> {
    global1 = array<u32, 20>();
    var var_0 = !any(vec2<bool>(false, true));
    var var_1 = !(-_wgslsmith_sub_i32(~arg_1, _wgslsmith_div_i32(-32225i, u_input.d)) <= _wgslsmith_sub_i32(arg_1, -1i));
    global2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1846f, 1000f)) - _wgslsmith_f_op_f32(abs(1000f)))))));
    var var_2 = global0[_wgslsmith_index_u32(u_input.e, 2u)];
    return select(select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false)), any(vec3<bool>(false, false, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), arg_1 == u_input.c), vec4<bool>(true, true, true, true)), !select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(any(vec2<bool>(false, true)), true, all(vec3<bool>(true, true, false)), true), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, false, false), select(false, false, false)))), !select(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false)), vec4<bool>(false, true, false, true), any(vec4<bool>(false, true, true, true)))), all(select(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(all(vec2<bool>(true, true)), true), vec2<bool>(true, true))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec3<u32> {
    var var_0 = Struct_1(global1[_wgslsmith_index_u32(~arg_1.a, 20u)]);
    let var_1 = Struct_1(arg_1.a);
    var var_2 = !func_3(Struct_1(~117557u), u_input.b.x);
    return abs(~vec3<u32>(var_1.a, ~16379u, abs(0u)) >> (vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, var_1.a, var_1.a, global1[_wgslsmith_index_u32(u_input.e, 20u)]), ~vec4<u32>(4294967295u, 6148u, 1u, 1378u)), ~arg_1.a, arg_1.a) % vec3<u32>(32u)));
}

fn func_4(arg_0: bool, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(min(~(vec2<u32>(u_input.e, 0u) ^ vec2<u32>(arg_1.x, u_input.e)), vec2<u32>(firstTrailingBit(25134u), 25738u)), arg_1.yx ^ _wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(4294967295u, u_input.e)), firstTrailingBit(arg_1.yx))), 2u)];
    global2 = _wgslsmith_f_op_f32(round(-1049f));
    let var_1 = firstLeadingBit(~(abs(min(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(36788u, 20u)], 20u)], u_input.e)) | 4294967295u));
    let var_2 = firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(0i, u_input.a.x), -(~vec2<i32>(u_input.b.x, -29849i))));
    global0 = array<Struct_1, 2>();
    return global0[_wgslsmith_index_u32(~var_0.a, 2u)];
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    global1 = array<u32, 20>();
    var var_0 = func_4(arg_0.x, _wgslsmith_sub_vec3_u32(~(func_2(Struct_1(4294967295u), global0[_wgslsmith_index_u32(u_input.e, 2u)], false) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(60920u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 20u)], 20u)], 4294967295u), vec3<u32>(global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(u_input.e, 20u)], u_input.e))), vec3<u32>(func_2(global0[_wgslsmith_index_u32(abs(u_input.e), 2u)], global0[_wgslsmith_index_u32(~1u, 2u)], true).x, 0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, global1[_wgslsmith_index_u32(u_input.e, 20u)], global1[_wgslsmith_index_u32(38228u, 20u)]), ~vec3<u32>(u_input.e, global1[_wgslsmith_index_u32(0u, 20u)], 51377u)))));
    global1 = array<u32, 20>();
    let var_1 = Struct_1(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(firstLeadingBit(1u), 20u)], ~(~0u) >> (~(var_0.a >> (13966u % 32u)) % 32u)));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -834f), _wgslsmith_f_op_f32(-454f - _wgslsmith_div_f32(-869f, 994f)))));
    return global0[_wgslsmith_index_u32(reverseBits(949u), 2u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 2>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1008f, 686f, 1152f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-944f, -415f, 1000f))))))));
    var var_1 = func_1(!vec4<bool>(all(vec2<bool>(true, true)), any(vec3<bool>(false, true, false)), any(vec4<bool>(true, true, true, true)), true));
    let var_2 = abs(u_input.b) ^ abs(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, -28637i, -2147483647i, -34216i), vec4<i32>(u_input.c, u_input.b.x, -2147483647i, 19572i)), 56643i), reverseBits(vec3<i32>(u_input.c, u_input.d, u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(func_2(func_1(vec4<bool>(true, false, true, false)), Struct_1(45329u), true).x & 31819u, firstTrailingBit(1u)), var_2, ~0u, ~_wgslsmith_sub_vec3_u32(abs(vec3<u32>(u_input.e, 0u, var_1.a)), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.e, u_input.e, 1u), vec3<u32>(global1[_wgslsmith_index_u32(29341u, 20u)], 1u, 18712u))));
}

