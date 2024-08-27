struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_3,
    d: vec4<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: Struct_3 = Struct_3(Struct_2(vec2<i32>(-24882i, i32(-2147483648)), vec2<bool>(true, false), false, 43705u), vec4<bool>(false, false, true, false));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>, arg_2: f32, arg_3: f32) -> i32 {
    var var_0 = vec3<bool>((global0.b.a.a.x > -65930i) || global0.b.a.c, all(select(!vec4<bool>(global0.d.a.x, true, global1.a.c, global1.b.x), global1.b, all(!global0.b.b.wyx))), true);
    global1 = Struct_3(global1.a, select(!global1.b, vec4<bool>(any(select(global1.b, global0.b.b, false)), true, true, all(!vec4<bool>(false, global0.b.b.x, global0.d.a.x, global0.d.a.x))), !any(global1.a.b)));
    var var_1 = Struct_1(!global0.d.a, _wgslsmith_f_op_vec3_f32(step(global0.d.b, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(global0.d.b - _wgslsmith_div_vec3_f32(global0.a.b, vec3<f32>(-678f, global0.d.c, global0.d.b.x))))))), -598f);
    var var_2 = Struct_4(Struct_1(vec2<bool>(all(select(vec2<bool>(false, false), var_1.a, vec2<bool>(global1.b.x, var_1.a.x))), true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.b.x, _wgslsmith_f_op_f32(max(-434f, 209f)), _wgslsmith_f_op_f32(-var_1.c))), var_1.b.x), select(vec3<bool>(var_1.a.x, false, _wgslsmith_mult_u32(9054u, global1.a.d) < ~arg_1.x), global0.b.b.wyx, global0.d.a.x), Struct_3(Struct_2(global1.a.a, var_1.a, !all(global1.b.yxy), firstTrailingBit(global1.a.d)), vec4<bool>(global0.b.b.x, all(!vec4<bool>(true, global1.a.c, true, global1.a.b.x)), all(global1.b) | true, true)), -(abs(firstLeadingBit(vec4<i32>(global1.a.a.x, 1i, -48460i, global1.a.a.x))) << (~vec4<u32>(0u, global0.b.a.d, global1.a.d, 4294967295u) % vec4<u32>(32u))));
    var_1 = var_2.a;
    return select(28343i, i32(-1i) * -global1.a.a.x, !global0.d.a.x);
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = select(~global1.a.a >> (firstLeadingBit(~firstTrailingBit(vec2<u32>(u_input.a, global1.a.d))) % vec2<u32>(32u)), vec2<i32>(-50493i, -_wgslsmith_mult_i32(-2147483647i, func_3(0u, vec2<u32>(u_input.a, 1u), global0.d.b.x, global0.a.b.x))), true);
    var var_1 = _wgslsmith_mult_vec4_u32(reverseBits(select(firstTrailingBit(abs(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a))), vec4<u32>(_wgslsmith_add_u32(u_input.a, u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(6534u, global0.b.a.d, 11509u), vec3<u32>(4294967295u, global1.a.d, global1.a.d)), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.d, 9261u, 0u), vec3<u32>(4294967295u, global1.a.d, global0.b.a.d)), ~global1.a.d), all(select(arg_0.yx, vec2<bool>(true, global0.a.a.x), true)))), vec4<u32>(0u, 1u >> (u_input.a % 32u), global0.b.a.d, global1.a.d) ^ ~min(vec4<u32>(global1.a.d, global1.a.d, u_input.a, 27495u), ~vec4<u32>(62288u, global1.a.d, global1.a.d, 4294967295u)));
    let var_2 = ~1i & -countOneBits(_wgslsmith_sub_i32(31016i, global0.c) & var_0.x);
    global0 = Struct_5(global0.d, Struct_3(Struct_2(vec2<i32>(var_2, var_0.x) & -global0.b.a.a, global1.b.yw, false, 50452u), vec4<bool>(false, !any(vec2<bool>(arg_0.x, arg_0.x)), !global1.a.c != true, firstTrailingBit(24656u) > global1.a.d)), _wgslsmith_div_i32(reverseBits(_wgslsmith_mult_i32(1i, _wgslsmith_dot_vec2_i32(global0.b.a.a, global0.b.a.a))), var_2), global0.d);
    let var_3 = global0.a;
    return Struct_1(select(!var_3.a, vec2<bool>(true, true), vec2<bool>(select(any(vec2<bool>(var_3.a.x, var_3.a.x)), any(vec3<bool>(global1.b.x, false, global0.d.a.x)), !arg_0.x), !(!global1.b.x))), global0.d.b, 390f);
}

fn func_1() -> u32 {
    var var_0 = global1.a.d;
    var var_1 = Struct_5(global0.d, global0.b, global0.c, func_2(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, global0.a.a.x, true), global0.b.b.zyx))));
    let var_2 = Struct_5(func_2(select(select(!var_1.b.b.zxz, vec3<bool>(true, global0.b.b.x, global0.b.a.c), var_1.a.b.x <= 2122f), !vec3<bool>(global0.a.a.x, true, global0.a.a.x), var_1.b.b.zzx)), global0.b, ~var_1.c & (abs(func_3(u_input.a, vec2<u32>(0u, 1u), var_1.a.b.x, -1336f)) | (i32(-1i) * -var_1.c)), global0.a);
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.c, _wgslsmith_f_op_f32(global0.a.b.x * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1162f, -1007f)), global0.a.c))), 636f) + vec3<f32>(_wgslsmith_f_op_f32(select(global0.d.c, -1376f, var_2.a.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -192f)))), _wgslsmith_f_op_f32(-1052f + var_1.d.b.x)));
    let var_4 = _wgslsmith_div_u32(~abs(global1.a.d), 1u);
    return 30447u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(vec2<i32>(1i, global1.a.a.x), vec2<i32>(-1i, 2147483647i) | global1.a.a), -vec2<i32>(-14511i | global0.b.a.a.x, global1.a.a.x));
    global0 = Struct_5(global0.d, global0.b, var_0.x, Struct_1(vec2<bool>(_wgslsmith_f_op_f32(-1677f + global0.d.c) > 451f, all(global0.a.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-466f, -528f, -445f)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.a.c)))));
    var var_1 = vec4<u32>(u_input.a, _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(global0.b.a.d, global0.b.a.d, 0u, u_input.a))), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.b.a.d, 81203u, global1.a.d, u_input.a), vec4<u32>(u_input.a, u_input.a, 4216u, u_input.a)) | vec4<u32>(4467u, global1.a.d, global1.a.d, global0.b.a.d), reverseBits(vec4<u32>(96551u, global0.b.a.d, 43698u, global0.b.a.d) | vec4<u32>(global1.a.d, global1.a.d, 1u, global0.b.a.d)))), func_1(), 10927u);
    var var_2 = func_2(!(!global1.b.wxx));
    var var_3 = Struct_5(Struct_1(vec2<bool>(var_2.a.x, !(-18781i < global1.a.a.x)), vec3<f32>(global0.a.b.x, var_2.b.x, -402f), -698f), global0.b, 1i, global0.a);
    var_1 = _wgslsmith_mult_vec4_u32(select(min(_wgslsmith_mult_vec4_u32(vec4<u32>(50396u, 36429u, var_3.b.a.d, global0.b.a.d), vec4<u32>(global0.b.a.d, 9077u, var_3.b.a.d, var_3.b.a.d)), abs(vec4<u32>(0u, 1u, 0u, var_1.x))) >> (vec4<u32>(global1.a.d, global0.b.a.d & global0.b.a.d, _wgslsmith_mod_u32(u_input.a, global1.a.d), u_input.a) % vec4<u32>(32u)), vec4<u32>(~4294967295u & ~u_input.a, global0.b.a.d, ~func_1(), var_1.x), global0.a.a.x), ~_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.a, 0u, 4294967295u, global1.a.d)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(33880u, 11754u, 26014u, 1u), vec4<u32>(global0.b.a.d, 1u, 4294967295u, var_1.x)), vec4<u32>(firstTrailingBit(73164u), 37243u, abs(global0.b.a.d), global1.a.d)));
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(89303u, 8986u)), ~var_1.zx) ^ vec2<u32>(select(1u, var_1.x, true), 154035u)), ~_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(abs(vec2<i32>(global0.b.a.a.x, 21980i)), global1.a.a), global0.b.a.a, vec2<i32>(countOneBits(global1.a.a.x), min(-42565i, var_3.c))), _wgslsmith_mult_u32(~global0.b.a.d, ~(~global0.b.a.d) >> (var_1.x % 32u)), var_2.b.x);
}

