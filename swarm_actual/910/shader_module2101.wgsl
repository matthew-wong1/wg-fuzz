struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec4<bool>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: u32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 26>;

var<private> global1: Struct_2 = Struct_2(vec4<f32>(824f, -833f, -356f, -707f), Struct_1(1i, vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), 4294967295u, 91091u));

var<private> global2: Struct_2 = Struct_2(vec4<f32>(2428f, 581f, 1097f, 1586f), Struct_1(110585i, vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), 0u, 29390u));

var<private> global3: Struct_1;

var<private> global4: array<vec3<i32>, 6> = array<vec3<i32>, 6>(vec3<i32>(-14460i, -6090i, 48702i), vec3<i32>(i32(-2147483648), -1i, 3850i), vec3<i32>(40243i, i32(-2147483648), 1i), vec3<i32>(i32(-2147483648), -1i, 5957i), vec3<i32>(-26311i, 42557i, 2147483647i), vec3<i32>(-20752i, 1i, -33185i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: vec2<u32>) -> i32 {
    global0 = array<vec2<u32>, 26>();
    var var_0 = global3.b.xwy;
    let var_1 = global3.c.x;
    var var_2 = global2.b;
    var_2 = Struct_1(~(-36362i), global2.b.b, select(vec4<bool>(all(!vec3<bool>(global3.c.x, var_2.b.x, global2.b.b.x)), all(var_0.zy) & true, global3.c.x, any(!vec2<bool>(global2.b.c.x, true))), vec4<bool>(any(var_2.c), !all(vec3<bool>(global2.b.c.x, arg_0, arg_0)), any(vec3<bool>(false, global1.b.c.x, arg_0)), true), global1.b.c), select(arg_2.x, (u_input.a | 4294967295u) & ~arg_2.x, arg_0) << (arg_2.x % 32u), _wgslsmith_mod_u32(abs(0u), ~var_2.d) & global2.b.d);
    return 1i;
}

fn func_2() -> Struct_2 {
    var var_0 = vec4<i32>(global2.b.a, 2147483647i, firstLeadingBit(_wgslsmith_mod_i32(func_3(true, vec2<f32>(global1.a.x, -1744f), vec2<u32>(21745u, 1u)), 8835i)), 49228i);
    global4 = array<vec3<i32>, 6>();
    var_0 = ~((~vec4<i32>(1i, global1.b.a, var_0.x, global3.a) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -70047i, 1i, global3.a), vec4<i32>(global1.b.a, -13180i, 0i, global2.b.a))) >> ((max(vec4<u32>(1u, u_input.a, global2.b.e, 4294967295u), vec4<u32>(global2.b.d, global3.d, global3.d, 40789u)) & ~vec4<u32>(global3.d, 1u, 94595u, 1u)) % vec4<u32>(32u))) >> (_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(30279u, firstTrailingBit(1u), 17341u, 43871u), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, global3.e, 7364u, u_input.a), vec4<u32>(global1.b.e, global3.d, 0u, 61122u), vec4<u32>(4294967295u, 1u, global1.b.d, 11379u)), vec4<u32>(1u, global3.e, 1u, 1u) >> (vec4<u32>(global1.b.d, global2.b.e, global2.b.e, 29953u) % vec4<u32>(32u)))), vec4<u32>(0u, 383u, _wgslsmith_mod_u32(_wgslsmith_div_u32(global2.b.e, u_input.a), ~105497u), u_input.a)) % vec4<u32>(32u));
    let var_1 = firstTrailingBit(-2147483647i);
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) * vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-428f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.a.x, global1.a.x)) - global2.a.x), global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, global2.a.x)))), global2.b);
    return Struct_2(_wgslsmith_f_op_vec4_f32(sign(global1.a)), global1.b);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<i32>) -> Struct_1 {
    global3 = Struct_1(0i, arg_0, !select(global2.b.c, select(vec4<bool>(true, true, global1.b.b.x, false), global2.b.c, global1.b.c), select(vec4<bool>(global2.b.c.x, arg_0.x, true, false), !vec4<bool>(global1.b.c.x, global2.b.c.x, true, true), vec4<bool>(false, true, arg_0.x, global2.b.b.x))), global2.b.d, ~firstTrailingBit(global1.b.d));
    global1 = func_2();
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-global2.a), global1.b);
    var var_1 = ~vec4<u32>(global1.b.e, func_2().b.e, ~17372u, 1u);
    global0 = array<vec2<u32>, 26>();
    return Struct_1(1i, var_0.b.b, vec4<bool>(select(global3.b.x, false, (true | var_0.b.b.x) | var_0.b.b.x), any(!global2.b.b.wxy), arg_0.x, all(select(vec4<bool>(false, global1.b.c.x, global3.b.x, true), vec4<bool>(var_0.b.c.x, global2.b.b.x, true, var_0.b.b.x), global1.b.c.x)) & false), 16251u, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4[_wgslsmith_index_u32(abs(select(37844u, global1.b.d, !all(vec2<bool>(global1.b.c.x, true)) && global2.b.c.x)), 6u)];
    global2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, 1399f, 1469f, _wgslsmith_f_op_f32(step(global1.a.x, global2.a.x))) * global2.a) - vec4<f32>(1011f, _wgslsmith_div_f32(_wgslsmith_div_f32(1000f, global2.a.x), -571f), global2.a.x, -1200f)), func_1(vec4<bool>(!(!global2.b.b.x), !(global3.b.x || true), (global3.c.x && true) || true, true), -max(vec3<i32>(-40678i, 2147483647i, global2.b.a), vec3<i32>(global2.b.a, global2.b.a, 25250i)) >> (~vec3<u32>(global3.e, global2.b.d, 1u) % vec3<u32>(32u))));
    let var_1 = var_0.xy;
    global1 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

