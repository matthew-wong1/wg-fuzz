struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9> = array<f32, 9>(689f, 1440f, -374f, -546f, 392f, -1834f, 624f, 692f, -606f);

var<private> global1: array<Struct_1, 21>;

var<private> global2: f32 = -524f;

var<private> global3: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(i32(-2147483648)), Struct_1(-52782i), Struct_1(-9349i), Struct_1(-33550i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: vec3<u32>) -> u32 {
    global0 = array<f32, 9>();
    global1 = array<Struct_1, 21>();
    var var_0 = 668f;
    let var_1 = _wgslsmith_div_i32(_wgslsmith_div_i32(-min(-1i, u_input.b), ~_wgslsmith_sub_i32(_wgslsmith_sub_i32(10570i, arg_1.a), arg_2)), u_input.c);
    let var_2 = arg_1;
    return 680u;
}

fn func_3(arg_0: bool, arg_1: i32) -> i32 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(971f, _wgslsmith_f_op_f32(-428f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(0u, 9u)])))))));
    var var_0 = min(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_mod_vec4_u32(select(~vec4<u32>(16153u, 1u, 42124u, 22106u), vec4<u32>(1u, 1u, 1u, 1u), arg_0) ^ ~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(~37381u, 0u, reverseBits(~0u), 1u)));
    var_0 = ~(~firstTrailingBit(abs(abs(vec4<u32>(var_0.x, var_0.x, 1u, 4294967295u)))));
    return abs(-1i);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: vec3<u32>) -> f32 {
    var var_0 = 4294967295u;
    global2 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(reverseBits(arg_3.x), 9u)]);
    var var_1 = ~arg_3;
    global3 = array<Struct_1, 4>();
    var_1 = vec3<u32>(arg_3.x, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(~18108u, arg_3.x & 44810u, var_1.x, func_2(global0[_wgslsmith_index_u32(arg_1, 9u)], Struct_1(1i), u_input.a, vec3<u32>(arg_3.x, arg_3.x, var_1.x)))), vec4<u32>(_wgslsmith_div_u32(firstTrailingBit(70810u), 9797u), 23312u, arg_3.x << (4294967295u % 32u), 4438u)), var_1.x);
    return global0[_wgslsmith_index_u32(reverseBits(firstTrailingBit(arg_1) & ~firstLeadingBit(~0u)), 9u)];
}

fn func_1(arg_0: f32) -> u32 {
    global2 = _wgslsmith_f_op_f32(func_4(global1[_wgslsmith_index_u32(~func_2(global0[_wgslsmith_index_u32(1u, 9u)], Struct_1(u_input.b), -u_input.a, firstLeadingBit(vec3<u32>(56625u, 61163u, 0u))) ^ ~(4294967295u >> (1u % 32u)), 21u)], ~24299u, Struct_1(abs(_wgslsmith_sub_i32(u_input.b, func_3(true, 2147483647i)))), vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, 47047u), 1u, abs(1u)), abs(1u), 1u), ~(~1u), ~(~(~42971u)))));
    var var_0 = Struct_1(abs(-countOneBits(firstTrailingBit(-22651i))));
    let var_1 = global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(~(~22351u), countOneBits(_wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, 4294967295u), select(4294967295u, 1u, false)))), 4u)];
    var var_2 = ~max(vec2<i32>(1i, 1i), vec2<i32>(2147483647i, -reverseBits(var_1.a)));
    let var_3 = _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 4961u), ~(~select(_wgslsmith_clamp_vec3_u32(vec3<u32>(51555u, 0u, 0u), vec3<u32>(35068u, 26364u, 4294967295u), vec3<u32>(4294967295u, 0u, 45513u)), ~vec3<u32>(64594u, 1u, 0u), true)));
    return countOneBits(~abs(var_3 | _wgslsmith_div_u32(0u, 85489u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(532f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(714f))))), _wgslsmith_f_op_f32(round(745f)), global0[_wgslsmith_index_u32(~(~func_1(1012f)), 9u)]), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1568f, global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)])))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(3757u, 9u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(33278u, 9u)] * global0[_wgslsmith_index_u32(84136u, 9u)]), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(55766u, 10440u), 9u)])))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, any(vec2<bool>(false, false)), select(true, false, true)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true))), ~1u > ~func_1(-1000f))));
    let var_1 = Struct_1(u_input.a);
    global1 = array<Struct_1, 21>();
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(~max(_wgslsmith_sub_u32(60976u, 6672u), _wgslsmith_div_u32(1u, 4294967295u)), 9u)]))));
    let var_3 = global3[_wgslsmith_index_u32(1u | _wgslsmith_mod_u32(~5495u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 52530u), firstLeadingBit(vec2<u32>(1u, 52193u))) >> (_wgslsmith_mod_u32(4294967295u, ~0u) % 32u)), 4u)];
    let var_4 = _wgslsmith_mod_i32(-reverseBits(var_1.a), _wgslsmith_sub_i32(-34387i, firstTrailingBit(max(min(var_1.a, u_input.c), -1i))));
    let var_5 = select(select(vec3<u32>(_wgslsmith_add_u32(58738u, 62293u), func_2(307f, var_1, -22379i, vec3<u32>(43438u, 73295u, 9321u)), 1u), max(~vec3<u32>(0u, 0u, 0u), abs(vec3<u32>(39820u, 4294967295u, 44444u))), vec3<bool>(true, true, true)), _wgslsmith_add_vec3_u32(vec3<u32>(countOneBits(0u), _wgslsmith_div_u32(34942u, 18136u), countOneBits(36645u)), ~max(vec3<u32>(4508u, 62027u, 68584u), vec3<u32>(1u, 0u, 44177u))), vec3<bool>(var_0.x < _wgslsmith_f_op_f32(f32(-1f) * -427f), true, select(false, true, true) && true)) | vec3<u32>(4294967295u ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(419u, 40591u, 7204u, 1u), vec4<u32>(29641u, 20070u, 50128u, 4294967295u)), ~_wgslsmith_clamp_u32(~14983u, ~38479u, 1u), 1u);
    global3 = array<Struct_1, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, ~countOneBits(vec2<u32>(1u, _wgslsmith_mult_u32(var_5.x, 0u))), ~(vec3<i32>(1i, countOneBits(u_input.a), 1i) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(29242i, -62133i, -1i), -vec3<i32>(var_3.a, 30776i, var_4))), _wgslsmith_dot_vec2_i32(vec2<i32>(min(var_4, -17767i), i32(-1i) * -10551i) >> (firstLeadingBit(select(var_5.zy, vec2<u32>(1u, var_5.x), false)) % vec2<u32>(32u)), -max(-vec2<i32>(var_1.a, 17777i), _wgslsmith_mult_vec2_i32(vec2<i32>(var_1.a, var_1.a), vec2<i32>(2147483647i, var_3.a)))), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(~vec2<i32>(-9635i, var_3.a), reverseBits(-vec2<i32>(var_3.a, 0i))), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 0i, var_4, -43347i), min(vec4<i32>(var_3.a, -66351i, var_4, u_input.b), vec4<i32>(47294i, u_input.c, var_3.a, var_1.a))), max(1i, _wgslsmith_clamp_i32(1i, var_3.a, -484i)))));
}

