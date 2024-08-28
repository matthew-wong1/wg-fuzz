struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec4<i32>(1i, 13804i, 0i, -37799i), vec2<bool>(false, true), 0u, -1074f), Struct_1(vec4<i32>(-28562i, i32(-2147483648), 0i, 0i), vec2<bool>(false, true), 0u, -1327f), Struct_1(vec4<i32>(-23158i, 261i, 2147483647i, 0i), vec2<bool>(false, false), 37771u, 918f), Struct_1(vec4<i32>(-1i, 1i, -7753i, i32(-2147483648)), vec2<bool>(true, false), 55026u, -1000f), Struct_1(vec4<i32>(-52985i, -36055i, -10426i, 1i), vec2<bool>(true, true), 0u, 211f), Struct_1(vec4<i32>(2982i, -5891i, 44776i, 2147483647i), vec2<bool>(false, false), 0u, 605f), Struct_1(vec4<i32>(-1244i, -1i, 2147483647i, 0i), vec2<bool>(true, true), 1u, -2086f), Struct_1(vec4<i32>(0i, -61256i, -37907i, 41521i), vec2<bool>(false, false), 0u, 847f), Struct_1(vec4<i32>(-1i, -40373i, -48368i, 2147483647i), vec2<bool>(true, true), 15278u, 1153f), Struct_1(vec4<i32>(1i, -23288i, 0i, 34548i), vec2<bool>(true, false), 118346u, -1298f), Struct_1(vec4<i32>(42969i, i32(-2147483648), -1i, 1i), vec2<bool>(true, true), 6625u, 622f), Struct_1(vec4<i32>(-11101i, 1i, 1i, -1i), vec2<bool>(false, true), 48751u, -1098f), Struct_1(vec4<i32>(-16311i, -11022i, 36866i, -23240i), vec2<bool>(true, true), 0u, 600f), Struct_1(vec4<i32>(-16434i, 2601i, 48476i, i32(-2147483648)), vec2<bool>(false, false), 0u, -290f), Struct_1(vec4<i32>(-37334i, 64470i, -51841i, i32(-2147483648)), vec2<bool>(true, false), 30848u, 543f), Struct_1(vec4<i32>(3990i, 0i, 2147483647i, 27235i), vec2<bool>(true, true), 44183u, -245f), Struct_1(vec4<i32>(0i, 0i, -1i, 21498i), vec2<bool>(false, true), 53410u, 553f), Struct_1(vec4<i32>(0i, 2147483647i, 80565i, 12542i), vec2<bool>(false, true), 1u, 1035f), Struct_1(vec4<i32>(0i, -21695i, 0i, -41423i), vec2<bool>(true, true), 0u, 1253f), Struct_1(vec4<i32>(0i, -41480i, 0i, 2147483647i), vec2<bool>(true, true), 1u, 1164f), Struct_1(vec4<i32>(-4483i, i32(-2147483648), 0i, 0i), vec2<bool>(false, false), 4294967295u, -742f), Struct_1(vec4<i32>(-16527i, 34974i, 46010i, -74572i), vec2<bool>(false, false), 13711u, -799f));

var<private> global1: Struct_1;

var<private> global2: vec4<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_3) -> vec3<u32> {
    global0 = array<Struct_1, 22>();
    var var_0 = u_input.a;
    return min(~global2.yww, _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(~u_input.c, arg_1.d.a << (global1.c % 32u), global2.x), ~reverseBits(vec3<u32>(global1.c, arg_1.d.a, global1.c))), u_input.b));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: Struct_3) -> i32 {
    return global1.a.x;
}

fn func_1() -> i32 {
    let var_0 = global2.xzw;
    var var_1 = global1.c;
    let var_2 = _wgslsmith_div_vec3_u32(~(~(~vec3<u32>(21919u, 53173u, 40208u))), abs(~(~vec3<u32>(0u, u_input.a, global2.x)))) >> (func_2(-global1.a.yxx, Struct_3(false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-785f)), global1.d), -6837i, Struct_2(var_0.x))) % vec3<u32>(32u));
    var_1 = _wgslsmith_div_u32(~4294967295u, _wgslsmith_add_u32(0u, 4294967295u));
    var var_3 = select(!(!(!vec3<bool>(true, global1.b.x, global1.b.x))), select(vec3<bool>(true, 1u > max(global1.c, global1.c), true), !vec3<bool>(true, global1.b.x, all(vec4<bool>(global1.b.x, global1.b.x, global1.b.x, global1.b.x))), true), global1.b.x);
    return u_input.d.x ^ -reverseBits(func_3(vec4<f32>(-477f, -700f, 837f, -978f), vec2<f32>(-1621f, 670f), Struct_3(false, 103f, 2147483647i, Struct_2(0u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.d, _wgslsmith_f_op_f32(abs(global1.d)), -1439f)));
    let var_1 = vec4<bool>(false, true, !(global1.b.x | any(!vec3<bool>(global1.b.x, true, true))), -max(_wgslsmith_mod_i32(u_input.d.x, -63247i), func_1()) >= u_input.d.x);
    let var_2 = Struct_4(Struct_2(global2.x & 1u));
    let var_3 = Struct_1(_wgslsmith_mod_vec4_i32(-vec4<i32>(global1.a.x, global1.a.x, -19775i, -3364i) & select(vec4<i32>(-1i, u_input.d.x, -1i, u_input.d.x), global1.a << (vec4<u32>(global2.x, 65305u, u_input.c, global1.c) % vec4<u32>(32u)), true), -select(vec4<i32>(-72208i, 0i, u_input.d.x, 50925i), ~vec4<i32>(1i, u_input.d.x, -20216i, u_input.d.x), vec4<bool>(var_1.x, true, global1.b.x, true))), !vec2<bool>(_wgslsmith_f_op_f32(sign(var_0.x)) < var_0.x, var_1.x), u_input.a, 1554f);
    var var_4 = global1.b;
    global0 = array<Struct_1, 22>();
    global1 = Struct_1(vec4<i32>(global1.a.x, -1i, min(~u_input.d.x | -2147483647i, _wgslsmith_sub_i32(~1i, func_3(vec4<f32>(-1038f, 858f, global1.d, 860f), var_0.zx, Struct_3(global1.b.x, var_3.d, u_input.d.x, Struct_2(u_input.a))))), _wgslsmith_clamp_i32(~min(-47037i, -1i), global1.a.x, ~func_1())), vec2<bool>(all(select(var_1, var_1, !var_1)), var_3.b.x), ~1u, _wgslsmith_f_op_f32(max(var_0.x, var_3.d)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.zx, u_input.d.x);
}

