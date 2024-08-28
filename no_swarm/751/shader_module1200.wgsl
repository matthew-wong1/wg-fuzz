struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
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

var<private> global1: i32 = 2147483647i;

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -768f), _wgslsmith_f_op_f32(global0.d.a - 202f), -458f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, _wgslsmith_div_f32(-633f, global0.d.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.d.a - global2.a))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(global0.d.a)), -538f)))), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(935f, global2.a) * -833f), _wgslsmith_f_op_f32(ceil(1f)))), global2.b), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(1016f, 3050f)), _wgslsmith_f_op_f32(-global0.d.a))), 1492f), _wgslsmith_f_op_f32(round(global2.a)))));
    var var_1 = true;
    var var_2 = select(select(!select(select(vec2<bool>(global0.a.x, global0.a.x), vec2<bool>(global0.b.x, false), global0.b.xw), global0.a.yx, true), vec2<bool>(global0.b.x, all(vec4<bool>(global0.b.x, global0.b.x, global0.b.x, true))), all(vec2<bool>(true, all(vec4<bool>(true, false, false, false))))), global0.a.xy, global0.b.x);
    let var_3 = u_input.a;
    global0 = Struct_2(vec4<bool>(var_2.x, all(!vec4<bool>(false, var_2.x, true, var_2.x)), !global0.a.x, true), !select(!select(vec4<bool>(global0.b.x, true, false, false), vec4<bool>(true, global0.a.x, true, global0.a.x), global0.a), global0.b, global0.a), firstLeadingBit(select((vec4<u32>(4294967295u, global0.c.x, 65205u, u_input.d.x) >> (global0.c % vec4<u32>(32u))) ^ global0.c, vec4<u32>(global0.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.c.x, global0.c.x), vec2<u32>(u_input.d.x, 0u)), min(u_input.d.x, global0.c.x), _wgslsmith_mult_u32(4294967295u, global0.c.x)), vec4<bool>(false, 15461i >= global2.b.x, any(global0.a.zwy), !global0.b.x))), Struct_1(_wgslsmith_f_op_f32(global2.a * _wgslsmith_f_op_f32(select(global2.a, _wgslsmith_f_op_f32(-global0.d.a), true))), firstLeadingBit(vec2<i32>(-13039i, var_0.c.b.x))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b.x))), -(u_input.a.xz << (vec2<u32>(506u, 62999u) % vec2<u32>(32u)))));
    return global0.d.a;
}

fn func_2() -> Struct_2 {
    global2 = global0.e;
    let var_0 = u_input.d.x;
    var var_1 = true;
    global2 = global0.e;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(round(-1269f))), -u_input.a.yz);
    return Struct_2(select(select(select(select(global0.b, vec4<bool>(false, global0.a.x, global0.b.x, global0.b.x), vec4<bool>(global0.b.x, global0.b.x, global0.a.x, false)), select(vec4<bool>(global0.b.x, true, global0.b.x, global0.b.x), vec4<bool>(global0.a.x, global0.b.x, true, global0.b.x), true), vec4<bool>(true, true, true, global0.a.x)), global0.a, !global0.b), select(global0.b, global0.b, global0.b), all(select(!global0.a.yyx, !vec3<bool>(true, global0.b.x, global0.b.x), any(global0.b)))), select(!select(global0.b, vec4<bool>(global0.a.x, true, false, global0.b.x), global0.b), global0.b, all(vec4<bool>(true, true, var_0 >= 13150u, global0.b.x))), select(select(~vec4<u32>(var_0, 4294967295u, 0u, u_input.d.x), abs(vec4<u32>(0u, u_input.d.x, 1u, global0.c.x)), true), _wgslsmith_clamp_vec4_u32(global0.c, global0.c, vec4<u32>(u_input.d.x, u_input.c.x, 4294967295u, 44673u)), true) << (vec4<u32>(var_0, var_0, _wgslsmith_add_u32(u_input.d.x >> (u_input.d.x % 32u), _wgslsmith_div_u32(50085u, u_input.d.x)), abs(global0.c.x)) % vec4<u32>(32u)), global0.d, var_2);
}

fn func_1(arg_0: i32) -> Struct_1 {
    global0 = func_2();
    let var_0 = arg_0;
    global2 = global0.d;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-948f, -1321f, _wgslsmith_f_op_f32(sign(global2.a))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1064f, -651f, 170f), vec3<f32>(global0.d.a, global2.a, -1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-405f, global0.e.a, -1039f)), false))), -1586f <= _wgslsmith_div_f32(509f, _wgslsmith_f_op_f32(select(global2.a, -429f, global0.a.x))))));
    global1 = 1i;
    return func_2().e;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<f32>) -> u32 {
    global0 = func_2();
    let var_0 = ~max(global0.c.x, firstTrailingBit(75090u));
    let var_1 = u_input.c;
    var var_2 = ((func_2().d.b << (_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(2212u, global0.c.x), global0.c.xw), vec2<u32>(var_0, 166497u), vec2<u32>(4294967295u, 1u) | var_1.yy) % vec2<u32>(32u))) & vec2<i32>(_wgslsmith_add_i32(~13554i, min(global2.b.x, -1i)), global2.b.x)) & ~abs(vec2<i32>(1i, global2.b.x));
    let var_3 = reverseBits(~vec3<u32>(global0.c.x, var_1.x, 13201u ^ _wgslsmith_mult_u32(1u, var_1.x)));
    return 16079u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(global2.a, -828f);
    global1 = u_input.a.x;
    var var_1 = Struct_2(global0.a, global0.b, vec4<u32>(~func_4(func_1(-20272i), func_2().a.yzw, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-385f, global2.a, -340f))), countOneBits(4294967295u) << (_wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, global0.c.x), ~global0.c.x) % 32u), _wgslsmith_mod_u32(abs(0u), 1u), _wgslsmith_mult_u32(~(~u_input.c.x), ~u_input.c.x)), func_2().d, global0.e);
    var var_2 = Struct_1(global0.d.a, vec2<i32>(-global2.b.x >> ((u_input.c.x >> (var_1.c.x % 32u)) % 32u), var_1.d.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i);
}

