struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: Struct_2 = Struct_2(21899u, vec2<i32>(i32(-2147483648), -75620i), vec2<f32>(-281f, 1000f), 24055i);

var<private> global1: array<Struct_1, 28>;

var<private> global2: i32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1303f)));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global0.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, global0.c.x), vec2<f32>(arg_0.c.x, 889f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-403f, arg_0.c.x), vec2<f32>(global0.c.x, var_0))))))), _wgslsmith_f_op_vec2_f32(-global0.c));
    var var_2 = Struct_1(firstLeadingBit(reverseBits(_wgslsmith_mult_u32(_wgslsmith_mod_u32(11051u, global0.a), ~0u))), select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), false), any(vec3<bool>(false, true, true))), select(select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true)), all(vec3<bool>(false, true, true))), vec4<bool>(true, true, true, true), !any(vec2<bool>(true, true))), true), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(927f, 2366f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.x)) - _wgslsmith_f_op_f32(sign(var_1.x))), 581f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, arg_0.c.x, arg_0.c.x))))));
    global2 = -2147483647i;
    let var_3 = -vec4<i32>(arg_0.b.x, _wgslsmith_dot_vec4_i32(u_input.a, max(_wgslsmith_div_vec4_i32(vec4<i32>(10959i, 0i, -48736i, -2147483647i), u_input.a), -vec4<i32>(2147483647i, global0.d, u_input.a.x, -32310i))), -_wgslsmith_div_i32(u_input.a.x, ~(-2147483647i)), -1i);
    return var_2.b.x;
}

fn func_2() -> i32 {
    let var_0 = vec3<u32>(max(~global0.a, global0.a), select(abs(~global0.a), ~(global0.a >> (118304u % 32u)), !func_3(Struct_2(18204u, vec2<i32>(19382i, u_input.a.x), vec2<f32>(global0.c.x, global0.c.x), u_input.a.x))), _wgslsmith_dot_vec2_u32(~vec2<u32>(~14108u, ~0u), ~(~(vec2<u32>(global0.a, global0.a) | vec2<u32>(global0.a, 4294967295u)))));
    var var_1 = _wgslsmith_mult_i32(abs(global0.d), select(max(global0.b.x << (1707u % 32u), 1i), min(-7207i, _wgslsmith_mult_i32(-66717i, u_input.a.x)), true)) <= abs(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 59789i, 0i, -228i), vec4<i32>(0i, -1i, 15403i, 2147483647i)) >> (firstTrailingBit(vec4<u32>(var_0.x, global0.a, global0.a, 80595u)) % vec4<u32>(32u)), max(u_input.a << (vec4<u32>(var_0.x, global0.a, 1277u, global0.a) % vec4<u32>(32u)), abs(vec4<i32>(-29058i, global0.d, u_input.a.x, u_input.a.x)))));
    return -2147483647i;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    global2 = -_wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(global0.d, arg_1.x), func_2()), -36844i);
    var var_0 = Struct_2(arg_3, _wgslsmith_mod_vec2_i32(arg_1.yz, -vec2<i32>(-1i, arg_1.x)) | ~vec2<i32>(-1i, ~2147483647i), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(arg_2.c.zz)))))), global0.d);
    var var_1 = ~1i;
    global1 = array<Struct_1, 28>();
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec3<u32>(global0.a, 73516u, global0.a), u_input.a, Struct_1(~_wgslsmith_mult_u32(_wgslsmith_add_u32(0u, global0.a), ~global0.a), !(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-676f, -105f, global0.c.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(2202f, -838f, 638f) + vec3<f32>(global0.c.x, global0.c.x, global0.c.x))))), _wgslsmith_div_u32(~4294967295u, ~3398u));
    let var_1 = func_1(vec3<u32>(~(~4294967295u), _wgslsmith_div_u32(0u, ~(~27690u)), _wgslsmith_mult_u32(~var_0.a, global0.a)), _wgslsmith_add_vec4_i32(vec4<i32>(min(u_input.a.x, 26871i), ~u_input.a.x, i32(-1i) * -1i, 90198i), ~(-vec4<i32>(1i, global0.d, -1i, global0.b.x))) >> (abs(abs(~vec4<u32>(1u, global0.a, 1u, var_0.a))) % vec4<u32>(32u)), global1[_wgslsmith_index_u32(1u, 28u)], ~_wgslsmith_clamp_u32(reverseBits(global0.a) ^ var_0.a, ~(~45875u), var_0.a & (var_0.a >> (var_0.a % 32u))));
    var var_2 = Struct_2(global0.a, _wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -(u_input.a.xz << (vec2<u32>(29084u, global0.a) % vec2<u32>(32u))), -vec2<i32>(79246i, func_2())), var_0.c.xy, -19879i);
    let var_3 = var_1.b.wyw;
    var_2 = Struct_2(var_1.a, _wgslsmith_clamp_vec2_i32(~abs(vec2<i32>(global0.b.x, 28553i)), global0.b, abs(u_input.a.wx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c.x, -893f))), ~((var_2.b.x ^ (var_2.d >> (var_0.a % 32u))) << ((22232u & var_0.a) % 32u)));
    var var_4 = func_1(vec3<u32>(_wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(var_0.a, 31850u, var_0.a, 16069u)), _wgslsmith_mult_vec4_u32(select(vec4<u32>(var_2.a, 4294967295u, var_0.a, var_2.a), vec4<u32>(19383u, var_2.a, var_1.a, 13533u), true), reverseBits(vec4<u32>(var_2.a, 18099u, 0u, 0u)))), ~var_0.a, _wgslsmith_mult_u32(var_0.a, func_1(vec3<u32>(var_1.a, 4294967295u, 29706u) | vec3<u32>(0u, 30057u, var_1.a), vec4<i32>(0i, global0.d, global0.b.x, -33781i) & u_input.a, func_1(vec3<u32>(global0.a, var_0.a, 1u), u_input.a, Struct_1(var_1.a, vec4<bool>(false, var_3.x, var_1.b.x, var_0.b.x), vec3<f32>(global0.c.x, -1000f, var_0.c.x)), var_2.a), var_0.a).a)), firstTrailingBit(min(u_input.a, _wgslsmith_mod_vec4_i32(vec4<i32>(1i, -28351i, -1i, global0.d), u_input.a)) << ((reverseBits(vec4<u32>(65942u, var_0.a, 0u, 72061u)) | ~vec4<u32>(var_0.a, var_2.a, 1u, var_1.a)) % vec4<u32>(32u))), Struct_1(abs(_wgslsmith_div_u32(~0u, ~1u)), !(!var_1.b), _wgslsmith_f_op_vec3_f32(-var_0.c)), ~abs(29507u));
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.c.x, var_0.c.x))) + var_4.c.x));
    let var_6 = var_0.b;
    var var_7 = (var_1.b.x & true) && true;
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

