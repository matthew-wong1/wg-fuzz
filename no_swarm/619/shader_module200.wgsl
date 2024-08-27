struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: f32,
    b: vec3<u32>,
    c: Struct_3,
    d: vec2<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<i32, 26>;

var<private> global2: array<vec3<i32>, 18> = array<vec3<i32>, 18>(vec3<i32>(-43017i, -42902i, 30858i), vec3<i32>(1i, 8743i, -13955i), vec3<i32>(0i, 1i, -1i), vec3<i32>(0i, -30323i, 19664i), vec3<i32>(1i, -1i, 42854i), vec3<i32>(16956i, -35246i, -1i), vec3<i32>(-51112i, 0i, 35238i), vec3<i32>(25019i, 5212i, -34884i), vec3<i32>(28498i, 2956i, -1i), vec3<i32>(-24794i, 1i, -68361i), vec3<i32>(0i, -1028i, 15657i), vec3<i32>(1i, -1i, 0i), vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)), vec3<i32>(22778i, i32(-2147483648), 38166i), vec3<i32>(45892i, -18633i, -17033i), vec3<i32>(i32(-2147483648), 1i, 1i), vec3<i32>(i32(-2147483648), -10248i, 1i), vec3<i32>(i32(-2147483648), -1i, 29669i));

var<private> global3: Struct_5 = Struct_5(Struct_4(-1705f, vec3<u32>(16168u, 3752u, 0u), Struct_3(35776i, vec4<i32>(4813i, -1i, -31516i, 2147483647i), Struct_2(Struct_1(-1153i, false)), 0u), vec2<u32>(4294967295u, 4294967295u)), vec2<bool>(true, false));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: Struct_4) -> bool {
    let var_0 = Struct_5(Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -333f), reverseBits(u_input.b << (~arg_0 % vec3<u32>(32u))), Struct_3(-1i, _wgslsmith_div_vec4_i32(arg_2.c.b, ~vec4<i32>(2147483647i, 60573i, 0i, 0i)), arg_1.c.c, global3.a.d.x), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_add_u32(arg_2.c.d, arg_1.c.d), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 71283u), arg_1.d)), ~(~global3.a.b.zz))), select(!select(global3.b, vec2<bool>(false, false), select(global3.b, vec2<bool>(arg_1.c.c.a.b, global3.b.x), global3.b)), select(global3.b, !select(vec2<bool>(global3.a.c.c.a.b, arg_2.c.c.a.b), global3.b, vec2<bool>(false, arg_2.c.c.a.b)), global3.a.c.c.a.b), !global3.a.c.c.a.b));
    var var_1 = vec2<u32>(_wgslsmith_mult_u32(~0u, global3.a.c.d), 23892u);
    let var_2 = abs(~(vec2<u32>(_wgslsmith_dot_vec2_u32(arg_0.zz, var_0.a.b.xx), ~var_0.a.b.x) << (_wgslsmith_div_vec2_u32(arg_0.zy, _wgslsmith_clamp_vec2_u32(vec2<u32>(89352u, 10481u), arg_1.d, global3.a.d)) % vec2<u32>(32u))));
    var var_3 = ~_wgslsmith_dot_vec2_u32(~(~arg_2.d), vec2<u32>(~(var_2.x | var_0.a.c.d), 60760u));
    var_1 = ~(arg_1.d ^ reverseBits(select(vec2<u32>(1u, var_2.x), vec2<u32>(1u, arg_1.c.d), true) >> (vec2<u32>(var_2.x, 22507u) % vec2<u32>(32u))));
    return !select(true, true, all(select(vec2<bool>(false, false), vec2<bool>(false, var_0.a.c.c.a.b), arg_2.c.c.a.b)));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<bool>) -> vec3<bool> {
    let var_0 = 1i;
    var var_1 = global3.a.a;
    let var_2 = select(arg_0, select(vec3<u32>(abs(global3.a.c.d), _wgslsmith_clamp_u32(arg_0.x ^ arg_0.x, global3.a.c.d, global3.a.d.x ^ u_input.b.x), arg_0.x), select(reverseBits(abs(arg_0)), ~u_input.b, select(select(arg_1, arg_1, arg_1.x), arg_1, !vec3<bool>(true, true, global3.b.x))), all(select(!global3.b, select(vec2<bool>(false, true), vec2<bool>(global3.a.c.c.a.b, global3.a.c.c.a.b), global3.b), !arg_1.xz))), !select(vec3<bool>(!global3.b.x, 0i >= global1[_wgslsmith_index_u32(global3.a.d.x, 26u)], arg_1.x), arg_1, arg_1));
    let var_3 = Struct_5(global3.a, arg_1.yz);
    var var_4 = global3.b.x;
    return select(select(arg_1, select(arg_1, select(arg_1, arg_1, !arg_1), select(vec3<bool>(false, false, true), vec3<bool>(global3.b.x, true, false), vec3<bool>(arg_1.x, false, global3.b.x))), true), select(vec3<bool>(arg_1.x, false, true), !(!select(arg_1, arg_1, arg_1)), func_3(~(~global3.a.b), Struct_4(var_3.a.a, u_input.b, global3.a.c, vec2<u32>(4294967295u, 4874u) >> (vec2<u32>(global3.a.d.x, u_input.b.x) % vec2<u32>(32u))), var_3.a)), arg_1);
}

fn func_2(arg_0: i32) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(-global3.a.a);
    global2 = array<vec3<i32>, 18>();
    global3 = Struct_5(global3.a, global3.b);
    let var_1 = 0u;
    var var_2 = func_4(min(~(~max(global3.a.b, global3.a.b)), vec3<u32>(var_1, ~u_input.a, countOneBits(~u_input.a))), vec3<bool>(!func_3(vec3<u32>(u_input.b.x, 1u, 33696u), Struct_4(global3.a.a, u_input.b, Struct_3(global1[_wgslsmith_index_u32(global3.a.b.x, 26u)], global3.a.c.b, Struct_2(Struct_1(-8321i, true)), var_1), global3.a.b.zx), Struct_4(1179f, u_input.b, Struct_3(arg_0, global3.a.c.b, global3.a.c.c, global3.a.d.x), u_input.b.yy)), true, false));
    return Struct_5(Struct_4(var_0, _wgslsmith_div_vec3_u32(u_input.b, min(global3.a.b, vec3<u32>(1u, 1u, u_input.a))) >> (~select(vec3<u32>(var_1, 1u, var_1), u_input.b, global3.a.c.c.a.b) % vec3<u32>(32u)), Struct_3(1i, vec4<i32>(select(global1[_wgslsmith_index_u32(1693u, 26u)], 1i, false), reverseBits(arg_0), _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(u_input.b.x, 26u)], 0i), -2147483647i), Struct_2(global3.a.c.c.a), abs(global3.a.b.x | 4294967295u)), vec2<u32>(countOneBits(~var_1), u_input.a)), select(global3.b, vec2<bool>(all(!vec4<bool>(false, global3.b.x, true, false)), any(select(vec4<bool>(true, var_2.x, true, var_2.x), vec4<bool>(var_2.x, var_2.x, global3.a.c.c.a.b, false), var_2.x))), var_2.zx));
}

fn func_5(arg_0: Struct_5, arg_1: vec2<i32>) -> Struct_5 {
    var var_0 = func_2(~abs(func_2(~global1[_wgslsmith_index_u32(4294967295u, 26u)]).a.c.c.a.a)).a.b.x;
    let var_1 = Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(-global3.a.c.b, vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(44113u, 26u)], arg_0.a.c.c.a.a, 1371i)) << (vec4<u32>(global3.a.c.d, ~u_input.b.x, 1u, countOneBits(arg_0.a.b.x)) % vec4<u32>(32u)), abs(select(_wgslsmith_mult_vec4_i32(arg_0.a.c.b, global3.a.c.b), global3.a.c.b & global3.a.c.b, !vec4<bool>(global3.a.c.c.a.b, arg_0.b.x, false, arg_0.a.c.c.a.b)))), false);
    global2 = array<vec3<i32>, 18>();
    let var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), -arg_0.a.c.b.xx);
    var_0 = global3.a.c.d;
    return func_2(firstLeadingBit(-34169i) << (~_wgslsmith_dot_vec3_u32(select(arg_0.a.b, vec3<u32>(0u, 1661u, arg_0.a.d.x), arg_0.a.c.c.a.b), vec3<u32>(global3.a.c.d, arg_0.a.d.x, 82038u) ^ vec3<u32>(4294967295u, arg_0.a.c.d, u_input.a)) % 32u));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_2) -> f32 {
    global0 = !((u_input.a > u_input.a) && global3.a.c.c.a.b);
    let var_0 = _wgslsmith_add_vec3_u32(global3.a.b, ~firstLeadingBit(~select(vec3<u32>(7862u, arg_0.d, arg_0.d), vec3<u32>(0u, arg_0.d, global3.a.c.d), true)));
    let var_1 = ~(~(~23093u));
    global1 = array<i32, 26>();
    let var_2 = func_5(func_2(~(-29019i)), ~arg_0.b.wz);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(var_2.a.a)))) * global3.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(!(_wgslsmith_dot_vec4_i32(-vec4<i32>(-6183i, global1[_wgslsmith_index_u32(u_input.a, 26u)], 5925i, global3.a.c.a), vec4<i32>(u_input.c, u_input.c, 1i, global1[_wgslsmith_index_u32(u_input.b.x, 26u)])) < ~(~0i)), false, 142f <= _wgslsmith_f_op_f32(func_1(global3.a.c, global3.b, global3.a.c.c)), true);
    global3 = Struct_5(global3.a, !func_4(~vec3<u32>(52697u, u_input.a, u_input.b.x), !(!var_0.yyx)).zy);
    global3 = Struct_5(func_5(Struct_5(global3.a, vec2<bool>(!global3.a.c.c.a.b, false && global3.b.x)), vec2<i32>(global3.a.c.c.a.a & (global3.a.c.a & u_input.c), -1i)).a, global3.b);
    let var_1 = ~2147483647i;
    global2 = array<vec3<i32>, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.a) + 321f), global3.a.a)), _wgslsmith_mult_vec4_u32(firstTrailingBit(max(~vec4<u32>(global3.a.b.x, global3.a.b.x, global3.a.b.x, global3.a.d.x), vec4<u32>(u_input.a, 0u, 0u, u_input.b.x))), ~(~vec4<u32>(u_input.a, 14570u, 1u, global3.a.d.x) ^ max(vec4<u32>(28199u, global3.a.d.x, global3.a.d.x, global3.a.c.d), vec4<u32>(0u, global3.a.b.x, 0u, 62419u)))), _wgslsmith_div_vec3_u32(firstLeadingBit(global3.a.b), u_input.b), -(~(var_1 | global1[_wgslsmith_index_u32(u_input.b.x, 26u)])), _wgslsmith_clamp_vec2_i32(-vec2<i32>(~22047i, abs(global3.a.c.c.a.a)), vec2<i32>(max(reverseBits(global3.a.c.b.x), 51507i), global1[_wgslsmith_index_u32(118548u, 26u)]), global3.a.c.b.xx));
}

