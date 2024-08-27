struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 12> = array<vec4<bool>, 12>(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> vec2<u32> {
    global0 = array<vec4<bool>, 12>();
    let var_0 = u_input.c;
    let var_1 = arg_1.a;
    let var_2 = vec4<bool>(true, arg_1.b && select(u_input.b < 0i, (arg_3 >> (1u % 32u)) <= (arg_2 & arg_3), _wgslsmith_f_op_f32(f32(-1f) * -2377f) != _wgslsmith_f_op_f32(-arg_0.a.x)), all(global0[_wgslsmith_index_u32(~abs(var_0), 12u)]) && true, all(vec4<bool>(any(!vec3<bool>(arg_1.c.x, true, false)), arg_1.b || !arg_1.c.x, true, ~var_1.x >= arg_2)));
    var var_3 = arg_1;
    return _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(~(~u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, var_3.a.x, 1u) << (vec3<u32>(var_3.a.x, arg_1.a.x, 1u) % vec3<u32>(32u)), ~vec3<u32>(26231u, 34310u, var_1.x))), abs(arg_2)), var_1);
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = !any(select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, u_input.b < u_input.b)));
    global0 = array<vec4<bool>, 12>();
    var var_1 = arg_0;
    global0 = array<vec4<bool>, 12>();
    global0 = array<vec4<bool>, 12>();
    return Struct_1(func_3(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(var_1.a.x + var_1.a.x), -119f, -2054f)), Struct_1(vec2<u32>(1u, 4294967295u), true, vec3<bool>(true, var_0, -1715f >= var_1.a.x)), abs(u_input.a), 39413u), false, !vec3<bool>(!any(vec2<bool>(false, var_0)), var_0 | var_0, var_0 | (false | var_0)));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec3<u32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = func_2(arg_3);
    let var_1 = abs(select(-2147483647i, -48485i >> (~arg_2.x % 32u), var_0.b)) >> (~(~abs(1u)) % 32u);
    global0 = array<vec4<bool>, 12>();
    let var_2 = var_0.a.x >> (u_input.c % 32u);
    var var_3 = Struct_1(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_3.a.x))) <= _wgslsmith_f_op_f32(min(-978f, _wgslsmith_f_op_f32(f32(-1f) * -1175f))), select(!vec3<bool>(true && var_0.b, false || var_0.c.x, !var_0.b), var_0.c, vec3<bool>(!(var_0.b && var_0.b), true, !(4294967295u <= var_2))));
    return Struct_1(var_0.a, var_3.b, !var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(354f - _wgslsmith_f_op_f32(-791f + _wgslsmith_div_f32(139f, 521f))), -881f, -722f));
    global0 = array<vec4<bool>, 12>();
    let var_1 = func_1(min((_wgslsmith_clamp_i32(71916i, u_input.b, u_input.b) ^ _wgslsmith_mult_i32(2147483647i, -1i)) >> (38960u % 32u), 7062i), ~select(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(25661u, 5774u, u_input.c), ~vec3<u32>(u_input.c, u_input.c, u_input.a)), any(vec2<bool>(true, true)) != all(vec2<bool>(false, false))), abs(~(~(vec3<u32>(12495u, u_input.a, u_input.a) >> (vec3<u32>(1u, u_input.c, 4294967295u) % vec3<u32>(32u))))), var_0);
    let var_2 = false;
    global0 = array<vec4<bool>, 12>();
    let var_3 = vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 41364u, 4294967295u) << (vec4<u32>(var_1.a.x, var_1.a.x, u_input.a, 4294967295u) % vec4<u32>(32u)), vec4<u32>(4294967295u, var_1.a.x, 65761u, u_input.a) >> (vec4<u32>(u_input.a, u_input.c, 483u, 30253u) % vec4<u32>(32u))), vec4<u32>(var_1.a.x, 38426u, _wgslsmith_dot_vec2_u32(var_1.a, var_1.a), _wgslsmith_sub_u32(u_input.c, 41436u))), ~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, var_1.a.x, 2242u) >> (vec4<u32>(23618u, 0u, var_1.a.x, 1u) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(24852u, 45806u, 21317u, u_input.a)))), u_input.c, var_1.a.x ^ ~countOneBits(~70070u));
    var var_4 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(-1i << (var_3.x % 32u))) >> (8591u % 32u), ~vec4<i32>(-1i, 17631i, ~(i32(-1i) * -46026i), u_input.b), ~u_input.b, ~(~select(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, -20412i, u_input.b), vec3<i32>(u_input.b, 15186i, u_input.b)), ~vec3<i32>(u_input.b, -2147483647i, u_input.b), var_2)), var_1.a);
}

