struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool;

var<private> global2: vec2<u32> = vec2<u32>(1u, 4294967295u);

var<private> global3: vec4<bool> = vec4<bool>(true, true, true, true);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>) -> i32 {
    let var_0 = Struct_1(abs(max(min(-arg_1, u_input.a), -_wgslsmith_div_i32(arg_2.x, 1i))));
    var var_1 = ~_wgslsmith_div_vec4_u32(abs(~(~u_input.d)), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.d << (u_input.d % vec4<u32>(32u)), ~vec4<u32>(4294967295u, 14264u, 28731u, u_input.d.x), vec4<u32>(global2.x, 0u, u_input.d.x, u_input.d.x)), ~vec4<u32>(u_input.d.x, global2.x, 0u, 34788u)));
    var var_2 = var_0;
    let var_3 = arg_2;
    var var_4 = arg_0;
    return 2147483647i;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: vec4<bool>) -> vec2<i32> {
    let var_0 = _wgslsmith_sub_i32(func_3(Struct_1(min(-45784i, -3882i)), u_input.a, vec4<i32>(1i, ~firstLeadingBit(u_input.a), -59173i, ~_wgslsmith_div_i32(arg_0.x, u_input.b.x))), max(arg_0.x, u_input.c.x));
    return firstTrailingBit(_wgslsmith_add_vec2_i32(-vec2<i32>(u_input.b.x, var_0) >> (firstTrailingBit(u_input.d.zx) % vec2<u32>(32u)), select(vec2<i32>(u_input.c.x, _wgslsmith_mult_i32(global0.a, arg_0.x)), ~vec2<i32>(var_0, global0.a), vec2<bool>(global3.x, false))));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_1(arg_0.a);
    let var_1 = var_0;
    let var_2 = Struct_1(_wgslsmith_dot_vec2_i32(func_2(vec4<i32>(25158i | u_input.b.x, ~arg_0.a, countOneBits(var_1.a), 2147483647i), global3.wx, vec2<f32>(_wgslsmith_f_op_f32(select(arg_1, -783f, true)), -1742f), !select(vec4<bool>(global3.x, true, global3.x, global3.x), vec4<bool>(true, global3.x, global3.x, true), global3.x)), select(-(u_input.c.ww >> (u_input.d.zw % vec2<u32>(32u))), vec2<i32>(var_1.a, min(5754i, var_0.a)), true || (true && global3.x))));
    global0 = Struct_1(u_input.b.x);
    let var_3 = _wgslsmith_f_op_f32(-arg_1);
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec3<i32>) -> u32 {
    var var_0 = _wgslsmith_clamp_vec3_i32(arg_3, min(u_input.c.xwx, u_input.c.xyy), -arg_3);
    return global2.x;
}

fn func_5(arg_0: f32, arg_1: u32) -> Struct_1 {
    return func_1(Struct_1(-5465i), arg_0, vec4<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, arg_0) * _wgslsmith_f_op_f32(arg_0 + arg_0)), arg_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1781f - arg_0), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0))))));
}

fn func_6(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> StorageBuffer {
    global0 = func_5(-1000f, global2.x);
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)));
    var var_1 = var_0.xx;
    global0 = func_5(591f, _wgslsmith_add_u32(global2.x, global2.x));
    global1 = all(!vec4<bool>(_wgslsmith_f_op_f32(sign(1613f)) == -1012f, all(arg_1.yy), arg_1.x, arg_1.x || !arg_1.x));
    return StorageBuffer(vec4<u32>(_wgslsmith_add_u32(global2.x, _wgslsmith_dot_vec2_u32(u_input.d.xz, ~vec2<u32>(44156u, u_input.d.x))), ~(1u >> ((u_input.d.x | 4294967295u) % 32u)), _wgslsmith_div_u32(4294967295u, firstTrailingBit(u_input.d.x << (u_input.d.x % 32u))), 25632u), vec3<i32>(func_3(func_1(Struct_1(1i), var_1.x, vec4<f32>(170f, -1000f, -137f, var_1.x)), 0i, ~vec4<i32>(19386i, 0i, u_input.b.x, -2147483647i)) << (firstTrailingBit(8386u) % 32u), _wgslsmith_dot_vec3_i32(countOneBits(-vec3<i32>(-47763i, u_input.a, arg_3.a)), abs(countOneBits(u_input.b.zyw))), 59857i), _wgslsmith_mult_i32(_wgslsmith_mod_i32(~2147483647i, countOneBits(-global0.a)), _wgslsmith_add_i32(i32(-1i) * -global0.a, select(-14711i, i32(-1i) * -2147483647i, true))), -abs(u_input.b ^ _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 1i, arg_0.a, -2147483647i), vec4<i32>(arg_0.a, u_input.a, -2147483647i, -34327i))), abs(-(abs(u_input.b.yzz) << (u_input.d.xwy % vec3<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(Struct_1(-23787i), vec3<bool>(!(global3.x && true), global3.x, true), func_5(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(246f * 1157f))), _wgslsmith_mult_u32(global2.x, func_4(func_1(Struct_1(1i), 2165f, vec4<f32>(-498f, -387f, -609f, -952f)), !global3.x, Struct_1(0i), -vec3<i32>(2147483647i, 1i, 2147483647i)))), Struct_1(u_input.a & firstTrailingBit(_wgslsmith_mult_i32(-1i, global0.a))));
}

