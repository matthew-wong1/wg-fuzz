struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

var<private> global1: array<vec2<bool>, 12>;

var<private> global2: vec3<u32> = vec3<u32>(4294967295u, 0u, 33046u);

var<private> global3: Struct_2 = Struct_2(-303f, vec4<i32>(7348i, -48205i, 115i, 1i), vec3<bool>(true, true, false));

var<private> global4: Struct_2;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2() -> vec3<bool> {
    let var_0 = 4294967295u;
    var var_1 = global0[_wgslsmith_index_u32(7202u, 27u)];
    global3 = Struct_2(_wgslsmith_f_op_f32(-753f * global3.a), -(~vec4<i32>(~2147483647i, ~u_input.a.x, 2293i, var_1.b.x)), global3.c);
    var_1 = Struct_2(global4.a, global3.b, !(!(!vec3<bool>(global3.c.x, true, var_1.c.x))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -771f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a - global3.a)))), _wgslsmith_f_op_f32(-var_1.a));
    return !(!(!select(!global3.c, !vec3<bool>(var_1.c.x, false, false), true)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_1) -> bool {
    var var_0 = firstTrailingBit(vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(-vec3<i32>(67034i, global4.b.x, arg_1.x), -vec3<i32>(-49781i, arg_1.x, global3.b.x)));
    global1 = array<vec2<bool>, 12>();
    return select(global3.c.x, true, any(select(!(!vec4<bool>(false, true, global4.c.x, false)), select(!vec4<bool>(global3.c.x, arg_0.c.x, true, true), vec4<bool>(global3.c.x, global3.c.x, global3.c.x, true), false), false)));
}

fn func_1() -> vec4<u32> {
    let var_0 = ~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global4.b.x, u_input.a.x | -1i, _wgslsmith_mod_i32(global4.b.x, 2147483647i), global4.b.x | global3.b.x), abs(countOneBits(global4.b))), global3.b.x, -1i);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-549f)))) - _wgslsmith_f_op_f32(sign(global3.a))), ~_wgslsmith_sub_vec4_i32(global3.b, _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(global4.b, global4.b), _wgslsmith_div_vec4_i32(global4.b, global3.b))), select(select(func_2(), global3.c, _wgslsmith_sub_u32(4294967295u, u_input.b) == _wgslsmith_mult_u32(u_input.b, u_input.b)), vec3<bool>(true, func_3(global0[_wgslsmith_index_u32(~global2.x, 27u)], vec4<i32>(var_0.x, 23156i, global3.b.x, -33289i), Struct_1(vec4<u32>(63861u, global2.x, 1u, global2.x))), all(global4.c)), vec3<bool>(true, false, all(!global3.c))));
    var var_2 = !(!(!all(vec4<bool>(var_1.c.x, false, var_1.c.x, false))));
    let var_3 = 1406f;
    var var_4 = min(_wgslsmith_mult_vec3_i32(vec3<i32>(20959i, var_0.x >> (1u % 32u), u_input.a.x), select(select(vec3<i32>(-4331i, -38742i, 1i), global4.b.wyz, global3.c), global4.b.yxy & vec3<i32>(7925i, u_input.c, -1i), !vec3<bool>(true, global4.c.x, global4.c.x))), countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(19725i, var_1.b.x, var_1.b.x), vec3<i32>(-2147483647i, u_input.a.x, 0i)))) ^ -(~min(-vec3<i32>(u_input.a.x, 22149i, global4.b.x), countOneBits(vec3<i32>(global3.b.x, var_1.b.x, 30792i))));
    return vec4<u32>(global2.x, _wgslsmith_mult_u32(~(~global2.x), min(u_input.b, _wgslsmith_mod_u32(~4294967295u, 37778u & global2.x))), select(~(~30812u), firstLeadingBit(u_input.b), var_1.c.x), reverseBits(firstTrailingBit(global2.x & select(u_input.b, 0u, global3.c.x))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_2 {
    global4 = Struct_2(-444f, ~vec4<i32>(50177i, -global3.b.x, abs(global3.b.x), ~global3.b.x & _wgslsmith_sub_i32(12625i, -1908i)), vec3<bool>(!(!any(global1[_wgslsmith_index_u32(1u, 12u)])), !arg_1.c.x, !(!arg_1.c.x)));
    let var_0 = -max(u_input.a.x, 0i);
    global0 = array<Struct_2, 27>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(ceil(global3.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.a * global3.a) - _wgslsmith_f_op_f32(global4.a * 1151f)))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global4.a)))));
    let var_2 = abs(-2147483647i);
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.a), _wgslsmith_f_op_f32(global4.a - 1000f)))), select(-vec4<i32>(~var_2, -2147483647i, -2147483647i | var_0, -1i ^ global4.b.x), global3.b, !vec4<bool>(true, arg_1.c.x, true, global3.b.x <= -1i)), vec3<bool>(arg_1.c.x, true, ~arg_2.x == ~(global2.x << (u_input.b % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<bool>, 12>();
    global3 = func_4(func_1(), global0[_wgslsmith_index_u32(firstLeadingBit(global2.x), 27u)], vec4<u32>(21434u, abs(global2.x), 1u, global2.x), Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(~global2.x, 4294967295u | global2.x, ~u_input.b, ~global2.x), min(vec4<u32>(global2.x, 12982u, 29841u, global2.x), func_1()))));
    let var_0 = Struct_1(min(vec4<u32>(4294967295u, ~firstTrailingBit(0u), 34525u, _wgslsmith_dot_vec2_u32(abs(global2.yz), _wgslsmith_sub_vec2_u32(global2.yy, vec2<u32>(u_input.b, 1u)))), max(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 1u, global2.x, 4294967295u) | vec4<u32>(global2.x, 42220u, 84597u, u_input.b), abs(vec4<u32>(64165u, u_input.b, global2.x, u_input.b))), ~min(vec4<u32>(u_input.b, u_input.b, 4294967295u, global2.x), vec4<u32>(55388u, global2.x, 20105u, u_input.b)))));
    let var_1 = global4.c.x;
    var var_2 = ~(-global4.b.x) << (_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(~global2.x, _wgslsmith_dot_vec4_u32(var_0.a, vec4<u32>(u_input.b, var_0.a.x, var_0.a.x, 47174u))), ~global2.x), 71477u) % 32u);
    var var_3 = 1i;
    let var_4 = func_4(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, countOneBits(global2.x)), select(var_0.a, _wgslsmith_sub_vec4_u32(vec4<u32>(32834u, 0u, 53379u, 0u), vec4<u32>(4294967295u, 14469u, 1u, u_input.b)), !vec4<bool>(global4.c.x, false, global4.c.x, global3.c.x))), global0[_wgslsmith_index_u32(~(firstTrailingBit(u_input.b) << (reverseBits(38208u) % 32u)), 27u)], max(countOneBits(max(var_0.a, var_0.a)), _wgslsmith_div_vec4_u32(var_0.a, reverseBits(var_0.a))), Struct_1(select(vec4<u32>(0u, 1u, var_0.a.x, var_0.a.x) | var_0.a, abs(_wgslsmith_div_vec4_u32(var_0.a, var_0.a)), select(select(vec4<bool>(false, global3.c.x, global4.c.x, global3.c.x), vec4<bool>(true, global4.c.x, global3.c.x, global3.c.x), false), vec4<bool>(true, false, false, false), select(vec4<bool>(global4.c.x, global4.c.x, true, true), vec4<bool>(true, true, false, true), vec4<bool>(global4.c.x, true, false, global4.c.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_0.a.x, _wgslsmith_mult_u32(0u, select(u_input.b, var_0.a.x, true & global3.c.x)), ~0u, ~(~1u)), -2147483647i, func_1().x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a, 832f, -1401f, -1257f))))), _wgslsmith_sub_u32(142909u << (u_input.b % 32u), _wgslsmith_mult_u32(17761u, ~(~global2.x))));
}

