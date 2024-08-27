struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: f32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>) -> bool {
    global0 = select(select(select(vec2<bool>(all(vec2<bool>(global0.x, true)), global0.x), vec2<bool>(true, any(vec4<bool>(true, true, global0.x, true))), global0.x), select(select(vec2<bool>(true, true), !vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, true)), select(select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, true), vec2<bool>(global0.x, true)), vec2<bool>(true, true), vec2<bool>(true, global0.x)), global0.x), false), select(!select(vec2<bool>(true, global0.x), vec2<bool>(false, true), all(vec3<bool>(global0.x, global0.x, true))), vec2<bool>(false, true), all(vec3<bool>(global0.x, -150f < arg_0.x, !global0.x))), !global0.x);
    return any(vec4<bool>(false, any(select(!vec4<bool>(true, global0.x, false, global0.x), select(vec4<bool>(false, false, false, true), vec4<bool>(global0.x, true, true, true), true), !vec4<bool>(global0.x, false, false, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-176f - 310f), 1f) != _wgslsmith_f_op_f32(arg_0.x - arg_0.x), true));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(select(select(!select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, true), global0.x), vec2<bool>(true, global0.x), vec2<bool>(global0.x, !global0.x)), !vec2<bool>(global0.x, global0.x), vec2<bool>(!func_3(vec3<f32>(-321f, -318f, 278f)), !global0.x)), ~u_input.d.wy, _wgslsmith_f_op_f32(floor(1f)), select(~vec4<u32>(u_input.c.x, 1u, u_input.c.x, 62926u), _wgslsmith_sub_vec4_u32(vec4<u32>(34028u, 1u, u_input.c.x, u_input.b.x), _wgslsmith_clamp_vec4_u32(u_input.c, vec4<u32>(u_input.b.x, 0u, 99499u, u_input.c.x), u_input.c)), !(!vec4<bool>(global0.x, false, global0.x, true))) >> (((~u_input.c << (abs(vec4<u32>(u_input.b.x, 1u, 8812u, 1u)) % vec4<u32>(32u))) >> (vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), abs(u_input.e), 0u, _wgslsmith_mult_u32(47564u, 5671u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_1 = Struct_1(16364i, vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(trunc(var_0.c))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.c + var_0.c))), var_0.a.x)), -439f), ~_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(30629u, 104406u, u_input.c.x)), vec3<u32>(57049u, 16128u, var_0.d.x) & vec3<u32>(14290u, var_0.d.x, 50346u)), vec3<u32>(var_0.d.x << (u_input.e % 32u), 1u, abs(11178u))), vec4<bool>(var_0.a.x, global0.x, true, true), ~(countOneBits(~u_input.d.yx) ^ var_0.b));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -570f);
    let var_3 = all(select(select(var_1.d.wxx, !select(var_1.d.zzw, vec3<bool>(true, false, var_0.a.x), global0.x), true), vec3<bool>(true, var_1.d.x, all(select(var_1.d, vec4<bool>(var_0.a.x, false, global0.x, false), var_1.d))), !(!select(var_1.d.xxy, var_1.d.zyx, false))));
    var var_4 = select(var_0.a, var_0.a, var_1.d.zx);
    return Struct_1(-1i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-280f, var_0.c)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(var_1.b)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(899f, -927f))))) + _wgslsmith_f_op_vec2_f32(-var_1.b))), _wgslsmith_sub_vec3_u32(~(~(~u_input.c.xxw)), abs(u_input.b)), var_1.d, abs(select(_wgslsmith_add_vec2_i32(var_0.b, u_input.d.xx), vec2<i32>(var_1.e.x, var_0.b.x), vec2<bool>(var_4.x, var_1.d.x)) & vec2<i32>(2147483647i, _wgslsmith_dot_vec2_i32(u_input.d.zx, u_input.d.wy))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_mult_i32(~_wgslsmith_dot_vec3_i32(-u_input.d.wyz, _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 5241i, 1i), u_input.d.xyz)), -1i), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -215f), 1000f)))), arg_2.c, !select(!vec4<bool>(arg_1.d.x, arg_1.d.x, global0.x, arg_2.d.x), arg_1.d, true), ~((vec2<i32>(-2147483647i, arg_1.a) << (~vec2<u32>(arg_1.c.x, arg_2.c.x) % vec2<u32>(32u))) & ~_wgslsmith_add_vec2_i32(arg_1.e, vec2<i32>(u_input.d.x, u_input.d.x))));
    var var_1 = u_input.d.wx;
    return !select(arg_1.d.zz, vec2<bool>(true, func_2().d.x), var_0.d.xz);
}

fn func_1() -> Struct_1 {
    var var_0 = ~(~vec4<u32>(~(~u_input.c.x), 1u, u_input.c.x, ~1u));
    var var_1 = Struct_2(select(select(!vec2<bool>(global0.x, true), func_4(vec2<f32>(1101f, -818f), Struct_1(u_input.d.x, vec2<f32>(1000f, 122f), vec3<u32>(4294967295u, 0u, var_0.x), vec4<bool>(true, global0.x, false, global0.x), u_input.d.yy), func_2()), vec2<bool>(false & global0.x, true)), !select(!vec2<bool>(global0.x, true), !vec2<bool>(false, global0.x), var_0.x <= 33185u), func_4(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-581f, 644f) * vec2<f32>(-587f, 1000f)))), Struct_1(0i, vec2<f32>(-241f, 277f), _wgslsmith_sub_vec3_u32(u_input.c.yxy, vec3<u32>(u_input.b.x, 0u, var_0.x)), select(vec4<bool>(global0.x, false, false, false), vec4<bool>(global0.x, global0.x, global0.x, true), global0.x), u_input.d.wz & u_input.d.yz), func_2())), vec2<i32>(u_input.d.x, (u_input.a << (var_0.x % 32u)) >> (countOneBits(1u) % 32u)) << (abs(var_0.wy) % vec2<u32>(32u)), _wgslsmith_f_op_f32(step(-717f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(910f, -918f)))))), vec4<u32>(~countOneBits(_wgslsmith_mod_u32(u_input.c.x, u_input.b.x)), 10403u, _wgslsmith_mult_u32(var_0.x, _wgslsmith_clamp_u32(0u, ~16887u, _wgslsmith_sub_u32(u_input.c.x, 0u))), ~u_input.e));
    var_1 = Struct_2(var_1.a, select(vec2<i32>(u_input.d.x, var_1.b.x), _wgslsmith_add_vec2_i32(vec2<i32>(-u_input.d.x, 0i), vec2<i32>(max(u_input.a, -8123i), func_2().e.x)), global0.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.c))), vec4<u32>(_wgslsmith_div_u32(1u, ~firstLeadingBit(1u)), min(var_0.x, 1u), u_input.e, 5790u));
    var_0 = ~(~u_input.c);
    var var_2 = var_1.b.x;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = func_2();
    var var_1 = Struct_2(var_0.d.xx, -(~vec2<i32>(2147483647i, i32(-1i) * -38473i)), var_0.b.x, _wgslsmith_clamp_vec4_u32(firstTrailingBit(u_input.c), firstTrailingBit(u_input.c) | _wgslsmith_clamp_vec4_u32(~vec4<u32>(var_0.c.x, 14006u, 1u, u_input.b.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, var_0.c.x, 86409u, u_input.b.x), u_input.c, u_input.c), vec4<u32>(0u, var_0.c.x, var_0.c.x, 83547u)), ~vec4<u32>(~4294967295u, u_input.e, 0u | var_0.c.x, _wgslsmith_mod_u32(41178u, var_0.c.x))));
    var var_2 = func_2();
    var var_3 = _wgslsmith_mult_vec3_i32(vec3<i32>(-_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-19043i, -61877i), vec2<i32>(0i, var_0.a)), -vec2<i32>(2147483647i, -2147483647i)), select(_wgslsmith_clamp_i32(u_input.a, u_input.d.x, 14646i) & (var_1.b.x & 0i), 0i, any(select(vec2<bool>(false, false), vec2<bool>(true, global0.x), var_2.d.x))), u_input.a), u_input.d.xyw);
    global0 = vec2<bool>(true, any(!vec4<bool>(false, var_1.a.x, var_2.d.x, all(var_0.d))));
    var_3 = u_input.d.zyw;
    let var_4 = select(!(!select(!vec3<bool>(true, var_2.d.x, true), vec3<bool>(false, var_1.a.x, true), vec3<bool>(global0.x, true, true))), !var_0.d.yzx, func_1().d.wxz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1151f, -883f, var_2.b.x, -1000f) * vec4<f32>(var_1.c, 244f, 196f, var_0.b.x)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1940f, var_1.c, var_0.b.x, var_2.b.x), vec4<f32>(-1746f, 489f, var_0.b.x, -829f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.x, 514f, var_2.b.x, 1311f), vec4<f32>(var_1.c, 670f, 2123f, 1166f), false)), !select(vec4<bool>(true, true, true, var_2.d.x), var_0.d, vec4<bool>(true, var_1.a.x, var_1.a.x, false))))));
}

