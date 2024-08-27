struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: f32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<bool>) -> u32 {
    let var_0 = vec2<i32>(-abs(arg_0.c.x), 56587i);
    var var_1 = Struct_1(~(28533u & ~_wgslsmith_clamp_u32(u_input.c, arg_0.d, arg_0.d)), !vec3<bool>(arg_0.c.x <= (var_0.x & arg_0.c.x), !(arg_1.x || true), arg_1.x));
    let var_2 = select(!arg_1, var_1.b.xy, !arg_1);
    global0 = var_2;
    return u_input.b;
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_1(func_3(Struct_3(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(660f, -775f))), ~(vec2<u32>(u_input.a.x, u_input.a.x) & vec2<u32>(u_input.c, u_input.a.x)), reverseBits(vec2<i32>(1i, 1i)), (60703u << (u_input.a.x % 32u)) << (_wgslsmith_mod_u32(u_input.c, 73893u) % 32u)), select(!vec2<bool>(global0.x, false), vec2<bool>(!global0.x, false), vec2<bool>(true, global0.x))), vec3<bool>(false, ~(~u_input.c) >= 0u, all(vec4<bool>(all(vec4<bool>(global0.x, true, global0.x, true)), global0.x, true, select(global0.x, global0.x, true)))));
    var var_1 = u_input.a;
    let var_2 = Struct_1(_wgslsmith_add_u32(~(abs(1201u) >> (1u % 32u)), u_input.a.x), select(!vec3<bool>(true, global0.x, false), !(!vec3<bool>(global0.x, false, global0.x)), all(select(vec4<bool>(global0.x, false, var_0.b.x, var_0.b.x), vec4<bool>(true, true, var_0.b.x, true), true & global0.x))));
    var var_3 = -_wgslsmith_clamp_vec2_i32(abs(abs(~vec2<i32>(-14191i, -2147483647i))), vec2<i32>(_wgslsmith_mod_i32(1i, abs(-2147483647i)), -2147483647i), firstTrailingBit(reverseBits(-vec2<i32>(-2147483647i, 2147483647i))));
    var var_4 = all(select(vec4<bool>(var_0.b.x, true, false, all(var_2.b.xx)), vec4<bool>(var_0.b.x && global0.x, true, true, any(var_0.b)), select(vec4<bool>(var_2.b.x, select(true, var_2.b.x, global0.x), any(vec4<bool>(false, var_2.b.x, var_0.b.x, global0.x)), true), vec4<bool>(select(var_0.b.x, true, global0.x), true, var_0.b.x, var_2.b.x && false), global0.x)));
    return Struct_4(-1139f, ~max(-var_3.x, 53443i) & (abs(47373i) >> (firstTrailingBit(1u) % 32u)), -1230f, ~select(~vec4<u32>(0u, var_1.x, var_0.a, var_1.x), select(~vec4<u32>(6177u, var_2.a, var_1.x, u_input.a.x), vec4<u32>(var_1.x, var_2.a, var_2.a, 1321u) ^ vec4<u32>(4294967295u, var_2.a, 16776u, var_0.a), vec4<bool>(false, true, var_0.b.x, false)), vec4<bool>(global0.x, true, global0.x, all(var_0.b.yy))));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec4<i32>, arg_3: Struct_4) -> bool {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(454f, _wgslsmith_f_op_f32(arg_3.c + arg_3.c)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-270f, 464f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1709f, -241f), vec2<f32>(-318f, 355f))))), u_input.a.yy, vec2<i32>(arg_1, 0i) | vec2<i32>(30103i >> ((4294967295u << (arg_3.d.x % 32u)) % 32u), -2147483647i), _wgslsmith_sub_u32(~arg_3.d.x, 34861u));
    let var_1 = var_0.c;
    var var_2 = 44760u;
    var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(22222u, 16492u), select(~u_input.a.yx, vec2<u32>(67477u, u_input.c), global0.x)), (select(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(1u, u_input.c), vec2<bool>(true, global0.x)) | u_input.a.zx) ^ ~(vec2<u32>(u_input.c, 8273u) | u_input.a.zx)), vec2<u32>(u_input.c, arg_3.d.x));
    let var_3 = _wgslsmith_mult_u32(0u, ~41826u);
    return !(var_0.b.x != _wgslsmith_dot_vec3_u32(~vec3<u32>(25225u, 1132u, arg_3.d.x), ~select(u_input.a, u_input.a, global0.x)));
}

fn func_1(arg_0: Struct_3, arg_1: u32) -> bool {
    global0 = !vec2<bool>(func_4(i32(-1i) * -arg_0.c.x, i32(-1i) * -1i, vec4<i32>(_wgslsmith_div_i32(arg_0.c.x, -45727i), 65582i, 0i, arg_0.c.x >> (u_input.b % 32u)), func_2()), false);
    global0 = vec2<bool>(global0.x, all(select(select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(false, global0.x, global0.x), global0.x), select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(true, true, global0.x), false), arg_0.c.x == arg_0.c.x)) || global0.x);
    let var_0 = Struct_2(Struct_1(~2817u, select(vec3<bool>(!global0.x, 18858i <= arg_0.c.x, true), vec3<bool>(false && global0.x, !global0.x, global0.x || false), true)));
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -642f));
    let var_1 = Struct_1(u_input.b, !(!select(select(vec3<bool>(false, true, global0.x), vec3<bool>(true, true, global0.x), global0.x), vec3<bool>(false, global0.x, global0.x), global0.x)));
    var var_2 = Struct_3(vec2<f32>(var_0, var_0), ~(~_wgslsmith_div_vec2_u32(u_input.a.yx, max(vec2<u32>(var_1.a, 108u), u_input.a.yz))), -vec2<i32>(~(-1i >> (0u % 32u)), firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, -37778i), vec3<i32>(23061i, -2147483647i, 1i)))), _wgslsmith_add_u32(abs(~_wgslsmith_clamp_u32(var_1.a, var_1.a, u_input.c)), 3974u));
    global0 = select(vec2<bool>(!var_1.b.x, var_1.b.x), select(!(!var_1.b.yx), vec2<bool>(!func_1(Struct_3(var_2.a, vec2<u32>(45882u, var_1.a), vec2<i32>(-2243i, -1i), 25103u), var_1.a), global0.x), !(!(global0.x == var_1.b.x))), global0.x);
    var var_3 = !select(vec4<bool>(!global0.x, true, var_1.b.x, _wgslsmith_mod_i32(8431i, var_2.c.x) >= -1482i), !vec4<bool>(select(false, var_1.b.x, var_1.b.x), any(var_1.b.yx), global0.x, var_1.b.x), global0.x);
    let var_4 = ~vec2<u32>(27032u, 1u);
    var var_5 = vec3<i32>(var_2.c.x << ((abs(4294967295u) & u_input.b) % 32u), var_2.c.x, _wgslsmith_mult_i32(-59943i, firstTrailingBit(var_2.c.x))) ^ -(~_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_2.c.x, -1i, -1i), vec3<i32>(var_2.c.x, -1i, var_2.c.x)), select(vec3<i32>(var_2.c.x, 0i, -4440i), vec3<i32>(26843i, 0i, 0i), var_1.b)));
    let var_6 = false;
    var_3 = select(select(!(!(!vec4<bool>(var_3.x, var_6, true, var_1.b.x))), !select(vec4<bool>(false, true, true, var_1.b.x), !vec4<bool>(var_3.x, var_6, global0.x, true), select(vec4<bool>(var_1.b.x, false, global0.x, global0.x), vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, false), vec4<bool>(var_3.x, true, var_3.x, false))), !select(vec4<bool>(false, true, true, global0.x), !vec4<bool>(false, var_3.x, var_3.x, var_3.x), var_1.b.x)), !select(vec4<bool>(false, var_5.x < 1i, true, false), !select(vec4<bool>(var_3.x, var_6, false, false), vec4<bool>(false, var_6, true, true), false), false), vec4<bool>(func_4(1i, _wgslsmith_mult_i32(min(38854i, -1i), 83797i >> (var_1.a % 32u)), vec4<i32>(var_5.x << (var_4.x % 32u), _wgslsmith_mult_i32(-21496i, var_5.x), reverseBits(0i), 1i), Struct_4(-621f, var_5.x, var_0, reverseBits(vec4<u32>(35495u, var_4.x, 53299u, 94641u)))), all(vec2<bool>(true, var_6)) == true, var_5.x >= _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -38901i, var_2.c.x, 1988i) << (vec4<u32>(1u, var_2.b.x, var_4.x, var_4.x) % vec4<u32>(32u)), vec4<i32>(var_5.x, 36265i, var_2.c.x, var_5.x)), _wgslsmith_div_i32(-1i, abs(var_2.c.x)) <= reverseBits(_wgslsmith_add_i32(var_5.x, var_5.x))));
    let x = u_input.a;
    s_output = StorageBuffer(func_2().d, 7819i);
}

