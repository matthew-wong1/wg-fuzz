struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_1 = Struct_1(vec2<bool>(true, true));

var<private> global2: vec2<f32> = vec2<f32>(921f, 147f);

var<private> global3: f32;

var<private> global4: Struct_3;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: u32) -> f32 {
    let var_0 = Struct_1(vec2<bool>(all(!(!vec4<bool>(false, false, global1.a.x, global1.a.x))), global0.x));
    global1 = Struct_1(vec2<bool>(any(global1.a), all(!(!vec4<bool>(var_0.a.x, global0.x, true, global0.x)))));
    let var_1 = false;
    let var_2 = global0.wxx;
    let var_3 = Struct_3(_wgslsmith_f_op_f32(select(2506f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global2.x))))), false)), 1u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.a - global4.a) * -305f);
}

fn func_3(arg_0: Struct_3) -> u32 {
    var var_0 = ~0u;
    let var_1 = vec2<i32>(_wgslsmith_div_i32(1i, _wgslsmith_clamp_i32(1i, countOneBits(1i), ~49680i)), countOneBits(_wgslsmith_mult_i32(34632i, -abs(-8659i))));
    let var_2 = Struct_1(global0.yz);
    var var_3 = all(global0.yzx);
    global3 = _wgslsmith_f_op_f32(floor(arg_0.a));
    return 40569u;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(func_2(_wgslsmith_clamp_u32(~4294967295u, 55151u, abs(_wgslsmith_div_u32(0u, 50840u))))), 1u);
    global4 = Struct_3(577f, abs(~45216u));
    let var_1 = Struct_3(var_0.a, var_0.b);
    var var_2 = _wgslsmith_f_op_f32(-var_0.a);
    var var_3 = Struct_3(_wgslsmith_f_op_f32(min(1141f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * 898f))), _wgslsmith_sub_u32(abs(func_3(Struct_3(global2.x, 4294967295u))), global4.b));
    return Struct_1(select(!select(vec2<bool>(false, false), global1.a, true), vec2<bool>(global0.x, false), vec2<bool>(true, true)));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: Struct_1) -> vec3<f32> {
    var var_0 = -firstLeadingBit(~firstLeadingBit(_wgslsmith_sub_i32(23390i, -1i)));
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(867f, _wgslsmith_div_f32(-240f, global4.a))), global2.x)));
    var var_1 = Struct_1(vec2<bool>(true, !((global4.b > u_input.d.x) && global1.a.x)));
    global4 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))) - _wgslsmith_f_op_f32(round(1305f))), ~(~_wgslsmith_add_u32(~21315u, ~u_input.c)));
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(261f - 299f));
    return _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global4.a + 750f), arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))), 1935f, -981f), _wgslsmith_f_op_vec3_f32(-arg_0)));
}

fn func_5(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = ~abs(vec3<u32>(25550u, _wgslsmith_sub_u32(~7150u, 0u), u_input.a.x));
    let var_1 = ~_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(48479u, 4294967295u, 4294967295u)), vec3<u32>(1u, 116691u, firstTrailingBit(var_0.x)), firstLeadingBit(vec3<u32>(u_input.a.x, global4.b, global4.b)) >> (~vec3<u32>(global4.b, 8864u, 4294967295u) % vec3<u32>(32u))) >> (~abs(_wgslsmith_add_vec3_u32(~vec3<u32>(0u, 16706u, global4.b), ~vec3<u32>(13328u, global4.b, 6210u))) % vec3<u32>(32u));
    global1 = Struct_1(select(vec2<bool>(true && !global1.a.x, false && !global1.a.x), vec2<bool>(any(select(global0.yyx, global0.xyz, global0.x)), any(vec4<bool>(true, global0.x, global0.x, global0.x)) || func_1().a.x), vec2<bool>(!global0.x, func_1().a.x)));
    global0 = select(select(vec4<bool>(!global1.a.x, false, any(!vec4<bool>(global0.x, false, true, true)), select(true, any(global0.yyx), !global1.a.x)), select(select(select(vec4<bool>(global1.a.x, true, false, true), vec4<bool>(false, false, true, global0.x), false), select(vec4<bool>(global1.a.x, false, true, true), vec4<bool>(true, false, false, global1.a.x), vec4<bool>(global0.x, global0.x, global0.x, false)), vec4<bool>(false, false, global0.x, false)), !select(vec4<bool>(false, false, global1.a.x, global1.a.x), vec4<bool>(true, false, false, global0.x), vec4<bool>(global1.a.x, global0.x, false, false)), all(vec3<bool>(global1.a.x, global0.x, global0.x))), !(!(!vec4<bool>(true, global0.x, global1.a.x, global0.x)))), vec4<bool>(false, true, global0.x & global0.x, true), !(!(!select(vec4<bool>(false, global0.x, global1.a.x, false), vec4<bool>(true, false, global1.a.x, true), global1.a.x))));
    var_0 = reverseBits(_wgslsmith_mult_vec3_u32(select(select(~vec3<u32>(28507u, u_input.b.x, var_1.x), var_1 ^ vec3<u32>(var_0.x, var_1.x, var_0.x), false), vec3<u32>(var_0.x, var_0.x, _wgslsmith_mod_u32(4294967295u, global4.b)), true), select(~vec3<u32>(0u, 56035u, 4294967295u), vec3<u32>(global4.b, 68904u, 17519u) & vec3<u32>(593u, 19112u, u_input.e), vec3<bool>(false, true, false)) >> (~firstTrailingBit(var_1) % vec3<u32>(32u))));
    return Struct_1(global1.a);
}

fn func_6(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> Struct_3 {
    global4 = Struct_3(379f, countOneBits(22734u));
    global1 = arg_2;
    let var_0 = _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, global4.b, u_input.e) << (~(~vec3<u32>(4294967295u, 1u, 39522u)) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(select(~vec3<u32>(global4.b, u_input.e, 57701u), vec3<u32>(global4.b, u_input.e, global4.b), vec3<bool>(global0.x, false, true)), _wgslsmith_sub_vec3_u32(vec3<u32>(20222u, global4.b, 0u), firstTrailingBit(vec3<u32>(25108u, 54420u, global4.b))))), reverseBits(select(abs(~vec3<u32>(global4.b, global4.b, 0u)), vec3<u32>(~u_input.b.x, _wgslsmith_mod_u32(38480u, 21873u), u_input.c), vec3<bool>(!global1.a.x, !arg_2.a.x, true))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global4.a, global2.x, global4.a), vec3<f32>(global2.x, 797f, global4.a)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(159f, global2.x, 1022f)))) - _wgslsmith_f_op_vec3_f32(func_4(vec3<f32>(global4.a, 1254f, global4.a), arg_2.a, func_1()))), select(vec2<bool>(!global1.a.x, !global0.x), arg_2.a, func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.a, global2.x, 811f))).a), func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 494f, global2.x))))).x, -1480f, -1895f);
    global3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1f), global2.x));
    return Struct_3(-1000f, _wgslsmith_mod_u32(_wgslsmith_mult_u32(global4.b, max(1u, u_input.d.x)), _wgslsmith_mod_u32(max(24041u, var_0.x), abs(var_0.x))) | ((~u_input.c << (reverseBits(0u) % 32u)) | ~reverseBits(var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_6(-29451i, _wgslsmith_dot_vec2_i32(select(vec2<i32>(0i, 1i), _wgslsmith_clamp_vec2_i32(-vec2<i32>(9740i, 0i), -vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(13303i, 30253i)), global0.x), vec2<i32>(~1i, 0i)), func_5(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1100f, global4.a, 948f)), !global0.xw, func_1()))));
    let var_0 = _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(~min(vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(1u, global4.b, global4.b)), ~vec3<u32>(16643u, u_input.b.x, 7086u), vec3<u32>(global4.b << (45219u % 32u), _wgslsmith_mult_u32(4294967295u, global4.b), 34030u)) & _wgslsmith_mult_vec3_u32(select(vec3<u32>(21262u, global4.b, 0u), vec3<u32>(u_input.e, 0u, 17555u) >> (vec3<u32>(global4.b, 83041u, 5748u) % vec3<u32>(32u)), !global0.x), min(~vec3<u32>(28625u, 0u, 34343u), ~vec3<u32>(u_input.e, 80280u, u_input.c))), vec3<u32>(max(1u, func_6(38170i >> (global4.b % 32u), i32(-1i) * -30120i, Struct_1(global0.zz)).b), global4.b, ~(~u_input.b.x) >> (firstLeadingBit(~u_input.d.x) % 32u)));
    var var_1 = func_6(-1i, countOneBits(1i), func_1());
    global1 = Struct_1(!(!select(func_1().a, !global1.a, vec2<bool>(false, true))));
    let var_2 = Struct_2(-1i, global2.x, ~vec2<i32>(-1i, -19903i));
    let var_3 = var_2;
    var var_4 = var_3.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(global4.a);
}

