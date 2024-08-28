struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: f32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec4<bool>, 30>;

var<private> global2: vec4<bool> = vec4<bool>(false, false, false, true);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    var var_0 = arg_0;
    global2 = global1[_wgslsmith_index_u32(~global0.c.a << ((arg_1.a ^ arg_2) % 32u), 30u)];
    global1 = array<vec4<bool>, 30>();
    return global0.c;
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: i32) -> i32 {
    global0 = Struct_3(abs(vec3<i32>(_wgslsmith_mult_i32(-4136i, u_input.a), 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.a.x, 34581i), global0.a.xx))) ^ ~vec3<i32>(firstLeadingBit(u_input.a), 0i, u_input.a | arg_2.a.x), arg_3, func_1(-1261f, func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.b.b) * 1202f), func_1(_wgslsmith_f_op_f32(floor(global0.c.b.b)), Struct_1(1u, arg_1.b, false, 196f, arg_1.e), ~4294967295u).b, ~reverseBits(1u)).b, arg_2.c.a));
    let var_0 = arg_2.c;
    var var_1 = vec2<bool>(true, any(select(!global1[_wgslsmith_index_u32(48792u, 30u)], global1[_wgslsmith_index_u32(1u, 30u)], vec4<bool>(global2.x, false || global0.c.b.c, arg_2.c.b.c, arg_1.c))));
    var var_2 = func_1(-446f, Struct_1(~firstLeadingBit(68929u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-100f * 1054f)), -547f, true)), any(select(vec3<bool>(arg_2.c.b.c, true, false), global2.xzy, global2.wyw)), var_0.b.d, ~var_0.b.e), 3130u);
    let var_3 = vec2<i32>(arg_3, 1i);
    return -_wgslsmith_mult_i32(10972i, -(~(-1i)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3) -> u32 {
    global2 = !global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0.c.b.a, ~arg_1.c.a), 30u)];
    var var_0 = false;
    let var_1 = global2.wzx;
    var var_2 = func_1(arg_0.a.d, Struct_1(23217u, _wgslsmith_f_op_f32(f32(-1f) * -572f), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-4087f)), arg_0.a.d))), arg_0.a.e), global0.c.b.e.x).b;
    let var_3 = ~firstTrailingBit(_wgslsmith_mod_vec2_u32(~arg_0.a.e.yx, _wgslsmith_clamp_vec2_u32(select(vec2<u32>(0u, 4294967295u), arg_1.c.b.e.yx, global2.wx), arg_0.a.e.yx << (arg_0.a.e.zz % vec2<u32>(32u)), ~vec2<u32>(13880u, 0u))));
    return ~12292u;
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> bool {
    var var_0 = true;
    var var_1 = Struct_3(~(~global0.a), _wgslsmith_mult_i32(47865i, ~countOneBits(~2415i)), func_1(arg_1.b.d, Struct_1(4294967295u, _wgslsmith_f_op_f32(min(-1018f, arg_1.b.d)), arg_0, -1570f, vec3<u32>(arg_1.a, global0.c.b.e.x, _wgslsmith_div_u32(global0.c.b.e.x, 21790u))), ~98217u));
    var var_2 = Struct_4(Struct_1(_wgslsmith_mod_u32(30755u, min(~1u, ~arg_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-510f, arg_1.b.d, true))), arg_0, var_1.c.b.b, global0.c.b.e));
    let var_3 = ~func_4(Struct_4(func_1(_wgslsmith_div_f32(var_2.a.b, arg_1.b.d), Struct_1(1u, 457f, var_1.c.b.c, var_1.c.b.d, global0.c.b.e), ~1u).b), Struct_3(global0.a, func_3(arg_1.b.e.zz ^ vec2<u32>(1u, 1u), var_2.a, Struct_3(global0.a, -18198i, Struct_2(4294967295u, var_2.a)), 1i), global0.c));
    var var_4 = select(!global2.xzw, select(vec3<bool>(_wgslsmith_f_op_f32(exp2(var_2.a.b)) > -1836f, global0.c.b.c, false), select(vec3<bool>(true, true, select(global0.c.b.c, arg_1.b.c, false)), select(select(vec3<bool>(var_2.a.c, false, true), global2.yyy, arg_1.b.c), select(vec3<bool>(var_2.a.c, true, global0.c.b.c), global2.zyw, global2.ywz), global2.zww), !(global2.x && var_2.a.c)), vec3<bool>(var_2.a.c, false, true)), var_2.a.c);
    return all(!global2.www) || !(!(!(arg_1.b.c || var_1.c.b.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(min(global0.c.b.a, 1u) >> (_wgslsmith_mult_u32(firstTrailingBit(global0.c.a), 89u | global0.c.a) % 32u));
    let var_1 = false & func_2(false, func_1(-2137f, global0.c.b, global0.c.a));
    global2 = vec4<bool>(true, func_2(!select(true, !global0.c.b.c, global2.x), func_1(-291f, func_1(_wgslsmith_f_op_f32(floor(global0.c.b.b)), Struct_1(var_0, 1757f, global0.c.b.c, global0.c.b.b, vec3<u32>(global0.c.a, global0.c.a, global0.c.a)), ~1u).b, ~_wgslsmith_add_u32(var_0, 14559u))), true, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.c.b.d, _wgslsmith_f_op_f32(-global0.c.b.d), _wgslsmith_f_op_f32(-681f - global0.c.b.b))))), vec2<i32>(global0.b, abs(-global0.b ^ min(10969i, 10265i))), var_0);
}

