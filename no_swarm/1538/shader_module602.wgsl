struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: u32;

var<private> global2: Struct_1 = Struct_1(-1i);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = arg_1;
    var var_2 = Struct_1(_wgslsmith_sub_i32(2147483647i, arg_0.a));
    var var_3 = arg_1;
    var_2 = arg_0;
    return Struct_1(-_wgslsmith_mod_i32(11909i, -14423i));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> bool {
    global0 = max(~firstLeadingBit(~vec4<u32>(1722u, 1u, u_input.c.x, 4294967295u)) >> (select(firstLeadingBit(~vec4<u32>(61670u, global0.x, 76143u, u_input.c.x)), vec4<u32>(4294967295u, _wgslsmith_clamp_u32(u_input.c.x, 21431u, 40161u), ~u_input.c.x, ~1u), !(arg_1 >= u_input.c.x)) % vec4<u32>(32u)), vec4<u32>(global0.x, global0.x, min(~(~63032u), ~u_input.c.x), _wgslsmith_add_u32(~(~4294967295u), _wgslsmith_sub_u32(reverseBits(global0.x), _wgslsmith_add_u32(6943u, 38703u)))));
    let var_0 = vec3<u32>(~79290u, global0.x & max(16017u, ~2503u), u_input.c.x) >> (min(vec3<u32>(u_input.c.x, ~4294967295u, 1u), ~(~global0.zww)) % vec3<u32>(32u));
    let var_1 = func_2(func_2(arg_0, arg_0), arg_0);
    var var_2 = ~(~min(vec4<u32>(~4294967295u, ~46973u, 4294967295u, ~var_0.x), vec4<u32>(reverseBits(u_input.c.x), 1u ^ arg_1, u_input.c.x << (var_0.x % 32u), ~65660u)));
    let var_3 = Struct_1(_wgslsmith_add_i32(2147483647i, var_1.a));
    return true;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -561f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(914f + 2204f), 1f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -653f)))) - _wgslsmith_f_op_f32(ceil(-286f)));
    var var_3 = func_2(var_1, Struct_1(_wgslsmith_mod_i32(-(~u_input.e.x), global2.a)));
    let var_4 = !select(!vec3<bool>(func_3(Struct_1(var_1.a), u_input.c.x), true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, any(vec2<bool>(false, true)), true), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), true));
    return Struct_1(_wgslsmith_mod_i32(1i, 1i));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.c.x, 60556u, global0.x, 83773u), vec4<u32>(24874u >> (global0.x % 32u), max(0u, global0.x), u_input.c.x, _wgslsmith_div_u32(global0.x, 0u))), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 47934u, global0.x, global0.x), vec4<u32>(0u, u_input.c.x, 0u, u_input.c.x)), ~4294967295u, u_input.c.x, 0u), (vec4<u32>(0u, u_input.c.x, 12293u, 4294967295u) | vec4<u32>(u_input.c.x, 34970u, u_input.c.x, 59343u)) ^ vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, 82946u))), global0.x, abs(~_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.c.x, u_input.c.x), 1u)));
    global0 = countOneBits(~reverseBits(abs(vec4<u32>(24915u, 1u, 8227u, 7447u))) ^ vec4<u32>(~u_input.c.x, ~reverseBits(28292u), 34778u, u_input.c.x));
    var var_1 = reverseBits(abs(_wgslsmith_sub_vec3_i32(u_input.d.yxx, abs(~arg_0))));
    global0 = firstLeadingBit(_wgslsmith_clamp_vec4_u32(firstLeadingBit(~_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, 0u, 0u, 72759u), vec4<u32>(0u, global0.x, 0u, global0.x))), max(reverseBits(vec4<u32>(global0.x, u_input.c.x, 4294967295u, 0u)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, global0.x, u_input.c.x, 0u), vec4<u32>(4294967295u, 4294967295u, global0.x, global0.x)) % vec4<u32>(32u)), abs(~vec4<u32>(u_input.c.x, 74351u, 1u, u_input.c.x))), ~abs(vec4<u32>(4294967295u, 88646u, global0.x, global0.x)) & _wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, global0.x, u_input.c.x, global0.x) | vec4<u32>(u_input.c.x, u_input.c.x, global0.x, global0.x), _wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, u_input.c.x, u_input.c.x, 12578u), vec4<u32>(u_input.c.x, global0.x, global0.x, 65013u)))));
    var_1 = max(vec3<i32>(_wgslsmith_add_i32(firstLeadingBit(global2.a), u_input.d.x ^ arg_0.x) ^ min(_wgslsmith_mult_i32(1i, arg_1.a), countOneBits(-2147483647i)), -625i, 13998i), firstLeadingBit(u_input.e.zxw));
    return Struct_1(20155i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(u_input.d.wzz, func_1(Struct_1(~global2.a), Struct_1(_wgslsmith_mult_i32(~u_input.e.x, -48658i)), vec4<i32>(-1i) * -countOneBits(vec4<i32>(8262i, u_input.d.x, global2.a, global2.a))));
    global2 = Struct_1(func_1(func_4(-(~vec3<i32>(global2.a, u_input.a, global2.a)), Struct_1(~(-21157i))), Struct_1(u_input.b.x), -vec4<i32>(_wgslsmith_sub_i32(u_input.a, 13394i), 47679i, i32(-1i) * -1i, 0i)).a);
    var var_1 = ~(~_wgslsmith_clamp_vec3_u32(u_input.c, global0.zwy, ~(vec3<u32>(global0.x, 1u, 15047u) & vec3<u32>(0u, global0.x, 0u))));
    var var_2 = !any(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true));
    var var_3 = u_input.c.x | 1u;
    global0 = ~vec4<u32>(5592u, var_1.x, var_1.x, _wgslsmith_mult_u32(~(~1u), _wgslsmith_div_u32(global0.x, _wgslsmith_mult_u32(1u, var_1.x))));
    let var_4 = vec2<u32>(firstLeadingBit(46627u), firstTrailingBit(55411u));
    let x = u_input.a;
    s_output = StorageBuffer(select(-u_input.e.wx, firstLeadingBit(u_input.e.xy), vec2<bool>(true, !any(vec4<bool>(true, false, true, false)))));
}

