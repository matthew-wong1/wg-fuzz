struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-17605i, -40850i, 7674i, 0i);

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(4294967295u, vec2<i32>(1i, 10298i)), Struct_1(69786u, vec2<i32>(1i, -30235i)), Struct_1(0u, vec2<i32>(i32(-2147483648), 12078i)), Struct_1(1u, vec2<i32>(-1i, 22360i)), Struct_1(52729u, vec2<i32>(-19166i, 26711i)), Struct_1(38208u, vec2<i32>(0i, 1i)), Struct_1(16875u, vec2<i32>(15300i, 9542i)), Struct_1(29834u, vec2<i32>(1i, 2147483647i)), Struct_1(4294967295u, vec2<i32>(2147483647i, 3193i)));

var<private> global2: u32 = 2073u;

var<private> global3: array<Struct_1, 2>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec3<f32>) -> u32 {
    global3 = array<Struct_1, 2>();
    let var_0 = 4294967295u;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_3.x, _wgslsmith_f_op_f32(1285f + -881f))));
    global2 = 0u;
    var var_2 = ~u_input.c >> (vec2<u32>(3738u, countOneBits(countOneBits(u_input.c.x))) % vec2<u32>(32u));
    return ~min((u_input.e ^ 1u) >> (22534u % 32u), ~_wgslsmith_mod_u32(u_input.e, var_2.x)) & _wgslsmith_dot_vec4_u32(reverseBits(_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_2.x, 1u, u_input.c.x, var_0), vec4<u32>(1360u, 33958u, 67053u, var_0), vec4<u32>(var_2.x, 0u, var_2.x, var_0))), ~(~reverseBits(vec4<u32>(arg_2.a, 17179u, 0u, arg_2.a))));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec4<f32>) -> bool {
    let var_0 = Struct_1(func_3(arg_0.b.x, select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(false, false), arg_1), select(!vec2<bool>(true, arg_1), !vec2<bool>(arg_1, true), arg_1 | true), arg_1), Struct_1(_wgslsmith_mod_u32(~40777u, arg_0.a & 4294967295u), reverseBits(_wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(1i, -2147483647i)))), _wgslsmith_f_op_vec3_f32(arg_2.wzy * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1461f, arg_2.x, 740f))))), _wgslsmith_mod_vec2_i32(min(abs(vec2<i32>(-1i, u_input.b)), countOneBits(u_input.a) & global0.zw), -vec2<i32>(global0.x ^ arg_0.b.x, u_input.d.x)));
    var var_1 = 58840u;
    global0 = select(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-29989i, 0i, -28680i, -2147483647i), vec4<i32>(global0.x, 10099i, var_0.b.x, 1i)), ~(-2147483647i), firstTrailingBit(u_input.a.x), 19892i), -_wgslsmith_mod_vec4_i32(vec4<i32>(14107i, u_input.d.x, var_0.b.x, arg_0.b.x), vec4<i32>(global0.x, -1i, u_input.d.x, var_0.b.x))) & ~_wgslsmith_mod_vec4_i32(vec4<i32>(-29924i, 13635i, var_0.b.x, global0.x), -vec4<i32>(global0.x, arg_0.b.x, 0i, arg_0.b.x)), firstLeadingBit((countOneBits(vec4<i32>(2147483647i, -1i, var_0.b.x, 1i)) & ~vec4<i32>(arg_0.b.x, 26880i, u_input.a.x, 27283i)) >> (~max(vec4<u32>(arg_0.a, 53958u, var_0.a, var_0.a), vec4<u32>(var_0.a, 37419u, 1u, 8718u)) % vec4<u32>(32u))), !arg_1);
    global0 = ~vec4<i32>(11457i, -_wgslsmith_mult_i32(4698i, countOneBits(-10145i)), -_wgslsmith_mult_i32(~arg_0.b.x, arg_0.b.x), _wgslsmith_div_i32(-1i, var_0.b.x << (arg_0.a % 32u)) | 554i);
    let var_2 = global1[_wgslsmith_index_u32(arg_0.a, 9u)];
    return arg_1;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = vec4<bool>(false, (all(vec2<bool>(true, true)) & true) && func_2(arg_0, _wgslsmith_f_op_f32(select(176f, 404f, true)) > _wgslsmith_f_op_f32(-740f * 545f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1249f, 584f, -799f, 207f) + vec4<f32>(205f, 897f, 1334f, -1094f))))), _wgslsmith_mod_u32(u_input.e << (13676u % 32u), ~abs(0u)) >= _wgslsmith_div_u32(countOneBits(30221u) >> (~4294967295u % 32u), 1u), true);
    let var_1 = ~11974u;
    let var_2 = Struct_1((~(var_1 << (1u % 32u)) & ~(~arg_0.a)) << (var_1 % 32u), global0.xx);
    let var_3 = select(~vec4<i32>(_wgslsmith_clamp_i32(u_input.a.x, -1i, arg_0.b.x), arg_0.b.x, countOneBits(-1i), arg_0.b.x) >> (vec4<u32>(~var_1, 20683u, ~(arg_1.x | 5526u), 0u) % vec4<u32>(32u)), -_wgslsmith_div_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(23629i, 2147483647i, -72890i, var_2.b.x), vec4<i32>(u_input.b, var_2.b.x, u_input.b, u_input.d.x)), ~vec4<i32>(-66698i, global0.x, var_2.b.x, global0.x)), true);
    let var_4 = _wgslsmith_add_vec2_u32(max(abs(~_wgslsmith_clamp_vec2_u32(u_input.c, vec2<u32>(48895u, 24036u), vec2<u32>(arg_1.x, 1u))), _wgslsmith_clamp_vec2_u32(abs(u_input.c), vec2<u32>(var_1, ~arg_0.a), vec2<u32>(var_1, arg_1.x << (4294967295u % 32u)))), u_input.c);
    return Struct_1(0u, -u_input.d.xx);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = _wgslsmith_sub_vec4_u32(max(~vec4<u32>(_wgslsmith_mult_u32(55325u, 1u), arg_3.a << (4294967295u % 32u), 50587u, arg_1.a), ~vec4<u32>(39036u, 28236u, reverseBits(arg_1.a), arg_3.a)), ~firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.a, 16136u, arg_0.a, 21760u), ~vec4<u32>(10556u, 44706u, u_input.c.x, arg_3.a))));
    let var_1 = 1u;
    var var_2 = Struct_1(var_1 >> (abs(u_input.c.x) % 32u), vec2<i32>(arg_0.b.x, _wgslsmith_clamp_i32(global0.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.b.x, 40949i, -109606i, global0.x), vec4<i32>(-1080i, arg_1.b.x, 13059i, 2147483647i)), arg_1.b.x)));
    let var_3 = func_1(arg_0, ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_3.a, arg_2.a), ~var_0.xz)));
    let var_4 = abs(vec4<i32>(-1i, 2147483647i, firstTrailingBit(arg_1.b.x), global0.x));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec3<bool>(true, true, true && (u_input.e >= u_input.c.x)));
    var var_1 = select(var_0.x, var_0.x, all(vec3<bool>(true, !(!var_0.x), select(var_0.x, all(vec4<bool>(var_0.x, true, true, false)), true))));
    var var_2 = vec2<u32>(u_input.c.x | u_input.c.x, ~u_input.e);
    let var_3 = firstLeadingBit(func_4(global1[_wgslsmith_index_u32(u_input.e, 9u)], func_1(global3[_wgslsmith_index_u32(50509u, 2u)], vec2<u32>(u_input.e, 69864u) >> (u_input.c % vec2<u32>(32u))), func_1(global3[_wgslsmith_index_u32(min(var_2.x, u_input.e) & u_input.e, 2u)], u_input.c), global1[_wgslsmith_index_u32(u_input.e, 9u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-805f, -1338f, -1716f) + vec3<f32>(689f, 875f, 1159f)), _wgslsmith_div_vec3_f32(vec3<f32>(576f, 905f, -1000f), vec3<f32>(1485f, -2107f, -1087f)))))));
}

