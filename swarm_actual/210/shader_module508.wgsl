struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26> = array<bool, 26>(false, true, false, true, false, false, true, true, true, false, false, true, true, false, false, false, true, false, false, false, false, true, true, true, true, false);

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec4<i32>(9597i, 0i, 0i, -1i)), Struct_1(vec4<i32>(52920i, -82422i, 8372i, -1i)), Struct_1(vec4<i32>(-1i, 2147483647i, 2147483647i, 8317i)), Struct_1(vec4<i32>(-13205i, 1i, 22003i, -9157i)), Struct_1(vec4<i32>(45276i, -25101i, 0i, -32071i)), Struct_1(vec4<i32>(38692i, 1i, 40279i, -17201i)), Struct_1(vec4<i32>(1i, 22178i, 5231i, i32(-2147483648))), Struct_1(vec4<i32>(16927i, 2147483647i, -1i, -21320i)), Struct_1(vec4<i32>(55926i, -34282i, 7990i, i32(-2147483648))), Struct_1(vec4<i32>(i32(-2147483648), -28496i, 1i, -1i)), Struct_1(vec4<i32>(2147483647i, -18236i, 1i, -46829i)), Struct_1(vec4<i32>(-2040i, 47863i, -1i, 47423i)), Struct_1(vec4<i32>(2147483647i, 2147483647i, -24717i, 0i)));

var<private> global2: bool = true;

var<private> global3: i32 = -27042i;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<i32>) -> vec4<i32> {
    var var_0 = u_input.b;
    let var_1 = global0[_wgslsmith_index_u32(4294967295u, 26u)];
    global0 = array<bool, 26>();
    global1 = array<Struct_1, 13>();
    return -(vec4<i32>(u_input.d, u_input.d, _wgslsmith_dot_vec2_i32(abs(arg_1), arg_1), -(u_input.d | u_input.d)) | countOneBits(vec4<i32>(1i, countOneBits(u_input.d), firstTrailingBit(-2147483647i), -arg_1.x)));
}

fn func_4(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = arg_0.a.x;
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(70152u, u_input.b), 13u)];
    global0 = array<bool, 26>();
    global1 = array<Struct_1, 13>();
    global0 = array<bool, 26>();
    return _wgslsmith_clamp_vec4_i32(var_1.a, vec4<i32>((_wgslsmith_clamp_i32(arg_0.a.x, 544i, 38230i) ^ firstTrailingBit(1i)) & u_input.d, -_wgslsmith_div_i32(u_input.d, 5562i), var_1.a.x, ~select(~0i, u_input.d, global0[_wgslsmith_index_u32(~u_input.c.x, 26u)])), vec4<i32>(firstTrailingBit(_wgslsmith_clamp_i32(min(0i, arg_0.a.x), _wgslsmith_mult_i32(-8002i, -43844i), select(u_input.d, -2147483647i, global0[_wgslsmith_index_u32(u_input.a, 26u)]))), _wgslsmith_mod_i32(u_input.d, -arg_0.a.x), ~_wgslsmith_mod_i32(1i, arg_0.a.x) >> (1u % 32u), u_input.d));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: vec3<i32>, arg_3: f32) -> vec4<u32> {
    let var_0 = Struct_1(func_4(Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, 12337i, -1i, 1i), -vec4<i32>(7713i, arg_2.x, 45603i, -8619i), func_3(arg_0.yz, arg_2.xx)))));
    global0 = array<bool, 26>();
    let var_1 = arg_2.x;
    global1 = array<Struct_1, 13>();
    var var_2 = Struct_1(var_0.a ^ vec4<i32>(countOneBits(-var_1), var_1, min(func_4(Struct_1(vec4<i32>(var_1, u_input.d, u_input.d, var_0.a.x))).x, 1i), ~(u_input.d << (12385u % 32u))));
    return min(_wgslsmith_sub_vec4_u32(firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(4667u, 0u, u_input.e, u_input.c.x) << (vec4<u32>(31182u, 45415u, 56131u, u_input.c.x) % vec4<u32>(32u)), reverseBits(vec4<u32>(u_input.c.x, u_input.b, u_input.a, 11578u)))), vec4<u32>(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x), ~u_input.c.x, 57232u, _wgslsmith_add_u32(u_input.a, 0u)) & abs(firstTrailingBit(vec4<u32>(u_input.a, 59575u, u_input.e, u_input.b)))), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(32555u, 65579u, u_input.a, u_input.c.x), ~vec4<u32>(0u, u_input.c.x, u_input.a, 0u)), vec4<u32>(u_input.c.x, _wgslsmith_mod_u32(u_input.c.x, 38421u), u_input.b, ~0u)) & vec4<u32>(29194u, max(abs(3382u), ~u_input.a), 32325u, ~(u_input.a >> (1u % 32u))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>) -> i32 {
    let var_0 = vec3<u32>(~u_input.e, 19378u, _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 226u, 4294967295u, 22899u), _wgslsmith_div_vec4_u32(vec4<u32>(7381u, u_input.e, u_input.b, 4294967295u), vec4<u32>(1u, 1u, 130588u, 90827u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.a, u_input.b, 0u), vec4<u32>(u_input.e, 1u, 4294967295u, 21914u))), func_2(_wgslsmith_f_op_vec4_f32(-arg_1), vec2<f32>(-415f, arg_1.x), select(vec3<i32>(arg_0.a.x, u_input.d, arg_0.a.x), arg_0.a.xzz, vec3<bool>(global0[_wgslsmith_index_u32(52950u, 26u)], global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(65449u, 26u)])), -364f))));
    global1 = array<Struct_1, 13>();
    var var_1 = 66184i;
    global2 = any(vec4<bool>(true, global0[_wgslsmith_index_u32(~4294967295u, 26u)], !(any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 26u)], true, global0[_wgslsmith_index_u32(var_0.x, 26u)], true)) & true), global0[_wgslsmith_index_u32(~u_input.c.x, 26u)]));
    let var_2 = vec4<u32>(~_wgslsmith_add_u32(~_wgslsmith_sub_u32(4294967295u, 18588u), abs(countOneBits(u_input.a))), _wgslsmith_add_u32(u_input.a << (max(_wgslsmith_add_u32(var_0.x, 4294967295u), _wgslsmith_div_u32(47977u, var_0.x)) % 32u), _wgslsmith_sub_u32(4294967295u, ~(~u_input.b))), var_0.x << (~(~0u) % 32u), max(_wgslsmith_sub_u32(u_input.c.x, ~var_0.x), var_0.x));
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = u_input.d;
    global2 = global0[_wgslsmith_index_u32(u_input.c.x, 26u)];
    var var_0 = u_input.d;
    var var_1 = ~(~_wgslsmith_sub_i32(-1i, u_input.d));
    let var_2 = _wgslsmith_f_op_f32(-187f + _wgslsmith_f_op_f32(abs(-821f)));
    let x = u_input.a;
    s_output = StorageBuffer(~max(vec3<u32>(4294967295u, 1u, ~u_input.b), vec3<u32>(1u, ~u_input.c.x, _wgslsmith_add_u32(u_input.b, u_input.b))), select(vec4<i32>(~abs(10008i), _wgslsmith_mod_i32(~u_input.d, reverseBits(10388i)), func_1(Struct_1(vec4<i32>(u_input.d, 0i, u_input.d, u_input.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_2, -1347f, -319f))), u_input.d), -(~vec4<i32>(-1i, u_input.d, -2147483647i, u_input.d)) | ~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, u_input.d, u_input.d, 36472i), vec4<i32>(22846i, u_input.d, -10057i, -2147483647i)), select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x | 0u, 26u)], false, global0[_wgslsmith_index_u32(~u_input.e, 26u)]), select(!vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(u_input.b, 26u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(38454u, 26u)], true, global0[_wgslsmith_index_u32(24320u, 26u)]), u_input.d > u_input.d), !vec4<bool>(global0[_wgslsmith_index_u32(11816u, 26u)], global0[_wgslsmith_index_u32(u_input.c.x, 26u)], true, global0[_wgslsmith_index_u32(38773u, 26u)]))));
}

