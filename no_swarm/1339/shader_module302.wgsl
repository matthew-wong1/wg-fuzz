struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-540f, 1315f);

var<private> global1: i32 = 1i;

var<private> global2: Struct_3 = Struct_3(786f, Struct_1(0i, 34753u), 1i);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec3<bool>) -> i32 {
    global0 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(global2.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.a - global0.x), global0.x))), global0.x)));
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -512f) + _wgslsmith_f_op_f32(170f + 1234f)) - 1f)), global2.b, 0i);
    let var_1 = !all(!(!(!vec3<bool>(true, false, arg_0.x))));
    global2 = Struct_3(global2.a, Struct_1(-1i, global2.b.b), -2147483647i);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, -175f, 452f, _wgslsmith_f_op_f32(f32(-1f) * -208f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.a, global0.x, var_0.a, -879f))), !(!arg_0.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1730f, global2.a, 584f, 910f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1714f, var_0.a, var_0.a, 1219f) + vec4<f32>(global0.x, global0.x, 1000f, global2.a))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-764f, 551f, global0.x, 135f)))));
    return -17182i;
}

fn func_2(arg_0: bool, arg_1: vec2<i32>) -> Struct_3 {
    return Struct_3(global0.x, Struct_1(-1i, _wgslsmith_add_u32(_wgslsmith_add_u32(67449u, 33234u), u_input.b.x) << (abs(54916u | global2.b.b) % 32u)), max(u_input.a, func_3(!(!vec3<bool>(true, arg_0, true)))));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>) -> Struct_2 {
    let var_0 = func_2(false, arg_1.zz);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.a, -168f, var_0.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1148f, 383f, -185f))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 937f, -1541f)) * vec3<f32>(global2.a, global0.x, global2.a)), vec3<f32>(var_0.a, _wgslsmith_f_op_f32(max(-374f, -1000f)), _wgslsmith_f_op_f32(min(1141f, global0.x))), vec3<bool>(true, true, true)))));
    var var_2 = var_0;
    global2 = func_2(!any(vec3<bool>(select(true, false, true), true, var_2.a == var_0.a)), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(min(arg_1.zx, arg_1.xz), arg_1.xy), u_input.a), arg_1.zy));
    global2 = var_0;
    return Struct_2(arg_0.a, Struct_1(_wgslsmith_sub_i32(2147483647i, _wgslsmith_mod_i32(2873i, arg_0.b.a) | 0i), ~global2.b.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a));
    let var_1 = func_1(Struct_2(u_input.b.x, Struct_1(select(u_input.a, u_input.a, false) | u_input.a, ~(~u_input.b.x))), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(~(-vec3<i32>(global2.b.a, global2.c, 1i)), vec3<i32>(global2.b.a, -2147483647i, u_input.a)), firstTrailingBit(_wgslsmith_add_vec3_i32(abs(vec3<i32>(-20939i, 1i, -70652i)), vec3<i32>(12234i, -1i, global2.b.a)))));
    var var_2 = var_1;
    let var_3 = firstLeadingBit(abs(~vec3<u32>(54315u, global2.b.b, 4294967295u) ^ vec3<u32>(1u, 1u, 1u)));
    var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(-448f, -vec4<i32>(var_2.b.a & 30993i, -6218i, -var_1.b.a, -2147483647i) & _wgslsmith_clamp_vec4_i32(-(vec4<i32>(var_1.b.a, -19120i, 0i, 10830i) >> (vec4<u32>(var_1.a, 4294967295u, var_3.x, global2.b.b) % vec4<u32>(32u))), ~firstLeadingBit(vec4<i32>(-2147483647i, 16936i, u_input.a, u_input.a)), vec4<i32>(var_1.b.a, -var_1.b.a, global2.c, _wgslsmith_add_i32(var_1.b.a, global2.b.a))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global2.a) * 1000f), 465f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(812f * global2.a) * global0.x)), vec3<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) - _wgslsmith_f_op_f32(-global2.a)), global2.a)), u_input.b | ~(~(~u_input.b)));
}

