struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: u32,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -2289i;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2() -> Struct_3 {
    global0 = 20437i;
    global0 = 7500i >> (u_input.d.x % 32u);
    var var_0 = Struct_4(Struct_1(vec2<u32>(11414u, u_input.e)));
    global0 = u_input.b;
    var_0 = Struct_4(var_0.a);
    return Struct_3(Struct_1(min(vec2<u32>(u_input.d.x, 1u), _wgslsmith_div_vec2_u32(var_0.a.a, var_0.a.a)) << (u_input.c.xz % vec2<u32>(32u))), vec2<bool>(true, true), var_0.a, ~max(_wgslsmith_sub_u32(1u, u_input.d.x) | abs(u_input.a), 1u), vec2<bool>(true, any(vec2<bool>(all(vec2<bool>(true, false)), all(vec4<bool>(false, false, true, true))))));
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    var var_0 = arg_0.e.x;
    var var_1 = u_input.c.x;
    var var_2 = false;
    let var_3 = vec2<bool>(arg_0.e.x, arg_0.e.x);
    var var_4 = func_2();
    return Struct_1(u_input.d);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: vec4<bool>) -> u32 {
    let var_0 = vec3<f32>(-801f, _wgslsmith_f_op_f32(f32(-1f) * -317f), 862f);
    let var_1 = Struct_4(func_2().c);
    var var_2 = func_1(arg_0);
    let var_3 = var_0.x;
    let var_4 = _wgslsmith_sub_u32(var_1.a.a.x, ~(_wgslsmith_mult_u32(~4294967295u, var_2.a.x) >> (reverseBits(1u) % 32u)));
    return countOneBits(43125u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 665f;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-273f, 2067f, -487f, var_0) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1513f, -1038f, -896f, var_0) + vec4<f32>(var_0, 167f, -290f, 1398f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0, 474f, var_0, var_0), vec4<f32>(-260f, -548f, var_0, var_0)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, -631f, 117f) - vec4<f32>(-2184f, var_0, 2306f, -641f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-104f, 670f, 2498f, 570f) * vec4<f32>(1045f, var_0, -2373f, var_0)), vec4<f32>(var_0, var_0, var_0, var_0)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -223f, var_0, 270f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1092f, var_0, var_0, var_0)))));
    var var_2 = ~(u_input.d.x & 48245u);
    var_2 = _wgslsmith_mod_u32(~_wgslsmith_add_u32(~(u_input.d.x << (u_input.c.x % 32u)), ~_wgslsmith_mult_u32(11994u, u_input.c.x)), func_3(Struct_3(Struct_1(abs(vec2<u32>(u_input.d.x, u_input.c.x))), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), func_1(Struct_3(Struct_1(vec2<u32>(u_input.a, 56410u)), vec2<bool>(false, false), Struct_1(vec2<u32>(15318u, u_input.d.x)), u_input.d.x, vec2<bool>(false, false))), u_input.d.x, select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, false))), vec3<bool>(false, true, true == all(vec4<bool>(false, true, true, true))), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), true)))));
    var var_3 = Struct_2(_wgslsmith_div_vec3_f32(var_1.wyx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(926f, var_1.x, 728f) * var_1.xww)))));
    var var_4 = vec3<bool>(true, all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true))), all(!vec3<bool>(true, false, all(vec4<bool>(true, true, false, false)))));
    let var_5 = _wgslsmith_f_op_vec3_f32(trunc(var_3.a));
    var_4 = select(select(select(!(!vec3<bool>(var_4.x, var_4.x, var_4.x)), select(select(vec3<bool>(false, var_4.x, false), vec3<bool>(false, true, true), false), vec3<bool>(true, var_4.x, var_4.x), true), firstLeadingBit(39271i) <= u_input.b), select(vec3<bool>(!var_4.x, any(var_4.yx), u_input.b <= u_input.b), select(vec3<bool>(var_4.x, var_4.x, var_4.x), select(vec3<bool>(var_4.x, var_4.x, true), vec3<bool>(true, false, var_4.x), vec3<bool>(var_4.x, false, var_4.x)), !var_4.x), !select(vec3<bool>(var_4.x, var_4.x, var_4.x), vec3<bool>(false, var_4.x, var_4.x), vec3<bool>(var_4.x, false, var_4.x))), true), select(vec3<bool>(any(vec2<bool>(var_4.x, true)), any(select(vec4<bool>(false, true, var_4.x, true), vec4<bool>(var_4.x, var_4.x, var_4.x, var_4.x), var_4.x)), !(var_4.x != var_4.x)), !select(vec3<bool>(var_4.x, var_4.x, var_4.x), select(vec3<bool>(true, false, false), vec3<bool>(false, var_4.x, var_4.x), var_4.x), var_0 < 678f), true), select(all(vec2<bool>(var_4.x == false, true)), var_4.x, all(vec3<bool>(false, !var_4.x, !var_4.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32((abs(vec4<i32>(u_input.b, u_input.b, u_input.b, 1i)) >> (reverseBits(vec4<u32>(23076u, 17953u, 1u, 0u)) % vec4<u32>(32u))) >> (abs(vec4<u32>(u_input.d.x, 35879u, u_input.d.x, 38313u)) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(u_input.b, 0i, -1i, 15575i)), vec4<i32>(u_input.b, u_input.b, u_input.b, 1i) >> (vec4<u32>(u_input.c.x, u_input.c.x, u_input.a, u_input.a) % vec4<u32>(32u))), ~vec4<i32>(6980i, 26461i, 0i, -94137i))), _wgslsmith_div_vec2_u32(countOneBits(u_input.d), u_input.d), var_5);
}

