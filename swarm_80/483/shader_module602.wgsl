struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: i32 = -25668i;

var<private> global2: vec4<f32> = vec4<f32>(-112f, -126f, -557f, -845f);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<f32>) -> vec4<f32> {
    let var_0 = Struct_1(vec3<i32>(min(-_wgslsmith_mod_i32(45624i, u_input.a.x), ~u_input.a.x), firstLeadingBit(1i), ~(-u_input.a.x)), arg_0.x, -(vec4<i32>(-3247i, abs(u_input.a.x), u_input.a.x, u_input.a.x) & _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 4122i, u_input.a.x, u_input.a.x), vec4<i32>(-21797i, 1i, -11251i, -2147483647i)), -vec4<i32>(u_input.a.x, 2147483647i, 1i, 2147483647i))));
    var var_1 = var_0;
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, var_0.b, global2.x, var_0.b)))))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-834f + var_0.b), 493f, _wgslsmith_f_op_f32(arg_0.x * global2.x), _wgslsmith_f_op_f32(sign(651f)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.x))), _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(-152f + global2.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.b * -375f))), global2.x)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.b)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(452f)))))));
    let var_3 = u_input.c ^ select(u_input.c, u_input.c, select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(false, false), true), false), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))), vec2<bool>(var_2 >= global2.x, true)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-783f, global2.x, 800f, 427f))))));
}

fn func_2(arg_0: i32, arg_1: vec3<bool>, arg_2: f32) -> f32 {
    var var_0 = u_input.c.x | (u_input.b & 1u);
    global0 = global2.x;
    global2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-665f, arg_2, 1767f, -976f) * vec4<f32>(-1000f, -1576f, 895f, -1129f))), _wgslsmith_f_op_vec4_f32(func_3(global2.zz)), true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, -1088f, 1140f, global2.x), vec4<f32>(global2.x, global2.x, arg_2, 1555f))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1000f, arg_2, -788f, global2.x))), vec4<bool>(true, true, true, true)))));
    let var_1 = Struct_2(!arg_1, Struct_1(abs(vec3<i32>(28456i, -58500i, _wgslsmith_add_i32(u_input.a.x, -2147483647i))), -406f, vec4<i32>(-1i) * -(vec4<i32>(arg_0, -2147483647i, arg_0, arg_0) & vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 65810i))), select(vec3<bool>(arg_1.x, arg_1.x, all(vec4<bool>(false, true, false, false))), select(vec3<bool>(true, !arg_1.x, false), vec3<bool>(true, all(vec2<bool>(true, true)), global2.x > -931f), arg_1.x), !select(!arg_1, !arg_1, arg_1.x)));
    var var_2 = global2.ywy;
    return _wgslsmith_f_op_f32(f32(-1f) * -1402f);
}

fn func_1(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_1, arg_3: vec3<f32>) -> vec3<bool> {
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-153f, 188f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-775f, -193f)), _wgslsmith_f_op_f32(func_2(-9996i, vec3<bool>(true, arg_0.x, false), global2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(750f * global2.x)), _wgslsmith_div_f32(arg_3.x, arg_3.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, _wgslsmith_f_op_f32(exp2(arg_3.x)), _wgslsmith_f_op_f32(f32(-1f) * -521f), _wgslsmith_div_f32(global2.x, arg_2.b)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -871f, 598f, -455f)))));
    let var_0 = vec2<u32>(_wgslsmith_div_u32(u_input.c.x, ~(~(~4294967295u))), _wgslsmith_div_u32(60038u, ~(~(arg_1 ^ u_input.c.x))));
    global2 = vec4<f32>(_wgslsmith_f_op_f32(func_2(u_input.a.x, vec3<bool>(true, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2.b)) + -908f))), 774f, arg_2.b, _wgslsmith_f_op_f32(global2.x - global2.x));
    let var_1 = Struct_1(vec3<i32>(-(u_input.a.x >> (u_input.c.x % 32u)), -27861i, ~reverseBits(arg_2.a.x)) << (~(~(vec3<u32>(u_input.c.x, 0u, u_input.c.x) << (vec3<u32>(arg_1, arg_1, 4859u) % vec3<u32>(32u)))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1415f)))), _wgslsmith_div_vec4_i32(vec4<i32>(abs(u_input.a.x), 21501i, _wgslsmith_mult_i32(arg_2.c.x, arg_2.a.x), 4528i >> (u_input.c.x % 32u)) & countOneBits(vec4<i32>(2147483647i, u_input.a.x, -1i, arg_2.c.x) & vec4<i32>(arg_2.a.x, 1i, arg_2.a.x, u_input.a.x)), arg_2.c));
    let var_2 = Struct_2(select(!(!select(vec3<bool>(true, arg_0.x, false), vec3<bool>(true, true, false), vec3<bool>(true, arg_0.x, arg_0.x))), vec3<bool>(arg_0.x, false, false), select(!(!vec3<bool>(arg_0.x, arg_0.x, true)), select(!vec3<bool>(false, arg_0.x, false), !vec3<bool>(true, arg_0.x, true), select(vec3<bool>(false, false, arg_0.x), vec3<bool>(false, arg_0.x, false), vec3<bool>(arg_0.x, true, false))), select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), !vec3<bool>(arg_0.x, arg_0.x, arg_0.x), arg_0.x))), Struct_1(-(~var_1.a), global2.x, var_1.c), !vec3<bool>(true, !any(vec4<bool>(false, arg_0.x, true, arg_0.x)), u_input.c.x > ~45655u));
    return select(var_2.c, var_2.c, true);
}

fn func_4(arg_0: vec3<i32>) -> f32 {
    let var_0 = Struct_3(vec2<bool>(true, any(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true))));
    let var_1 = vec4<bool>(var_0.a.x, false, false, false);
    global1 = -48361i;
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.x))), _wgslsmith_f_op_f32(-global2.x))), -130f);
    global1 = u_input.a.x;
    return -1370f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 723f;
    var var_1 = Struct_3(select(vec2<bool>(~u_input.a.x >= _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a.x, 0i, -2147483647i), vec4<i32>(u_input.a.x, 1848i, -19205i, u_input.a.x)), false), select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true), all(vec4<bool>(true, true, true, true))), vec2<bool>(true, true)));
    global0 = _wgslsmith_f_op_f32(func_4(select(vec3<i32>(u_input.a.x, 2147483647i, (1i | u_input.a.x) & u_input.a.x), ~vec3<i32>(7154i ^ u_input.a.x, u_input.a.x ^ u_input.a.x, 1i), !select(vec3<bool>(var_1.a.x, true, false), vec3<bool>(var_1.a.x, var_1.a.x, false), func_1(var_1.a, u_input.b, Struct_1(vec3<i32>(u_input.a.x, -29252i, u_input.a.x), var_0, vec4<i32>(-59152i, 1i, u_input.a.x, u_input.a.x)), vec3<f32>(global2.x, global2.x, global2.x))))));
    var var_2 = ~0u;
    let var_3 = ~(~_wgslsmith_clamp_u32(_wgslsmith_add_u32(~1u, ~u_input.b), 0u, 27256u));
    global1 = u_input.a.x;
    global0 = 1011f;
    global1 = -22284i;
    var var_4 = _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(4294967295u, 26698u, var_3), vec3<u32>(105329u, u_input.b, var_3)) << (vec3<u32>(~var_3, max(9968u, 60897u), ~24363u) % vec3<u32>(32u)), abs(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 55906u, var_3), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, var_3, u_input.b), vec3<u32>(var_3, 56671u, var_3))))), u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_3, ~var_3, global2.x, _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x) ^ u_input.a, u_input.a));
}

