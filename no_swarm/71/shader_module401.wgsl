struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: vec2<f32>,
    d: vec3<bool>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: u32,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
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

var<private> global0: vec3<f32>;

var<private> global1: vec3<bool> = vec3<bool>(false, true, false);

var<private> global2: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: u32) -> u32 {
    global1 = vec3<bool>(true, !global1.x, all(global2.yx));
    var var_0 = u_input.b.yw & _wgslsmith_mult_vec2_u32(~_wgslsmith_add_vec2_u32(firstTrailingBit(u_input.a), u_input.a), u_input.a);
    global2 = select(vec3<bool>(any(select(select(vec3<bool>(false, true, global1.x), vec3<bool>(true, true, true), vec3<bool>(false, global2.x, global1.x)), !vec3<bool>(false, true, global2.x), !vec3<bool>(true, global1.x, global1.x))), true, global2.x), select(select(vec3<bool>(any(vec4<bool>(true, false, global1.x, false)), true, select(true, false, false)), !(!vec3<bool>(true, false, global1.x)), false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(!global2.x, true, true), any(!global1.yy))), select(select(vec3<bool>(any(vec3<bool>(global2.x, global2.x, global2.x)), !global2.x, any(vec3<bool>(global1.x, false, false))), !(!vec3<bool>(global1.x, global1.x, true)), global2.x), select(select(select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(true, true, global1.x), global1.x), vec3<bool>(false, global1.x, global2.x), false || global1.x), vec3<bool>(all(vec4<bool>(global2.x, global1.x, false, true)), true, all(vec2<bool>(global1.x, global1.x))), all(!vec4<bool>(global2.x, true, false, true))), _wgslsmith_mod_u32(u_input.b.x, var_0.x) < abs(abs(14742u))));
    global2 = vec3<bool>(global1.x, true, true);
    var_0 = _wgslsmith_mod_vec2_u32(u_input.a, select(vec2<u32>(~_wgslsmith_mult_u32(0u, arg_1), ~_wgslsmith_sub_u32(arg_1, arg_1)), u_input.a, !select(!vec2<bool>(true, global2.x), vec2<bool>(global2.x, global2.x), vec2<bool>(false, global2.x))));
    return u_input.a.x | _wgslsmith_add_u32(6719u, ~(~u_input.b.x));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>) -> vec3<bool> {
    var var_0 = arg_0;
    global1 = vec3<bool>(abs(var_0.b) > var_0.b, false, true);
    var var_1 = arg_0.e.x;
    global1 = arg_0.d;
    var var_2 = select(vec2<bool>(true, false), arg_0.d.xz, !var_0.d.zy);
    return vec3<bool>(true, any(vec4<bool>(true, true, any(vec2<bool>(arg_1.x, false)), abs(56567u) > u_input.a.x)), all(select(select(arg_0.e, arg_0.e, arg_0.e), vec4<bool>(1817f != var_0.c.x, true, true, arg_1.x | var_0.d.x), any(var_0.e) & (var_0.a.x != -2147483647i))));
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, -322f, 1320f, global0.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1285f, -1530f, 637f, global0.x) + vec4<f32>(global0.x, _wgslsmith_f_op_f32(233f + global0.x), -1138f, global0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, 223f, _wgslsmith_f_op_f32(-1281f * global0.x)) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-262f, global0.x, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -177f, 240f, global0.x)))))), !(!select(select(vec4<bool>(false, global1.x, false, false), vec4<bool>(false, true, global1.x, global2.x), global1.x), select(vec4<bool>(global2.x, global2.x, false, global1.x), vec4<bool>(true, global2.x, global2.x, false), false), global1.x))));
    global1 = select(vec3<bool>(all(!vec3<bool>(true, global2.x, false)), true, all(select(vec2<bool>(true, true), global1.zx, global2.yx))), vec3<bool>(global2.x | !(var_0.x < var_0.x), true, countOneBits(max(892u, u_input.b.x)) == (u_input.a.x & (u_input.a.x << (0u % 32u)))), select(!(!select(vec3<bool>(global1.x, false, global2.x), vec3<bool>(global1.x, false, false), vec3<bool>(global1.x, true, global2.x))), func_4(Struct_2(-vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), func_3(u_input.b, 127619u), _wgslsmith_div_vec2_f32(vec2<f32>(global0.x, 719f), vec2<f32>(-770f, var_0.x)), vec3<bool>(global1.x, false, false), select(vec4<bool>(false, global1.x, true, global2.x), vec4<bool>(false, false, false, false), global2.x)), !select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(true, global1.x, false), vec3<bool>(global2.x, true, global1.x))), vec3<bool>(global2.x, false, true)));
    let var_1 = Struct_3(4294967295u, Struct_2(_wgslsmith_mult_vec4_i32(vec4<i32>(17400i, arg_0.x, 2147483647i, 104059i) | _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.x, -3145i, 8225i, arg_0.x), vec4<i32>(-2147483647i, 0i, arg_0.x, arg_0.x)), ~firstTrailingBit(vec4<i32>(arg_0.x, 2147483647i, arg_0.x, -1i))), u_input.b.x, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(global0.zy, var_0.zz))))), !select(select(vec3<bool>(false, false, global2.x), vec3<bool>(true, true, true), vec3<bool>(global1.x, global2.x, true)), !vec3<bool>(global2.x, true, global2.x), select(vec3<bool>(global1.x, global2.x, global2.x), vec3<bool>(false, global1.x, global1.x), vec3<bool>(global1.x, global1.x, true))), !select(vec4<bool>(true, global2.x, global1.x, global1.x), select(vec4<bool>(false, true, true, global1.x), vec4<bool>(true, global1.x, global2.x, true), vec4<bool>(global2.x, global1.x, true, false)), global2.x)), 0u, u_input.b.yx, Struct_1(global0.xy));
    var var_2 = Struct_1(vec2<f32>(-229f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(select(863f, 1188f, true)), var_1.b.d.x)), _wgslsmith_f_op_f32(779f - 218f))));
    var var_3 = 5834u;
    return var_1.b;
}

fn func_1(arg_0: vec4<bool>, arg_1: u32) -> Struct_2 {
    global2 = arg_0.yzw;
    var var_0 = any(select(select(arg_0, arg_0, global2.x), arg_0, vec4<bool>(global2.x, any(select(vec2<bool>(false, true), arg_0.wz, arg_0.ww)), any(vec4<bool>(global2.x, arg_0.x, arg_0.x, global2.x)), global2.x)));
    var var_1 = select(all(!global1.yz), true, true);
    let var_2 = func_2(min(vec3<i32>(686i, i32(-1i) * -8579i, -20895i), reverseBits(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 32991i, -18306i), vec3<i32>(1i, -2147483647i, 1i), vec3<i32>(-18155i, 36590i, 27743i)), ~vec3<i32>(29553i, -1i, 73619i)))));
    var var_3 = var_2.a.x;
    return var_2;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>) -> Struct_2 {
    let var_0 = Struct_3(func_3(~countOneBits(_wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(arg_0.b, 4294967295u, 27180u, arg_0.b))), arg_0.b), Struct_2(vec4<i32>(arg_0.a.x, arg_0.a.x, -(~arg_0.a.x), arg_0.a.x), u_input.a.x, _wgslsmith_f_op_vec2_f32(ceil(global0.zx)), !vec3<bool>(all(vec3<bool>(global2.x, true, false)), false || global2.x, func_2(vec3<i32>(arg_0.a.x, arg_0.a.x, 1i)).e.x), arg_0.e), ~u_input.a.x, ~u_input.a >> (select(_wgslsmith_sub_vec2_u32(max(vec2<u32>(arg_0.b, 1u), u_input.a), vec2<u32>(arg_0.b, arg_0.b)), select(~u_input.a, vec2<u32>(arg_0.b, 39495u), all(arg_0.e)), false) % vec2<u32>(32u)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1010f, 1474f)))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-2134f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_1.x, _wgslsmith_f_op_f32(select(arg_0.c.x, 2331f, var_0.b.e.x))), vec4<f32>(var_0.e.a.x, _wgslsmith_f_op_f32(global0.x + 632f), arg_0.c.x, arg_1.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, var_0.b.c.x, var_0.b.c.x, global0.x)))) - vec4<f32>(_wgslsmith_f_op_f32(-global0.x), -382f, 666f, -958f))));
    let var_2 = global1.x;
    var var_3 = !all(!vec3<bool>(global1.x, true, 68879u == var_0.c));
    global0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(global0.x)), func_1(var_0.b.e, arg_0.b).c.x, _wgslsmith_f_op_f32(-var_0.e.a.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, var_0.b.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_f_op_f32(max(-1000f, arg_1.x)))))));
    return Struct_2(vec4<i32>(min(_wgslsmith_add_i32(~arg_0.a.x, -var_0.b.a.x), -(-26813i & var_0.b.a.x)), var_0.b.a.x, var_0.b.a.x | _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.x, var_0.b.a.x, -24931i, -1i), arg_0.a), 0i), ~abs(~(~82060u)), arg_0.c, func_4(var_0.b, vec3<bool>(global2.x, false, false)), vec4<bool>(true, true, true, true));
}

fn func_6(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    let var_0 = u_input.b.zz;
    var var_1 = ~u_input.b.xx;
    let var_2 = vec2<bool>(false, all(func_5(Struct_2(vec4<i32>(1i, 24284i, arg_0.a.x, arg_0.a.x), arg_1, vec2<f32>(1941f, -199f), vec3<bool>(global1.x, arg_0.d.x, false), arg_0.e), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, arg_0.c.x, -1055f) + vec3<f32>(arg_0.c.x, 2200f, 176f))).e) | global2.x);
    var var_3 = !global1.x;
    let var_4 = -countOneBits(vec4<i32>(-1i) * -firstLeadingBit(arg_0.a));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, -1460f), _wgslsmith_f_op_vec2_f32(global0.xz - arg_0.c), all(arg_0.e))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1137f, 1057f) * global0.zy), func_2(vec3<i32>(925i, var_4.x, -17243i)).c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(func_1(!(!vec4<bool>(global2.x, false, global1.x, global1.x)), ~u_input.b.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 542f, -1000f) - vec3<f32>(-2504f, 1265f, global0.x)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, global0.x, 1801f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1000f, global0.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-379f, global0.x, global0.x) - vec3<f32>(global0.x, -1736f, global0.x))), select(vec3<bool>(global1.x, global2.x, true), vec3<bool>(true, false, global2.x), all(vec4<bool>(false, false, false, true)))))), _wgslsmith_div_u32(1u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(764f, 1069f) - _wgslsmith_f_op_f32(step(global0.x, -1069f)))) - global0.x));
}

