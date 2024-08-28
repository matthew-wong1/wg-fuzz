struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: vec4<bool>,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<bool>,
    d: vec4<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 49000i;

var<private> global1: Struct_3;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = !select(vec2<bool>(true, true), select(!global1.c.wy, vec2<bool>(!arg_0, arg_0 == true), true), any(!(!vec2<bool>(global1.d.x, true))));
    var var_1 = true;
    var var_2 = global1.a;
    let var_3 = max((~(var_2.a.e.wy >> (var_2.a.d % vec2<u32>(32u))) ^ global1.a.a.e.zz) >> (countOneBits(vec2<u32>(4294967295u, global1.a.a.c.x & global1.a.a.d.x)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32((-vec2<i32>(2147483647i, global1.b.e.x) | ~var_2.a.e.yx) << (_wgslsmith_add_vec2_u32(global1.a.a.c.xy & vec2<u32>(1u, var_2.a.d.x), var_2.a.d >> (global1.e.a.d % vec2<u32>(32u))) % vec2<u32>(32u)), global1.a.a.e.zy));
    let var_4 = _wgslsmith_div_vec3_u32(~(~(~global1.e.a.c)), var_2.a.c) << (vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(var_2.a.c, vec3<u32>(~61158u, ~global1.b.c.x, var_2.a.d.x)), _wgslsmith_add_u32(~_wgslsmith_clamp_u32(26236u, 63920u, var_2.a.c.x), min(countOneBits(0u), 1u))) % vec3<u32>(32u));
    return u_input.c.x;
}

fn func_2() -> Struct_3 {
    var var_0 = any(vec3<bool>(func_3(true) <= min(abs(u_input.d.x), ~124523u), global1.e.e, !global1.c.x));
    let var_1 = false;
    var_0 = true;
    return Struct_3(Struct_2(global1.b, -112f, _wgslsmith_mod_u32(32263u, 1u), global1.d, true), Struct_1(_wgslsmith_f_op_vec2_f32(-global1.a.a.b.zw), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global1.e.a.b, global1.e.a.b, vec4<bool>(true, false, true, false))) + _wgslsmith_div_vec4_f32(global1.b.b, vec4<f32>(global1.e.b, -254f, global1.e.a.a.x, global1.b.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.b.b.x, global1.b.b.x, global1.e.b, global1.a.b), global1.b.b) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-144f, 215f, global1.a.b, global1.b.a.x)))))), u_input.d, u_input.c, global1.a.a.e), select(!select(!vec4<bool>(global1.c.x, var_1, global1.e.e, var_1), !vec4<bool>(var_1, false, false, global1.c.x), vec4<bool>(global1.e.d.x, true, true, var_1)), !(!vec4<bool>(global1.a.d.x, var_1, false, global1.e.e)), true), !vec4<bool>(false, true, true, var_1), Struct_2(global1.a.a, global1.b.a.x, ~u_input.c.x << (1u % 32u), select(select(!vec4<bool>(false, true, global1.d.x, false), select(vec4<bool>(false, var_1, true, false), global1.d, var_1), true), select(!global1.a.d, global1.e.d, select(global1.d, vec4<bool>(global1.e.d.x, false, false, false), global1.e.d)), select(var_1, true, any(vec4<bool>(true, global1.c.x, false, var_1)))), _wgslsmith_f_op_f32(ceil(-307f)) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.e.a.b.x + 1140f)))));
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global1.e);
    var var_1 = (select(~reverseBits(vec4<u32>(85274u, var_0.b.d.x, 4294967295u, 1u)), vec4<u32>(firstTrailingBit(global1.b.d.x), 4294967295u, ~36082u, 0u), !select(false, global1.e.d.x, global1.c.x)) >> (~vec4<u32>(u_input.d.x | u_input.d.x, _wgslsmith_dot_vec3_u32(var_0.a.a.c, vec3<u32>(88813u, 10773u, var_0.e.a.c.x)), 0u, global1.e.a.d.x) % vec4<u32>(32u))) >> (~((~vec4<u32>(var_0.e.a.d.x, 1u, 24353u, 1u) | vec4<u32>(21494u, 4294967295u, global1.b.c.x, u_input.c.x)) >> (select(~vec4<u32>(global1.e.c, u_input.a, 61373u, 1u), vec4<u32>(global1.a.a.d.x, 4294967295u, u_input.c.x, 28888u) | vec4<u32>(global1.a.c, 64244u, var_0.e.c, 78539u), global1.a.d) % vec4<u32>(32u))) % vec4<u32>(32u));
    global0 = var_0.b.e.x;
    var var_2 = vec3<u32>(24082u, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(global1.e.a.c.x, 46871u), firstTrailingBit(u_input.a), ~firstTrailingBit(var_0.b.d.x)) & var_0.e.a.c.x, ~var_1.x);
    let var_3 = false | (_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a.a.a.x * 746f), _wgslsmith_f_op_f32(sign(-310f)))) < global1.a.a.b.x);
    global0 = abs(-20478i);
    var var_4 = func_1(func_1(Struct_2(func_1(var_0.a).e.a, _wgslsmith_f_op_f32(-var_0.e.a.a.x), var_0.a.c, vec4<bool>(-1i >= u_input.b.x, var_0.e.d.x, any(var_0.c), !var_0.d.x), !func_2().e.d.x)).e).a;
    var var_5 = vec3<u32>(_wgslsmith_add_u32(reverseBits(_wgslsmith_clamp_u32(u_input.a, u_input.c.x, 9599u)), select(4294967295u, max(u_input.d.x, ~global1.b.d.x), var_3)), global1.a.a.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(4294967295u, var_0.e.c), var_0.b.c.x & var_0.a.c, global1.a.c), var_1.yyx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-919f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_0.a.b)))), vec2<i32>(0i, -2846i), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1893f * var_0.e.a.a.x)), -460f, _wgslsmith_f_op_f32(-var_4.b), var_0.a.a.a.x) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(var_0.a.a.b, _wgslsmith_div_vec4_f32(var_4.a.b, vec4<f32>(var_4.b, var_4.a.b.x, var_4.b, -683f)))))));
}

