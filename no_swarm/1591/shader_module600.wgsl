struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_1,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<u32>, 5>;

var<private> global2: vec3<u32> = vec3<u32>(47797u, 1u, 4294967295u);

var<private> global3: Struct_3;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>) -> u32 {
    var var_0 = vec2<i32>(i32(-1i) * -1i, -arg_1.x >> (abs(~(global2.x ^ 4294967295u)) % 32u));
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b.a.b * 3309f) - 1f), global3.b.d.b)), Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-global3.b.c.a.x), global3.b.c.b, _wgslsmith_div_f32(-1411f, 1426f), _wgslsmith_f_op_f32(global3.b.c.b + global3.b.d.a.x)), global3.b.d.b, countOneBits(abs(1i)), vec4<bool>(!arg_0, true, global3.b.a.a.x != 625f, any(global3.b.a.d.yy))), _wgslsmith_div_u32(~0u, global2.x), global3.b.a, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.b.a.a) - vec4<f32>(-2054f, 172f, global3.b.a.a.x, global3.b.d.b)), 1f, i32(-1i) * -64079i, select(vec4<bool>(true, global3.b.a.d.x, false, false), global3.b.d.d, select(vec4<bool>(true, global3.b.a.d.x, global3.b.a.d.x, true), vec4<bool>(false, arg_0, global3.b.d.d.x, arg_0), vec4<bool>(false, false, global3.b.d.d.x, arg_0))))), global3.b.d, vec4<i32>(reverseBits(abs(var_0.x)) & var_0.x, 24124i, arg_1.x, ~(16050i | _wgslsmith_div_i32(global3.b.a.c, arg_1.x))));
    let var_2 = 4294967295u;
    let var_3 = Struct_3(~vec2<u32>(1u, max(1u, _wgslsmith_mult_u32(21678u, 0u))), Struct_2(global3.b.d, ~(~4294967295u), var_1.b.c, global3.b.d));
    let var_4 = global3.b.d;
    return var_2;
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = arg_0.a.yxx;
    var var_1 = vec3<bool>(select(!all(arg_0.d.wz), false, false) != false, !(_wgslsmith_sub_u32(4294967295u, func_3(global3.b.a.d.x, vec3<i32>(arg_0.c, global3.b.c.c, 0i))) > 60309u), !global3.b.c.d.x);
    let var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -716f), 631f) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.x, var_0.x)))))), Struct_2(global3.b.a, _wgslsmith_dot_vec3_u32(~vec3<u32>(global2.x, 61717u, global2.x), global1[_wgslsmith_index_u32(26223u, 5u)]), Struct_1(global3.b.d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -251f)), global3.b.d.c, global3.b.a.d), global3.b.a), arg_0, ~vec4<i32>(49605i, ~(-global3.b.a.c), _wgslsmith_clamp_i32(reverseBits(-1042i), _wgslsmith_div_i32(3345i, -1018i), global3.b.d.c >> (4294967295u % 32u)), u_input.b.x));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(var_2.c.a - vec4<f32>(var_0.x, arg_0.b, arg_0.b, -762f)))) - arg_0.a), _wgslsmith_f_op_f32(f32(-1f) * -1003f), _wgslsmith_sub_i32(~var_2.d.x, ~(-17442i)) & (var_2.c.c << (abs(2953u) % 32u)), select(select(select(vec4<bool>(global3.b.c.d.x, false, var_1.x, var_2.c.d.x), arg_0.d, true), !global3.b.c.d, select(global3.b.d.d, var_2.b.a.d, arg_0.d.x)), !(!vec4<bool>(true, var_2.b.c.d.x, var_2.c.d.x, false)), -arg_0.c <= 1i)), _wgslsmith_dot_vec3_u32(~(~global1[_wgslsmith_index_u32(global3.a.x, 5u)] >> (~global1[_wgslsmith_index_u32(9840u, 5u)] % vec3<u32>(32u))), countOneBits(global1[_wgslsmith_index_u32(global2.x, 5u)])), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-393f + global3.b.d.b), _wgslsmith_f_op_f32(global3.b.d.b * 414f), 1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1006f - arg_0.a.x), -1830f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.b.d.b, var_2.a.x)) * -1000f)), arg_0.c, select(select(var_2.b.a.d, !var_2.b.c.d, arg_0.d.x), vec4<bool>(!arg_0.d.x, var_1.x, true, true), true)), arg_0);
}

fn func_4(arg_0: Struct_4, arg_1: vec3<bool>) -> i32 {
    global1 = array<vec3<u32>, 5>();
    var var_0 = i32(-1i) * -2147483647i;
    let var_1 = vec4<u32>(firstLeadingBit(~(~_wgslsmith_div_u32(arg_0.b.b, 0u))), ~29719u, arg_0.b.b, global2.x);
    return -1864i;
}

fn func_1() -> Struct_1 {
    let var_0 = global3.b.a.a.x;
    global0 = 58047u;
    let var_1 = global3.b;
    global2 = vec3<u32>(6658u, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(global3.b.b, 0u, global3.a.x, var_1.b) << (vec4<u32>(global2.x, 53797u, global3.b.b, 14799u) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(global2.x, global3.a.x, 38038u, global3.b.b), vec4<u32>(1u, 0u, 1u, global2.x)))), 4242u);
    var var_2 = func_4(Struct_4(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global3.b.d.b, _wgslsmith_f_op_f32(abs(var_1.a.a.x))))), func_2(Struct_1(_wgslsmith_f_op_vec4_f32(max(var_1.c.a, vec4<f32>(-1600f, global3.b.d.b, 1173f, -221f))), var_1.a.b, ~0i, global3.b.c.d)), func_2(Struct_1(vec4<f32>(var_1.c.b, global3.b.c.b, var_1.c.a.x, -1000f), _wgslsmith_f_op_f32(-var_1.d.a.x), -2147483647i, select(var_1.d.d, var_1.a.d, true))).c, vec4<i32>(var_1.c.c >> (~662u % 32u), (1i >> (global3.b.b % 32u)) & 1i, -23500i, _wgslsmith_sub_i32(max(-1i, -49696i), global3.b.d.c))), func_2(global3.b.d).a.d.yww);
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-global3.b.a.a)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.c.b, var_1.c.a.x, 580f, var_1.c.b))) * vec4<f32>(global3.b.c.a.x, var_1.c.a.x, global3.b.a.a.x, global3.b.a.b)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(global3.b.a.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.c.a.x, var_1.c.a.x, global3.b.d.a.x, var_1.d.b)))))), func_2(var_1.c).c.b, _wgslsmith_add_i32(~_wgslsmith_sub_i32(var_1.d.c, u_input.a | -31001i), u_input.a), !vec4<bool>(!global3.b.d.d.x, false, false, true));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec3<bool>) -> f32 {
    global1 = array<vec3<u32>, 5>();
    global3 = arg_1;
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(arg_0.a.zw - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_2.a.a.x), _wgslsmith_f_op_f32(floor(arg_0.b))))), func_2(arg_1.b.c), func_1(), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(arg_1.b.d.c, global3.b.d.c), ~arg_0.c, _wgslsmith_add_i32(1i, arg_1.b.a.c), ~u_input.a), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.c, global3.b.d.c, 22156i, u_input.a), vec4<i32>(arg_2.d.c, global3.b.a.c, arg_2.d.c, global3.b.c.c)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_2.a.c, arg_0.c, u_input.a, global3.b.a.c), vec4<i32>(20792i, arg_2.c.c, arg_1.b.a.c, -1i)))) >> (~(abs(vec4<u32>(1u, 15631u, arg_2.b, 1u)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, arg_2.b, 1u, 76166u), vec4<u32>(40276u, global3.a.x, 5408u, arg_2.b)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    global2 = global1[_wgslsmith_index_u32(~1u, 5u)];
    var var_1 = arg_1;
    return -1219f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!(!(!global3.b.d.d)), !(!(!select(global3.b.a.d, global3.b.c.d, vec4<bool>(global3.b.c.d.x, false, global3.b.c.d.x, false)))), vec4<bool>(false, any(global3.b.c.d.www) | true, !global3.b.c.d.x, all(global3.b.a.d.zy)));
    var var_1 = Struct_2(global3.b.d, global3.a.x, global3.b.d, global3.b.a);
    var var_2 = vec4<bool>(-((0i >> (var_1.b % 32u)) & 1i) >= -40964i, true, var_1.c.d.x, true);
    var var_3 = -vec4<i32>(max(_wgslsmith_sub_i32(abs(global3.b.a.c), u_input.b.x), -19026i), i32(-1i) * -42463i, global3.b.c.c, global3.b.a.c | -1i);
    let var_4 = vec2<u32>(_wgslsmith_div_u32(63762u, 42559u), 0u);
    let var_5 = -131f;
    let var_6 = _wgslsmith_f_op_f32(min(var_5, _wgslsmith_div_f32(var_1.c.b, _wgslsmith_f_op_f32(func_5(func_1(), Struct_3(max(vec2<u32>(global2.x, var_4.x), var_4), func_2(Struct_1(vec4<f32>(-123f, var_1.a.a.x, global3.b.d.a.x, var_1.a.a.x), -341f, -23330i, vec4<bool>(var_0.x, true, false, global3.b.d.d.x)))), global3.b, var_2.zxx)))));
    var_2 = global3.b.d.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(func_4(Struct_4(_wgslsmith_div_vec2_f32(var_1.a.a.zz, global3.b.d.a.wy), global3.b, Struct_1(vec4<f32>(global3.b.d.a.x, var_1.c.a.x, -218f, global3.b.a.b), var_6, var_1.d.c, vec4<bool>(false, false, true, false)), -vec4<i32>(u_input.a, -17261i, -2147483647i, 1i)), var_0.yzw), ~(-14848i | _wgslsmith_mod_i32(var_1.a.c, var_3.x))), -(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.d.c, u_input.b.x, var_1.c.c, global3.b.d.c), vec4<i32>(global3.b.a.c, -2147483647i, var_1.c.c, var_3.x)), vec4<i32>(-34613i, var_3.x, var_1.c.c, var_3.x)) << (~vec4<u32>(0u, 0u, global2.x, 0u) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(global3.b.a, Struct_3(global3.a, Struct_2(Struct_1(var_1.c.a, var_1.a.a.x, var_3.x, var_1.c.d), 18806u, global3.b.a, global3.b.d)), Struct_2(global3.b.a, var_4.x, var_1.a, Struct_1(vec4<f32>(-852f, 457f, var_6, global3.b.d.a.x), var_1.c.a.x, global3.b.c.c, vec4<bool>(true, true, false, false))), vec3<bool>(false, true, var_2.x))) + var_5))), vec4<u32>(~(~_wgslsmith_sub_u32(4294967295u, global3.b.b)), ~0u, _wgslsmith_mod_u32(func_3(!var_0.x, abs(vec3<i32>(-36177i, var_3.x, global3.b.d.c))), _wgslsmith_add_u32(1u, 1u)), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(var_4.x, 1u), var_4))), _wgslsmith_f_op_f32(f32(-1f) * -1500f));
}

