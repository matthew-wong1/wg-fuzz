struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: Struct_1,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
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

var<private> global0: Struct_2;

var<private> global1: Struct_2 = Struct_2(vec3<f32>(-1497f, -942f, -747f), vec3<bool>(false, true, false), Struct_1(vec4<i32>(1i, 2775i, 2147483647i, -11136i), vec2<bool>(false, false), -19877i), false, 37957u);

var<private> global2: array<vec3<bool>, 24>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<u32>) -> bool {
    let var_0 = Struct_3(global0.c, select(select(vec4<bool>(global0.d, global0.d, true, !global0.c.b.x), !select(vec4<bool>(true, true, global0.b.x, global0.d), vec4<bool>(global0.c.b.x, global0.b.x, true, global1.c.b.x), global0.c.b.x), !vec4<bool>(global1.b.x, false, global1.c.b.x, true)), select(!vec4<bool>(true, global1.c.b.x, global0.c.b.x, true), !select(vec4<bool>(false, true, true, global0.c.b.x), vec4<bool>(global0.b.x, global1.c.b.x, global0.b.x, true), false), true), -13337i < _wgslsmith_add_i32(global1.c.a.x, ~global0.c.a.x)), ~(~vec2<u32>(25662u, 5086u)), global1.c);
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(exp2(global1.a.x)), _wgslsmith_f_op_f32(-global0.a.x))), select(select(global0.b, select(global0.b, global1.b, select(global1.b, global2[_wgslsmith_index_u32(arg_0.x, 24u)], false)), true), !(!global2[_wgslsmith_index_u32(0u, 24u)]), !global2[_wgslsmith_index_u32(1u, 24u)]), global1.c, all(vec2<bool>(-2147483647i > var_0.a.c, -100f < global0.a.x)) && !all(vec2<bool>(global1.d, var_0.b.x)), 0u);
    var var_1 = ~(~17772i >> ((_wgslsmith_dot_vec3_u32(~arg_0.xzz, abs(arg_0.xwx)) >> (_wgslsmith_add_u32(~arg_0.x, global0.e) % 32u)) % 32u));
    var var_2 = !any(vec2<bool>(true, false & (global0.d | true)));
    var var_3 = _wgslsmith_div_u32(~(arg_0.x << (~(~global0.e) % 32u)), ~(~(~(global0.e | var_0.c.x))));
    return true;
}

fn func_2() -> vec4<bool> {
    var var_0 = !(!vec3<bool>(global1.b.x, false, (global1.c.a.x | -29059i) != 2147483647i));
    global2 = array<vec3<bool>, 24>();
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(-global0.a), global0.b, global0.c, any(select(!(!global1.c.b), vec2<bool>(global1.d, var_0.x), !select(var_0.zy, vec2<bool>(global0.c.b.x, true), vec2<bool>(var_0.x, var_0.x)))), u_input.b.x);
    global2 = array<vec3<bool>, 24>();
    var var_1 = !(!(min(74261u, global1.e) >= min(global0.e, 4294967295u)) == all(vec4<bool>(true, global0.b.x, global1.c.a.x <= global0.c.c, global0.d)));
    return !(!select(vec4<bool>(false == var_0.x, func_3(vec4<u32>(global0.e, global0.e, 18391u, u_input.a)), global0.c.c <= global1.c.a.x, all(var_0.yx)), select(!vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(true, global0.d, true, var_0.x), select(vec4<bool>(var_0.x, true, true, false), vec4<bool>(true, global1.c.b.x, global0.d, global0.c.b.x), vec4<bool>(global1.c.b.x, true, var_0.x, true))), all(vec2<bool>(var_0.x, var_0.x))));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    return global1.c;
}

fn func_1(arg_0: vec3<i32>, arg_1: u32) -> vec4<i32> {
    let var_0 = func_4(Struct_3(Struct_1(global1.c.a, global0.c.b, ~global1.c.a.x), func_2(), abs(u_input.b), Struct_1(-vec4<i32>(global1.c.c, global0.c.a.x, global1.c.c, 0i), vec2<bool>(true, global0.c.b.x), i32(-1i) * -39867i)));
    global2 = array<vec3<bool>, 24>();
    global0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -334f), _wgslsmith_f_op_f32(global1.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2206f, global1.a.x, true)) + _wgslsmith_f_op_f32(step(738f, global1.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-902f - 1348f) * -1000f))), !(!(!global1.b)), Struct_1(_wgslsmith_div_vec4_i32(global0.c.a << (vec4<u32>(arg_1, 24202u, 39851u, global0.e) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(-16536i, arg_0.x, var_0.c, global0.c.c)), ~var_0.a)), !func_2().yy, global0.c.c), global0.c.b.x, ~(~1u));
    global2 = array<vec3<bool>, 24>();
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(global1.a)))), !(!vec3<bool>(global1.d, true, true)), func_4(Struct_3(func_4(Struct_3(global0.c, vec4<bool>(true, true, false, false), u_input.b, var_0)), !select(vec4<bool>(var_0.b.x, false, false, global1.b.x), vec4<bool>(var_0.b.x, false, global0.d, var_0.b.x), var_0.b.x), u_input.b, Struct_1(vec4<i32>(6737i, 53702i, 1995i, -20384i), vec2<bool>(global0.b.x, false), arg_0.x))), !global1.d && all(!(!vec4<bool>(true, true, var_0.b.x, global1.c.b.x))), 4294967295u << (~(~_wgslsmith_add_u32(0u, global1.e)) % 32u));
    return max(~select(abs(vec4<i32>(global1.c.c, var_0.c, 34732i, 2147483647i)) ^ vec4<i32>(global1.c.a.x, var_0.a.x, -1i, -2147483647i), countOneBits(~global0.c.a), select(true & global0.c.b.x, global1.d, false)), select(-global0.c.a, vec4<i32>(~(-2147483647i), global1.c.a.x, abs(var_0.a.x), var_0.a.x >> (1u % 32u)), true) >> (firstLeadingBit(vec4<u32>(countOneBits(arg_1), _wgslsmith_mod_u32(4448u, arg_1), ~0u, firstLeadingBit(u_input.a))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<bool>, 24>();
    global2 = array<vec3<bool>, 24>();
    var var_0 = Struct_3(Struct_1(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(global0.c.c, global1.c.a.x, 0i, global0.c.a.x), -global0.c.a), max(func_1(global0.c.a.zwz, u_input.b.x), vec4<i32>(2147483647i, 2147483647i, global1.c.a.x, global0.c.a.x))), vec2<bool>(global1.b.x | true, global0.b.x), ~global0.c.a.x), !select(vec4<bool>(global0.d && global1.c.b.x, global1.c.b.x, false, !global0.b.x), select(!vec4<bool>(global1.d, true, false, true), !vec4<bool>(global0.b.x, true, global1.c.b.x, global0.d), global0.c.b.x), select(!vec4<bool>(true, true, global0.c.b.x, true), !vec4<bool>(global0.b.x, false, false, global1.b.x), all(vec2<bool>(global1.c.b.x, false)))), u_input.b, func_4(Struct_3(func_4(Struct_3(global1.c, vec4<bool>(global1.b.x, global1.d, true, global1.b.x), u_input.b, global1.c)), select(select(vec4<bool>(global1.c.b.x, false, global0.c.b.x, global1.c.b.x), vec4<bool>(global0.d, global0.b.x, false, global1.d), vec4<bool>(global0.b.x, false, false, true)), select(vec4<bool>(global0.c.b.x, global0.c.b.x, true, global0.b.x), vec4<bool>(global1.c.b.x, true, false, false), vec4<bool>(true, global1.b.x, global1.b.x, false)), !global0.b.x), abs(_wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(global0.e, global0.e))), Struct_1(global0.c.a, func_4(Struct_3(global1.c, vec4<bool>(global0.c.b.x, global1.c.b.x, global1.d, global0.b.x), vec2<u32>(global1.e, 4294967295u), Struct_1(vec4<i32>(0i, global1.c.c, global1.c.c, global1.c.c), global1.b.xx, -16167i))).b, -1i & global1.c.a.x))));
    var var_1 = Struct_3(var_0.d, select(vec4<bool>(true, var_0.a.b.x, !func_4(Struct_3(Struct_1(vec4<i32>(0i, var_0.d.a.x, global1.c.c, 35998i), vec2<bool>(false, global0.b.x), -32156i), vec4<bool>(global1.c.b.x, false, true, true), vec2<u32>(4294967295u, var_0.c.x), Struct_1(vec4<i32>(48303i, global0.c.a.x, 18863i, global1.c.a.x), vec2<bool>(global1.d, true), -1i))).b.x, any(vec4<bool>(false, var_0.b.x, false, true))), var_0.b, !vec4<bool>(func_3(vec4<u32>(4294967295u, 105091u, 72256u, var_0.c.x)), u_input.b.x <= 1u, false, true)), abs(var_0.c), var_0.a);
    var var_2 = vec3<i32>(abs(-20299i), var_1.d.a.x, ~var_0.a.a.x >> ((~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global0.e), u_input.b) << (4294967295u % 32u)) % 32u));
    let var_3 = min(vec2<u32>(4294967295u, var_1.c.x) | select(select(vec2<u32>(var_1.c.x, global0.e) >> (vec2<u32>(global1.e, 1u) % vec2<u32>(32u)), ~var_0.c, select(var_1.a.b, var_0.d.b, global0.b.zy)), vec2<u32>(51269u, var_1.c.x >> (1u % 32u)), vec2<bool>(true, true)), _wgslsmith_mult_vec2_u32(min(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, global1.e), vec2<u32>(56375u, var_0.c.x), vec2<u32>(4294967295u, var_1.c.x)), ~var_1.c), vec2<u32>(u_input.a, ~64424u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(2147483647i, select(abs(i32(-1i) * -40822i), var_0.a.c, _wgslsmith_f_op_f32(global1.a.x * -402f) <= _wgslsmith_f_op_f32(844f - 1912f))));
}

