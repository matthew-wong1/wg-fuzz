struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec3<i32>,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

var<private> global1: Struct_1 = Struct_1(vec3<bool>(false, false, true), 7622i, vec3<i32>(0i, -15155i, 32630i), 189f, true);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: i32) -> i32 {
    global0 = array<Struct_1, 29>();
    return arg_0.c.x;
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_dot_vec4_i32(u_input.c, ~u_input.c);
    global0 = array<Struct_1, 29>();
    var var_1 = Struct_1(select(!select(select(arg_1.a, vec3<bool>(false, global1.e, global1.a.x), global1.a), arg_1.a, !global1.a), select(vec3<bool>(global1.e, false, true), !vec3<bool>(true, true, arg_1.a.x), any(vec4<bool>(global1.e, false, arg_1.a.x, global1.a.x))), arg_1.a.x), _wgslsmith_dot_vec4_i32(select(vec4<i32>(-2147483647i, reverseBits(0i), var_0 >> (68673u % 32u), arg_1.b), vec4<i32>(arg_1.b, global1.b, reverseBits(2147483647i), 2147483647i), !select(vec4<bool>(false, arg_1.e, false, global1.e), vec4<bool>(true, true, arg_1.e, true), true)), select(vec4<i32>(-2147483647i, min(-11760i, -2147483647i), -u_input.c.x, ~u_input.c.x), u_input.c, false & arg_0)), max(_wgslsmith_div_vec3_i32(~u_input.c.wyz >> (vec3<u32>(u_input.a.x, u_input.b, u_input.e.x) % vec3<u32>(32u)), arg_1.c), select(u_input.c.zyw, vec3<i32>(-51709i, -29583i, arg_1.c.x), !vec3<bool>(global1.a.x, false, true)) << (~_wgslsmith_mod_vec3_u32(u_input.e, vec3<u32>(u_input.b, 0u, 4294967295u)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-180f - -714f), !(~1u <= u_input.e.x));
    var_1 = global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(firstLeadingBit(abs(firstTrailingBit(vec4<u32>(u_input.d.x, u_input.a.x, 1209u, u_input.b)))), _wgslsmith_clamp_vec4_u32(firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(76696u, 65237u, 1u, u_input.e.x), vec4<u32>(4294967295u, u_input.e.x, 0u, u_input.e.x))), abs(~vec4<u32>(48066u, u_input.b, u_input.a.x, 39841u)), reverseBits(~vec4<u32>(4294967295u, 1u, u_input.e.x, u_input.b))))), 29u)];
    var_1 = Struct_1(vec3<bool>(!(!(!global1.a.x)), true & global1.a.x, any(arg_1.a.xz)), _wgslsmith_mod_i32(~(-48499i), ~(-15642i)), max(vec3<i32>(min(_wgslsmith_sub_i32(0i, u_input.c.x), -global1.b), ~reverseBits(var_0), ~func_1(global0[_wgslsmith_index_u32(1u, 29u)], vec4<u32>(1u, u_input.a.x, 4294967295u, u_input.b), 1i)), arg_1.c), arg_1.d, (_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.d * global1.d), _wgslsmith_f_op_f32(-635f - global1.d))) <= _wgslsmith_f_op_f32(select(global1.d, 1005f, all(var_1.a)))) | !(true | (arg_0 & var_1.a.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.d), _wgslsmith_div_f32(-435f, _wgslsmith_f_op_f32(floor(var_1.d)))))) - 579f);
}

fn func_2(arg_0: i32) -> vec3<bool> {
    let var_0 = u_input.c;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.d)) - _wgslsmith_f_op_f32(func_3(global1.a.x, global0[_wgslsmith_index_u32(u_input.d.x, 29u)])))))));
    global0 = array<Struct_1, 29>();
    global0 = array<Struct_1, 29>();
    let var_2 = global1.a.zy;
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(func_2(~func_1(global0[_wgslsmith_index_u32(0u, 29u)], vec4<u32>(67769u, 5243u, 0u, u_input.b), global1.c.x)), select(vec3<bool>(any(vec4<bool>(false, false, global1.e, false)), any(global1.a), all(vec2<bool>(global1.a.x, false))), func_2(global1.c.x), select(all(vec2<bool>(false, true)), true, true)), vec3<bool>(any(func_2(global1.c.x)), all(vec4<bool>(global1.a.x, true, true, false)), global1.a.x)), u_input.c.x, abs(~select(-vec3<i32>(u_input.c.x, 2147483647i, -7265i), vec3<i32>(u_input.c.x, global1.b, u_input.c.x), true)), -566f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(740f, global1.d))) >= _wgslsmith_div_f32(1366f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.d)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f)));
    global1 = Struct_1(func_2(_wgslsmith_mod_i32(_wgslsmith_mod_i32(2147483647i >> (u_input.b % 32u), -1i >> (0u % 32u)), (var_0.b << (31891u % 32u)) & 16739i)), global1.b, vec3<i32>(u_input.c.x, i32(-1i) * -firstTrailingBit(-1i), global1.c.x), _wgslsmith_f_op_f32(1200f + var_0.d), false);
    global0 = array<Struct_1, 29>();
    global0 = array<Struct_1, 29>();
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32((u_input.a | (u_input.e >> (vec3<u32>(u_input.b, 1u, u_input.e.x) % vec3<u32>(32u)))) >> (_wgslsmith_clamp_vec3_u32(firstTrailingBit(u_input.a), vec3<u32>(u_input.e.x, 1u, 0u), vec3<u32>(39425u, u_input.a.x, 0u) | vec3<u32>(u_input.e.x, u_input.d.x, u_input.d.x)) % vec3<u32>(32u)), max(~(~u_input.d), u_input.e)), _wgslsmith_sub_vec3_u32(u_input.e, vec3<u32>(max(countOneBits(72728u), max(u_input.a.x, u_input.e.x)), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 0u), vec2<u32>(0u, u_input.e.x)), ~_wgslsmith_div_u32(u_input.a.x, u_input.b)))), 29u)];
    var var_3 = Struct_1(select(var_2.a, func_2(45019i), var_0.a), u_input.c.x, ~(-reverseBits(vec3<i32>(u_input.c.x, 0i, -1622i) << (u_input.a % vec3<u32>(32u)))), var_0.d, ~select(select(u_input.d.x, 1u, global1.a.x), _wgslsmith_div_u32(u_input.a.x, 2709u), true) < ~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(31563u, 1u, u_input.b)), u_input.a));
    global0 = array<Struct_1, 29>();
    var var_4 = countOneBits(u_input.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1801f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d))))), 1i);
}

