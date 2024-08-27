struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(34147u, 34328u, 59841u);

var<private> global1: Struct_3;

var<private> global2: array<Struct_1, 20>;

var<private> global3: Struct_4 = Struct_4(Struct_3(Struct_2(0u, vec3<i32>(59504i, 44779i, -39244i), vec4<bool>(false, false, true, true), vec4<i32>(-42027i, -37707i, 16207i, -42315i)), Struct_2(1u, vec3<i32>(18092i, -1i, -24144i), vec4<bool>(false, false, true, true), vec4<i32>(-27600i, 69604i, 44709i, -1i)), 15271u), Struct_1(-1237f, 0i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: u32) -> f32 {
    global1 = Struct_3(Struct_2(arg_2, -(global1.a.d.wwy ^ _wgslsmith_clamp_vec3_i32(arg_0.a.b.d.yxy, u_input.c.yyx, vec3<i32>(28380i, -2147483647i, arg_0.b.b))), select(!select(vec4<bool>(global1.a.c.x, global3.a.b.c.x, false, true), vec4<bool>(false, true, global3.a.b.c.x, false), global1.a.c), vec4<bool>(global3.a.a.c.x, global1.a.c.x, any(global1.b.c.xx), arg_0.b.a > arg_0.b.a), false), max(vec4<i32>(arg_0.b.b ^ 0i, select(global1.a.b.x, -2799i, arg_0.a.b.c.x), -3579i, -global3.b.b), vec4<i32>(_wgslsmith_clamp_i32(-7311i, 0i, 1i), firstTrailingBit(u_input.c.x), ~19224i, _wgslsmith_dot_vec2_i32(global1.a.b.yx, global3.a.b.b.zz)))), Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(~0u, 108789u, _wgslsmith_clamp_u32(0u, global3.a.a.a, arg_0.a.a.a), 25768u), abs(_wgslsmith_add_vec4_u32(vec4<u32>(7630u, arg_2, u_input.d, arg_1), vec4<u32>(arg_2, 10696u, u_input.d, 49617u)))), _wgslsmith_div_vec3_i32(select(firstLeadingBit(global3.a.b.d.xxw), min(vec3<i32>(global3.a.b.b.x, -1i, -77687i), u_input.c.www), select(global3.a.b.c.www, vec3<bool>(arg_0.a.a.c.x, arg_0.a.b.c.x, arg_0.a.b.c.x), global1.b.c.x)), min(arg_0.a.b.b & global3.a.a.d.xzy, _wgslsmith_div_vec3_i32(global1.b.d.yxz, global1.b.d.zxy))), !select(global3.a.a.c, vec4<bool>(global1.b.c.x, global3.a.a.c.x, global3.a.b.c.x, false), !global1.a.c), _wgslsmith_mult_vec4_i32(global1.b.d, _wgslsmith_div_vec4_i32(min(vec4<i32>(global1.a.d.x, global3.a.b.d.x, -7242i, global3.b.b), global1.b.d), ~vec4<i32>(u_input.a, 35971i, -17216i, u_input.a)))), _wgslsmith_dot_vec2_u32(vec2<u32>(~12213u, ~62219u), global0.yz));
    global1 = Struct_3(Struct_2(34044u, abs(vec3<i32>(_wgslsmith_clamp_i32(arg_0.a.a.d.x, global3.b.b, -2147483647i), 0i, reverseBits(-2147483647i))), arg_0.a.b.c, ~(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.e, 0i, u_input.a, 2147483647i), global1.a.d))), global1.b, ~_wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(global0.xy, vec2<u32>(0u, arg_1)), select(abs(vec2<u32>(u_input.d, global1.a.a)), global0.xx, !vec2<bool>(global1.b.c.x, arg_0.a.b.c.x))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-772f))));
    var var_1 = true;
    var_1 = !(global0.x != ~reverseBits(global1.b.a)) && all(!global3.a.b.c.wxw);
    return _wgslsmith_f_op_f32(max(396f, -227f));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_2.x), arg_0 << (~global3.a.c % 32u));
    global2 = array<Struct_1, 20>();
    global3 = Struct_4(global3.a, global2[_wgslsmith_index_u32(0u, 20u)]);
    var var_1 = vec2<bool>(arg_1, global1.a.c.x && all(vec3<bool>(true, global1.b.c.x | arg_1, true)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(Struct_3(Struct_2(70293u, vec3<i32>(-2147483647i, global1.b.d.x, 2147483647i), global3.a.b.c, vec4<i32>(0i, 44497i, -2147483647i, -18540i)), global3.a.a, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.d, 31755u, 4294967295u), vec4<u32>(u_input.d, 1u, 312u, 1u))), global3.b), abs(_wgslsmith_div_u32(global1.b.a, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.d, global0.x), vec3<u32>(4294967295u, global0.x, 1u)))), select(global0.x >> (~global3.a.b.a % 32u), 1u, global1.b.c.x))));
    return Struct_1(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-120f, -1000f))), abs(-1i));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: u32, arg_3: u32) -> u32 {
    var var_0 = _wgslsmith_add_vec4_i32(u_input.c, _wgslsmith_sub_vec4_i32(vec4<i32>(global1.b.d.x, 8612i, _wgslsmith_mod_i32(39738i, max(global3.b.b, -2147483647i)), abs(global3.a.b.d.x)), u_input.c));
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-773f, global3.b.a, global3.b.a, -1329f), vec4<f32>(global3.b.a, global3.b.a, 594f, global3.b.a), true)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-158f, _wgslsmith_f_op_f32(abs(global3.b.a)), _wgslsmith_f_op_f32(f32(-1f) * -1134f), _wgslsmith_div_f32(1000f, global3.b.a)) + vec4<f32>(_wgslsmith_div_f32(global3.b.a, -1068f), -390f, _wgslsmith_f_op_f32(sign(-2558f)), _wgslsmith_f_op_f32(f32(-1f) * -1857f))))));
    var var_2 = vec3<u32>(39684u, u_input.d, ~1u);
    var var_3 = Struct_4(Struct_3(Struct_2(_wgslsmith_dot_vec4_u32(~vec4<u32>(5751u, arg_1, global1.c, global3.a.a.a), ~vec4<u32>(u_input.d, u_input.d, arg_3, 4294967295u)), select(-vec3<i32>(2147483647i, -34557i, arg_0), global1.a.b, global1.a.c.x), !vec4<bool>(true, global1.a.c.x, global3.a.a.c.x, global3.a.a.c.x), min(global3.a.a.d, ~vec4<i32>(1i, global1.b.d.x, global1.a.b.x, global3.b.b))), Struct_2(min(_wgslsmith_clamp_u32(35748u, 1755u, arg_1), countOneBits(0u)), _wgslsmith_mod_vec3_i32(min(vec3<i32>(0i, global1.b.b.x, var_0.x), u_input.c.zzx), vec3<i32>(23912i, arg_0, -34970i)), vec4<bool>(true, arg_0 != var_0.x, any(vec3<bool>(false, false, global1.b.c.x)), global3.a.b.c.x != global1.b.c.x), (vec4<i32>(-51836i, global1.a.d.x, global3.a.b.d.x, 9822i) | global3.a.b.d) | _wgslsmith_div_vec4_i32(vec4<i32>(0i, global1.b.d.x, arg_0, var_0.x), u_input.c)), global3.a.a.a), func_2(u_input.b, true, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1181f, var_1.x, global3.b.a, var_1.x) * vec4<f32>(global3.b.a, global3.b.a, var_1.x, global3.b.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, global3.b.a, var_1.x, global3.b.a)))));
    let var_4 = _wgslsmith_sub_vec4_u32(~_wgslsmith_div_vec4_u32(select(vec4<u32>(arg_3, 18575u, arg_1, arg_2) | vec4<u32>(u_input.d, 15342u, 4294967295u, var_2.x), select(vec4<u32>(global3.a.b.a, 0u, 0u, 4976u), vec4<u32>(arg_1, arg_3, 7302u, global1.c), vec4<bool>(false, var_3.a.a.c.x, true, global1.b.c.x)), true), vec4<u32>(arg_3 >> (arg_2 % 32u), 4294967295u >> (var_3.a.a.a % 32u), countOneBits(arg_1), firstLeadingBit(37112u))), firstTrailingBit(select(firstTrailingBit(abs(vec4<u32>(arg_1, 6384u, 1u, arg_1))), vec4<u32>(~0u, min(arg_2, var_3.a.c), 47179u, abs(4294967295u)), global1.b.c)));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(~0u, func_1(-21386i, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, global1.a.a, 0u) | vec4<u32>(8752u, 67454u, u_input.d, 10989u), ~vec4<u32>(22680u, 17730u, global1.c, 67017u)) ^ global1.c, global3.a.b.a, global1.b.a), ~global1.a.a, _wgslsmith_mult_u32(max(firstTrailingBit(_wgslsmith_sub_u32(4294967295u, global0.x)), 1u ^ _wgslsmith_clamp_u32(u_input.d, 1u, 0u)), ~_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.d, 35390u), 4294967295u)));
    let var_1 = !global1.b.c.ww;
    let var_2 = ~global3.a.b.a;
    let var_3 = vec3<i32>(global1.a.b.x, -1i, u_input.e);
    global3 = Struct_4(global3.a, Struct_1(global3.b.a, global1.a.d.x));
    let var_4 = global3.a.a.c;
    var var_5 = global3.a.c;
    var var_6 = global3.b;
    var var_7 = vec3<f32>(var_6.a, global3.b.a, -1469f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-222f - 426f), var_3.zz, global3.b.a, _wgslsmith_f_op_f32(ceil(var_7.x)));
}

