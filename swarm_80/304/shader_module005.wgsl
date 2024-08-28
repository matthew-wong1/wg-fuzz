struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(vec4<bool>(false, true, true, false), Struct_1(-35431i), vec2<f32>(-1513f, 239f)), Struct_3(vec4<bool>(false, true, false, false), Struct_1(-9117i), vec2<f32>(-596f, 800f)), Struct_3(vec4<bool>(false, false, false, false), Struct_1(-47989i), vec2<f32>(-1824f, 1000f)), Struct_3(vec4<bool>(true, true, true, true), Struct_1(20179i), vec2<f32>(367f, 1000f)), Struct_3(vec4<bool>(true, false, true, true), Struct_1(-1i), vec2<f32>(1319f, -573f)), Struct_3(vec4<bool>(true, false, false, false), Struct_1(-15612i), vec2<f32>(340f, -1490f)), Struct_3(vec4<bool>(false, false, true, true), Struct_1(-14997i), vec2<f32>(543f, 643f)), Struct_3(vec4<bool>(true, false, true, false), Struct_1(i32(-2147483648)), vec2<f32>(-761f, -1177f)), Struct_3(vec4<bool>(false, false, false, false), Struct_1(14399i), vec2<f32>(530f, -944f)), Struct_3(vec4<bool>(true, false, true, false), Struct_1(28148i), vec2<f32>(-229f, 508f)), Struct_3(vec4<bool>(true, false, false, true), Struct_1(-3084i), vec2<f32>(-116f, 671f)), Struct_3(vec4<bool>(false, true, false, true), Struct_1(2147483647i), vec2<f32>(1266f, -1208f)), Struct_3(vec4<bool>(true, false, true, false), Struct_1(9179i), vec2<f32>(1134f, -2079f)), Struct_3(vec4<bool>(true, true, true, true), Struct_1(45476i), vec2<f32>(-1000f, 353f)), Struct_3(vec4<bool>(true, true, false, true), Struct_1(-8249i), vec2<f32>(-1122f, 1823f)), Struct_3(vec4<bool>(true, false, true, false), Struct_1(i32(-2147483648)), vec2<f32>(-596f, 1480f)), Struct_3(vec4<bool>(false, true, true, false), Struct_1(1i), vec2<f32>(-2173f, 730f)), Struct_3(vec4<bool>(false, false, true, true), Struct_1(-13949i), vec2<f32>(-1544f, 2074f)), Struct_3(vec4<bool>(true, false, false, true), Struct_1(38781i), vec2<f32>(658f, -1414f)), Struct_3(vec4<bool>(true, false, true, false), Struct_1(0i), vec2<f32>(207f, -461f)), Struct_3(vec4<bool>(true, false, true, false), Struct_1(18098i), vec2<f32>(1032f, -423f)), Struct_3(vec4<bool>(true, true, false, true), Struct_1(0i), vec2<f32>(1357f, 517f)), Struct_3(vec4<bool>(true, false, false, false), Struct_1(2147483647i), vec2<f32>(-1176f, 2402f)), Struct_3(vec4<bool>(true, false, true, true), Struct_1(-34930i), vec2<f32>(-632f, 395f)));

var<private> global1: Struct_2;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> u32 {
    var var_0 = Struct_2(Struct_1(-2373i), global1.b, max(~vec2<u32>(u_input.a, countOneBits(u_input.a)), ~(global1.b.xx << (global1.b.yx % vec2<u32>(32u))) >> (_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 73263u), global1.c), vec2<u32>(67030u, 4294967295u)) % vec2<u32>(32u))));
    var var_1 = global0[_wgslsmith_index_u32(~u_input.a, 24u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1591f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.c.x)) + _wgslsmith_f_op_f32(var_1.c.x - var_1.c.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.c.x, 1000f, var_1.c.x), vec3<f32>(-401f, -1399f, 300f)))))));
    let var_3 = Struct_3(select(!vec4<bool>(true, var_1.a.x, var_1.a.x, all(var_1.a)), select(select(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, false), vec4<bool>(var_1.a.x, false, var_1.a.x, var_1.a.x), false), select(select(vec4<bool>(var_1.a.x, false, false, var_1.a.x), var_1.a, vec4<bool>(true, var_1.a.x, var_1.a.x, true)), vec4<bool>(var_1.a.x, var_1.a.x, false, var_1.a.x), !vec4<bool>(true, var_1.a.x, var_1.a.x, var_1.a.x)), true), var_1.a.x), global1.a, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_2.x)))), _wgslsmith_f_op_f32(161f - _wgslsmith_f_op_f32(round(var_2.x)))))));
    var_1 = Struct_3(var_1.a, Struct_1(var_0.a.a), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.x, _wgslsmith_f_op_f32(-715f + -828f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-250f, var_1.c.x) + var_2.yx))), _wgslsmith_f_op_vec2_f32(-var_1.c)));
    return min(u_input.a, var_0.b.x);
}

fn func_2() -> Struct_1 {
    global1 = Struct_2(Struct_1(_wgslsmith_mod_i32(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 0i), vec2<i32>(2147483647i, global1.a.a))), 0i)), ((global1.b & ~global1.b) & global1.b) ^ (~_wgslsmith_add_vec3_u32(global1.b, vec3<u32>(0u, global1.b.x, 26200u)) | ~vec3<u32>(u_input.a, global1.c.x, 61826u)), ~vec2<u32>((4294967295u & global1.c.x) << (~57440u % 32u), 0u));
    var var_0 = -select(reverseBits(select(~vec2<i32>(global1.a.a, 1i), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, global1.a.a), vec2<i32>(-1i, 0i)), select(vec2<bool>(false, false), vec2<bool>(false, false), false))), abs(vec2<i32>(_wgslsmith_add_i32(23298i, 64928i), ~global1.a.a)), vec2<bool>(false, false));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.c.x, _wgslsmith_clamp_u32(global1.c.x, global1.b.x, global1.c.x) | ~global1.b.x, 38717u) ^ global1.b, _wgslsmith_add_vec3_u32(~vec3<u32>(_wgslsmith_div_u32(global1.c.x, 11103u), ~29125u, 4294967295u), ~global1.b)), 24u)];
    global1 = Struct_2(var_1.b, vec3<u32>(1u, func_3(), min(_wgslsmith_add_u32(firstLeadingBit(u_input.a), global1.c.x), firstLeadingBit(global1.b.x))), ~(_wgslsmith_add_vec2_u32(global1.c >> (global1.c % vec2<u32>(32u)), ~global1.c) ^ min(global1.b.zy, vec2<u32>(1u, 5699u))));
    var var_2 = Struct_3(select(vec4<bool>(~global1.a.a > reverseBits(-14822i), var_1.a.x | true, select(var_1.a.x, true, u_input.a < global1.c.x), any(var_1.a.wy)), select(vec4<bool>(true, !var_1.a.x, false, !var_1.a.x), vec4<bool>(select(true, var_1.a.x, var_1.a.x), true, var_1.a.x, all(vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x))), vec4<bool>(any(vec3<bool>(var_1.a.x, true, true)), any(vec4<bool>(var_1.a.x, false, true, var_1.a.x)), var_1.a.x & var_1.a.x, any(var_1.a))), var_1.a), Struct_1(global1.a.a), var_1.c);
    return Struct_1(_wgslsmith_mod_i32(~(-2767i) | abs(global1.a.a), i32(-1i) * -70270i));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1) -> vec2<f32> {
    global0 = array<Struct_3, 24>();
    let var_0 = Struct_2(func_2(), global1.b, ~firstLeadingBit(countOneBits(~global1.b.xx)));
    let var_1 = global0[_wgslsmith_index_u32(11873u, 24u)];
    let var_2 = ~vec4<u32>(0u, ~global1.b.x, 0u, 1u);
    var var_3 = func_2();
    return _wgslsmith_f_op_vec2_f32(-var_1.c);
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec2<f32>, arg_3: f32) -> Struct_3 {
    global1 = Struct_2(func_2(), global1.b, ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a) | vec2<u32>(global1.b.x, 76425u), _wgslsmith_mod_vec2_u32(global1.b.xy, vec2<u32>(global1.c.x, global1.c.x))));
    let var_0 = -1i;
    var var_1 = Struct_3(vec4<bool>(false, _wgslsmith_f_op_vec2_f32(func_1(max(global1.c, vec2<u32>(global1.c.x, 4294967295u)), global1.a)).x < arg_0, true, all(vec2<bool>(true, true))), func_2(), vec2<f32>(-867f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(round(arg_3))) * _wgslsmith_f_op_f32(f32(-1f) * -154f))));
    var_1 = Struct_3(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x), Struct_1(1i), vec2<f32>(arg_1, _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(arg_1 * arg_0))));
    var var_2 = -vec2<i32>(-var_1.b.a, global1.a.a);
    return global0[_wgslsmith_index_u32(~0u, 24u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1034f))) - 1440f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(sign(-1478f))), -1953f, all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1096f, -823f), vec2<f32>(-1268f, -2304f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-452f, 1000f), vec2<f32>(-1000f, -1665f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(vec2<u32>(global1.c.x, global1.c.x), global1.a)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(398f, 1000f), vec2<f32>(1179f, -1563f), true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -651f))))));
    global0 = array<Struct_3, 24>();
    let var_1 = ~_wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.a, 5073u) ^ global1.c, global1.b.zy | vec2<u32>(4708u, u_input.a), true), global1.b.zy & global1.b.xx) << (global1.b.x % 32u);
    global0 = array<Struct_3, 24>();
    global1 = Struct_2(var_0.b, global1.b, firstLeadingBit(_wgslsmith_sub_vec2_u32(global1.b.xz, global1.b.xx)));
    global1 = Struct_2(var_0.b, abs(reverseBits(~(~global1.b))), firstLeadingBit(global1.c));
    let var_2 = Struct_2(Struct_1(global1.a.a), global1.b, abs(vec2<u32>(firstTrailingBit(max(4294967295u, 118162u)), u_input.a)));
    global1 = Struct_2(Struct_1(firstLeadingBit(_wgslsmith_mult_i32(-global1.a.a, global1.a.a))), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(~u_input.a, 1u, 88u), vec3<u32>(min(1u, 117060u), min(var_2.b.x, var_2.c.x), 15766u)), countOneBits(var_2.b)), var_2.b.xx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(412f))), _wgslsmith_f_op_f32(-117f * var_0.c.x), 787f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1031f, 307f, 501f, var_0.c.x) - vec4<f32>(var_0.c.x, var_0.c.x, 1080f, var_0.c.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.c.x, -396f, var_0.c.x, 1000f))))))));
}

