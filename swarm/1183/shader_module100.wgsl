struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec3<f32>(-699f, 1086f, 1291f), vec2<i32>(-9485i, 21709i), vec4<f32>(914f, 1746f, 332f, 1128f)), Struct_1(vec4<bool>(false, false, true, true), vec3<f32>(211f, -130f, 1186f), vec2<i32>(-1i, 0i), vec4<f32>(650f, 1294f, 1296f, 783f)), 618f, vec2<f32>(-687f, -3005f));

var<private> global2: Struct_1 = Struct_1(vec4<bool>(true, true, false, false), vec3<f32>(1000f, 841f, 2500f), vec2<i32>(-95351i, 0i), vec4<f32>(527f, 1725f, -1225f, -1790f));

var<private> global3: bool = false;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: i32) -> vec4<f32> {
    var var_0 = u_input.b.x != _wgslsmith_clamp_u32(countOneBits(25575u), _wgslsmith_dot_vec2_u32(countOneBits(u_input.b.yw >> (vec2<u32>(u_input.b.x, 0u) % vec2<u32>(32u))), ~(~vec2<u32>(1u, 64658u))), u_input.b.x);
    global1 = Struct_2(global1.b, arg_1, -258f, vec2<f32>(_wgslsmith_f_op_f32(select(932f, global1.d.x, true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.b.d.x)))))));
    var var_1 = ~_wgslsmith_mod_u32(~(u_input.b.x ^ _wgslsmith_mult_u32(1u, 1u)), 0u);
    global2 = global1.b;
    let var_2 = Struct_2(Struct_1(vec4<bool>(any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), global1.a.a.zzy)), false, !(global1.b.d.x != arg_1.b.x), global1.a.a.x), vec3<f32>(arg_1.d.x, -1287f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1493f, arg_1.d.x))), vec2<i32>(~_wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(global2.c.x, global2.c.x, -18917i, arg_2)), global1.b.c.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1175f, arg_1.d.x), arg_1.d.x, _wgslsmith_f_op_f32(trunc(arg_1.b.x)), global1.d.x))), Struct_1(global2.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1214f, -1602f, global1.a.d.x), vec3<f32>(global2.b.x, 539f, 1512f))) + arg_1.d.zxz) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.d.xxz), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d.x, global2.d.x, 959f)))), ~(select(vec2<i32>(2147483647i, u_input.c), vec2<i32>(-1i, 25871i), arg_1.a.yy) << (~vec2<u32>(u_input.b.x, 76463u) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.d)))), -268f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(583f, global2.d.x), vec2<f32>(global1.a.d.x, global2.b.x), vec2<bool>(false, arg_1.a.x)))))) + vec2<f32>(global1.c, _wgslsmith_f_op_f32(max(arg_1.b.x, _wgslsmith_f_op_f32(global2.b.x + 571f))))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1.d.x - _wgslsmith_f_op_f32(abs(144f))), _wgslsmith_f_op_f32(f32(-1f) * -359f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(351f, arg_1.d.x, global1.b.a.x)) - -485f), _wgslsmith_f_op_f32(arg_1.d.x + 604f)), global1.b.d));
}

fn func_2() -> vec2<i32> {
    let var_0 = Struct_1(global1.a.a, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-global2.b))), -global1.b.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec4<i32>(global2.c.x, 66753i, firstLeadingBit(global2.c.x), -24706i), Struct_1(global1.a.a, _wgslsmith_f_op_vec3_f32(step(global1.a.b, global1.b.d.xxz)), ~vec2<i32>(6533i, global0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.x, -766f, -797f, 547f) + global2.d)), -2147483647i)) - vec4<f32>(global1.d.x, 1239f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(624f + global2.d.x)), _wgslsmith_f_op_f32(global2.b.x - _wgslsmith_f_op_f32(round(-777f))))));
    let var_1 = Struct_2(var_0, global1.a, -1166f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(min(-866f, global1.c))), global1.a.d.wy, vec2<bool>(false, true)))));
    global3 = !any(select(!(!global2.a.yxz), var_0.a.zzx, !select(vec3<bool>(var_1.a.a.x, true, true), vec3<bool>(global2.a.x, true, true), vec3<bool>(global1.a.a.x, global1.b.a.x, true))));
    global1 = var_1;
    return ~global0.xz;
}

fn func_1(arg_0: Struct_2) -> bool {
    let var_0 = arg_0;
    let var_1 = 1u;
    let var_2 = var_0.b.a.x;
    let var_3 = ~_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global0.x, u_input.a, global2.c.x), vec3<i32>(var_0.b.c.x, 1i, -52035i)) | reverseBits(vec3<i32>(10171i, 0i, var_0.b.c.x)), vec3<i32>(-62701i << (1u % 32u), -27535i, global2.c.x), min(vec3<i32>(global1.a.c.x, 0i, -1i), vec3<i32>(global1.a.c.x, -1i, 2147483647i))) | -(abs(select(vec3<i32>(arg_0.b.c.x, global1.a.c.x, -47515i), vec3<i32>(0i, u_input.d, global0.x), arg_0.b.a.xww)) & countOneBits(-vec3<i32>(-1i, -2147483647i, -9669i)));
    var var_4 = Struct_1(select(!select(vec4<bool>(true, var_2, false, var_2), !arg_0.a.a, global1.a.a), var_0.b.a, _wgslsmith_div_f32(var_0.b.b.x, var_0.b.d.x) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(577f, 481f)) * -902f)), arg_0.b.b, _wgslsmith_div_vec2_i32(vec2<i32>(~firstTrailingBit(-39007i), 0i >> (var_1 % 32u)), func_2()), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f - global2.b.x), _wgslsmith_f_op_f32(-global1.b.d.x), any(arg_0.a.a.ywy)))), _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(max(var_0.a.d.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_0.d.x, global1.a.d.x))))), global2.b.x));
    return all(!var_4.a);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = select(any(global1.a.a.zzx), all(vec4<bool>(global2.a.x, func_1(Struct_2(global1.a, global1.a, global1.d.x, global2.b.zy)), false, true & (true && global2.a.x))), any(vec3<bool>(false, all(select(vec3<bool>(global2.a.x, true, true), global2.a.wzz, global1.a.a.xzx)), global1.b.a.x)));
    let var_0 = (vec4<i32>(-1i) * -vec4<i32>(global0.x, -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, global2.c.x, -1i, global2.c.x), vec4<i32>(global2.c.x, -24006i, 2147483647i, 1i)), _wgslsmith_div_i32(-2147483647i, 2147483647i))) & select(-_wgslsmith_div_vec4_i32(~vec4<i32>(global0.x, global0.x, 2147483647i, 0i), vec4<i32>(44048i, u_input.c, 2147483647i, u_input.d)), vec4<i32>(global2.c.x, _wgslsmith_div_i32(_wgslsmith_clamp_i32(global0.x, 18660i, 10155i), global1.a.c.x & 2147483647i), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(28395i, 1993i, -4846i, -55817i)), reverseBits(vec4<i32>(0i, global1.a.c.x, -1i, 38780i))), global2.c.x), !(!vec4<bool>(true, global2.a.x, false, false)));
    global0 = var_0.zxw;
    var var_1 = Struct_2(global1.a, Struct_1(select(vec4<bool>(global1.a.a.x, global1.b.a.x && global1.a.a.x, all(vec2<bool>(global1.a.a.x, global1.a.a.x)), false), !vec4<bool>(global1.a.a.x, global2.a.x, true, true), true), vec3<f32>(1342f, global1.a.b.x, 620f), global2.c, vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec4_f32(func_3(var_0, global1.b, 21903i)).x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(309f)) - _wgslsmith_div_f32(global2.d.x, global1.b.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(var_0, Struct_1(global1.b.a, vec3<f32>(global2.b.x, 1171f, -185f), global2.c, global2.d), 12280i)).x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(-global1.c)))), 1303f, global2.b.yz);
    var var_2 = select(~firstLeadingBit(_wgslsmith_add_vec4_i32(var_0, vec4<i32>(5234i, global0.x, 34783i, global2.c.x)) << (_wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(1u, 4294967295u, 0u, u_input.b.x)) % vec4<u32>(32u))), ~(~vec4<i32>(_wgslsmith_mod_i32(2147483647i, var_1.a.c.x), ~(-1i), global1.b.c.x, global1.b.c.x)), vec4<bool>(false, var_1.b.a.x, !(!(-2147483647i > var_1.b.c.x)), all(select(global2.a, vec4<bool>(false, true, false, global2.a.x), select(global2.a, global2.a, vec4<bool>(global2.a.x, true, global1.b.a.x, var_1.a.a.x))))));
    global0 = vec3<i32>(func_2().x, -33538i, 4181i);
    var var_3 = abs(~u_input.b.yz) & _wgslsmith_div_vec2_u32(u_input.b.wx >> (~(~u_input.b.yy) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_div_u32(~u_input.b.x, 1u), u_input.b.x));
    global3 = var_1.a.a.x;
    var_2 = vec4<i32>(-1i, ~var_2.x, func_2().x, _wgslsmith_dot_vec4_i32(abs(var_0), _wgslsmith_sub_vec4_i32(var_0, var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(0u, vec4<i32>(29575i, -min(_wgslsmith_mult_i32(2147483647i, 1i), ~(-2147483647i)), _wgslsmith_mult_i32(min(-37637i | var_1.b.c.x, -4073i), _wgslsmith_mod_i32(0i, ~var_1.b.c.x)), -var_2.x), (~_wgslsmith_div_u32(u_input.b.x, var_3.x) ^ 32661u) << (~_wgslsmith_clamp_u32(u_input.b.x, 5788u | u_input.b.x, var_3.x) % 32u), ~(-abs(-vec3<i32>(global0.x, u_input.c, 37753i))), u_input.b);
}

