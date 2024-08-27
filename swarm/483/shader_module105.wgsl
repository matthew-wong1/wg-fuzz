struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<bool>(true, true), vec2<i32>(-12728i, 28407i), vec4<u32>(44992u, 7897u, 6657u, 67821u), Struct_1(vec3<f32>(780f, -1397f, 1035f), true, false, vec2<bool>(false, false)));

var<private> global1: bool = true;

var<private> global2: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(406f, -657f, 545f), vec3<f32>(-228f, -644f, -597f), vec3<f32>(-630f, -1170f, -1282f), vec3<f32>(289f, 1074f, 336f), vec3<f32>(691f, 1252f, -916f), vec3<f32>(-1538f, -1889f, -249f), vec3<f32>(-1671f, 289f, -414f), vec3<f32>(529f, 3238f, 680f));

var<private> global3: array<vec4<bool>, 22>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: bool) -> bool {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.d.a.x, _wgslsmith_f_op_f32(-global0.d.a.x), true | arg_1))))));
    global2 = array<vec3<f32>, 8>();
    global3 = array<vec4<bool>, 22>();
    global2 = array<vec3<f32>, 8>();
    var var_1 = arg_0;
    return any(!vec2<bool>(true, !all(vec4<bool>(true, arg_1, global0.a.x, arg_1))));
}

fn func_2(arg_0: vec4<u32>) -> Struct_2 {
    global3 = array<vec4<bool>, 22>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(global0.d.a)), true, true, select(select(global0.a, vec2<bool>(true, true), func_3(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0.c.x, arg_0.x, u_input.c.x), 8u)], global0.d.d.x)), vec2<bool>(firstTrailingBit(10649u) == abs(global0.c.x), false), global0.d.d.x));
    var var_1 = var_0;
    let var_2 = !(!global3[_wgslsmith_index_u32(global0.c.x, 22u)]);
    let var_3 = var_0;
    return Struct_2(var_0.d, u_input.d.zw, max(arg_0, ~(u_input.c ^ arg_0)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -508f), _wgslsmith_f_op_f32(-var_0.a.x), 305f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1186f, -803f, -2295f), vec3<f32>(var_3.a.x, -1000f, -227f))))), func_3(global2[_wgslsmith_index_u32(min(~4294967295u, 1u), 8u)], !(!var_2.x)), true, select(vec2<bool>(true, true), var_0.d, false)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32) -> Struct_1 {
    var var_0 = select(vec3<bool>(false, true, any(!select(arg_0.a, global0.d.d, vec2<bool>(false, global0.d.b)))), select(!vec3<bool>(true, false, arg_0.d.d.x), select(vec3<bool>(true, arg_0.d.c | arg_0.a.x, !global0.a.x), select(vec3<bool>(true, arg_1.a.x, true), select(vec3<bool>(arg_1.a.x, arg_1.d.d.x, global0.d.c), vec3<bool>(false, false, false), true), true), false), !func_3(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1463f, 1000f, arg_0.d.a.x))), true)), true);
    return arg_0.d;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = 0i;
    var var_1 = -1i;
    var var_2 = global0.d;
    var_1 = -_wgslsmith_dot_vec4_i32(-firstLeadingBit(firstLeadingBit(u_input.d)), -_wgslsmith_div_vec4_i32(u_input.d, vec4<i32>(u_input.d.x, -56288i, u_input.d.x, 0i)) >> (vec4<u32>(global0.c.x, 4294967295u, global0.c.x, global0.c.x) % vec4<u32>(32u)));
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1111f))))), _wgslsmith_div_f32(var_2.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1339f, -549f)), _wgslsmith_f_op_f32(2015f - arg_2.x)))))));
    return global0.d;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>) -> StorageBuffer {
    let var_0 = Struct_2(!global0.d.d, ~select(-global0.b ^ countOneBits(vec2<i32>(63796i, u_input.a)), abs(global0.b >> (vec2<u32>(global0.c.x, 21758u) % vec2<u32>(32u))), vec2<bool>(false, func_4(Struct_2(arg_0.d, vec2<i32>(-2147483647i, -1i), u_input.c, Struct_1(global0.d.a, false, false, vec2<bool>(false, false))), Struct_2(arg_0.d, vec2<i32>(global0.b.x, 15287i), u_input.c, Struct_1(vec3<f32>(-556f, global0.d.a.x, arg_1.a.x), true, true, vec2<bool>(arg_0.d.x, true))), arg_2.x).c)), u_input.c, global0.d);
    var var_1 = arg_1.b;
    var var_2 = func_5(func_2(vec4<u32>(countOneBits(reverseBits(u_input.c.x)), 4294967295u, u_input.e.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, arg_2.x, 4294967295u), vec4<u32>(u_input.c.x, u_input.e.x, u_input.c.x, u_input.e.x)) & ~var_0.c.x)).d, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.d.a.x, arg_0.a.x, arg_1.a.x))))), false, all(!select(vec3<bool>(true, arg_0.b, false), vec3<bool>(var_0.a.x, true, global0.d.c), vec3<bool>(false, true, false))), global0.d.d), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(func_4(Struct_2(vec2<bool>(false, true), vec2<i32>(-2147483647i, global0.b.x), global0.c, Struct_1(var_0.d.a, false, false, vec2<bool>(arg_1.c, global0.a.x))), Struct_2(var_0.d.d, vec2<i32>(-2147483647i, global0.b.x), var_0.c, Struct_1(vec3<f32>(global0.d.a.x, var_0.d.a.x, arg_1.a.x), true, var_0.d.c, vec2<bool>(true, arg_0.d.x))), 59137u).a.x)), 116f) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.a.zy - arg_0.a.xy), func_2(vec4<u32>(u_input.e.x, arg_2.x, u_input.b, 1u)).d.a.zx), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(848f, 2235f)))))));
    var var_3 = 0u;
    let var_4 = Struct_1(vec3<f32>(func_5(global0.d, Struct_1(vec3<f32>(568f, -270f, 237f), !var_2.b, false, !vec2<bool>(false, arg_0.d.x)), vec2<f32>(-153f, -716f)).a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.d.a.x)))), 1000f), true, all(!select(!global3[_wgslsmith_index_u32(u_input.b, 22u)], select(vec4<bool>(false, false, arg_0.d.x, false), global3[_wgslsmith_index_u32(0u, 22u)], vec4<bool>(arg_0.d.x, arg_0.b, arg_0.b, false)), global3[_wgslsmith_index_u32(~u_input.c.x, 22u)])), var_2.d);
    return StorageBuffer(-25652i, _wgslsmith_div_u32(~0u, 27453u), ~max(vec2<i32>(1i, firstLeadingBit(global0.b.x)), var_0.b >> (select(var_0.c.wz, arg_2, var_2.c) % vec2<u32>(32u))));
}

fn func_1() -> StorageBuffer {
    return func_6(func_5(func_4(func_2(u_input.c), Struct_2(global0.d.d, vec2<i32>(-4715i, 0i), u_input.c, func_2(u_input.c).d), 4294967295u), func_4(Struct_2(global0.d.d, ~u_input.d.ww, max(global0.c, u_input.c), func_2(vec4<u32>(1u, global0.c.x, global0.c.x, u_input.e.x)).d), func_2(~u_input.c), u_input.b), global0.d.a.zy), global0.d, max(global0.c.zy, global0.c.yw) >> (vec2<u32>(1u, _wgslsmith_mod_u32(1u, global0.c.x)) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<f32>, 8>();
    global1 = global0.a.x;
    let var_0 = Struct_2(global0.a, global0.b, ~(~(~global0.c)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global2[_wgslsmith_index_u32(62114u, 8u)])))), global0.d.a.x >= global0.d.a.x, false, vec2<bool>(global0.a.x, global0.a.x)));
    global2 = array<vec3<f32>, 8>();
    var var_1 = vec4<u32>(4294967295u, var_0.c.x, var_0.c.x, _wgslsmith_mod_u32(_wgslsmith_mod_u32(countOneBits(1u), 25700u), var_0.c.x));
    let var_2 = abs(var_0.c.x);
    let x = u_input.a;
    s_output = func_1();
}

