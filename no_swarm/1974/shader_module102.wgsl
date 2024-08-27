struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_1, 26>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> bool {
    global1 = array<Struct_1, 26>();
    var var_0 = Struct_1(-arg_0.a, min(arg_0.c, ((37257i | u_input.a) >> (83246u % 32u)) >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(111064u, 4294967295u, 4294967295u, arg_0.d), vec4<u32>(arg_0.d, 1u, arg_0.d, 0u)) % 32u)), u_input.a, 41217u);
    let var_1 = var_0.d;
    let var_2 = -177f;
    var var_3 = false;
    return true;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> vec2<i32> {
    let var_0 = arg_2;
    var var_1 = var_0;
    var_1 = var_0;
    let var_2 = arg_1;
    var_1 = Struct_1(-var_1.a, 1i, _wgslsmith_add_i32(-18149i, -43120i), var_0.d);
    return vec2<i32>(1i, ~select(-var_0.c, var_1.a.x | _wgslsmith_dot_vec2_i32(arg_1.a, vec2<i32>(1777i, var_1.b)), true));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(func_4(func_3(global1[_wgslsmith_index_u32(firstTrailingBit(~4294967295u), 26u)]), Struct_1(-vec2<i32>(u_input.a, -2147483647i) | min(vec2<i32>(2147483647i, u_input.a), vec2<i32>(-47326i, -2224i)), _wgslsmith_clamp_i32(firstLeadingBit(-1i), 2147483647i, 0i), ~max(1i, -1i), 96103u), Struct_1(countOneBits(-vec2<i32>(47639i, u_input.a)), ~(-40563i), max(u_input.a, _wgslsmith_add_i32(2147483647i, u_input.a)), _wgslsmith_sub_u32(4294967295u, ~1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -448f) + _wgslsmith_f_op_f32(step(647f, -802f))))), _wgslsmith_div_i32(u_input.a, _wgslsmith_add_i32(1i, -u_input.a)), i32(-1i) * -1i, 32885u);
    var var_1 = ~vec3<u32>(~_wgslsmith_mod_u32(~4294967295u, 1u), var_0.d, var_0.d);
    return global1[_wgslsmith_index_u32(~reverseBits(_wgslsmith_dot_vec2_u32(reverseBits(~vec2<u32>(var_0.d, var_1.x)), var_1.zz)), 26u)];
}

fn func_1(arg_0: vec3<u32>) -> vec2<i32> {
    var var_0 = func_2();
    var var_1 = abs(vec3<i32>(-61601i, var_0.a.x, countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), var_0.a)) >> (firstTrailingBit(reverseBits(var_0.d)) % 32u)));
    global1 = array<Struct_1, 26>();
    var var_2 = abs(abs(select(select(vec4<u32>(4294967295u, 1u, 4294967295u, 66974u) >> (vec4<u32>(var_0.d, 51613u, arg_0.x, 11093u) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(46413u, arg_0.x, 3630u, 0u)), var_0.d != 16006u), vec4<u32>(arg_0.x, ~arg_0.x, 48676u, 0u), vec4<bool>(true, true, true, true))));
    var var_3 = Struct_1((_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, var_1.x), ~var_1.xz, ~var_0.a) ^ reverseBits(vec2<i32>(var_0.c, u_input.a))) & ~vec2<i32>(u_input.a, var_1.x), var_0.a.x, -(~var_1.x), reverseBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 0u, arg_0.x), var_2.wyx) >> (var_0.d % 32u)));
    return -vec2<i32>(var_1.x, -var_3.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(328f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1707f))), -1850f)));
    var_0 = -140f;
    let var_1 = Struct_1(countOneBits(-vec2<i32>(1i, 1i)) ^ select(firstLeadingBit(vec2<i32>(u_input.a, -2147483647i) >> (vec2<u32>(34897u, 0u) % vec2<u32>(32u))), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-2147483647i, 0i)), func_1(vec3<u32>(67380u, 1u, 4294967295u))), vec2<bool>(true, any(vec3<bool>(false, true, false)))), 0i, _wgslsmith_dot_vec3_i32(~vec3<i32>(~(-35029i), u_input.a, u_input.a), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, -2147483647i, u_input.a) << (firstTrailingBit(vec3<u32>(49370u, 73212u, 1u)) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.a, 30042i), vec3<i32>(-1i, u_input.a, -1i), -vec3<i32>(-37756i, u_input.a, 0i)))), ~4626u ^ ~(~firstTrailingBit(4294967295u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1515f, -193f)) * _wgslsmith_div_vec2_f32(vec2<f32>(-818f, 484f), vec2<f32>(-159f, -506f))))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1320f, -1526f), vec2<f32>(1643f, -2244f))), vec2<f32>(704f, -2009f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-457f, 1000f))))));
    global1 = array<Struct_1, 26>();
    let var_3 = Struct_1(abs(vec2<i32>(reverseBits(-2297i), ~firstLeadingBit(u_input.a))), u_input.a, var_1.a.x, _wgslsmith_clamp_u32(7427u, _wgslsmith_dot_vec2_u32(~reverseBits(vec2<u32>(1u, var_1.d)), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 0u), max(vec2<u32>(var_1.d, 40166u), vec2<u32>(22252u, 1u)), abs(vec2<u32>(var_1.d, var_1.d)))), abs(~1u)));
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_sub_vec4_u32(max(vec4<u32>(4294967295u, var_1.d, var_1.d, 4294967295u) >> (vec4<u32>(4294967295u, 0u, 12840u, var_1.d) % vec4<u32>(32u)), vec4<u32>(var_1.d, 38108u, 1u, var_3.d) << (vec4<u32>(0u, 49251u, 4294967295u, var_1.d) % vec4<u32>(32u))) << (((vec4<u32>(47911u, var_3.d, var_1.d, 3190u) ^ vec4<u32>(28508u, var_3.d, var_3.d, var_1.d)) | _wgslsmith_mult_vec4_u32(vec4<u32>(var_3.d, 47684u, var_1.d, var_3.d), vec4<u32>(var_3.d, var_3.d, var_1.d, var_3.d))) % vec4<u32>(32u)), ~reverseBits(vec4<u32>(37165u, 80000u, 0u, 34763u) & vec4<u32>(var_1.d, 99894u, var_1.d, 16214u))), firstTrailingBit(vec2<u32>(1u, 4294967295u) & abs(vec2<u32>(var_3.d, 33583u))) << (_wgslsmith_sub_vec2_u32(~abs(vec2<u32>(4294967295u, var_3.d)), _wgslsmith_mult_vec2_u32(select(vec2<u32>(var_1.d, var_1.d), vec2<u32>(0u, var_1.d), vec2<bool>(false, true)), ~vec2<u32>(var_3.d, 6982u))) % vec2<u32>(32u)), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.d, var_1.d, 4294967295u), _wgslsmith_div_vec3_u32(vec3<u32>(var_1.d, var_3.d, var_1.d), vec3<u32>(12246u, var_3.d, 4294967295u))) ^ ~vec3<u32>(var_1.d, 40608u, var_1.d), vec3<u32>(1u, var_1.d, var_3.d)), var_2.x);
}

