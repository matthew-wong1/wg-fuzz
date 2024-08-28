struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: u32,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: i32,
    c: vec2<f32>,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23> = array<i32, 23>(-12245i, 16553i, 1i, 0i, -39262i, 59478i, 2147483647i, 1i, i32(-2147483648), 40266i, -5615i, -1i, 0i, 2147483647i, 1i, 50439i, -1i, 1i, -2181i, -52179i, 2147483647i, i32(-2147483648), -1i);

var<private> global1: Struct_2;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>) -> vec2<u32> {
    var var_0 = Struct_3(!(!any(global1.b)));
    var var_1 = Struct_2((_wgslsmith_clamp_vec4_u32(global1.c | global1.a, vec4<u32>(global1.a.x, 4294967295u, 1697u, u_input.b), _wgslsmith_div_vec4_u32(global1.c, vec4<u32>(global1.a.x, u_input.b, 23563u, 0u))) ^ ~firstLeadingBit(vec4<u32>(u_input.b, arg_0.x, 26004u, 1u))) ^ (global1.a << (_wgslsmith_div_vec4_u32(vec4<u32>(1052u, arg_0.x, u_input.b, 1u), global1.a) % vec4<u32>(32u))), select(vec2<bool>(any(!vec4<bool>(false, false, var_0.a, true)), any(global1.b) && (1i < global0[_wgslsmith_index_u32(u_input.b, 23u)])), global1.b, vec2<bool>(1i == firstTrailingBit(global0[_wgslsmith_index_u32(29417u, 23u)]), abs(global0[_wgslsmith_index_u32(72196u, 23u)]) <= -u_input.a.x)), select(global1.a, vec4<u32>(~(1u & arg_0.x), abs(reverseBits(21426u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, arg_0.x), vec2<u32>(4294967295u, global1.c.x)), ~11873u), select(vec4<bool>(true, var_0.a, any(vec4<bool>(var_0.a, global1.b.x, true, global1.b.x)), all(vec4<bool>(true, false, false, false))), !(!vec4<bool>(var_0.a, var_0.a, false, var_0.a)), true)));
    global1 = Struct_2(countOneBits(_wgslsmith_sub_vec4_u32(~var_1.a & var_1.c, abs(~vec4<u32>(0u, var_1.a.x, 4294967295u, 125950u)))), global1.b, select(abs(_wgslsmith_div_vec4_u32(vec4<u32>(32469u, global1.a.x, 0u, 54708u), ~vec4<u32>(7341u, global1.c.x, 1u, u_input.b))), countOneBits(_wgslsmith_mod_vec4_u32(min(global1.a, global1.a), _wgslsmith_sub_vec4_u32(var_1.c, global1.a))), false));
    let var_2 = Struct_4(vec2<f32>(248f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-917f)))))), -46354i, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-494f, 306f))))), vec2<f32>(-1461f, 1f))), ~(-global0[_wgslsmith_index_u32(arg_0.x, 23u)]), Struct_2(select(~global1.a, abs(var_1.c), all(vec3<bool>(false, global1.b.x, var_0.a))) >> (var_1.a % vec4<u32>(32u)), var_1.b, vec4<u32>(4294967295u, 0u, 4294967295u, _wgslsmith_mult_u32(_wgslsmith_div_u32(var_1.a.x, u_input.b), 933u))));
    var_0 = Struct_3(false);
    return vec2<u32>(var_1.c.x, var_2.e.a.x);
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: Struct_2) -> u32 {
    var var_0 = 1i;
    var_0 = firstLeadingBit(_wgslsmith_add_i32(~u_input.c, _wgslsmith_sub_i32(-u_input.a.x, abs(-global0[_wgslsmith_index_u32(9111u, 23u)]))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1107f + -1786f), 636f));
    let var_2 = vec3<u32>(global1.c.x, ~(arg_1.c.x >> (~arg_0 % 32u)), global1.a.x);
    global0 = array<i32, 23>();
    return min(arg_2.x, 143933u);
}

fn func_2(arg_0: bool, arg_1: Struct_3) -> i32 {
    let var_0 = _wgslsmith_sub_u32(~(global1.c.x << (13955u % 32u)), _wgslsmith_mult_u32(func_4(1u, Struct_2(min(vec4<u32>(2778u, 1u, 67842u, u_input.b), vec4<u32>(u_input.b, global1.c.x, 42484u, 1u)), select(global1.b, global1.b, global1.b), vec4<u32>(global1.c.x, 59485u, u_input.b, 36278u)), ~func_3(vec3<u32>(u_input.b, global1.c.x, 13093u)), Struct_2(vec4<u32>(4294967295u, 4294967295u, u_input.b, global1.c.x), vec2<bool>(false, false), vec4<u32>(u_input.b, global1.c.x, global1.c.x, u_input.b) << (vec4<u32>(8033u, 152767u, global1.c.x, u_input.b) % vec4<u32>(32u)))), u_input.b));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -879f), -924f, 1343f));
    var var_2 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(708f, _wgslsmith_f_op_f32(-824f + -1000f))), _wgslsmith_f_op_f32(step(1146f, var_1.x))), -u_input.c, var_1.zy, u_input.c, Struct_2(vec4<u32>(10759u, 28834u | _wgslsmith_mod_u32(var_0, 20161u), global1.c.x, func_3(global1.a.xyw).x), vec2<bool>(true, true), ~global1.a));
    var var_3 = _wgslsmith_f_op_f32(sign(var_2.c.x));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)), select(!(!vec4<bool>(arg_0, false, arg_1.a, true)), vec4<bool>(global1.b.x | all(vec4<bool>(false, false, global1.b.x, true)), false, _wgslsmith_add_u32(global1.a.x, 61246u) > var_2.e.c.x, any(vec3<bool>(arg_0, true, arg_1.a))), vec4<bool>(true & !var_2.e.b.x, any(!vec3<bool>(false, global1.b.x, arg_1.a)), true, global1.b.x)), ~0u, global1.a.zy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f - var_2.c.x), -1270f))));
    return firstTrailingBit(-14701i) << (~(~(~4294967295u | _wgslsmith_div_u32(86983u, var_0))) % 32u);
}

fn func_1(arg_0: f32) -> Struct_4 {
    global0 = array<i32, 23>();
    var var_0 = arg_0;
    return Struct_4(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1526f, -272f))) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(566f, -925f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) * vec2<f32>(arg_0, arg_0))))))), -_wgslsmith_sub_i32(1i, func_2(true, Struct_3(true)) >> (countOneBits(86890u) % 32u)), vec2<f32>(_wgslsmith_f_op_f32(-arg_0), 1632f), reverseBits(24640i), Struct_2(~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b, global1.a.x, global1.c.x, global1.a.x), global1.a), !(!global1.b), global1.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(385f - -559f)));
    let var_1 = var_0.e.b.x;
    var var_2 = reverseBits(_wgslsmith_sub_vec4_i32(-(vec4<i32>(3498i, 0i, -9501i, global0[_wgslsmith_index_u32(53364u, 23u)]) << (firstLeadingBit(global1.c) % vec4<u32>(32u))), -(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 23u)], global0[_wgslsmith_index_u32(var_0.e.c.x, 23u)], -73341i, 1i) | vec4<i32>(var_0.b, -1i, 1i, -22393i)) & -_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.d, global0[_wgslsmith_index_u32(u_input.b, 23u)], var_0.b, var_0.b), vec4<i32>(6413i, 17923i, -56010i, 31970i))));
    var var_3 = Struct_3(true);
    global1 = Struct_2(_wgslsmith_mult_vec4_u32(global1.c, ~var_0.e.c ^ func_1(var_0.a.x).e.a) ^ vec4<u32>(~func_4(var_0.e.c.x, var_0.e, vec2<u32>(0u, 4294967295u), Struct_2(var_0.e.a, vec2<bool>(false, true), vec4<u32>(u_input.b, 0u, global1.c.x, 53166u))), firstLeadingBit(_wgslsmith_sub_u32(var_0.e.c.x, 20073u)), countOneBits(func_1(1000f).e.a.x), 1u), var_0.e.b, var_0.e.c);
    let var_4 = any(!select(vec3<bool>(false || var_3.a, true, global1.b.x), vec3<bool>(all(global1.b), u_input.b != var_0.e.c.x, var_0.e.b.x & true), global0[_wgslsmith_index_u32(global1.a.x, 23u)] != _wgslsmith_add_i32(global0[_wgslsmith_index_u32(global1.c.x, 23u)], 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(var_0.e.c.x, 23u)], -vec4<i32>(var_0.b ^ (1i | global0[_wgslsmith_index_u32(u_input.b, 23u)]), global0[_wgslsmith_index_u32(global1.a.x, 23u)], _wgslsmith_div_i32(_wgslsmith_clamp_i32(1i, 0i, -2147483647i), -11327i << (global1.a.x % 32u)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, var_0.e.c.x >> (u_input.b % 32u)), 23u)]), -_wgslsmith_sub_vec2_i32(abs(vec2<i32>(-1i, 1i)) ^ u_input.a, vec2<i32>(-10928i, 24383i) | (vec2<i32>(0i, 1i) << (global1.a.yx % vec2<u32>(32u)))));
}

