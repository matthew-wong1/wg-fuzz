struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1000f;

var<private> global1: i32 = 32558i;

var<private> global2: array<vec4<f32>, 26>;

var<private> global3: Struct_1 = Struct_1(vec4<f32>(983f, 1349f, 1179f, 1871f), vec3<bool>(false, false, false), vec4<i32>(-3702i, 1i, -30519i, -3432i));

var<private> global4: array<Struct_2, 12>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32) -> bool {
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = Struct_1(vec4<f32>(775f, _wgslsmith_f_op_f32(max(1f, 920f)), _wgslsmith_div_f32(arg_0.a.a.x, 595f), -707f), vec3<bool>(false, any(select(vec2<bool>(true, true), vec2<bool>(arg_2.b.x, arg_1.x), vec2<bool>(global3.b.x, arg_0.a.b.x))), func_3(~firstLeadingBit(42136i))), _wgslsmith_div_vec4_i32(global3.c, reverseBits(arg_0.a.c)));
    var var_1 = var_0;
    let var_2 = var_0.a.zwz;
    let var_3 = var_0;
    let var_4 = var_1.b;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-343f, global3.a.x, var_0.a.x, _wgslsmith_f_op_f32(arg_2.a.x - global3.a.x)), var_1.a, select(false, false, false) & select(true, true, var_1.b.x))), vec3<bool>(any(select(var_1.b.yx, arg_0.a.b.yy, arg_2.b.x)), !(var_1.c.x < arg_2.c.x), true), select(arg_2.c, _wgslsmith_mod_vec4_i32(vec4<i32>(global3.c.x, u_input.c.x, arg_2.c.x, 51696i), var_1.c), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 58012u, u_input.e.x), vec4<u32>(26047u, 4744u, 0u, u_input.a)) <= u_input.a)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_2) -> vec2<u32> {
    let var_0 = global4[_wgslsmith_index_u32(1u, 12u)];
    var var_1 = ~vec3<u32>(4294967295u, 1u, u_input.a);
    let var_2 = global4[_wgslsmith_index_u32(1u, 12u)];
    let var_3 = !vec4<bool>((1i | (arg_1.c.x << (u_input.a % 32u))) == _wgslsmith_add_i32(firstTrailingBit(0i), _wgslsmith_sub_i32(arg_3.a.c.x, 28432i)), false, select(!global3.b.x, !all(vec4<bool>(false, arg_0.a.b.x, var_0.a.b.x, var_2.a.b.x)), all(vec3<bool>(true, true, true))), var_0.a.b.x);
    global1 = u_input.d.x;
    return select(vec2<u32>(var_1.x, _wgslsmith_sub_u32(69460u, arg_2.x)) << (select(~vec2<u32>(var_1.x, 4294967295u) & ~u_input.e, select(_wgslsmith_sub_vec2_u32(arg_2.yx, var_1.zz), _wgslsmith_div_vec2_u32(vec2<u32>(38003u, arg_2.x), vec2<u32>(u_input.e.x, 0u)), !vec2<bool>(var_3.x, true)), select(select(arg_1.b.zy, var_0.a.b.yx, var_2.a.b.x), !var_0.a.b.yy, select(arg_0.a.b.zy, arg_3.a.b.xz, var_0.a.b.zz))) % vec2<u32>(32u)), ~(~var_1.xy), true);
}

fn func_1() -> Struct_1 {
    var var_0 = vec3<i32>(1i, 32340i, select(-2147483647i | (-2147483647i | -u_input.c.x), -14910i, global3.a.x > _wgslsmith_f_op_f32(global3.a.x * _wgslsmith_f_op_f32(700f - global3.a.x))));
    let var_1 = _wgslsmith_mult_vec2_i32(select(_wgslsmith_mult_vec2_i32(min(var_0.yy, vec2<i32>(global3.c.x, global3.c.x)), var_0.yx) >> (func_4(func_2(Struct_2(Struct_1(vec4<f32>(-1000f, global3.a.x, global3.a.x, -875f), vec3<bool>(true, false, false), global3.c)), global3.b, Struct_1(global3.a, global3.b, global3.c)), Struct_1(vec4<f32>(global3.a.x, global3.a.x, global3.a.x, global3.a.x), global3.b, global3.c), abs(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.e.x)), func_2(Struct_2(Struct_1(vec4<f32>(global3.a.x, global3.a.x, global3.a.x, global3.a.x), vec3<bool>(false, global3.b.x, global3.b.x), u_input.c)), vec3<bool>(false, true, true), Struct_1(global2[_wgslsmith_index_u32(u_input.e.x, 26u)], global3.b, vec4<i32>(global3.c.x, -2009i, -2147483647i, global3.c.x)))) % vec2<u32>(32u)), -min(vec2<i32>(1i, u_input.d.x), min(global3.c.zy, u_input.d.wx)), func_2(func_2(global4[_wgslsmith_index_u32(u_input.a, 12u)], !vec3<bool>(global3.b.x, true, false), func_2(Struct_2(Struct_1(global2[_wgslsmith_index_u32(u_input.e.x, 26u)], global3.b, vec4<i32>(u_input.c.x, global3.c.x, 1984i, -2147483647i))), global3.b, Struct_1(global3.a, vec3<bool>(global3.b.x, false, global3.b.x), global3.c)).a), global3.b, func_2(Struct_2(Struct_1(vec4<f32>(global3.a.x, -490f, global3.a.x, 588f), vec3<bool>(global3.b.x, false, global3.b.x), u_input.d)), !global3.b, Struct_1(vec4<f32>(global3.a.x, 801f, -591f, global3.a.x), global3.b, global3.c)).a).a.b.xz), _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(global3.c.zw, vec2<i32>(global3.c.x, global3.c.x)), global3.c.xw), vec2<i32>(_wgslsmith_add_i32(25057i, firstLeadingBit(global3.c.x)), 1i)));
    var var_2 = !(!(0u < u_input.a));
    var_0 = reverseBits(u_input.c.ywz | -(~global3.c.xzx));
    global4 = array<Struct_2, 12>();
    return func_2(global4[_wgslsmith_index_u32(reverseBits(1u ^ u_input.e.x), 12u)], !global3.b, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(10620u, 26u)] + global2[_wgslsmith_index_u32(129940u, 26u)]) - vec4<f32>(-1343f, global3.a.x, global3.a.x, 1000f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3.a.x, -865f, global3.a.x, -537f)))), select(!select(global3.b, global3.b, vec3<bool>(global3.b.x, false, false)), vec3<bool>(false, all(global3.b.xy), true), vec3<bool>(any(global3.b.yy), any(vec4<bool>(global3.b.x, false, true, false)), global3.b.x)), global3.c ^ global3.c)).a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2129f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-807f, _wgslsmith_f_op_f32(global3.a.x * global3.a.x)))) - 559f);
    var var_0 = global3.a;
    global1 = global3.c.x;
    let var_1 = _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(1u, max(~1u, _wgslsmith_sub_u32(u_input.a, u_input.e.x)), 44321u, ~(~u_input.a))), ~(~_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a)), vec4<u32>(u_input.e.x, 4294967295u, 1u, 4294967295u))));
    global2 = array<vec4<f32>, 26>();
    var var_2 = global3.b.x;
    var var_3 = func_1();
    var_2 = var_3.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.zw, ~var_3.c.x);
}

