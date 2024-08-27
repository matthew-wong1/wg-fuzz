struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_2,
    d: vec3<i32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(595f, -543f);

var<private> global1: vec2<bool>;

var<private> global2: vec4<bool>;

var<private> global3: vec2<bool>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: Struct_3, arg_1: f32) -> Struct_2 {
    var var_0 = 45539u;
    global3 = global2.yx;
    let var_1 = vec4<bool>(!(!(!select(false, global2.x, arg_0.c.b.b.x))), global1.x, all(arg_0.c.b.b.xz), !arg_0.c.b.b.x);
    let var_2 = select(select(var_1, vec4<bool>(any(select(var_1, vec4<bool>(arg_0.c.b.b.x, global2.x, var_1.x, true), var_1)), false, u_input.a.x < select(arg_0.c.e.x, -2147483647i, arg_0.c.b.b.x), true), true && ((global3.x || false) || false)), !var_1, !select(!vec4<bool>(false, global2.x, true, true), !var_1, true));
    var var_3 = select(select(!vec3<bool>(global3.x, all(arg_0.c.b.b), arg_0.c.b.b.x), vec3<bool>(true, all(var_1), _wgslsmith_add_i32(arg_0.c.c, 1i) == _wgslsmith_mult_i32(1939i, -1092i)), true), var_2.zwx, select(vec3<bool>(true, var_1.x || !arg_0.c.b.b.x, all(!vec3<bool>(var_1.x, global2.x, var_2.x))), var_2.zxz, vec3<bool>(!(var_2.x | false), true, var_1.x)));
    return Struct_2(arg_1, Struct_1(~(~arg_0.c.b.a & arg_0.c.b.a), select(!select(var_1.zzy, var_2.ywy, arg_0.c.b.b), var_1.xwy, vec3<bool>(all(vec3<bool>(true, false, var_1.x)), arg_0.c.a >= arg_0.b, arg_0.c.b.b.x))), 7350i, 0i, arg_0.c.e);
}

fn func_3(arg_0: Struct_4, arg_1: vec2<u32>) -> bool {
    var var_0 = _wgslsmith_div_i32(-1i, u_input.a.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(-arg_0.b);
    var var_2 = 4294967295u;
    var var_3 = arg_0.c;
    global1 = arg_0.e.c.b.b.zx;
    return true;
}

fn func_2(arg_0: vec4<u32>) -> Struct_3 {
    let var_0 = global0.x;
    var var_1 = vec4<i32>(_wgslsmith_add_i32(1i, select(u_input.c.x, 2147483647i, !(!global1.x))), u_input.c.x, i32(-1i) * -u_input.a.x, u_input.a.x);
    global2 = vec4<bool>(!func_1(Struct_3(abs(14357u), _wgslsmith_f_op_f32(125f * global0.x), Struct_2(global0.x, Struct_1(vec2<u32>(arg_0.x, 33730u), global2.zwy), var_1.x, u_input.a.x, vec4<i32>(-33115i, -8347i, 33277i, var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-246f + global0.x))).b.b.x, func_1(Struct_3(u_input.b, 801f, Struct_2(_wgslsmith_f_op_f32(2304f - global0.x), func_1(Struct_3(25556u, -1371f, Struct_2(289f, Struct_1(arg_0.yx, vec3<bool>(global2.x, false, false)), 1476i, 91749i, vec4<i32>(-2147483647i, var_1.x, u_input.c.x, 2147483647i))), global0.x).b, -1i, firstLeadingBit(u_input.a.x), vec4<i32>(var_1.x, u_input.c.x, 1i, 87161i) << (vec4<u32>(0u, 4294967295u, arg_0.x, u_input.b) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(-global0.x)).b.b.x, !global3.x, func_3(Struct_4(Struct_2(global0.x, Struct_1(arg_0.xx, vec3<bool>(true, global3.x, true)), var_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.c.x, 6575i), vec4<i32>(u_input.a.x, u_input.c.x, -16373i, var_1.x)), select(vec4<i32>(-32461i, u_input.c.x, 1i, var_1.x), vec4<i32>(-2147483647i, var_1.x, var_1.x, u_input.c.x), global3.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 169f) - vec2<f32>(global0.x, -1951f))), func_1(Struct_3(u_input.b, global0.x, Struct_2(global0.x, Struct_1(vec2<u32>(4366u, 27788u), vec3<bool>(false, global2.x, global1.x)), 38473i, u_input.a.x, vec4<i32>(var_1.x, var_1.x, u_input.a.x, 28810i))), global0.x), firstTrailingBit(vec3<i32>(var_1.x, 39931i, var_1.x)), Struct_3(22208u, _wgslsmith_f_op_f32(3017f * global0.x), func_1(Struct_3(arg_0.x, -751f, Struct_2(global0.x, Struct_1(vec2<u32>(u_input.b, 52707u), global2.xyy), var_1.x, var_1.x, vec4<i32>(var_1.x, u_input.c.x, u_input.c.x, -1i))), -987f))), ~(~vec2<u32>(48307u, u_input.b))));
    let var_2 = func_1(Struct_3(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~arg_0.yw, ~vec2<u32>(arg_0.x, 0u)), arg_0.zx), 394f, Struct_2(-1000f, Struct_1(vec2<u32>(0u, 26418u), global2.wyx), -2147483647i, u_input.c.x, vec4<i32>(-u_input.c.x, abs(u_input.a.x), i32(-1i) * -23026i, u_input.c.x))), global0.x);
    let var_3 = global3.x;
    return Struct_3(53846u, _wgslsmith_f_op_f32(-func_1(Struct_3(~arg_0.x, -679f, Struct_2(-423f, var_2.b, var_1.x, var_1.x, var_2.e)), var_2.a).a), func_1(Struct_3(var_2.b.a.x, 260f, var_2), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -897f)), -300f)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: vec2<f32>) -> bool {
    var var_0 = !vec3<bool>(false, 27420u <= arg_2.a, !global1.x);
    global3 = vec2<bool>(!arg_2.c.b.b.x, false);
    let var_1 = all(vec4<bool>(all(!func_1(Struct_3(0u, -1254f, Struct_2(-2090f, Struct_1(vec2<u32>(u_input.b, arg_2.a), vec3<bool>(var_0.x, false, global1.x)), arg_2.c.e.x, 26196i, arg_2.c.e)), arg_0.a).b.b.yx), !any(select(vec3<bool>(true, false, global3.x), arg_0.b.b, arg_0.b.b)), !(!(false && arg_0.b.b.x)), global1.x & (all(arg_0.b.b.xx) || func_3(Struct_4(Struct_2(542f, arg_2.c.b, arg_2.c.c, arg_0.d, vec4<i32>(-2147483647i, u_input.a.x, arg_0.d, 16719i)), vec2<f32>(1134f, arg_0.a), Struct_2(arg_0.a, arg_0.b, arg_2.c.c, arg_2.c.c, vec4<i32>(-2147483647i, arg_0.d, u_input.a.x, arg_2.c.d)), vec3<i32>(u_input.c.x, 1i, 21375i), Struct_3(4294967295u, arg_0.a, arg_0)), arg_2.c.b.a))));
    let var_2 = arg_2.c.b;
    let var_3 = !global1.x;
    return ~u_input.c.x > _wgslsmith_add_i32(0i, 8377i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_i32(select(u_input.a.x, u_input.a.x | (i32(-1i) * -3153i), true), u_input.c.x);
    global3 = !global2.xy;
    let var_1 = true;
    global1 = vec2<bool>(any(select(select(!vec2<bool>(var_1, false), select(vec2<bool>(global2.x, global2.x), global2.zw, false), true), global2.wz, all(vec4<bool>(global1.x, false, var_1, true)))), any(vec2<bool>(!any(vec4<bool>(global1.x, false, false, global1.x)), false)));
    let var_2 = select(vec3<bool>(true, !any(vec3<bool>(false, global2.x, true)), global1.x), global2.zxz, vec3<bool>(global2.x, func_4(func_1(Struct_3(63028u, global0.x, Struct_2(global0.x, Struct_1(vec2<u32>(4294967295u, u_input.b), global2.xyx), -2147483647i, -45998i, vec4<i32>(u_input.c.x, -27159i, -26397i, -1i))), _wgslsmith_f_op_f32(global0.x * global0.x)), vec2<u32>(1u, ~1u), func_2(abs(vec4<u32>(4294967295u, u_input.b, 43504u, 25387u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1114f, -431f))), true));
    var var_3 = Struct_1(~max(abs(vec2<u32>(u_input.b, 23793u)), _wgslsmith_add_vec2_u32(~vec2<u32>(1u, 1u), select(vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 42365u), global1.x))), !func_1(Struct_3(max(u_input.b, 0u), -1783f, func_1(Struct_3(u_input.b, global0.x, Struct_2(global0.x, Struct_1(vec2<u32>(87733u, 15481u), vec3<bool>(true, false, true)), 0i, 35449i, vec4<i32>(0i, u_input.a.x, -1747i, -23423i))), 1489f)), 1222f).b.b);
    let var_4 = Struct_1(_wgslsmith_sub_vec2_u32(firstLeadingBit(~var_3.a), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 20098u), ~var_3.a)) ^ reverseBits(~var_3.a), vec3<bool>(false, global2.x, !var_1));
    global0 = vec2<f32>(global0.x, global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~abs(vec3<u32>(91920u, 87702u, var_4.a.x)), _wgslsmith_add_vec3_u32(max(vec3<u32>(var_3.a.x, 12444u, u_input.b), vec3<u32>(u_input.b, 1u, 1u)), vec3<u32>(1u, 0u, 47203u))), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_3.a.x, u_input.b, var_4.a.x), vec3<u32>(1u, var_3.a.x, 1u)), _wgslsmith_sub_vec3_u32(vec3<u32>(44950u, var_4.a.x, 14269u), vec3<u32>(55250u, 9935u, var_3.a.x))), vec3<u32>(0u, countOneBits(var_3.a.x), ~32512u))), vec2<u32>(var_3.a.x, ~(4294967295u | var_3.a.x)), u_input.a, -var_0);
}

