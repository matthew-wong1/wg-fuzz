struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
    d: vec3<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 17>;

var<private> global1: Struct_2 = Struct_2(-1549f, 8153u, Struct_1(vec2<u32>(1u, 4294967295u)));

var<private> global2: array<u32, 26> = array<u32, 26>(34587u, 1u, 1u, 15643u, 58531u, 44590u, 35539u, 29242u, 34704u, 93751u, 38068u, 4294967295u, 40588u, 1u, 0u, 2541u, 4294967295u, 67581u, 0u, 79040u, 4294967295u, 0u, 4294967295u, 0u, 41291u, 1u);

var<private> global3: vec3<i32> = vec3<i32>(1i, 2147483647i, 35997i);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3) -> i32 {
    let var_0 = vec4<f32>(-1050f, 1157f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(865f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(-1000f + 1292f)), global1.a))));
    let var_1 = arg_0;
    global1 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.c.a - -758f), 1053f)) * var_1.e.a), _wgslsmith_f_op_f32(f32(-1f) * -1578f))), firstLeadingBit(var_1.c.c.a.x), arg_0.c.c);
    var var_2 = select(!(!select(vec4<bool>(false, arg_0.d.x, arg_0.d.x, var_1.d.x), vec4<bool>(false, false, var_1.d.x, var_1.d.x), select(vec4<bool>(false, true, arg_0.d.x, true), vec4<bool>(arg_0.d.x, false, false, arg_0.d.x), var_1.d.x))), vec4<bool>(true, true, select(!all(var_1.d), false && !var_1.d.x, true && select(var_1.d.x, arg_0.d.x, false)), var_1.d.x), !vec4<bool>(4294967295u <= u_input.c.x, !(var_0.x <= 902f), true, true));
    var var_3 = var_1.e;
    return _wgslsmith_div_i32(global3.x, -43625i);
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_2 {
    global3 = _wgslsmith_mod_vec3_i32(-_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(50207i, 2147483647i, 2147483647i), vec3<i32>(-1i, u_input.d.x, u_input.b)), _wgslsmith_div_vec3_i32(vec3<i32>(global3.x, u_input.d.x, 3996i), vec3<i32>(arg_0, u_input.d.x, global3.x))), select(vec3<i32>(u_input.a, u_input.a, 2147483647i), vec3<i32>(u_input.b, global3.x, 35934i), vec3<bool>(true, true, false)) >> (~vec3<u32>(global1.c.a.x, arg_1.x, 1u) % vec3<u32>(32u)), vec3<i32>(2147483647i, global3.x & 65595i, global3.x)), firstTrailingBit(max(min(vec3<i32>(arg_0, global3.x, arg_0), _wgslsmith_div_vec3_i32(vec3<i32>(1i, arg_0, arg_0), vec3<i32>(1157i, 76829i, 1i))), vec3<i32>(arg_0, func_3(Struct_3(1i, arg_2, Struct_2(global1.a, global1.b, Struct_1(vec2<u32>(arg_2.a.x, 2271u))), vec3<bool>(false, true, true), Struct_2(1000f, 0u, Struct_1(arg_1.zy)))), -global3.x))));
    var var_0 = global3.x;
    let var_1 = _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(1u, arg_2.a.x), reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.x, 0u), vec2<u32>(global2[_wgslsmith_index_u32(global1.b, 26u)], global2[_wgslsmith_index_u32(12601u, 26u)])))), _wgslsmith_clamp_vec2_u32(arg_1.zw, abs(arg_2.a), vec2<u32>(arg_1.x, 31943u))) ^ max(vec2<u32>(1u, global2[_wgslsmith_index_u32(4294967295u, 26u)]), vec2<u32>(13289u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(0u, global1.b), global1.c.a.x, arg_2.a.x)));
    let var_2 = vec3<u32>(~_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(global2[_wgslsmith_index_u32(global1.b, 26u)], global1.b)), vec2<u32>(46933u, 8377u)), global1.c.a.x, ~u_input.c.x);
    var var_3 = ~_wgslsmith_clamp_u32(countOneBits(_wgslsmith_div_u32(min(arg_2.a.x, 4294967295u), firstLeadingBit(arg_2.a.x))), ~23840u, u_input.c.x);
    return Struct_2(global1.a, ~4294967295u, global1.c);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: Struct_2) -> u32 {
    var var_0 = 614f;
    let var_1 = 1243f;
    global1 = arg_0.e;
    var var_2 = any(vec2<bool>((arg_2.a | -18549i) != u_input.b, false));
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.a)));
    return 6596u;
}

fn func_1(arg_0: u32, arg_1: bool) -> Struct_3 {
    let var_0 = _wgslsmith_mult_u32(select(~1u, func_4(Struct_3(global3.x, global1.c, func_2(2147483647i, vec4<u32>(global1.b, 14221u, 67752u, global1.b), Struct_1(global1.c.a)), select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(true, false, true)), Struct_2(global1.a, 1u, Struct_1(vec2<u32>(24607u, 25533u)))), vec3<f32>(global1.a, 852f, global1.a), Struct_3(-global3.x, Struct_1(vec2<u32>(u_input.c.x, global1.b)), Struct_2(-544f, arg_0, global1.c), select(vec3<bool>(false, arg_1, true), vec3<bool>(true, true, arg_1), true), func_2(21418i, vec4<u32>(global2[_wgslsmith_index_u32(global1.b, 26u)], 69001u, u_input.c.x, global2[_wgslsmith_index_u32(global1.c.a.x, 26u)]), Struct_1(global1.c.a))), Struct_2(_wgslsmith_f_op_f32(max(global1.a, global1.a)), abs(u_input.c.x), func_2(0i, vec4<u32>(global1.b, global1.b, 0u, global1.b), global1.c).c)), !(true & all(vec2<bool>(false, arg_1)))), 0u);
    let var_1 = _wgslsmith_f_op_f32(-global1.a);
    global0 = array<vec2<f32>, 17>();
    var var_2 = _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(~(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0, arg_0, 7903u, global1.c.a.x), vec4<u32>(global1.c.a.x, 11789u, global1.b, 66315u)) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.c.a.x, 4294967295u, arg_0, u_input.c.x), vec4<u32>(arg_0, 1u, 1u, var_0), vec4<u32>(0u, 57030u, 12294u, u_input.c.x))), vec4<u32>(4294967295u, _wgslsmith_mult_u32(global1.b, ~4294967295u), 0u, _wgslsmith_sub_u32(abs(u_input.c.x), arg_0)), ~select(~vec4<u32>(global1.b, arg_0, arg_0, 80630u), vec4<u32>(22145u, u_input.c.x, 0u, 35268u), vec4<bool>(arg_1, arg_1, false, true))), ~(~select(vec4<u32>(global2[_wgslsmith_index_u32(u_input.c.x, 26u)], var_0, 0u, 0u) & vec4<u32>(11984u, global1.c.a.x, u_input.c.x, 0u), vec4<u32>(u_input.c.x, 4294967295u, global2[_wgslsmith_index_u32(4294967295u, 26u)], u_input.c.x), vec4<bool>(true, true, true, true))));
    let var_3 = 1u;
    return Struct_3(-2075i, global1.c, func_2(-1311i, vec4<u32>(67545u, ~global2[_wgslsmith_index_u32(select(0u, 51492u, false), 26u)], ~33903u, ~(43806u & var_0)), global1.c), vec3<bool>(max(~11945i, _wgslsmith_dot_vec4_i32(vec4<i32>(-39832i, 30297i, global3.x, u_input.b), vec4<i32>(1i, -2147483647i, 2147483647i, global3.x))) <= reverseBits(u_input.d.x), !select(!arg_1, true | arg_1, arg_1), true), func_2(-14572i, ~max(vec4<u32>(var_3, 72147u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 26u)], 26u)], arg_0), vec4<u32>(0u, var_2.x, 3165u, 4294967295u)), func_2(~0i << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 45324u, global1.c.a.x, global1.c.a.x), vec4<u32>(1u, arg_0, var_0, u_input.c.x)) % 32u), _wgslsmith_add_vec4_u32(~vec4<u32>(94538u, var_2.x, 4294967295u, u_input.c.x), ~vec4<u32>(0u, arg_0, 4294967295u, global2[_wgslsmith_index_u32(global1.b, 26u)])), func_2(-2147483647i, ~vec4<u32>(var_2.x, arg_0, 35763u, arg_0), Struct_1(u_input.c.xx)).c).c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~22744u >> (_wgslsmith_dot_vec4_u32(~(vec4<u32>(global2[_wgslsmith_index_u32(u_input.c.x, 26u)], global1.b, 0u, global1.c.a.x) ^ vec4<u32>(2308u, 1u, 13959u, u_input.c.x)), _wgslsmith_sub_vec4_u32(~vec4<u32>(global1.c.a.x, 4294967295u, 0u, u_input.c.x), max(vec4<u32>(global2[_wgslsmith_index_u32(global1.c.a.x, 26u)], 4294967295u, 1u, global2[_wgslsmith_index_u32(4294967295u, 26u)]), vec4<u32>(77456u, 22388u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.c.a.x, 26u)], 26u)], global2[_wgslsmith_index_u32(u_input.c.x, 26u)])))) % 32u), true);
    global0 = array<vec2<f32>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(-52555i);
}

