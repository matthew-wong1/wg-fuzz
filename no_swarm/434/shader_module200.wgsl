struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<bool>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec2<u32>,
}

struct Struct_5 {
    a: u32,
    b: vec4<u32>,
    c: bool,
    d: vec3<i32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
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

var<private> global0: array<bool, 25> = array<bool, 25>(false, false, false, true, true, false, true, false, false, false, true, true, false, false, true, true, true, false, false, true, true, true, true, true, true);

var<private> global1: i32 = -4473i;

var<private> global2: Struct_1 = Struct_1(vec4<i32>(5190i, -2272i, 15428i, -4598i));

var<private> global3: Struct_5;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1() -> f32 {
    global3 = Struct_5(3547u, ~_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global3.b.x, 42532u, 0u, global3.b.x), vec4<u32>(global3.b.x, 1u, u_input.c.x, 46015u)) | countOneBits(vec4<u32>(1u, global3.a, u_input.a, global3.b.x)), (vec4<u32>(28416u, 3015u, 1u, global3.a) >> (vec4<u32>(53657u, global3.b.x, 0u, global3.a) % vec4<u32>(32u))) << (min(vec4<u32>(u_input.c.x, global3.a, u_input.a, 4294967295u), vec4<u32>(global3.b.x, global3.a, global3.b.x, 42714u)) % vec4<u32>(32u))), true || (!(!global3.c) | global0[_wgslsmith_index_u32(abs(global3.b.x), 25u)]), min(_wgslsmith_sub_vec3_i32(global3.d, global3.d), global2.a.xxy ^ select(_wgslsmith_div_vec3_i32(global3.e.a, vec3<i32>(global3.d.x, -1i, -60066i)), select(vec3<i32>(2147483647i, 31098i, global3.e.b.a.x), global2.a.wwy, vec3<bool>(false, global3.c, false)), !vec3<bool>(false, true, global3.c))), global3.e);
    global0 = array<bool, 25>();
    var var_0 = min(global3.b.x, ~u_input.a);
    var var_1 = global3.e.b;
    var var_2 = global3.e;
    return 679f;
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<u32>) -> u32 {
    let var_0 = Struct_3(countOneBits(_wgslsmith_clamp_vec3_i32(global3.d, firstTrailingBit(_wgslsmith_div_vec3_i32(global2.a.zzw, vec3<i32>(0i, 20443i, arg_0.x))), global3.d)), Struct_1(global2.a), global3.e.c, global3.e.e.x >= (u_input.b ^ -21722i), min(vec3<i32>(-39215i, ~0i, firstTrailingBit(~0i)), ~(-global3.e.e)));
    let var_1 = -2147483647i;
    global1 = i32(-1i) * -56279i;
    global2 = global3.e.b;
    var var_2 = ~vec2<i32>(~2147483647i, 1i);
    return max(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(global3.b.www >> (vec3<u32>(7932u, u_input.c.x, u_input.a) % vec3<u32>(32u)), u_input.c.zxy), _wgslsmith_div_u32(60311u, 8078u)), ~firstTrailingBit(0u));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_1) -> vec2<bool> {
    global3 = Struct_5(_wgslsmith_mod_u32(~max(_wgslsmith_sub_u32(0u, u_input.a), ~1375u), firstLeadingBit(u_input.a)), ~vec4<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(global3.b.x, arg_0.b.x, arg_0.b.x), arg_0.a), (u_input.a | global3.a) << (firstLeadingBit(0u) % 32u), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(38003u, 53544u), vec2<u32>(arg_0.a, global3.a)), _wgslsmith_add_u32(1u, global3.a)), reverseBits(global3.b.x)), true, ~(-arg_0.d), Struct_3(global2.a.xyz, arg_1, !(!vec2<bool>(arg_0.c, true)), global3.c, ~_wgslsmith_sub_vec3_i32(arg_1.a.zxw, select(vec3<i32>(-42677i, 1714i, arg_1.a.x), vec3<i32>(global2.a.x, -14263i, arg_1.a.x), true))));
    var var_0 = 9606i;
    var var_1 = -reverseBits(arg_0.e.b.a.yzy);
    let var_2 = vec3<i32>(~global2.a.x, countOneBits(select(arg_1.a.x, global3.d.x >> (~global3.b.x % 32u), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 4294967295u) << (u_input.c.www % vec3<u32>(32u)), vec3<u32>(1u, arg_0.b.x, 51692u)), 25u)])), _wgslsmith_dot_vec2_i32(abs(reverseBits(select(vec2<i32>(13185i, arg_1.a.x), arg_1.a.zz, vec2<bool>(false, global3.c)))), ~(vec2<i32>(-8991i, 21236i) & -var_1.yx)));
    global0 = array<bool, 25>();
    return !(!select(select(select(arg_0.e.c, global3.e.c, global3.e.c), arg_0.e.c, u_input.b != -18341i), select(!global3.e.c, !global3.e.c, any(vec3<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 25u)]))), true));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_3 {
    global3 = Struct_5(~1u, vec4<u32>(firstLeadingBit(~4294967295u), firstTrailingBit(global3.a >> (~5299u % 32u)), _wgslsmith_add_u32(74515u, global3.b.x), ~u_input.a), global3.c, min(vec3<i32>(~arg_2.a.a.x, ~arg_2.a.a.x, max(abs(global3.d.x), ~2147483647i)), ~_wgslsmith_clamp_vec3_i32(global3.e.e, vec3<i32>(global2.a.x, global2.a.x, global3.d.x), global2.a.ywx) | vec3<i32>(global3.e.b.a.x, u_input.b, global2.a.x ^ 16097i)), Struct_3(abs(vec3<i32>(1i, ~(-6990i), arg_2.a.a.x)), arg_2.a, func_4(Struct_5(func_3(global2.a.zyw, vec4<u32>(1u, global3.b.x, u_input.a, u_input.a)), vec4<u32>(12680u, u_input.c.x, 4294967295u, u_input.c.x), !global3.c, global2.a.wxw, Struct_3(vec3<i32>(-1i, -24805i, arg_2.a.a.x), global3.e.b, global3.e.c, global0[_wgslsmith_index_u32(global3.a, 25u)], vec3<i32>(-1i, -1i, -37566i))), arg_2.a), global3.c, -vec3<i32>(2147483647i, _wgslsmith_sub_i32(46616i, global2.a.x), -global3.e.a.x)));
    let var_0 = Struct_4(Struct_1(_wgslsmith_clamp_vec4_i32(abs(_wgslsmith_sub_vec4_i32(global2.a, vec4<i32>(1i, 69472i, -2147483647i, -1i))), global3.e.b.a, ~abs(global2.a))), -(i32(-1i) * -1i), global3.b.zw);
    let var_1 = Struct_5(abs(~4294967295u), max(~select(~u_input.c, ~vec4<u32>(4294967295u, global3.a, global3.b.x, 4294967295u), select(vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(global3.b.x, 25u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 25u)], global0[_wgslsmith_index_u32(var_0.c.x, 25u)], true, false), vec4<bool>(false, true, false, true))), global3.b), any(!select(select(vec4<bool>(global0[_wgslsmith_index_u32(var_0.c.x, 25u)], false, true, false), vec4<bool>(false, global0[_wgslsmith_index_u32(global3.a, 25u)], true, false), true), select(vec4<bool>(false, true, global3.c, global3.e.d), vec4<bool>(true, true, global3.e.d, global0[_wgslsmith_index_u32(4294967295u, 25u)]), global0[_wgslsmith_index_u32(11665u, 25u)]), select(vec4<bool>(false, global3.c, global0[_wgslsmith_index_u32(global3.a, 25u)], true), vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(var_0.c.x, 25u)]), vec4<bool>(true, true, false, false)))), _wgslsmith_sub_vec3_i32(global3.e.e, vec3<i32>(var_0.b, -_wgslsmith_div_i32(var_0.b, u_input.b), -1i)), Struct_3(global2.a.yww, global3.e.b, func_4(Struct_5(0u, _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.c.x, var_0.c.x, u_input.c.x, 46027u), global3.b, global3.b), any(global3.e.c), firstTrailingBit(vec3<i32>(global3.d.x, global2.a.x, -2147483647i)), global3.e), Struct_1(vec4<i32>(global3.d.x, 20635i, var_0.b, -45292i))), _wgslsmith_f_op_f32(round(-996f)) != _wgslsmith_f_op_f32(arg_2.b.x * arg_0.x), -global3.e.a));
    global3 = var_1;
    var var_2 = global3.e;
    return Struct_3(vec3<i32>(max(var_1.d.x, -global2.a.x), -7137i, min(u_input.b, i32(-1i) * -11989i)), global3.e.b, !select(!(!vec2<bool>(global3.c, false)), select(var_1.e.c, vec2<bool>(global3.c, false), false), var_1.e.d | true), true, vec3<i32>(-2147483647i, u_input.b, ~(-2147483647i)));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<f32>) -> StorageBuffer {
    var var_0 = select(~u_input.c.xz, ~(global3.b.zx | ~_wgslsmith_clamp_vec2_u32(u_input.c.zz, vec2<u32>(4294967295u, global3.b.x), vec2<u32>(global3.b.x, global3.a))), !(!(!arg_0.d && (global2.a.x != -61639i))));
    let var_1 = any(vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~91681u, ~0u & select(0u, global3.b.x, false)), 25u)], arg_0.c.x, any(arg_0.c) == true));
    global1 = -38361i;
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, -295f))))));
    let var_3 = Struct_2(Struct_1(arg_0.b.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1082f, arg_1.x, arg_1.x)))), arg_1)));
    return StorageBuffer(~_wgslsmith_clamp_u32(u_input.c.x, _wgslsmith_add_u32(92634u, 1u & global3.b.x), ~_wgslsmith_div_u32(1u, var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(810f, 930f, -448f, -2103f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(466f, -791f, -222f, 1000f), vec4<f32>(-1550f, 2141f, -659f, -1000f), global0[_wgslsmith_index_u32(58563u, 25u)])))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(max(756f, 490f)), _wgslsmith_f_op_f32(func_1()))), Struct_2(global3.e.b, vec3<f32>(762f, _wgslsmith_f_op_f32(ceil(111f)), 1f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(829f, -1306f)), _wgslsmith_f_op_f32(floor(-1041f)), _wgslsmith_f_op_f32(-418f * _wgslsmith_f_op_f32(select(-641f, -377f, false))))));
}

