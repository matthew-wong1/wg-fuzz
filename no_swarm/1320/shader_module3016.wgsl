struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

var<private> global1: vec3<u32> = vec3<u32>(48263u, 0u, 1u);

var<private> global2: array<vec3<bool>, 17>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.a;
    global0 = array<Struct_1, 26>();
    let var_1 = _wgslsmith_f_op_f32(trunc(-665f));
    let var_2 = global0[_wgslsmith_index_u32(48609u, 26u)];
    var var_3 = var_2.c.x;
    return global0[_wgslsmith_index_u32(23846u, 26u)];
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    let var_0 = arg_1;
    var var_1 = u_input.b.x;
    var var_2 = var_0;
    let var_3 = ~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(func_2().d, var_0.d) ^ vec3<u32>(1u, ~115354u, ~87078u), firstLeadingBit(~(~vec3<u32>(u_input.a, var_2.d.x, var_2.d.x))));
    var var_4 = ~vec3<u32>(62126u & _wgslsmith_dot_vec4_u32(vec4<u32>(92527u, global1.x, 0u, arg_0.x), select(vec4<u32>(arg_2.d.x, 4294967295u, 9430u, 16026u), vec4<u32>(var_2.b, 4294967295u, 24759u, arg_2.d.x), vec4<bool>(true, true, true, true))), ~arg_1.b, _wgslsmith_div_u32(63479u, 7485u));
    return any(!vec4<bool>(false, select(true, true, true), false, true));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = vec3<u32>(global1.x, global1.x >> (u_input.a % 32u), 1u);
    var var_1 = func_3(global1.xy, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), (u_input.a << (52670u % 32u)) >> (1u % 32u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2731f, arg_0.x, arg_0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 236f, 679f))), vec3<u32>(firstLeadingBit(u_input.a), _wgslsmith_mod_u32(53335u, u_input.a), _wgslsmith_sub_u32(u_input.a, 0u))), func_2()) | ((firstTrailingBit(firstLeadingBit(u_input.b.x)) & -16288i) <= u_input.b.x);
    global2 = array<vec3<bool>, 17>();
    var var_2 = -2147483647i;
    let var_3 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-315f + 567f)))), -706f, _wgslsmith_f_op_f32(f32(-1f) * -1202f), 654f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1082f, _wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, false)), arg_0.x, -1324f) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(927f, 980f, 876f, arg_0.x), vec4<f32>(-116f, arg_0.x, arg_0.x, -1000f))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-214f, 376f, -1030f, arg_0.x)), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x, -452f, -615f), reverseBits(26280u) >= min(var_0.x, global1.x)))), true));
    return func_2();
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> vec3<u32> {
    let var_0 = arg_2.c;
    global0 = array<Struct_1, 26>();
    var var_1 = func_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_2.c.x - arg_2.c.x), _wgslsmith_div_f32(-703f, var_0.x)) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(arg_1.c.yy))))))), ~vec4<i32>(_wgslsmith_mult_i32(~30255i, u_input.b.x >> (18584u % 32u)), select(~1i, 7394i, true), ~(-11719i >> (arg_2.d.x % 32u)), u_input.b.x));
    let var_2 = Struct_1(var_0.x, ~25793u, var_1.c, ~(arg_2.d & _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 1u, 1u), var_1.d), _wgslsmith_sub_vec3_u32(arg_3, vec3<u32>(var_1.d.x, arg_2.d.x, 4294967295u)))));
    global0 = array<Struct_1, 26>();
    return vec3<u32>(~4294967295u, 10050u, arg_1.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(_wgslsmith_div_vec3_i32(vec3<i32>(min(u_input.b.x, u_input.b.x), ~37437i, 2147483647i), ~vec3<i32>(3065i, 1135i, u_input.b.x)) ^ vec3<i32>(-_wgslsmith_add_i32(u_input.b.x, 1i), -_wgslsmith_dot_vec2_i32(u_input.b.zz, vec2<i32>(u_input.b.x, 0i)), u_input.b.x));
    global2 = array<vec3<bool>, 17>();
    global1 = ~vec3<u32>(1u >> (global1.x % 32u), 1u << (~global1.x % 32u), 4294967295u);
    var var_1 = _wgslsmith_f_op_f32(exp2(1f));
    global1 = _wgslsmith_mod_vec3_u32(firstTrailingBit(select(countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(u_input.a, global1.x, global1.x), vec3<u32>(1u, 1u, 44078u))), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 8172u, global1.x), vec3<u32>(36171u, 1u, u_input.a)) | countOneBits(vec3<u32>(67212u, 1u, u_input.a)), vec3<bool>(any(vec2<bool>(true, true)), true, true))), func_4(vec2<bool>(-327f == _wgslsmith_f_op_f32(ceil(479f)), any(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(94816u, global1.x, 4294967295u), 17u)])), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(select(31337u, u_input.a, true)), 0u), 26u)], func_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-279f, -400f) + vec2<f32>(-380f, 431f)))), -(~vec4<i32>(var_0.x, var_0.x, -1i, u_input.b.x))), reverseBits(vec3<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global1.x), global1.yz), ~u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, ~u_input.a | func_1(vec2<f32>(-1586f, 881f), vec4<i32>(9677i, var_0.x, var_0.x, 1i)).d.x, global1.x, func_2().b), _wgslsmith_clamp_vec4_u32(~(vec4<u32>(4294967295u, 1569u, 66611u, global1.x) ^ vec4<u32>(global1.x, 41871u, global1.x, 35442u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, 0u), vec4<u32>(u_input.a, global1.x, 49403u, u_input.a)), ~(vec4<u32>(u_input.a, 30758u, u_input.a, u_input.a) | vec4<u32>(global1.x, global1.x, u_input.a, 1u)))), _wgslsmith_f_op_vec2_f32(-func_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-521f, -640f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-353f, 2530f), vec2<f32>(-1000f, -994f), false)))), select(firstTrailingBit(vec4<i32>(u_input.b.x, u_input.b.x, -48849i, u_input.b.x)), ~vec4<i32>(0i, var_0.x, var_0.x, 23891i), true)).c.zy), global1.x, u_input.a, abs(10918i));
}

