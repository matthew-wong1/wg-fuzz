struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2>;

var<private> global1: vec3<i32> = vec3<i32>(2147483647i, 1i, -1i);

var<private> global2: vec3<f32>;

var<private> global3: vec2<i32>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec2<bool> {
    var var_0 = true;
    var var_1 = Struct_1(!(!(!(!arg_0.a))), _wgslsmith_f_op_f32(global2.x + global2.x) > 596f);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global2.yx)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-493f, global2.x))) + global2.xz)));
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_2, global2.xx, true)), var_2);
    var var_4 = Struct_3(!vec3<bool>(!(!arg_1), all(!vec4<bool>(arg_1, true, false, arg_0.b)), !arg_1), -_wgslsmith_div_vec3_i32(-vec3<i32>(global3.x, global1.x, global3.x) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(49873u, 29916u, 48231u), vec3<u32>(u_input.b, u_input.a, u_input.b)) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(-vec3<i32>(73640i, -1i, -2147483647i), -vec3<i32>(-12575i, -2147483647i, global3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(220f, var_2.x)) - -1000f));
    return !var_4.a.yx;
}

fn func_2() -> vec3<i32> {
    global0 = array<Struct_2, 2>();
    let var_0 = !func_3(Struct_1(u_input.a != ~u_input.b, true), select(true, !all(vec3<bool>(false, true, true)), true));
    let var_1 = Struct_3(!(!vec3<bool>(var_0.x, var_0.x, all(var_0))), vec3<i32>(~firstTrailingBit(_wgslsmith_clamp_i32(-1i, global3.x, -5756i)), ~(select(43764i, -4092i, var_0.x) << (1u % 32u)), ~max(global3.x, _wgslsmith_clamp_i32(0i, global3.x, 0i))), global2.x);
    var var_2 = -1i < var_1.b.x;
    let var_3 = _wgslsmith_mult_vec4_u32(countOneBits(select(vec4<u32>(u_input.b, 21240u, u_input.a, 0u), ~vec4<u32>(u_input.b, u_input.b, u_input.b, 0u), true)), ~reverseBits(~vec4<u32>(u_input.b, u_input.a, 22518u, u_input.b))) & firstLeadingBit(countOneBits(~vec4<u32>(u_input.b, u_input.a, 18088u, u_input.b)));
    return _wgslsmith_mod_vec3_i32(~firstTrailingBit(countOneBits(vec3<i32>(global3.x, -1i, global3.x))), ~var_1.b);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_3 {
    let var_0 = false;
    var var_1 = !func_3(Struct_1(var_0, !(var_0 != var_0)), true);
    let var_2 = arg_2.b;
    return Struct_3(!vec3<bool>(var_0, false, var_0), -vec3<i32>(-(~arg_2.b.x), 1i, _wgslsmith_mod_i32(arg_2.b.x, -1i) ^ global3.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.a, -196f)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>) -> vec4<u32> {
    let var_0 = func_4(func_2(), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_add_u32(8586u, reverseBits(u_input.a)), u_input.b), 2u)], Struct_2(arg_1.x, global1.zy));
    let var_1 = var_0.a.yz;
    let var_2 = (u_input.a & u_input.b) & 0u;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.c * -1452f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-140f + _wgslsmith_f_op_f32(select(arg_1.x, -231f, var_0.a.x))))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x * -2118f), _wgslsmith_f_op_f32(ceil(-201f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c + 1153f), var_0.c))), -1851f);
    let var_4 = false;
    return ~reverseBits(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(20986u, 1884u, u_input.a, 15284u), vec4<u32>(u_input.b, var_2, u_input.a, var_2) << (vec4<u32>(u_input.b, 0u, u_input.b, 0u) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(vec4<u32>(31223u, 1u, 4294967295u, var_2), vec4<u32>(u_input.a, 1831u, 78623u, 104392u)) >> (~vec4<u32>(1u, var_2, 1u, 4294967295u) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~global1.xy;
    let var_0 = vec2<f32>(global2.x, -607f);
    let var_1 = firstLeadingBit(func_1(Struct_1(false, all(vec2<bool>(true, true))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), 2194f, var_0.x))) & vec4<u32>(1u, ~(~_wgslsmith_mult_u32(24720u, 32624u)), 0u, u_input.b);
    let var_2 = func_4(vec3<i32>(global1.x, ~(-select(global3.x, global1.x, true)), global1.x), Struct_2(global2.x, func_4(vec3<i32>(global3.x, 37936i, global1.x), Struct_2(1178f, vec2<i32>(-23956i, global1.x)), Struct_2(global2.x, global1.zz)).b.zx >> ((vec2<u32>(0u, u_input.b) & var_1.wy) % vec2<u32>(32u))), Struct_2(var_0.x, -global1.xx));
    global3 = _wgslsmith_mod_vec2_i32(-vec2<i32>(1i, -1i), ~(-var_2.b.zx));
    var var_3 = reverseBits(var_2.b) ^ -func_4(~vec3<i32>(global3.x, var_2.b.x, var_2.b.x), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_1, var_1 & vec4<u32>(var_1.x, u_input.b, 40702u, u_input.a)), 2u)], Struct_2(_wgslsmith_f_op_f32(1412f + 1000f), -global1.xx)).b;
    let var_4 = 10282i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(~(~(u_input.a & var_1.x)), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(85689u, var_1.x, 104099u), vec3<u32>(u_input.b, var_1.x, 122266u)) ^ 1u, func_1(Struct_1(false, var_2.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c, var_0.x, 409f))).x), firstTrailingBit(var_1.x)), _wgslsmith_mult_i32(34417i, i32(-1i) * -firstLeadingBit(global1.x)), ~(~(~78109u ^ func_1(Struct_1(true, var_2.a.x), vec3<f32>(513f, -239f, var_2.c)).x)));
}

