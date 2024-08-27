struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_4 = Struct_4(vec4<i32>(i32(-2147483648), 0i, -1i, 32565i), Struct_1(47938u, true, 0u, vec3<f32>(306f, 1001f, 181f)), vec3<f32>(-615f, 385f, -1804f));

var<private> global2: vec4<u32> = vec4<u32>(4294967295u, 13312u, 1u, 116054u);

var<private> global3: i32;

var<private> global4: vec3<bool> = vec3<bool>(true, true, false);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2) -> f32 {
    var var_0 = -countOneBits(global1.a);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1006f)));
}

fn func_2() -> vec4<u32> {
    global2 = ~(~vec4<u32>(32628u, global1.b.a, 0u, max(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.b.c, 10997u, 4294967295u), vec3<u32>(u_input.c, 1u, 1u)), 12620u)));
    global2 = ~(~abs(vec4<u32>(firstLeadingBit(53702u), _wgslsmith_mult_u32(global2.x, 57260u), _wgslsmith_mult_u32(global2.x, 77986u), global2.x)));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, -918f)) * global0.x)), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(!(!vec3<bool>(false, global4.x, global4.x)), Struct_2(u_input.c, ~vec2<u32>(global2.x, 47212u), 1u, _wgslsmith_div_f32(global0.x, global0.x), Struct_1(global2.x, global1.b.b, global1.b.c, global1.b.d))))), global0.x);
    let var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(-375f, _wgslsmith_f_op_f32(-815f * _wgslsmith_f_op_f32(-1959f - global0.x))), _wgslsmith_f_op_f32(f32(-1f) * -380f), global0.x, global1.b.d.x), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, _wgslsmith_f_op_f32(-global1.b.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.x))), global1.b.d.x))), !any(vec2<bool>(global1.b.b, global1.a.x == global1.a.x))));
    let var_1 = Struct_3(_wgslsmith_mult_vec3_u32(global2.yzz, ~(~(~vec3<u32>(u_input.c, 4294967295u, global2.x)))), global1.b, Struct_1(0u, global1.b.b, 27772u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global0.x, 149f) + var_0.xzx), global1.b.d, vec3<bool>(true, global4.x, true))) + var_0.ywx)), global4.yy);
    return _wgslsmith_mod_vec4_u32(~(~(~(~vec4<u32>(0u, global2.x, 11762u, 16096u)))), vec4<u32>(~(~_wgslsmith_mod_u32(global2.x, 1u)), firstLeadingBit(firstLeadingBit(1u)), 75354u, min(~35306u, global2.x)));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: Struct_4, arg_3: Struct_3) -> Struct_5 {
    global0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1147f * -1000f)), 610f, arg_3.c.d.x, 1435f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.c.x, 602f, 1206f, 527f), vec4<f32>(-238f, global0.x, -146f, 179f)))))));
    global2 = func_2();
    return Struct_5(!(global1.b.b | true), false, vec3<u32>(4294967295u, countOneBits(71389u), max(0u, 3710u)));
}

fn func_4(arg_0: Struct_5) -> vec4<u32> {
    var var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(global2.yyz, vec3<u32>(global2.x, 28229u, _wgslsmith_add_u32(global1.b.c, arg_0.c.x))), ~(~(~arg_0.c))) == global1.b.c;
    let var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(select(global2.zyw, vec3<u32>(u_input.c, 1u, _wgslsmith_mult_u32(83528u, 0u)), !arg_0.a), ~vec3<u32>(arg_0.c.x >> (global2.x % 32u), u_input.c, u_input.c)), arg_0.c);
    global2 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(arg_0.c.yz, global2.yw), 52944u), ~(~var_1), func_1(~0i, global0.x, Struct_4(vec4<i32>(global1.a.x, 2147483647i, 0i, -1i), Struct_1(10077u, false, 11562u, global1.c), vec3<f32>(-1000f, -1220f, global1.c.x)), Struct_3(global2.zyw, global1.b, Struct_1(global1.b.c, arg_0.a, 9641u, vec3<f32>(global0.x, global1.c.x, -995f)), global4.yz)).c.x, 6990u), ~vec4<u32>(65248u, var_1, select(arg_0.c.x, 35136u, true), global2.x));
    global2 = select(~(~(~vec4<u32>(69385u, 0u, arg_0.c.x, 4294967295u) | _wgslsmith_add_vec4_u32(vec4<u32>(96968u, u_input.c, 4294967295u, 1u), vec4<u32>(15161u, u_input.c, u_input.c, arg_0.c.x)))), ~vec4<u32>(func_2().x, var_1, var_1, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.c, 4294967295u, global2.x, 18791u)), abs(vec4<u32>(arg_0.c.x, global2.x, u_input.c, 48995u)))), select(!select(!vec4<bool>(false, true, global1.b.b, false), select(vec4<bool>(true, false, arg_0.b, true), vec4<bool>(true, false, global1.b.b, false), vec4<bool>(true, true, true, false)), global4.x), vec4<bool>(all(vec4<bool>(true, global4.x, false, false)), global4.x, true | any(vec2<bool>(false, true)), max(129563u, global1.b.c) == 25620u), global2.x <= global1.b.c));
    let var_2 = Struct_3(arg_0.c, Struct_1(36599u, !(max(0u, var_1) != global2.x), _wgslsmith_mult_u32(1u, 6243u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global1.b.d)) - vec3<f32>(_wgslsmith_f_op_f32(ceil(-211f)), -663f, -1486f))), global1.b, global4.zz);
    return vec4<u32>(0u, arg_0.c.x, ~(~global1.b.a << (~1u % 32u)), firstLeadingBit(1u) | _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1, arg_0.c.x, global1.b.a, var_2.b.c), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 95790u, 21976u, 4294967295u), vec4<u32>(0u, arg_0.c.x, u_input.c, 122153u))), ~(~vec4<u32>(37054u, 0u, global2.x, 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.x;
    global2 = vec4<u32>(~_wgslsmith_sub_u32(global2.x, 4294967295u), global2.x, u_input.c, ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(global2.yy, vec2<u32>(global1.b.a, global1.b.a)), abs(global2.zx)) >> (_wgslsmith_dot_vec4_u32(func_4(func_1(46351i, global0.x, Struct_4(vec4<i32>(u_input.b, 8144i, u_input.a, -16654i), Struct_1(0u, global4.x, 16888u, vec3<f32>(global1.c.x, 1011f, global0.x)), vec3<f32>(-1399f, global1.b.d.x, global1.b.d.x)), Struct_3(vec3<u32>(15868u, u_input.c, global1.b.c), global1.b, global1.b, vec2<bool>(false, true)))), ~vec4<u32>(0u, 24899u, 6819u, global2.x)) % 32u));
    var var_1 = global1.b;
    let var_2 = u_input.b;
    let var_3 = Struct_2(_wgslsmith_add_u32(38114u, global2.x), select(countOneBits(vec2<u32>(abs(var_1.a), 15442u)), global2.zw >> (global2.yz % vec2<u32>(32u)), ~global1.b.a < 28105u), 72664u, var_1.d.x, Struct_1(_wgslsmith_dot_vec2_u32(global2.zy, _wgslsmith_add_vec2_u32(max(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, global1.b.a)), global2.xw >> (global2.xz % vec2<u32>(32u)))), var_1.b != global4.x, 1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.x, var_1.d.x, global0.x)) - _wgslsmith_div_vec3_f32(var_1.d, var_1.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.d.x, var_1.d.x))), _wgslsmith_div_f32(global1.c.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_3.d))))), -213f, _wgslsmith_div_f32(181f, var_1.d.x)), reverseBits(select(vec4<i32>(var_2, _wgslsmith_mult_i32(global1.a.x, -20302i), ~u_input.b, 2147483647i), ~vec4<i32>(u_input.b, 1i, global1.a.x, var_2), !var_3.e.b & (var_1.d.x == global1.c.x))));
}

