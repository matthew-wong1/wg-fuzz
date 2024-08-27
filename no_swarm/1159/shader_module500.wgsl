struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: f32,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_3;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32, arg_2: vec4<u32>) -> vec2<f32> {
    global1 = Struct_3(Struct_2(~(~abs(u_input.b)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.c, 1282f)))), any(vec3<bool>(true, arg_0.x, true)), abs(vec2<u32>(arg_2.x, 4294967295u))), -(~(-global1.a.c)), global1.d), true, global1.c, Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -933f), _wgslsmith_f_op_f32(-global1.a.b.a.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.d.a.x, 466f), vec2<f32>(-523f, -141f), global1.b)))), global1.a.d.a.x >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.d.a.x, 119f) * _wgslsmith_f_op_f32(min(global1.a.b.a.x, 558f))), ~vec2<u32>(_wgslsmith_dot_vec4_u32(arg_2, vec4<u32>(arg_1, 1u, 4294967295u, global1.e.x)), 4294967295u)), _wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(~global1.a.d.c.x, global1.e.x)), arg_2.zw));
    let var_0 = true;
    global1 = Struct_3(global1.a, var_0, 436f, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2025f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), !arg_0.x & !var_0, countOneBits(u_input.d.wz)), firstTrailingBit(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, arg_2.x), ~arg_2.yx), ~1u)));
    global0 = global1.c;
    var var_1 = max(vec2<u32>(arg_2.x, reverseBits(_wgslsmith_clamp_u32(abs(arg_1), arg_2.x, global1.a.b.c.x))), ~vec2<u32>(global1.e.x, max(arg_2.x, 37131u)));
    return _wgslsmith_f_op_vec2_f32(global1.d.a * _wgslsmith_f_op_vec2_f32(-global1.d.a));
}

fn func_2() -> Struct_3 {
    global1 = Struct_3(global1.a, true, _wgslsmith_f_op_f32(abs(-1041f)), Struct_1(_wgslsmith_f_op_vec2_f32(step(global1.d.a, _wgslsmith_f_op_vec2_f32(func_3(!vec3<bool>(false, global1.b, global1.d.b), abs(global1.d.c.x), u_input.d)))), global1.b, global1.e), global1.a.d.c << (u_input.d.yz % vec2<u32>(32u)));
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-global1.d.a.x), _wgslsmith_f_op_f32(1321f + global1.d.a.x)))))), all(!vec3<bool>(all(vec3<bool>(global1.b, true, global1.a.d.b)), true, false == global1.a.b.b)), ~vec2<u32>(~(u_input.a | global1.e.x), u_input.e));
    var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(336f))), 592f), global1.b, countOneBits(select(vec2<u32>(global1.a.b.c.x, var_0.c.x) | global1.a.d.c, vec2<u32>(4294967295u, 4294967295u) ^ global1.a.b.c, select(vec2<bool>(false, true), vec2<bool>(true, false), global1.d.b))) >> (vec2<u32>(0u, ~firstTrailingBit(u_input.a)) % vec2<u32>(32u)));
    var var_1 = select(~countOneBits(~(~vec3<u32>(u_input.a, 2743u, var_0.c.x))), max(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, _wgslsmith_dot_vec2_u32(var_0.c, var_0.c), 40778u), ~abs(u_input.d.yxx)), ~(~(~vec3<u32>(4294967295u, global1.e.x, 0u)))), true);
    let var_2 = u_input.d;
    return Struct_3(global1.a, ~(~var_2.x) <= 4294967295u, global1.c, Struct_1(var_0.a, select(var_0.b, true, true), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, ~var_2.x), u_input.d.yz)), max(var_2.zz, vec2<u32>(1u, var_1.x) | countOneBits(var_1.zy)) >> (~vec2<u32>(min(var_1.x, 0u), 1380u) % vec2<u32>(32u)));
}

fn func_1(arg_0: vec4<u32>) -> i32 {
    var var_0 = firstTrailingBit(u_input.d.x);
    global1 = func_2();
    var_0 = reverseBits(u_input.d.x);
    var_0 = 0u;
    global0 = _wgslsmith_f_op_f32(global1.a.b.a.x - _wgslsmith_f_op_f32(-global1.d.a.x));
    return global1.a.c.x;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<i32>) -> vec4<u32> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1732f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -551f) - global1.d.a.x)));
    let var_0 = vec3<bool>((true | (true || any(vec2<bool>(global1.d.b, false)))) && any(!vec3<bool>(true, global1.a.b.b, true)), false, all(select(select(select(vec4<bool>(global1.b, false, global1.a.b.b, global1.d.b), vec4<bool>(global1.a.d.b, false, true, global1.a.b.b), global1.b), vec4<bool>(false, global1.a.b.b, global1.d.b, false), vec4<bool>(true, global1.a.d.b, global1.a.d.b, true)), vec4<bool>(false, true, global1.b, global1.c < -1000f), select(vec4<bool>(false, global1.a.b.b, global1.d.b, false), !vec4<bool>(global1.a.d.b, false, global1.d.b, global1.a.d.b), true))));
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(431f, _wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.d.a.x)) * _wgslsmith_div_f32(338f, _wgslsmith_div_f32(global1.c, global1.c))))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), 843f)), var_1.x, -1124f, 1532f);
    global1 = Struct_3(Struct_2(max(0i, select(_wgslsmith_sub_i32(u_input.c, 40429i), arg_1.x, true)), func_2().d, abs(global1.a.c), func_2().a.b), select(var_0.x, any(vec3<bool>(true, false, all(vec3<bool>(true, false, global1.b)))), !var_0.x), _wgslsmith_f_op_f32(round(var_2.x)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-489f, -1287f))), var_0.x, global1.d.c), global1.e);
    return vec4<u32>(~max(19941u, 4294967295u >> ((global1.e.x >> (u_input.a % 32u)) % 32u)), ~(global1.e.x & global1.a.d.c.x), _wgslsmith_add_u32(_wgslsmith_add_u32(0u, ~u_input.a), global1.d.c.x), ~countOneBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(41008u, 898u), u_input.d.zx)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(min(min(~global1.a.c.xz >> (~vec2<u32>(global1.e.x, global1.d.c.x) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(global1.a.c.xz, global1.a.c.xy) & countOneBits(vec2<i32>(-2147483647i, u_input.c))), vec2<i32>(reverseBits(func_1(u_input.d)), u_input.c)), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(i32(-1i) * -236i, -25226i), -1i), _wgslsmith_sub_i32(-26166i, _wgslsmith_sub_i32(func_1(u_input.d), 1i)), u_input.c >> (_wgslsmith_mod_u32(90623u, countOneBits(global1.a.d.c.x)) % 32u), -29306i));
    var var_1 = !vec4<bool>(global1.a.d.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.d.a.x + global1.a.b.a.x), _wgslsmith_f_op_f32(-global1.a.d.a.x)) == _wgslsmith_f_op_f32(step(global1.c, -212f)), any(vec3<bool>(!global1.b, true, global1.a.d.b)), true);
    let var_2 = ~(~var_0.zzy);
    let var_3 = vec3<bool>(all(!var_1.zzy), var_1.x, all(select(!vec2<bool>(false, var_1.x), var_1.zx, var_1.ww)));
    var var_4 = Struct_3(global1.a, any(select(vec4<bool>(var_1.x, all(vec3<bool>(var_3.x, var_3.x, true)), -33267i >= u_input.b, var_1.x && var_1.x), select(vec4<bool>(var_3.x, false, true, global1.d.b), select(vec4<bool>(var_3.x, false, var_1.x, true), vec4<bool>(var_1.x, false, false, false), vec4<bool>(var_3.x, false, var_3.x, global1.a.b.b)), global1.b), !vec4<bool>(var_3.x, global1.a.b.b, true, global1.d.b))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec2_f32(func_3(select(select(vec3<bool>(var_3.x, global1.d.b, false), vec3<bool>(var_1.x, global1.d.b, var_1.x), vec3<bool>(false, global1.b, false)), var_1.yxy, var_1.yxy), countOneBits(u_input.d.x), select(vec4<u32>(var_0.x, 4294967295u, var_0.x, 4294967295u), vec4<u32>(1u, 31264u, 4389u, 1u), func_2().d.b))).x, 434f)), global1.a.b, reverseBits(~(~vec2<u32>(var_0.x, 85103u)) >> (abs(~u_input.d.xy) % vec2<u32>(32u))));
    var_4 = func_2();
    global1 = Struct_3(Struct_2(var_4.a.c.x, global1.a.b, vec3<i32>(reverseBits(select(global1.a.a, u_input.b, true)), global1.a.c.x, var_4.a.c.x), var_4.d), select(any(!(!var_3.zx)), any(!select(vec3<bool>(false, true, true), var_1.xyx, var_1.x)), var_4.a.b.b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-559f, var_4.d.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.b.a.x * global1.a.b.a.x) + _wgslsmith_f_op_f32(-var_4.a.b.a.x)))), Struct_1(global1.d.a, var_4.b, global1.d.c), ~select(firstTrailingBit(vec2<u32>(0u, 28150u)), ~_wgslsmith_add_vec2_u32(vec2<u32>(1u, global1.e.x), var_0.xz), var_1.zy));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.c, vec3<f32>(var_4.c, _wgslsmith_div_f32(640f, global1.c), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(global1.a.d.a.x))))));
}

