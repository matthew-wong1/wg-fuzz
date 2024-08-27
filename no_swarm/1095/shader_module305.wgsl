struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: vec2<bool>,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<u32> = vec3<u32>(0u, 39600u, 35213u);

var<private> global2: f32;

var<private> global3: array<u32, 14>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> f32 {
    global0 = false;
    return _wgslsmith_f_op_f32(arg_1.c.x + 601f);
}

fn func_2(arg_0: u32, arg_1: i32) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.a, Struct_1(u_input.d, vec4<f32>(1317f, -372f, -1093f, -1000f), vec3<f32>(-107f, -1000f, -408f), vec2<i32>(-11698i, 27455i), vec3<i32>(0i, 19133i, arg_1)), 0i, u_input.d.x)) - _wgslsmith_f_op_f32(abs(140f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -111f) - 812f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1342f, -109f)), 224f))))));
    global1 = max(u_input.b.yxw, select(firstLeadingBit(u_input.d.yzw), ~vec3<u32>(u_input.b.x, 0u, 4294967295u) & vec3<u32>(arg_0 << (global1.x % 32u), global1.x, ~global3[_wgslsmith_index_u32(39940u, 14u)]), select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, false, true), true), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), vec3<bool>(false, true, true)), true)));
    let var_1 = 29036u;
    var var_2 = Struct_2(Struct_1(_wgslsmith_div_vec4_u32(u_input.b, u_input.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1141f, -1348f, var_0.x)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(357f, var_0.x, var_0.x, var_0.x))), arg_1 <= arg_1)) + vec4<f32>(var_0.x, _wgslsmith_f_op_f32(select(-978f, var_0.x, false)), -630f, _wgslsmith_f_op_f32(min(-406f, -1079f)))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-307f, var_0.x)), -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2247f) + _wgslsmith_f_op_f32(-var_0.x)), 2073f), reverseBits(-vec2<i32>(u_input.a, -5404i)), -vec3<i32>(countOneBits(arg_1), u_input.a, 0i)), -u_input.c, 1296f);
    let var_3 = u_input.d.xzw;
    return ~vec3<u32>(1u, 1u, 1u);
}

fn func_1(arg_0: bool) -> Struct_1 {
    global0 = !any(!select(select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, true, false, true), vec4<bool>(arg_0, arg_0, true, true)), select(vec4<bool>(arg_0, false, true, arg_0), vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(true, arg_0, false, arg_0)), vec4<bool>(arg_0, arg_0, arg_0, arg_0)));
    global1 = vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~func_2(_wgslsmith_mult_u32(u_input.e.x, 3536u), -u_input.c), _wgslsmith_add_vec3_u32(u_input.b.ywx, select(vec3<u32>(u_input.e.x, 1u, global3[_wgslsmith_index_u32(u_input.d.x, 14u)]), _wgslsmith_mult_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(global1.x, 14u)], global1.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 14u)], 14u)], 14u)]), vec3<u32>(94309u, u_input.b.x, global1.x)), vec3<bool>(arg_0, arg_0, true)))), 14u)], global1.x);
    var var_0 = _wgslsmith_add_u32(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(0u, 14u)], _wgslsmith_add_u32(1u, _wgslsmith_div_u32(global1.x, _wgslsmith_div_u32(global1.x, global1.x)))), u_input.d.x);
    global0 = 14247u == global3[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(u_input.d.ywx, ~vec3<u32>(3751u, global3[_wgslsmith_index_u32(23902u, 14u)], 44880u))), 14u)];
    global0 = any(!(!select(select(vec4<bool>(false, arg_0, arg_0, true), vec4<bool>(false, arg_0, arg_0, arg_0), arg_0), vec4<bool>(arg_0, true, false, true), !vec4<bool>(arg_0, true, true, true))));
    return Struct_1(vec4<u32>(_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(u_input.e.x, 14u)], 24530u, 4294967295u) ^ _wgslsmith_sub_u32(~global1.x, global3[_wgslsmith_index_u32(global1.x, 14u)]), 13223u, global1.x, ~(~(global1.x ^ 0u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(491f, -1292f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-792f)), -129f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -236f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(953f, 1336f, -1000f) - vec3<f32>(1170f, -319f, -1701f)), vec3<f32>(938f, -1329f, 928f))) * vec3<f32>(_wgslsmith_f_op_f32(-346f + 424f), -615f, _wgslsmith_f_op_f32(f32(-1f) * -189f)))), vec2<i32>(1i, _wgslsmith_mod_i32(72898i, -2147483647i)), min(~vec3<i32>(-14571i, -2147483647i, -53909i) | (vec3<i32>(-30231i, u_input.a, u_input.c) >> (vec3<u32>(0u, 0u, u_input.e.x) % vec3<u32>(32u))), -vec3<i32>(u_input.a, u_input.c, 29888i)) ^ ((vec3<i32>(-1i) * -vec3<i32>(34975i, 42051i, u_input.c)) | select(vec3<i32>(u_input.c, u_input.a, u_input.c), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, u_input.a, u_input.c), vec3<i32>(-50475i, -33666i, 12826i), vec3<i32>(u_input.c, 42670i, u_input.a)), arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(true | !all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true))), func_1(true), -44274i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1714f, -946f, -563f), vec3<f32>(924f, -277f, -431f), false))))))));
    global1 = abs((func_1(true).a.zyw | vec3<u32>(func_2(u_input.e.x, -23857i).x, ~42809u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(14u, 14u)] ^ 50645u, 14u)])) >> (_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(global1.yy, vec2<u32>(u_input.e.x, var_0.b.a.x)), ~1u, global3[_wgslsmith_index_u32(global1.x, 14u)]), vec3<u32>(_wgslsmith_div_u32(1u, global1.x), 0u, ~u_input.b.x)) % vec3<u32>(32u)));
    var var_1 = var_0.a;
    let var_2 = vec4<u32>(4294967295u, ~abs(~global3[_wgslsmith_index_u32(39516u, 14u)]), ~global3[_wgslsmith_index_u32(36886u, 14u)], _wgslsmith_mult_u32(func_1(any(vec4<bool>(true, var_0.a, var_0.a, false)) & var_0.a).a.x, u_input.d.x));
    var var_3 = _wgslsmith_mult_vec4_i32(min(vec4<i32>(var_0.b.d.x, _wgslsmith_div_i32(u_input.a, 0i), -2147483647i, i32(-1i) * -25055i), max(~vec4<i32>(2147483647i, -71454i, -2147483647i, 4624i), -vec4<i32>(u_input.a, 1i, 1i, -1i))), vec4<i32>(u_input.a, -18440i, -var_0.b.e.x, 0i)) ^ _wgslsmith_div_vec4_i32(firstTrailingBit(countOneBits(vec4<i32>(17489i, 2147483647i, u_input.c, u_input.a))), vec4<i32>(var_0.c, ~19698i, _wgslsmith_mult_i32(firstTrailingBit(2147483647i), _wgslsmith_dot_vec3_i32(var_0.b.e, vec3<i32>(27486i, var_0.b.d.x, var_0.c))), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(1i, 82999u);
}

