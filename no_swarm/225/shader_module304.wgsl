struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: u32,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(35940u, 14469u, 0u);

var<private> global1: array<Struct_2, 11>;

var<private> global2: Struct_2;

var<private> global3: array<i32, 27> = array<i32, 27>(1i, 18729i, 2147483647i, 43998i, 2147483647i, -39594i, 2147483647i, -1i, 36306i, 0i, 0i, 0i, -47603i, 1i, 0i, i32(-2147483648), 2147483647i, -25340i, i32(-2147483648), 63928i, i32(-2147483648), i32(-2147483648), -4035i, 12981i, 1i, -15116i, 2147483647i);

var<private> global4: array<u32, 13>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec3<f32>) -> bool {
    global2 = Struct_2(global2.a);
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-973f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-670f)), 293f) * 477f));
    global2 = Struct_2(any(select(!vec2<bool>(global2.a, true), select(vec2<bool>(true, false), select(vec2<bool>(global2.a, global2.a), vec2<bool>(true, true), vec2<bool>(true, true)), any(vec4<bool>(false, false, true, global2.a))), !select(vec2<bool>(global2.a, global2.a), vec2<bool>(global2.a, false), vec2<bool>(false, global2.a)))));
    let var_1 = Struct_1(!vec4<bool>(global2.a, true, false, global2.a), _wgslsmith_sub_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(0u, 13u)], u_input.c), vec2<u32>(0u, 0u)) | (u_input.b.zx >> (min(global0.xy, u_input.b.xx) % vec2<u32>(32u))), min(countOneBits(global0.zx), vec2<u32>(~global0.x, firstLeadingBit(0u)))), 0u, vec2<bool>(true, true), u_input.a.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1506f, -763f, 1015f, 1000f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0, var_0, arg_0.x, -950f), vec4<f32>(arg_0.x, var_0, 1917f, arg_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-127f, var_0, 755f, var_0)))))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0, 166f, arg_0.x, var_0))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(237f, -384f, -1447f, -1000f) + vec4<f32>(502f, -1193f, -376f, -961f))))));
    return global2.a;
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_2(true);
    let var_1 = countOneBits(min(37341i, global3[_wgslsmith_index_u32(global0.x, 27u)]));
    var var_2 = arg_0;
    let var_3 = vec4<i32>(_wgslsmith_mod_i32(var_2.e, 25346i), _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-1i) * -u_input.a.zx), -u_input.a.yy), -countOneBits(1i) | _wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.a.wx, u_input.a.zw), -42673i), _wgslsmith_mod_i32(i32(-1i) * -38635i, 17787i)), _wgslsmith_add_i32(var_1, global3[_wgslsmith_index_u32(abs(1u), 27u)]));
    let var_4 = false;
    return -127f;
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2239f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(190f)) - -433f))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -481f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(883f)) * _wgslsmith_f_op_f32(-943f + -2674f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-171f, -828f)))))));
    var_0 = _wgslsmith_f_op_f32(func_4(Struct_1(vec4<bool>(true, true, !(global2.a && global2.a), !global2.a), u_input.b.zz, global0.x, select(vec2<bool>(any(vec4<bool>(false, global2.a, global2.a, global2.a)), false), vec2<bool>(true, true), vec2<bool>(global2.a, func_3(vec3<f32>(1214f, -2838f, 543f)))), u_input.a.x)));
    var var_1 = 1i;
    let var_2 = _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, _wgslsmith_mult_u32(global4[_wgslsmith_index_u32(global0.x, 13u)] & global0.x, u_input.b.x)), 27u)], min(_wgslsmith_add_i32(arg_0.x, u_input.a.x), global3[_wgslsmith_index_u32(global0.x, 27u)]) >> (94031u % 32u)) << (~(~4294967295u) % 32u);
    return global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_sub_u32((u_input.b.x & global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(4294967295u, 13u)], 13u)]) >> (~0u % 32u), 58500u)), 11u)];
}

fn func_1() -> u32 {
    let var_0 = Struct_1(!(!select(vec4<bool>(global2.a, global2.a, global2.a, global2.a), !vec4<bool>(false, true, global2.a, true), false)), firstLeadingBit(vec2<u32>(global4[_wgslsmith_index_u32(abs(u_input.c), 13u)], u_input.b.x)), global0.x, vec2<bool>(!(global3[_wgslsmith_index_u32(24106u, 27u)] == u_input.a.x) & !(true | global2.a), true), 1916i);
    global4 = array<u32, 13>();
    global2 = func_2(vec4<i32>(-1i) * -(~reverseBits(vec4<i32>(-1i, global3[_wgslsmith_index_u32(u_input.c, 27u)], var_0.e, u_input.a.x))));
    global0 = ~vec3<u32>(14251u, global4[_wgslsmith_index_u32(~var_0.b.x >> (18092u % 32u), 13u)], global0.x);
    var var_1 = vec3<u32>(abs(19239u), ~_wgslsmith_clamp_u32(min(global0.x, global0.x), _wgslsmith_mod_u32(106354u, 8968u) | global0.x, select(0u, ~global0.x, true)), 4294967295u);
    return ~4294967295u;
}

fn func_5(arg_0: i32, arg_1: vec2<bool>, arg_2: bool) -> StorageBuffer {
    var var_0 = firstTrailingBit(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(firstTrailingBit(u_input.a.xxx), ~u_input.a.ywz) ^ u_input.a.wyx, vec3<i32>(~(i32(-1i) * -10334i), _wgslsmith_mult_i32(0i, _wgslsmith_div_i32(global3[_wgslsmith_index_u32(0u, 27u)], -1i)), ~(~global3[_wgslsmith_index_u32(874u, 27u)]))));
    global0 = vec3<u32>(~_wgslsmith_mult_u32(firstTrailingBit(global4[_wgslsmith_index_u32(~35048u, 13u)]), global4[_wgslsmith_index_u32(global0.x, 13u)]), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(global0.x), ~0u, global0.x, ~u_input.c), select(vec4<u32>(1u, global4[_wgslsmith_index_u32(u_input.c, 13u)], 9374u, 38058u) | vec4<u32>(u_input.b.x, 1u, 0u, 0u), vec4<u32>(global4[_wgslsmith_index_u32(88951u, 13u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global0.x, 13u)], 13u)], 42744u, global0.x), all(vec2<bool>(arg_2, global2.a))))), 24975u);
    let var_1 = _wgslsmith_div_u32(8893u, _wgslsmith_dot_vec2_u32(~vec2<u32>(global4[_wgslsmith_index_u32(1u, 13u)], ~117424u), vec2<u32>(0u, reverseBits(u_input.b.x))));
    global4 = array<u32, 13>();
    let var_2 = 1i;
    return StorageBuffer(_wgslsmith_f_op_f32(-1000f * 1101f), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(2147483647i, 1i), -1i, -23145i), _wgslsmith_mod_vec3_i32(firstLeadingBit(u_input.a.wwx), vec3<i32>(8i, var_0.x, 0i))), u_input.a.yzy | u_input.a.wwz));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<u32, 13>();
    let x = u_input.a;
    s_output = func_5(~max(u_input.a.x, ~(global3[_wgslsmith_index_u32(global0.x, 27u)] & -5091i)), vec2<bool>(u_input.c <= _wgslsmith_mult_u32(1u, func_1()), !(any(vec4<bool>(global2.a, false, global2.a, true)) || all(vec4<bool>(global2.a, global2.a, global2.a, global2.a)))), all(!select(select(vec2<bool>(global2.a, global2.a), vec2<bool>(global2.a, true), vec2<bool>(global2.a, false)), select(vec2<bool>(global2.a, global2.a), vec2<bool>(false, false), vec2<bool>(false, false)), false)));
}

