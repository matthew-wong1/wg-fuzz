struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: Struct_2,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 87084u;

var<private> global1: vec2<u32> = vec2<u32>(59431u, 0u);

var<private> global2: array<Struct_2, 31>;

var<private> global3: array<u32, 32> = array<u32, 32>(51891u, 9797u, 1u, 4294967295u, 4294967295u, 46716u, 1u, 0u, 6569u, 0u, 1u, 36251u, 4294967295u, 61879u, 0u, 1u, 1u, 1u, 20378u, 24556u, 9846u, 0u, 17480u, 4294967295u, 15334u, 1u, 4294967295u, 457u, 48427u, 0u, 73728u, 40266u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = vec4<bool>(false, true, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(-2147483647i, arg_0.a, -28978i, -10126i), u_input.a), _wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(58745i, u_input.a.x, arg_0.a, -1447i))) >= arg_0.b.x, true);
    var var_1 = Struct_3(vec4<u32>(0u, global1.x, 0u, ~4294967295u), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1890f, -468f, 455f, 189f), vec4<f32>(-159f, -702f, 1315f, -1946f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1422f, 420f, -988f, -1763f) - vec4<f32>(-788f, 304f, 1000f, -1000f)))))), Struct_2(53151u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-678f + 457f))))), ~(reverseBits(global3[_wgslsmith_index_u32(global1.x, 32u)] >> (0u % 32u)) | _wgslsmith_mod_u32(global3[_wgslsmith_index_u32(global1.x, 32u)], global3[_wgslsmith_index_u32(global1.x, 32u)] & 0u)), arg_0);
    global1 = var_1.a.ww;
    let var_2 = u_input.b.zy;
    return var_1.b;
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: i32, arg_3: Struct_3) -> u32 {
    let var_0 = Struct_3(vec4<u32>(19963u, 0u ^ min(112022u, arg_3.d), 8624u, ~(~6572u & global3[_wgslsmith_index_u32(0u, 32u)])), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(_wgslsmith_add_i32(2147483647i, select(66602i, arg_3.e.a, false)), abs(arg_3.e.b), vec2<bool>(arg_3.e.c.x, arg_3.e.c.x)))), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(arg_1.a, arg_1.a & global3[_wgslsmith_index_u32(arg_0, 32u)]), 38881u), 31u)], global3[_wgslsmith_index_u32(arg_0, 32u)], Struct_1(max(firstTrailingBit(firstLeadingBit(2147483647i)), _wgslsmith_dot_vec2_i32(-vec2<i32>(arg_3.e.b.x, arg_3.e.a), firstTrailingBit(u_input.a.zz))), ~(~(-u_input.b.xyx)), arg_3.e.c));
    global0 = global1.x;
    global0 = ~countOneBits(_wgslsmith_dot_vec2_u32(var_0.a.wz, _wgslsmith_mod_vec2_u32(var_0.a.xy, var_0.a.xy)) & 8174u);
    global1 = var_0.a.zx;
    global1 = _wgslsmith_sub_vec2_u32(var_0.a.wz, arg_3.a.wx) ^ countOneBits(var_0.a.wx);
    return _wgslsmith_dot_vec2_u32(~(max(abs(vec2<u32>(arg_3.a.x, var_0.c.a)), arg_3.a.yz) | vec2<u32>(59737u, 21651u)), _wgslsmith_sub_vec2_u32(arg_3.a.xy, min(var_0.a.xw >> (vec2<u32>(arg_1.a, arg_0) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(var_0.a.zz, ~var_0.a.zx))));
}

fn func_1() -> u32 {
    return ~(45948u ^ func_2(1u, global2[_wgslsmith_index_u32(global1.x, 31u)], 1i, Struct_3(vec4<u32>(global1.x, 1u, 4294967295u, 44897u), vec4<f32>(278f, 1267f, -248f, -642f), Struct_2(42697u, 173f), 0u, Struct_1(50751i, u_input.b.yyx, vec2<bool>(true, false))))) & firstLeadingBit(1u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = firstLeadingBit(~firstTrailingBit(firstTrailingBit(vec2<u32>(global1.x, global3[_wgslsmith_index_u32(1u, 32u)]))) ^ vec2<u32>(firstTrailingBit(4294967295u), global1.x));
    let var_0 = u_input.a;
    global0 = func_1();
    var var_1 = select(true, true, all(vec3<bool>(false, select(true, true, true), !select(true, true, true))));
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(231f, 889f, -283f, 1912f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -729f), -445f, _wgslsmith_f_op_f32(abs(270f)))))));
    let var_3 = Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(~global1.x, 69715u, 4294967295u), vec3<u32>(_wgslsmith_mod_u32(global1.x, firstTrailingBit(1494u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.x, 32u)], 32u)], 4294967295u), reverseBits(vec2<u32>(global3[_wgslsmith_index_u32(52372u, 32u)], 0u))), func_2(~global1.x, global2[_wgslsmith_index_u32(global1.x, 31u)], -2147483647i & u_input.b.x, Struct_3(vec4<u32>(global1.x, 0u, global3[_wgslsmith_index_u32(1u, 32u)], global1.x), vec4<f32>(var_2.x, var_2.x, 1224f, var_2.x), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(47138u, 32u)], 31u)], global1.x, Struct_1(u_input.b.x, vec3<i32>(u_input.b.x, -16955i, 0i), vec2<bool>(true, true)))))), _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(-reverseBits(min(-1i, u_input.a.x) & var_0.x), var_0.x, var_0.yz);
}

