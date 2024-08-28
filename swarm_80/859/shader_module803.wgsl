struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_2 = Struct_2(vec2<f32>(-1204f, -1218f));

var<private> global2: vec2<u32>;

var<private> global3: array<Struct_4, 18>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool) -> vec3<i32> {
    global2 = ~(~(~(~u_input.a.zx)) ^ vec2<u32>(1u, _wgslsmith_mult_u32(global2.x | global2.x, u_input.a.x)));
    global2 = vec2<u32>(u_input.a.x, 4294967295u);
    global0 = arg_0;
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.a * _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global1.a.x) * global1.a)))), u_input.a.x ^ u_input.a.x, Struct_1(select(select(vec4<bool>(true, arg_0, true, true), select(vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(arg_0, false, false, arg_0), vec4<bool>(arg_0, arg_0, false, arg_0)), select(vec4<bool>(arg_0, true, false, false), vec4<bool>(true, arg_0, true, arg_0), vec4<bool>(true, arg_0, arg_0, false))), !select(vec4<bool>(arg_0, arg_0, true, true), vec4<bool>(arg_0, arg_0, true, arg_0), true), false), u_input.a, vec3<i32>(~u_input.b >> (4294967295u % 32u), -7180i, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b, u_input.b, u_input.b), vec4<i32>(44797i, -2147483647i, 28364i, -2147483647i)))), true, 434f), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-907f, 283f))), Struct_1(select(vec4<bool>(51972i <= u_input.b, true & arg_0, true, global1.a.x == -594f), select(vec4<bool>(true, arg_0, arg_0, true), select(vec4<bool>(true, true, false, arg_0), vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(false, arg_0, false, true)), arg_0), !(!vec4<bool>(false, false, arg_0, arg_0))), vec3<u32>(~(~u_input.a.x), _wgslsmith_mult_u32(global2.x, 112773u) ^ (26513u << (global2.x % 32u)), 8705u), countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, -17744i, u_input.b), vec3<i32>(-9984i, -2147483647i, u_input.b))), false, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) - global1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -834f), any(vec3<bool>(arg_0, true, arg_0))))));
    global0 = select(!(!arg_0), arg_0, any(vec2<bool>(arg_0, false)));
    return var_0.c.c & reverseBits(var_0.e.c);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)), any(vec2<bool>(false, false))), u_input.a, func_3(false), false, _wgslsmith_f_op_f32(-global1.a.x));
    global0 = (0u < (79403u >> (~_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x) % 32u))) == !any(var_0.a.xx);
    let var_1 = _wgslsmith_add_i32(var_0.c.x, -47109i);
    global1 = Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global1.a, vec2<f32>(global1.a.x, -1452f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, var_0.e))))))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(select(global1.a, _wgslsmith_f_op_vec2_f32(global1.a - _wgslsmith_f_op_vec2_f32(global1.a + vec2<f32>(var_0.e, -707f))), true)));
    return Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(177f, -1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.a))), var_2.a)));
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> Struct_2 {
    var var_0 = 383f;
    var var_1 = 1615f;
    let var_2 = func_2();
    var var_3 = Struct_4(firstTrailingBit(~abs(68646i)), _wgslsmith_f_op_f32(exp2(var_2.a.x)), Struct_1(vec4<bool>(true, true, true, any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false)))), _wgslsmith_div_vec3_u32(~u_input.a, firstLeadingBit(_wgslsmith_mult_vec3_u32(u_input.a, u_input.a))), vec3<i32>(2147483647i, u_input.b, -51686i), all(vec3<bool>(true, true, all(vec4<bool>(true, false, true, false)))), global1.a.x));
    global1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, 1000f)) + vec2<f32>(667f, var_3.c.e)));
    return Struct_2(vec2<f32>(arg_0.a.x, func_2().a.x));
}

fn func_1() -> f32 {
    let var_0 = global3[_wgslsmith_index_u32(u_input.a.x, 18u)];
    global1 = func_4(func_2(), ~1u);
    global0 = false;
    let var_1 = !var_0.c.a.xy;
    let var_2 = _wgslsmith_mod_vec2_u32(select(u_input.a.xz >> (~vec2<u32>(41198u, 48821u) % vec2<u32>(32u)), vec2<u32>(~var_0.c.b.x, global2.x), true), ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 1u), _wgslsmith_clamp_vec2_u32(u_input.a.zx, u_input.a.xy, var_0.c.b.xy))) >> (vec2<u32>(max(firstLeadingBit(u_input.a.x), var_0.c.b.x), _wgslsmith_add_u32(_wgslsmith_sub_u32(var_0.c.b.x >> (u_input.a.x % 32u), 34172u), 6581u)) % vec2<u32>(32u));
    return _wgslsmith_f_op_f32(-604f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(global1.a.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b, var_0.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1());
    var var_1 = Struct_3(func_2(), ~(~21286u), Struct_1(!vec4<bool>(false, true, global1.a.x != -562f, true), ~vec3<u32>(global2.x, 3432u, global2.x) & u_input.a, _wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(-45258i, u_input.b, u_input.b)), _wgslsmith_mod_vec3_i32(vec3<i32>(-5502i, -17902i, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b))) ^ reverseBits(~vec3<i32>(u_input.b, u_input.b, -2147483647i)), _wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(max(1225f, var_0)))) == var_0, -470f), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-210f * -2032f) + _wgslsmith_f_op_f32(max(global1.a.x, -570f))), _wgslsmith_f_op_f32(-global1.a.x))), Struct_1(vec4<bool>(35569u >= ~u_input.a.x, select(true, all(vec4<bool>(true, false, false, true)), true), true, false), ~u_input.a, select(~(vec3<i32>(-1i, 0i, u_input.b) ^ vec3<i32>(2147483647i, u_input.b, -2147483647i)), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, u_input.b, u_input.b) ^ vec3<i32>(-2147483647i, u_input.b, 2147483647i), vec3<i32>(-2147483647i, 1i, u_input.b)), vec3<bool>(any(vec4<bool>(true, true, false, false)), true, true)), true, 1373f));
    var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.d.a) + global1.a))), _wgslsmith_mod_u32(~(~reverseBits(0u)), ~(~(global2.x >> (3157u % 32u)))), Struct_1(vec4<bool>(all(select(var_1.c.a.yw, var_1.e.a.wz, vec2<bool>(true, var_1.e.d))), !(true && var_1.c.a.x), var_1.e.a.x, !any(var_1.c.a)), vec3<u32>(1u, global2.x, ~0u), var_1.c.c, var_1.e.a.x, _wgslsmith_f_op_f32(var_1.c.e + -1000f)), func_4(func_4(func_2(), 15803u), 58856u), var_1.e);
    let var_2 = any(!(!var_1.e.a.zzy));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(1084f, _wgslsmith_f_op_f32(exp2(var_1.e.e))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -916f) - _wgslsmith_f_op_f32(var_1.c.e + var_1.d.a.x)))));
    let var_4 = Struct_4(_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.b, 2147483647i), u_input.b), var_0, var_1.e);
    var var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(global2.x, u_input.b);
}

