struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: vec2<f32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
    c: Struct_3,
    d: Struct_2,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_4,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec4<bool>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2) -> vec3<bool> {
    var var_0 = global0.b;
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1151f, -495f, 297f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.c.x, 602f, 513f)))))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(1005f - var_0.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c.x * -423f), 1f), _wgslsmith_f_op_f32(min(-861f, _wgslsmith_f_op_f32(f32(-1f) * -618f))))))));
    var var_2 = _wgslsmith_div_vec4_u32(~(~(~vec4<u32>(u_input.c, var_0.a.x, global0.b.a.x, 50738u))), abs(vec4<u32>(1u, ~u_input.b.x, 4294967295u, ~u_input.b.x)) & (abs(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 14800u, arg_0.a.x, 0u), vec4<u32>(42410u, arg_0.a.x, 1u, u_input.c))) << (~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, arg_0.a.x, 0u), vec4<u32>(0u, var_0.a.x, var_0.a.x, var_0.a.x), vec4<u32>(0u, arg_0.a.x, arg_0.a.x, var_0.a.x)) % vec4<u32>(32u))));
    let var_3 = Struct_1(abs(0u));
    let var_4 = Struct_2(var_0.a, max(countOneBits(~(-40086i)), -20289i), var_0.c, global1.xzz);
    return vec3<bool>(all(vec2<bool>(global1.x, true)) || true, true, any(var_0.d));
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: bool) -> i32 {
    let var_0 = global0.b.a.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(min(-1490f, global0.b.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1383f), arg_2.b.c.x), arg_2.b.c.x, 286f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, global0.b.c.x, global0.b.c.x, global0.b.c.x), vec4<f32>(-790f, arg_0, arg_0, 1000f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.b.c.x, -109f, arg_2.b.c.x, 337f)))))))));
    var var_2 = Struct_4(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(9043u, 0u, u_input.b.x, arg_2.b.a.x) & ~vec4<u32>(0u, 53273u, 4294967295u, 66885u)), _wgslsmith_mod_vec4_u32(vec4<u32>(~arg_2.b.a.x, u_input.b.x, ~13726u, 4294967295u), ~(~vec4<u32>(0u, 32806u, arg_2.b.a.x, 12859u)))), arg_2, arg_2, global0.b);
    let var_3 = Struct_1(0u);
    var var_4 = Struct_1(abs(683u));
    return -2147483647i;
}

fn func_2() -> Struct_1 {
    global0 = Struct_3(global0.b.d.x, Struct_2(global0.b.a, func_4(-1801f, select(!vec3<bool>(true, global0.b.d.x, false), func_3(Struct_2(u_input.b.xz, u_input.a, vec2<f32>(-1189f, global0.b.c.x), vec3<bool>(true, true, global0.a))), !global1.x), Struct_3(select(global1.x, global1.x, false), global0.b), all(vec3<bool>(false, false, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(856f, 1153f), -377f)), select(select(global1.zyy, vec3<bool>(global1.x, global1.x, global0.b.d.x), vec3<bool>(global0.b.d.x, true, true)), vec3<bool>(all(global0.b.d), false, func_3(Struct_2(global0.b.a, 2147483647i, global0.b.c, global0.b.d)).x), vec3<bool>(true, func_3(Struct_2(u_input.b.xy, 17572i, vec2<f32>(951f, -420f), global1.wyy)).x, true))));
    var var_0 = global0.b.d.xx;
    var var_1 = true & !all(func_3(Struct_2(vec2<u32>(u_input.c, global0.b.a.x), global0.b.b, vec2<f32>(global0.b.c.x, 681f), global0.b.d)));
    let var_2 = !select(true, false, !select(!global1.x, global1.x, true));
    var var_3 = vec3<u32>(~u_input.c, ~firstTrailingBit(_wgslsmith_sub_u32(global0.b.a.x, 1u)), ~firstLeadingBit(~_wgslsmith_clamp_u32(1u, global0.b.a.x, u_input.b.x)));
    return Struct_1(_wgslsmith_sub_u32(0u, var_3.x));
}

fn func_1(arg_0: bool, arg_1: vec2<u32>) -> u32 {
    let var_0 = func_2();
    var var_1 = global1.x;
    let var_2 = Struct_4(firstLeadingBit(~(vec4<u32>(0u, u_input.b.x, global0.b.a.x, 1u) | vec4<u32>(global0.b.a.x, var_0.a, 1u, 4294967295u))) ^ select(~vec4<u32>(var_0.a, u_input.b.x, 0u, 21454u), min(vec4<u32>(arg_1.x, global0.b.a.x, arg_1.x, arg_1.x), vec4<u32>(u_input.b.x, u_input.c, 71589u, var_0.a)) >> (firstTrailingBit(vec4<u32>(u_input.b.x, 38691u, var_0.a, 31291u)) % vec4<u32>(32u)), arg_0 && (global0.b.c.x <= 105f)), Struct_3(all(vec3<bool>(global0.a, arg_0, true)) || false, Struct_2(_wgslsmith_mod_vec2_u32(~vec2<u32>(0u, 79440u), global0.b.a | vec2<u32>(50681u, global0.b.a.x)), u_input.a, global0.b.c, select(global0.b.d, vec3<bool>(global1.x, true, true), vec3<bool>(global1.x, true, global0.a)))), Struct_3(true & any(select(vec3<bool>(global0.b.d.x, false, arg_0), global0.b.d, arg_0)), global0.b), Struct_2(~u_input.b.zz, select(global0.b.b, 2147483647i, (4294967295u & u_input.b.x) >= min(4294967295u, arg_1.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-1156f)), _wgslsmith_f_op_f32(global0.b.c.x + global0.b.c.x))), func_3(global0.b)));
    var_1 = false;
    global1 = vec4<bool>(true, all(!select(var_2.b.b.d.zy, !var_2.b.b.d.xz, vec2<bool>(true, true))), any(var_2.b.b.d), ~81789i == (i32(-1i) * -u_input.a));
    return ~u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~global0.b.a.x);
    let var_1 = global0.b;
    let var_2 = u_input.a;
    let var_3 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.b.c.x))), 344f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1632f + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1036f, 454f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.c.x)))), global0.b.c.x);
    global1 = !(!select(vec4<bool>(any(global1.yy), var_1.b != -2147483647i, all(var_1.d.xx), false), !(!vec4<bool>(true, false, false, global1.x)), var_1.d.x));
    var var_4 = Struct_4(vec4<u32>(_wgslsmith_sub_u32(4294967295u, ~var_0.a), ~98743u & func_1(global1.x, ~u_input.b.xy), _wgslsmith_mod_u32(var_0.a, 4294967295u), ~(~var_1.a.x)), Struct_3(true & any(var_1.d.zy), Struct_2(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b.xz, vec2<u32>(4294967295u, 0u)), abs(global0.b.a)), ~(~global0.b.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(898f, 1000f)))), !global0.b.d)), Struct_3(all(vec3<bool>(!var_1.d.x, func_3(Struct_2(global0.b.a, 2945i, var_3.xw, global1.xzz)).x, var_1.d.x)), global0.b), global0.b);
    global1 = vec4<bool>(false, global1.x, true, global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(1220f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.c.x), -1000f, any(!vec4<bool>(global1.x, var_4.d.d.x, false, global0.b.d.x)))))), reverseBits(vec3<i32>(-1i, -1i, i32(-1i) * -4634i) & vec3<i32>(55257i, var_2 >> (var_1.a.x % 32u), var_2)), vec3<u32>(~85173u, _wgslsmith_add_u32(var_4.c.b.a.x, 0u) | 116048u, 78456u) << (~(vec3<u32>(u_input.b.x, global0.b.a.x, 1u) << (vec3<u32>(2123u, 2411u, u_input.b.x) % vec3<u32>(32u))) % vec3<u32>(32u)));
}

