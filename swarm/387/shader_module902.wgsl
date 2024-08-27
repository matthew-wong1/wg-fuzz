struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(10526u, 5221u, 26028u);

var<private> global1: array<f32, 11>;

var<private> global2: array<Struct_2, 7>;

var<private> global3: Struct_2 = Struct_2(Struct_1(vec2<bool>(true, false), vec4<i32>(68003i, 1i, 11366i, i32(-2147483648)), -1000f, vec2<u32>(13196u, 0u)));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec3<u32> {
    var var_0 = ~abs(countOneBits(~_wgslsmith_div_vec4_u32(vec4<u32>(global3.a.d.x, global3.a.d.x, 0u, 4294967295u), vec4<u32>(41909u, arg_0.d.x, global0.x, 1u))));
    let var_1 = -1417f;
    var var_2 = _wgslsmith_sub_vec4_u32(abs(vec4<u32>(var_0.x, 28511u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, arg_0.d.x), vec2<u32>(4294967295u, 1u)), 0u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(global0.x, 1u, 1u, global0.x), abs(~vec4<u32>(57370u, 35125u, global3.a.d.x, 0u))), ~_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_0.x, 32380u, 1u), vec4<u32>(u_input.d, 4294967295u, global3.a.d.x, u_input.d)), _wgslsmith_sub_vec4_u32(vec4<u32>(29972u, 19018u, global0.x, 1u), vec4<u32>(1u, 1u, 19361u, 3046u))), max(select(reverseBits(vec4<u32>(4294967295u, u_input.a, 963u, 62986u)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 54185u, 0u, arg_0.d.x), vec4<u32>(global3.a.d.x, 9615u, 20393u, 15439u)), vec4<bool>(true, true, true, true)), ~(vec4<u32>(1u, 0u, u_input.a, global0.x) << (vec4<u32>(1u, u_input.a, 583u, 4294967295u) % vec4<u32>(32u))))));
    let var_3 = ~(~(~_wgslsmith_mult_vec4_u32(select(vec4<u32>(global3.a.d.x, 17256u, 1u, arg_0.d.x), vec4<u32>(var_0.x, var_0.x, global0.x, u_input.a), vec4<bool>(true, arg_0.a.x, false, false)), countOneBits(vec4<u32>(1u, global3.a.d.x, 39340u, var_0.x)))));
    var_2 = min(~max(vec4<u32>(u_input.d, ~40905u, 36872u >> (var_3.x % 32u), select(1u, var_3.x, true)), vec4<u32>(countOneBits(80434u), ~33446u, var_2.x, ~var_0.x)), abs(_wgslsmith_mod_vec4_u32(var_3, var_3)));
    return var_3.zxx;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: f32, arg_3: bool) -> u32 {
    var var_0 = firstTrailingBit(func_3(Struct_1(vec2<bool>(false, global3.a.a.x || arg_3), vec4<i32>(countOneBits(-2147483647i), -u_input.b, -1i, _wgslsmith_add_i32(1i, -2147483647i)), _wgslsmith_f_op_f32(-497f + 876f), vec2<u32>(u_input.d, ~44031u)), global3.a.b.x));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -148f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(countOneBits(1u), 11u)] + -724f) - -1374f) + _wgslsmith_f_op_f32(min(115f, _wgslsmith_f_op_f32(floor(-1174f))))), _wgslsmith_div_f32(176f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - -374f)))));
    var var_2 = global2[_wgslsmith_index_u32(countOneBits(countOneBits(~1u)), 7u)];
    var var_3 = global3.a;
    let var_4 = min(u_input.b, 1i);
    return 73212u;
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = vec4<u32>((33050u | global0.x) >> (reverseBits(1u & global0.x) % 32u), 4294967295u, _wgslsmith_mod_u32(18684u, func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(386f, global3.a.c, -1287f, global3.a.c)), _wgslsmith_sub_vec2_i32(global3.a.b.zx, vec2<i32>(arg_0.b.x, u_input.b)), -677f, false == arg_0.a.x)), _wgslsmith_div_u32(~firstTrailingBit(global0.x), _wgslsmith_add_u32(1u >> (global0.x % 32u), 69109u))) ^ _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.a, global0.x, global0.x, global0.x)), ~(~vec4<u32>(0u, 4294967295u, 0u, u_input.a)), ~vec4<u32>(0u, u_input.d, 1u, global3.a.d.x) << (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, arg_0.d.x, 19905u, 1u), vec4<u32>(1u, 20699u, 57849u, u_input.d)) % vec4<u32>(32u))), ~_wgslsmith_div_vec4_u32(vec4<u32>(101910u, 19222u, u_input.d, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, 54035u, u_input.c.x, u_input.d), vec4<u32>(14341u, 0u, 48416u, global0.x))));
    var var_1 = Struct_2(Struct_1(vec2<bool>(1u > _wgslsmith_mult_u32(global0.x, 5100u), !(var_0.x != 1u)), max(min(arg_0.b, min(arg_0.b, vec4<i32>(-40471i, arg_0.b.x, 0i, -2147483647i))), ~vec4<i32>(-38141i, 1i, 0i, arg_0.b.x)), _wgslsmith_f_op_f32(-arg_0.c), ~_wgslsmith_div_vec2_u32(min(vec2<u32>(28823u, 12164u), global3.a.d), func_3(Struct_1(vec2<bool>(true, false), vec4<i32>(arg_0.b.x, -1i, global3.a.b.x, u_input.b), global3.a.c, vec2<u32>(u_input.c.x, u_input.c.x)), u_input.b).xy)));
    var_0 = ~(~reverseBits(~vec4<u32>(arg_0.d.x, u_input.a, 1u, 1u))) & vec4<u32>(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(var_0.x, 11u)], var_1.a.c, 1171f, global1[_wgslsmith_index_u32(2643u, 11u)]) * vec4<f32>(-454f, -919f, var_1.a.c, arg_0.c)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-651f, var_1.a.c, arg_0.c, var_1.a.c) * vec4<f32>(global3.a.c, -523f, var_1.a.c, arg_0.c))), -(global3.a.b.zy >> (vec2<u32>(global0.x, 0u) % vec2<u32>(32u))), -199f, arg_0.a.x), 34235u, min(global3.a.d.x, firstLeadingBit(_wgslsmith_mult_u32(9981u, arg_0.d.x))), min(_wgslsmith_mod_u32(global0.x, var_1.a.d.x), ~_wgslsmith_clamp_u32(var_1.a.d.x, 16421u, u_input.d)));
    var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(19014u, func_2(vec4<f32>(var_1.a.c, _wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(-553f - 797f)), vec2<i32>(u_input.b, u_input.b) ^ ~global3.a.b.zy, -940f, false)), 7u)];
    global3 = Struct_2(Struct_1(vec2<bool>(true, true), var_1.a.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.c, _wgslsmith_f_op_f32(-arg_0.c)) + _wgslsmith_f_op_f32(f32(-1f) * -1351f)), min(~var_0.zx, vec2<u32>(reverseBits(global3.a.d.x), firstTrailingBit(4294967295u)))));
    return ~_wgslsmith_add_u32(min(_wgslsmith_mult_u32(4294967295u, global0.x), abs(arg_0.d.x)) << (52135u % 32u), 0u);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<u32>) -> vec3<u32> {
    var var_0 = vec4<i32>(_wgslsmith_mod_i32(-64682i, -1i << (global3.a.d.x % 32u)), ((countOneBits(-2147483647i) & -arg_1.a.b.x) & -18187i) ^ ~(~1i >> (arg_2.d.x % 32u)), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(arg_1.a.b.x, 0i, 0i)), ~vec3<i32>(arg_0, 23930i, -25609i)) << (0u % 32u), ((25958i >> (1u % 32u)) ^ _wgslsmith_sub_i32(arg_1.a.b.x, 22319i)) >> (~(~8406u) % 32u)), -select(global3.a.b.x, -1i, ~global0.x > abs(arg_2.d.x)));
    global0 = vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(func_3(Struct_1(arg_2.a, vec4<i32>(arg_0, var_0.x, 25808i, arg_2.b.x), global1[_wgslsmith_index_u32(global3.a.d.x, 11u)], arg_2.d), _wgslsmith_mod_i32(1199i, var_0.x)).yx, select(~global3.a.d, arg_2.d, vec2<bool>(global3.a.a.x, false))), arg_3.x), _wgslsmith_dot_vec4_u32(vec4<u32>(72356u, 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 18046u, 4294967295u), vec3<u32>(arg_3.x, u_input.d, 0u)), 38081u), select(firstLeadingBit(vec4<u32>(arg_3.x, 45774u, global3.a.d.x, 4294967295u)), vec4<u32>(arg_2.d.x, 1u, u_input.d, 53473u) << (countOneBits(vec4<u32>(0u, 72507u, 0u, arg_2.d.x)) % vec4<u32>(32u)), !(!vec4<bool>(true, true, arg_2.a.x, true)))), _wgslsmith_clamp_u32(countOneBits(reverseBits(_wgslsmith_clamp_u32(u_input.a, 1u, 6645u))), _wgslsmith_div_u32(firstTrailingBit(~global0.x), arg_1.a.d.x), ~arg_2.d.x));
    var_0 = -_wgslsmith_add_vec4_i32(vec4<i32>(~(-30695i), 1i, _wgslsmith_mult_i32(14125i, 33157i), ~0i) & (_wgslsmith_mult_vec4_i32(vec4<i32>(1i, -2147483647i, arg_2.b.x, global3.a.b.x), vec4<i32>(2147483647i, arg_2.b.x, u_input.b, global3.a.b.x)) >> (~vec4<u32>(arg_2.d.x, 85082u, 3260u, 0u) % vec4<u32>(32u))), vec4<i32>(firstTrailingBit(58470i), _wgslsmith_dot_vec2_i32(arg_1.a.b.wy, firstLeadingBit(global3.a.b.zz)), global3.a.b.x, ~0i));
    global3 = Struct_2(arg_1.a);
    var var_1 = ~(~arg_2.d.x);
    return vec3<u32>(reverseBits(65846u), reverseBits(reverseBits(firstTrailingBit(22643u))), 1990u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~max(~_wgslsmith_div_vec3_u32(~vec3<u32>(32329u, 4294967295u, global0.x), min(vec3<u32>(1u, 0u, global0.x), vec3<u32>(global3.a.d.x, 58342u, 2681u))), firstTrailingBit(func_4(global3.a.b.x, global2[_wgslsmith_index_u32(func_1(global3.a), 7u)], Struct_1(global3.a.a, global3.a.b, 171f, u_input.c), vec2<u32>(global3.a.d.x, 15819u))));
    var var_0 = global2[_wgslsmith_index_u32(global3.a.d.x, 7u)];
    global1 = array<f32, 11>();
    global2 = array<Struct_2, 7>();
    let var_1 = var_0.a;
    let var_2 = Struct_2(var_0.a);
    global2 = array<Struct_2, 7>();
    global1 = array<f32, 11>();
    var var_3 = !(!(!select(select(vec4<bool>(true, var_2.a.a.x, false, false), vec4<bool>(var_0.a.a.x, false, var_1.a.x, global3.a.a.x), var_0.a.a.x), select(vec4<bool>(global3.a.a.x, var_2.a.a.x, global3.a.a.x, false), vec4<bool>(false, true, true, var_0.a.a.x), true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global3.a.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.c) + global3.a.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.c * 227f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.a.c * -2022f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.c - _wgslsmith_f_op_f32(var_2.a.c + var_1.c)))));
}

