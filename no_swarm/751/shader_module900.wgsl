struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 24>;

var<private> global1: array<vec4<i32>, 26> = array<vec4<i32>, 26>(vec4<i32>(-1i, -1i, 13676i, -34028i), vec4<i32>(i32(-2147483648), 35678i, -6093i, 3376i), vec4<i32>(1i, 2147483647i, i32(-2147483648), 32803i), vec4<i32>(0i, 796i, -1i, 2147483647i), vec4<i32>(-1i, -1i, 14538i, 41582i), vec4<i32>(2147483647i, -16036i, i32(-2147483648), -34138i), vec4<i32>(-897i, 0i, 26873i, 1i), vec4<i32>(-38366i, -52302i, 12583i, -27575i), vec4<i32>(i32(-2147483648), 41114i, 0i, -46681i), vec4<i32>(28149i, 0i, -1i, -8731i), vec4<i32>(0i, 1i, 6744i, 2147483647i), vec4<i32>(36705i, 4986i, 17211i, i32(-2147483648)), vec4<i32>(48064i, 1i, 2147483647i, -12173i), vec4<i32>(2147483647i, -3856i, i32(-2147483648), 18166i), vec4<i32>(i32(-2147483648), -9366i, -75344i, 7348i), vec4<i32>(0i, 1i, 0i, 54052i), vec4<i32>(-23085i, -20814i, 1i, 2147483647i), vec4<i32>(-1i, 15410i, 74387i, i32(-2147483648)), vec4<i32>(-1i, 1i, -20260i, 1i), vec4<i32>(0i, 36517i, 10439i, -16925i), vec4<i32>(-73187i, -18342i, -75260i, 50928i), vec4<i32>(-26150i, 2147483647i, -40362i, 45797i), vec4<i32>(-4309i, i32(-2147483648), -1i, -38149i), vec4<i32>(0i, 4603i, 0i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 1i, 1i, 4990i), vec4<i32>(1i, -12419i, 2147483647i, -41860i));

var<private> global2: vec3<i32>;

var<private> global3: Struct_3 = Struct_3(4294967295u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: u32) -> vec2<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-659f * _wgslsmith_f_op_f32(1f + 311f)), select(any(!select(vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(false, arg_0, true, arg_0), false)), true, !arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, 1f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(789f)))));
    global1 = array<vec4<i32>, 26>();
    var_0 = Struct_1(var_0.c, any(select(select(vec2<bool>(true, true), select(vec2<bool>(false, var_0.b), vec2<bool>(arg_0, arg_0), var_0.b), vec2<bool>(false, var_0.b)), vec2<bool>(arg_0, false), vec2<bool>(true, any(vec4<bool>(false, false, true, false))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(289f + var_0.c))), -621f, false)))));
    let var_1 = Struct_2(Struct_1(var_0.a, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a))))), !any(!vec4<bool>(false, arg_0, true, var_0.b)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) - _wgslsmith_f_op_f32(f32(-1f) * -321f)), true, 1f), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(250f + -1000f) * 1394f), var_0.b, -320f));
    var var_2 = true;
    return ~global2.zz;
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: vec2<i32>) -> vec2<bool> {
    global2 = -u_input.b;
    let var_0 = vec2<bool>(all(vec3<bool>(true, (arg_0.x <= arg_0.x) | all(vec2<bool>(true, false)), -arg_0.x > u_input.b.x)), false);
    let var_1 = Struct_3(global3.a);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1000f, -1000f))), _wgslsmith_f_op_f32(select(820f, -775f, true)))), 634f);
    let var_3 = Struct_2(Struct_1(-1590f, any(vec2<bool>(true, var_0.x)), 516f), true | (1u > abs(_wgslsmith_add_u32(arg_1, 2765u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.x)))), var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, -300f) + _wgslsmith_f_op_f32(exp2(var_2.x))), 1404f)), Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(-508f, _wgslsmith_div_f32(-736f, var_2.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(968f + -2153f)))), true | any(!var_0), _wgslsmith_div_f32(-667f, 584f)));
    return !select(var_0, vec2<bool>(true, !select(true, var_3.b, var_3.c.b)), any(select(!var_0, vec2<bool>(var_3.c.b, false), select(vec2<bool>(false, var_3.a.b), var_0, var_3.d.b))));
}

fn func_2(arg_0: vec4<u32>) -> vec2<bool> {
    let var_0 = !func_4(func_3(true, global3.a), global3.a, vec2<i32>(global2.x, global2.x));
    let var_1 = Struct_3(4294967295u);
    global0 = array<vec3<f32>, 24>();
    global1 = array<vec4<i32>, 26>();
    var var_2 = ~abs(u_input.b);
    return func_4((var_2.zz >> ((abs(vec2<u32>(4294967295u, 3600u)) << (min(vec2<u32>(1u, var_1.a), arg_0.wy) % vec2<u32>(32u))) % vec2<u32>(32u))) << (~_wgslsmith_add_vec2_u32(~vec2<u32>(var_1.a, var_1.a), vec2<u32>(41205u, global3.a)) % vec2<u32>(32u)), select(max(58824u, min(_wgslsmith_dot_vec3_u32(arg_0.wyz, arg_0.wwz), arg_0.x)), 63685u, any(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, false, false)))), func_3(true, 31425u));
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_div_vec3_u32(abs(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, global3.a, 4294967295u), vec3<u32>(global3.a, global3.a, 3934u)), _wgslsmith_mult_vec3_u32(~vec3<u32>(global3.a, global3.a, global3.a), vec3<u32>(global3.a, 21429u, 47536u)))), ~min(~vec3<u32>(global3.a, global3.a, global3.a), ~vec3<u32>(37999u, 25355u, 0u) & _wgslsmith_add_vec3_u32(vec3<u32>(1u, 85312u, global3.a), vec3<u32>(1u, 57486u, global3.a))));
    let var_1 = select(func_2(vec4<u32>(1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 1u), vec2<u32>(22160u, 4294967295u) >> (var_0.zx % vec2<u32>(32u))), 21828u, global3.a)), func_4(global2.zx, _wgslsmith_sub_u32(var_0.x, global3.a) ^ _wgslsmith_div_u32(abs(13503u), ~global3.a), max(func_3(all(vec2<bool>(true, false)), var_0.x), u_input.b.xy)), !func_2(~(~vec4<u32>(var_0.x, global3.a, var_0.x, global3.a))));
    global0 = array<vec3<f32>, 24>();
    let var_2 = !all(!vec3<bool>(1u >= var_0.x, true, var_1.x));
    global1 = array<vec4<i32>, 26>();
    return Struct_3(var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_3(4817u);
    let var_0 = -443f;
    global0 = array<vec3<f32>, 24>();
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, global3.a), 26u)];
    global3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(~(var_1.zz | vec2<i32>(1i, u_input.b.x))));
}

