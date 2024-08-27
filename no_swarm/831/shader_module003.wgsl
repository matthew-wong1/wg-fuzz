struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 25>;

var<private> global1: Struct_3 = Struct_3(Struct_1(vec2<u32>(43835u, 1u)));

var<private> global2: vec3<bool>;

var<private> global3: Struct_1 = Struct_1(vec2<u32>(28363u, 74799u));

var<private> global4: vec2<bool>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: vec4<bool>) -> Struct_3 {
    var var_0 = Struct_3(global1.a);
    var var_1 = ~(~vec3<i32>(u_input.d, ~0i, -25188i)) & vec3<i32>(u_input.d, u_input.d, ~arg_1.b << (_wgslsmith_add_u32(0u, _wgslsmith_mult_u32(4294967295u, u_input.a.x)) % 32u));
    var_0 = Struct_3(Struct_1(firstLeadingBit(~vec2<u32>(arg_2.x, 1u)) | firstLeadingBit(~vec2<u32>(u_input.a.x, arg_0.x))));
    let var_2 = _wgslsmith_sub_vec2_i32(~(-_wgslsmith_mod_vec2_i32(-vec2<i32>(78281i, 40633i), firstTrailingBit(var_1.zx))), ~(-countOneBits(vec2<i32>(-26921i, var_1.x))));
    var var_3 = global1.a;
    return Struct_3(Struct_1(arg_0.zy));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: u32) -> vec3<u32> {
    let var_0 = select(~(~arg_1.a.a.x) <= arg_2, global2.x, false);
    let var_1 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-765f, 660f)) - -239f)), -844f));
    var var_2 = arg_1;
    global2 = select(vec3<bool>(var_0, !(global2.x | select(global2.x, false, global2.x)), (i32(-1i) * -27579i) < arg_0), select(select(vec3<bool>(global2.x && global4.x, true, false), vec3<bool>(any(vec4<bool>(false, global4.x, false, global2.x)), true, var_0 | var_0), select(vec3<bool>(true, true, true), !vec3<bool>(false, global2.x, global2.x), !global4.x)), vec3<bool>(_wgslsmith_f_op_f32(-389f - 644f) >= var_1.a, false, global2.x), !(true && !global2.x)), false);
    var var_3 = Struct_4(var_1.a);
    return u_input.a.wzx;
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: vec3<u32>) -> vec2<u32> {
    let var_0 = max(-vec3<i32>(u_input.d, 1i, abs(reverseBits(u_input.d))), vec3<i32>(abs(-36599i), u_input.d >> (0u % 32u), u_input.d));
    let var_1 = global3.a;
    global0 = array<vec2<u32>, 25>();
    var var_2 = vec2<u32>(~global3.a.x, 0u);
    var var_3 = countOneBits(select(select(arg_2, vec3<u32>(firstLeadingBit(arg_2.x), var_2.x, var_1.x), arg_0.x), arg_2, true));
    return _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 4115u), var_3.xx);
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec4<bool>, arg_3: f32) -> Struct_2 {
    global1 = func_2(~_wgslsmith_sub_vec4_u32(vec4<u32>(28292u, _wgslsmith_mod_u32(4950u, global1.a.a.x), global1.a.a.x << (26428u % 32u), _wgslsmith_add_u32(global3.a.x, 0u)), ~u_input.e), Struct_2(Struct_1(vec2<u32>(abs(global1.a.a.x), 43343u)), ~(-13472i)), u_input.a.xx, vec4<bool>(all(arg_2.wzx), any(arg_2), arg_0, global2.x));
    global3 = Struct_1(func_4(select(!(!vec3<bool>(global4.x, arg_2.x, false)), arg_2.wyy, true), global2.x, firstLeadingBit(func_3(max(u_input.d, u_input.d), Struct_3(Struct_1(vec2<u32>(1u, global3.a.x))), 0u))));
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(128f, arg_3)), arg_3, arg_3)) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_3, 1497f, arg_3), _wgslsmith_div_vec3_f32(vec3<f32>(arg_3, arg_3, -1000f), vec3<f32>(-316f, arg_3, 1130f))))))));
    global2 = select(vec3<bool>(arg_0, !(!all(arg_2.xxx)), arg_0), !select(vec3<bool>(!arg_1, global4.x, select(arg_2.x, true, arg_2.x)), vec3<bool>(global4.x, any(arg_2), !global2.x), vec3<bool>(true & global2.x, true, 31848u > global3.a.x)), !(!all(select(vec4<bool>(arg_0, false, true, false), vec4<bool>(global4.x, false, false, false), arg_2))));
    let var_1 = firstLeadingBit((select(u_input.a.yy, _wgslsmith_add_vec2_u32(global3.a, vec2<u32>(211u, global3.a.x)), true) & _wgslsmith_mult_vec2_u32(~global3.a, ~u_input.a.ww)) << (select(_wgslsmith_clamp_vec2_u32(func_3(u_input.d, Struct_3(Struct_1(vec2<u32>(0u, 58323u))), 4294967295u).zz, ~global1.a.a, global0[_wgslsmith_index_u32(~global3.a.x, 25u)]), firstTrailingBit(u_input.e.zx ^ global1.a.a), select(vec2<bool>(arg_0, global2.x), global2.zz, true)) % vec2<u32>(32u)));
    return Struct_2(Struct_1(var_1), 0i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(abs(~(global1.a.a >> (~vec2<u32>(63460u, 4294967295u) % vec2<u32>(32u)))));
    var var_1 = func_1(true, false & global4.x, vec4<bool>(all(vec2<bool>(true | global4.x, all(vec4<bool>(true, global2.x, global4.x, true)))), true, true, !any(!global2.zz)), 1025f);
    global0 = array<vec2<u32>, 25>();
    global0 = array<vec2<u32>, 25>();
    var var_2 = u_input.d;
    var_1 = func_1(global4.x, any(!select(!vec3<bool>(global4.x, global4.x, global2.x), select(vec3<bool>(true, false, true), vec3<bool>(true, global4.x, global2.x), false), select(vec3<bool>(true, false, false), vec3<bool>(false, global2.x, global4.x), false))), !(!select(select(vec4<bool>(global2.x, true, true, true), vec4<bool>(global4.x, global2.x, global4.x, true), true), vec4<bool>(true, global4.x, true, global4.x), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1596f, _wgslsmith_f_op_f32(-168f - -275f))))));
    let var_3 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(-989f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(537f))))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1520f, -1296f)))))), _wgslsmith_clamp_vec3_i32(~(select(vec3<i32>(u_input.d, 1i, -860i), vec3<i32>(-8167i, -2147483647i, 2147483647i), vec3<bool>(false, global2.x, false)) | ~vec3<i32>(var_3, u_input.d, var_3)), -vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.d), vec2<i32>(19161i, 0i)), ~var_3, 35538i), vec3<i32>(min(var_1.b >> (1u % 32u), -1i), -max(var_1.b, -27150i), _wgslsmith_div_i32(2147483647i, u_input.d))), vec3<i32>(abs(0i), -(~21352i), 34715i) << (vec3<u32>(func_2(u_input.a << (u_input.a % vec4<u32>(32u)), Struct_2(Struct_1(vec2<u32>(global1.a.a.x, global1.a.a.x)), -7045i), vec2<u32>(global1.a.a.x, u_input.a.x), select(vec4<bool>(true, true, global2.x, global2.x), vec4<bool>(false, global4.x, global2.x, global4.x), vec4<bool>(global2.x, global2.x, global2.x, global2.x))).a.a.x, ~1u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.zy, u_input.e.ww), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, global1.a.a.x), vec2<u32>(0u, global3.a.x)))) % vec3<u32>(32u)));
}

