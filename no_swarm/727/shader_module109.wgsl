struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: vec4<bool>,
    d: Struct_2,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec3<f32>(1205f, 356f, -400f), -1074f, vec3<u32>(44328u, 5182u, 0u)), Struct_1(vec3<f32>(-640f, 629f, -1000f), 416f, vec3<u32>(4294967295u, 94847u, 60347u)), Struct_1(vec3<f32>(-837f, 1673f, -1000f), 1774f, vec3<u32>(118903u, 6321u, 1u)), Struct_1(vec3<f32>(751f, -465f, 1173f), 715f, vec3<u32>(1u, 1u, 4770u)), Struct_1(vec3<f32>(-348f, 1188f, 830f), -300f, vec3<u32>(25434u, 19444u, 97102u)), Struct_1(vec3<f32>(-1452f, -410f, -847f), -465f, vec3<u32>(5608u, 15313u, 12798u)), Struct_1(vec3<f32>(-130f, 567f, 1926f), 938f, vec3<u32>(37577u, 48199u, 6981u)), Struct_1(vec3<f32>(-142f, -1000f, -504f), 1600f, vec3<u32>(17045u, 0u, 0u)), Struct_1(vec3<f32>(1358f, -898f, 284f), 472f, vec3<u32>(27350u, 0u, 12681u)), Struct_1(vec3<f32>(1484f, 1015f, -1361f), 2211f, vec3<u32>(0u, 4294967295u, 10703u)), Struct_1(vec3<f32>(-1211f, 580f, -1647f), 988f, vec3<u32>(4294967295u, 38319u, 44862u)), Struct_1(vec3<f32>(561f, -372f, -1000f), 1835f, vec3<u32>(4294967295u, 75946u, 36962u)), Struct_1(vec3<f32>(-950f, 2477f, -1523f), 806f, vec3<u32>(47381u, 4294967295u, 1u)));

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, true);

var<private> global2: Struct_2 = Struct_2(52124u, Struct_1(vec3<f32>(1000f, 558f, 837f), 1722f, vec3<u32>(46096u, 0u, 4333u)), 247f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: i32) -> Struct_3 {
    var var_0 = Struct_3(global2.b.c.x, vec3<i32>(-1i, ~(-1i << (global2.b.c.x % 32u)) << (~4294967295u % 32u), ~(i32(-1i) * -45221i)), !(!(!select(vec4<bool>(true, global1.x, global1.x, true), vec4<bool>(global1.x, global1.x, false, true), false))), Struct_2(global2.b.c.x | (global2.a | _wgslsmith_mult_u32(global2.a, 0u)), Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global2.b.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global2.c, global2.b.b)))), _wgslsmith_f_op_f32(-652f + -1378f), ~abs(global2.b.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - global2.b.b))), vec4<bool>(global1.x, all(vec4<bool>(true, global2.b.b <= global2.c, global1.x, arg_0 == 2147483647i)), true, any(select(vec3<bool>(false, global1.x, true), vec3<bool>(global1.x, global1.x, global1.x), true))));
    let var_1 = 141f;
    let var_2 = var_0.b.x;
    let var_3 = var_0.d;
    var var_4 = var_0.d.b;
    return Struct_3(~firstLeadingBit(0u), ~(-vec3<i32>(1i, -23044i, 0i)), select(!vec4<bool>(all(var_0.c), true, false, false), select(var_0.e, select(vec4<bool>(false, false, false, true), !vec4<bool>(true, global1.x, var_0.c.x, var_0.c.x), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(var_0.c.x, var_0.e.x, true, global1.x))), vec4<bool>(true, any(var_0.c), var_0.c.x, global1.x)), true), var_0.d, !vec4<bool>(var_1 > _wgslsmith_f_op_f32(round(250f)), var_0.c.x && false, true, true & (var_4.c.x > 0u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32) -> vec4<u32> {
    let var_0 = 1i;
    let var_1 = global0[_wgslsmith_index_u32(76367u, 13u)];
    global2 = Struct_2(~1u, func_2(var_0).d.b, global2.b.a.x);
    var var_2 = -893f;
    global2 = Struct_2(min(~abs(var_1.c.x << (24402u % 32u)), ~1u), func_2(~_wgslsmith_sub_i32(~arg_1, 1i)).d.b, 1152f);
    return countOneBits(min(_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(global2.b.c.x, global2.a, 53579u, 1u)), ~vec4<u32>(var_1.c.x, 1u, 1u, global2.a)), ~vec4<u32>(var_1.c.x, 10746u, 0u, var_1.c.x) ^ vec4<u32>(13829u, var_1.c.x, 1u, var_1.c.x))) ^ vec4<u32>(1u, 4294967295u, select(abs(var_1.c.x) & var_1.c.x, reverseBits(83961u), any(vec3<bool>(true, global1.x, global1.x))), max(firstLeadingBit(~global2.b.c.x), 1u));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: Struct_3) -> vec2<bool> {
    var var_0 = !vec4<bool>(!arg_2.c.x, abs(~(-2147483647i)) > reverseBits(_wgslsmith_sub_i32(arg_2.b.x, -2147483647i)), global1.x, true);
    var var_1 = func_2((_wgslsmith_div_i32(max(arg_2.b.x, 0i), -u_input.a.x) & -(~1i)) & _wgslsmith_sub_i32(arg_2.b.x, _wgslsmith_mod_i32(~(-1i), -2147483647i ^ arg_2.b.x)));
    var var_2 = func_3(select(vec2<bool>(!(!arg_1), !select(arg_2.c.x, arg_2.e.x, global1.x)), vec2<bool>(global1.x, all(arg_2.c.zxw)), arg_2.e.xx), firstTrailingBit(abs(-21336i >> (_wgslsmith_sub_u32(0u, arg_2.a) % 32u))));
    var_2 = ~_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.b.c.x, abs(58108u) | var_1.a, 5237u, ~arg_0.a), reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(34059u, 81052u, var_1.d.b.c.x, 107743u), vec4<u32>(var_2.x, arg_2.a, 37866u, arg_0.a)) << (~vec4<u32>(arg_2.d.b.c.x, arg_2.d.a, var_1.a, 4294967295u) % vec4<u32>(32u))));
    var_0 = !func_2(45714i).e;
    return vec2<bool>(func_2((_wgslsmith_div_i32(-2147483647i, var_1.b.x) | _wgslsmith_dot_vec3_i32(var_1.b, arg_2.b)) << (~44960u % 32u)).e.x, var_2.x > var_1.a);
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: u32, arg_3: f32) -> f32 {
    let var_0 = 1i;
    var var_1 = Struct_2(global2.b.c.x, Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.b.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(764f, -833f, global2.c) - _wgslsmith_f_op_vec3_f32(-global2.b.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_3), -618f))), countOneBits(~vec3<u32>(4294967295u, global2.a, global2.a))), global2.b.a.x);
    let var_2 = all(select(select(arg_0, func_2(2147483647i).c.yz, true), func_1(Struct_2(28180u, func_2(1i).d.b, _wgslsmith_f_op_f32(-global2.b.b)), any(vec2<bool>(arg_1, false)) || arg_1, func_2(-10612i)), global1.xw));
    var_1 = Struct_2(max(arg_2, _wgslsmith_dot_vec2_u32(global2.b.c.xx, countOneBits(global2.b.c.yy))) << (0u % 32u), global2.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-855f + arg_3), 533f));
    var_1 = func_2(~min(-_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_0), u_input.a), i32(-1i) * -u_input.a.x)).d;
    return _wgslsmith_f_op_f32(var_1.b.b * -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global2.b.a, global2.c, global2.b.c);
    var var_1 = var_0.a;
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_4(!select(select(vec2<bool>(global1.x, false), global1.xy, true), func_1(Struct_2(4294967295u, global2.b, global2.b.b), global1.x, Struct_3(17458u, vec3<i32>(u_input.a.x, -1i, u_input.a.x), vec4<bool>(global1.x, global1.x, global1.x, true), Struct_2(global2.b.c.x, global0[_wgslsmith_index_u32(36610u, 13u)], -1000f), vec4<bool>(global1.x, global1.x, global1.x, true))), all(vec3<bool>(false, global1.x, global1.x))), true, 61163u, func_2(u_input.a.x ^ _wgslsmith_div_i32(-28732i, 2921i)).d.b.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -966f)));
    global2 = Struct_2(var_0.c.x, func_2(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, -8745i, 19252i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.a.x)) >> (~vec4<u32>(var_0.c.x, global2.a, var_0.c.x, global2.a) % vec4<u32>(32u)), countOneBits(vec4<i32>(-1i, 14832i, u_input.a.x, 39582i)))).d.b, var_1.x);
    let var_3 = Struct_2(max(~var_0.c.x, 1152u), func_2(select(u_input.a.x, -_wgslsmith_div_i32(u_input.a.x, 35015i), global1.x)).d.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(var_0.b + -1010f)))));
    let x = u_input.a;
    s_output = StorageBuffer(global2.b.c, _wgslsmith_f_op_f32(step(498f, var_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-525f)))))));
}

