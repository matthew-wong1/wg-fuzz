struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: vec3<bool>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: Struct_3,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec2<i32>, 6> = array<vec2<i32>, 6>(vec2<i32>(-33434i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -26278i), vec2<i32>(57141i, -10531i), vec2<i32>(47713i, 0i), vec2<i32>(2147483647i, 1i), vec2<i32>(0i, 65159i));

var<private> global2: Struct_1 = Struct_1(vec3<bool>(false, false, true));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: Struct_4) -> vec4<f32> {
    let var_0 = select(vec3<i32>(abs(arg_0 ^ (arg_2.c.a.d & -1i)), arg_1.a.d, -50108i), ~vec3<i32>(~arg_2.c.a.d, -u_input.d, _wgslsmith_sub_i32(u_input.c.x, 0i)) | min(vec3<i32>(-29001i, 10885i, -1i) ^ max(vec3<i32>(arg_0, arg_1.a.d, 0i), vec3<i32>(u_input.c.x, 25566i, u_input.d)), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, -52415i, -5685i), vec3<i32>(-1i, arg_0, -8683i), vec3<i32>(global0.a.d, -6950i, arg_2.c.a.d)), vec3<i32>(36736i, arg_0, arg_2.a.d) | vec3<i32>(arg_0, 2147483647i, global0.a.d), select(arg_1.a.c, vec3<bool>(global2.a.x, false, true), global0.a.b))), global2.a.x != ((true && (10316u <= u_input.b.x)) || (!global0.c && true)));
    var var_1 = ~10574u;
    global1 = array<vec2<i32>, 6>();
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(global0.a.a)))), global0.a.a.x >= _wgslsmith_div_f32(362f, _wgslsmith_f_op_f32(global0.a.a.x + -506f)), vec3<bool>(false, true, !(!any(arg_1.a.c.yx))), -10759i);
    let var_3 = !global2.a.zy;
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(global0.a.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(var_2.a)))), select(vec4<bool>(arg_2.b, global2.a.x, true, true), !select(vec4<bool>(global2.a.x, true, global0.a.c.x, var_3.x), vec4<bool>(arg_2.c.a.c.x, arg_2.c.c, false, true), true), false)))));
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_2 {
    var var_0 = arg_0;
    let var_1 = global0.b.x;
    global1 = array<vec2<i32>, 6>();
    global0 = Struct_3(global0.a, u_input.b.ywz, global2.a.x);
    global1 = array<vec2<i32>, 6>();
    return Struct_2(_wgslsmith_f_op_vec4_f32(func_3(~_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(global0.a.d, u_input.c.x, 25883i, 274i)), vec4<i32>(arg_1, -10332i, arg_1, global0.a.d) << (vec4<u32>(u_input.b.x, 4562u, u_input.b.x, 97550u) % vec4<u32>(32u))), Struct_3(Struct_2(vec4<f32>(608f, global0.a.a.x, arg_0, 389f), global0.c, vec3<bool>(global2.a.x, true, true), -global0.a.d), ~u_input.b.xzz, true), Struct_4(global0.a, global0.a.b, Struct_3(Struct_2(global0.a.a, global0.c, vec3<bool>(global0.c, global2.a.x, global0.a.b), 1i), ~vec3<u32>(26191u, u_input.b.x, global0.b.x), true), Struct_1(global2.a)))), any(vec3<bool>(true, u_input.b.x < ~1u, any(select(global0.a.c, global2.a, global2.a)))), vec3<bool>(all(select(vec4<bool>(global0.a.b, global0.a.c.x, global2.a.x, global0.c), vec4<bool>(global0.a.c.x, false, false, false), select(vec4<bool>(global2.a.x, true, global0.a.c.x, global0.a.c.x), vec4<bool>(global2.a.x, global2.a.x, global0.a.c.x, true), false))), _wgslsmith_mod_u32(25331u, ~global0.b.x) <= ~(~4433u), true), -2147483647i);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: Struct_2) -> Struct_4 {
    let var_0 = Struct_4(global0.a, true, Struct_3(global0.a, ~u_input.b.ywy, func_2(arg_0.x, 2147483647i | global0.a.d).b), Struct_1(select(select(!arg_2.c, vec3<bool>(true, false, false), func_2(global0.a.a.x, -1i).c), func_2(arg_0.x, 1i).c, any(select(arg_3.c.yx, vec2<bool>(false, false), true)))));
    let var_1 = -vec4<i32>(select(_wgslsmith_clamp_i32(1i, arg_3.d, ~u_input.d), global0.a.d, true), 0i, firstLeadingBit(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, -2147483647i, 27728i, -3509i), _wgslsmith_clamp_vec4_i32(vec4<i32>(global0.a.d, -2147483647i, arg_3.d, -2147483647i), vec4<i32>(global0.a.d, arg_3.d, -1i, 0i), vec4<i32>(u_input.d, arg_3.d, -1i, arg_3.d)))), func_2(var_0.a.a.x, -(~arg_3.d)).d);
    var var_2 = 0u;
    var_2 = arg_1.x;
    let var_3 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(103f, -1707f, var_0.a.a.x, global0.a.a.x) * vec4<f32>(arg_3.a.x, arg_3.a.x, 934f, arg_3.a.x)), arg_3.a)), var_0.a.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_3.a - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, -871f, arg_3.a.x, arg_2.a.x), var_0.a.a, true))), global0.a.a)), var_0.a.c.x, arg_3.c, _wgslsmith_dot_vec2_i32(vec2<i32>(~var_1.x, var_0.c.a.d), ~vec2<i32>(global0.a.d, firstTrailingBit(-75197i))));
    return Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -292f), _wgslsmith_f_op_vec4_f32(func_3(u_input.c.x, var_0.c, var_0)).x, _wgslsmith_f_op_f32(-arg_2.a.x), var_0.a.a.x)), (~var_0.c.b.x & _wgslsmith_sub_u32(var_0.c.b.x, 31637u)) < 71475u, var_3.c, 0i), true, Struct_3(func_2(-1410f, var_1.x), _wgslsmith_mult_vec3_u32(vec3<u32>(~u_input.b.x, _wgslsmith_mult_u32(5257u, 7637u), ~61600u), vec3<u32>(~u_input.e, _wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(arg_1.x, 6840u, 4294967295u, 95719u)), ~12414u)), false), Struct_1(!var_3.c));
}

fn func_5(arg_0: i32, arg_1: Struct_4) -> Struct_4 {
    var var_0 = vec3<u32>(~0u, 1u, max(u_input.e, 4294967295u));
    global2 = arg_1.d;
    global2 = arg_1.d;
    global0 = arg_1.c;
    var var_1 = u_input.d;
    return arg_1;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: bool) -> i32 {
    global1 = array<vec2<i32>, 6>();
    let var_0 = func_5(-1i, func_4(global0.a.a.xwz, min(_wgslsmith_mult_vec4_u32(~u_input.b, u_input.b), _wgslsmith_mult_vec4_u32(vec4<u32>(19585u, 43671u, global0.b.x, 1u), min(u_input.b, u_input.b))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1013f * global0.a.a.x)), _wgslsmith_mod_i32(u_input.a, arg_1)), global0.a));
    var var_1 = var_0.c.a.c;
    var var_2 = _wgslsmith_f_op_vec3_f32(-func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.a.x * var_0.a.a.x)), -_wgslsmith_mult_i32(~var_0.a.d, _wgslsmith_dot_vec2_i32(u_input.c, u_input.c))).a.xzw);
    let var_3 = var_0.c.a.d;
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 59472i;
    var var_1 = vec2<i32>(~_wgslsmith_clamp_i32(reverseBits(reverseBits(u_input.c.x)), _wgslsmith_clamp_i32(max(0i, global0.a.d), _wgslsmith_sub_i32(u_input.a, 2147483647i), u_input.c.x), func_1(u_input.b.x, -71252i, !global0.c)), ~(~0i));
    let var_2 = vec4<f32>(global0.a.a.x, 470f, -973f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.a.x, global0.a.a.x)), _wgslsmith_f_op_f32(round(-1128f)))));
    let var_3 = Struct_3(Struct_2(var_2, all(select(vec4<bool>(true, false, true, global0.c), select(vec4<bool>(global2.a.x, true, global2.a.x, false), vec4<bool>(global2.a.x, false, global0.c, global2.a.x), vec4<bool>(false, global2.a.x, global2.a.x, global0.a.c.x)), select(vec4<bool>(global0.a.c.x, true, global0.a.c.x, false), vec4<bool>(true, global0.c, global2.a.x, global0.a.c.x), vec4<bool>(false, global2.a.x, global2.a.x, true)))), select(global2.a, !func_2(var_2.x, -1i).c, !(!global2.a)), select(var_1.x, 0i, any(global0.a.c))), firstTrailingBit(~global0.b), !(561f <= _wgslsmith_f_op_f32(sign(779f))));
    var var_4 = vec2<bool>(global0.b.x > select(_wgslsmith_sub_u32(min(var_3.b.x, var_3.b.x), ~global0.b.x), func_4(global0.a.a.ywz, select(vec4<u32>(var_3.b.x, u_input.e, u_input.e, 12365u), u_input.b, false), func_5(-1i, Struct_4(Struct_2(vec4<f32>(var_3.a.a.x, var_3.a.a.x, 887f, 2111f), true, global2.a, -23671i), true, var_3, Struct_1(vec3<bool>(true, global0.a.c.x, global0.a.b)))).a, func_4(vec3<f32>(-195f, var_3.a.a.x, 992f), vec4<u32>(1u, global0.b.x, var_3.b.x, 55399u), var_3.a, Struct_2(vec4<f32>(var_2.x, -130f, var_3.a.a.x, 434f), var_3.a.c.x, vec3<bool>(global2.a.x, true, false), -25815i)).a).c.b.x, false), !(!(var_2.x == var_2.x)));
    global2 = Struct_1(!func_5(~(i32(-1i) * -2147483647i), func_5(3533i, Struct_4(global0.a, false, Struct_3(Struct_2(var_2, global0.c, vec3<bool>(false, global0.c, global0.a.c.x), 1i), vec3<u32>(4294967295u, 4294967295u, global0.b.x), true), Struct_1(global0.a.c)))).a.c);
    let x = u_input.a;
    s_output = StorageBuffer(83767u, select(~(~(~var_3.b.yx)), _wgslsmith_clamp_vec2_u32(var_3.b.zx, ~max(vec2<u32>(global0.b.x, u_input.b.x), vec2<u32>(global0.b.x, u_input.b.x)), var_3.b.xy), global0.c));
}

