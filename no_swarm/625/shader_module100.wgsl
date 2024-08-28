struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(4294967295u, vec2<u32>(37700u, 4294967295u), vec2<f32>(-1670f, 899f), vec4<bool>(true, false, false, true)), vec3<i32>(-51184i, 9101i, 42003i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: vec3<bool>) -> vec4<u32> {
    global0 = arg_1.c;
    let var_0 = arg_1.c;
    var var_1 = arg_1;
    var_1 = arg_1;
    let var_2 = all(select(var_0.a.d, global0.a.d, false));
    return firstLeadingBit(vec4<u32>(u_input.d.x, abs(firstLeadingBit(16341u)), 0u, ~(~firstTrailingBit(u_input.d.x))));
}

fn func_2() -> Struct_1 {
    var var_0 = reverseBits(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(1u, global0.a.b.x, global0.a.a, 1u), abs(vec4<u32>(1u, global0.a.b.x, global0.a.a, global0.a.a))), vec4<u32>(global0.a.b.x, _wgslsmith_clamp_u32(global0.a.b.x, 4294967295u, u_input.d.x), ~global0.a.a, _wgslsmith_dot_vec2_u32(global0.a.b, vec2<u32>(4294967295u, global0.a.b.x)))), ~(~max(vec4<u32>(51306u, u_input.d.x, global0.a.b.x, 0u), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x)))));
    var_0 = firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(~70665u, _wgslsmith_clamp_u32(var_0.x, ~global0.a.b.x, global0.a.a), global0.a.b.x, ~u_input.d.x ^ (global0.a.b.x << (u_input.d.x % 32u))), _wgslsmith_div_vec4_u32(vec4<u32>(1u, global0.a.a, 737u, u_input.d.x) | abs(vec4<u32>(u_input.d.x, u_input.d.x, 5705u, var_0.x)), ~func_3(global0.b.x, Struct_3(global0.a.b.x, global0.a.d.x, Struct_2(Struct_1(global0.a.b.x, global0.a.b, global0.a.c, global0.a.d), vec3<i32>(global0.b.x, 5717i, u_input.a.x)), global0.a), global0.a.d.xxz))));
    let var_1 = Struct_3(~(~countOneBits(global0.a.a)) & _wgslsmith_div_u32(var_0.x, 1u << (func_3(global0.b.x, Struct_3(global0.a.a, false, Struct_2(global0.a, vec3<i32>(global0.b.x, 0i, 1i)), Struct_1(4294967295u, vec2<u32>(4294967295u, u_input.d.x), global0.a.c, vec4<bool>(false, false, global0.a.d.x, global0.a.d.x))), global0.a.d.yzw).x % 32u)), global0.a.d.x | true, Struct_2(global0.a, max(vec3<i32>(u_input.b, _wgslsmith_dot_vec3_i32(u_input.a.xxw, vec3<i32>(8688i, -2147483647i, global0.b.x)), _wgslsmith_add_i32(-1i, global0.b.x)), ~(u_input.a.yzw >> (vec3<u32>(u_input.d.x, var_0.x, 1u) % vec3<u32>(32u))))), Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(var_0.xy >> (vec2<u32>(34299u, global0.a.a) % vec2<u32>(32u)), ~var_0.wy), firstLeadingBit(vec2<u32>(4294967295u, 26476u))), var_0.zz, global0.a.c, global0.a.d));
    let var_2 = all(!select(select(var_1.d.d.zyz, global0.a.d.zxy, vec3<bool>(true, true, var_1.d.d.x)), select(var_1.d.d.zxy, var_1.d.d.xzx, false), global0.a.d.www));
    var var_3 = func_3(u_input.a.x, Struct_3(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, 4294967295u, var_1.c.a.b.x, 15376u), vec4<u32>(4294967295u, 3938u, 1u, 4294967295u))), ~var_1.c.b.x > _wgslsmith_div_i32(_wgslsmith_div_i32(global0.b.x, 1i), global0.b.x), Struct_2(Struct_1(func_3(0i, var_1, global0.a.d.zxw).x, firstLeadingBit(var_1.c.a.b), _wgslsmith_f_op_vec2_f32(-global0.a.c), !var_1.c.a.d), _wgslsmith_add_vec3_i32(~vec3<i32>(-2147483647i, 55267i, -2147483647i), -vec3<i32>(global0.b.x, var_1.c.b.x, global0.b.x))), var_1.d), !var_1.d.d.zzz).zy;
    return Struct_1(0u, vec2<u32>(var_0.x, ~countOneBits(var_1.d.b.x) >> (u_input.d.x % 32u)), var_1.c.a.c, !(!vec4<bool>(141f > global0.a.c.x, select(true, true, var_1.c.a.d.x), true, var_1.b)));
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = var_0;
    var var_2 = ~(~vec2<u32>(4294967295u, func_3(_wgslsmith_div_i32(0i, global0.b.x), Struct_3(var_1.a, true, Struct_2(var_1, vec3<i32>(global0.b.x, 7795i, -6228i)), Struct_1(0u, var_0.b, vec2<f32>(564f, var_1.c.x), arg_1)), select(vec3<bool>(true, arg_1.x, true), global0.a.d.xwz, arg_1.xyw)).x));
    let var_3 = Struct_3(abs(countOneBits(var_2.x)), true, Struct_2(global0.a, u_input.a.zxy), Struct_1(_wgslsmith_add_u32(0u, 50606u), vec2<u32>(28396u, 100681u), _wgslsmith_f_op_vec2_f32(max(global0.a.c, _wgslsmith_div_vec2_f32(vec2<f32>(var_0.c.x, var_1.c.x), _wgslsmith_div_vec2_f32(var_0.c, var_1.c)))), var_1.d));
    var var_4 = firstLeadingBit(vec3<u32>(_wgslsmith_mult_u32(~(~46808u), ~(~global0.a.b.x)), 4294967295u, u_input.d.x));
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    let var_0 = !vec4<bool>(global0.a.d.x && (-1i > _wgslsmith_mod_i32(0i, u_input.b)), arg_1.a.b.x <= _wgslsmith_add_u32(~u_input.d.x, ~arg_0.a), true, ~(~global0.a.a) >= global0.a.b.x);
    global0 = Struct_2(func_2(), u_input.a.zzw);
    global0 = Struct_2(arg_0, _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(arg_1.b, vec3<i32>(_wgslsmith_mult_i32(global0.b.x, global0.b.x), i32(-1i) * -2147483647i, u_input.b)), firstLeadingBit(min(-vec3<i32>(arg_1.b.x, u_input.c, -39463i), ~u_input.a.xyw))));
    let var_1 = ~arg_1.b.x;
    return global0.a.c.x;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> Struct_2 {
    global0 = Struct_2(global0.a, abs(min(countOneBits(vec3<i32>(-38868i, 30640i, u_input.b)), ~(~u_input.a.xzz))));
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-498f, 1710f, 1000f)), _wgslsmith_div_vec3_f32(vec3<f32>(arg_2, var_0.a.c.x, var_0.a.c.x), vec3<f32>(arg_1.c.x, -1438f, 1919f)), any(arg_0.a.d.yx)))))));
    global0 = Struct_2(func_2(), min(_wgslsmith_mod_vec3_i32(vec3<i32>(~2147483647i, 15874i, countOneBits(-1i)), -vec3<i32>(var_0.b.x, var_0.b.x, arg_0.b.x)), select(vec3<i32>(-41238i, ~1i, -35226i), countOneBits(vec3<i32>(u_input.c, 6659i, u_input.b)), arg_0.a.d.x)));
    var_0 = Struct_2(func_1(51545u, !func_2().d, abs(vec2<i32>(-global0.b.x, -var_0.b.x))), arg_0.b >> (firstTrailingBit(vec3<u32>(select(11987u, 7242u, var_0.a.d.x), func_3(u_input.c, Struct_3(arg_3, global0.a.d.x, arg_0, global0.a), var_0.a.d.zyx).x, 0u << (arg_1.a % 32u))) % vec3<u32>(32u)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_2(global0.a, vec3<i32>(firstTrailingBit(u_input.b) << (reverseBits(4294967295u) % 32u), u_input.b, ~global0.b.x)), Struct_1(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, u_input.d.x))), ~vec2<u32>(1u, 1u), vec2<f32>(_wgslsmith_f_op_f32(func_4(func_1(global0.a.a, vec4<bool>(global0.a.d.x, false, global0.a.d.x, true), u_input.a.zz), Struct_2(Struct_1(u_input.d.x, vec2<u32>(0u, u_input.d.x), global0.a.c, vec4<bool>(global0.a.d.x, false, global0.a.d.x, global0.a.d.x)), global0.b))), global0.a.c.x), func_2().d), -1000f, 0u);
    global0 = Struct_2(Struct_1(~0u, _wgslsmith_add_vec2_u32(vec2<u32>(22846u, firstTrailingBit(78248u)), vec2<u32>(53283u, firstTrailingBit(4294967295u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(729f, 697f), vec2<f32>(var_0.a.c.x, -1887f)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.a.c.x, global0.a.c.x)))) + vec2<f32>(_wgslsmith_f_op_f32(508f - global0.a.c.x), func_5(Struct_2(var_0.a, global0.b), global0.a, -363f, 34497u).a.c.x)), !(!global0.a.d)), vec3<i32>(var_0.b.x, u_input.c, ~var_0.b.x));
    var var_1 = _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(1u, ~global0.a.b.x), ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d.x, 4294967295u), u_input.d) & max(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, global0.a.b.x), vec2<u32>(u_input.d.x, u_input.d.x), global0.a.b), u_input.d ^ vec2<u32>(global0.a.a, var_0.a.b.x))), firstTrailingBit(~_wgslsmith_mult_vec2_u32(~vec2<u32>(10241u, global0.a.b.x), u_input.d)));
    var_1 = vec2<u32>(u_input.d.x, var_0.a.b.x);
    var var_2 = ~vec3<u32>(var_1.x, ~u_input.d.x, u_input.d.x);
    var var_3 = Struct_3(firstLeadingBit(27191u), !func_1(36789u, global0.a.d, vec2<i32>(-23138i, min(-29883i, u_input.c))).d.x, Struct_2(func_1(~u_input.d.x | (4294967295u << (var_1.x % 32u)), select(!global0.a.d, !vec4<bool>(true, false, true, var_0.a.d.x), vec4<bool>(true, true, false, false)), _wgslsmith_add_vec2_i32(vec2<i32>(-13001i, -7868i), vec2<i32>(-18881i, var_0.b.x))), vec3<i32>(~var_0.b.x >> (_wgslsmith_div_u32(4294967295u, 1u) % 32u), 24397i, 1i)), Struct_1(~func_1(_wgslsmith_mod_u32(var_1.x, var_0.a.a), global0.a.d, ~u_input.a.zw).a, ~var_2.yz, _wgslsmith_f_op_vec2_f32(global0.a.c + vec2<f32>(var_0.a.c.x, _wgslsmith_f_op_f32(-global0.a.c.x))), global0.a.d));
    var_3 = Struct_3(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(func_2().b, countOneBits(func_2().b)), var_3.d.b | var_2.zx), global0.a.d.x, func_5(var_0, Struct_1(~countOneBits(var_1.x), var_0.a.b, func_2().c, select(vec4<bool>(true, var_3.c.a.d.x, var_0.a.d.x, var_3.d.d.x), !vec4<bool>(var_3.b, false, true, false), var_3.d.d)), _wgslsmith_f_op_f32(-1160f - global0.a.c.x), ~(~var_3.c.a.b.x << (1u % 32u))), func_2());
    var var_4 = var_0.a;
    var var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(195f)) - var_4.c.x), _wgslsmith_f_op_f32(-var_4.c.x), -482f, var_0.a.c.x), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.a.c.x, 587f, 172f, var_4.c.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-530f, 1618f, var_4.c.x, -425f), vec4<f32>(1996f, 414f, -406f, global0.a.c.x), var_4.d)))))), var_0.a.d)) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.c.x, 1135f, 913f, var_0.a.c.x) - vec4<f32>(var_4.c.x, var_4.c.x, -543f, 1425f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-187f, var_4.c.x, -676f, -862f), vec4<f32>(var_0.a.c.x, -280f, global0.a.c.x, 2010f))), false))), vec4<f32>(_wgslsmith_f_op_f32(-func_1(var_0.a.b.x, vec4<bool>(true, false, false, true), vec2<i32>(-27720i, var_0.b.x)).c.x), -185f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_4.c.x))), -2290f))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~vec4<i32>(global0.b.x, _wgslsmith_sub_i32(global0.b.x, var_3.c.b.x), 21940i, var_3.c.b.x >> (var_0.a.a % 32u))));
}

