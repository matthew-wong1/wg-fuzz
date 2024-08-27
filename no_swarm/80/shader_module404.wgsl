struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec4<f32>(-185f, -787f, 1190f, 174f), vec2<i32>(0i, 2147483647i), 0u), Struct_1(vec4<f32>(1875f, 600f, 1163f, 477f), vec2<i32>(2147483647i, 2147483647i), 0u), Struct_1(vec4<f32>(-220f, -183f, -728f, -688f), vec2<i32>(i32(-2147483648), -66814i), 17803u), Struct_1(vec4<f32>(-259f, 863f, 734f, 1281f), vec2<i32>(-31219i, -41294i), 15251u));

var<private> global1: array<vec4<i32>, 14>;

var<private> global2: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec3<bool> {
    var var_0 = false;
    var var_1 = select(_wgslsmith_add_vec2_i32(-vec2<i32>(-u_input.a, ~(-17795i)), -abs(u_input.b) >> (global2.b.wy % vec2<u32>(32u))), -u_input.b, vec2<bool>(global2.a, global2.a));
    global1 = array<vec4<i32>, 14>();
    var var_2 = Struct_2(true, global2.b);
    var var_3 = Struct_3(select(!vec3<bool>(-2147483647i > var_1.x, var_2.a, !var_2.a), vec3<bool>(all(vec3<bool>(var_2.a, true, global2.a)), false, var_2.a), false));
    return !var_3.a;
}

fn func_2(arg_0: vec2<u32>) -> Struct_2 {
    global0 = array<Struct_1, 4>();
    global1 = array<vec4<i32>, 14>();
    let var_0 = Struct_3(!func_3());
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    return Struct_2(all(select(!select(vec4<bool>(true, global2.a, var_0.a.x, global2.a), vec4<bool>(global2.a, global2.a, var_0.a.x, var_0.a.x), true), !vec4<bool>(false, false, global2.a, false), select(vec4<bool>(true, true, global2.a, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, var_0.a.x, true), vec4<bool>(global2.a, var_0.a.x, false, global2.a)), !vec4<bool>(false, var_0.a.x, false, true)))), ~(~select(_wgslsmith_mod_vec4_u32(global2.b, global2.b), vec4<u32>(arg_0.x, 0u, 1u, 0u), select(vec4<bool>(false, var_0.a.x, global2.a, global2.a), vec4<bool>(global2.a, true, true, var_0.a.x), true))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: bool) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-766f * 401f), -510f, 731f, 340f))), firstLeadingBit(~vec2<i32>(u_input.a, ~(-31591i))), arg_0.x);
    global2 = func_2(arg_0.zy);
    global1 = array<vec4<i32>, 14>();
    var var_1 = Struct_2(arg_2, arg_1.b);
    var var_2 = -8927i;
    return u_input.a;
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: i32) -> Struct_2 {
    let var_0 = Struct_3(!select(!(!vec3<bool>(global2.a, true, global2.a)), select(vec3<bool>(global2.a, global2.a, true), !vec3<bool>(global2.a, true, true), select(vec3<bool>(global2.a, true, false), vec3<bool>(global2.a, global2.a, false), vec3<bool>(global2.a, false, false))), select(vec3<bool>(false, false, global2.a), !vec3<bool>(global2.a, false, true), all(vec4<bool>(false, true, true, global2.a)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1211f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1039f - -2373f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1234f - -1155f), -965f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -995f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1763f, 452f, 1495f, 540f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(2332f, -1335f, 774f, 1395f))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1944f, -2273f, 1571f, -627f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1000f, -1385f, 489f) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(451f, 1324f, 1071f, -1890f))))) * vec4<f32>(415f, 1f, 896f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f)))))));
    let var_2 = var_0;
    global2 = Struct_2(!func_2(~(~global2.b.zw)).a, global2.b);
    var var_3 = _wgslsmith_sub_vec3_i32(vec3<i32>(52924i << (~global2.b.x % 32u), 2147483647i, countOneBits(_wgslsmith_dot_vec2_i32(select(vec2<i32>(2147483647i, arg_0), vec2<i32>(u_input.a, arg_0), var_2.a.x), select(vec2<i32>(arg_0, -14209i), u_input.b, var_2.a.zz)))), -reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, arg_0, 2147483647i), max(vec3<i32>(22361i, 10304i, -2147483647i), vec3<i32>(arg_2, u_input.a, -45912i)))));
    return func_2(~global2.b.wz);
}

fn func_1() -> Struct_2 {
    global2 = func_5(_wgslsmith_add_i32(80423i, ~func_4(_wgslsmith_mult_vec3_u32(vec3<u32>(global2.b.x, 50976u, global2.b.x), global2.b.xzz), func_2(vec2<u32>(global2.b.x, global2.b.x)), select(global2.a, true, true))), global2.b.x, _wgslsmith_sub_i32(reverseBits(u_input.a) ^ (i32(-1i) * -1i), func_4(global2.b.zzx, Struct_2(true, vec4<u32>(0u, 37132u, global2.b.x, 1u)), true)));
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    var var_0 = ~vec2<i32>(max(-68534i, ~(~u_input.a)), u_input.b.x);
    var var_1 = vec4<bool>(!global2.a, global2.a, true, false);
    return func_5(~var_0.x, global2.b.x, ~reverseBits(var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    var var_0 = 4294967295u << (global2.b.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_i32(1i, -11803i), max(select(39872u, ~(global2.b.x << (global2.b.x % 32u)), func_5(~u_input.b.x, ~global2.b.x, u_input.a ^ -13672i).a), reverseBits(select(global2.b.x, max(global2.b.x, 25479u), !global2.a))), _wgslsmith_f_op_f32(f32(-1f) * -410f));
}

