struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec2<u32>;

var<private> global2: array<u32, 19>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: vec2<f32>, arg_3: Struct_2) -> u32 {
    let var_0 = vec4<f32>(338f, arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(-1000f + arg_2.x)), _wgslsmith_f_op_f32(201f * -1780f), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(f32(-1f) * -152f))));
    let var_1 = vec2<bool>(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x))) < _wgslsmith_div_f32(1000f, var_0.x));
    return 1u;
}

fn func_2() -> vec3<u32> {
    let var_0 = Struct_1(firstTrailingBit(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.e, -23709i, -13814i), vec3<i32>(u_input.b, u_input.b, u_input.b)) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(17370i, u_input.b, 2147483647i), vec3<i32>(2147483647i, -1i, 0i)), _wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.e, -51678i, u_input.b), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, -17366i, u_input.b), vec3<i32>(-31791i, 0i, 2147483647i))))), all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1660f))))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1518f);
    global0 = vec2<u32>(_wgslsmith_div_u32(u_input.a.x, select(0u, ~(4294967295u >> (u_input.c % 32u)), var_0.b)), countOneBits(global0.x >> (0u % 32u)));
    global0 = vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(72465u, func_3(min(vec2<i32>(u_input.b, var_0.a.x), vec2<i32>(var_0.a.x, 83872i)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.c, var_0.c, var_0.c), vec3<f32>(var_0.c, 953f, 693f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(745f, var_0.c), vec2<f32>(var_0.c, var_0.c))), Struct_2(vec4<i32>(u_input.b, var_0.a.x, 31487i, u_input.e), var_0.b)), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.d.x, 5355u), 19u)], _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, global1.x, global0.x, 4294967295u), vec4<u32>(u_input.c, 4294967295u, u_input.d.x, global2[_wgslsmith_index_u32(global1.x, 19u)])), ~34953u)), vec4<u32>(firstTrailingBit(1u), select(abs(5897u), func_3(var_0.a.xy, vec3<f32>(var_0.c, 1381f, 116f), vec2<f32>(-551f, var_0.c), Struct_2(vec4<i32>(u_input.b, u_input.e, var_0.a.x, 1i), true)), var_0.b), _wgslsmith_div_u32(global0.x >> (20621u % 32u), 4294967295u), firstLeadingBit(0u))), global0.x);
    var var_2 = false;
    return vec3<u32>(4294967295u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(33019u, _wgslsmith_div_u32(global2[_wgslsmith_index_u32(u_input.d.x, 19u)], 19458u)), 79761u), _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a.x << (0u % 32u), _wgslsmith_sub_u32(54938u, global0.x)), global2[_wgslsmith_index_u32(~(~u_input.d.x), 19u)])), _wgslsmith_div_u32((global0.x & abs(global0.x)) >> (~0u % 32u), ~(u_input.a.x | u_input.d.x)));
}

fn func_4(arg_0: vec2<i32>, arg_1: f32, arg_2: vec3<u32>) -> Struct_2 {
    var var_0 = arg_2.zz;
    var var_1 = arg_2.x;
    var var_2 = Struct_2(-vec4<i32>(u_input.e, arg_0.x, ~2691i, -18235i), true | (!all(vec3<bool>(true, false, true)) & select(true, true, true)));
    let var_3 = arg_0.x;
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-2141f, arg_1, -1599f != arg_1)))))), _wgslsmith_f_op_f32(select(-958f, -1000f, select(any(vec3<bool>(false, var_2.b, var_2.b)), var_2.b, var_2.b) && var_2.b)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(f32(-1f) * -818f))), arg_1);
    return Struct_2(vec4<i32>(_wgslsmith_clamp_i32(72081i, firstLeadingBit(-3400i), 46646i << (global1.x % 32u)) ^ var_3, countOneBits(var_3), abs(u_input.e) << (reverseBits(4294967295u) % 32u), ~var_3), false);
}

fn func_1(arg_0: u32) -> u32 {
    let var_0 = func_4(vec2<i32>(_wgslsmith_add_i32(-u_input.b, select(u_input.e, -14766i, true)), ~1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1537f + -832f)), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(min(vec3<u32>(u_input.d.x, 1u, global2[_wgslsmith_index_u32(88743u, 19u)]), vec3<u32>(u_input.d.x, 0u, global2[_wgslsmith_index_u32(global1.x, 19u)])), vec3<u32>(global0.x, global2[_wgslsmith_index_u32(global1.x, 19u)], 5421u)), ~select(vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(2344u, 19u)], global1.x), vec3<u32>(global1.x, 4294967295u, 54597u), vec3<bool>(false, true, false)), _wgslsmith_sub_vec3_u32(func_2(), ~vec3<u32>(arg_0, 0u, 4294967295u))) | vec3<u32>(global0.x, global1.x, global1.x));
    let var_1 = vec2<u32>(_wgslsmith_mod_u32(~4294967295u, _wgslsmith_div_u32(1u, global2[_wgslsmith_index_u32(min(4294967295u, 5637u), 19u)])), global0.x);
    var var_2 = _wgslsmith_dot_vec3_i32(var_0.a.yzz, vec3<i32>(reverseBits(var_0.a.x), select(55635i, var_0.a.x, var_0.b), -u_input.e) | var_0.a.xzx) ^ u_input.e;
    global0 = ~var_1;
    var var_3 = Struct_2(~(~(vec4<i32>(u_input.e, 1i, 2147483647i, u_input.b) | ~var_0.a)), true);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 19>();
    let var_0 = ~(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~15698u, ~global0.x, global0.x | 0u), vec4<u32>(~global0.x, global1.x >> (global2[_wgslsmith_index_u32(global1.x, 19u)] % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(88182u, 6214u, 35946u, 4294967295u), vec4<u32>(global2[_wgslsmith_index_u32(u_input.c, 19u)], global2[_wgslsmith_index_u32(0u, 19u)], 1u, 3019u)), func_1(global0.x))) >> (global1.x % 32u));
    var var_1 = -vec3<i32>(2147483647i, _wgslsmith_sub_i32(u_input.b, -62442i), ~(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, -1i)) << (u_input.a.x % 32u)));
    global0 = ~u_input.d;
    let var_2 = _wgslsmith_f_op_f32(778f * -651f);
    var var_3 = func_4(reverseBits(select(firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(3018i, u_input.e), vec2<i32>(-2147483647i, var_1.x))), var_1.xz, all(vec2<bool>(true, true)))), var_2, ~(~vec3<u32>(0u, global1.x, 0u)) << (~(countOneBits(vec3<u32>(23407u, 0u, 11070u)) << (reverseBits(vec3<u32>(38411u, u_input.a.x, global2[_wgslsmith_index_u32(global1.x, 19u)])) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_4 = -vec4<i32>(abs(1i), var_3.a.x, -7999i, _wgslsmith_mult_i32(var_1.x, ~var_1.x)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_div_u32(117224u, global1.x), _wgslsmith_mult_u32(110107u ^ global2[_wgslsmith_index_u32(u_input.a.x, 19u)], global1.x ^ 0u), ~(~10402u), 2907u), select((vec4<u32>(var_0, 0u, 0u, 4294967295u) & vec4<u32>(30584u, 11249u, var_0, var_0)) ^ ~vec4<u32>(48134u, 0u, 0u, 0u), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(1u, global0.x, 0u, u_input.a.x)), vec4<u32>(5370u, 6313u, global1.x, var_0), _wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, 1u, global1.x, 6217u), vec4<u32>(global2[_wgslsmith_index_u32(76364u, 19u)], 3817u, global0.x, 61828u))), true)) % vec4<u32>(32u));
    let var_5 = ~0u;
    var var_6 = min(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(39679u, var_0), ~u_input.a, _wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.x, 19u)], 19u)], var_0))), ~((vec2<u32>(4294967295u, var_0) ^ vec2<u32>(global2[_wgslsmith_index_u32(3449u, 19u)], var_0)) ^ func_2().xy)), ~min(u_input.a, ~vec2<u32>(global2[_wgslsmith_index_u32(global0.x, 19u)], 10138u) >> (~vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 19u)], 4294967295u) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(var_2 + 1890f)), reverseBits(vec4<i32>((1i & var_3.a.x) ^ ~(-1i), _wgslsmith_div_i32(var_3.a.x, ~var_1.x), var_1.x, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, var_4.x, var_4.x, u_input.b), vec4<i32>(2147483647i, var_1.x, var_4.x, 18602i)), -vec4<i32>(u_input.b, var_3.a.x, u_input.e, var_1.x)))), var_4.x, vec2<i32>(var_4.x, func_4(var_4.yz, var_2, vec3<u32>(16088u, global0.x, u_input.c)).a.x >> (select(20023u, 34934u, var_3.b) % 32u)) << (abs(~u_input.a >> (abs(vec2<u32>(var_0, 1u)) % vec2<u32>(32u))) % vec2<u32>(32u)), vec3<i32>(-func_4(-var_1.zx, _wgslsmith_div_f32(var_2, var_2), ~vec3<u32>(37945u, 54527u, var_6.x)).a.x, -9625i, ~_wgslsmith_clamp_i32(~(-2147483647i), _wgslsmith_div_i32(var_4.x, 0i), 1i)));
}

