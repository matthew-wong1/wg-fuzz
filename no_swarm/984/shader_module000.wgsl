struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: Struct_2,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<u32, 1>;

var<private> global2: vec2<bool>;

var<private> global3: Struct_1 = Struct_1(-609f);

var<private> global4: vec3<f32> = vec3<f32>(-913f, -413f, 344f);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec3<u32>, arg_3: u32) -> Struct_1 {
    global1 = array<u32, 1>();
    return Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-492f + -1671f), _wgslsmith_f_op_f32(round(global4.x)))), -777f, any(!vec2<bool>(global2.x, true)))));
}

fn func_3(arg_0: Struct_4) -> vec3<f32> {
    global2 = select(arg_0.a.zx, vec2<bool>(!any(arg_0.a), global2.x), false);
    return vec3<f32>(arg_0.c.a.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.d.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.d.x, global3.a, false)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1948f) * _wgslsmith_div_f32(global3.a, 660f)))), 985f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global3.a)) - _wgslsmith_f_op_f32(min(arg_0.d.x, -1000f))))), _wgslsmith_f_op_f32(max(global4.x, _wgslsmith_f_op_f32(global3.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.a.a - 346f))))));
}

fn func_2() -> vec4<i32> {
    global0 = _wgslsmith_mod_i32(45075i, i32(-1i) * -1i);
    global4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, 724f, 441f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, global4.x, -975f)))))) - _wgslsmith_f_op_vec3_f32(func_3(Struct_4(!vec3<bool>(global2.x, true, global2.x), -u_input.c, Struct_2(Struct_1(-152f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a, global3.a, -669f)))))));
    global2 = vec2<bool>(!(true || (global2.x | true)), any(vec2<bool>(true, true)));
    global1 = array<u32, 1>();
    global0 = u_input.c.x;
    return vec4<i32>(select(_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.c.x & 2147483647i, min(-2147483647i, u_input.b.x)), u_input.b.x), _wgslsmith_clamp_i32(~(-93011i), firstTrailingBit(0i), select(1i, u_input.c.x, true) ^ _wgslsmith_mult_i32(0i, u_input.b.x)), true), abs(-15671i << (~4294967295u % 32u)), -(~(-1i)), i32(-1i) * -2147483647i);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_4, arg_3: Struct_4) -> Struct_2 {
    let var_0 = ~func_2().x;
    var var_1 = Struct_2(arg_2.c.a);
    let var_2 = !arg_3.a.x;
    var var_3 = _wgslsmith_mod_vec2_i32(u_input.b.yw, _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_add_i32(7453i, 63246i), countOneBits(-7247i)) >> (_wgslsmith_clamp_vec2_u32(~vec2<u32>(85092u, 4294967295u), ~vec2<u32>(0u, global1[_wgslsmith_index_u32(u_input.a, 1u)]), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, global1[_wgslsmith_index_u32(0u, 1u)]), vec2<u32>(u_input.a, 40230u))) % vec2<u32>(32u)), vec2<i32>((-21582i | u_input.b.x) << (25060u % 32u), max(func_2().x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.b.x, arg_2.b.x, 1i, arg_1.x), arg_1)))));
    var var_4 = _wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.a, select(_wgslsmith_add_u32(u_input.a, global1[_wgslsmith_index_u32(1u, 1u)]), firstTrailingBit(4294967295u), global2.x && var_2)), abs(abs(~0u)), u_input.a) & firstTrailingBit(1u);
    return arg_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(45443u, -24865i, vec3<u32>(max(13935u, ~53740u), _wgslsmith_dot_vec3_u32(~vec3<u32>(1384u, 1u, u_input.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(54169u, global1[_wgslsmith_index_u32(1u, 1u)], 1u), vec3<u32>(u_input.a, u_input.a, 1u))), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 17536u), vec2<u32>(1u, 1u) >> (vec2<u32>(global1[_wgslsmith_index_u32(u_input.a, 1u)], 4294967295u) % vec2<u32>(32u)))), u_input.a), countOneBits(abs(func_2())), Struct_4(vec3<bool>(global2.x, any(!vec4<bool>(global2.x, false, global2.x, false)), false), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(u_input.b.x, u_input.c.x, 1i, u_input.b.x)), ~vec4<i32>(1i, u_input.c.x, 0i, -2147483647i)) & select(-vec4<i32>(-14262i, -1i, u_input.b.x, -55605i), abs(u_input.c), false), Struct_2(Struct_1(_wgslsmith_div_f32(global4.x, global4.x))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(floor(1910f)), _wgslsmith_f_op_f32(-global3.a), 1000f), vec3<f32>(-1335f, -210f, -1372f)))), Struct_4(!(!vec3<bool>(true, global2.x, global2.x)), select(min(select(u_input.c, u_input.b, true), u_input.b ^ vec4<i32>(55556i, -1i, -2147483647i, 0i)), -(vec4<i32>(0i, 8541i, u_input.b.x, -2147483647i) & u_input.b), global2.x), Struct_2(func_1(33602u >> (global1[_wgslsmith_index_u32(0u, 1u)] % 32u), -u_input.b.x, ~vec3<u32>(u_input.a, 1u, u_input.a), 2197u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_4(vec3<bool>(true, global2.x, false), u_input.c, Struct_2(Struct_1(global3.a)), vec3<f32>(1808f, global4.x, global3.a)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, 419f, -155f)))));
    let var_1 = Struct_2(func_4(var_0.a, _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, u_input.c.x, u_input.c.x, u_input.c.x), u_input.c, u_input.b) << (vec4<u32>(42803u, u_input.a, 37874u, global1[_wgslsmith_index_u32(1u, 1u)]) % vec4<u32>(32u)), -vec4<i32>(u_input.c.x, u_input.b.x, -49735i, u_input.b.x)), Struct_4(!(!vec3<bool>(true, global2.x, global2.x)), u_input.b, func_4(var_0.a, -u_input.b, Struct_4(vec3<bool>(global2.x, true, global2.x), u_input.b, var_0, vec3<f32>(818f, var_0.a.a, global3.a)), Struct_4(vec3<bool>(true, false, true), u_input.c, var_0, vec3<f32>(-1601f, global4.x, global3.a))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.a.a, 280f, -1299f), vec3<f32>(var_0.a.a, -161f, -2261f)))))), Struct_4(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, global2.x, true)), u_input.b, func_4(func_1(u_input.a, -28367i, vec3<u32>(104492u, 4294967295u, 1u), 39108u), vec4<i32>(u_input.c.x, -26083i, 0i, -21052i), Struct_4(vec3<bool>(global2.x, true, global2.x), vec4<i32>(u_input.c.x, u_input.b.x, 22736i, u_input.c.x), var_0, vec3<f32>(var_0.a.a, -325f, global3.a)), Struct_4(vec3<bool>(false, global2.x, true), vec4<i32>(1i, u_input.c.x, u_input.b.x, -2147483647i), var_0, vec3<f32>(global3.a, -919f, global4.x))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.a.a, var_0.a.a, global3.a), vec3<f32>(global4.x, 1000f, 1000f))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1000f, var_0.a.a, var_0.a.a))))))).a);
    global2 = select(!vec2<bool>(all(select(vec4<bool>(true, global2.x, global2.x, global2.x), vec4<bool>(global2.x, true, global2.x, false), global2.x)), all(vec2<bool>(global2.x, global2.x))), select(select(vec2<bool>(true, !global2.x), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), global2.x), !vec2<bool>(u_input.b.x <= -2147483647i, !global2.x), !any(vec2<bool>(true, true))), !vec2<bool>(u_input.a >= ~13829u, true));
    global0 = 1i;
    global4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1.a.a)), 926f, _wgslsmith_f_op_f32(-var_1.a.a)) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(1300f, global3.a, -1533f), vec3<f32>(global4.x, 1088f, -739f)), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.a, -448f, 998f), vec3<f32>(global3.a, var_1.a.a, 2170f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(198f, -1000f, global3.a)))));
    global2 = vec2<bool>(global2.x, all(select(!vec4<bool>(global2.x, global2.x, global2.x, true), vec4<bool>(global2.x, !global2.x, true && global2.x, global2.x), any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, global2.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(global4.xy - vec2<f32>(func_1(~u_input.a, u_input.c.x, _wgslsmith_add_vec3_u32(vec3<u32>(28536u, 0u, 0u), vec3<u32>(u_input.a, u_input.a, 1u)), abs(u_input.a)).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) - global3.a))));
}

