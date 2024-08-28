struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: bool,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 27> = array<vec4<i32>, 27>(vec4<i32>(-28185i, -21443i, -39270i, 2147483647i), vec4<i32>(-22535i, 2147483647i, 8220i, -15654i), vec4<i32>(-1i, i32(-2147483648), -1i, 1i), vec4<i32>(-1i, 61299i, i32(-2147483648), 2147483647i), vec4<i32>(8708i, 13040i, -63102i, -25969i), vec4<i32>(40991i, i32(-2147483648), -42737i, -41431i), vec4<i32>(-20429i, 2147483647i, 36979i, -1i), vec4<i32>(23177i, i32(-2147483648), -1i, -1i), vec4<i32>(-24716i, -6214i, 1i, 1i), vec4<i32>(i32(-2147483648), -56585i, 27386i, -21509i), vec4<i32>(-22971i, 1i, 1i, 1i), vec4<i32>(i32(-2147483648), i32(-2147483648), 8439i, 11635i), vec4<i32>(0i, -1i, 21213i, -24187i), vec4<i32>(-1i, 34139i, 0i, i32(-2147483648)), vec4<i32>(36195i, 5388i, 1i, -20502i), vec4<i32>(1i, 2147483647i, 0i, -22719i), vec4<i32>(1i, 56981i, 1i, -39527i), vec4<i32>(0i, 2147483647i, 32249i, -1i), vec4<i32>(0i, i32(-2147483648), 33970i, -1i), vec4<i32>(0i, 27548i, -1i, 14810i), vec4<i32>(-11809i, 0i, 17989i, 9425i), vec4<i32>(1i, i32(-2147483648), 1i, i32(-2147483648)), vec4<i32>(1i, 7890i, -1i, 1i), vec4<i32>(i32(-2147483648), -15862i, -78055i, -28584i), vec4<i32>(2147483647i, -19659i, 0i, 58264i), vec4<i32>(i32(-2147483648), -795i, 9011i, 2147483647i), vec4<i32>(i32(-2147483648), -12085i, 2147483647i, i32(-2147483648)));

var<private> global1: array<u32, 19>;

var<private> global2: array<Struct_3, 8>;

var<private> global3: vec4<f32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: u32) -> bool {
    let var_0 = !all(vec3<bool>(false, !(!arg_0), true));
    let var_1 = Struct_1(1i, ~(-(~(vec4<i32>(-36894i, 74344i, u_input.a, u_input.d.x) >> (vec4<u32>(4294967295u, arg_2, 11016u, 30041u) % vec4<u32>(32u))))), var_0, vec2<u32>(~min(4294967295u, ~1u), ~26255u));
    var var_2 = Struct_2(!select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, var_1.c, var_1.c), false), select(vec3<bool>(false, arg_1, true), vec3<bool>(var_1.c, arg_0, false), vec3<bool>(arg_1, var_1.c, arg_1)), false), !(!vec3<bool>(arg_0, arg_0, true)), arg_0), _wgslsmith_div_vec2_f32(global3.wz, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(global3.x - -771f), -1000f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global3.zx), _wgslsmith_f_op_vec2_f32(-global3.yy), !vec2<bool>(arg_0, true)))))));
    let var_3 = var_1;
    global0 = array<vec4<i32>, 27>();
    return any(var_2.a) == var_2.a.x;
}

fn func_2(arg_0: u32) -> Struct_3 {
    var var_0 = global3.x;
    var var_1 = Struct_4(Struct_2(vec3<bool>(true, ~global1[_wgslsmith_index_u32(0u, 19u)] > _wgslsmith_mult_u32(u_input.c, 45803u), true), _wgslsmith_f_op_vec2_f32(select(global3.xz, global3.xw, vec2<bool>(true, false)))), select(true, false, false) || any(vec4<bool>(true, true, false, func_3(true, false, global1[_wgslsmith_index_u32(arg_0, 19u)]))));
    return global2[_wgslsmith_index_u32(u_input.c, 8u)];
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: Struct_4) -> Struct_2 {
    global0 = array<vec4<i32>, 27>();
    let var_0 = ~select(vec3<u32>(~u_input.c, _wgslsmith_div_u32(~0u, arg_1), _wgslsmith_clamp_u32(firstTrailingBit(arg_1), ~arg_1, select(4294967295u, 99562u, arg_2.b))), vec3<u32>(~select(arg_1, global1[_wgslsmith_index_u32(34509u, 19u)], arg_0.c.x), _wgslsmith_sub_u32(u_input.c, 14362u), _wgslsmith_mod_u32(0u, arg_1) >> (1u % 32u)), vec3<bool>(!(arg_2.a.a.x != true), func_3(arg_2.a.b.x != arg_0.a.b.x, u_input.c >= arg_1, 1u), arg_0.a.a.x));
    global0 = array<vec4<i32>, 27>();
    global3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.b.x, global3.x, global3.x, arg_0.a.b.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.a.b.x, 1233f, 479f, 749f)))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-110f)), 869f), arg_0.a.b.x))));
    return func_2(_wgslsmith_add_u32(30760u, _wgslsmith_add_u32(25710u, countOneBits(0u) >> (firstLeadingBit(23207u) % 32u)))).a;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_3 {
    let var_0 = select(select(vec4<bool>(func_3(false, !arg_1.c, 0u), func_4(func_2(u_input.c), _wgslsmith_add_u32(u_input.c, global1[_wgslsmith_index_u32(32119u, 19u)]), Struct_4(Struct_2(arg_0.a.a, vec2<f32>(arg_0.a.b.x, arg_0.a.b.x)), arg_0.b)).a.x, true || !arg_1.c, arg_0.b), vec4<bool>(all(select(vec3<bool>(arg_1.c, true, false), vec3<bool>(arg_1.c, arg_0.b, false), arg_0.a.a)), !arg_0.b, true, true), select(select(select(vec4<bool>(arg_0.a.a.x, arg_0.b, true, arg_1.c), vec4<bool>(false, false, true, false), vec4<bool>(true, arg_0.b, arg_0.a.a.x, arg_0.a.a.x)), select(vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, arg_1.c, arg_1.c), vec4<bool>(false, arg_0.a.a.x, true, arg_1.c), false), !arg_0.b), select(!vec4<bool>(true, arg_0.a.a.x, arg_1.c, arg_1.c), !vec4<bool>(true, arg_1.c, false, arg_1.c), vec4<bool>(true, true, arg_1.c, false)), select(!vec4<bool>(arg_1.c, arg_1.c, arg_1.c, true), !vec4<bool>(arg_1.c, false, arg_0.b, false), all(arg_0.a.a.yx)))), !select(select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, arg_1.c, true, arg_1.c), vec4<bool>(arg_1.c, arg_1.c, arg_0.a.a.x, true), vec4<bool>(arg_1.c, false, false, true)), vec4<bool>(arg_1.c, arg_0.b, true, false)), vec4<bool>(any(vec4<bool>(arg_0.a.a.x, arg_1.c, arg_1.c, false)), func_2(1u).c.x, func_3(arg_1.c, arg_0.b, 20u), select(true, false, true)), false), all(!func_2(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(1u, 19u)], 31799u)).c));
    return func_2(abs(firstTrailingBit(u_input.c)));
}

fn func_1() -> Struct_2 {
    let var_0 = func_5(Struct_4(func_4(func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, 21406u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(33506u, 19u)], 19u)], 19u)], 19u)], 0u, u_input.c, u_input.c))), _wgslsmith_div_u32(~44766u, ~global1[_wgslsmith_index_u32(16159u, 19u)]), Struct_4(Struct_2(vec3<bool>(false, false, true), global3.xw), false)), (31699u | ~u_input.c) < ~_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(4419u, 19u)], global1[_wgslsmith_index_u32(1u, 19u)])), Struct_1(0i, firstTrailingBit(select(u_input.b, vec4<i32>(-2147483647i, 56080i, 1i, u_input.d.x), vec4<bool>(false, false, false, false))) >> (~abs(vec4<u32>(4294967295u, u_input.c, 70904u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 19u)], 19u)])) % vec4<u32>(32u)), false, ~(~reverseBits(vec2<u32>(u_input.c, u_input.c)))), global3.xy);
    var var_1 = var_0.a.a.xy;
    var var_2 = func_2(16467u).c.yy;
    var var_3 = var_0.a.a.yy;
    let var_4 = var_0.a;
    return func_4(var_0, u_input.c ^ _wgslsmith_clamp_u32(1u & abs(u_input.c), _wgslsmith_add_u32(~global1[_wgslsmith_index_u32(90717u, 19u)], firstTrailingBit(46522u)), 1u), Struct_4(func_2(global1[_wgslsmith_index_u32(~select(u_input.c, 36058u, var_2.x), 19u)]).a, var_1.x));
}

fn func_6(arg_0: bool, arg_1: u32, arg_2: Struct_2, arg_3: f32) -> Struct_4 {
    let var_0 = -_wgslsmith_clamp_vec4_i32(u_input.b, global0[_wgslsmith_index_u32(355u, 27u)], global0[_wgslsmith_index_u32(0u, 27u)]);
    let var_1 = Struct_1(~abs(reverseBits(~var_0.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, ~var_0.x, var_0.x, 2147483647i) | vec4<i32>(~u_input.b.x, var_0.x, var_0.x, _wgslsmith_sub_i32(2147483647i, var_0.x)), vec4<i32>(func_2(_wgslsmith_sub_u32(63463u, 0u)).b, _wgslsmith_div_i32(var_0.x, -u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.b.x, var_0.x), vec3<i32>(55026i, -1i, u_input.b.x)), _wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(~68248u, 27u)], ~vec4<i32>(u_input.b.x, -1i, 42719i, var_0.x)))), arg_0, _wgslsmith_add_vec2_u32(vec2<u32>(13167u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 19u)], 19u)], 19u)] ^ _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 1u), vec2<u32>(arg_1, u_input.c))), vec2<u32>(u_input.c, ~23635u) ^ vec2<u32>(4294967295u << (u_input.c % 32u), max(global1[_wgslsmith_index_u32(4724u, 19u)], 98766u))));
    let var_2 = _wgslsmith_mult_vec2_u32(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(13180u, 65437u), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 19u)], 19u)], 55301u))) >> (min(vec2<u32>(~var_1.d.x, 1u), ~select(var_1.d, vec2<u32>(1u, global1[_wgslsmith_index_u32(var_1.d.x, 19u)]), vec2<bool>(var_1.c, true))) % vec2<u32>(32u)), select(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c >> (813u % 32u), 34607u), var_1.d), vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(12494u, global1[_wgslsmith_index_u32(26377u, 19u)]), vec2<u32>(0u, 63674u)), u_input.c), !select(!arg_2.a.yx, arg_2.a.xy, vec2<bool>(arg_0, arg_2.a.x))));
    var var_3 = func_4(Struct_3(func_4(global2[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(38287u, 19u)], 8u)], ~abs(46076u), Struct_4(Struct_2(arg_2.a, global3.zx), !arg_0)), firstTrailingBit(-u_input.d.x ^ _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_1.a, var_1.a), var_0.yyx)), vec3<bool>(arg_2.a.x, true, false)), global1[_wgslsmith_index_u32(4294967295u, 19u)], Struct_4(arg_2, true));
    return Struct_4(Struct_2(vec3<bool>(all(vec3<bool>(false, var_1.c, var_3.a.x)), func_4(func_2(arg_1), _wgslsmith_add_u32(arg_1, 1u), Struct_4(arg_2, var_1.c)).a.x, var_1.c), _wgslsmith_f_op_vec2_f32(-arg_2.b)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(-u_input.b.x < -29700i, _wgslsmith_clamp_u32(~firstLeadingBit(~30320u), _wgslsmith_add_u32(u_input.c, u_input.c), u_input.c), func_1(), global3.x);
    var var_1 = Struct_2(var_0.a.a, vec2<f32>(var_0.a.b.x, _wgslsmith_f_op_f32(sign(-586f))));
    var var_2 = vec3<i32>(~func_2(0u).b, ~u_input.a, u_input.a);
    global2 = array<Struct_3, 8>();
    var var_3 = var_0.a;
    global2 = array<Struct_3, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(30446u, ~reverseBits(select(global1[_wgslsmith_index_u32(u_input.c, 19u)] | 7604u, u_input.c, !var_1.a.x)), _wgslsmith_mod_vec4_u32(min(~vec4<u32>(76502u, u_input.c, global1[_wgslsmith_index_u32(4294967295u, 19u)], u_input.c), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(u_input.c, 19u)], global1[_wgslsmith_index_u32(u_input.c, 19u)], global1[_wgslsmith_index_u32(u_input.c, 19u)], u_input.c), vec4<u32>(85852u, u_input.c, 4294967295u, 0u)), firstTrailingBit(vec4<u32>(u_input.c, global1[_wgslsmith_index_u32(u_input.c, 19u)], 25677u, 30803u)))), ~max(vec4<u32>(global1[_wgslsmith_index_u32(14432u, 19u)], u_input.c, global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 19u)], 19u)]), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.c, global1[_wgslsmith_index_u32(u_input.c, 19u)], 97293u), vec4<u32>(global1[_wgslsmith_index_u32(1u, 19u)], 32428u, u_input.c, 0u)))));
}

