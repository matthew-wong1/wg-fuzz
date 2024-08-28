struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec3<i32>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(-1i, vec3<f32>(-2280f, -2071f, -657f));

var<private> global1: vec3<u32> = vec3<u32>(14552u, 4294967295u, 31528u);

var<private> global2: array<f32, 4> = array<f32, 4>(418f, 1514f, -175f, 937f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<f32>) -> vec2<u32> {
    let var_0 = -select(u_input.a, _wgslsmith_div_vec3_i32(firstLeadingBit(~vec3<i32>(u_input.a.x, -20743i, u_input.b.x)), vec3<i32>(firstLeadingBit(2147483647i), global0.a | 2147483647i, ~global0.a)), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true))), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), all(vec3<bool>(true, true, false)))));
    var var_1 = !(!(_wgslsmith_div_u32(global1.x, global1.x) > _wgslsmith_mod_u32(42859u, ~54225u)));
    var var_2 = -_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, reverseBits(-54004i), var_0.x), _wgslsmith_add_vec3_i32(firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, -50472i, global0.a), u_input.a)), vec3<i32>(-7633i, _wgslsmith_div_i32(global0.a, 0i), i32(-1i) * -43777i)));
    return vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(global1.x, global1.x, global1.x, 1u), ~vec4<u32>(global1.x, global1.x, 51359u, 0u)) | 4294967295u, ~global1.x) & global1.zz;
}

fn func_2() -> Struct_4 {
    global2 = array<f32, 4>();
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -698f);
    global1 = select(vec3<u32>(1u, ~global1.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(func_3(vec4<f32>(-236f, global2[_wgslsmith_index_u32(42960u, 4u)], global0.b.x, -867f)), _wgslsmith_sub_vec2_u32(global1.zy, vec2<u32>(global1.x, global1.x))), max(global1.x, 23476u))), ~_wgslsmith_div_vec3_u32(select(vec3<u32>(global1.x, global1.x, global1.x) << (vec3<u32>(global1.x, global1.x, global1.x) % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(4294967295u, global1.x, global1.x)), vec3<bool>(true, true, true)), vec3<u32>(~55627u, global1.x, _wgslsmith_div_u32(4294967295u, global1.x))), !select(vec3<bool>(any(vec4<bool>(true, true, true, true)), global0.b.x < global2[_wgslsmith_index_u32(global1.x, 4u)], all(vec4<bool>(true, true, true, false))), !select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true)));
    global0 = Struct_3(abs(0i), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0.b.x)), _wgslsmith_f_op_f32(round(global0.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -1198f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-448f, global2[_wgslsmith_index_u32(24238u, 4u)], 601f), vec3<f32>(global0.b.x, var_0, global2[_wgslsmith_index_u32(1u, 4u)]))), _wgslsmith_f_op_vec3_f32(global0.b + global0.b)))));
    var var_1 = _wgslsmith_add_vec3_u32(~(~(~(~vec3<u32>(0u, 33534u, global1.x)))), vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(global1.yx, global1.zx), vec2<u32>(75529u, global1.x)), ~reverseBits(0u), firstTrailingBit(~18021u)) & vec3<u32>(global1.x, firstTrailingBit(~global1.x), reverseBits(global1.x << (global1.x % 32u))));
    return Struct_4(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 67859u, var_1.x), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, global1.x, var_1.x, 0u), vec4<u32>(var_1.x, global1.x, 17400u, 81900u)), _wgslsmith_mod_u32(global1.x, 40074u)), (0u & global1.x) | (var_1.x | var_1.x), global1.x)), Struct_3(max(1599i, select(-2147483647i, 21441i, true) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a, 2147483647i, 0i, 0i), vec4<i32>(u_input.b.x, 2147483647i, -2147483647i, -1i))), vec3<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global1.zz, var_1.yy), 4u)] * _wgslsmith_f_op_f32(max(-824f, global0.b.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-720f)))), _wgslsmith_f_op_f32(floor(var_0)))));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: vec4<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(30203i, 1i), firstLeadingBit(min(vec2<i32>(i32(-1i) * -2147483647i, global0.a), reverseBits(max(vec2<i32>(55525i, 2147483647i), vec2<i32>(global0.a, arg_1.x))))));
    let var_1 = arg_0;
    let var_2 = arg_2;
    var var_3 = func_2();
    var var_4 = ~vec3<u32>(0u, arg_0.a, arg_2.e.x);
    return Struct_2(419f, _wgslsmith_f_op_vec3_f32(func_2().b.b - var_3.b.b), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_2.b))))), var_2.d, vec2<u32>(72869u, var_3.a << (reverseBits(~2110u) % 32u)));
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    let var_0 = func_4(func_2(), select(vec4<i32>(-1i) * -vec4<i32>(global0.a, u_input.a.x, u_input.b.x, u_input.a.x), ~vec4<i32>(global0.a, u_input.a.x, global0.a, 21573i), true) | vec4<i32>(-global0.a, abs(u_input.b.x), (global0.a & u_input.a.x) | 2147483647i, global0.a), Struct_2(1944f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(1u, 4u)], global0.b.x, -1122f) + vec3<f32>(471f, -319f, global0.b.x)), _wgslsmith_f_op_vec3_f32(-global0.b)))), _wgslsmith_f_op_vec3_f32(-global0.b), Struct_1(false, ~(vec3<i32>(1i, 2147483647i, u_input.b.x) & vec3<i32>(global0.a, 14085i, 9697i)), min(~vec3<i32>(u_input.b.x, 4293i, 7225i), u_input.a), global0.b.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.b.x, global0.b.x, -355f, 726f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-988f, global0.b.x, -1177f, -507f) + vec4<f32>(global2[_wgslsmith_index_u32(global1.x, 4u)], global0.b.x, global0.b.x, global0.b.x)))), (~arg_0.zy ^ global1.zx) & vec2<u32>(_wgslsmith_mod_u32(arg_0.x, 11051u), 1u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(global1.x << (global1.x % 32u), 4u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(32207u, 4u)] * global0.b.x), global2[_wgslsmith_index_u32(global1.x, 4u)], -595f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-690f, 641f, global2[_wgslsmith_index_u32(47862u, 4u)], global0.b.x), vec4<f32>(-683f, 817f, global2[_wgslsmith_index_u32(101557u, 4u)], global2[_wgslsmith_index_u32(15230u, 4u)]), true)))) - vec4<f32>(_wgslsmith_div_f32(573f, global2[_wgslsmith_index_u32(4294967295u, 4u)]), 987f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.b.x))), -1767f)));
    global1 = select(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_0, _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.x, arg_0.x, 55148u), arg_0, ~vec3<u32>(1u, 101079u, arg_0.x)), ~vec3<u32>(global1.x, arg_0.x, var_0.e.x)), ~arg_0), abs(~max(vec3<u32>(23191u, 70308u, global1.x), arg_0) << (abs(vec3<u32>(var_0.e.x, 0u, var_0.e.x)) % vec3<u32>(32u))), all(vec3<bool>(select(all(vec3<bool>(true, var_0.d.a, true)), var_0.d.a || true, any(vec4<bool>(var_0.d.a, false, var_0.d.a, false))), false, any(select(vec4<bool>(var_0.d.a, true, var_0.d.a, var_0.d.a), vec4<bool>(var_0.d.a, false, false, true), vec4<bool>(var_0.d.a, false, false, var_0.d.a))))));
    var var_1 = vec4<i32>(-33179i, 401i, 1i, 10454i);
    let var_2 = ~(-25053i);
    let var_3 = _wgslsmith_div_i32(-var_1.x, reverseBits(_wgslsmith_add_i32(12800i, var_1.x)));
    return var_0.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mod_i32(23862i, -abs(min(-2147483647i, -1i)));
    global1 = select(~(~countOneBits(vec3<u32>(global1.x, 4294967295u, global1.x))), ~(~vec3<u32>(~global1.x, _wgslsmith_mult_u32(0u, 53549u), func_1(vec3<u32>(16499u, global1.x, 21644u)))), true);
    let var_1 = _wgslsmith_f_op_f32(ceil(-179f));
    var var_2 = _wgslsmith_add_i32(~_wgslsmith_mult_i32(~func_4(Struct_4(global1.x, Struct_3(u_input.b.x, global0.b)), vec4<i32>(global0.a, u_input.b.x, -949i, 56973i), Struct_2(-1000f, vec3<f32>(global2[_wgslsmith_index_u32(global1.x, 4u)], 238f, global0.b.x), vec3<f32>(global2[_wgslsmith_index_u32(69787u, 4u)], var_1, global0.b.x), Struct_1(false, u_input.a, u_input.a, var_1, vec4<f32>(-1000f, 196f, -560f, 1437f)), global1.zz), vec4<f32>(var_1, -334f, -758f, -501f)).d.b.x, -global0.a), select(_wgslsmith_mult_i32(-(i32(-1i) * -1i), u_input.a.x), ~func_2().b.a, any(vec4<bool>(true, any(vec2<bool>(false, true)), true, any(vec2<bool>(false, true))))));
    let var_3 = Struct_4(0u, Struct_3(-1i, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(971f + global0.b.x), -678f, global0.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(0u, 4u)], 872f, 725f)) * vec3<f32>(global2[_wgslsmith_index_u32(global1.x, 4u)], -165f, var_1)))));
    let var_4 = !select(vec3<bool>(true && any(vec4<bool>(true, true, true, false)), ~(-32409i) <= global0.a, 50597u < var_3.a), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true)))));
    var var_5 = global1.x;
    var var_6 = vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, global1.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, global1.x, 1u, global1.x), vec4<u32>(4294967295u, global1.x, 4294967295u, 18884u))), ~vec3<u32>(28226u, var_3.a, 1u)), ~func_1(_wgslsmith_mod_vec3_u32(vec3<u32>(var_3.a, global1.x, 97698u) ^ vec3<u32>(0u, var_3.a, 2896u), firstLeadingBit(vec3<u32>(0u, global1.x, var_3.a)))), 4294967295u | (select(var_3.a, 49402u, false) >> (var_3.a % 32u)), global1.x >> (~_wgslsmith_dot_vec3_u32(~vec3<u32>(8337u, var_3.a, 1u), vec3<u32>(1u, 4380u, 170527u)) % 32u));
    let var_7 = global0.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, select(select(vec4<i32>(_wgslsmith_div_i32(28148i, global0.a), -global0.a, ~0i, -19392i), vec4<i32>(0i, global0.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, var_3.b.a, 1i), u_input.a), -var_3.b.a), all(var_4.yz) & true), vec4<i32>(43250i, ~(~u_input.b.x), -2147483647i, -global0.a | 1i), !select(select(vec4<bool>(false, false, var_4.x, false), vec4<bool>(true, false, var_4.x, var_4.x), vec4<bool>(var_4.x, var_4.x, var_4.x, var_4.x)), !vec4<bool>(var_4.x, var_4.x, true, var_4.x), !vec4<bool>(true, true, var_4.x, var_4.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-668f, 334f, -707f, global0.b.x)))))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_2().b.b.x), global2[_wgslsmith_index_u32(var_6.x, 4u)]), _wgslsmith_f_op_f32(sign(-184f))));
}

