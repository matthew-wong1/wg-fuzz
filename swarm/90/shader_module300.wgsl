struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<f32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12>;

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(0i, -968f, -1347f, -1000f), Struct_1(-30731i, -1822f, -375f, 1226f), Struct_1(2147483647i, 1055f, -1657f, 760f), Struct_1(-13108i, -844f, 1114f, -2002f), Struct_1(i32(-2147483648), 1495f, 129f, 1021f), Struct_1(22471i, 620f, 775f, -110f), Struct_1(2147483647i, -144f, -542f, -964f), Struct_1(-1i, 201f, 1000f, 708f), Struct_1(-1i, -745f, 670f, 1154f), Struct_1(0i, 191f, 412f, 1000f), Struct_1(-19130i, -654f, -742f, 1465f), Struct_1(-1i, 915f, -937f, -131f), Struct_1(-1i, 1159f, 2240f, 1521f));

var<private> global2: vec2<u32>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: vec2<u32>) -> f32 {
    var var_0 = !(!(!select(!vec3<bool>(arg_2, false, true), vec3<bool>(false, arg_2, false), vec3<bool>(false, false, arg_2))));
    var var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(1i, i32(-1i) * -1i), u_input.a);
    global2 = min(vec2<u32>(global2.x, global2.x), vec2<u32>(~1u, u_input.c));
    let var_2 = var_1.x;
    var var_3 = _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.c, global2.x, u_input.c, global2.x)), ~_wgslsmith_add_vec4_u32(vec4<u32>(arg_3.x, ~0u, firstLeadingBit(35164u), 1u << (u_input.c % 32u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_3.x, 1u, 10137u, 1u), vec4<u32>(1u, 52753u, global2.x, 4294967295u))));
    return arg_0.d;
}

fn func_2(arg_0: Struct_2) -> bool {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(58201u, ~_wgslsmith_dot_vec2_u32(firstLeadingBit(select(vec2<u32>(arg_0.b.x, u_input.c), arg_0.b.xz, false)), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 4294967295u), arg_0.c, ~arg_0.c)), select(u_input.c, u_input.c, true & (u_input.d.x != -20565i))), 13u)];
    let var_1 = arg_0;
    var var_2 = _wgslsmith_add_vec2_u32(~var_1.c, _wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, 0u)), var_1.b.xx));
    let var_3 = _wgslsmith_f_op_f32(ceil(-622f));
    let var_4 = !select(vec2<bool>(false, any(vec4<bool>(true, true, true, true))), select(vec2<bool>(all(vec4<bool>(false, false, false, true)), false), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)), (var_0.a ^ global0[_wgslsmith_index_u32(1u, 12u)]) != _wgslsmith_mod_i32(arg_0.a, u_input.b)), false);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(var_1.b.x, 13u)], var_0.a | 1i, true, ~vec2<u32>(1491u, 4294967295u))) + -1526f)) > 1431f;
}

fn func_1(arg_0: Struct_2) -> f32 {
    var var_0 = -(~_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.e.a, -20322i, ~0i, _wgslsmith_mod_i32(arg_0.e.a, arg_0.a)), _wgslsmith_add_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(global2.x, 12u)], -4918i, u_input.a.x, -1i), vec4<i32>(-14425i, 1i, -40646i, u_input.d.x)) | vec4<i32>(arg_0.a, arg_0.e.a, u_input.a.x, 2147483647i)));
    var var_1 = _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(-1i) * -vec4<i32>(u_input.d.x, 22092i, arg_0.e.a, -33566i)), ~firstLeadingBit(vec4<i32>(u_input.d.x, 0i, global0[_wgslsmith_index_u32(global2.x, 12u)], global0[_wgslsmith_index_u32(u_input.c, 12u)]))) | -select(reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(0u, 12u)], 323i, u_input.d.x, arg_0.e.a), vec4<i32>(global0[_wgslsmith_index_u32(arg_0.c.x, 12u)], -14561i, global0[_wgslsmith_index_u32(u_input.c, 12u)], 1i))), ~vec4<i32>(arg_0.a, 30161i, u_input.a.x, u_input.a.x), !func_2(Struct_2(1i, arg_0.b, vec2<u32>(global2.x, 13918u), arg_0.d, Struct_1(global0[_wgslsmith_index_u32(29406u, 12u)], arg_0.e.b, arg_0.e.d, arg_0.e.d))));
    var_1 = vec4<i32>(-1i, 21109i, -1i, _wgslsmith_sub_i32(-16369i, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(global2.x, 49184u), 34892u & u_input.c, 93444u), select(abs(u_input.c), 116498u, select(false, true, false))), 12u)]));
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_0.e.c, arg_0.d.x), arg_0.d.x, arg_0.e.b)))));
    global2 = abs(vec2<u32>(max(1u, 1u & arg_0.b.x), 1u));
    return _wgslsmith_f_op_f32(func_3(Struct_1(arg_0.a, _wgslsmith_f_op_f32(1549f * _wgslsmith_f_op_f32(1126f + _wgslsmith_div_f32(1418f, var_2.x))), arg_0.d.x, _wgslsmith_f_op_f32(-arg_0.e.c)), var_1.x, !all(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false)), arg_0.b.yz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.x;
    var var_1 = vec3<f32>(641f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_2(~global0[_wgslsmith_index_u32(4294967295u, 12u)], vec3<u32>(global2.x, 65844u, u_input.c), ~vec2<u32>(global2.x, u_input.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1578f, -134f) - vec2<f32>(-195f, 548f)), global1[_wgslsmith_index_u32(7436u, 13u)]))) * _wgslsmith_f_op_f32(round(-1506f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(131f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2423f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(Struct_2(1i, vec3<u32>(u_input.c, 60301u, global2.x), vec2<u32>(1u, 4294967295u), var_1.xz, Struct_1(global0[_wgslsmith_index_u32(u_input.c, 12u)], var_1.x, var_1.x, var_1.x))))))), var_1.x);
    let var_3 = select(vec4<bool>(true, ~abs(u_input.c) > ~global2.x, ((global2.x >> (44556u % 32u)) ^ (global2.x >> (1u % 32u))) != _wgslsmith_sub_u32(~global2.x, 1u), true), select(select(vec4<bool>(all(vec4<bool>(true, true, false, true)), true, false, true), vec4<bool>(true, true, true, true), !(var_2.x >= -326f)), vec4<bool>(true, any(vec2<bool>(true, false)), false, false), select(true, true, false)), !select(vec4<bool>(func_2(Struct_2(global0[_wgslsmith_index_u32(33002u, 12u)], vec3<u32>(u_input.c, u_input.c, u_input.c), vec2<u32>(1u, 0u), var_1.xx, Struct_1(12997i, var_1.x, var_1.x, -753f))), true, true, all(vec4<bool>(false, false, false, false))), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), true), u_input.d.x < u_input.d.x), vec4<bool>(true, true, true, true)));
    var var_4 = _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, 30738i, ~1i, u_input.b), -countOneBits(-(~vec4<i32>(-1i, global0[_wgslsmith_index_u32(4294967295u, 12u)], 1i, u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(35090u, 17202u, 1u, 1u)) >> (_wgslsmith_sub_vec4_u32(~abs(vec4<u32>(4294967295u, global2.x, u_input.c, 1u)), firstTrailingBit(~vec4<u32>(u_input.c, u_input.c, 74643u, u_input.c))) % vec4<u32>(32u)), var_2.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2616f, var_2.x, var_2.x))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -385f, var_2.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, -1000f) + vec3<f32>(-1026f, var_1.x, -363f))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1388f, 125f), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(exp2(var_2.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x) - vec3<f32>(var_1.x, var_1.x, 395f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1665f, _wgslsmith_f_op_f32(min(var_2.x, var_2.x))), var_1.yx))), ~(_wgslsmith_add_u32(~global2.x, 14824u) >> (1u % 32u)));
}

