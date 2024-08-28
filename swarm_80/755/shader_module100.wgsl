struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: i32,
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

var<private> global0: array<Struct_3, 20>;

var<private> global1: vec2<f32> = vec2<f32>(-163f, 1675f);

var<private> global2: vec2<f32>;

var<private> global3: array<u32, 30> = array<u32, 30>(35545u, 9337u, 0u, 29784u, 16398u, 4294967295u, 1u, 0u, 0u, 0u, 0u, 4294967295u, 4294967295u, 17736u, 65882u, 0u, 4294967295u, 109894u, 4294967295u, 1u, 0u, 89369u, 13260u, 44652u, 0u, 1u, 4294967295u, 18948u, 4294967295u, 39492u);

var<private> global4: array<i32, 30> = array<i32, 30>(2147483647i, 41060i, 31268i, -2137i, 0i, i32(-2147483648), 29963i, -1i, i32(-2147483648), -41756i, 1i, 0i, -52694i, 2147483647i, 44321i, 0i, -4528i, -1i, 3052i, 36307i, 20963i, 0i, -1631i, 1i, -85109i, -1i, i32(-2147483648), 0i, -1419i, 26924i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> i32 {
    global0 = array<Struct_3, 20>();
    let var_0 = _wgslsmith_f_op_f32(step(global2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(2531f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.x, 1454f))))));
    var var_1 = Struct_2(arg_1.a);
    global0 = array<Struct_3, 20>();
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1042f, 1135f), vec2<f32>(global2.x, global2.x))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2600f, -851f))))), arg_0.a.a)))));
    return 34413i;
}

fn func_2() -> Struct_3 {
    let var_0 = firstLeadingBit(~u_input.a.yz);
    let var_1 = firstLeadingBit(_wgslsmith_div_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 31365u, 33519u, 8943u), ~vec4<u32>(0u, global3[_wgslsmith_index_u32(50553u, 30u)], u_input.a.x, 0u)), ~_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(u_input.a.x, 30u)], var_0.x, u_input.a.x, 64897u), vec4<u32>(u_input.a.x, 10567u, 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(47165u, 30u)], 30u)])), abs(vec4<u32>(global3[_wgslsmith_index_u32(u_input.b, 30u)], 6236u, var_0.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 30u)], 30u)])), vec4<u32>(0u, 1u, u_input.b, var_0.x))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2498f, -678f, any(vec4<bool>(false, true, true, true))))), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_div_f32(-215f, _wgslsmith_f_op_f32(-global1.x)));
    let var_3 = Struct_2(firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(u_input.d, global4[_wgslsmith_index_u32(66281u, 30u)]), -4798i, u_input.d, 50784i), vec4<i32>(u_input.c << (0u % 32u), func_3(global0[_wgslsmith_index_u32(4294967295u, 20u)], Struct_2(vec4<i32>(-2147483647i, -1i, -41894i, 64591i))), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, global4[_wgslsmith_index_u32(u_input.a.x, 30u)], global4[_wgslsmith_index_u32(816u, 30u)], u_input.d), vec4<i32>(u_input.c, u_input.d, global4[_wgslsmith_index_u32(var_1.x, 30u)], global4[_wgslsmith_index_u32(1u, 30u)])), _wgslsmith_clamp_i32(2147483647i, global4[_wgslsmith_index_u32(1u, 30u)], u_input.c)))));
    var var_4 = var_1;
    return global0[_wgslsmith_index_u32(var_1.x | (_wgslsmith_add_u32(abs(abs(86456u)), ~_wgslsmith_add_u32(var_1.x, 1u)) | ~(~(4294967295u >> (var_0.x % 32u)))), 20u)];
}

fn func_1(arg_0: vec4<u32>) -> i32 {
    var var_0 = func_2();
    var_0 = Struct_3(var_0.a, vec4<bool>(global2.x == -1449f, any(vec3<bool>(true, true, true)), var_0.b.x & (!var_0.b.x | true), !all(func_2().b.xy)));
    var var_1 = 1u;
    global4 = array<i32, 30>();
    var var_2 = func_2();
    return -31463i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_clamp_vec4_i32(select(_wgslsmith_add_vec4_i32(vec4<i32>(18440i, -1i, global4[_wgslsmith_index_u32(0u, 30u)], 13379i) >> (vec4<u32>(u_input.b, 50357u, 0u, 0u) % vec4<u32>(32u)), vec4<i32>(0i, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 30u)], 30u)], 30u)], 48361i, 1506i)), _wgslsmith_add_vec4_i32(~vec4<i32>(u_input.d, 0i, 17887i, u_input.d), reverseBits(vec4<i32>(global4[_wgslsmith_index_u32(u_input.a.x, 30u)], 0i, 2147483647i, 2147483647i))), true), ~(-_wgslsmith_sub_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(u_input.a.x, 30u)], 1i, -1978i, u_input.c), vec4<i32>(u_input.d, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 30u)], 30u)], global4[_wgslsmith_index_u32(u_input.b, 30u)], 2051i))), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_add_i32(-1i, u_input.c), min(-1i, u_input.c), countOneBits(global4[_wgslsmith_index_u32(0u, 30u)])), vec4<i32>(func_1(vec4<u32>(66315u, global3[_wgslsmith_index_u32(34495u, 30u)], u_input.b, 47351u)), -u_input.c, u_input.c, func_1(vec4<u32>(u_input.b, u_input.b, global3[_wgslsmith_index_u32(0u, 30u)], 4294967295u))), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.d, -17175i, global4[_wgslsmith_index_u32(19916u, 30u)]), vec4<i32>(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(23760u, 30u)], 30u)], 6752i, u_input.d, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(49482u, 30u)], 30u)])))));
    let var_1 = Struct_2(var_0.a);
    let var_2 = var_0.a;
    var var_3 = firstLeadingBit(reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), var_1.a.wx >> (vec2<u32>(5426u, global3[_wgslsmith_index_u32(u_input.b, 30u)]) % vec2<u32>(32u))) | -vec2<i32>(2147483647i, 1i)));
    let var_4 = _wgslsmith_mod_i32(~var_0.a.x, -min(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, var_0.a.x, var_3.x), vec3<i32>(var_3.x, -43576i, -1i) << (vec3<u32>(u_input.a.x, 4644u, global3[_wgslsmith_index_u32(4294967295u, 30u)]) % vec3<u32>(32u))), _wgslsmith_mult_i32(global4[_wgslsmith_index_u32(u_input.b, 30u)] << (4294967295u % 32u), 2147483647i)));
    let var_5 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -680f, global2.x, global2.x) * vec4<f32>(global2.x, 813f, -216f, -1632f)))) * vec4<f32>(global2.x, 234f, global2.x, _wgslsmith_f_op_f32(trunc(global2.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-962f, 1700f, global2.x, global2.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 1000f, -902f, global1.x) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(779f, global2.x, global1.x, global1.x))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global2.x, -474f, global1.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1148f, 361f, -1432f, 1000f)))))));
    global3 = array<u32, 30>();
    var var_6 = _wgslsmith_mult_vec3_u32(vec3<u32>(39602u, 22092u, global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.a.x, u_input.b), 30u)]), _wgslsmith_sub_vec3_u32(vec3<u32>(~1u, func_2().a.b.x, 38574u ^ u_input.b), _wgslsmith_sub_vec3_u32(u_input.a >> (vec3<u32>(33254u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 30u)], 30u)], 24279u) % vec3<u32>(32u)), ~vec3<u32>(global3[_wgslsmith_index_u32(u_input.b, 30u)], global3[_wgslsmith_index_u32(4294967295u, 30u)], 0u)))) | u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(-(~(var_0.a.x >> (24421u % 32u))), -27289i));
}

