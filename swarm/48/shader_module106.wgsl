struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16>;

var<private> global1: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global2: vec3<f32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    global1 = arg_0.a;
    global2 = vec3<f32>(960f, _wgslsmith_f_op_f32(f32(-1f) * -1541f), _wgslsmith_f_op_f32(-global2.x));
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(278f, global2.x, global2.x) * vec3<f32>(global2.x, global2.x, global2.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -753f, 243f) + vec3<f32>(871f, 1356f, 365f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-946f, global2.x, global2.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-1128f, -1102f, 1000f), vec3<f32>(417f, 720f, 105f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-global2.x), -532f, global2.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2.x, -485f, global2.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-525f, 1914f, 2360f))), all(vec4<bool>(false, arg_0.a.x, global1.x, global1.x))))));
    let var_0 = arg_0.b.d.x;
    let var_1 = arg_1.a.wyw;
    return 1167f;
}

fn func_2() -> bool {
    global2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(529f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(-global2.x)))), global2.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(Struct_2(!vec4<bool>(false, global1.x, global1.x, global1.x), Struct_1(false, 68668u, 35200u, vec4<i32>(1i, u_input.a, u_input.a, global0[_wgslsmith_index_u32(54220u, 16u)])), true), Struct_2(select(vec4<bool>(global1.x, false, global1.x, true), vec4<bool>(false, false, false, false), global1.x), Struct_1(global1.x, u_input.d.x, 0u, vec4<i32>(-37148i, global0[_wgslsmith_index_u32(0u, 16u)], u_input.a, u_input.a)), 638f >= global2.x))), global2.x)));
    global0 = array<i32, 16>();
    var var_0 = 4294967295u;
    let var_1 = _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(global0[_wgslsmith_index_u32(0u, 16u)], u_input.a, -1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 16u)], global0[_wgslsmith_index_u32(u_input.b, 16u)], global0[_wgslsmith_index_u32(39017u, 16u)]), vec3<i32>(1i, -2147483647i, 43363i), vec3<i32>(global0[_wgslsmith_index_u32(0u, 16u)], -3558i, u_input.a))), vec3<i32>(42959i, global0[_wgslsmith_index_u32(u_input.c.x, 16u)], -1i) ^ vec3<i32>(41775i, u_input.a, u_input.a)), vec3<i32>(~global0[_wgslsmith_index_u32(4294967295u, 16u)], -2147483647i, firstTrailingBit(global0[_wgslsmith_index_u32(u_input.d.x, 16u)])) & vec3<i32>(~u_input.a, abs(u_input.a), _wgslsmith_div_i32(u_input.a, global0[_wgslsmith_index_u32(u_input.d.x, 16u)]))) >> (u_input.d % vec3<u32>(32u));
    let var_2 = Struct_1(all(vec2<bool>(true, !(global1.x || global1.x))), ~(~(~(~u_input.c.x))), _wgslsmith_dot_vec3_u32(reverseBits(~vec3<u32>(1u, u_input.d.x, 4294967295u) ^ u_input.d), _wgslsmith_mod_vec3_u32(vec3<u32>(~1u, ~4294967295u, ~34931u), vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(u_input.d.x, 0u, u_input.c.x)), 4294967295u, _wgslsmith_div_u32(u_input.c.x, 0u)))), -vec4<i32>(_wgslsmith_mult_i32(u_input.a, var_1.x), abs(2147483647i), _wgslsmith_sub_i32(0i, u_input.a), var_1.x) | reverseBits(vec4<i32>(-2147483647i, -14770i, var_1.x | u_input.a, u_input.a)));
    return all(select(!select(vec4<bool>(true, var_2.a, var_2.a, false), !vec4<bool>(false, global1.x, true, false), !vec4<bool>(true, true, var_2.a, var_2.a)), !vec4<bool>(!global1.x, false, false, !global1.x), !any(vec2<bool>(global1.x, var_2.a))));
}

fn func_1(arg_0: i32) -> vec4<bool> {
    global0 = array<i32, 16>();
    var var_0 = Struct_1(func_2(), _wgslsmith_clamp_u32(_wgslsmith_add_u32((u_input.c.x | u_input.d.x) << (4294967295u % 32u), ~firstTrailingBit(u_input.b)), _wgslsmith_add_u32(~(~6964u), 2213u ^ ~u_input.c.x), _wgslsmith_mult_u32(50752u, u_input.d.x)), u_input.d.x, ~countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.b, 16u)], u_input.a, u_input.a), vec4<i32>(-27154i, 0i, 0i, -2147483647i)) ^ _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, global0[_wgslsmith_index_u32(15750u, 16u)], -60830i), vec4<i32>(-13945i, global0[_wgslsmith_index_u32(0u, 16u)], u_input.a, u_input.a))));
    var var_1 = Struct_2(select(vec4<bool>(true, true, true, true), select(vec4<bool>(var_0.a, !global1.x, all(global1.wy), false), select(!vec4<bool>(true, var_0.a, true, true), vec4<bool>(true, false, true, true), all(vec3<bool>(true, var_0.a, var_0.a))), !select(vec4<bool>(false, var_0.a, true, true), vec4<bool>(var_0.a, false, false, true), vec4<bool>(global1.x, false, false, var_0.a))), !select(vec4<bool>(global1.x, false, false, global1.x), !vec4<bool>(global1.x, true, global1.x, true), select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(var_0.a, true, var_0.a, global1.x), vec4<bool>(false, false, global1.x, true)))), Struct_1((~53485u > (var_0.b >> (u_input.c.x % 32u))) & global1.x, var_0.b, 15992u, ~(~_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0, u_input.a, 48103i, u_input.a), var_0.d))), var_0.a);
    var var_2 = Struct_1(any(global1.wy) && false, _wgslsmith_sub_u32(5111u, _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(0u, var_0.c)) | firstLeadingBit(4294967295u)) << (var_1.b.c % 32u), var_0.c, -vec4<i32>(_wgslsmith_add_i32(var_0.d.x ^ -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -11625i, global0[_wgslsmith_index_u32(9735u, 16u)]), var_1.b.d.yww)), var_1.b.d.x, ~_wgslsmith_div_i32(117741i, var_1.b.d.x), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a, -24420i, 1i, arg_0)), ~vec4<i32>(14776i, 0i, -2147483647i, arg_0))));
    var var_3 = var_1.b;
    return vec4<bool>(var_1.a.x, true, any(select(global1.zwx, !vec3<bool>(var_1.a.x, var_0.a, false), var_1.c)), (_wgslsmith_sub_i32(0i, var_2.d.x) >> ((firstTrailingBit(25481u) | 43462u) % 32u)) != _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(var_0.d, vec4<i32>(var_1.b.d.x, 0i, global0[_wgslsmith_index_u32(var_0.b, 16u)], arg_0)) << (var_1.b.b % 32u), -1i));
}

fn func_4(arg_0: Struct_2) -> StorageBuffer {
    let var_0 = Struct_1(true, _wgslsmith_div_u32(max(_wgslsmith_sub_u32(reverseBits(arg_0.b.b), 0u), 0u), _wgslsmith_sub_u32(~(9244u & arg_0.b.c), max(abs(arg_0.b.b), 1u))), firstLeadingBit(~4294967295u), -vec4<i32>(u_input.a, reverseBits(_wgslsmith_dot_vec3_i32(arg_0.b.d.xyw, arg_0.b.d.yyx)), reverseBits(-u_input.a), abs(i32(-1i) * -12736i)));
    var var_1 = 1403f;
    return StorageBuffer(firstLeadingBit(arg_0.b.c), vec4<i32>(firstLeadingBit(abs(u_input.a)), -var_0.d.x, ~_wgslsmith_div_i32(-2147483647i, global0[_wgslsmith_index_u32(0u, 16u)]), 1i) << (max(vec4<u32>(_wgslsmith_sub_u32(arg_0.b.c, arg_0.b.c), 57298u, var_0.b, 39888u), vec4<u32>(12825u, 4294967295u, 13460u, u_input.c.x) ^ vec4<u32>(arg_0.b.b, u_input.d.x, var_0.c, var_0.c)) % vec4<u32>(32u)), i32(-1i) * -_wgslsmith_sub_i32(-1i, -u_input.a), 8583i, arg_0.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.zy;
    let x = u_input.a;
    s_output = func_4(Struct_2(!select(func_1(2318i), !vec4<bool>(false, false, global1.x, global1.x), global2.x <= 924f), Struct_1(false, ~(~u_input.c.x), reverseBits(1u), ~(vec4<i32>(u_input.a, u_input.a, global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(1u, 16u)]) ^ vec4<i32>(0i, 0i, u_input.a, -134i))), true));
}

