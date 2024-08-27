struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: Struct_1;

var<private> global2: array<u32, 21> = array<u32, 21>(23353u, 52270u, 1u, 870u, 0u, 31410u, 4294967295u, 4294967295u, 1u, 32360u, 109251u, 1u, 3473u, 50874u, 24637u, 55158u, 85471u, 28123u, 123670u, 4294967295u, 8242u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_1, 9>();
    let var_0 = vec2<bool>(global1.a, 4294967295u != abs(firstLeadingBit(_wgslsmith_mult_u32(4294967295u, u_input.b.x))));
    global1 = global0[_wgslsmith_index_u32(firstTrailingBit(~_wgslsmith_add_u32(firstTrailingBit(1u), 1u)), 9u)];
    var var_1 = global1.c;
    var var_2 = Struct_1(global1.a, 1190f, u_input.b.x, global1.d);
    return global0[_wgslsmith_index_u32(~1u, 9u)];
}

fn func_1(arg_0: Struct_3) -> i32 {
    global2 = array<u32, 21>();
    global1 = global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(86784u, ~(0u | global1.c)), 21u)], 9u)];
    var var_0 = arg_0.b.x;
    global1 = func_2();
    var var_1 = Struct_3(arg_0.a, arg_0.b);
    return 0i;
}

fn func_3() -> u32 {
    global0 = array<Struct_1, 9>();
    var var_0 = ~(~(~1u));
    let var_1 = vec3<i32>(_wgslsmith_dot_vec3_i32(-(~max(vec3<i32>(global1.d, 2147483647i, global1.d), vec3<i32>(39119i, -10291i, global1.d))), ~vec3<i32>(global1.d, global1.d, -1i)), ~(~0i), -8791i);
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b - global1.b) + -1123f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1304f) * _wgslsmith_f_op_f32(global1.b + global1.b)), _wgslsmith_div_f32(-956f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-342f, global1.b)) * 1513f)), global1.b)));
    global1 = global0[_wgslsmith_index_u32(0u, 9u)];
    return _wgslsmith_clamp_u32(_wgslsmith_sub_u32(global1.c, abs(1u >> (global2[_wgslsmith_index_u32(4294967295u, 21u)] % 32u))), (global1.c | global2[_wgslsmith_index_u32(~1u, 21u)]) ^ 41594u, 0u << (select(~global2[_wgslsmith_index_u32(24399u, 21u)], select(~17071u, ~u_input.b.x, global1.a), select(true, false, global1.a)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(firstTrailingBit(func_1(Struct_3(8762i, !vec2<bool>(global1.a, global1.a)))), 25613i << (func_3() % 32u), func_2().d, _wgslsmith_mult_i32(-(abs(global1.d) | firstLeadingBit(-31292i)), global1.d));
    var var_1 = func_2();
    global0 = array<Struct_1, 9>();
    global1 = Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1332f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b * 840f))), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.a.zz, vec2<u32>(32062u, u_input.a.x)), 57131u), global1.d);
    let var_2 = Struct_2(abs(vec3<i32>(global1.d, _wgslsmith_mult_i32(var_0.x, -1i), var_0.x)), vec3<i32>(countOneBits(_wgslsmith_add_i32(global1.d, countOneBits(-8479i))), var_1.d, _wgslsmith_dot_vec3_i32(-var_0.yyz, _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, var_0.x, 1i), var_0.wzx, var_0.yzw) ^ var_0.zzx)), global0[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(36365u, ~global2[_wgslsmith_index_u32(1u, 21u)])), 9u)]);
    var var_3 = Struct_2(var_0.xxw ^ vec3<i32>(var_0.x << (~global2[_wgslsmith_index_u32(u_input.a.x, 21u)] % 32u), -reverseBits(32860i), var_0.x), -vec3<i32>(_wgslsmith_mod_i32(abs(1i), _wgslsmith_mult_i32(global1.d, 40405i)), var_0.x, -1i), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 60103u), 9u)]);
    let x = u_input.a;
    s_output = StorageBuffer(abs(func_1(Struct_3(firstTrailingBit(39954i), !vec2<bool>(var_3.c.a, var_2.c.a)))), _wgslsmith_mod_i32(-32856i, _wgslsmith_dot_vec2_i32(var_3.a.zx, _wgslsmith_mult_vec2_i32(var_0.zy, vec2<i32>(global1.d, var_2.b.x)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1253f, _wgslsmith_f_op_f32(-var_3.c.b))), vec2<f32>(var_1.b, _wgslsmith_f_op_f32(step(-663f, _wgslsmith_f_op_f32(round(var_3.c.b))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.b)) + _wgslsmith_f_op_f32(295f - 549f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_2.c.b))))));
}

