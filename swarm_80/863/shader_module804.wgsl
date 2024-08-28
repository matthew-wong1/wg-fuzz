struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<u32, 4> = array<u32, 4>(1u, 46982u, 32896u, 4294967295u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = arg_0;
    let var_1 = Struct_2(Struct_1(vec2<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.c.x, var_0.d, u_input.c), vec3<u32>(33289u, 67629u, var_0.d)) ^ ~global1[_wgslsmith_index_u32(u_input.c, 4u)]), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(var_0.b)))), _wgslsmith_div_vec2_u32(arg_0.c, var_0.c), ~_wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u, arg_0.c.x), ~37417u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2303f - arg_0.b.x)))) * 843f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.b.xz)));
    var var_2 = min(reverseBits(~vec3<u32>(global1[_wgslsmith_index_u32(var_0.c.x, 4u)], var_0.c.x, u_input.c) | ~(vec3<u32>(0u, 0u, u_input.c) ^ vec3<u32>(1u, 4920u, u_input.c))), ~firstLeadingBit(vec3<u32>(62223u, 26164u, select(arg_0.a.x, 1u, true))));
    global1 = array<u32, 4>();
    var var_3 = !vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1096f + var_1.a.b.x)) != _wgslsmith_f_op_f32(step(1293f, -194f)), all(vec3<bool>(true, true, true)));
    return abs(~(~(~vec4<u32>(var_2.x, var_2.x, arg_0.c.x, 39920u)))) & _wgslsmith_clamp_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 4294967295u, var_2.x, 1u), abs(vec4<u32>(40806u, arg_0.a.x, var_2.x, 4462u))), ~firstTrailingBit(vec4<u32>(global1[_wgslsmith_index_u32(1u, 4u)], var_0.c.x, 80047u, 51610u)), ~abs(vec4<u32>(u_input.c, 0u, 4294967295u, 4294967295u)));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_mult_vec4_i32(~(~(min(vec4<i32>(u_input.b, u_input.b, 43550i, 1i), vec4<i32>(-7227i, -11117i, u_input.a, 1i)) ^ _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.b), vec4<i32>(1i, u_input.b, 0i, 1i)))), vec4<i32>(11691i, ~(~u_input.b), 1i, -15914i) << (~func_3(Struct_1(vec2<u32>(global1[_wgslsmith_index_u32(56830u, 4u)], 26947u), vec3<f32>(-430f, -105f, 1270f), vec2<u32>(4294967295u, u_input.c), 4294967295u, 526f)) % vec4<u32>(32u)));
    let var_1 = ~(~91554u);
    let var_2 = Struct_1(vec2<u32>(~0u, _wgslsmith_dot_vec3_u32(firstTrailingBit(reverseBits(vec3<u32>(u_input.c, 0u, 1u))), ~(~vec3<u32>(45436u, var_1, var_1)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1666f, 2140f, -1649f), vec3<f32>(-229f, 945f, -1074f)))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1317f, 1713f, 464f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-340f, 1637f, -1402f)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-390f, 1000f, -1666f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1485f, 743f, -1238f) * vec3<f32>(-406f, -1083f, -304f))))), firstTrailingBit(countOneBits(vec2<u32>(~var_1, 1u))), select(var_1, var_1, !all(vec4<bool>(true, false, false, false)) && any(vec2<bool>(true, true))), 481f);
    global1 = array<u32, 4>();
    let var_3 = Struct_2(Struct_1(~var_2.a, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.b.x, -389f, true)) - 822f), var_2.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_2.e, 917f)), _wgslsmith_f_op_f32(var_2.e + 1116f))), var_2.c, ~min(~0u, func_3(var_2).x), _wgslsmith_f_op_f32(-var_2.e)), -1308f, var_2.b.zy);
    return var_3;
}

fn func_1(arg_0: bool, arg_1: vec2<bool>, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_1(arg_2, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1400f))), _wgslsmith_f_op_f32(step(1f, -1433f)), 1000f)), vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 4u)], _wgslsmith_add_u32(0u, ~(~20027u))), arg_2.x, -229f);
    let var_1 = func_2();
    let var_2 = _wgslsmith_div_vec4_i32(~vec4<i32>(u_input.b, u_input.a, 1i, u_input.a), abs(abs(vec4<i32>(u_input.b, 1i, u_input.b, -16613i) >> (vec4<u32>(var_0.c.x, 1u, arg_2.x, arg_2.x) % vec4<u32>(32u)))) << (((~vec4<u32>(global1[_wgslsmith_index_u32(u_input.c, 4u)], 15954u, 1u, 27880u) | vec4<u32>(4294967295u, u_input.c, 40674u, arg_2.x)) >> (vec4<u32>(countOneBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 4u)], 4u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, 4294967295u, u_input.c, 35959u), vec4<u32>(948u, arg_2.x, 22446u, 1u)), 1254u, var_1.a.d) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_3 = func_2();
    var var_4 = Struct_2(func_2().a, -1022f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1269f))), var_3.c.x)));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 4>();
    global1 = array<u32, 4>();
    let var_0 = _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(71575u, 4u)], ~1u);
    global1 = array<u32, 4>();
    var var_1 = func_1(!(!(false & any(vec2<bool>(false, false)))), vec2<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-172f * 120f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-552f))), all(vec4<bool>(true, true, true, true))), firstTrailingBit(vec2<u32>(global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_div_u32(var_0, var_0)), 4u)], u_input.c)));
    global1 = array<u32, 4>();
    var var_2 = _wgslsmith_div_f32(1590f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1008f, var_1.b.x) * 287f));
    let var_3 = true;
    let var_4 = _wgslsmith_add_u32(~(global1[_wgslsmith_index_u32(abs(reverseBits(12266u)), 4u)] ^ abs(_wgslsmith_mult_u32(0u, global1[_wgslsmith_index_u32(53305u, 4u)]))), var_1.a.x & func_3(Struct_1(var_1.c, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-500f, -137f, var_1.b.x))), vec2<u32>(global1[_wgslsmith_index_u32(var_1.d, 4u)], global1[_wgslsmith_index_u32(var_0, 4u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 1u, global1[_wgslsmith_index_u32(u_input.c, 4u)]), vec4<u32>(var_0, 63733u, 0u, var_1.d)), _wgslsmith_f_op_f32(f32(-1f) * -195f))).x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(vec3<i32>(abs(u_input.a), -1i, _wgslsmith_add_i32(u_input.b, 1i)), vec3<i32>(-20980i, ~u_input.b, u_input.b)) ^ u_input.a);
}

