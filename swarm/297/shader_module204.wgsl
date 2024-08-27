struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: vec2<bool>,
    d: i32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: u32, arg_3: vec2<bool>) -> vec3<u32> {
    let var_0 = global0.b.b.x;
    global0 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), global0.b, _wgslsmith_sub_i32(5371i, ~(~global0.c)));
    var var_1 = _wgslsmith_f_op_f32(-665f * arg_1);
    let var_2 = ~_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(arg_0, arg_0), 4294967295u, _wgslsmith_mod_u32(arg_2, 22912u), 11221u), ~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2, global0.b.c.x, 71871u, global0.b.a.x), vec4<u32>(33886u, arg_0.x, 0u, arg_2))), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2, arg_2, 0u, 4294967295u), vec4<u32>(global0.b.c.x, 26049u, 1u, 0u)) << (~vec4<u32>(4294967295u, 1u, 1u, 35111u) % vec4<u32>(32u)), (vec4<u32>(global0.b.a.x, arg_2, 9006u, global0.b.c.x) >> (vec4<u32>(0u, global0.b.a.x, 11541u, arg_0.x) % vec4<u32>(32u))) << (~vec4<u32>(32073u, arg_0.x, arg_2, 58474u) % vec4<u32>(32u))), ~vec4<u32>(49714u, ~12519u, 1u, firstLeadingBit(61897u)));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - arg_1));
    return ~vec3<u32>(_wgslsmith_clamp_u32(reverseBits(~4294967295u), arg_2, firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, arg_0.x), global0.b.c))), _wgslsmith_div_u32(3740u >> (1u % 32u), ~75704u), countOneBits(~1u));
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: u32, arg_3: Struct_4) -> bool {
    global0 = arg_1;
    global0 = Struct_3(-755f, arg_3.a, firstTrailingBit(arg_0));
    var var_0 = u_input.c.xz;
    var var_1 = Struct_1(~_wgslsmith_mult_vec3_u32(func_3(~arg_3.a.c, _wgslsmith_f_op_f32(-262f - arg_1.a), arg_3.b, vec2<bool>(true, true)), select(~vec3<u32>(arg_1.b.a.x, arg_2, 1u), vec3<u32>(36699u, arg_1.b.c.x, arg_3.b), !global0.b.b.x)), vec4<bool>(global0.b.b.x, 6358i != max(global0.c, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.c, u_input.b.x, var_0.x, -1i), vec4<i32>(-2147483647i, 1i, -17930i, -45804i))), all(global0.b.b.yx), !(true & all(vec3<bool>(arg_1.b.b.x, global0.b.b.x, false)))), arg_1.b.a.xy);
    var_1 = global0.b;
    return all(arg_1.b.b.zx);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(global0.b.a, !select(global0.b.b, !(!vec4<bool>(true, false, true, global0.b.b.x)), vec4<bool>(func_2(global0.c, Struct_3(global0.a, global0.b, 23548i), 4294967295u, Struct_4(Struct_1(global0.b.a, global0.b.b, global0.b.c), global0.b.c.x, global0.b.b.yw, u_input.a.x)), false, true, global0.b.b.x && false)), _wgslsmith_sub_vec2_u32(abs(vec2<u32>(~global0.b.c.x, _wgslsmith_dot_vec3_u32(global0.b.a, vec3<u32>(global0.b.c.x, 3022u, global0.b.a.x)))), vec2<u32>(54645u, 1u)));
    return Struct_1(var_0.a, select(!(!vec4<bool>(false, global0.b.b.x, true, var_0.b.x)), global0.b.b, global0.b.b.x), firstTrailingBit(var_0.c & vec2<u32>(var_0.a.x, global0.b.a.x)));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: Struct_1) -> vec4<bool> {
    global0 = Struct_3(-364f, arg_2, ~global0.c);
    global0 = Struct_3(-1164f, func_1(), firstTrailingBit(-u_input.b.x));
    var var_0 = global0.c;
    var var_1 = Struct_5(_wgslsmith_sub_vec3_u32(~abs(reverseBits(global0.b.a)), arg_2.a), ~(~vec4<u32>(func_1().c.x, arg_2.c.x, ~global0.b.c.x, _wgslsmith_mod_u32(73340u, global0.b.a.x))), firstLeadingBit(vec3<i32>(1i, arg_1.x, i32(-1i) * -global0.c)));
    var var_2 = global0.b;
    return select(vec4<bool>(true, true, func_2(-_wgslsmith_mult_i32(u_input.b.x, 1i), Struct_3(arg_0.x, Struct_1(vec3<u32>(var_1.a.x, global0.b.c.x, var_1.a.x), vec4<bool>(global0.b.b.x, false, arg_2.b.x, false), vec2<u32>(81854u, var_1.a.x)), _wgslsmith_mult_i32(u_input.c.x, -2147483647i)), firstTrailingBit(min(var_2.a.x, 82567u)), Struct_4(Struct_1(var_1.a, var_2.b, vec2<u32>(1u, 4294967295u)), var_2.c.x, vec2<bool>(true, true), firstTrailingBit(16176i))), true & !(global0.a >= 937f)), !arg_2.b, select(var_2.b, vec4<bool>(!(global0.b.b.x && var_2.b.x), all(vec4<bool>(arg_2.b.x, false, global0.b.b.x, true)) | !global0.b.b.x, arg_2.b.x, _wgslsmith_f_op_f32(abs(arg_0.x)) != _wgslsmith_f_op_f32(f32(-1f) * -497f)), vec4<bool>(any(vec4<bool>(true, true, var_2.b.x, global0.b.b.x)), global0.b.b.x, (global0.c | 1i) >= u_input.c.x, false)));
}

fn func_5(arg_0: vec4<bool>) -> Struct_2 {
    let var_0 = Struct_4(global0.b, global0.b.c.x, func_1().b.yx, ~_wgslsmith_div_i32(global0.c, -20728i));
    let var_1 = vec4<bool>(global0.b.b.x, false, true, true);
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.a), global0.a, var_1.x));
    return Struct_2(func_1(), func_1());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(~reverseBits(global0.b.c.x), global0.b.a.x);
    var_0 = global0.b.a.x;
    var var_1 = func_5(select(func_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(1523f, global0.a, -1535f, global0.a), vec4<f32>(global0.a, -1091f, -127f, global0.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, -2425f, global0.a, 1670f)))), abs(u_input.a) & vec2<i32>(global0.c, u_input.c.x), func_1()), !global0.b.b, !all(global0.b.b.zw)));
    var_1 = Struct_2(func_1(), Struct_1(~(~(~vec3<u32>(var_1.a.c.x, 9269u, var_1.a.a.x))), vec4<bool>(true, func_1().b.x, func_2(countOneBits(global0.c), Struct_3(1147f, Struct_1(vec3<u32>(41957u, 4294967295u, global0.b.c.x), global0.b.b, var_1.a.a.xz), u_input.c.x), global0.b.a.x, Struct_4(Struct_1(var_1.b.a, global0.b.b, vec2<u32>(global0.b.c.x, global0.b.c.x)), 1u, vec2<bool>(global0.b.b.x, true), global0.c)), var_1.b.b.x), global0.b.c));
    global0 = Struct_3(_wgslsmith_div_f32(-396f, 166f), Struct_1(max(~vec3<u32>(global0.b.a.x, global0.b.c.x, 4294967295u), global0.b.a), !(!global0.b.b), ~vec2<u32>(1u, var_1.b.a.x)), _wgslsmith_div_i32(1i, global0.c));
    var var_2 = Struct_3(-729f, func_1(), -u_input.b.x | 1i);
    var_0 = var_1.a.a.x;
    var_0 = func_3(~global0.b.a.xz, _wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(-var_2.a)), 9967u, !(!vec2<bool>(var_2.c > -15444i, false))).x;
    var_1 = func_5(vec4<bool>(true, true, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(384f, -1608f, var_2.a, global0.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, var_2.a, -354f, 387f) * vec4<f32>(var_2.a, global0.a, global0.a, global0.a)), true && var_1.b.b.x)))))));
}

