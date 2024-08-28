struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: i32;

var<private> global2: Struct_1 = Struct_1(vec3<u32>(1u, 96841u, 1u), vec4<bool>(true, true, true, true), 1743f, true);

var<private> global3: array<i32, 3>;

var<private> global4: array<Struct_1, 4>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>) -> vec4<i32> {
    let var_0 = u_input.a.x;
    global4 = array<Struct_1, 4>();
    let var_1 = countOneBits(max(~select(vec4<u32>(global2.a.x, 1u, global2.a.x, global2.a.x), vec4<u32>(global2.a.x, 4294967295u, 0u, global2.a.x), global2.d), _wgslsmith_mult_vec4_u32(vec4<u32>(global2.a.x, global2.a.x, 1u, global2.a.x) & vec4<u32>(global2.a.x, global2.a.x, global2.a.x, 4294967295u), vec4<u32>(global2.a.x, global2.a.x, 0u, global2.a.x)))) & min(~select(vec4<u32>(global2.a.x, 42762u, global2.a.x, 13128u) & vec4<u32>(global2.a.x, 0u, global2.a.x, 43569u), vec4<u32>(4294967295u, 43986u, global2.a.x, global2.a.x) | vec4<u32>(global2.a.x, global2.a.x, 1u, global2.a.x), vec4<bool>(true, true, global2.d, global2.b.x)), min(~vec4<u32>(global2.a.x, global2.a.x, 3367u, global2.a.x), ~vec4<u32>(25863u, 14520u, global2.a.x, 0u)) & vec4<u32>(0u, 98312u | global2.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.a.x, 4294967295u, 0u, 1310u), vec4<u32>(1u, 0u, global2.a.x, 0u)), 0u));
    let var_2 = abs(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(_wgslsmith_add_u32(0u, var_1.x)), ~_wgslsmith_div_u32(var_1.x, var_1.x), var_1.x ^ var_1.x, ~(~global2.a.x)), ~(~firstLeadingBit(var_1))));
    let var_3 = var_1;
    return -vec4<i32>(var_0, _wgslsmith_div_i32(-(~global3[_wgslsmith_index_u32(global2.a.x, 3u)]), select(-17107i, abs(global3[_wgslsmith_index_u32(0u, 3u)]), any(global2.b.xw))), _wgslsmith_sub_i32(firstTrailingBit(var_0) << (var_1.x % 32u), 1i ^ min(-55703i, var_0)), global3[_wgslsmith_index_u32(min(1u, 1u), 3u)]);
}

fn func_2(arg_0: u32, arg_1: vec2<bool>) -> vec4<bool> {
    var var_0 = ~(((func_3(-786f, vec2<f32>(220f, global2.c)) << (max(vec4<u32>(0u, arg_0, global2.a.x, global2.a.x), vec4<u32>(6099u, 46185u, arg_0, 110711u)) % vec4<u32>(32u))) | vec4<i32>(2147483647i, ~u_input.b.x, global3[_wgslsmith_index_u32(arg_0, 3u)], func_3(global2.c, vec2<f32>(global2.c, global2.c)).x)) << (~(~vec4<u32>(arg_0, 4534u, 63670u, global2.a.x) << (vec4<u32>(global2.a.x, arg_0, global2.a.x, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(500f, -571f, _wgslsmith_f_op_f32(f32(-1f) * -1028f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2.c, -948f, 1236f), vec3<f32>(global2.c, global2.c, -1319f)))))));
    global3 = array<i32, 3>();
    let var_2 = select(global2.b.zzy, select(!global2.b.wwy, global2.b.zzy, select(vec3<bool>(false, true, true), select(!global2.b.yyx, !vec3<bool>(false, false, arg_1.x), !global2.b.xwy), !global2.b.xyw)), !global2.b.wwz);
    global2 = Struct_1(~(_wgslsmith_clamp_vec3_u32(vec3<u32>(51244u, global2.a.x, 19205u), _wgslsmith_add_vec3_u32(global2.a, vec3<u32>(1u, 4294967295u, 45378u)), global2.a) ^ global2.a), select(vec4<bool>(true, (global3[_wgslsmith_index_u32(41108u, 3u)] > var_0.x) || false, true, any(vec2<bool>(var_2.x, false))), !(!vec4<bool>(true, arg_1.x, true, true)), global2.b), _wgslsmith_f_op_f32(-global2.c), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x))) != 298f));
    return vec4<bool>(false, !(any(vec3<bool>(true, true, false)) && (var_0.x <= reverseBits(var_0.x))), all(!global2.b.xy), global2.d);
}

fn func_1() -> i32 {
    global2 = Struct_1(max(~global2.a, ~abs(global2.a << (vec3<u32>(global2.a.x, global2.a.x, 102292u) % vec3<u32>(32u)))), select(global2.b, func_2(_wgslsmith_sub_u32(global2.a.x, 24253u), select(!global2.b.ww, vec2<bool>(true, true), true)), true), 1000f, true);
    global1 = ~2147483647i;
    let var_0 = Struct_1(abs(abs(_wgslsmith_mult_vec3_u32(abs(global2.a), ~global2.a))), vec4<bool>(all(global2.b.xyz), _wgslsmith_mult_i32(-4777i, _wgslsmith_div_i32(u_input.a.x, 0i)) <= -63465i, true, false | !(false | global2.b.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-894f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -134f)))), global2.c)), true);
    global0 = true;
    var var_1 = Struct_1(global2.a, !(!select(global2.b, !vec4<bool>(false, true, var_0.d, global2.b.x), vec4<bool>(true, false, true, true))), _wgslsmith_f_op_f32(floor(var_0.c)), all(!vec4<bool>(true, global2.b.x, global3[_wgslsmith_index_u32(18537u, 3u)] > global3[_wgslsmith_index_u32(var_0.a.x, 3u)], any(var_0.b.xzw))));
    return _wgslsmith_mult_i32(2147483647i, ~reverseBits(-(global3[_wgslsmith_index_u32(global2.a.x, 3u)] >> (var_0.a.x % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<u32>(_wgslsmith_clamp_u32(global2.a.x, ~22736u, global2.a.x), 0u);
    let var_1 = select(!global2.b.zzz, global2.b.xyy, global2.b.zxw);
    global1 = ~reverseBits(-(~u_input.b.x));
    var_0 = global2.a.zx;
    let var_2 = ~19669u;
    global2 = Struct_1(global2.a, global2.b, _wgslsmith_f_op_f32(global2.c - global2.c), global2.d);
    let var_3 = select(~(u_input.a << (~(~global2.a.yx) % vec2<u32>(32u))), countOneBits(vec2<i32>(func_1(), -(u_input.a.x << (var_2 % 32u)))), select(vec2<bool>(true, true), vec2<bool>(_wgslsmith_f_op_f32(floor(619f)) <= _wgslsmith_f_op_f32(f32(-1f) * -1152f), false), all(func_2(25024u, vec2<bool>(true, true)).xwx) | (_wgslsmith_sub_i32(u_input.a.x, 65705i) > 2147483647i)));
    let var_4 = global2.c;
    global3 = array<i32, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(~(var_0.x << (select(16158u, var_0.x, global2.b.x && var_1.x) % 32u)));
}

