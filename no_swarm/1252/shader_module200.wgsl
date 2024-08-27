struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<vec2<bool>, 19> = array<vec2<bool>, 19>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global2: Struct_2;

var<private> global3: Struct_2;

var<private> global4: array<vec2<u32>, 21> = array<vec2<u32>, 21>(vec2<u32>(0u, 83059u), vec2<u32>(33258u, 11891u), vec2<u32>(4294967295u, 10377u), vec2<u32>(1u, 125u), vec2<u32>(4294967295u, 0u), vec2<u32>(20159u, 0u), vec2<u32>(73169u, 6486u), vec2<u32>(28471u, 687u), vec2<u32>(1u, 1351u), vec2<u32>(47780u, 4294967295u), vec2<u32>(0u, 82503u), vec2<u32>(45563u, 0u), vec2<u32>(86250u, 22321u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 41441u), vec2<u32>(1u, 1049u), vec2<u32>(35284u, 19180u), vec2<u32>(13670u, 13951u), vec2<u32>(15704u, 0u), vec2<u32>(39982u, 1538u), vec2<u32>(27909u, 0u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> vec2<u32> {
    return u_input.b.zy;
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: vec3<u32>, arg_3: f32) -> vec4<bool> {
    let var_0 = !vec4<bool>(true, global0.x, any(global0.zyz), u_input.e.x <= ~(global3.a.a & 53683i));
    var var_1 = Struct_2(global2.a, vec4<i32>(~max(_wgslsmith_dot_vec4_i32(vec4<i32>(-18151i, u_input.d.x, global3.a.a, global2.b.x), vec4<i32>(0i, -1i, u_input.d.x, -40559i)), countOneBits(u_input.d.x)), 1i, ~(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -3286i, 0i, 0i), global3.b) & u_input.e.x), 27250i), all(select(vec4<bool>(global0.x, global0.x, all(vec4<bool>(false, global0.x, global3.c, var_0.x)), false), !vec4<bool>(global3.c, false, true, true), var_0)));
    let var_2 = global0.x;
    global4 = array<vec2<u32>, 21>();
    var var_3 = 1u;
    return !var_0;
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = ~(~_wgslsmith_add_vec2_u32(vec2<u32>(countOneBits(6830u), 0u), func_2()));
    let var_1 = vec4<u32>(global3.a.b, _wgslsmith_clamp_u32(~85550u, var_0.x, ~firstLeadingBit(global2.a.b)), arg_1, 28036u) | ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.b, 4294967295u, var_0.x, global3.a.b), vec4<u32>(4294967295u, u_input.c, arg_1, global3.a.b)));
    global3 = Struct_2(global3.a, select(global3.b, -(~(global3.b & global2.b)), !select(select(vec4<bool>(true, global2.c, false, true), vec4<bool>(global3.c, true, global2.c, global0.x), global3.c), func_3(vec4<u32>(23159u, 28093u, 54259u, var_1.x), -246f, vec3<u32>(var_1.x, 1u, 53812u), 343f), select(vec4<bool>(true, global2.c, true, false), vec4<bool>(global3.c, global3.c, global2.c, global3.c), vec4<bool>(false, global2.c, false, global3.c)))), func_3(vec4<u32>(78387u, var_0.x, ~var_1.x, firstLeadingBit(45529u)) | ~vec4<u32>(1u, var_0.x, var_1.x, 14737u), _wgslsmith_f_op_f32(round(-2644f)), min(vec3<u32>(0u, arg_0.b, 4294967295u), vec3<u32>(68320u, 0u, u_input.a)) ^ min(vec3<u32>(22227u, 0u, arg_1), ~vec3<u32>(var_0.x, arg_1, 1u)), 922f).x);
    var var_2 = !global0.x;
    var var_3 = vec3<u32>(var_0.x, global3.a.b, countOneBits(_wgslsmith_div_u32(arg_1, _wgslsmith_sub_u32(abs(28799u), _wgslsmith_mod_u32(var_1.x, 25695u)))));
    return Struct_1(2147483647i, arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(global3.a.b, u_input.a, global3.a.b)), u_input.b) >> (u_input.b % vec3<u32>(32u))) & u_input.b;
    let var_1 = func_1(Struct_1(-4331i, 19637u >> (0u % 32u)), 74644u & var_0.x);
    global2 = Struct_2(Struct_1(max(~44402i, var_1.a) & select(1i, _wgslsmith_mod_i32(39861i, u_input.d.x), !global3.c), 8369u), abs(~global3.b), true);
    let var_2 = vec3<bool>(global3.c, global2.c, false);
    var var_3 = !select(var_2.zz, !vec2<bool>(all(vec3<bool>(false, false, false)), false), global0.x);
    let var_4 = 0i;
    let var_5 = _wgslsmith_mod_vec3_u32(~(vec3<u32>(32461u, ~1u, global3.a.b) ^ vec3<u32>(78710u >> (var_0.x % 32u), ~var_0.x, select(var_1.b, 30046u, global3.c))), ~u_input.b);
    global2 = Struct_2(func_1(Struct_1(_wgslsmith_add_i32(-21988i, 4024i), var_5.x), global2.a.b), global2.b, all(vec3<bool>(any(global0.zxy), var_2.x, any(vec2<bool>(var_2.x, true)))) | false);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(global2.a.b ^ _wgslsmith_mod_u32(~global3.a.b, 4294967295u), firstLeadingBit(var_1.b)), min(var_5.x, var_5.x), ~_wgslsmith_add_vec2_u32(u_input.b.xx, global4[_wgslsmith_index_u32(29074u, 21u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1590f, -1245f, 180f, 693f) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(744f, 585f, -915f, 585f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1042f, 1640f, 372f, _wgslsmith_f_op_f32(-1609f * 185f)))), ~(~var_5.x) & _wgslsmith_div_u32(28002u, global2.a.b));
}

