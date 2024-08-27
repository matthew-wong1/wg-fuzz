struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_3;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_3) -> i32 {
    var var_0 = 538f;
    global0 = abs(u_input.b.x) ^ _wgslsmith_dot_vec3_u32(max(~arg_1, arg_1) & ~(vec3<u32>(2773u, 4294967295u, arg_1.x) >> (arg_0.a.yyw % vec3<u32>(32u))), vec3<u32>(~u_input.a, 17894u, u_input.a));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2036f))) + _wgslsmith_f_op_f32(round(-307f))), -415f, _wgslsmith_f_op_f32(floor(383f))));
    var_0 = -210f;
    let var_2 = var_1.x;
    return _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.d.a.x, global1.c.a.x) << (vec2<u32>(arg_0.e.x, arg_0.e.x) % vec2<u32>(32u)), vec2<i32>(~arg_2.c.b, arg_2.c.a.x)), min(~_wgslsmith_mod_i32(-1i, arg_2.c.a.x), ~arg_0.c.a.x)), abs(~abs(firstLeadingBit(18065i))));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> Struct_3 {
    global1 = Struct_3(vec2<bool>(u_input.a > ~(~10945u), all(vec2<bool>(true, true))), global1.b, global1.c);
    var var_0 = global1.b;
    global1 = Struct_3(global1.a, !global1.a, Struct_1(vec2<i32>(-1i, func_3(Struct_2(vec4<u32>(u_input.a, 1u, u_input.a, 32992u), Struct_1(global1.c.a, arg_1.b), arg_1, arg_1, vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), select(vec3<u32>(u_input.a, u_input.b.x, 20132u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<bool>(arg_0, true, global1.b.x)), Struct_3(global1.b, vec2<bool>(true, var_0.x), arg_1))), ~global1.c.b));
    return Struct_3(global1.a, global1.a, global1.c);
}

fn func_1() -> Struct_3 {
    global1 = func_2(!global1.b.x, Struct_1(global1.c.a >> (u_input.b % vec2<u32>(32u)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(~60779i, _wgslsmith_mod_i32(54740i, global1.c.a.x)), _wgslsmith_dot_vec3_i32(select(vec3<i32>(-2147483647i, global1.c.b, global1.c.b), vec3<i32>(global1.c.a.x, global1.c.b, global1.c.b), global1.a.x), vec3<i32>(17189i, global1.c.b, global1.c.b) >> (vec3<u32>(1u, u_input.a, 12421u) % vec3<u32>(32u))))));
    global1 = Struct_3(select(vec2<bool>(!(-1i == global1.c.a.x), false), select(global1.a, global1.a, select(select(global1.b, global1.a, true), select(global1.b, global1.a, global1.b), global1.a)), 4294967295u < u_input.a), vec2<bool>(true, true), Struct_1(firstTrailingBit(vec2<i32>(global1.c.a.x, global1.c.b)) >> ((~u_input.b << (u_input.b % vec2<u32>(32u))) % vec2<u32>(32u)), ~max(select(global1.c.b, global1.c.a.x, global1.a.x), 39673i)));
    global1 = Struct_3(!select(func_2(true, func_2(global1.b.x, global1.c).c).a, global1.a, !global1.a), select(select(vec2<bool>(true, !global1.a.x), select(!vec2<bool>(global1.a.x, global1.b.x), !vec2<bool>(global1.b.x, false), global1.a), true), vec2<bool>(global1.a.x, global1.b.x), !global1.a.x), func_2(global1.a.x, global1.c).c);
    let var_0 = u_input.b.x;
    global0 = ~17033u;
    return Struct_3(!select(global1.b, !func_2(global1.a.x, Struct_1(global1.c.a, global1.c.a.x)).b, select(!vec2<bool>(global1.b.x, global1.a.x), global1.a, any(vec4<bool>(true, global1.b.x, global1.b.x, false)))), select(func_2(true && all(global1.a), func_2(true, Struct_1(global1.c.a, global1.c.a.x)).c).a, func_2(true, func_2(global1.a.x, Struct_1(vec2<i32>(28030i, global1.c.b), 17206i)).c).a, 4294967295u != _wgslsmith_mod_u32(~66834u, ~var_0)), Struct_1(-vec2<i32>(global1.c.a.x, global1.c.a.x) >> (_wgslsmith_add_vec2_u32(u_input.b, max(vec2<u32>(85467u, 1u), u_input.b)) % vec2<u32>(32u)), global1.c.a.x | 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(!global1.a, global1.b, Struct_1(global1.c.a, _wgslsmith_sub_i32(global1.c.a.x, global1.c.b)));
    var var_0 = func_1();
    let var_1 = -82206i;
    let var_2 = global1.c.a;
    let var_3 = Struct_2(~(~vec4<u32>(25984u, 1u, reverseBits(21990u), ~u_input.a)), Struct_1(vec2<i32>(global1.c.b, 16857i) | min(vec2<i32>(var_2.x, var_0.c.b), global1.c.a), -9782i), Struct_1(vec2<i32>(_wgslsmith_div_i32(6674i, -var_2.x), ~min(global1.c.a.x, var_0.c.a.x)), -2147483647i), func_2(!select(true, true, global1.a.x), func_1().c).c, vec3<u32>(~u_input.a, 46561u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -651f)) - -757f)));
}

