struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: f32,
    d: u32,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: i32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(Struct_1(false, 714f, -1i), vec3<i32>(61419i, -7896i, 1i), Struct_1(false, 367f, -24447i), vec3<bool>(true, false, true)), Struct_2(Struct_1(false, 1043f, i32(-2147483648)), vec3<i32>(13282i, 11449i, -23945i), Struct_1(true, 1311f, -12677i), vec3<bool>(false, false, false)), Struct_2(Struct_1(false, -1170f, 2147483647i), vec3<i32>(-1i, -42108i, 15644i), Struct_1(true, -1952f, -39027i), vec3<bool>(true, true, false)), Struct_2(Struct_1(false, -1105f, 1i), vec3<i32>(-10698i, -41735i, i32(-2147483648)), Struct_1(false, 1000f, 19981i), vec3<bool>(false, true, true)), Struct_2(Struct_1(true, -1116f, -12070i), vec3<i32>(2147483647i, 25374i, 37648i), Struct_1(false, 1641f, -35259i), vec3<bool>(true, true, false)), Struct_2(Struct_1(false, -865f, 79019i), vec3<i32>(6682i, -27074i, 1i), Struct_1(false, 913f, 1i), vec3<bool>(false, true, false)), Struct_2(Struct_1(true, 129f, 0i), vec3<i32>(i32(-2147483648), 0i, 4547i), Struct_1(false, 285f, 15120i), vec3<bool>(false, false, true)), Struct_2(Struct_1(false, -1065f, 0i), vec3<i32>(0i, 640i, i32(-2147483648)), Struct_1(true, 2433f, 2147483647i), vec3<bool>(true, true, true)), Struct_2(Struct_1(true, -828f, -1i), vec3<i32>(0i, -14704i, 30518i), Struct_1(false, 1160f, 34221i), vec3<bool>(true, true, false)), Struct_2(Struct_1(true, 145f, -44062i), vec3<i32>(42369i, -41586i, -1i), Struct_1(false, 258f, 2147483647i), vec3<bool>(true, true, true)), Struct_2(Struct_1(true, -603f, -42587i), vec3<i32>(1i, -25080i, -1i), Struct_1(true, -1781f, 46754i), vec3<bool>(false, true, true)), Struct_2(Struct_1(false, 173f, -1i), vec3<i32>(584i, 1i, -34313i), Struct_1(true, -1444f, i32(-2147483648)), vec3<bool>(true, false, true)), Struct_2(Struct_1(false, 629f, 15950i), vec3<i32>(2147483647i, -1i, 49421i), Struct_1(true, -451f, -9526i), vec3<bool>(true, true, false)), Struct_2(Struct_1(true, -731f, -42258i), vec3<i32>(1i, -1172i, 1658i), Struct_1(false, -868f, 1i), vec3<bool>(false, false, true)), Struct_2(Struct_1(false, 762f, 5631i), vec3<i32>(30034i, 2147483647i, -50520i), Struct_1(false, -839f, 21033i), vec3<bool>(true, true, true)), Struct_2(Struct_1(true, -1435f, 0i), vec3<i32>(1i, 31378i, -8435i), Struct_1(false, 1036f, -1i), vec3<bool>(false, false, true)), Struct_2(Struct_1(true, -132f, i32(-2147483648)), vec3<i32>(0i, -1i, -36512i), Struct_1(true, 1817f, 0i), vec3<bool>(false, true, true)), Struct_2(Struct_1(true, -1169f, -3144i), vec3<i32>(-13431i, -23015i, -1i), Struct_1(false, -1166f, 2161i), vec3<bool>(false, false, false)), Struct_2(Struct_1(false, 904f, 34595i), vec3<i32>(13460i, 20209i, 1i), Struct_1(false, 1790f, i32(-2147483648)), vec3<bool>(false, true, true)), Struct_2(Struct_1(true, -1176f, 0i), vec3<i32>(1i, -26987i, 0i), Struct_1(false, 1379f, -1i), vec3<bool>(true, false, false)), Struct_2(Struct_1(true, -162f, -80982i), vec3<i32>(i32(-2147483648), 42639i, 0i), Struct_1(true, 2487f, 5392i), vec3<bool>(false, false, true)), Struct_2(Struct_1(true, -804f, i32(-2147483648)), vec3<i32>(27438i, -31900i, 0i), Struct_1(false, 1634f, 37440i), vec3<bool>(true, true, true)), Struct_2(Struct_1(true, -701f, i32(-2147483648)), vec3<i32>(-62500i, 1i, 32629i), Struct_1(true, 1065f, i32(-2147483648)), vec3<bool>(true, true, true)), Struct_2(Struct_1(true, 119f, 19376i), vec3<i32>(-1i, 0i, -60867i), Struct_1(true, 970f, -43644i), vec3<bool>(true, false, false)), Struct_2(Struct_1(true, 1254f, 70656i), vec3<i32>(42980i, -1i, 1i), Struct_1(false, 246f, 20846i), vec3<bool>(false, false, false)));

var<private> global1: array<vec3<i32>, 17> = array<vec3<i32>, 17>(vec3<i32>(-10403i, -21259i, i32(-2147483648)), vec3<i32>(-6814i, i32(-2147483648), -1i), vec3<i32>(31165i, 0i, 9711i), vec3<i32>(i32(-2147483648), 10648i, -25458i), vec3<i32>(1i, 62391i, -31137i), vec3<i32>(i32(-2147483648), 2147483647i, 43150i), vec3<i32>(11076i, -41900i, 0i), vec3<i32>(i32(-2147483648), 0i, -723i), vec3<i32>(-1i, 57093i, 2432i), vec3<i32>(-1i, 17705i, -1i), vec3<i32>(-74491i, 0i, 1i), vec3<i32>(1i, 29982i, 6583i), vec3<i32>(1i, i32(-2147483648), -4905i), vec3<i32>(0i, i32(-2147483648), -20409i), vec3<i32>(-8871i, -40315i, -3105i), vec3<i32>(27734i, 7242i, -1i), vec3<i32>(14482i, 0i, -40902i));

var<private> global2: vec3<u32> = vec3<u32>(22u, 4397u, 34967u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    let var_0 = ~(-2147483647i);
    var var_1 = ~global2.x;
    let var_2 = -106f;
    global0 = array<Struct_2, 25>();
    global0 = array<Struct_2, 25>();
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1091f)), _wgslsmith_f_op_f32(floor(1027f)))), var_2));
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: i32) -> vec3<u32> {
    let var_0 = arg_0.x;
    var var_1 = arg_0;
    let var_2 = Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), u_input.a);
    var_1 = vec4<bool>(true, arg_0.x, var_0, var_1.x);
    var var_3 = _wgslsmith_dot_vec2_u32(global2.yx, vec2<u32>(~65215u, ~(~(global2.x ^ 4294967295u))));
    return ~(vec3<u32>(~global2.x ^ global2.x, global2.x, global2.x) << (firstLeadingBit(~vec3<u32>(global2.x, 4294967295u, 4294967295u)) % vec3<u32>(32u)));
}

fn func_1(arg_0: Struct_5, arg_1: u32) -> u32 {
    global2 = ~(~(~vec3<u32>(65394u, 1u, global2.x)) >> (func_2(select(vec4<bool>(arg_0.a.a, false, arg_0.a.a, false), !vec4<bool>(arg_0.a.a, false, arg_0.b.a.c.a, arg_0.b.a.a.a), !vec4<bool>(arg_0.a.a, arg_0.b.a.a.a, arg_0.b.a.d.x, arg_0.a.a)), 1i >> (1u % 32u), -2147483647i) % vec3<u32>(32u)));
    global0 = array<Struct_2, 25>();
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2660f, arg_0.b.a.a.b, arg_0.a.b, arg_0.a.b) * vec4<f32>(-271f, -1341f, arg_0.b.b.x, 182f)))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(401f, 1793f, _wgslsmith_f_op_f32(f32(-1f) * -145f), arg_0.a.b))))));
    global0 = array<Struct_2, 25>();
    global0 = array<Struct_2, 25>();
    return max(abs(arg_1), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b.d, 16867u), vec2<u32>(global2.x, 48201u)) | _wgslsmith_div_u32(firstTrailingBit(78013u), 0u), global2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(vec3<bool>(false, all(vec3<bool>(true, true, true)) || true, all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true)))));
    let var_1 = vec3<u32>(reverseBits(_wgslsmith_mod_u32(~firstLeadingBit(4294967295u), min(4294967295u, 16969u))), ~global2.x, global2.x);
    global0 = array<Struct_2, 25>();
    var var_2 = !(!vec2<bool>(var_0, all(select(vec3<bool>(true, var_0, var_0), vec3<bool>(true, var_0, var_0), false))));
    let var_3 = abs(0u ^ ~_wgslsmith_div_u32(52890u, var_1.x & 8537u));
    var var_4 = Struct_1(!all(!(!vec3<bool>(true, var_2.x, var_0))), -905f, 21942i);
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_mod_u32(func_1(Struct_5(Struct_1(var_0, -2100f, 0i), Struct_3(Struct_2(Struct_1(var_0, 493f, -49720i), vec3<i32>(var_4.c, var_4.c, var_4.c), Struct_1(false, var_4.b, 6947i), vec3<bool>(var_0, false, false)), vec3<f32>(-960f, 736f, var_4.b), -109f, global2.x), 1i, vec2<u32>(59884u, var_1.x)), min(51288u, 39304u)), _wgslsmith_mod_u32(global2.x, var_1.x)), _wgslsmith_div_u32(~var_1.x, ~(~var_1.x))), vec2<f32>(-1963f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.b) - var_4.b)), abs(global1[_wgslsmith_index_u32(~(~var_3 << (_wgslsmith_add_u32(global2.x, 4294967295u) % 32u)), 17u)]));
}

