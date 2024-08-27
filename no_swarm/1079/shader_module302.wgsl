struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: vec2<u32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 10>;

var<private> global3: array<vec3<i32>, 5>;

var<private> global4: vec3<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<f32> {
    return global0.c;
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: vec3<f32>, arg_3: bool) -> f32 {
    let var_0 = Struct_1(global0.a, global0.b, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.x, 1022f)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.c.x, global1.b)))) * arg_2.xx))), ~(~global1.d), false);
    global4 = global3[_wgslsmith_index_u32(abs(var_0.d.x), 5u)];
    global0 = Struct_1(~(-var_0.a), 836f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(select(-886f, global0.b, arg_3)), _wgslsmith_f_op_f32(-870f - 786f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-2058f)), _wgslsmith_f_op_f32(step(var_0.c.x, -364f))) * global0.c)), var_0.d, var_0.e);
    var var_1 = Struct_1(var_0.a, _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_mult_vec2_u32(vec2<u32>(reverseBits(~4294967295u), ~_wgslsmith_add_u32(0u, 4294967295u)), ~vec2<u32>(global1.d.x ^ 11416u, _wgslsmith_sub_u32(var_0.d.x, global0.d.x))), true);
    global0 = var_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.c.x, _wgslsmith_f_op_f32(-global0.b)), var_1.c.x))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(~(global1.a ^ ~(global4.x >> (18931u % 32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-418f - global0.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(464f * global0.c.x) * _wgslsmith_f_op_f32(floor(131f))))), _wgslsmith_f_op_f32(global1.c.x * -851f)), vec2<f32>(1434f, _wgslsmith_f_op_f32(round(-235f))), ~global1.d ^ vec2<u32>(_wgslsmith_div_u32(7614u & global1.d.x, 10072u), _wgslsmith_mult_u32(_wgslsmith_add_u32(global0.d.x, 47224u), 4294967295u)), any(!vec4<bool>(true, arg_0.e, true, true)));
    let var_1 = arg_0;
    global3 = array<vec3<i32>, 5>();
    let var_2 = global2[_wgslsmith_index_u32(firstTrailingBit(~_wgslsmith_sub_u32(firstLeadingBit(95774u) << (_wgslsmith_div_u32(var_1.d.x, 1275u) % 32u), ~0u)), 10u)];
    global1 = Struct_1(510i, var_0.b, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(494f + global1.b), -1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1240f), var_0.b))), ~arg_0.d, all(select(select(vec4<bool>(false, var_1.e, true, global0.e), vec4<bool>(var_2.e, global0.e, true, var_2.e), vec4<bool>(var_1.e, arg_0.e, arg_0.e, false)), !vec4<bool>(var_1.e, global1.e, true, global1.e), global0.e)) && !all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, var_2.e, var_2.e, global1.e), false)));
    return Struct_1(firstLeadingBit(var_2.a) | _wgslsmith_add_i32(var_1.a, ~global4.x), var_2.b, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(func_3()), global0.c)), _wgslsmith_sub_vec2_u32(select(vec2<u32>(~30294u, 0u), ~vec2<u32>(arg_0.d.x, var_1.d.x), any(vec3<bool>(true, var_0.e, global0.e))), var_2.d), global0.e);
}

fn func_1() -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(1u, 10u)];
    var var_1 = _wgslsmith_div_u32(4294967295u, ~(~(~(global0.d.x << (55976u % 32u)))));
    let var_2 = Struct_1(-max(global1.a, firstLeadingBit(i32(-1i) * -35051i)), _wgslsmith_f_op_f32(-global0.c.x), vec2<f32>(688f, var_0.c.x), _wgslsmith_sub_vec2_u32(global1.d, ~(vec2<u32>(u_input.d, var_0.d.x) | global0.d)), any(!(!vec3<bool>(global1.e, true, true))));
    global3 = array<vec3<i32>, 5>();
    let var_3 = global1.e;
    return func_4(Struct_1(min(global0.a, max(select(-5197i, 13024i, var_2.e), _wgslsmith_sub_i32(17521i, 2147483647i))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(floor(var_0.c.x)))), _wgslsmith_f_op_f32(func_2(!vec4<bool>(true, global0.e, false, var_0.e), global1.e, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.c.x, -550f, var_2.c.x), vec3<f32>(-564f, global0.b, global0.b), var_2.e)), true)))), vec2<f32>(-1563f, 211f), min(vec2<u32>(~global0.d.x, ~global0.d.x), reverseBits(~var_0.d)), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -974f);
    var var_2 = !all(vec2<bool>(false, global0.e));
    var_2 = true;
    global4 = u_input.c.xwx;
    global3 = array<vec3<i32>, 5>();
    global0 = Struct_1(~global1.a, global0.c.x, global0.c, _wgslsmith_div_vec2_u32(abs(vec2<u32>(global1.d.x, u_input.d) >> (global1.d % vec2<u32>(32u))) >> ((~global1.d | ~vec2<u32>(var_0.d.x, 4294967295u)) % vec2<u32>(32u)), global1.d), var_0.e);
    var var_3 = global2[_wgslsmith_index_u32(~(~0u), 10u)];
    var_3 = global2[_wgslsmith_index_u32(var_3.d.x, 10u)];
    let x = u_input.a;
    s_output = StorageBuffer(~1i, _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(480f, 129f, 678f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1039f, global0.c.x), vec2<f32>(var_1, var_3.c.x)) + func_1().c)))));
}

