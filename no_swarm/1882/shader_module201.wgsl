struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec4<i32> = vec4<i32>(11864i, -1i, 0i, 48038i);

var<private> global2: Struct_4;

var<private> global3: i32 = 12927i;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: bool, arg_3: vec3<u32>) -> vec3<f32> {
    let var_0 = global1.x;
    var var_1 = ~(countOneBits(abs(~vec4<u32>(global2.a, global2.a, global2.a, global2.a))) ^ _wgslsmith_mult_vec4_u32(~(vec4<u32>(global2.b.x, arg_3.x, 1u, global2.b.x) | vec4<u32>(global2.b.x, 4294967295u, 1778u, global2.b.x)), vec4<u32>(global2.b.x, 1u, 1u, 4294967295u) & ~vec4<u32>(31528u, u_input.a.x, 12275u, u_input.a.x)));
    let var_2 = _wgslsmith_div_vec2_u32(arg_3.xz, max(min(vec2<u32>(select(0u, 0u, true), reverseBits(arg_3.x)), vec2<u32>(0u, u_input.b)), vec2<u32>(_wgslsmith_sub_u32(var_1.x, u_input.a.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.a.x, u_input.d.x), u_input.a))));
    var_1 = vec4<u32>(1u, u_input.b, _wgslsmith_add_u32(~4294967295u, var_1.x), ~(~(~(~var_1.x))));
    let var_3 = firstTrailingBit(60355u);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(548f, _wgslsmith_f_op_f32(ceil(global2.c.x)), _wgslsmith_f_op_f32(-global0.a.a.b.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c.x, -466f, arg_1.a.b.x)) - vec3<f32>(309f, arg_1.a.b.x, 2549f)))));
}

fn func_2(arg_0: Struct_2) -> f32 {
    global2 = Struct_4(~0u, global2.b, _wgslsmith_f_op_vec3_f32(func_3(global0.a.a.a.x, global0.a, arg_0.a.a.x, vec3<u32>(firstLeadingBit(4294967295u), u_input.d.x & 1u, 1u))), !all(select(select(vec3<bool>(true, true, arg_0.a.a.x), vec3<bool>(false, false, global0.a.a.a.x), vec3<bool>(global0.a.a.a.x, global0.a.a.a.x, true)), vec3<bool>(true, false, false), global2.d)));
    return global2.c.x;
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.c) * global0.a.a.b) + global0.a.a.b)));
    let var_1 = ~(global1.wwy & _wgslsmith_clamp_vec3_i32(global1.zyz, global1.yzz, select(_wgslsmith_add_vec3_i32(global1.xxy, global1.yyz), global1.yyy, global0.a.a.a.x)));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1146f + global2.c.x))), 887f, _wgslsmith_div_f32(global2.c.x, _wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(global0.a.a.a, vec3<f32>(-251f, var_0.x, global2.c.x))))))) - _wgslsmith_f_op_vec3_f32(func_3(global0.a.a.a.x, global0.a, global1.x >= u_input.c, ~vec3<u32>(55973u, 4294967295u, 34049u)))));
    let var_2 = Struct_1(select(!(!vec2<bool>(global0.a.a.a.x, global2.d)), !select(global0.a.a.a, !global0.a.a.a, global0.a.a.a.x && global2.d), vec2<bool>(true, !(false && global0.a.a.a.x))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.c) + vec3<f32>(-242f, _wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(674f * global2.c.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1420f, global2.c.x)), vec3<f32>(global2.c.x, 240f, var_0.x), any(vec4<bool>(true, global0.a.a.a.x, global2.d, true)))), vec3<f32>(-693f, -1574f, _wgslsmith_f_op_f32(ceil(global0.a.a.b.x))), select(vec3<bool>(global0.a.a.a.x, true, global0.a.a.a.x), select(vec3<bool>(global2.d, true, false), vec3<bool>(false, false, false), vec3<bool>(global2.d, global2.d, true)), true))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.c.x, _wgslsmith_f_op_f32(var_2.b.x + var_0.x))) - _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -690f) * var_0.x), _wgslsmith_f_op_f32(ceil(var_0.x))));
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1());
    global1 = reverseBits(vec4<i32>(reverseBits(u_input.e), ~1i, u_input.c, abs(firstLeadingBit(-u_input.c))));
    var var_1 = global1.x;
    global3 = _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-35155i, -_wgslsmith_div_i32(-1i, global1.x), select(1i, global1.x, global0.a.a.b.x >= var_0.a.a.b.x), countOneBits(_wgslsmith_add_i32(0i, u_input.c))), select(vec4<i32>(1i, _wgslsmith_mult_i32(60424i, global1.x), 0i, _wgslsmith_sub_i32(1i, -1i)), _wgslsmith_clamp_vec4_i32(max(vec4<i32>(global1.x, u_input.e, u_input.e, 41981i), vec4<i32>(-72836i, global1.x, global1.x, u_input.e)), _wgslsmith_clamp_vec4_i32(vec4<i32>(global1.x, global1.x, u_input.e, -2147483647i), vec4<i32>(-2147483647i, u_input.e, 2147483647i, 0i), vec4<i32>(-2147483647i, 2147483647i, -3406i, global1.x)), vec4<i32>(global1.x, global1.x, global1.x, u_input.e) << (vec4<u32>(u_input.b, 63009u, global2.b.x, 11410u) % vec4<u32>(32u))), true)), -(reverseBits(vec4<i32>(global1.x, 47194i, global1.x, global1.x)) >> (firstTrailingBit(vec4<u32>(global2.a, 4718u, global2.b.x, 117032u)) % vec4<u32>(32u))) >> (vec4<u32>(u_input.a.x, _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), global2.b.x), global2.b.x ^ firstLeadingBit(1u), ~(~global2.a)) % vec4<u32>(32u)));
    var var_2 = global1.x;
    global0 = Struct_3(Struct_2(Struct_1(vec2<bool>(global2.c.x > 669f, false & global2.d), vec3<f32>(_wgslsmith_f_op_f32(min(global0.a.a.b.x, global0.a.a.b.x)), 534f, _wgslsmith_f_op_f32(725f + 2189f)))));
    let var_3 = global0.a.a.b.x;
    var var_4 = var_0.a.a;
    var var_5 = vec2<u32>(75814u, ~(~1u));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_i32(1i, global1.x) | 0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.x)) + -247f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(854f - _wgslsmith_f_op_f32(-global2.c.x)), var_4.b.x))));
}

