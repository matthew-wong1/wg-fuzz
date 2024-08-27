struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec2<bool>,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec2<i32>,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(vec3<i32>(-11722i, -55901i, -1i), 0u), Struct_2(vec3<i32>(0i, 30078i, 0i), 1u));

var<private> global1: vec3<i32> = vec3<i32>(1i, 36167i, 0i);

var<private> global2: vec4<i32>;

var<private> global3: array<Struct_4, 18>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> Struct_2 {
    return Struct_2(min(global2.xzw, vec3<i32>(_wgslsmith_clamp_i32(i32(-1i) * -1i, global2.x, 1i), ~(-29311i | global1.x), global1.x)), abs(~4294967295u));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: vec2<bool>, arg_3: vec4<bool>) -> f32 {
    global3 = array<Struct_4, 18>();
    let var_0 = -firstTrailingBit(_wgslsmith_mod_i32(~30255i, u_input.b.x & 2147483647i)) ^ ~global1.x;
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-869f, -1000f))));
    global1 = vec3<i32>(~global2.x, -28873i, abs(2147483647i));
    let var_2 = Struct_1(select(arg_3.yx, !(!(!vec2<bool>(false, arg_2.x))), vec2<bool>(arg_3.x, true)), u_input.c.x, vec2<bool>(false, !all(select(arg_3.zy, arg_3.yw, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)) + _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0), vec3<f32>(155f, arg_0, arg_0))))), min(vec3<i32>(-44676i, 1i, global1.x) ^ (global2.wzy ^ global2.zzz), ~(~vec3<i32>(global1.x, 42382i, -12205i))));
    return -1391f;
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: i32, arg_3: Struct_2) -> Struct_4 {
    let var_0 = Struct_3(func_2(), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(_wgslsmith_f_op_f32(func_3(-487f, u_input.a, vec2<bool>(false, false), vec4<bool>(true, true, false, false))), 310f, -646f, -1000f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1519f, -921f, -662f, -231f)))))), global1.zy, Struct_1(vec2<bool>(false, false), 30531u, vec2<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), !select(true, true, false)), vec3<f32>(2806f, _wgslsmith_f_op_f32(max(-1150f, _wgslsmith_div_f32(-433f, -683f))), -1000f), select(~vec3<i32>(20764i, global2.x, -1i), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-7605i, arg_3.a.x, arg_2), arg_3.a, u_input.b), vec3<i32>(u_input.b.x, -25761i, 9960i) | vec3<i32>(global2.x, 24914i, -2147483647i)), vec3<bool>(true, true, true))), select(true, select(true, 1u != arg_3.b, true), select(all(vec3<bool>(true, false, true)), true, true)) && true);
    global2 = ~(-(~(vec4<i32>(0i, 0i, arg_2, var_0.c.x) << (u_input.c % vec4<u32>(32u))) & _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, arg_3.a.x, var_0.a.a.x, global1.x), _wgslsmith_add_vec4_i32(vec4<i32>(-30905i, arg_2, -18310i, -46124i), vec4<i32>(-1i, 88482i, arg_2, 1i)), -vec4<i32>(19025i, global2.x, -2147483647i, arg_1))));
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.d.b, 4294967295u), 18u)];
    var var_2 = ~arg_3.b;
    global0 = array<Struct_2, 2>();
    return global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(~0u, ~4294967295u)), u_input.c.yw), _wgslsmith_mod_vec2_u32(vec2<u32>(57644u, countOneBits(101150u)), u_input.c.wx) ^ vec2<u32>(var_0.d.b, 28924u)), 18u)];
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: f32, arg_3: vec3<bool>) -> vec2<u32> {
    global0 = array<Struct_2, 2>();
    let var_0 = arg_2;
    global1 = firstTrailingBit((global2.zwx >> (u_input.c.wyy % vec3<u32>(32u))) ^ -global2.zzz) >> (countOneBits(~firstLeadingBit(vec3<u32>(1u, 1u, 14164u)) & (~vec3<u32>(u_input.c.x, u_input.a, 54383u) << (~vec3<u32>(u_input.c.x, 1u, 4294967295u) % vec3<u32>(32u)))) % vec3<u32>(32u));
    global1 = vec3<i32>(~1i, -(-14132i << (select(93391u, u_input.c.x, arg_0.a) % 32u)), _wgslsmith_mod_i32(_wgslsmith_sub_i32(-3034i, global2.x), global2.x) & -2147483647i) << (u_input.c.xxy % vec3<u32>(32u));
    global2 = select(_wgslsmith_div_vec4_i32(~vec4<i32>(~(-41409i), global1.x, 8632i, u_input.b.x), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, global2.x, -44881i, global1.x), vec4<i32>(0i, global2.x, 18888i, global1.x)), -vec4<i32>(-1i, u_input.b.x, 46416i, u_input.b.x)), vec4<i32>(reverseBits(-1i), global1.x ^ -53742i, _wgslsmith_mod_i32(global2.x, -1i), _wgslsmith_div_i32(global1.x, u_input.b.x)))), min(_wgslsmith_div_vec4_i32(vec4<i32>(1i, 7578i, 1i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, 54314i, 2147483647i)) << (abs(u_input.c) % vec4<u32>(32u)), select((vec4<i32>(u_input.b.x, 1i, -26687i, global1.x) ^ vec4<i32>(-57670i, global1.x, -18504i, global2.x)) & (vec4<i32>(global1.x, global2.x, 0i, 30822i) & vec4<i32>(26630i, -5599i, 1i, u_input.b.x)), -vec4<i32>(u_input.b.x, 1i, global1.x, global2.x), vec4<bool>(arg_0.a, !arg_0.a, arg_1.a, true))), select(select(vec4<bool>(arg_3.x, false, true, true), vec4<bool>(false, all(arg_3.zz), all(vec4<bool>(arg_0.a, true, arg_0.a, false)), arg_3.x), select(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, false), vec4<bool>(arg_3.x, true, true, arg_0.a), !vec4<bool>(true, arg_1.a, true, false))), select(!(!vec4<bool>(true, false, arg_3.x, arg_1.a)), vec4<bool>(true, arg_1.a, arg_1.a & false, true), func_2().a.x != global2.x), arg_3.x));
    return vec2<u32>(~(~0u), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(firstLeadingBit(u_input.c.x), 18u)];
    let var_1 = var_0.a || all(vec2<bool>(select(false, false, false) & true, all(select(vec4<bool>(false, var_0.a, var_0.a, false), vec4<bool>(var_0.a, var_0.a, true, false), false))));
    let var_2 = firstTrailingBit(_wgslsmith_mod_i32(firstLeadingBit(max(global2.x, 2147483647i)), 0i));
    var var_3 = _wgslsmith_sub_vec2_u32(func_4(Struct_4(any(!vec4<bool>(true, var_0.a, false, var_0.a))), func_1(_wgslsmith_div_vec3_u32(u_input.c.yxy, ~u_input.c.yzw), 1i, select(~28214i, u_input.b.x, var_0.a == var_1), global0[_wgslsmith_index_u32(u_input.c.x, 2u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-183f))), vec3<bool>(true, var_0.a, true)), vec2<u32>(4294967295u, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(28051u, u_input.c.x, 0u), abs(u_input.c.zxy)))));
    let var_4 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(global2.wz);
}

