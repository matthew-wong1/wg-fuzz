struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec2<u32>;

var<private> global2: vec4<f32> = vec4<f32>(-895f, 576f, 2293f, 752f);

var<private> global3: Struct_2;

var<private> global4: bool = false;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>) -> vec4<f32> {
    global3 = Struct_2(firstLeadingBit(~global3.b.x), (~min(vec2<u32>(u_input.b, global1.x), global3.b) & global3.b) ^ (_wgslsmith_mod_vec2_u32(global3.b, global3.b >> (global3.b % vec2<u32>(32u))) | global3.b), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.a.x)), global3.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.x))), -1328f)));
    let var_0 = Struct_2(_wgslsmith_sub_u32(max(abs(~u_input.a), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, global3.a), firstTrailingBit(global3.b))), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, 78686u, global1.x, 4294967295u)), ~vec4<u32>(global1.x, u_input.b, global1.x, 128309u))), _wgslsmith_add_vec2_u32(vec2<u32>(firstTrailingBit(_wgslsmith_sub_u32(10656u, u_input.b)), _wgslsmith_sub_u32(firstTrailingBit(u_input.c), ~global1.x)), global3.b), global3.c);
    var var_1 = all(select(!vec4<bool>(!global0.x, any(vec4<bool>(global0.x, true, global0.x, global0.x)), true, false), !select(select(vec4<bool>(true, true, global0.x, global0.x), vec4<bool>(false, false, false, true), vec4<bool>(global0.x, false, global0.x, true)), select(vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(false, global0.x, true, true), true), !vec4<bool>(true, global0.x, true, true)), false));
    var var_2 = _wgslsmith_sub_vec2_i32(max(~_wgslsmith_div_vec2_i32(-vec2<i32>(u_input.d.x, 2147483647i), abs(vec2<i32>(54304i, 31601i))), u_input.d.xx), u_input.d.yz);
    global0 = select(!vec4<bool>(~var_0.b.x > _wgslsmith_clamp_u32(u_input.c, var_0.a, global3.b.x), false, (false || global0.x) & global0.x, true), vec4<bool>(global0.x, global0.x, global0.x, 20906i <= var_2.x), global3.a >= 55173u);
    return global3.c.a;
}

fn func_2() -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec4_f32(select(global3.c.a, _wgslsmith_f_op_vec4_f32(func_3(global2.x, vec4<f32>(-461f, _wgslsmith_div_f32(502f, global3.c.a.x), _wgslsmith_f_op_f32(min(234f, 1026f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), vec4<bool>(false, !all(global0.yw), global1.x == abs(0u), select(false, global0.x, all(vec3<bool>(true, true, true)))))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: i32) -> Struct_2 {
    let var_0 = !vec4<bool>(firstLeadingBit(_wgslsmith_div_u32(33836u, global1.x)) > 32408u, ~4294967295u > firstTrailingBit(arg_2), !(any(global0.xxz) | global0.x), select(all(vec3<bool>(false, global0.x, global0.x)), !global0.x, !global0.x) & (true || (global0.x || global0.x)));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -807f);
    global0 = vec4<bool>(global0.x, var_0.x, !any(var_0.zxy) || var_0.x, 1615f != arg_1);
    var var_2 = Struct_1(arg_0.a);
    var var_3 = select(vec4<u32>(55767u, global3.b.x, global1.x, abs(_wgslsmith_div_u32(1u, 4294967295u))), ~(_wgslsmith_mult_vec4_u32(vec4<u32>(20748u, global1.x, 1u, 1u), abs(vec4<u32>(global1.x, 0u, 0u, 20968u))) >> ((~vec4<u32>(0u, global3.b.x, global1.x, u_input.b) << (vec4<u32>(global1.x, arg_2, arg_2, arg_2) % vec4<u32>(32u))) % vec4<u32>(32u))), select(any(global0.yy), all(!var_0.xww) || false, true));
    return Struct_2(firstLeadingBit(~u_input.b), countOneBits(vec2<u32>(~global3.a & 30239u, 32777u)), arg_0);
}

fn func_5(arg_0: Struct_2, arg_1: f32) -> Struct_2 {
    let var_0 = abs(func_4(arg_0.c, _wgslsmith_f_op_f32(-arg_0.c.a.x), _wgslsmith_div_u32(global3.a, global1.x), _wgslsmith_sub_i32(_wgslsmith_add_i32(~0i, abs(u_input.d.x)), 3829i)).b.x);
    var var_1 = ~reverseBits(_wgslsmith_clamp_u32(global1.x, abs(~4126u), ~(global3.a | 50987u)));
    return arg_0;
}

fn func_1() -> Struct_2 {
    var var_0 = func_5(func_4(func_2(), -981f, 4294967295u, ~min(i32(-1i) * -1832i, max(-24429i, -125919i))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1729f))));
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.c.a.x) + 999f), _wgslsmith_f_op_f32(-global2.x), global3.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-632f))))));
    var var_2 = ~min(min(_wgslsmith_div_vec4_i32(~vec4<i32>(0i, 2147483647i, u_input.d.x, u_input.d.x), min(vec4<i32>(u_input.d.x, u_input.d.x, 2147483647i, 25769i), vec4<i32>(-24608i, -1i, u_input.d.x, -2147483647i))), firstLeadingBit(abs(vec4<i32>(0i, u_input.d.x, u_input.d.x, 0i)))), -(~vec4<i32>(u_input.d.x, u_input.d.x, 25465i, u_input.d.x)) & countOneBits(vec4<i32>(u_input.d.x, -2147483647i, u_input.d.x, 0i) << (vec4<u32>(u_input.a, global3.b.x, var_0.b.x, 0u) % vec4<u32>(32u))));
    global2 = global3.c.a;
    let var_3 = false;
    return func_4(func_4(var_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.x, var_0.c.a.x)) - _wgslsmith_f_op_f32(global2.x + global2.x)), _wgslsmith_f_op_f32(-var_0.c.a.x)), 4947u, _wgslsmith_div_i32(var_2.x, select(-1i, _wgslsmith_mult_i32(47504i, 1i), !var_3))).c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-114f)))), 24457u, 3328i);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1();
    let var_0 = global2.x;
    var var_1 = global3.c;
    var var_2 = firstLeadingBit(4294967295u) >> (1u % 32u);
    let var_3 = all(!vec4<bool>(global3.c.a.x >= -947f, false, global0.x, true)) & (-6733i <= select(~(~u_input.d.x), min(-32823i, -26703i), global3.c.a.x > global3.c.a.x));
    global0 = select(select(!vec4<bool>(true, !global0.x, true, false), !select(select(vec4<bool>(true, global0.x, false, false), vec4<bool>(var_3, false, var_3, false), false), !vec4<bool>(true, false, var_3, global0.x), vec4<bool>(false, global0.x, global0.x, true)), !select(select(vec4<bool>(global0.x, true, true, true), vec4<bool>(global0.x, true, true, true), var_3), vec4<bool>(global0.x, true, true, true), vec4<bool>(global0.x, var_3, var_3, var_3))), !(!(!vec4<bool>(true, var_3, global0.x, true))), select(!(!(!vec4<bool>(global0.x, true, false, global0.x))), !(!vec4<bool>(global0.x, global0.x, false, true)), any(!global0.xzz)));
    let var_4 = func_4(global3.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(1500f, _wgslsmith_f_op_vec4_f32(-func_5(Struct_2(global3.a, global3.b, global3.c), var_1.a.x).c.a))).x * -1004f), _wgslsmith_sub_u32(1u, select(~(~4294967295u), global1.x, ~global1.x < ~76308u)), ~(~(~u_input.d.x))).c;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(~1u, firstLeadingBit(1u)), _wgslsmith_sub_i32(-1i, min(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.d.x), -vec2<i32>(1i, -2147483647i)), -2147483647i)));
}

