struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: u32,
    e: u32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 9384u;

var<private> global1: array<u32, 4>;

var<private> global2: array<u32, 6> = array<u32, 6>(49568u, 22211u, 1u, 1u, 4294967295u, 46902u);

var<private> global3: bool;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    global3 = true;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1126f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1335f), _wgslsmith_f_op_f32(f32(-1f) * -1204f))) * _wgslsmith_f_op_f32(-1052f * -1268f))) + -618f);
}

fn func_1() -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(417f + -583f))), -1321f), _wgslsmith_f_op_f32(func_2(vec4<i32>(_wgslsmith_div_i32(~u_input.a.x, ~u_input.a.x), -1i, -u_input.a.x << (firstTrailingBit(37178u) % 32u), u_input.a.x & -u_input.a.x))), _wgslsmith_f_op_f32(floor(1177f)));
    let var_1 = vec4<bool>(true, true, true, true);
    global0 = global2[_wgslsmith_index_u32(u_input.b ^ firstTrailingBit(4294967295u), 6u)];
    let var_2 = var_1.wzx;
    let var_3 = _wgslsmith_div_i32(~20532i, countOneBits(u_input.a.x) << (_wgslsmith_clamp_u32(~(~global2[_wgslsmith_index_u32(0u, 6u)]), 4294967295u, u_input.b) % 32u));
    return Struct_1(global2[_wgslsmith_index_u32(4294967295u, 6u)] == (~_wgslsmith_mult_u32(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 4u)], 4u)]) << (u_input.b % 32u)), true, global2[_wgslsmith_index_u32(19496u, 6u)], u_input.a, max(vec2<u32>(countOneBits(u_input.b), ~global1[_wgslsmith_index_u32(4294967295u, 4u)]) >> (abs(min(vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 4294967295u))) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(abs(~vec2<u32>(53954u, u_input.b)), _wgslsmith_div_vec2_u32(~vec2<u32>(global2[_wgslsmith_index_u32(55u, 6u)], u_input.b), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(1u, 4u)]))))));
}

fn func_3() -> u32 {
    var var_0 = vec3<bool>(1i == u_input.a.x, false, true);
    global2 = array<u32, 6>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-512f, 1000f) - vec2<f32>(1802f, 633f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-789f, 408f), vec2<f32>(-884f, 1000f), vec2<bool>(false, var_0.x))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1975f, 1553f), vec2<f32>(-607f, 422f))), _wgslsmith_div_vec2_f32(vec2<f32>(1411f, 536f), vec2<f32>(1482f, -1069f)), var_0.zz)))) * vec2<f32>(1f, 1f));
    var var_2 = firstTrailingBit(vec3<u32>(global1[_wgslsmith_index_u32(countOneBits(select(4294967295u, global2[_wgslsmith_index_u32(21473u, 6u)], false)), 4u)], max(~global2[_wgslsmith_index_u32(4294967295u, 6u)], 52617u), _wgslsmith_div_u32(1u, _wgslsmith_mult_u32(u_input.b, 1u))) << (select(vec3<u32>(firstTrailingBit(79139u), select(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 6u)], 6u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 6u)], 6u)], 4u)], var_0.x), 1u), countOneBits(vec3<u32>(global1[_wgslsmith_index_u32(u_input.b, 4u)], global1[_wgslsmith_index_u32(103314u, 4u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4032u, 6u)], 4u)], 6u)])), vec3<bool>(true && var_0.x, all(vec3<bool>(false, true, true)), true)) % vec3<u32>(32u)));
    var_2 = reverseBits((~vec3<u32>(var_2.x, u_input.b, 4294967295u) << (abs(vec3<u32>(var_2.x, global1[_wgslsmith_index_u32(0u, 4u)], 1u)) % vec3<u32>(32u))) ^ _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 6u)], 49582u, global1[_wgslsmith_index_u32(var_2.x, 4u)]) ^ vec3<u32>(global2[_wgslsmith_index_u32(var_2.x, 6u)], var_2.x, global2[_wgslsmith_index_u32(42971u, 6u)]), ~vec3<u32>(20552u, 1u, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 4u)], 4u)], 4u)], 6u)])), ~(~vec3<u32>(16400u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(45269u, 4u)], 4u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 6u)], 4u)]))));
    return firstLeadingBit(var_2.x);
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> f32 {
    let var_0 = vec2<i32>(17648i, -u_input.a.x);
    let var_1 = arg_0;
    let var_2 = Struct_3(var_1.a, func_1(), firstLeadingBit(arg_1) >> (52074u % 32u), _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(select((16087u ^ global2[_wgslsmith_index_u32(4363u, 6u)]) >> (global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b & arg_0.b.c, 4u)], 6u)] % 32u), 1u, arg_0.b.b), 6u)], global1[_wgslsmith_index_u32(0u, 4u)] & 4294967295u), _wgslsmith_div_u32(~global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], firstTrailingBit(max(global1[_wgslsmith_index_u32(u_input.b, 4u)], 4294967295u))) | _wgslsmith_dot_vec2_u32(reverseBits(var_1.b.e), ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 4294967295u), arg_0.a.a.e)));
    global1 = array<u32, 4>();
    var var_3 = !select(vec2<bool>(true, any(vec4<bool>(var_1.a.a.b, false, true, var_1.a.a.b))), vec2<bool>(true, true), vec2<bool>(select(var_2.a.a.b && var_2.b.b, true, true), false));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -513f), -1000f))), _wgslsmith_f_op_f32(922f - _wgslsmith_f_op_f32(f32(-1f) * -744f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1791f) * _wgslsmith_f_op_f32(ceil(-400f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -438f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 6>();
    global0 = ~(~20864u);
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(func_4(Struct_3(Struct_2(Struct_1(false, true, _wgslsmith_clamp_u32(1u, 4294967295u, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 4u)], 6u)]), vec2<i32>(u_input.a.x, 0i), vec2<u32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(76021u, 4u)], 6u)], 4u)], 0u)), func_1()), Struct_1(any(vec2<bool>(true, true)), true, 4294967295u, vec2<i32>(u_input.a.x, -10636i), vec2<u32>(1u, 1u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))), firstLeadingBit(global1[_wgslsmith_index_u32(func_1().e.x, 4u)]), global1[_wgslsmith_index_u32(min(_wgslsmith_clamp_u32(~u_input.b, global1[_wgslsmith_index_u32(func_3(), 4u)], _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.b, 4294967295u), vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 4u)], 4294967295u, u_input.b, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(14952u, 4u)], 6u)]))), global1[_wgslsmith_index_u32(116586u, 4u)]), 4u)], 0u), ~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(4294967295u, 13785u, global1[_wgslsmith_index_u32(u_input.b, 4u)], 0u)), select(vec4<u32>(28384u, u_input.b, global1[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(u_input.b, 4u)]), vec4<u32>(4294967295u, 1u, 57798u, u_input.b), false)), _wgslsmith_div_vec4_u32(~vec4<u32>(0u, u_input.b, 14648u, 1u), countOneBits(vec4<u32>(u_input.b, u_input.b, u_input.b, global1[_wgslsmith_index_u32(95688u, 4u)]))))));
    var var_2 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, -26820i), 0i << (u_input.b % 32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, 1i, _wgslsmith_mod_i32(u_input.a.x, _wgslsmith_mult_i32(-65935i, -1424i))), min(select(vec3<i32>(u_input.a.x, 0i, 0i), vec3<i32>(3518i, u_input.a.x, -1i) >> (vec3<u32>(u_input.b, 0u, 6040u) % vec3<u32>(32u)), all(vec4<bool>(false, true, true, false))), vec3<i32>(-1i, _wgslsmith_mult_i32(-1i, u_input.a.x), _wgslsmith_sub_i32(u_input.a.x, -10574i)))), -_wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a.x, 0i, 1i)), min(vec3<i32>(2147483647i, -29460i, u_input.a.x), vec3<i32>(43721i, u_input.a.x, -2498i) ^ vec3<i32>(u_input.a.x, -38033i, -2147483647i))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(706f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-415f, _wgslsmith_f_op_f32(f32(-1f) * -1982f), true))))));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec4<u32>(0u >> (_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(1u, 6u)], 1u) % 32u), ~1u, ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 6u)], 6u)], _wgslsmith_clamp_u32(4294967295u, 116326u, _wgslsmith_dot_vec3_u32(vec3<u32>(21667u, 1u, global1[_wgslsmith_index_u32(1u, 4u)]), vec3<u32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 4u)], 6u)], 29772u, global1[_wgslsmith_index_u32(u_input.b, 4u)])))), vec4<u32>(4294967295u, _wgslsmith_add_u32(u_input.b ^ 0u, 4294967295u), u_input.b, ~global2[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, global2[_wgslsmith_index_u32(64990u, 6u)]), 6u)])), vec3<u32>(~u_input.b, u_input.b, 4294967295u), 57578u, u_input.a.x, -823f);
}

