struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec4<i32>, 9>;

var<private> global2: array<i32, 31>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = _wgslsmith_mult_vec4_i32(-abs(global1[_wgslsmith_index_u32(u_input.a.x, 9u)]), min(vec4<i32>(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(13147u, 1u), 31u)], -arg_0.a.a, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.a.c, 4294967295u), 31u)], global2[_wgslsmith_index_u32(~0u, 31u)]), vec4<i32>(~global2[_wgslsmith_index_u32(46730u, 31u)], 57415i, _wgslsmith_add_i32(19176i, 0i), global2[_wgslsmith_index_u32(46927u, 31u)])) & -global1[_wgslsmith_index_u32(53588u, 9u)]);
    var var_1 = !select(!(!select(vec3<bool>(arg_0.a.b, arg_0.a.b, arg_0.a.b), vec3<bool>(arg_0.a.b, arg_0.a.b, arg_0.a.b), arg_0.a.b)), !(!select(vec3<bool>(arg_0.a.b, arg_0.a.b, arg_0.a.b), vec3<bool>(true, arg_0.a.b, false), arg_0.a.b)), true);
    global2 = array<i32, 31>();
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1070f);
    var var_3 = Struct_1(-12897i, !(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(14351u, u_input.a.x, u_input.a.x, arg_0.a.d)), arg_0.a.e & 0u) >= _wgslsmith_div_u32(countOneBits(u_input.a.x), 47479u)), 1985u, ~79730u, firstTrailingBit(arg_0.a.d));
    return u_input.a.x;
}

fn func_2() -> i32 {
    global0 = all(vec3<bool>(true, true, true));
    var var_0 = Struct_2(Struct_1(max(~(global2[_wgslsmith_index_u32(39205u, 31u)] << (u_input.a.x % 32u)), max(11951i, global2[_wgslsmith_index_u32(~98293u, 31u)])), true, _wgslsmith_dot_vec2_u32(reverseBits(u_input.a.wy), firstTrailingBit(vec2<u32>(u_input.a.x, 1u))) & ((4294967295u >> (u_input.a.x % 32u)) | u_input.a.x), reverseBits(1u), max(4294967295u, abs(func_3(Struct_2(Struct_1(25081i, false, u_input.a.x, u_input.a.x, u_input.a.x)))))));
    var_0 = Struct_2(Struct_1(reverseBits(var_0.a.a), var_0.a.b, 51798u, u_input.a.x | (~var_0.a.e >> (var_0.a.d % 32u)), ~(~(~var_0.a.d))));
    let var_1 = var_0.a;
    var_0 = Struct_2(var_0.a);
    return global2[_wgslsmith_index_u32(~1u & _wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, ~1u)), vec2<u32>(4294967295u, ~var_1.d)), 31u)];
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> u32 {
    let var_0 = Struct_2(Struct_1(firstLeadingBit(_wgslsmith_mult_i32(_wgslsmith_sub_i32(arg_3.a, -25026i), _wgslsmith_add_i32(-1i, arg_2))), !any(select(vec2<bool>(arg_3.b, arg_3.b), vec2<bool>(arg_3.b, arg_3.b), vec2<bool>(arg_3.b, arg_3.b))), 4294967295u, abs(1347u), 85754u));
    global0 = true;
    global2 = array<i32, 31>();
    let var_1 = var_0.a;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1088f);
    return ~(~_wgslsmith_sub_u32(~59950u, 0u));
}

fn func_1() -> StorageBuffer {
    var var_0 = global2[_wgslsmith_index_u32(func_4(func_2(), 935f, countOneBits(global2[_wgslsmith_index_u32(0u, 31u)]), Struct_1(countOneBits(-global2[_wgslsmith_index_u32(u_input.a.x, 31u)]), false, 9136u, u_input.a.x, 62155u)), 31u)] >> (u_input.a.x % 32u);
    let var_1 = vec2<i32>(_wgslsmith_mult_i32(28460i, _wgslsmith_add_i32(1i, 5177i)), -2147483647i);
    let var_2 = select(vec3<bool>(true, !(!any(vec3<bool>(true, false, true))), (-var_1.x >= 2147483647i) || true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), true), any(vec4<bool>(true, true, true, true))), all(select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, true), true), -var_1.x >= abs(var_1.x))));
    let var_3 = _wgslsmith_clamp_vec3_i32(vec3<i32>(14075i, -(-2147483647i >> (u_input.a.x % 32u)), _wgslsmith_div_i32(~(global2[_wgslsmith_index_u32(1u, 31u)] ^ var_1.x), -1i)), vec3<i32>(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.a.x, u_input.a.x), 31u)], -19381i), -(global2[_wgslsmith_index_u32(u_input.a.x, 31u)] & 2147483647i) & firstLeadingBit(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), 31u)]), 2147483647i), -(~vec3<i32>(-global2[_wgslsmith_index_u32(u_input.a.x, 31u)], -1i, 8399i)));
    var var_4 = abs(select(firstLeadingBit(-6127i), _wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.x, var_1.x, -45611i, 2147483647i), vec4<i32>(-1i, var_3.x, global2[_wgslsmith_index_u32(u_input.a.x, 31u)], var_1.x)), global2[_wgslsmith_index_u32(u_input.a.x | 8610u, 31u)]), -2147483647i), var_2.x));
    return StorageBuffer(firstLeadingBit(_wgslsmith_mod_i32(countOneBits(_wgslsmith_mod_i32(var_3.x, 0i)), var_3.x)), vec2<u32>(56330u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_div_u32(26320u, 1u), 1u), func_3(Struct_2(Struct_1(global2[_wgslsmith_index_u32(12749u, 31u)], var_2.x, u_input.a.x, 4294967295u, u_input.a.x))))), _wgslsmith_div_i32(global2[_wgslsmith_index_u32(u_input.a.x, 31u)], -(var_3.x | -var_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 9>();
    var var_0 = false;
    let x = u_input.a;
    s_output = func_1();
}

