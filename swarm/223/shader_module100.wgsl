struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 31> = array<vec3<f32>, 31>(vec3<f32>(278f, -690f, -1000f), vec3<f32>(-1000f, 1176f, -1192f), vec3<f32>(3303f, 365f, 177f), vec3<f32>(621f, 399f, -1430f), vec3<f32>(-1000f, -1392f, -1467f), vec3<f32>(403f, -407f, -1307f), vec3<f32>(-787f, 250f, -202f), vec3<f32>(-416f, 280f, 159f), vec3<f32>(1000f, -372f, 395f), vec3<f32>(1627f, 1000f, -756f), vec3<f32>(223f, -1280f, -2198f), vec3<f32>(1094f, 163f, 1470f), vec3<f32>(-708f, 868f, 1000f), vec3<f32>(-1197f, -104f, -365f), vec3<f32>(-1000f, 455f, 222f), vec3<f32>(-1297f, 869f, 2196f), vec3<f32>(-678f, -727f, 1397f), vec3<f32>(1000f, -494f, 1188f), vec3<f32>(-490f, 488f, 1426f), vec3<f32>(-138f, 706f, -505f), vec3<f32>(1314f, 366f, 1161f), vec3<f32>(-1068f, 1733f, -322f), vec3<f32>(-396f, -1524f, -1180f), vec3<f32>(-573f, -451f, -1171f), vec3<f32>(379f, -2075f, 2029f), vec3<f32>(551f, -555f, -1452f), vec3<f32>(1114f, -1063f, -857f), vec3<f32>(1128f, 546f, 206f), vec3<f32>(1035f, 1000f, -813f), vec3<f32>(-1479f, 667f, 1116f), vec3<f32>(-606f, 1038f, 821f));

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec2<f32>(1000f, -1880f), 56988u, 1i, 0i, 13971u), Struct_1(vec2<f32>(509f, -969f), 55844u, 30813i, 77347i, 48218u), Struct_1(vec2<f32>(860f, 1783f), 0u, 31329i, 1i, 4294967295u), Struct_1(vec2<f32>(410f, -1337f), 1u, -4133i, 2971i, 4294967295u), Struct_1(vec2<f32>(149f, 892f), 4294967295u, -9106i, -1i, 29959u), Struct_1(vec2<f32>(1476f, 642f), 0u, -1i, -1i, 16994u), Struct_1(vec2<f32>(-141f, -120f), 5501u, 11884i, 0i, 49662u), Struct_1(vec2<f32>(872f, 183f), 24778u, 1i, 35402i, 4294967295u), Struct_1(vec2<f32>(1601f, 1066f), 4294967295u, 2147483647i, 1i, 42528u), Struct_1(vec2<f32>(-1155f, -658f), 1u, -1i, -5110i, 1u), Struct_1(vec2<f32>(-394f, -107f), 0u, 1i, i32(-2147483648), 39710u), Struct_1(vec2<f32>(-1000f, 1051f), 121256u, 0i, -59414i, 0u), Struct_1(vec2<f32>(1000f, 161f), 1u, i32(-2147483648), 0i, 4294967295u));

var<private> global2: array<f32, 25> = array<f32, 25>(-387f, -1248f, 700f, 1227f, -1100f, -1021f, 212f, 950f, -360f, -322f, -2422f, 146f, -176f, -1000f, 363f, 1000f, -291f, -1166f, 382f, -196f, 353f, 477f, 423f, -732f, 729f);

var<private> global3: vec4<i32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: f32, arg_3: bool) -> i32 {
    global2 = array<f32, 25>();
    var var_0 = arg_0.wwz;
    global3 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(0i, global3.x, abs(global3.x)), u_input.c), arg_0.xy), global3.x, 0i ^ _wgslsmith_sub_i32(min(var_0.x, var_0.x), 2147483647i >> ((u_input.a & u_input.d.x) % 32u)), 86667i);
    global2 = array<f32, 25>();
    let var_1 = Struct_2(vec2<f32>(954f, global2[_wgslsmith_index_u32(48649u, 25u)]));
    return 33785i;
}

fn func_1() -> Struct_2 {
    global0 = array<vec3<f32>, 31>();
    global3 = vec4<i32>(global3.x, global3.x, -(~func_2(vec4<i32>(u_input.c, 9116i, global3.x, u_input.c) | vec4<i32>(0i, 2147483647i, 1i, u_input.b.x), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.d.x, 25u)], global2[_wgslsmith_index_u32(u_input.d.x, 25u)]), _wgslsmith_f_op_f32(-460f - global2[_wgslsmith_index_u32(4294967295u, 25u)]), true)), -(~(-_wgslsmith_dot_vec2_i32(vec2<i32>(global3.x, global3.x), global3.zx))));
    global3 = vec4<i32>(global3.x >> ((u_input.a >> (~u_input.d.x % 32u)) % 32u), 10184i, _wgslsmith_mult_i32(global3.x, ~global3.x), -u_input.c);
    global1 = array<Struct_1, 13>();
    global1 = array<Struct_1, 13>();
    return Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(countOneBits(39552u), 25u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(6161u, 25u)])) - _wgslsmith_f_op_f32(trunc(-384f))))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: f32, arg_3: Struct_1) -> bool {
    var var_0 = abs(_wgslsmith_div_i32(~_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.x, -1i, arg_0.x), global3.zyy), _wgslsmith_sub_i32(arg_3.c, -1i)), -arg_3.d));
    global0 = array<vec3<f32>, 31>();
    global2 = array<f32, 25>();
    var var_1 = arg_3;
    var var_2 = _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(~u_input.d.x, _wgslsmith_div_u32(60723u, arg_1.x), _wgslsmith_clamp_u32(0u, u_input.a, 5754u), min(0u, 23390u)), vec4<u32>(4294967295u & arg_1.x, ~4294967295u, arg_3.b, 16395u)) ^ ~(select(vec4<u32>(u_input.a, 41950u, u_input.d.x, 1u), vec4<u32>(45264u, 87575u, arg_3.b, 27759u), vec4<bool>(false, false, false, false)) & (vec4<u32>(arg_3.e, 0u, 0u, arg_1.x) ^ vec4<u32>(arg_3.b, u_input.d.x, 322u, var_1.b))), vec4<u32>(12585u, arg_3.e, ~_wgslsmith_mult_u32(u_input.d.x ^ u_input.d.x, ~1u), u_input.a ^ abs(~arg_1.x)), ~countOneBits(countOneBits(firstTrailingBit(vec4<u32>(93417u, var_1.e, 1u, 24628u)))));
    return all(!(!select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d.xz;
    var_0 = u_input.d.zx;
    var var_1 = func_1();
    let var_2 = -528f;
    let var_3 = select(vec4<bool>(any(vec4<bool>(true, true, true, select(true, false, false))), func_3(select(vec2<i32>(u_input.c, 400i), global3.ww, 1i >= global3.x), _wgslsmith_add_vec3_u32(~u_input.d, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 39247u, 6600u), u_input.d)), _wgslsmith_f_op_f32(var_1.a.x + -944f), Struct_1(_wgslsmith_div_vec2_f32(var_1.a, var_1.a), _wgslsmith_clamp_u32(97994u, 5884u, 20875u), _wgslsmith_add_i32(u_input.e.x, -45604i), -35763i, min(u_input.d.x, u_input.d.x))), false, all(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)))), vec4<bool>(!(!select(false, true, false)), all(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(false, true))), all(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), false), all(vec4<bool>(-681f <= _wgslsmith_f_op_f32(floor(1000f)), false, false, -2147483647i >= _wgslsmith_mod_i32(-1i, u_input.e.x))));
    global1 = array<Struct_1, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_2, _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(~0u, 25u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(global0[_wgslsmith_index_u32(55751u, 31u)])), global0[_wgslsmith_index_u32(~0u, 31u)], !var_3.x)) * vec3<f32>(var_2, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 25u)]), -1255f))), var_1.a);
}

