struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: u32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<u32>(0u, 1u), Struct_1(vec3<f32>(1432f, -227f, 424f), -1080f, vec3<i32>(20869i, -1i, 29663i)), 1u, vec2<i32>(25827i, 1i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_3) -> vec2<i32> {
    var var_0 = false;
    var var_1 = arg_0.b.a.x;
    let var_2 = all(!(!(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true)))));
    var var_3 = vec3<i32>(-_wgslsmith_clamp_i32(-_wgslsmith_sub_i32(arg_0.c.d.x, 12693i), _wgslsmith_add_i32(0i, 59214i), 1i), firstLeadingBit(_wgslsmith_dot_vec2_i32(select(-global0.b.c.zx, vec2<i32>(arg_0.c.d.x, 0i), !var_2), ~arg_0.a.b.c.xz)), abs(-1i) ^ _wgslsmith_mod_i32(arg_0.b.b.c.x, ~(-global0.b.c.x)));
    var var_4 = Struct_4(0i, abs(arg_0.a.b.c.x), var_3.x);
    return vec2<i32>(2147483647i >> (global0.c % 32u), -_wgslsmith_sub_i32(var_4.b, -abs(global0.b.c.x)));
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    global0 = Struct_2(abs(~vec2<u32>(30119u, 1u)), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(global0.b.a, vec3<f32>(global0.b.a.x, global0.b.a.x, 251f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2355f, -498f, 1000f), global0.b.a, vec3<bool>(true, true, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(783f)), global0.b.a.x))), global0.b.c & firstTrailingBit(vec3<i32>(global0.d.x, -42979i, -8402i) >> (u_input.a % vec3<u32>(32u)))), global0.a.x, _wgslsmith_mod_vec2_i32(-func_3(Struct_3(Struct_2(vec2<u32>(0u, 19120u), Struct_1(global0.b.a, global0.b.a.x, vec3<i32>(-1i, -64051i, -1i)), 35137u, global0.b.c.yy), Struct_2(vec2<u32>(26834u, u_input.b), global0.b, 22055u, global0.d), Struct_2(arg_0.yz, global0.b, global0.a.x, vec2<i32>(-610i, 27636i)), vec4<f32>(global0.b.b, global0.b.b, 1071f, global0.b.b))), (global0.b.c.zy >> (_wgslsmith_add_vec2_u32(arg_0.xy, vec2<u32>(u_input.a.x, 76522u)) % vec2<u32>(32u))) & ~(vec2<i32>(2147483647i, global0.b.c.x) & vec2<i32>(-14411i, 0i))));
    var var_0 = -(vec4<i32>(max(1i, global0.d.x), global0.d.x, firstTrailingBit(~(-18319i)), abs(-2147483647i)) & abs(~_wgslsmith_sub_vec4_i32(vec4<i32>(1777i, 4845i, 2147483647i, -7848i), vec4<i32>(global0.b.c.x, -9578i, global0.b.c.x, global0.b.c.x))));
    let var_1 = Struct_2(~vec2<u32>(arg_0.x, reverseBits(~global0.c)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1576f, 489f, -919f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1088f)), ~global0.b.c), ~0u, abs(~vec2<i32>(var_0.x, _wgslsmith_mult_i32(global0.d.x, -1i))));
    let var_2 = 4294967295u;
    var_0 = max(-(firstTrailingBit(max(vec4<i32>(1i, var_0.x, 0i, global0.d.x), vec4<i32>(var_0.x, var_0.x, -2147483647i, global0.b.c.x))) | (vec4<i32>(-1i) * -vec4<i32>(27442i, -26270i, -2147483647i, global0.b.c.x))), _wgslsmith_mod_vec4_i32(-firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(-12281i, var_0.x, global0.b.c.x, -1i), vec4<i32>(var_1.d.x, var_1.d.x, 17275i, 12999i), vec4<i32>(global0.d.x, global0.b.c.x, var_1.d.x, 11759i))), vec4<i32>(_wgslsmith_dot_vec3_i32(var_1.b.c, abs(vec3<i32>(var_1.b.c.x, var_0.x, 10617i))), var_0.x, countOneBits(var_1.d.x), var_0.x)));
    return var_1;
}

fn func_1(arg_0: i32) -> i32 {
    let var_0 = vec4<f32>(_wgslsmith_div_f32(927f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.b.b))) - 121f)), _wgslsmith_f_op_f32(-global0.b.b), 1132f, global0.b.a.x);
    let var_1 = global0.b;
    global0 = func_2(u_input.a);
    let var_2 = global0.c;
    var var_3 = vec3<i32>(-4954i, _wgslsmith_div_i32(_wgslsmith_add_i32(arg_0, global0.b.c.x & global0.d.x) >> (global0.c % 32u), abs(0i)), _wgslsmith_dot_vec2_i32(global0.b.c.xy, ~global0.b.c.yy));
    return -12591i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(reverseBits(max(func_1(global0.b.c.x), _wgslsmith_dot_vec2_i32(global0.b.c.yz, global0.b.c.yx))), ~(-_wgslsmith_sub_i32(4282i, -37249i)), func_2(u_input.a).b.c.x), -global0.b.c);
    global0 = func_2(u_input.a);
    global0 = Struct_2(firstLeadingBit(~(~(~vec2<u32>(1u, global0.a.x)))), global0.b, ~1u, var_0.zy);
    let var_1 = true;
    global0 = Struct_2(u_input.a.zz, global0.b, 23296u, ~(~_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.x, var_0.x), vec2<i32>(-1i, 41709i)), vec2<i32>(-61659i, -1i))));
    var var_2 = global0.b;
    let var_3 = Struct_4(abs(-2147483647i), max(-2147483647i, _wgslsmith_dot_vec2_i32(~(-var_0.zz), -_wgslsmith_add_vec2_i32(vec2<i32>(var_0.x, -2147483647i), vec2<i32>(var_0.x, global0.b.c.x)))), var_2.c.x);
    var_2 = func_2(~u_input.a).b;
    let x = u_input.a;
    s_output = StorageBuffer(-var_3.b, global0.b.a.x);
}

