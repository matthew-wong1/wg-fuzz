struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec4<bool>,
    d: Struct_2,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(Struct_1(1000f, 10810u), false, 1u), Struct_2(Struct_1(674f, 4294967295u), false, 1u), Struct_2(Struct_1(-2178f, 1u), true, 4294967295u), Struct_2(Struct_1(-1638f, 14761u), true, 1u), Struct_2(Struct_1(-790f, 0u), true, 39520u), Struct_2(Struct_1(-1123f, 1u), true, 4294967295u), Struct_2(Struct_1(1480f, 25412u), false, 1u), Struct_2(Struct_1(627f, 72242u), true, 3434u), Struct_2(Struct_1(-368f, 86911u), false, 4294967295u), Struct_2(Struct_1(212f, 363u), false, 32070u), Struct_2(Struct_1(-943f, 4294967295u), false, 39125u), Struct_2(Struct_1(290f, 1u), false, 7131u), Struct_2(Struct_1(865f, 1u), true, 1u), Struct_2(Struct_1(618f, 4294967295u), false, 25361u), Struct_2(Struct_1(-503f, 1u), false, 0u), Struct_2(Struct_1(482f, 87478u), true, 15489u), Struct_2(Struct_1(349f, 46862u), true, 0u), Struct_2(Struct_1(-651f, 0u), true, 31413u), Struct_2(Struct_1(-1827f, 28046u), false, 4294967295u));

var<private> global2: Struct_1 = Struct_1(1000f, 0u);

var<private> global3: array<vec2<i32>, 25>;

var<private> global4: array<f32, 26>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_3) -> f32 {
    global0 = Struct_5(true, 0i, ~firstLeadingBit(~_wgslsmith_add_vec2_u32(arg_1, vec2<u32>(4294967295u, u_input.c))));
    var var_0 = arg_2;
    var var_1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.a.a))), reverseBits(_wgslsmith_mult_u32(14290u, abs(93414u)))), -376f);
    let var_2 = Struct_4(Struct_1(global4[_wgslsmith_index_u32(93576u, 26u)], 15392u), _wgslsmith_f_op_f32(1056f - _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(abs(abs(var_0.d.c)), 26u)])));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) + -134f))) + 1014f));
}

fn func_2(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_4, arg_3: bool) -> i32 {
    global3 = array<vec2<i32>, 25>();
    var var_0 = vec3<f32>(arg_2.a.a, _wgslsmith_f_op_f32(func_3(reverseBits(global2.b), global0.c << (~vec2<u32>(global0.c.x, 0u) % vec2<u32>(32u)), Struct_3(-41884i, global0.b, select(!vec4<bool>(false, arg_1.x, global0.a, true), !vec4<bool>(false, global0.a, false, arg_1.x), !vec4<bool>(false, arg_3, true, true)), global1[_wgslsmith_index_u32(74916u, 19u)], vec3<bool>(arg_1.x, !arg_1.x, !arg_3)))), -748f);
    let var_1 = !select(!(!(!vec2<bool>(arg_1.x, true))), arg_1.yz, true);
    var var_2 = 17565i;
    var_2 = 1i;
    return global0.b;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = ~((select(select(vec4<u32>(u_input.c, 1u, 24935u, arg_1.b), vec4<u32>(35421u, 42260u, 0u, global2.b), arg_0.c), vec4<u32>(global0.c.x, global2.b, 1u, arg_0.d.c) | vec4<u32>(arg_0.d.c, 0u, global0.c.x, global0.c.x), arg_0.c) << (vec4<u32>(1u, 0u, global0.c.x ^ 84341u, ~7858u) % vec4<u32>(32u))) & max(~(~vec4<u32>(arg_1.b, arg_0.d.a.b, 18616u, global2.b)), ~_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.d.a.b, global2.b, 20811u, u_input.c), vec4<u32>(13980u, 0u, 4294967295u, 30410u))));
    let var_1 = 31081u;
    let var_2 = true;
    let var_3 = arg_0;
    global1 = array<Struct_2, 19>();
    return Struct_1(_wgslsmith_f_op_f32(global2.a + 2261f), 1u);
}

fn func_1(arg_0: Struct_5, arg_1: u32, arg_2: Struct_4) -> Struct_5 {
    var var_0 = Struct_2(func_4(Struct_3(_wgslsmith_add_i32(-1i, func_2(18385i, vec3<bool>(global0.a, false, false), arg_2, global0.a)), _wgslsmith_clamp_i32(abs(arg_0.b), 1i << (1u % 32u), 1i), !select(vec4<bool>(arg_0.a, arg_0.a, global0.a, global0.a), vec4<bool>(true, true, true, false), false), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.x, arg_1), vec2<u32>(u_input.c, 0u)), 19u)], !vec3<bool>(false, arg_0.a, true)), Struct_1(-603f, 1u), !select(vec2<bool>(global0.a, true), select(vec2<bool>(arg_0.a, global0.a), vec2<bool>(false, global0.a), arg_0.a), vec2<bool>(false, false))), all(!(!select(vec3<bool>(arg_0.a, false, true), vec3<bool>(arg_0.a, false, false), false))), max(30331u, abs(~global2.b)));
    global1 = array<Struct_2, 19>();
    global0 = Struct_5(true, global0.b, ~vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(10846u, 4294967295u, var_0.c, 38543u), abs(vec4<u32>(61620u, global0.c.x, 24237u, 4294967295u))), ~(~0u)));
    var var_1 = abs(reverseBits(~(~(~vec4<u32>(global2.b, global2.b, arg_1, 40043u)))));
    var var_2 = vec3<u32>(~select(abs(u_input.c), abs(var_0.c), false), _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(22936u, 1u, arg_0.c.x, arg_1), vec4<u32>(arg_1, 1u, arg_0.c.x, arg_2.a.b)), _wgslsmith_mod_vec4_u32(~vec4<u32>(0u, arg_2.a.b, arg_2.a.b, 48786u), ~(~vec4<u32>(var_0.c, global0.c.x, 56049u, var_1.x)))), 95546u);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1625f), max(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(52064u, 0u, global2.b) << (u_input.b % vec3<u32>(32u))), u_input.b), ~(~_wgslsmith_clamp_u32(1u, global2.b, 4294967295u))));
    global3 = array<vec2<i32>, 25>();
    let var_1 = 425f;
    var var_2 = func_1(Struct_5(!(u_input.a == 82087u) || false, -_wgslsmith_add_i32(max(global0.b, global0.b), global0.b >> (var_0.b % 32u)), max(abs(vec2<u32>(1u, 0u)), u_input.b.xx)), ~min(u_input.b.x, u_input.c), Struct_4(Struct_1(-849f, abs(~var_0.b)), -679f));
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-623f, global2.a), global4[_wgslsmith_index_u32(~firstLeadingBit(global2.b), 26u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(1000f)))), -176f), vec4<f32>(-1100f, 1169f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(ceil(1099f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a, -285f, var_1, 896f) + vec4<f32>(-1193f, 376f, -786f, global2.a)), vec4<f32>(-145f, -1843f, global2.a, global2.a))))));
    var var_4 = var_3.xwy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(global4[_wgslsmith_index_u32(var_2.c.x, 26u)])), min(firstTrailingBit(min(vec4<i32>(global0.b, -2147483647i, global0.b, 1i), vec4<i32>(global0.b, var_2.b, global0.b, 1i))), abs(firstLeadingBit(vec4<i32>(var_2.b, 17385i, var_2.b, 1i)) << (vec4<u32>(u_input.b.x, 4294967295u, global2.b, global2.b) % vec4<u32>(32u)))), 4294967295u, vec4<u32>(abs(max(~20560u, min(32401u, 18783u))), var_2.c.x, 1u, _wgslsmith_clamp_u32(1u, ~0u, 4294967295u) | 0u), ~reverseBits(_wgslsmith_sub_u32(var_2.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 34583u, var_2.c.x, 33789u), vec4<u32>(47778u, 1u, global0.c.x, 27077u)))));
}

