struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(i32(-2147483648), vec3<u32>(12200u, 30450u, 4294967295u), vec4<bool>(true, false, false, false)), Struct_1(27895i, vec3<u32>(30064u, 1u, 1u), vec4<bool>(true, false, true, true)), Struct_1(-2242i, vec3<u32>(50682u, 42677u, 4294967295u), vec4<bool>(true, true, true, false)), Struct_1(-6372i, vec3<u32>(50894u, 4294967295u, 23116u), vec4<bool>(false, true, false, false)), Struct_1(-1i, vec3<u32>(4294967295u, 2098u, 0u), vec4<bool>(false, false, true, true)), Struct_1(-23775i, vec3<u32>(0u, 0u, 41613u), vec4<bool>(true, true, false, false)), Struct_1(-26972i, vec3<u32>(42017u, 58716u, 0u), vec4<bool>(false, false, true, true)), Struct_1(0i, vec3<u32>(66975u, 9820u, 0u), vec4<bool>(false, true, false, false)), Struct_1(-22326i, vec3<u32>(85505u, 40290u, 0u), vec4<bool>(false, true, false, false)), Struct_1(-64133i, vec3<u32>(4294967295u, 0u, 1u), vec4<bool>(true, true, true, false)), Struct_1(2147483647i, vec3<u32>(28803u, 124320u, 42760u), vec4<bool>(false, true, true, false)), Struct_1(2147483647i, vec3<u32>(1u, 4294967295u, 17164u), vec4<bool>(true, true, false, true)), Struct_1(1i, vec3<u32>(4294967295u, 0u, 4294967295u), vec4<bool>(false, true, false, false)), Struct_1(11936i, vec3<u32>(43250u, 527u, 107857u), vec4<bool>(true, false, false, false)), Struct_1(2147483647i, vec3<u32>(1u, 4294967295u, 4294967295u), vec4<bool>(false, false, false, true)), Struct_1(-62319i, vec3<u32>(1u, 1u, 0u), vec4<bool>(false, false, true, false)), Struct_1(2147483647i, vec3<u32>(4294967295u, 25705u, 4294967295u), vec4<bool>(false, false, true, false)), Struct_1(-1i, vec3<u32>(34763u, 26840u, 65052u), vec4<bool>(true, true, true, false)), Struct_1(-37656i, vec3<u32>(4294967295u, 0u, 0u), vec4<bool>(false, true, true, true)), Struct_1(1i, vec3<u32>(36239u, 4294967295u, 1u), vec4<bool>(false, true, false, false)), Struct_1(52479i, vec3<u32>(4294967295u, 1u, 1u), vec4<bool>(true, true, true, false)), Struct_1(0i, vec3<u32>(1u, 29632u, 0u), vec4<bool>(true, false, false, true)), Struct_1(10293i, vec3<u32>(4294967295u, 1u, 13735u), vec4<bool>(true, false, false, true)));

var<private> global1: array<vec3<i32>, 5>;

var<private> global2: Struct_1 = Struct_1(68213i, vec3<u32>(33491u, 11362u, 34958u), vec4<bool>(false, false, false, true));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: i32) -> f32 {
    var var_0 = Struct_1(-7361i, global2.b, !(!global2.c));
    var var_1 = _wgslsmith_sub_i32(-(global2.a << (8204u % 32u)) & abs(-arg_2), -44131i);
    var var_2 = Struct_1(-24818i, _wgslsmith_div_vec3_u32(vec3<u32>(19326u, 1u, ~0u), global2.b), select(select(select(select(global2.c, global2.c, true), !vec4<bool>(false, true, global2.c.x, true), any(global2.c.yy)), global2.c, !(!var_0.c)), vec4<bool>(true, all(!vec3<bool>(global2.c.x, global2.c.x, false)), global2.c.x, true), select(!select(global2.c, vec4<bool>(false, var_0.c.x, true, true), var_0.c.x), select(!vec4<bool>(true, true, global2.c.x, global2.c.x), !var_0.c, any(global2.c.xxw)), var_0.c)));
    var_0 = Struct_1(-global2.a, vec3<u32>(1u, 4294967295u, ~(~_wgslsmith_div_u32(arg_1, var_0.b.x))), !global2.c);
    var var_3 = Struct_2(global0[_wgslsmith_index_u32(0u, 23u)]);
    return _wgslsmith_f_op_f32(f32(-1f) * -1615f);
}

fn func_2(arg_0: Struct_1) -> vec4<f32> {
    let var_0 = Struct_2(arg_0);
    let var_1 = _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(678f, -317f) * vec2<f32>(-1038f, 2385f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1888f, 236f) + vec2<f32>(455f, 145f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -149f))))), true)), 5463u, _wgslsmith_mult_i32(global2.a, 1i)));
    global0 = array<Struct_1, 23>();
    global2 = var_0.a;
    let var_2 = ~global2.b;
    return vec4<f32>(-1000f, 302f, var_1, var_1);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: Struct_2) -> vec4<f32> {
    let var_0 = !((!(arg_1.x <= arg_3.a.b.x) | (_wgslsmith_f_op_f32(718f * arg_2.x) < _wgslsmith_f_op_vec4_f32(func_2(Struct_1(0i, arg_3.a.b, vec4<bool>(true, false, arg_3.a.c.x, global2.c.x)))).x)) & any(select(!vec3<bool>(false, false, arg_3.a.c.x), vec3<bool>(true, global2.c.x, global2.c.x), arg_3.a.c.xxz)));
    global0 = array<Struct_1, 23>();
    global1 = array<vec3<i32>, 5>();
    let var_1 = global0[_wgslsmith_index_u32(~4294967295u, 23u)];
    let var_2 = u_input.b.xz;
    return _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1062f, arg_2.x, arg_0.x, 480f))))))), _wgslsmith_f_op_vec4_f32(step(arg_0, _wgslsmith_f_op_vec4_f32(arg_0 + _wgslsmith_div_vec4_f32(arg_0, arg_0)))));
}

fn func_5(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-arg_0.x);
    let var_1 = vec4<bool>(!((4294967295u != _wgslsmith_mod_u32(u_input.d.x, global2.b.x)) & !(!global2.c.x)), false, all(select(vec3<bool>(true, true, true), !global2.c.zyy, select(!global2.c.yxx, !global2.c.yxz, global2.c.x & global2.c.x))), any(vec3<bool>(global2.c.x, _wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(global2.b.x, 5u)], u_input.b.wzy) == (u_input.b.x & 0i), any(vec2<bool>(false, global2.c.x)))));
    global1 = array<vec3<i32>, 5>();
    let var_2 = !global2.c.wxw;
    let var_3 = global0[_wgslsmith_index_u32(u_input.d.x, 23u)];
    return Struct_1(-_wgslsmith_sub_i32(~(-1i), ~global2.a), var_3.b, var_1);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1) -> vec4<bool> {
    global2 = func_5(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(global0[_wgslsmith_index_u32(4294967295u, 23u)])), _wgslsmith_div_vec4_f32(vec4<f32>(695f, -716f, -1080f, -1570f), vec4<f32>(2592f, -268f, 143f, -846f))), global2.b.xz, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-276f, -423f), vec2<f32>(1000f, 1000f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-447f, 3082f), vec2<f32>(-1011f, 737f), arg_1.c.yx)), !vec2<bool>(arg_1.c.x, arg_1.c.x))), Struct_2(global0[_wgslsmith_index_u32(1u, 23u)]))))));
    global2 = func_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-176f, 1230f, 1469f, -895f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-278f, -1000f, 1262f, 476f) * vec4<f32>(763f, 1609f, -686f, -1433f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1029f, -784f, -208f, -995f), vec4<f32>(-449f, 2006f, -198f, -387f))))));
    var var_0 = ~(arg_1.a << (1u % 32u));
    let var_1 = _wgslsmith_sub_u32(arg_1.b.x, ~(~_wgslsmith_mod_u32(45219u, arg_1.b.x))) >> (u_input.c % 32u);
    let var_2 = -19801i;
    return vec4<bool>(!(!arg_1.c.x), false, true, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.a;
    global0 = array<Struct_1, 23>();
    global2 = global0[_wgslsmith_index_u32(~26901u, 23u)];
    var var_1 = Struct_1(4961i, countOneBits(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.c, u_input.d.x), firstLeadingBit(global2.b)), max(vec3<u32>(u_input.d.x, u_input.c, 68792u), global2.b))), func_1(~((vec4<u32>(32747u, 7412u, 0u, 33037u) ^ vec4<u32>(0u, 78011u, 64939u, global2.b.x)) ^ (vec4<u32>(u_input.a, global2.b.x, u_input.c, global2.b.x) >> (vec4<u32>(1u, global2.b.x, u_input.c, 7339u) % vec4<u32>(32u)))), global0[_wgslsmith_index_u32(~0u, 23u)]));
    let var_2 = Struct_2(Struct_1(u_input.b.x, ~((vec3<u32>(23114u, 0u, 0u) & vec3<u32>(4294967295u, global2.b.x, global2.b.x)) & ~var_1.b), vec4<bool>(var_1.c.x, var_1.c.x, (5297u < global2.b.x) && true, false)));
    var var_3 = vec4<bool>(var_2.a.c.x, !any(func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(1636f, -1000f, -1830f, 1840f) - vec4<f32>(595f, 407f, -206f, 1064f))).c.yw), true, var_2.a.c.x);
    var_1 = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-636f, -1133f, 398f, -1027f) * vec4<f32>(450f, -1000f, -1000f, 1000f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(971f, -799f, 599f, 2168f))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a);
}

