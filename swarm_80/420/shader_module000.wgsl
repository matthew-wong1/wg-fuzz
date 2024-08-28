struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29> = array<f32, 29>(-355f, -802f, -1799f, -1174f, -1951f, 1379f, -1000f, 1115f, 241f, 244f, -372f, 761f, 382f, -263f, -1239f, 108f, 268f, -726f, -218f, 759f, 180f, -694f, -1182f, 1858f, 1124f, 950f, -1000f, 695f, 1395f);

var<private> global1: bool;

var<private> global2: Struct_1 = Struct_1(vec4<u32>(23740u, 0u, 0u, 4294967295u), vec2<i32>(61199i, -19640i), 1u);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec4<u32>) -> i32 {
    var var_0 = Struct_1(countOneBits(~abs(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 16408u) << (vec4<u32>(arg_0.x, arg_0.x, 4294967295u, global2.a.x) % vec4<u32>(32u)))), _wgslsmith_add_vec2_i32(vec2<i32>(~u_input.a, ~global2.b.x), abs(vec2<i32>(global2.b.x, -1i))) << (vec2<u32>(firstTrailingBit(~arg_0.x), ~arg_0.x) % vec2<u32>(32u)), ~global2.c);
    return -_wgslsmith_mod_i32(global2.b.x, 20084i);
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: i32, arg_3: bool) -> i32 {
    global1 = true;
    let var_0 = arg_2;
    var var_1 = Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(103095u, ~_wgslsmith_dot_vec4_u32(global2.a, global2.a), arg_0 & arg_0, 56760u), ~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 20875u, global2.a.x, 0u) >> (vec4<u32>(arg_0, 55444u, global2.c, arg_0) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(global2.a, global2.a, global2.a))), ~(~global2.b), global2.a.x);
    var_1 = Struct_1(_wgslsmith_mod_vec4_u32(global2.a << ((vec4<u32>(arg_0, arg_0, 70245u, global2.c) | (vec4<u32>(26150u, 4294967295u, 49616u, var_1.a.x) ^ var_1.a)) % vec4<u32>(32u)), global2.a), vec2<i32>(func_3(_wgslsmith_div_vec4_u32(var_1.a, global2.a) ^ (var_1.a | vec4<u32>(arg_0, global2.a.x, 27248u, arg_0))), 58106i), global2.a.x);
    let var_2 = global2.c;
    return 29223i;
}

fn func_1() -> bool {
    global1 = true;
    let var_0 = _wgslsmith_add_vec4_i32(abs(vec4<i32>(func_2(0u, select(vec2<i32>(global2.b.x, -1i), global2.b, vec2<bool>(true, false)), 21461i, true), 1i, _wgslsmith_div_i32(-1i << (0u % 32u), ~2147483647i), u_input.a)), vec4<i32>(firstTrailingBit(global2.b.x), -3583i, 1i, 1i));
    let var_1 = abs(firstTrailingBit(-1i));
    global1 = false;
    let var_2 = Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(global2.c ^ global2.a.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, global2.a.x), _wgslsmith_div_vec2_u32(global2.a.wx, vec2<u32>(19813u, global2.a.x))), firstTrailingBit(4294967295u), ~(~130794u)), global2.a), _wgslsmith_clamp_vec2_i32(~var_0.yy, _wgslsmith_div_vec2_i32(var_0.xy, var_0.yz), _wgslsmith_mult_vec2_i32(~max(var_0.wx, var_0.yz), _wgslsmith_div_vec2_i32(global2.b >> (vec2<u32>(25491u, 4294967295u) % vec2<u32>(32u)), ~vec2<i32>(23449i, -1i)))), ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(global2.a.x, global2.a.x), 20409u) ^ abs(global2.a.x));
    return true && all(select(vec4<bool>(true, all(vec3<bool>(true, false, false)), all(vec4<bool>(true, false, true, true)), any(vec4<bool>(false, true, true, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false)), true), vec4<bool>(true, var_0.x < -37811i, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(select(1085f, _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(global2.c, 29u)])), select(u_input.a, u_input.a, _wgslsmith_mod_i32(-43889i, -11340i) == _wgslsmith_dot_vec4_i32(vec4<i32>(0i, global2.b.x, -2147483647i, -20508i), vec4<i32>(-1i, -1i, u_input.a, -12015i))) <= ((abs(global2.b.x) << ((35793u | global2.a.x) % 32u)) | global2.b.x)));
    let var_1 = all(select(select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false)), true), vec4<bool>(all(vec3<bool>(true, true, true)), true, false, true), vec4<bool>(any(vec4<bool>(false, true, true, false)), func_1(), all(vec3<bool>(true, true, false)), true)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true)), vec4<bool>(false, false, true, true)), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true), true), true), !(!(u_input.a >= global2.b.x))));
    var var_2 = Struct_1(abs(~min(global2.a, vec4<u32>(25308u, global2.a.x, 4294967295u, global2.a.x)) << (vec4<u32>(~global2.a.x, ~global2.a.x, global2.c, global2.c) % vec4<u32>(32u))), abs(~global2.b) | -vec2<i32>(~(-39923i), _wgslsmith_sub_i32(-20370i, global2.b.x)), countOneBits(10157u));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1359f);
    var var_4 = Struct_1(select(vec4<u32>(firstLeadingBit(1u), var_2.c, min(~var_2.c, 89812u), 12653u), var_2.a, var_1), -vec2<i32>(select(u_input.a, 2147483647i, true), _wgslsmith_dot_vec2_i32(global2.b, global2.b)), abs(_wgslsmith_div_u32(_wgslsmith_sub_u32(~global2.c, 1912u), ~114821u)));
    let var_5 = var_2.a.wy;
    var var_6 = Struct_1(var_2.a, var_2.b, 1u);
    var_6 = Struct_1(reverseBits(var_6.a), var_4.b, var_4.c);
    var_2 = Struct_1(firstLeadingBit(global2.a), abs(var_4.b), reverseBits(global2.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(-784f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_4.a.x, 29u)], global0[_wgslsmith_index_u32(var_4.a.x, 29u)])))), any(select(vec3<bool>(var_1, false, false), vec3<bool>(var_1, false, false), true)) || true)), _wgslsmith_mult_vec4_i32(max(~(-vec4<i32>(var_2.b.x, -36101i, -2147483647i, -29144i)), -countOneBits(vec4<i32>(var_2.b.x, 0i, var_6.b.x, 2147483647i))), ~(~(-vec4<i32>(1i, global2.b.x, -3470i, u_input.a)))), 26994i, ~vec3<i32>((var_6.b.x >> (var_6.a.x % 32u)) & 13032i, 10820i, _wgslsmith_dot_vec2_i32(var_6.b & vec2<i32>(var_6.b.x, 1i), ~vec2<i32>(var_6.b.x, -42605i))));
}

