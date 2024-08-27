struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-520f, -839f);

var<private> global1: Struct_3;

var<private> global2: vec4<bool>;

var<private> global3: bool = false;

var<private> global4: array<bool, 31>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> bool {
    global0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.e.a))), 2024f), global1.d.a);
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.e.a, _wgslsmith_f_op_f32(-global0.x)) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-221f + global0.x) - _wgslsmith_f_op_f32(1745f - -1087f)) - global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(764f, 128f)))));
    global4 = array<bool, 31>();
    global0 = var_0;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(global1.d.a + -618f), u_input.e);
    return !(_wgslsmith_div_u32(6473u, firstTrailingBit(u_input.c.x)) != u_input.c.x) && !all(global1.a.yz);
}

fn func_2() -> Struct_3 {
    var var_0 = 1000f;
    let var_1 = ~(global1.b.zx | vec2<i32>(min(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.b.x, global1.b.x, u_input.b), vec3<i32>(-1i, u_input.b, 254i)), global1.b.x >> (10777u % 32u)), global1.b.x));
    let var_2 = !global1.a.xy;
    return Struct_3(vec3<bool>(!func_3() || true, -12047i != -(~var_1.x), false), vec3<i32>(-(~0i), -14975i, ~(-78561i)), global1.e.b, global1.e, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-427f * 460f) + -799f)), 0u));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = global1.e;
    var var_1 = select(_wgslsmith_dot_vec2_i32(~select(global1.b.zx, vec2<i32>(2147483647i, arg_0.b.x), global1.a.x), countOneBits(vec2<i32>(-38925i, -27975i))), select(u_input.b, firstLeadingBit(select(global1.b.x, -55545i, global1.a.x)), false), arg_0.a.x) & arg_0.b.x;
    var var_2 = arg_0;
    let var_3 = ~(-2147483647i);
    let var_4 = -634f;
    return max(~vec4<i32>(var_2.b.x, var_2.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.b.x, -70155i), vec2<i32>(5165i, u_input.b)), arg_0.b.x), ~(~vec4<i32>(min(-1i, 513i), _wgslsmith_div_i32(var_2.b.x, var_3), firstTrailingBit(-1i), -2147483647i)));
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = (func_4(func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-666f, -1706f)) + _wgslsmith_f_op_f32(max(global0.x, global0.x))), Struct_1(543f, u_input.a)) | vec4<i32>((i32(-1i) * -6171i) >> (_wgslsmith_div_u32(103660u, 12140u) % 32u), 2147483647i, arg_0.x, _wgslsmith_sub_i32(1i, u_input.b))) << (vec4<u32>(50980u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.d.zz, vec2<u32>(0u, global1.c)), global1.e.b), 0u >> (_wgslsmith_sub_u32(~global1.e.b, ~0u) % 32u), func_2().c) % vec4<u32>(32u));
    let var_1 = ~max(u_input.c.x, u_input.c.x);
    var var_2 = !func_3();
    let var_3 = _wgslsmith_add_i32(1i, ~var_0.x);
    var var_4 = func_2();
    return func_2().d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.x;
    var var_1 = vec2<f32>(-1274f, _wgslsmith_f_op_f32(global1.d.a - global1.e.a));
    var var_2 = firstTrailingBit(-1i);
    let var_3 = 0i;
    let var_4 = !(!(!global1.a.x));
    var var_5 = Struct_3(vec3<bool>(true, any(vec2<bool>(global2.x, -41724i > var_3)), select(false, global2.x | (global1.d.b > 31226u), !(!var_4))), global1.b, ~29809u, global1.e, func_1(global1.b.yy));
    var var_6 = -669f;
    let var_7 = Struct_2(Struct_1(func_1(-func_2().b.yx).a, func_2().e.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(101f, _wgslsmith_div_f32(var_7.a.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global0.x, global0.x, var_5.a.x)), 1945f)))), 4294967295u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1877f, var_1.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.d.a, global1.d.a) + vec2<f32>(var_5.e.a, global1.e.a)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-398f, 675f))))));
}

