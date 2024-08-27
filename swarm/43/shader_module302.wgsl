struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16>;

var<private> global1: array<u32, 2> = array<u32, 2>(1u, 17948u);

var<private> global2: i32;

var<private> global3: array<bool, 4>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> i32 {
    var var_0 = vec4<bool>(any(select(!vec2<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 2u)], 2u)], 2u)], 2u)], 2u)], 16u)], global3[_wgslsmith_index_u32(258u, 4u)]), select(select(vec2<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1189u, 2u)], 16u)], true), vec2<bool>(global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)]), global0[_wgslsmith_index_u32(1u, 16u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(39593u, 16u)], true), vec2<bool>(true, global0[_wgslsmith_index_u32(4673u, 16u)]), false), select(vec2<bool>(true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(43669u, 2u)], 16u)]), vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 4u)], false), vec2<bool>(false, false))), false)), false, false, true);
    let var_1 = Struct_2(reverseBits(firstLeadingBit(-_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, -67767i, u_input.a.x), vec3<i32>(u_input.a.x, 1i, u_input.a.x)))));
    return 0i;
}

fn func_2(arg_0: f32, arg_1: Struct_3) -> vec3<u32> {
    let var_0 = vec4<f32>(823f, arg_0, _wgslsmith_f_op_f32(arg_0 + -717f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x)));
    global1 = array<u32, 2>();
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) + 1516f) - _wgslsmith_f_op_f32(trunc(1416f)))));
    global2 = min(_wgslsmith_dot_vec2_i32(vec2<i32>(firstLeadingBit(_wgslsmith_div_i32(-14030i, u_input.a.x)), (i32(-1i) * -1i) & func_3()), vec2<i32>(u_input.a.x, 25346i)), _wgslsmith_div_i32(2147483647i, ~(~6798i)));
    global2 = _wgslsmith_sub_i32(15034i, u_input.a.x);
    return ~_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(5597u, 20196u, select(global1[_wgslsmith_index_u32(0u, 2u)], global1[_wgslsmith_index_u32(1u, 2u)], true)), ~(~vec3<u32>(17631u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(18905u, 2u)], 2u)], 2u)], global1[_wgslsmith_index_u32(4294967295u, 2u)])), ~_wgslsmith_sub_vec3_u32(vec3<u32>(68119u, 1u, 1u), vec3<u32>(0u, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 2u)], 2u)]))), ~vec3<u32>(37786u, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4536u, 2u)], 2u)], 2u)], ~16778u));
}

fn func_1(arg_0: Struct_4, arg_1: vec3<bool>) -> f32 {
    global3 = array<bool, 4>();
    var var_0 = Struct_2(_wgslsmith_mod_vec3_i32(vec3<i32>(-546i, u_input.a.x, ~(-6552i)), reverseBits(vec3<i32>(-1i, -2637i, u_input.a.x)) << (~func_2(1000f, Struct_3(vec3<bool>(true, true, arg_1.x), arg_0.a.b, vec4<f32>(arg_0.a.c.x, -1000f, arg_0.b, -1586f))) % vec3<u32>(32u))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(arg_0.a.b.ywx, vec3<f32>(165f, -1224f, 1831f))), _wgslsmith_f_op_vec3_f32(-arg_0.a.b.zzw), select(arg_1, arg_1, arg_0.a.a))), arg_0.a.b.zxw, true))));
    var var_2 = true;
    var_0 = Struct_2(vec3<i32>(u_input.a.x, u_input.a.x >> (44028u % 32u), min(u_input.a.x, -16067i | func_3())));
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a, ~_wgslsmith_clamp_vec2_i32(~vec2<i32>(-20297i, u_input.a.x), u_input.a, u_input.a)), ~vec2<i32>(-1i, max(u_input.a.x, -41427i)) >> (~abs(reverseBits(vec2<u32>(0u, 11748u))) % vec2<u32>(32u)));
    var var_1 = Struct_4(Struct_3(select(select(vec3<bool>(false, true, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 2u)], 2u)], 4u)]), select(vec3<bool>(true, true, true), vec3<bool>(false, true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 2u)], 16u)]), false), true), vec3<bool>(true, !global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(43264u, 2u)], 2u)], 4u)], false), any(vec3<bool>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(745u, 2u)], 2u)], 2u)], 2u)], 4u)], global3[_wgslsmith_index_u32(8100u, 4u)], false))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(3383f + -1236f))), _wgslsmith_f_op_f32(f32(-1f) * -700f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(316f, 2440f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(844f * -651f) - -1000f)), vec4<f32>(_wgslsmith_f_op_f32(-562f + _wgslsmith_f_op_f32(func_1(Struct_4(Struct_3(vec3<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 4u)], global3[_wgslsmith_index_u32(37638u, 4u)]), vec4<f32>(2426f, 1000f, 352f, 567f), vec4<f32>(727f, 139f, -616f, -1463f)), -1000f), vec3<bool>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 2u)], 4u)], true, global0[_wgslsmith_index_u32(0u, 16u)])))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1324f + -432f))), _wgslsmith_f_op_f32(-428f - _wgslsmith_f_op_f32(func_1(Struct_4(Struct_3(vec3<bool>(global3[_wgslsmith_index_u32(39486u, 4u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 2u)], 16u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(128569u, 2u)], 4u)]), vec4<f32>(-1000f, 556f, -1226f, -822f), vec4<f32>(2149f, 801f, 103f, 443f)), -1621f), vec3<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 16u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(465f - 910f) - _wgslsmith_f_op_f32(floor(1000f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1260f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_4(Struct_3(vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 16u)], global3[_wgslsmith_index_u32(1u, 4u)]), vec4<f32>(2369f, -1843f, -1000f, -1034f), vec4<f32>(-2583f, 1230f, 1000f, -624f)), 592f), vec3<bool>(false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 2u)], 2u)], 2u)], 2u)], 16u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 2u)], 4u)])))), global3[_wgslsmith_index_u32(countOneBits(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(4294967295u, 2u)], 2u)]), 4u)])))));
    let var_2 = var_1.a.a;
    let var_3 = var_1.a.c.ywz;
    let var_4 = var_1.a.b.yxy;
    global1 = array<u32, 2>();
    var_0 = select(-_wgslsmith_add_vec2_i32(abs(~u_input.a), u_input.a), u_input.a, false);
    let var_5 = var_2.x & global3[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 2u)], 2u)], 2u)], 4u)];
    let var_6 = firstTrailingBit(_wgslsmith_add_vec4_u32(select(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(261u, 2u)], 2u)], 2u)], 2u)], 2u)], 2u)], global1[_wgslsmith_index_u32(4294967295u, 2u)], 76627u, 10071u) >> (vec4<u32>(4294967295u, 0u, 10105u, 119234u) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(21716u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 2u)], 2u)], global1[_wgslsmith_index_u32(10798u, 2u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(34167u, 2u)], 2u)]), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7832u, 2u)], 2u)], 2u)], 2u)], 2u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(46427u, 2u)], 2u)], 2u)], 2u)], 2u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(21535u, 2u)], 2u)], 2u)], 7785u)), true) << (firstLeadingBit(~vec4<u32>(0u, 4294967295u, 98070u, 0u)) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 2u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(59524u, 2u)], 2u)], global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(0u, 2u)]), vec4<u32>(global1[_wgslsmith_index_u32(0u, 2u)], global1[_wgslsmith_index_u32(90849u, 2u)], global1[_wgslsmith_index_u32(66143u, 2u)], global1[_wgslsmith_index_u32(39833u, 2u)]), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 2u)], 3916u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 2u)], global1[_wgslsmith_index_u32(43943u, 2u)])), vec4<u32>(33308u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(106830u, 2u)], 2u)], 2u)], 1u, global1[_wgslsmith_index_u32(4294967295u, 2u)])), vec4<u32>(global1[_wgslsmith_index_u32(0u, 2u)], 45729u, 133836u, 0u) << (_wgslsmith_div_vec4_u32(vec4<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(49360u, 2u)], 2u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 2u)], 2u)], global1[_wgslsmith_index_u32(4294967295u, 2u)]), vec4<u32>(global1[_wgslsmith_index_u32(5323u, 2u)], global1[_wgslsmith_index_u32(1u, 2u)], 30758u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2561u, 2u)], 2u)], 2u)])) % vec4<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, ~_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(12262i, -15206i, var_0.x, 0i)), _wgslsmith_add_vec4_i32(~vec4<i32>(u_input.a.x, u_input.a.x, -26516i, -17017i), ~vec4<i32>(u_input.a.x, var_0.x, -2147483647i, 24693i))), 2147483647i, ~_wgslsmith_add_i32(23861i, ~u_input.a.x));
}

