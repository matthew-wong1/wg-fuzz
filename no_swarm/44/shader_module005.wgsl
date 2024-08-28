struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 20> = array<vec2<u32>, 20>(vec2<u32>(0u, 4756u), vec2<u32>(4294967295u, 41963u), vec2<u32>(57351u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(95512u, 1u), vec2<u32>(0u, 1u), vec2<u32>(48347u, 1u), vec2<u32>(1u, 30135u), vec2<u32>(0u, 13502u), vec2<u32>(38879u, 0u), vec2<u32>(1383u, 4294967295u), vec2<u32>(72656u, 4294967295u), vec2<u32>(52559u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(69154u, 0u), vec2<u32>(7115u, 133903u), vec2<u32>(1u, 1u), vec2<u32>(52993u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(75692u, 16958u));

var<private> global1: array<i32, 11> = array<i32, 11>(2147483647i, 1i, -1i, 2147483647i, 1053i, 25777i, 2938i, 21080i, 57770i, 1i, 6614i);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> Struct_2 {
    global0 = array<vec2<u32>, 20>();
    let var_0 = vec3<i32>((0i << (1u % 32u)) | ~_wgslsmith_dot_vec2_i32(-u_input.d.xz, u_input.d.xy), 52850i, _wgslsmith_mult_i32(24044i, global1[_wgslsmith_index_u32(reverseBits(~arg_0.a.x) ^ u_input.a, 11u)]));
    global0 = array<vec2<u32>, 20>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1329f, -1985f)))))))), any(!select(!vec2<bool>(false, arg_1), !vec2<bool>(arg_1, false), !vec2<bool>(true, arg_1))));
    let var_2 = countOneBits(~_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_0.a.x, arg_0.a.x, 4294967295u, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), u_input.b)));
    return arg_0;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool) -> Struct_2 {
    global0 = array<vec2<u32>, 20>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-377f, 1483f) - vec2<f32>(347f, 154f)))))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(abs(147f)), -1858f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1102f, -1000f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1605f, 939f) * vec2<f32>(-1406f, -1410f)))))), arg_2);
    let var_1 = u_input.b;
    global1 = array<i32, 11>();
    let var_2 = Struct_3(func_2(func_2(Struct_2(firstTrailingBit(vec2<u32>(u_input.b.x, arg_1.a.x))), -589f > _wgslsmith_f_op_f32(step(-594f, var_0.a.x))), true), !(!select(select(vec4<bool>(var_0.b, var_0.b, var_0.b, true), vec4<bool>(var_0.b, false, arg_2, false), false), select(vec4<bool>(false, false, true, arg_2), vec4<bool>(false, false, arg_2, true), true), var_0.b && true)));
    return Struct_2(~(~var_2.a.a));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32, arg_3: Struct_2) -> Struct_3 {
    let var_0 = u_input.b.xz;
    var var_1 = func_3(arg_3, func_2(arg_0, true), true);
    let var_2 = Struct_3(Struct_2(~countOneBits(reverseBits(vec2<u32>(var_0.x, 4294967295u)))), !select(select(!vec4<bool>(arg_1.b, true, true, true), select(vec4<bool>(arg_1.b, arg_1.b, false, true), vec4<bool>(true, arg_1.b, true, false), false), !arg_1.b), vec4<bool>(arg_1.b, false, arg_1.b, !arg_1.b), !all(vec2<bool>(arg_1.b, false))));
    let var_3 = arg_0;
    let var_4 = var_1.a.x;
    return Struct_3(func_2(func_2(arg_3, _wgslsmith_f_op_f32(-arg_1.a.x) == _wgslsmith_f_op_f32(arg_1.a.x + 1641f)), var_2.b.x), select(vec4<bool>(!(!var_2.b.x), true, true, all(!vec3<bool>(false, arg_1.b, true))), var_2.b, !vec4<bool>(select(true, arg_1.b, true), true, arg_1.b | false, true)));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    var var_0 = u_input.b;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(185f - -1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -353f), -1248f)))), arg_0.b.x);
    var var_2 = 1935i;
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.a.x + var_1.a.x), var_1.a.x)), !func_1(arg_0.a, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, -783f) + vec2<f32>(var_1.a.x, 1750f)), arg_0.b.x), global1[_wgslsmith_index_u32(u_input.a << ((arg_0.a.a.x >> (41828u % 32u)) % 32u), 11u)], func_2(Struct_2(vec2<u32>(7528u, 26453u)), 800f >= var_1.a.x)).b.x);
    global1 = array<i32, 11>();
    return Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_1.a))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.a.x, 633f))), _wgslsmith_div_vec2_f32(vec2<f32>(var_1.a.x, var_1.a.x), var_1.a)))), vec2<f32>(_wgslsmith_f_op_f32(trunc(1350f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x * var_1.a.x))), select(-2147483647i > _wgslsmith_clamp_i32(50959i, 21720i, global1[_wgslsmith_index_u32(94319u, 11u)]), !(448f != var_1.a.x), true))), func_1(arg_0.a, Struct_1(var_1.a, !(true && arg_0.b.x)), 28954i, Struct_2(global0[_wgslsmith_index_u32(~min(73240u, u_input.a), 20u)])).b.x);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: bool) -> Struct_3 {
    global1 = array<i32, 11>();
    var var_0 = func_4(func_1(Struct_2(vec2<u32>(0u, u_input.a)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.a.x, arg_2.a.x)))), false & arg_2.b), ~u_input.d.x, func_1(Struct_2(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, 14432u), u_input.b.yz)), arg_0, ~firstLeadingBit(-83945i), func_2(func_3(Struct_2(global0[_wgslsmith_index_u32(u_input.b.x, 20u)]), Struct_2(vec2<u32>(u_input.b.x, 24690u)), false), all(vec3<bool>(true, arg_3, false)))).a)).a.x;
    let var_1 = Struct_3(Struct_2(~select(u_input.b.zx, vec2<u32>(u_input.a, u_input.b.x), !vec2<bool>(arg_2.b, true))), !(!vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 11u)] > -2147483647i, all(vec4<bool>(false, false, arg_3, arg_2.b)), false)));
    let var_2 = func_2(var_1.a, var_1.a.a.x >= reverseBits(u_input.b.x & ~1u));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(arg_0.a * arg_2.a), arg_3);
    return Struct_3(Struct_2(var_2.a), !func_1(func_2(var_2, true), func_4(func_1(Struct_2(vec2<u32>(1u, var_2.a.x)), arg_0, -1i, var_1.a)), abs(-19373i << (u_input.a % 32u)), func_3(Struct_2(u_input.b.xy), Struct_2(vec2<u32>(1u, 5587u)), arg_0.b)).b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 20>();
    let var_0 = Struct_2(~u_input.b.xx);
    var var_1 = select(43124u, u_input.b.x ^ (u_input.a << (u_input.b.x % 32u)), any(!select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, false), true), all(vec3<bool>(false, false, true)))));
    let var_2 = -643f;
    var var_3 = func_5(func_4(func_1(Struct_2(vec2<u32>(var_0.a.x, var_0.a.x)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, var_2)), true), -99797i, var_0)), reverseBits(vec3<i32>(_wgslsmith_div_i32(1i, u_input.c), abs(0i), 2147483647i)) >> (_wgslsmith_sub_vec3_u32(max(u_input.b.yyz, vec3<u32>(21384u, u_input.a, 4294967295u)) << (~u_input.b.xww % vec3<u32>(32u)), vec3<u32>(_wgslsmith_div_u32(0u, var_0.a.x), u_input.a, func_2(var_0, true).a.x)) % vec3<u32>(32u)), func_4(Struct_3(Struct_2(reverseBits(vec2<u32>(21778u, var_0.a.x))), vec4<bool>(true, true, true, true))), false);
    var_1 = abs(var_3.a.a.x);
    var var_4 = var_0;
    var_3 = func_1(Struct_2(~u_input.b.yz), Struct_1(vec2<f32>(var_2, _wgslsmith_f_op_f32(-var_2)), all(var_3.b) & true), -38766i, Struct_2(global0[_wgslsmith_index_u32(1u >> ((func_2(Struct_2(vec2<u32>(var_3.a.a.x, var_4.a.x)), false).a.x & var_0.a.x) % 32u), 20u)]));
    let x = u_input.a;
    s_output = StorageBuffer(~var_4.a, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_3(Struct_2(var_3.a.a), var_3.b)).a.x + -505f) + var_2), -302f, var_2, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-166f * var_2), func_4(Struct_3(Struct_2(vec2<u32>(5116u, var_3.a.a.x)), vec4<bool>(true, var_3.b.x, var_3.b.x, true))).a.x))));
}

