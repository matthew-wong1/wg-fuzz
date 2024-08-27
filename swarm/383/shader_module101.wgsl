struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: bool,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: f32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec3<u32>(1u, 2906u, 7140u), vec2<f32>(121f, -2157f)), Struct_1(vec3<u32>(4294967295u, 26117u, 0u), vec2<f32>(-1204f, 1496f)), Struct_1(vec3<u32>(39511u, 70417u, 2964u), vec2<f32>(602f, 3198f)), Struct_1(vec3<u32>(1u, 93086u, 0u), vec2<f32>(-262f, -642f)), Struct_1(vec3<u32>(57427u, 0u, 0u), vec2<f32>(258f, 474f)), Struct_1(vec3<u32>(0u, 0u, 4294967295u), vec2<f32>(-217f, 1167f)), Struct_1(vec3<u32>(1u, 4294967295u, 68200u), vec2<f32>(520f, -985f)), Struct_1(vec3<u32>(0u, 1u, 43400u), vec2<f32>(-176f, 134f)), Struct_1(vec3<u32>(102428u, 1u, 16885u), vec2<f32>(810f, -1184f)), Struct_1(vec3<u32>(35696u, 1u, 1u), vec2<f32>(1000f, 658f)), Struct_1(vec3<u32>(4294967295u, 0u, 76421u), vec2<f32>(-264f, -324f)));

var<private> global1: array<f32, 20> = array<f32, 20>(-146f, -269f, -1119f, -946f, 186f, -235f, 823f, -185f, 1000f, -542f, -2922f, -1000f, 435f, -781f, -959f, -463f, 656f, -1040f, 613f, 617f);

var<private> global2: Struct_2 = Struct_2(Struct_1(vec3<u32>(1u, 1u, 131228u), vec2<f32>(-632f, 733f)), vec4<bool>(false, false, true, false), false, vec4<u32>(4294967295u, 64935u, 1430u, 46860u), vec3<u32>(64089u, 0u, 10419u));

var<private> global3: Struct_2 = Struct_2(Struct_1(vec3<u32>(91506u, 1u, 617u), vec2<f32>(1231f, -588f)), vec4<bool>(false, false, true, false), true, vec4<u32>(4294967295u, 1u, 46096u, 51693u), vec3<u32>(12707u, 4294967295u, 0u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.e.x;
    global0 = array<Struct_1, 11>();
    let var_1 = global3.a.b.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.b.x)), _wgslsmith_f_op_f32(-global3.a.b.x)) - vec3<f32>(global2.a.b.x, 140f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(22479u, 20u)] - 2809f), _wgslsmith_f_op_f32(-203f - 608f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.a.b.x))))));
    global0 = array<Struct_1, 11>();
    return global0[_wgslsmith_index_u32(369u, 11u)];
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec4<f32>, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = global3.a;
    let var_1 = _wgslsmith_f_op_vec3_f32(round(arg_2.xwy));
    var var_2 = arg_0.a;
    let var_3 = select(20203u, 1u, true);
    global0 = array<Struct_1, 11>();
    return arg_0.d;
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    var var_0 = func_2();
    global3 = Struct_2(Struct_1(~_wgslsmith_mod_vec3_u32(global2.d.yzy, global2.d.xww) << (global2.a.a % vec3<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.a.b.x))), global1[_wgslsmith_index_u32(~45635u, 20u)])), vec4<bool>(global3.c, all(global3.b.zz), global2.c & !global3.c, any(select(vec3<bool>(true, global2.b.x, false), vec3<bool>(global3.c, false, true), global3.b.x)) && global3.b.x), true, _wgslsmith_mult_vec4_u32(func_3(Struct_2(Struct_1(vec3<u32>(1u, u_input.c.x, arg_0.a.x), global2.a.b), global2.b, any(vec4<bool>(true, global2.c, global3.b.x, true)), global2.d, global3.e << (global3.d.zyy % vec3<u32>(32u))), 4294967295u > global3.a.a.x, vec4<f32>(-1912f, 453f, _wgslsmith_f_op_f32(f32(-1f) * -851f), _wgslsmith_f_op_f32(-global3.a.b.x)), Struct_1(var_0.a, vec2<f32>(arg_0.b.x, 618f))), func_3(Struct_2(Struct_1(global2.e, vec2<f32>(global2.a.b.x, var_0.b.x)), vec4<bool>(true, true, true, true), false && global3.b.x, vec4<u32>(0u, 0u, global3.d.x, 1u), ~u_input.a.wwx), true, vec4<f32>(-135f, _wgslsmith_f_op_f32(-352f * global3.a.b.x), -1148f, global1[_wgslsmith_index_u32(~arg_0.a.x, 20u)]), arg_0)), abs(arg_0.a) | _wgslsmith_div_vec3_u32(var_0.a, abs(u_input.a.yyw)));
    global1 = array<f32, 20>();
    return Struct_2(Struct_1(countOneBits(u_input.a.zyx), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.b.x, -835f)) * global3.a.b)), vec4<bool>(false, select(global3.b.x, global2.b.x, false), global3.c, global2.b.x), global3.a.b.x < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(110f, 1099f)), vec4<u32>(0u, u_input.a.x, u_input.d, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), var_0.a.yx) | u_input.a.x)), select(vec3<u32>(reverseBits(global2.e.x), 40367u, arg_0.a.x), countOneBits(vec3<u32>(firstLeadingBit(u_input.c.x), max(1u, global2.a.a.x), ~0u)), select(all(global3.b.wwz) || !global2.b.x, any(select(vec4<bool>(false, true, global3.b.x, global3.c), vec4<bool>(global3.b.x, global3.b.x, global2.c, global2.c), global2.b.x)), false)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: i32, arg_3: Struct_2) -> u32 {
    var var_0 = vec3<bool>(arg_1.x, true, all(select(select(select(arg_1, vec2<bool>(global3.b.x, arg_1.x), true), func_1(arg_3.a).b.ww, true), vec2<bool>(arg_1.x, global3.b.x | global3.c), arg_1)));
    let var_1 = func_1(Struct_1(vec3<u32>(~arg_0.a.x >> (35054u % 32u), arg_3.e.x, 1u), arg_0.b));
    var var_2 = global2.d.wz;
    var var_3 = func_2();
    var_3 = func_1(Struct_1(global3.d.zxw, _wgslsmith_f_op_vec2_f32(-arg_3.a.b))).a;
    return global3.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c.x, global3.a.a.x), 20u)], 129f, _wgslsmith_f_op_f32(abs(global2.a.b.x)), global3.a.b.x))), vec2<u32>(global3.e.x, _wgslsmith_mult_u32(_wgslsmith_add_u32(~0u, u_input.d), func_4(global3.a, global2.b.yy, 1i, func_1(Struct_1(global3.a.a, global2.a.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.b.x))), _wgslsmith_f_op_f32(global3.a.b.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(332f - 727f))), select(~vec3<u32>(min(global2.d.x, global2.e.x), global3.d.x, func_1(global3.a).e.x), u_input.a.yzz, global3.b.xyy));
}

