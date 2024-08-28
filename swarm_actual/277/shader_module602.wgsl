struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: i32,
    d: vec4<bool>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 18928u;

var<private> global1: array<vec3<bool>, 19>;

var<private> global2: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(true, vec2<i32>(2147483647i, -1i), i32(-2147483648), vec4<bool>(false, false, true, true), vec3<f32>(-563f, -741f, -1000f)), Struct_2(true, vec2<i32>(53458i, -25979i), 2147483647i, vec4<bool>(true, false, true, false), vec3<f32>(-1718f, -823f, -151f)), Struct_2(false, vec2<i32>(2147483647i, i32(-2147483648)), -21640i, vec4<bool>(true, false, false, true), vec3<f32>(602f, 1000f, -366f)), Struct_2(true, vec2<i32>(2147483647i, -1i), i32(-2147483648), vec4<bool>(true, false, false, false), vec3<f32>(994f, 610f, 1126f)), Struct_2(true, vec2<i32>(-45383i, 11968i), -16669i, vec4<bool>(true, true, false, true), vec3<f32>(1025f, 3135f, 1000f)), Struct_2(true, vec2<i32>(0i, 17741i), 0i, vec4<bool>(false, false, false, true), vec3<f32>(-1445f, -264f, -848f)), Struct_2(false, vec2<i32>(1i, 1i), -5522i, vec4<bool>(false, true, false, true), vec3<f32>(392f, 295f, 1035f)), Struct_2(true, vec2<i32>(-24557i, 2728i), 2147483647i, vec4<bool>(false, true, false, true), vec3<f32>(-1094f, 1177f, -1111f)), Struct_2(true, vec2<i32>(1i, 0i), 2147483647i, vec4<bool>(false, false, true, false), vec3<f32>(-1149f, -339f, 952f)), Struct_2(true, vec2<i32>(15580i, 1717i), 48560i, vec4<bool>(true, false, false, true), vec3<f32>(611f, 1759f, -770f)), Struct_2(true, vec2<i32>(i32(-2147483648), 0i), 1i, vec4<bool>(true, true, false, false), vec3<f32>(-1000f, -345f, 238f)), Struct_2(true, vec2<i32>(1i, 1i), i32(-2147483648), vec4<bool>(false, true, true, true), vec3<f32>(985f, -262f, 1332f)), Struct_2(true, vec2<i32>(1i, 47859i), -48122i, vec4<bool>(true, false, false, true), vec3<f32>(-352f, -1000f, -138f)), Struct_2(true, vec2<i32>(35456i, -1i), 0i, vec4<bool>(true, false, true, true), vec3<f32>(427f, 196f, 1661f)), Struct_2(false, vec2<i32>(1i, 2147483647i), 9768i, vec4<bool>(true, false, false, true), vec3<f32>(-805f, 630f, 256f)), Struct_2(true, vec2<i32>(-11412i, i32(-2147483648)), i32(-2147483648), vec4<bool>(true, true, true, false), vec3<f32>(-233f, -682f, 1694f)));

var<private> global3: Struct_2 = Struct_2(false, vec2<i32>(-10150i, 26108i), 0i, vec4<bool>(true, false, false, true), vec3<f32>(-442f, 914f, 567f));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: i32) -> Struct_1 {
    global2 = array<Struct_2, 16>();
    return Struct_1(1355f, any(vec3<bool>(true, false, _wgslsmith_mod_u32(38670u, 69467u) <= u_input.c.x)), global3.d.x, u_input.c.x, vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~u_input.c.wz, u_input.c.zw), vec2<u32>(u_input.c.x, _wgslsmith_mult_u32(u_input.c.x, u_input.c.x))), 19484u, u_input.c.x));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32, arg_3: vec3<bool>) -> bool {
    var var_0 = arg_0;
    var var_1 = vec2<f32>(_wgslsmith_div_f32(1189f, 1271f), _wgslsmith_f_op_f32(-global3.e.x));
    global1 = array<vec3<bool>, 19>();
    let var_2 = arg_1;
    let var_3 = func_1(abs(_wgslsmith_mult_i32(~var_2.b.x, -9230i)));
    return select(0i > _wgslsmith_mod_i32(-1i, _wgslsmith_mult_i32(global3.c, global3.b.x)), abs(_wgslsmith_add_i32(~var_2.c, _wgslsmith_clamp_i32(-44212i, 1i, -2147483647i))) >= global3.c, arg_0.b);
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    global2 = array<Struct_2, 16>();
    let var_0 = arg_0.c || any(vec4<bool>(arg_0.b, false, func_3(func_1(global3.b.x), global2[_wgslsmith_index_u32(arg_0.e.x, 16u)], _wgslsmith_f_op_f32(f32(-1f) * -1665f), global1[_wgslsmith_index_u32(9667u, 19u)]), !(!global3.d.x)));
    let var_1 = u_input.c.xzw;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.e.x)) * _wgslsmith_f_op_f32(ceil(-312f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(f32(-1f) * -254f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-130f, global3.e.x)))));
    let var_3 = ~func_1(global3.c).e;
    return global3.d;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_mod_u32(4294967295u, u_input.c.x);
    let var_1 = all(global3.d.wyx);
    var var_2 = 4294967295u;
    let var_3 = _wgslsmith_f_op_vec3_f32(-global3.e);
    let var_4 = _wgslsmith_f_op_f32(floor(arg_1.a));
    return func_2(Struct_1(_wgslsmith_f_op_f32(529f + 418f), true, arg_1.c, arg_1.d, reverseBits(vec3<u32>(0u, abs(u_input.c.x), arg_1.d >> (0u % 32u))))).x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(!global3.a, false, false);
    let var_1 = global3.e;
    var var_2 = ~_wgslsmith_mod_u32(u_input.c.x, u_input.c.x) >> (1u % 32u);
    var_0 = global3.a;
    var var_3 = Struct_2(select(true, func_4(func_2(func_1(-2147483647i)), Struct_1(_wgslsmith_f_op_f32(var_1.x - -669f), u_input.b.x <= 2147483647i, !global3.d.x, ~u_input.c.x, ~vec3<u32>(25278u, u_input.c.x, u_input.c.x))), -5517i >= (global3.c & ~1i)), ~(vec2<i32>(-1i) * -abs(global3.b)), 2147483647i, !global3.d, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(141f, -322f, global3.e.x) - vec3<f32>(var_1.x, global3.e.x, global3.e.x)))))))));
    global3 = global2[_wgslsmith_index_u32(1u, 16u)];
    var_0 = abs(i32(-1i) * -2147483647i) >= (-2147483647i ^ (_wgslsmith_dot_vec4_i32(select(vec4<i32>(1i, 45300i, -2147483647i, u_input.a), vec4<i32>(-15058i, 48084i, 2147483647i, var_3.b.x), var_3.a), countOneBits(vec4<i32>(-2147483647i, -18495i, global3.b.x, var_3.b.x))) >> (min(_wgslsmith_mod_u32(u_input.c.x, u_input.c.x), u_input.c.x) % 32u)));
    let var_4 = !var_3.d.wxy;
    var var_5 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-323f, var_3.e.x, var_1.x, global3.e.x)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1467f, 1125f, 1250f, 1344f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.e.x, 1054f, -547f, -858f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(var_3.e.x * -111f)), var_1.x, var_3.e.x, _wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.e.x, global3.e.x, global3.e.x, 169f) - vec4<f32>(var_3.e.x, var_3.e.x, -374f, 748f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.c.zy & _wgslsmith_mod_vec2_u32(vec2<u32>(79733u, u_input.c.x), u_input.c.xw)) << (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x & 25514u, ~u_input.c.x), u_input.c.zx) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_3.e, var_3.e)));
}

