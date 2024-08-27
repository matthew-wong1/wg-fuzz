struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec3<i32>(20443i, -21252i, 2147483647i), 1u), Struct_1(vec3<i32>(0i, -20216i, -15388i), 24837u), Struct_1(vec3<i32>(0i, 67826i, 2147483647i), 58819u), Struct_1(vec3<i32>(i32(-2147483648), -9988i, 2147483647i), 0u));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = _wgslsmith_div_i32(-7755i, reverseBits(select(u_input.a.x, ~36933i, !(arg_0 | false))));
    var var_1 = (u_input.b & min(u_input.d.yzx, ~firstTrailingBit(vec3<i32>(-2147483647i, -2147483647i, 27936i)))) ^ _wgslsmith_add_vec3_i32(vec3<i32>(6684i, var_0, -2147483647i), u_input.d.xzy);
    global1 = array<Struct_1, 4>();
    let var_2 = u_input.b.x;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-846f - _wgslsmith_f_op_f32(abs(-2143f))))));
    return arg_0;
}

fn func_2(arg_0: bool) -> bool {
    var var_0 = Struct_2(select(!vec4<bool>(all(vec4<bool>(false, arg_0, true, false)), func_3(arg_0), true, any(vec2<bool>(arg_0, false))), select(select(vec4<bool>(arg_0, false, false, arg_0), vec4<bool>(arg_0, arg_0, arg_0, true), any(vec2<bool>(false, arg_0))), !select(vec4<bool>(true, true, true, arg_0), vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(true, false, arg_0, arg_0)), all(vec2<bool>(false, arg_0))), !(true && (2147483647i > u_input.a.x))), vec3<u32>(countOneBits(~countOneBits(1u)), 0u << (0u % 32u), min(min(_wgslsmith_add_u32(14786u, 1u), ~17376u), 1u)), _wgslsmith_mult_u32(min(80680u, min(36725u, ~0u)), 31987u), Struct_1(vec3<i32>(-countOneBits(u_input.a.x), 29909i, _wgslsmith_div_i32(max(-2147483647i, u_input.b.x), -2147483647i)), max(~_wgslsmith_dot_vec4_u32(vec4<u32>(4771u, 37801u, 11128u, 4294967295u), vec4<u32>(1u, 0u, 37467u, 0u)), _wgslsmith_mult_u32(~8240u, _wgslsmith_dot_vec4_u32(vec4<u32>(6807u, 61021u, 5214u, 5276u), vec4<u32>(0u, 63017u, 64013u, 100614u))))));
    var_0 = Struct_2(select(select(var_0.a, vec4<bool>(true, var_0.a.x, arg_0 | var_0.a.x, true), var_0.a), var_0.a, true), vec3<u32>(4294967295u ^ _wgslsmith_add_u32(~84569u, var_0.c >> (var_0.d.b % 32u)), ~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.c, var_0.b.x, 4294967295u, var_0.d.b), vec4<u32>(30956u, var_0.d.b, 205u, 18080u)), ~vec4<u32>(51313u, var_0.c, var_0.c, 0u)), firstLeadingBit(~(~1u))), select(firstLeadingBit(~(~var_0.d.b)), 1u, true && !(arg_0 || false)), var_0.d);
    global0 = _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(min(1u, 62711u), ~var_0.b.x)), vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(71916u, var_0.c, var_0.d.b), ~var_0.b), vec3<u32>(var_0.d.b << (var_0.b.x % 32u), _wgslsmith_mod_u32(var_0.c, 1u), ~43122u)), ~min(_wgslsmith_clamp_u32(4294967295u, var_0.d.b, 101956u), var_0.c)));
    let var_1 = func_3(select(arg_0, true, true));
    var var_2 = global1[_wgslsmith_index_u32(1u, 4u)];
    return ~(_wgslsmith_div_u32(select(var_2.b, 4294967295u, false), var_2.b) & _wgslsmith_add_u32(~var_0.b.x, var_2.b)) <= 4294967295u;
}

fn func_1() -> StorageBuffer {
    let var_0 = 2147483647i;
    var var_1 = select(vec4<bool>(true, true && func_2(true), true, false), vec4<bool>(!(!any(vec4<bool>(true, false, false, false))), all(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), false)), false, any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false))), !select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), true));
    global1 = array<Struct_1, 4>();
    let var_2 = Struct_1(u_input.a, 1u);
    global1 = array<Struct_1, 4>();
    return StorageBuffer(vec3<i32>(0i, -u_input.c, _wgslsmith_dot_vec3_i32(var_2.a, reverseBits(vec3<i32>(-1i, u_input.b.x, 2147483647i)))), _wgslsmith_mod_vec3_i32(-u_input.a, u_input.d.xzz), ~u_input.a.yz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_i32(-2147483647i, countOneBits(_wgslsmith_mult_i32(u_input.d.x, u_input.a.x)));
    let var_1 = Struct_2(vec4<bool>(true, true, any(vec2<bool>(true, true)), select(true, _wgslsmith_clamp_i32(u_input.a.x, -35909i, u_input.c) > -37291i, true)), (vec3<u32>(1u, 0u, _wgslsmith_mod_u32(136u, 2225u)) | select(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 72104u, 4294967295u), vec3<u32>(25453u, 13481u, 30057u)), ~vec3<u32>(1u, 1u, 1u), vec3<bool>(true, false, false))) >> (firstLeadingBit(vec3<u32>(36517u, 4294967295u, 1u) >> (countOneBits(vec3<u32>(46629u, 1u, 0u)) % vec3<u32>(32u))) % vec3<u32>(32u)), 0u, global1[_wgslsmith_index_u32(~0u, 4u)]);
    let x = u_input.a;
    s_output = func_1();
}

