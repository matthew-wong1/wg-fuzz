struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    global0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -1039f))), -1000f))), select(abs(global0.b), _wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(arg_0.d, global0.d, arg_0.d)), vec3<i32>(13185i, arg_0.d, 44481i)) | vec3<i32>(0i & arg_0.d, global0.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-20149i, global0.b.x), vec2<i32>(2147483647i, global0.b.x))), vec3<bool>(true, true, true)), select(!(!vec3<bool>(global0.c.x, arg_0.c.x, arg_0.c.x)), !global0.c, vec3<bool>(!global0.c.x, true, arg_0.c.x)), ~(-1i));
    global0 = arg_0;
    return global0.c;
}

fn func_2() -> bool {
    global0 = Struct_1(-1000f, _wgslsmith_mod_vec3_i32(~select(global0.b, -vec3<i32>(global0.b.x, 33264i, 1i), global0.c), _wgslsmith_add_vec3_i32(global0.b, _wgslsmith_mult_vec3_i32(vec3<i32>(-72363i, 6339i, global0.b.x), -global0.b))), select(func_3(Struct_1(global0.a, -vec3<i32>(-2147483647i, 0i, -2147483647i), select(vec3<bool>(false, true, global0.c.x), vec3<bool>(true, global0.c.x, global0.c.x), global0.c), -7844i)), select(!vec3<bool>(false, global0.c.x, true), func_3(Struct_1(global0.a, vec3<i32>(global0.d, global0.b.x, -64046i), vec3<bool>(false, false, true), global0.d)), true), all(!select(vec4<bool>(global0.c.x, true, false, true), vec4<bool>(true, true, global0.c.x, true), vec4<bool>(global0.c.x, false, false, true)))), global0.d & select(global0.b.x, -40373i, global0.c.x));
    let var_0 = Struct_1(global0.a, vec3<i32>(-(~_wgslsmith_add_i32(global0.b.x, 1i)), global0.d, _wgslsmith_sub_i32(~global0.b.x | 36920i, 0i)), vec3<bool>(all(select(!global0.c.yx, global0.c.zz, global0.c.yx)), global0.c.x, !all(vec3<bool>(global0.c.x, true, true))), _wgslsmith_clamp_i32(~_wgslsmith_mult_i32(13980i, 8615i), max(~45i, global0.d ^ global0.b.x), -2147483647i) >> (min(_wgslsmith_dot_vec2_u32(min(vec2<u32>(u_input.a, u_input.b.x), u_input.b.ww), u_input.b.yx), 1u) % 32u));
    var var_1 = Struct_2(global0.c.x);
    let var_2 = _wgslsmith_mod_u32(~(~(~1u)), u_input.a);
    var var_3 = Struct_1(1478f, vec3<i32>((abs(1i) ^ _wgslsmith_mult_i32(52i, var_0.b.x)) | (i32(-1i) * -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(min(-1i, global0.b.x), min(-33727i, global0.d)), ~global0.b.xz), firstTrailingBit(~var_0.d >> (4294967295u % 32u))), select(vec3<bool>(all(select(vec4<bool>(var_1.a, global0.c.x, true, false), vec4<bool>(global0.c.x, var_1.a, false, var_0.c.x), vec4<bool>(false, var_0.c.x, false, var_0.c.x))), select(0u, 33926u, global0.c.x) < firstLeadingBit(u_input.a), false), select(var_0.c, !func_3(var_0), vec3<bool>(var_1.a, true, true)), var_0.c.x), global0.d);
    return true;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_f32(arg_0.a * arg_0.a), arg_0.b, !func_3(Struct_1(1222f, vec3<i32>(global0.b.x, 1i, -2147483647i) & vec3<i32>(arg_0.b.x, 1097i, 0i), arg_0.c, -2147483647i)), firstTrailingBit(arg_0.d));
    var var_0 = arg_0;
    var var_1 = false;
    global0 = arg_0;
    global0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1711f - 205f) * _wgslsmith_f_op_f32(abs(-1966f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, global0.a, true)))))), arg_0.b, global0.c, global0.b.x);
    return arg_0;
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = global0.b.zy;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.a)) + global0.a);
    let var_2 = global0.a;
    let var_3 = arg_1;
    var var_4 = _wgslsmith_f_op_f32(1000f * global0.a);
    return func_4(Struct_1(global0.a, global0.b, vec3<bool>(true, func_2(), false), 11144i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(u_input.b.x, Struct_2(all(vec2<bool>(true, all(global0.c.xz)))));
    let var_0 = u_input.a;
    let var_1 = Struct_2(true);
    var var_2 = true;
    var_2 = (reverseBits(global0.b.x | abs(global0.b.x)) & (i32(-1i) * -2147483647i)) >= firstLeadingBit(-global0.b.x);
    let var_3 = 886f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.zy, ~((global0.d ^ global0.b.x) >> (~_wgslsmith_div_u32(u_input.a, var_0) % 32u)));
}

