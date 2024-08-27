struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<u32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-12248i, -53813i);

var<private> global1: vec2<f32> = vec2<f32>(568f, -332f);

var<private> global2: Struct_1 = Struct_1(vec2<f32>(780f, 275f));

var<private> global3: Struct_1 = Struct_1(vec2<f32>(-1175f, 2783f));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    global2 = arg_2.b;
    let var_0 = -vec2<i32>(select(-58994i, ~_wgslsmith_dot_vec3_i32(u_input.b, u_input.b), !select(false, false, false)), -(~select(-1i, u_input.d, true)));
    var var_1 = arg_2;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(254f - global2.a.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-867f * arg_2.a) - _wgslsmith_f_op_f32(-2005f + global1.x))), arg_2.a, _wgslsmith_div_f32(-1240f, arg_0.a.x), var_1.b.a.x);
    let var_3 = any(select(!select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), false), true), vec4<bool>(-5063i != _wgslsmith_sub_i32(var_1.d, -3250i), true, false, true), vec4<bool>(true, true, all(vec2<bool>(true, true)), any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false))))));
    return min(37883i, ~_wgslsmith_dot_vec2_i32(~firstTrailingBit(vec2<i32>(50818i, 23155i)), var_0));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> f32 {
    let var_0 = vec3<i32>(40810i, _wgslsmith_add_i32(-(global0.x | ~u_input.b.x), global0.x), func_3(arg_0, Struct_2(-259f, Struct_1(vec2<f32>(arg_1, -141f)), max(~vec2<u32>(18852u, 77889u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(11046u, u_input.c))), i32(-1i) * -u_input.a), Struct_2(392f, Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-153f, global3.a.x), vec2<f32>(-308f, arg_1), false))), ~vec2<u32>(u_input.c, u_input.c), 21212i)));
    var var_1 = vec3<bool>(false, !(_wgslsmith_f_op_f32(-arg_1) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x + arg_0.a.x))), true);
    let var_2 = select(vec3<bool>((true || var_1.x) != select(!var_1.x, true, var_1.x), !any(vec4<bool>(true, false, true, false)), !(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, 1i, 2147483647i, 2147483647i), vec4<i32>(u_input.a, -28851i, -25704i, var_0.x)) < _wgslsmith_mult_i32(global0.x, -55899i))), vec3<bool>(!(!(!var_1.x)), var_1.x, var_1.x), (~u_input.c | ~(~u_input.c)) > 7793u);
    global0 = min(var_0.yx, ~(~var_0.yx));
    var var_3 = !(!var_2);
    return -558f;
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = true;
    var var_1 = global0.x;
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(global3.a + vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(func_2(Struct_1(global2.a), _wgslsmith_f_op_f32(step(157f, 152f)))))));
    var var_3 = Struct_2(global3.a.x, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, -1007f) * global3.a)))), vec2<u32>(_wgslsmith_sub_u32(~87630u, _wgslsmith_div_u32(4294967295u & u_input.c, min(0u, u_input.c))), select(4294967295u, ~_wgslsmith_add_u32(u_input.c, u_input.c), true && var_0)), func_3(Struct_1(_wgslsmith_f_op_vec2_f32(exp2(global2.a))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1430f, -996f))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.x, global2.a.x))), ~min(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, 27195u)), u_input.d), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-786f - -1042f)), Struct_1(arg_0.zx), ~(~vec2<u32>(u_input.c, u_input.c)), u_input.b.x)));
    var var_4 = Struct_2(_wgslsmith_f_op_f32(step(global1.x, _wgslsmith_div_f32(var_3.a, arg_0.x))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global2.a * vec2<f32>(-899f, var_2.a.x)))))), _wgslsmith_mult_vec2_u32(abs(var_3.c), ~var_3.c), var_3.d);
    return Struct_1(var_3.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(vec2<f32>(global1.x, -1215f));
    var var_0 = _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(~select(vec3<u32>(u_input.c, 4294967295u, u_input.c), vec3<u32>(0u, u_input.c, 19141u), false), ~vec3<u32>(~4294967295u, 23233u, 4294967295u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c << (u_input.c % 32u), 4294967295u, u_input.c), _wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, 72489u, u_input.c), firstTrailingBit(vec3<u32>(48998u, u_input.c, u_input.c)), ~vec3<u32>(77316u, 25873u, 19613u))) ^ ~firstTrailingBit(~vec3<u32>(4294967295u, 4294967295u, 55275u)));
    global1 = vec2<f32>(526f, global2.a.x);
    var_0 = vec3<u32>(var_0.x, 4294967295u, _wgslsmith_clamp_u32(~4294967295u >> (var_0.x % 32u), ~1u, ~(var_0.x ^ 1u))) >> (~(~(~(~vec3<u32>(u_input.c, 16746u, 55914u)))) % vec3<u32>(32u));
    global2 = func_1(vec3<f32>(-1770f, global2.a.x, _wgslsmith_f_op_f32(min(global3.a.x, global3.a.x))));
    global0 = u_input.b.yy;
    let var_1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(33503u, 21043u) & _wgslsmith_clamp_vec2_u32(var_0.zy, vec2<u32>(29397u, 18775u), vec2<u32>(u_input.c, u_input.c)), ~select(var_0.zy, var_0.zy, vec2<bool>(var_1, false)))), u_input.b);
}

