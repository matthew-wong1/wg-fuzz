struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: bool,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 1u, 4294967295u, 42668u);

var<private> global1: Struct_3 = Struct_3(Struct_1(vec2<i32>(2147483647i, 2147483647i), vec4<u32>(0u, 36248u, 0u, 4294967295u)), 2147483647i, Struct_1(vec2<i32>(-4490i, 0i), vec4<u32>(55842u, 68197u, 68964u, 51483u)), -216f);

var<private> global2: array<i32, 6>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_1) -> u32 {
    global1 = Struct_3(arg_0.a, ~arg_1.a.x, Struct_1(vec2<i32>(arg_1.a.x, 19708i), select(~vec4<u32>(43556u, 11344u, 58974u, 39610u), select(vec4<u32>(arg_1.b.x, global0.x, arg_0.a.b.x, u_input.e), vec4<u32>(arg_0.a.b.x, 4294967295u, 73269u, 17412u), true), true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1367f - global1.d)), _wgslsmith_f_op_f32(f32(-1f) * -1539f)) - _wgslsmith_f_op_f32(abs(global1.d))));
    global0 = vec4<u32>(firstLeadingBit(~(~(~global0.x))), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~abs(vec3<u32>(arg_0.a.b.x, 38561u, 15393u)), global1.a.b.xww), global0.wxz), ~arg_1.b.x, 1u);
    return max(arg_1.b.x, _wgslsmith_div_u32(_wgslsmith_mod_u32(~(~global0.x), global1.a.b.x), 42668u));
}

fn func_2() -> Struct_5 {
    let var_0 = 0u;
    global0 = _wgslsmith_add_vec4_u32(vec4<u32>(6394u, ~(~22831u), _wgslsmith_mod_u32(countOneBits(global0.x), var_0), func_3(Struct_5(Struct_1(global1.a.a, vec4<u32>(global1.a.b.x, 23029u, 58671u, 15168u)), vec4<f32>(1324f, global1.d, global1.d, 1149f), -265f), global1.a)) & (select(global1.a.b, global1.a.b | global1.a.b, true) << ((~global1.a.b << (firstLeadingBit(vec4<u32>(var_0, global1.c.b.x, 60269u, u_input.e)) % vec4<u32>(32u))) % vec4<u32>(32u))), abs(global1.c.b));
    var var_1 = ~vec2<i32>(abs(global1.b << (min(0u, u_input.c.x) % 32u)), select(i32(-1i) * -2147483647i, ~(-37786i) | firstTrailingBit(2838i), true));
    let var_2 = true;
    let var_3 = Struct_3(Struct_1(~vec2<i32>(countOneBits(var_1.x), _wgslsmith_mod_i32(-14057i, global1.b)), global1.c.b), ~u_input.b, Struct_1(firstLeadingBit(vec2<i32>(u_input.b ^ 0i, _wgslsmith_mult_i32(2748i, u_input.b))), select(~global1.c.b, abs(global1.a.b), !vec4<bool>(var_2, var_2, false, true))), -382f);
    return Struct_5(var_3.c, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -521f), _wgslsmith_div_f32(-1011f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.d)))), 341f, global1.d), 1180f);
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_5, arg_3: Struct_3) -> vec4<i32> {
    global2 = array<i32, 6>();
    var var_0 = !arg_0.zz;
    var var_1 = global1.c;
    var_0 = select(vec2<bool>(all(!arg_0.yz), select(true, !arg_0.x, true)), !select(select(select(arg_0.yx, arg_0.xz, var_0.x), select(vec2<bool>(true, var_0.x), vec2<bool>(arg_0.x, true), arg_0.x), select(arg_0.zz, vec2<bool>(var_0.x, arg_0.x), true)), !arg_0.zx, arg_0.zz), arg_0.xz);
    var var_2 = i32(-1i) * -34389i;
    return vec4<i32>(global2[_wgslsmith_index_u32(abs(21071u), 6u)], -_wgslsmith_add_i32(func_2().a.a.x, -2147483647i), _wgslsmith_div_i32(_wgslsmith_sub_i32(-_wgslsmith_sub_i32(arg_3.b, -6734i), -1i), i32(-1i) * -43530i), ~(_wgslsmith_dot_vec3_i32(~vec3<i32>(global1.c.a.x, 2147483647i, arg_3.a.a.x), vec3<i32>(global2[_wgslsmith_index_u32(0u, 6u)], -1i, 27861i)) ^ _wgslsmith_div_i32(-1502i, u_input.b)));
}

fn func_1(arg_0: f32, arg_1: f32) -> vec2<i32> {
    let var_0 = Struct_2(max(vec4<i32>(u_input.b | _wgslsmith_mult_i32(u_input.b, 2147483647i), _wgslsmith_mult_i32(global1.a.a.x, 1i), global1.a.a.x, 2147483647i), func_4(vec3<bool>(false, true, true), _wgslsmith_div_i32(~global1.b, -global2[_wgslsmith_index_u32(42793u, 6u)]), func_2(), Struct_3(global1.a, global2[_wgslsmith_index_u32(4294967295u, 6u)] | -1i, global1.a, 1f))), global1.b, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(firstTrailingBit(global1.a.a), firstTrailingBit(vec2<i32>(-1i, global1.a.a.x))), min(countOneBits(global2[_wgslsmith_index_u32(u_input.c.x, 6u)]), ~global2[_wgslsmith_index_u32(global1.a.b.x, 6u)]), ~(-u_input.b)) & ~(-select(-37202i, global2[_wgslsmith_index_u32(1u, 6u)], false)), _wgslsmith_div_f32(arg_0, _wgslsmith_div_f32(-1144f, -945f)) != -658f, vec3<bool>(true, true, _wgslsmith_clamp_i32(i32(-1i) * -41714i, countOneBits(-1i), -5519i) >= u_input.b));
    global0 = ~global1.c.b;
    let var_1 = all(vec2<bool>(!(!(!var_0.d)), !var_0.e.x));
    var var_2 = Struct_3(func_2().a, _wgslsmith_div_i32(-u_input.b, abs(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b, -7899i), vec2<i32>(u_input.b, u_input.b))))), Struct_1(vec2<i32>(-17177i, -2147483647i), _wgslsmith_add_vec4_u32(abs(global1.a.b), vec4<u32>(u_input.e, ~4294967295u, firstLeadingBit(global0.x), global0.x))), _wgslsmith_f_op_f32(f32(-1f) * -245f));
    global1 = Struct_3(var_2.c, _wgslsmith_dot_vec4_i32(vec4<i32>(min(global1.c.a.x, 37984i), u_input.b, -23378i, var_0.a.x) ^ _wgslsmith_div_vec4_i32(vec4<i32>(var_2.b, global1.b, var_2.a.a.x, 1i), var_0.a), select(var_0.a, firstLeadingBit(var_0.a), false)), func_2().a, arg_1);
    return vec2<i32>(u_input.b, u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 6>();
    var var_0 = func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.d * -257f), -481f), -888f);
    var var_1 = true;
    var_1 = (true && select(true == (global1.c.b.x < 83390u), true, false)) & false;
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.d + global1.d)))))));
    let var_3 = global1.c;
    var var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(1336f, -var_0.x ^ ~1i);
}

