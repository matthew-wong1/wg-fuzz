struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: vec4<bool>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13>;

var<private> global1: vec3<i32> = vec3<i32>(-21424i, -22430i, -1645i);

var<private> global2: vec2<u32> = vec2<u32>(5538u, 0u);

var<private> global3: Struct_5;

var<private> global4: array<f32, 28> = array<f32, 28>(1061f, 1099f, 715f, -519f, -1552f, 1403f, -1101f, 210f, -251f, 1043f, -1521f, 905f, -508f, 572f, -816f, -723f, 713f, -840f, -455f, 1102f, 528f, -1000f, -1002f, -1630f, -759f, 164f, 1734f, -690f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_2) -> vec3<i32> {
    global1 = abs(-vec3<i32>(1i, arg_0.a.b.x, countOneBits(reverseBits(arg_0.a.b.x))));
    var var_0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3.a, _wgslsmith_div_f32(-305f, -995f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(1u, 28u)] * global3.a) - -342f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3116u, 13u)], 28u)] + global3.a) + global3.a), 707f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-566f, 904f, -1367f, 745f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(412f, 409f, global3.a, 1192f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, global3.a, global4[_wgslsmith_index_u32(u_input.a.x, 28u)], global4[_wgslsmith_index_u32(u_input.a.x, 28u)]), vec4<f32>(global3.a, -900f, -1380f, 814f), vec4<bool>(false, global3.c.x, global3.c.x, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], 28u)], global3.a, global3.a, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.x, 13u)], 28u)])), global3.c)))))));
    let var_1 = min(select(arg_0.a.d, vec4<u32>(global2.x, global2.x, u_input.c, ~global2.x), select(false, all(global3.c), all(vec3<bool>(true, true, global3.c.x)))), vec4<u32>(global0[_wgslsmith_index_u32(~4294967295u, 13u)], ~(~global2.x), ~(~15481u), global2.x) & _wgslsmith_div_vec4_u32(~(arg_0.a.d | vec4<u32>(87879u, 1u, global0[_wgslsmith_index_u32(28624u, 13u)], u_input.a.x)), reverseBits(vec4<u32>(30248u, u_input.c, 2366u, global2.x) << (arg_0.a.d % vec4<u32>(32u)))));
    global1 = arg_0.a.c.zzz;
    let var_2 = Struct_1(var_1.x, select(vec2<i32>(0i, abs(i32(-1i) * -1109i)), _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(global3.d.zy, vec2<i32>(arg_0.a.c.x, -2147483647i)), arg_0.a.b) << (var_1.ww % vec2<u32>(32u)), vec2<bool>(global0[_wgslsmith_index_u32(~1u, 13u)] <= ~arg_0.a.a, global3.c.x)), vec4<i32>(arg_0.a.c.x, 1i, reverseBits(global3.b), -_wgslsmith_add_i32(_wgslsmith_add_i32(global3.b, global1.x), global1.x)), arg_0.a.d);
    return arg_0.a.c.wxx;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> vec3<u32> {
    var var_0 = vec4<bool>(true, all(global3.c.wx), global3.c.x, global3.c.x);
    var var_1 = Struct_4(Struct_2(arg_0));
    let var_2 = ~(~_wgslsmith_sub_u32(~21796u, 10385u));
    global0 = array<u32, 13>();
    let var_3 = Struct_5(-916f, 2147483647i, global3.c, vec3<i32>(func_3(var_1.a).x, arg_1, arg_1));
    return countOneBits(arg_0.d.xzw);
}

fn func_2() -> Struct_5 {
    global1 = (global3.d & reverseBits(global3.d | global3.d)) << (func_4(Struct_1(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstTrailingBit(u_input.c), 13u)], 13u)], _wgslsmith_clamp_vec2_i32(global3.d.zy, vec2<i32>(u_input.b, 1i) << (vec2<u32>(0u, 41438u) % vec2<u32>(32u)), global1.yx << (u_input.a.xx % vec2<u32>(32u))), select(-vec4<i32>(global1.x, 0i, 2147483647i, u_input.b), select(vec4<i32>(1750i, global3.b, global1.x, -2147483647i), vec4<i32>(7505i, 2147483647i, 66875i, global3.b), true), global1.x >= 0i), min(vec4<u32>(20478u, global2.x, u_input.a.x, 3468u), ~vec4<u32>(31558u, 3774u, u_input.c, 1u))), 11519i, -_wgslsmith_dot_vec3_i32(func_3(Struct_2(Struct_1(59862u, vec2<i32>(1i, -4993i), vec4<i32>(global3.d.x, -1i, global1.x, 36419i), vec4<u32>(u_input.a.x, 42333u, 4294967295u, 32975u)))), global3.d)) % vec3<u32>(32u));
    global1 = vec3<i32>(_wgslsmith_mod_i32(u_input.b, global3.b), -9222i, func_3(Struct_2(Struct_1(1u, select(global1.yy, vec2<i32>(global1.x, global1.x), global3.c.x), -vec4<i32>(global1.x, 1i, global3.b, global1.x), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 4294967295u, global2.x, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, 59877u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(65287u, 13u)], 13u)], 13u)]))))).x);
    global3 = Struct_5(global3.a, i32(-1i) * -37460i, select(select(select(vec4<bool>(false, true, global3.c.x, false), vec4<bool>(global3.c.x, global3.c.x, false, true), !global3.c.x), vec4<bool>(global3.c.x, !global3.c.x, !global3.c.x, true), select(vec4<bool>(global3.c.x, global3.c.x, true, true), global3.c, select(global3.c, global3.c, vec4<bool>(false, global3.c.x, global3.c.x, global3.c.x)))), !(!(!vec4<bool>(global3.c.x, false, true, global3.c.x))), vec4<bool>(all(vec4<bool>(false, global3.c.x, true, global3.c.x)), all(!global3.c), false, any(!vec2<bool>(false, global3.c.x)))), global3.d);
    var var_0 = Struct_4(Struct_2(Struct_1(1u, _wgslsmith_mod_vec2_i32(global1.zx & global3.d.xz, func_3(Struct_2(Struct_1(u_input.a.x, global1.xz, vec4<i32>(2147483647i, u_input.b, global1.x, global1.x), vec4<u32>(11316u, 1u, global2.x, global2.x)))).yz), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, u_input.b, global3.b, global3.d.x), _wgslsmith_sub_vec4_i32(vec4<i32>(global1.x, 2147483647i, -23251i, 66501i), vec4<i32>(global3.b, global1.x, u_input.b, u_input.b))), ~(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(64738u, 13u)], 13u)], global0[_wgslsmith_index_u32(u_input.c, 13u)], global0[_wgslsmith_index_u32(17498u, 13u)], global2.x)))));
    var var_1 = Struct_1(~(~u_input.a.x), abs(vec2<i32>(var_0.a.a.c.x & global1.x, _wgslsmith_sub_i32(~2147483647i, u_input.b))), firstTrailingBit(abs(max(-var_0.a.a.c, vec4<i32>(global1.x, -3213i, var_0.a.a.b.x, u_input.b)))), var_0.a.a.d);
    return Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3.a, _wgslsmith_f_op_f32(select(-351f, 915f, true)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(22969u, 28u)])))), -((0i | u_input.b) & (u_input.b | -2147483647i)) >> (~(~global0[_wgslsmith_index_u32(global2.x, 13u)] ^ firstLeadingBit(58355u)) % 32u), select(vec4<bool>(all(!vec3<bool>(global3.c.x, global3.c.x, false)), true, select(!global3.c.x, global3.c.x, true), global3.c.x), global3.c, vec4<bool>(!global3.c.x, !(!global3.c.x), !global3.c.x, global3.c.x)), ~(~var_0.a.a.c.wxy & firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(23834i, 12140i, 39915i), var_0.a.a.c.zww))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: vec4<bool>) -> u32 {
    global3 = func_2();
    global0 = array<u32, 13>();
    let var_0 = Struct_2(Struct_1(0u, global3.d.zz, select(~countOneBits(vec4<i32>(u_input.b, u_input.b, 1i, -15442i)), firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(global1.x, 35291i, global3.b, 663i), vec4<i32>(26051i, u_input.b, global3.d.x, u_input.b), vec4<i32>(global1.x, global3.d.x, u_input.b, global3.b))), arg_2), vec4<u32>(~153u & (global2.x & arg_0.x), global0[_wgslsmith_index_u32(min(1u, ~global2.x), 13u)], ~u_input.a.x, global0[_wgslsmith_index_u32(~arg_0.x, 13u)] & _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1u, 13u)], 127853u, u_input.a.x, 1u), vec4<u32>(u_input.a.x, arg_0.x, 76623u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22007u, 13u)], 13u)])))));
    var var_1 = !(!((-35765i >> (global2.x % 32u)) >= -37560i));
    let var_2 = vec4<f32>(-563f, _wgslsmith_f_op_f32(-859f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(4294967295u, 28u)]), 457f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -514f)))), _wgslsmith_f_op_f32(-global3.a), -442f);
    return ~37724u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 13>();
    global4 = array<f32, 28>();
    global4 = array<f32, 28>();
    var var_0 = firstTrailingBit(global3.d);
    global1 = -firstLeadingBit(abs(countOneBits(global3.d)));
    var var_1 = global0[_wgslsmith_index_u32(~global2.x, 13u)];
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a));
    let var_3 = Struct_1(~func_1(u_input.a, global3.c.wz, global3.c) | ~(~(global2.x << (global0[_wgslsmith_index_u32(0u, 13u)] % 32u))), firstTrailingBit(global1.xz), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(-16244i, global3.d.x, global1.x, global1.x), vec4<i32>(u_input.b, -31883i, var_0.x, 0i) & vec4<i32>(5986i, 47771i, global3.b, global1.x)) | (max(vec4<i32>(global3.b, -38515i, 1i, var_0.x), vec4<i32>(global1.x, var_0.x, global3.d.x, -4008i)) ^ countOneBits(vec4<i32>(u_input.b, -2147483647i, -1i, 1i))), vec4<i32>(global3.d.x, countOneBits(~u_input.b), -18473i, i32(-1i) * -1i)), vec4<u32>(0u, _wgslsmith_mod_u32(abs(abs(global0[_wgslsmith_index_u32(1u, 13u)])), global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(1u, 13u)], 83629u)), 13u)]), ~(~(27494u << (global2.x % 32u))), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(u_input.c, 13u)], 37863u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(func_2().a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), 802f))), var_3.c);
}

