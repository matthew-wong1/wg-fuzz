struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(33157u, vec3<bool>(false, false, true));

var<private> global1: array<bool, 27>;

var<private> global2: array<f32, 29>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    global2 = array<f32, 29>();
    return Struct_1(global1[_wgslsmith_index_u32(firstTrailingBit(~46906u), 27u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~(~0u), 29u)]) >= -338f, !global0.b);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(arg_0.a, 29u)];
    var_0 = global2[_wgslsmith_index_u32(global0.a, 29u)];
    global1 = array<bool, 27>();
    var var_1 = Struct_3(global0.a, vec3<bool>(true, true, 0i <= (u_input.a.x & 2147483647i)));
    var var_2 = vec4<i32>(-1i) * -(vec4<i32>(-1i) * -(vec4<i32>(1i, 9315i, u_input.a.x, -26550i) | vec4<i32>(8605i, u_input.a.x, u_input.a.x, u_input.a.x)));
    return 75605u;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec2<u32>) -> vec4<u32> {
    let var_0 = Struct_3(countOneBits(arg_1.x), global0.b);
    var var_1 = func_2(1i, var_0, ~(countOneBits(u_input.b.x) ^ 1u), arg_0);
    let var_2 = -1i;
    return _wgslsmith_div_vec4_u32(min(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_0.a, 1u, global0.a), vec4<u32>(16739u, 4294967295u, u_input.b.x, 17949u)) >> (countOneBits(vec4<u32>(0u, 54759u, var_0.a, 4294967295u)) % vec4<u32>(32u)), vec4<u32>(1u, var_0.a, 32785u, 56141u) ^ ~vec4<u32>(23595u, 0u, global0.a, u_input.b.x)), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(abs(vec4<u32>(4822u, 1u, arg_1.x, arg_2.x)), abs(vec4<u32>(0u, arg_2.x, arg_1.x, 65593u))), vec4<u32>(func_3(var_0, arg_0.a, arg_0.a), 4294967295u, ~global0.a, abs(var_0.a)))) ^ _wgslsmith_div_vec4_u32(~abs(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, arg_1.x, 4294967295u, 75215u), vec4<u32>(0u, var_0.a, 1u, u_input.b.x))), ~select(~vec4<u32>(1u, 0u, 4294967295u, 83112u), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_0.a, 38279u, arg_2.x), vec4<u32>(54462u, 21917u, global0.a, arg_2.x)), !vec4<bool>(arg_0.a.a, true, global1[_wgslsmith_index_u32(0u, 27u)], true)));
}

fn func_1(arg_0: vec3<bool>, arg_1: u32, arg_2: i32, arg_3: vec3<u32>) -> vec3<i32> {
    var var_0 = true;
    var var_1 = func_4(Struct_2(func_2(max(arg_2, 1i), Struct_3(~29497u, vec3<bool>(global0.b.x, global1[_wgslsmith_index_u32(arg_1, 27u)], false)), u_input.b.x, Struct_2(Struct_1(false, false, vec3<bool>(true, arg_0.x, arg_0.x)), vec3<i32>(u_input.a.x, u_input.a.x, -1i))), _wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(u_input.a.x, 0i, u_input.a.x)), vec3<i32>(~0i, arg_2, _wgslsmith_clamp_i32(-21906i, 1i, 0i)))), vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_3.x, arg_3.x, arg_3.x), ~(~vec3<u32>(0u, global0.a, 4294967295u))), 4294967295u, u_input.b.x), vec2<u32>(47541u, reverseBits(func_3(Struct_3(4294967295u, vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 27u)], global1[_wgslsmith_index_u32(17880u, 27u)], global1[_wgslsmith_index_u32(arg_1, 27u)])), Struct_1(arg_0.x, arg_0.x, vec3<bool>(global0.b.x, global1[_wgslsmith_index_u32(arg_3.x, 27u)], global0.b.x)), func_2(u_input.a.x, Struct_3(u_input.b.x, global0.b), 51563u, Struct_2(Struct_1(true, global1[_wgslsmith_index_u32(0u, 27u)], vec3<bool>(arg_0.x, true, arg_0.x)), vec3<i32>(6764i, u_input.a.x, u_input.a.x)))))));
    global0 = Struct_3(~17796u, select(select(!global0.b, global0.b, all(vec3<bool>(true, true, true))), global0.b, select(vec3<bool>(!global1[_wgslsmith_index_u32(u_input.b.x, 27u)], -48908i == arg_2, all(arg_0)), vec3<bool>(true, false, false), global0.b.x || false)));
    let var_2 = Struct_3(31778u, select(!global0.b, vec3<bool>(any(select(vec3<bool>(false, true, false), global0.b, false)), any(global0.b.xx), false), !(!(!global0.b))));
    let var_3 = abs(-2147483647i);
    return min(vec3<i32>(-abs(firstLeadingBit(61193i)), firstLeadingBit(var_3), ~firstTrailingBit(_wgslsmith_mod_i32(arg_2, -36972i))), ~((vec3<i32>(var_3, 1i, 53861i) & -vec3<i32>(25371i, var_3, -2147483647i)) & vec3<i32>(var_3, u_input.a.x, 22242i)));
}

fn func_5(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: bool) -> bool {
    let var_0 = vec4<u32>(~select(0u, 1u, all(!vec4<bool>(arg_0, false, true, false))), u_input.b.x, 1u, firstTrailingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), u_input.b << (u_input.b % vec2<u32>(32u)))));
    global0 = arg_2;
    global1 = array<bool, 27>();
    let var_1 = vec4<i32>(u_input.a.x >> ((~(~global0.a) & _wgslsmith_mod_u32(~var_0.x, ~arg_2.a)) % 32u), _wgslsmith_mod_i32(i32(-1i) * -_wgslsmith_div_i32(u_input.a.x, u_input.a.x), 1i), u_input.a.x, func_1(func_2(arg_1.x, Struct_3(1u, arg_2.b), _wgslsmith_dot_vec3_u32(vec3<u32>(7602u, 20988u, 1u), ~var_0.yxy), Struct_2(Struct_1(global0.b.x, arg_0, vec3<bool>(arg_2.b.x, false, global0.b.x)), vec3<i32>(u_input.a.x, 2147483647i, arg_1.x))).c, ~var_0.x, -33914i, var_0.wzz).x);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(true, countOneBits(abs(func_1(global0.b, _wgslsmith_sub_u32(u_input.b.x, 4294967295u), u_input.a.x << (global0.a % 32u), firstLeadingBit(vec3<u32>(80882u, 4294967295u, global0.a))))), Struct_3(firstTrailingBit(~func_4(Struct_2(Struct_1(true, false, global0.b), vec3<i32>(321i, u_input.a.x, u_input.a.x)), vec3<u32>(31468u, 0u, u_input.b.x), vec2<u32>(39119u, u_input.b.x)).x), select(!func_2(u_input.a.x, Struct_3(u_input.b.x, global0.b), 4294967295u, Struct_2(Struct_1(global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(u_input.b.x, 27u)], global0.b), vec3<i32>(44154i, 2147483647i, u_input.a.x))).c, vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.b.x, 27u)]), true)), false);
    var var_1 = _wgslsmith_clamp_u32(1u & ~u_input.b.x, 4294967295u, ~_wgslsmith_clamp_u32(~u_input.b.x, u_input.b.x | 38422u, u_input.b.x) ^ ~4294967295u);
    let var_2 = func_5(true, reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(~u_input.a.x, -14573i >> (0u % 32u), u_input.a.x & 0i), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(5123i, 0i, 2147483647i), vec3<i32>(1i, -1i, u_input.a.x))))), Struct_3(max(~global0.a, 4294967295u & u_input.b.x) | global0.a, vec3<bool>(!global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global0.a, global0.a), 27u)], global0.b.x || true, !any(vec2<bool>(false, global0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b.x << (u_input.b.x % 32u), 29u)] * _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(u_input.b.x, 29u)], 109f)))) <= -797f);
    let var_3 = _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(abs(global0.a), 29u)]));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(-9892i, 1i, 2147483647i, -1i)), select(vec4<i32>(-1i, -43447i, 0i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 0i, 36729i), false))), global0.a, ~_wgslsmith_mult_u32(1u, 4294967295u), 4294967295u);
}

