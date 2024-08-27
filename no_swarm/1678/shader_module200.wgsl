struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

var<private> global1: vec3<bool>;

var<private> global2: u32;

var<private> global3: array<f32, 18> = array<f32, 18>(184f, 730f, -668f, -282f, 2217f, -1179f, -492f, -1204f, 344f, 646f, -1843f, -1073f, 470f, 2135f, 255f, -630f, 765f, -606f);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: u32) -> vec3<u32> {
    var var_0 = _wgslsmith_sub_vec2_i32(~u_input.d, ~(-arg_0.a.zx));
    var var_1 = true || global1.x;
    global0 = array<Struct_1, 1>();
    var var_2 = Struct_4(vec3<i32>(0i, -15076i, -countOneBits(14967i)));
    var var_3 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-681f))) <= global3[_wgslsmith_index_u32(arg_2 ^ ~arg_2, 18u)], global1.x);
    return select(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(reverseBits(u_input.c), ~60026u, 4294967295u), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, arg_2, u_input.b), vec3<u32>(arg_2, arg_2, 9316u))), vec3<u32>(~_wgslsmith_clamp_u32(4294967295u, u_input.c, 4294967295u), arg_2, ~(~4294967295u))), abs(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, ~u_input.b, 54406u), _wgslsmith_add_vec3_u32(~vec3<u32>(arg_2, 0u, arg_2), ~vec3<u32>(u_input.c, 1u, arg_2)))), any(select(vec4<bool>(u_input.a != arg_0.a.x, all(vec3<bool>(false, var_3.x, false)), !global1.x, global1.x), vec4<bool>(true, true, true, true), any(vec4<bool>(true, global1.x, var_3.x, global1.x)))));
}

fn func_2(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = Struct_3(~vec2<i32>(0i, firstLeadingBit(1i)), max(~arg_0.wxw, func_3(Struct_4(abs(vec3<i32>(2147483647i, 47793i, u_input.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(927f))), u_input.c)), countOneBits(vec4<i32>(-abs(u_input.d.x), 1i, 0i, _wgslsmith_mod_i32(u_input.d.x, 2147483647i) ^ u_input.a)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-1692f)), _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(54536u, 18u)])), _wgslsmith_f_op_f32(f32(-1f) * -624f), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(60274u, 1u), 18u)])) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-264f, global3[_wgslsmith_index_u32(37339u, 18u)], -1395f, global3[_wgslsmith_index_u32(128839u, 18u)]), vec4<f32>(global3[_wgslsmith_index_u32(0u, 18u)], 847f, -1029f, -1695f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(518f, global3[_wgslsmith_index_u32(u_input.b, 18u)], global3[_wgslsmith_index_u32(37228u, 18u)], global3[_wgslsmith_index_u32(1u, 18u)]) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 18u)], -928f, -1000f, 722f) * vec4<f32>(667f, global3[_wgslsmith_index_u32(var_0.b.x, 18u)], 1086f, global3[_wgslsmith_index_u32(u_input.c, 18u)]))), global1.x))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3[_wgslsmith_index_u32(24565u, 18u)], -1436f, global3[_wgslsmith_index_u32(var_0.b.x, 18u)], 500f)))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -717f), _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(u_input.c, 18u)])), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(20702u, 18u)] * -519f), 540f)))));
    let var_2 = Struct_2(Struct_1(~_wgslsmith_mod_u32(u_input.c, ~12658u), select(arg_0, max(arg_0, abs(arg_0)), !global1.x)), vec2<u32>((0u >> ((arg_0.x & var_0.b.x) % 32u)) >> (~arg_0.x % 32u), ~(~_wgslsmith_sub_u32(u_input.c, var_0.b.x))), global0[_wgslsmith_index_u32(0u, 1u)]);
    var var_3 = !global1.yx;
    var var_4 = 0u;
    return var_2;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_4, arg_3: bool) -> vec4<bool> {
    global0 = array<Struct_1, 1>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4294967295u, 18u)] * global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(arg_0.a.b.x, 1u)), ~arg_1.b.zy), 18u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-1097f, 1568f, false)), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 18u)]), 17392i <= arg_2.a.x)))));
    let var_1 = ~(select(~vec4<u32>(arg_1.b.x, arg_0.c.a, 4294967295u, arg_0.c.b.x), max(vec4<u32>(u_input.b, u_input.c, arg_1.a, 56058u), arg_0.c.b), vec4<bool>(global1.x, false, arg_3 || global1.x, global1.x | true)) & _wgslsmith_div_vec4_u32(arg_0.c.b, arg_1.b));
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    return vec4<bool>(global1.x, true, true, arg_3);
}

fn func_5(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: vec2<bool>) -> Struct_3 {
    global1 = arg_0.wzw;
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-443f, global3[_wgslsmith_index_u32(u_input.c, 18u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.x))), true));
    let var_1 = max(_wgslsmith_sub_vec4_i32(-(~vec4<i32>(u_input.a, -1i, u_input.d.x, 1i)), ~(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, 2147483647i, u_input.a, -66927i), vec4<i32>(u_input.d.x, 0i, u_input.d.x, 48398i)))), max(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, 1i, 21464i, u_input.a), -vec4<i32>(10328i, 0i, u_input.d.x, u_input.a)), vec4<i32>(-1i, -1i, max(1i, -36120i), 1i) << (~(vec4<u32>(u_input.c, 19271u, 4294967295u, u_input.c) & vec4<u32>(0u, 56652u, 39519u, u_input.c)) % vec4<u32>(32u))));
    var var_2 = _wgslsmith_f_op_f32(sign(arg_1.x));
    let var_3 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(max(u_input.b, 4294967295u), reverseBits(41221u))), vec2<u32>(~func_2(~vec4<u32>(18592u, u_input.b, 1u, u_input.b)).a.a, u_input.c)), 18u)];
    return Struct_3(vec2<i32>(-25212i, select(-8414i, _wgslsmith_sub_i32(max(-1i, var_1.x), u_input.d.x), all(vec3<bool>(false, arg_2.x, true)))), max(func_2(~vec4<u32>(u_input.c, 9946u, 0u, 9928u) ^ ~vec4<u32>(u_input.b, u_input.c, 4294967295u, u_input.c)).c.b.xwy, vec3<u32>(_wgslsmith_div_u32(u_input.b, u_input.b), ~1u, select(u_input.c, u_input.c, false)) >> (_wgslsmith_clamp_vec3_u32(select(vec3<u32>(u_input.c, u_input.c, 34290u), vec3<u32>(u_input.c, u_input.b, 4294967295u), vec3<bool>(true, global1.x, arg_0.x)), ~vec3<u32>(u_input.c, u_input.c, u_input.c), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.c), vec3<u32>(10458u, u_input.c, 8119u))) % vec3<u32>(32u))), min(vec4<i32>(_wgslsmith_mult_i32(u_input.d.x, var_1.x), var_1.x, var_1.x, _wgslsmith_sub_i32(u_input.a, u_input.d.x)) << (min(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.c, u_input.b), vec4<u32>(u_input.c, u_input.c, u_input.b, u_input.b)), countOneBits(vec4<u32>(u_input.b, u_input.b, 1517u, 72797u))) % vec4<u32>(32u)), ~(~(-var_1))));
}

fn func_6(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: u32) -> StorageBuffer {
    var var_0 = vec4<u32>(func_3(Struct_4(firstLeadingBit(abs(arg_0.c.yzy))), _wgslsmith_f_op_f32(513f * 104f), 1978u).x, (~(~arg_0.b.x) << (arg_0.b.x % 32u)) | arg_0.b.x, (arg_2 & 1u) ^ _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(arg_0.b.xy, ~vec2<u32>(0u, u_input.c)), countOneBits(u_input.c)), _wgslsmith_sub_u32(~_wgslsmith_mod_u32(~arg_2, firstTrailingBit(arg_0.b.x)), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(48006u, arg_2, 0u, 0u), ~vec4<u32>(1u, arg_2, arg_2, 42459u)), arg_0.b.x)));
    return StorageBuffer(firstTrailingBit(func_5(!(!vec4<bool>(arg_1.x, global1.x, global1.x, true)), vec2<f32>(_wgslsmith_f_op_f32(-1364f - global3[_wgslsmith_index_u32(48030u, 18u)]), _wgslsmith_f_op_f32(ceil(589f))), select(arg_1, select(global1.xy, global1.xy, global1.x), vec2<bool>(global1.x, false))).b.x), arg_0.c);
}

fn func_1() -> StorageBuffer {
    global2 = u_input.b;
    var var_0 = ~1u;
    let var_1 = _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~(~u_input.c), 18u)]);
    global2 = u_input.b;
    let var_2 = global0[_wgslsmith_index_u32(u_input.c, 1u)];
    return func_6(func_5(func_4(func_2(vec4<u32>(u_input.b, 1u, 4294967295u, 24123u)), Struct_1(_wgslsmith_div_u32(0u, 17292u), ~vec4<u32>(0u, var_2.b.x, u_input.c, 0u)), Struct_4(vec3<i32>(2147483647i, -9661i, 0i) << (var_2.b.wxw % vec3<u32>(32u))), true), vec2<f32>(854f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(560f * 1414f)))), global1.zz), vec2<bool>(true, all(!global1.xy)), 12243u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 1>();
    global3 = array<f32, 18>();
    let var_0 = vec3<bool>(false, all(!(!vec3<bool>(false, false, global1.x))), global1.x);
    let x = u_input.a;
    s_output = func_1();
}

