struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 30>;

var<private> global1: array<Struct_2, 20>;

var<private> global2: Struct_1;

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: vec3<bool>) -> bool {
    let var_0 = arg_0.x;
    let var_1 = ~(global3.c.x ^ global2.c.x) | (firstLeadingBit(global2.c.x & countOneBits(-60875i)) >> (~((u_input.a & 2490u) & _wgslsmith_dot_vec3_u32(vec3<u32>(52332u, 69970u, 23861u), vec3<u32>(u_input.b, 28084u, u_input.b))) % 32u));
    var var_2 = _wgslsmith_div_u32(4294967295u, 60148u);
    global0 = array<vec2<f32>, 30>();
    let var_3 = Struct_2(false);
    return select(true, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-51860i, 2147483647i, 6513i, -6981i), vec4<i32>(global2.c.x, -1i, var_1, -1i)) >> (vec4<u32>(u_input.b, u_input.c.x, 41894u, u_input.a) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_add_i32(global2.c.x, global2.c.x), abs(global3.c.x), -448i, var_1)) >= 1i, var_0);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool, arg_3: u32) -> f32 {
    var var_0 = 495f;
    var var_1 = 196f;
    global1 = array<Struct_2, 20>();
    var var_2 = arg_0;
    var var_3 = global2.c;
    return arg_0.b;
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = func_2(select(select(!vec3<bool>(true, arg_0, arg_0), vec3<bool>(any(vec4<bool>(true, false, true, arg_0)), !arg_0, global2.c.x != global3.c.x), arg_0), vec3<bool>(arg_0, true, any(vec3<bool>(arg_0, arg_0, true))), true));
    global3 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_f32(-2230f + 185f), _wgslsmith_f_op_f32(-global3.a), select(vec2<i32>(-101493i, global3.c.x), global2.c, vec2<bool>(arg_0, var_0)), 537f), global1[_wgslsmith_index_u32(~u_input.b, 20u)], var_0, 52264u)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.b))), (_wgslsmith_mod_vec2_i32(min(vec2<i32>(0i, -16544i), global2.c), global3.c) & _wgslsmith_mult_vec2_i32(~global3.c, vec2<i32>(-14191i, 37976i))) & -global2.c, 981f);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.a, -1442f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b * _wgslsmith_f_op_f32(ceil(-731f)))), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -396f), _wgslsmith_div_f32(global3.d, 174f))))), vec2<i32>(~global2.c.x | global2.c.x, -_wgslsmith_clamp_i32(global2.c.x, reverseBits(-2147483647i), global3.c.x)), -303f);
    var var_2 = select(vec4<u32>(u_input.b, u_input.b, 1u, ~firstTrailingBit(4294967295u)), vec4<u32>(~1u, 4294967295u, ~abs(u_input.c.x) & u_input.a, 1u), select(var_0 || true, func_2(!vec3<bool>(arg_0, false, arg_0)) && var_0, arg_0));
    var_2 = vec4<u32>(2789u, u_input.a, 141588u, abs(90611u));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_1, Struct_2(global3.b >= global2.a), false, ~_wgslsmith_div_u32(u_input.c.x, var_2.x))) * global3.b), 1f, select(max(~global2.c, global2.c) & min(_wgslsmith_mult_vec2_i32(vec2<i32>(1828i, var_1.c.x), vec2<i32>(var_1.c.x, -2147483647i)), var_1.c), reverseBits(reverseBits(vec2<i32>(23856i, -33683i) >> (var_2.yy % vec2<u32>(32u)))), select(select(vec2<bool>(var_0, arg_0), vec2<bool>(var_0, arg_0), select(vec2<bool>(false, var_0), vec2<bool>(false, true), true)), select(select(vec2<bool>(true, true), vec2<bool>(arg_0, arg_0), true), select(vec2<bool>(var_0, arg_0), vec2<bool>(var_0, false), vec2<bool>(true, arg_0)), true), func_2(!vec3<bool>(arg_0, true, arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.d) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2250f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 30>();
    let var_0 = Struct_2(all(vec2<bool>(true, _wgslsmith_f_op_f32(round(-1018f)) == _wgslsmith_f_op_f32(f32(-1f) * -372f))));
    global0 = array<vec2<f32>, 30>();
    global3 = func_1(any(vec3<bool>(var_0.a, any(vec4<bool>(var_0.a, var_0.a, true, false)), true)));
    global1 = array<Struct_2, 20>();
    var var_1 = !(!(false || !all(vec3<bool>(var_0.a, var_0.a, var_0.a))));
    let x = u_input.a;
    s_output = StorageBuffer(global2.c);
}

