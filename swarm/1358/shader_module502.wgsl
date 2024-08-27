struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: f32,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec3<i32>;

var<private> global2: array<u32, 9>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<bool>) -> vec3<i32> {
    var var_0 = global1.x;
    global0 = true;
    var var_1 = Struct_3(false & (_wgslsmith_div_u32(max(u_input.e, 4294967295u), ~u_input.e) > _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global2[_wgslsmith_index_u32(0u, 9u)]) >> (vec2<u32>(u_input.c, 0u) % vec2<u32>(32u)), vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 9u)], global2[_wgslsmith_index_u32(21283u, 9u)]))), vec4<u32>(firstTrailingBit(4352u), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.e, 37108u)), vec2<u32>(u_input.e, select(8752u, u_input.c, arg_0.x))), 20921u, abs(_wgslsmith_sub_u32(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(14831u, 9u)], global2[_wgslsmith_index_u32(u_input.e, 9u)]), select(1u, global2[_wgslsmith_index_u32(4294967295u, 9u)], true)))), vec3<i32>(_wgslsmith_mult_i32(u_input.b.x, global1.x), global1.x, reverseBits(u_input.d.x)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -371f) + _wgslsmith_f_op_f32(f32(-1f) * -1135f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-858f, -234f)), -507f, 710f), 0u, select((vec3<i32>(u_input.a, -1i, global1.x) >> (vec3<u32>(u_input.c, 0u, 1u) % vec3<u32>(32u))) << (reverseBits(vec3<u32>(global2[_wgslsmith_index_u32(106482u, 9u)], 1u, global2[_wgslsmith_index_u32(3811u, 9u)])) % vec3<u32>(32u)), reverseBits(~u_input.d), true)));
    var var_2 = _wgslsmith_f_op_f32(exp2(var_1.d.a.x));
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_1.d.a.x)), _wgslsmith_f_op_f32(var_1.d.a.x + -2466f)), var_1.d.a.x));
    return _wgslsmith_mod_vec3_i32(vec3<i32>(firstLeadingBit(_wgslsmith_clamp_i32(-26830i, global1.x, 1i)), ~(-2147483647i << (var_1.b.x % 32u)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, global1.x, var_1.c.x, u_input.a), vec4<i32>(u_input.b.x, global1.x, var_1.c.x, global1.x))), vec3<i32>(firstLeadingBit(u_input.d.x), ~var_1.d.c.x, -2147483647i)) & var_1.d.c;
}

fn func_2() -> bool {
    global2 = array<u32, 9>();
    let var_0 = -global1.x;
    var var_1 = false;
    global1 = ~(func_3(vec3<bool>(true, false, false)) << ((max(vec3<u32>(0u, u_input.e, 1u), vec3<u32>(u_input.e, 107448u, 10221u)) | reverseBits(vec3<u32>(global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(6929u, 9u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 9u)], 9u)]))) % vec3<u32>(32u))) | vec3<i32>(reverseBits((-24319i << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(5902u, 9u)], 9u)], 9u)], 9u)], 9u)], 9u)], 9u)] % 32u)) & u_input.b.x), i32(-1i) * -select(57273i, 1421i, false), 20115i);
    global0 = true;
    return 829f > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1839f), _wgslsmith_f_op_f32(1000f - 338f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-984f)), _wgslsmith_f_op_f32(sign(-1863f))));
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: bool) -> vec3<u32> {
    let var_0 = select(!vec2<bool>(!arg_2, false), select(!vec2<bool>(arg_2, func_2()), select(select(vec2<bool>(arg_2, arg_2), !vec2<bool>(arg_2, false), vec2<bool>(true, true)), select(vec2<bool>(true, false), !vec2<bool>(arg_2, true), !vec2<bool>(arg_2, arg_2)), ~arg_1 >= _wgslsmith_dot_vec4_i32(vec4<i32>(-20173i, -12798i, -12789i, arg_0.x), vec4<i32>(1i, 1i, arg_0.x, global1.x))), false), !(!select(select(vec2<bool>(true, false), vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, arg_2)), select(vec2<bool>(false, arg_2), vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, arg_2)), !arg_2)));
    var var_1 = Struct_3(true, vec4<u32>(1u, global2[_wgslsmith_index_u32(u_input.c, 9u)], ~1u, global2[_wgslsmith_index_u32(~u_input.c, 9u)]), _wgslsmith_sub_vec3_i32(vec3<i32>(max(reverseBits(arg_0.x), -8888i), 23295i, _wgslsmith_add_i32(i32(-1i) * -1i, arg_1)), _wgslsmith_mult_vec3_i32(abs(select(vec3<i32>(global1.x, -1i, -26515i), vec3<i32>(arg_0.x, -8205i, arg_1), false)), u_input.d & ~vec3<i32>(global1.x, 36275i, global1.x))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(640f)), -186f, _wgslsmith_f_op_f32(select(1139f, -2275f, arg_2)), -585f)), 8098u, -u_input.d));
    var var_2 = _wgslsmith_f_op_f32(trunc(-618f));
    var var_3 = max(~select(_wgslsmith_mult_vec2_u32(var_1.b.zy, vec2<u32>(u_input.e, global2[_wgslsmith_index_u32(4294967295u, 9u)])), ~vec2<u32>(global2[_wgslsmith_index_u32(var_1.d.b, 9u)], var_1.d.b), !(arg_2 & true)), (vec2<u32>(countOneBits(52720u), ~27350u) << (reverseBits(var_1.b.wx) % vec2<u32>(32u))) >> (vec2<u32>(4294967295u, ~50123u) % vec2<u32>(32u)));
    var var_4 = vec2<bool>(true, true);
    return ~vec3<u32>(~_wgslsmith_add_u32(var_1.b.x, 1u), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.b.x, global2[_wgslsmith_index_u32(1u, 9u)], 19301u, 20724u), var_1.b, var_1.b) | _wgslsmith_mod_vec4_u32(var_1.b, vec4<u32>(var_1.d.b, var_3.x, var_1.d.b, var_3.x)), ~abs(vec4<u32>(0u, 0u, var_1.b.x, var_1.d.b))), ~global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.d.b, 63985u, 0u), var_1.b.ywx), 9u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    var var_0 = abs(_wgslsmith_mult_vec3_u32(func_1(vec2<i32>(u_input.d.x, u_input.d.x), _wgslsmith_mod_i32(1i, 1i), true) ^ vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(27728u, 9u)], 9u)] | global2[_wgslsmith_index_u32(22740u, 9u)], _wgslsmith_mult_u32(38885u, u_input.e), 1u & u_input.e), ~vec3<u32>(~4395u, ~11224u, u_input.c)));
    let var_1 = ~0u;
    let var_2 = -1248f;
    var var_3 = ((firstTrailingBit(~vec4<i32>(1i, global1.x, global1.x, 0i)) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, -1i, u_input.d.x, -2147483647i), -vec4<i32>(u_input.b.x, 2147483647i, -1i, 26111i))) >> (~firstLeadingBit(vec4<u32>(46096u, global2[_wgslsmith_index_u32(36272u, 9u)], var_0.x, 0u) | vec4<u32>(var_0.x, 0u, 43299u, u_input.c)) % vec4<u32>(32u))) << (countOneBits(vec4<u32>(4294967295u, (var_1 ^ global2[_wgslsmith_index_u32(24397u, 9u)]) & _wgslsmith_div_u32(var_1, 0u), 22230u, global2[_wgslsmith_index_u32(11661u, 9u)])) % vec4<u32>(32u));
    var var_4 = 69703u;
    var var_5 = Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(f32(-1f) * -905f)), var_2, _wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2), 609f))), vec4<f32>(1000f, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2))), true)), firstLeadingBit(0u), -u_input.b);
    var var_6 = vec2<bool>(!(true & (var_5.a.x <= 175f)), any(vec2<bool>(true, func_2())));
    var_6 = !select(!select(select(vec2<bool>(var_6.x, false), vec2<bool>(var_6.x, var_6.x), vec2<bool>(var_6.x, true)), select(vec2<bool>(false, true), vec2<bool>(var_6.x, true), var_6.x), vec2<bool>(true, false)), select(!select(vec2<bool>(true, false), vec2<bool>(var_6.x, true), vec2<bool>(var_6.x, false)), select(select(vec2<bool>(var_6.x, false), vec2<bool>(var_6.x, var_6.x), vec2<bool>(var_6.x, false)), !vec2<bool>(false, var_6.x), select(var_6.x, true, true)), var_6.x), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(var_5.b, ~(var_1 >> (abs(var_1) % 32u))), ~(~var_3.wz));
}

