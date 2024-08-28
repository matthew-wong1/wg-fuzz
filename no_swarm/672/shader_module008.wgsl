struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec2<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12>;

var<private> global1: u32;

var<private> global2: Struct_2 = Struct_2(-1i, Struct_1(vec4<u32>(65023u, 4294967295u, 27406u, 24816u), vec3<bool>(false, false, false), vec2<u32>(45591u, 4294967295u)));

var<private> global3: array<Struct_1, 1>;

var<private> global4: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec2<f32>) -> vec4<i32> {
    global1 = reverseBits(0u);
    return u_input.a;
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    global0 = array<f32, 12>();
    let var_0 = global2.a;
    global2 = Struct_2(arg_0.x, global2.b);
    var var_1 = global2.b.a;
    var var_2 = Struct_1(vec4<u32>(~1u, countOneBits(global2.b.c.x), ~0u, ~global4.c.x), select(!select(global4.b, !global4.b, global2.b.b.x), vec3<bool>(false, true, global4.b.x), !(!(!global4.b))), countOneBits(firstLeadingBit(_wgslsmith_add_vec2_u32(select(var_1.ww, vec2<u32>(35736u, 4294967295u), global2.b.b.yz), vec2<u32>(var_1.x, global2.b.c.x)))));
    return ~global2.b.c.x;
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = func_3(u_input.a.zx);
    var var_1 = -select(vec4<i32>(global2.a, min(~(-14761i), global2.a), -(~(-22200i)), u_input.a.x), vec4<i32>(_wgslsmith_mult_i32(~1i, _wgslsmith_dot_vec3_i32(u_input.a.zyx, u_input.a.xzx)), 2147483647i, global2.a, abs(firstLeadingBit(global2.a))), true);
    var var_2 = select(arg_0, arg_0, max(_wgslsmith_dot_vec4_u32(~vec4<u32>(global4.c.x, 1u, var_0, arg_0), ~arg_2.a), _wgslsmith_mod_u32(~arg_2.a.x, abs(arg_1.x))) <= 4294967295u);
    var var_3 = ~_wgslsmith_clamp_vec4_u32(min(reverseBits(~vec4<u32>(0u, arg_0, global2.b.c.x, 4294967295u)), _wgslsmith_mult_vec4_u32(arg_2.a, vec4<u32>(arg_1.x, arg_1.x, 4294967295u, arg_0))), vec4<u32>(_wgslsmith_sub_u32(~4294967295u, var_0), max(_wgslsmith_clamp_u32(50155u, var_0, global2.b.c.x), ~var_0), 46279u, _wgslsmith_dot_vec3_u32(arg_1, vec3<u32>(5238u, arg_0, 0u)) << (arg_1.x % 32u)), vec4<u32>(~1u, 1u, ~(16217u | arg_1.x), _wgslsmith_dot_vec3_u32(global2.b.a.xyz, vec3<u32>(arg_1.x, 58989u, 1u))));
    var var_4 = Struct_2(24823i, Struct_1(vec4<u32>(global4.c.x, var_0, 52698u, ~global2.b.a.x), arg_2.b, select(vec2<u32>(var_0, ~var_0), ~(~vec2<u32>(arg_1.x, global4.a.x)), arg_2.b.x)));
    return Struct_2(-firstLeadingBit(global2.a) >> (_wgslsmith_sub_u32(var_0, global2.b.c.x) % 32u), Struct_1(abs(~var_4.b.a), !vec3<bool>(17830u >= var_0, all(vec4<bool>(true, false, true, global2.b.b.x)), var_4.b.b.x), vec2<u32>(_wgslsmith_div_u32(31735u, ~0u), 0u)));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1059f, _wgslsmith_f_op_f32(1504f - _wgslsmith_f_op_f32(725f + -253f)), global0[_wgslsmith_index_u32(func_3(u_input.a.ww), 12u)], -1000f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0[_wgslsmith_index_u32(global4.a.x, 12u)], -1000f, 542f, global0[_wgslsmith_index_u32(arg_1.b.c.x, 12u)]), vec4<f32>(global0[_wgslsmith_index_u32(global4.a.x, 12u)], -1000f, global0[_wgslsmith_index_u32(arg_1.b.c.x, 12u)], 1627f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(0u, 12u)], -915f, -357f, -1000f) + vec4<f32>(245f, global0[_wgslsmith_index_u32(arg_1.b.c.x, 12u)], global0[_wgslsmith_index_u32(55280u, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)]))))))));
    global0 = array<f32, 12>();
    global0 = array<f32, 12>();
    global2 = func_2(func_2(~(~arg_1.b.c.x), vec3<u32>(33829u, firstTrailingBit(_wgslsmith_mod_u32(10841u, global4.c.x)), _wgslsmith_mult_u32(global2.b.a.x, global4.a.x) << (4294967295u % 32u)), Struct_1(firstLeadingBit(global2.b.a), select(global2.b.b, select(vec3<bool>(false, false, global4.b.x), global2.b.b, arg_1.b.b), arg_2 & true), firstTrailingBit(arg_1.b.a.yw))).b.c.x, arg_1.b.a.xyw, arg_1.b);
    var var_1 = vec4<bool>(!global2.b.b.x, false, true, any(vec4<bool>(_wgslsmith_dot_vec2_u32(global2.b.c, vec2<u32>(arg_1.b.c.x, global4.c.x)) >= 9340u, 1u >= ~arg_1.b.a.x, true, any(vec4<bool>(true, false, false, false)))));
    return global2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 1>();
    var var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(568f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1143f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(320f, -384f))))));
    var_0 = func_1(var_1.xx);
    let var_2 = 103494u;
    let var_3 = !global2.b.b;
    global2 = Struct_2(~(24027i >> (var_2 % 32u)), Struct_1(_wgslsmith_mult_vec4_u32(global2.b.a | vec4<u32>(4294967295u, global2.b.c.x, global4.c.x, 364u), _wgslsmith_div_vec4_u32(vec4<u32>(var_2, 1u, global2.b.c.x, var_2), global2.b.a)) >> ((firstTrailingBit(global2.b.a) >> (vec4<u32>(global4.a.x, 4294967295u, global4.c.x, var_2) % vec4<u32>(32u))) % vec4<u32>(32u)), global4.b, ~(~vec2<u32>(15523u, var_2))));
    var var_4 = Struct_1(~vec4<u32>(_wgslsmith_sub_u32(var_2 & 113352u, ~0u), _wgslsmith_dot_vec4_u32(global4.a & vec4<u32>(global4.a.x, 29849u, 0u, 56041u), global4.a), global2.b.c.x, global4.c.x << ((0u >> (1u % 32u)) % 32u)), global2.b.b, global2.b.a.zx);
    global0 = array<f32, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(func_4(_wgslsmith_clamp_i32(i32(-1i) * -45325i, func_1(vec2<f32>(498f, global0[_wgslsmith_index_u32(var_4.c.x, 12u)])).x, abs(global2.a)), func_2(_wgslsmith_mod_u32(2468u, global2.b.a.x), vec3<u32>(var_4.c.x, 1u, 4294967295u), global3[_wgslsmith_index_u32(var_2, 1u)]), global2.b.b.x), _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-30003i, _wgslsmith_clamp_i32(16377i, 1i, var_0.x), 2147483647i, i32(-1i) * -23322i))), -1252f, func_3(_wgslsmith_div_vec2_i32(vec2<i32>(reverseBits(-2147483647i), _wgslsmith_sub_i32(52438i, 0i)), select(var_0.yz, vec2<i32>(var_0.x, global2.a), true) & vec2<i32>(u_input.a.x, 0i))), vec2<i32>(var_0.x, 1i), ~(var_4.a.wzw << (~var_4.a.zwy % vec3<u32>(32u))));
}

