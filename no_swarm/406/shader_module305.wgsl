struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: i32,
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

var<private> global0: array<vec3<f32>, 31>;

var<private> global1: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(vec2<f32>(-864f, 814f)));

var<private> global2: Struct_2 = Struct_2(vec2<f32>(2589f, 379f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec3<i32>) -> vec4<u32> {
    var var_0 = countOneBits(arg_2.x);
    let var_1 = abs(select(~vec4<u32>(17088u, 25524u, u_input.d.x, u_input.d.x) & ~vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, u_input.d.x), reverseBits(~vec4<u32>(1u, 0u, u_input.d.x, 4823u)), any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)))) >> ((vec4<u32>(139996u << (u_input.d.x % 32u), max(1u, u_input.d.x), min(1u, 404u), 77654u) | ~vec4<u32>(u_input.d.x, u_input.d.x, 1u, 0u)) % vec4<u32>(32u)));
    let var_2 = u_input.c;
    var var_3 = true;
    let var_4 = Struct_2(global2.a);
    return _wgslsmith_mod_vec4_u32(var_1, vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(27889u, u_input.d.x), ~u_input.d.x), ~(~var_1.x), firstTrailingBit(65304u) & _wgslsmith_sub_u32(0u, u_input.d.x), firstLeadingBit(abs(u_input.d.x))) << (_wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, u_input.d.x, 0u, 0u), firstTrailingBit(var_1 & vec4<u32>(0u, u_input.d.x, var_1.x, 4294967295u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, var_1.x, u_input.d.x, var_1.x), vec4<u32>(66842u, var_1.x, 1u, 4294967295u))) % vec4<u32>(32u)));
}

fn func_2(arg_0: bool, arg_1: vec3<u32>) -> f32 {
    let var_0 = select(~(~(vec4<u32>(4294967295u, u_input.d.x, 62861u, arg_1.x) << (~vec4<u32>(4294967295u, 1u, 37605u, 4294967295u) % vec4<u32>(32u)))), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 53606u, 4294967295u, u_input.d.x), func_3(Struct_2(global2.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.x, -590f, 289f) * global0[_wgslsmith_index_u32(52359u, 31u)]) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-923f, -1229f, global2.a.x))), u_input.c.zxz << (u_input.d % vec3<u32>(32u)))), false);
    global2 = global1[_wgslsmith_index_u32(~max(_wgslsmith_mod_u32(0u, firstLeadingBit(~var_0.x)), _wgslsmith_div_u32(arg_1.x, firstLeadingBit(_wgslsmith_sub_u32(4294967295u, 1u)))), 1u)];
    var var_1 = Struct_1(u_input.d.x, false, !all(vec2<bool>(!arg_0, arg_0)), vec2<i32>(-abs(u_input.e), _wgslsmith_dot_vec2_i32(~min(vec2<i32>(-15623i, u_input.e), vec2<i32>(u_input.e, u_input.b)), u_input.c.xw)));
    var var_2 = ~_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.d.x, 0i, -17774i, _wgslsmith_mult_i32(-1616i, -109788i)), _wgslsmith_div_vec4_i32(vec4<i32>(var_1.d.x, -28981i, -44676i, var_1.d.x), ~vec4<i32>(u_input.e, var_1.d.x, 2147483647i, var_1.d.x))), _wgslsmith_mod_i32(_wgslsmith_sub_i32(~var_1.d.x, ~(-1i)), u_input.a));
    return global2.a.x;
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: u32, arg_3: u32) -> Struct_2 {
    var var_0 = select(_wgslsmith_f_op_f32(arg_1.x + 1358f) >= _wgslsmith_f_op_f32(909f - _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-arg_1.x))), !any(vec4<bool>(any(vec3<bool>(true, arg_0, arg_0)), false, all(vec3<bool>(true, true, true)), true)), any(vec2<bool>(all(vec3<bool>(arg_0, true, arg_0)), true)));
    let var_1 = Struct_1(_wgslsmith_mod_u32(u_input.d.x, arg_2), true, true | arg_0, vec2<i32>(-(~firstTrailingBit(19731i)), u_input.c.x));
    var var_2 = _wgslsmith_div_vec2_i32(u_input.c.yy, -select(vec2<i32>(var_1.d.x, -2147483647i), firstLeadingBit(vec2<i32>(2147483647i, -30781i)) << (u_input.d.zx % vec2<u32>(32u)), select(select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_0)), vec2<bool>(false, arg_0), !vec2<bool>(true, var_1.b))));
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d.x << (1u % 32u), 0u), 1u)];
    global0 = array<vec3<f32>, 31>();
    return Struct_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-732f, arg_1.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(max(arg_1.x, arg_1.x)))), !select(vec2<bool>(false, arg_0), !vec2<bool>(var_1.b, true), select(vec2<bool>(var_1.c, false), vec2<bool>(false, true), vec2<bool>(arg_0, false))))));
}

fn func_1() -> Struct_2 {
    global0 = array<vec3<f32>, 31>();
    let var_0 = func_4(true, vec2<f32>(-1916f, _wgslsmith_div_f32(global2.a.x, _wgslsmith_f_op_f32(func_2(any(vec4<bool>(false, false, false, true)), u_input.d >> (u_input.d % vec3<u32>(32u)))))), 66013u | select(21212u, _wgslsmith_mult_u32(0u, firstTrailingBit(u_input.d.x)), true), u_input.d.x);
    global0 = array<vec3<f32>, 31>();
    global1 = array<Struct_2, 1>();
    let var_1 = Struct_1(func_3(var_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-262f, var_0.a.x, -932f)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global2.a.x, -1339f, -785f))))), -firstTrailingBit(~vec3<i32>(1i, u_input.e, u_input.b))).x, var_0.a.x <= 2336f, -u_input.b == u_input.a, -_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(-vec2<i32>(-1i, u_input.a), _wgslsmith_mod_vec2_i32(u_input.c.xz, vec2<i32>(u_input.a, -2147483647i)), ~u_input.c.zx), ~u_input.c.yw, ~vec2<i32>(1i, u_input.b)));
    return global1[_wgslsmith_index_u32(var_1.a, 1u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    var var_0 = global1[_wgslsmith_index_u32(u_input.d.x << (_wgslsmith_dot_vec4_u32(func_3(func_4(true, _wgslsmith_f_op_vec2_f32(-global2.a), u_input.d.x, min(0u, u_input.d.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(u_input.d.x, 31u)] + global0[_wgslsmith_index_u32(u_input.d.x, 31u)]), _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(1u, 31u)]), true)), vec3<i32>(~u_input.c.x, i32(-1i) * -1i, -u_input.b)), vec4<u32>(u_input.d.x, abs(u_input.d.x), ~74966u, 65468u ^ u_input.d.x) ^ (select(vec4<u32>(0u, u_input.d.x, 35269u, u_input.d.x), vec4<u32>(u_input.d.x, u_input.d.x, 0u, u_input.d.x), true) & vec4<u32>(u_input.d.x, u_input.d.x, 4294967295u, 1u))) % 32u), 1u)];
    var var_1 = u_input.e;
    let var_2 = Struct_1(~_wgslsmith_dot_vec3_u32(u_input.d << (abs(u_input.d) % vec3<u32>(32u)), vec3<u32>(u_input.d.x ^ u_input.d.x, u_input.d.x | 1u, u_input.d.x)), true, true || (func_3(func_4(false, vec2<f32>(-475f, global2.a.x), 0u, 32242u), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.d.x, 60064u), 31u)], vec3<i32>(-16281i, -35106i, u_input.c.x)).x >= u_input.d.x), _wgslsmith_add_vec2_i32(u_input.c.yw, vec2<i32>(-74144i, ~abs(15995i))));
    global2 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-701f, 1171f))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(var_2.b, u_input.d)) - _wgslsmith_div_f32(193f, var_0.a.x)))));
    let var_3 = u_input.c.xxy;
    var_0 = global1[_wgslsmith_index_u32(~u_input.d.x, 1u)];
    global0 = array<vec3<f32>, 31>();
    let var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(2147483647i));
}

