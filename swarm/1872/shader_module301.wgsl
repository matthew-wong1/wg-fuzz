struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
    c: i32,
    d: u32,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 0u);

var<private> global1: array<f32, 6> = array<f32, 6>(442f, -1340f, 1860f, 908f, 1000f, -944f);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = Struct_2(Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(arg_0.b, arg_1.a.x), vec2<bool>(arg_0.b, true)), vec2<bool>(all(arg_0.a), 602f > global1[_wgslsmith_index_u32(arg_0.c.x, 6u)]), select(arg_1.a, vec2<bool>(false, arg_1.a.x), vec2<bool>(arg_1.b, arg_0.b))), arg_1.a.x, arg_0.c));
    let var_1 = true;
    var var_2 = Struct_2(var_0.a);
    var_2 = Struct_2(arg_1);
    var_2 = Struct_2(var_0.a);
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec2<i32>) -> Struct_3 {
    global1 = array<f32, 6>();
    let var_0 = Struct_1(!vec2<bool>(true, select(true, arg_0.a.x, global1[_wgslsmith_index_u32(1u, 6u)] < 133f)), arg_0.a.x || func_3(Struct_1(vec2<bool>(arg_0.a.x, false), all(vec4<bool>(arg_0.b, arg_0.b, false, arg_0.a.x)), u_input.c), Struct_1(!vec2<bool>(arg_0.b, false), true, arg_1)), arg_0.c);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1165f)), 683f)) - _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(19801u, 14045u, 1u, arg_0.c.x), vec4<u32>(arg_0.c.x, 51168u, var_0.c.x, 1u)) & _wgslsmith_dot_vec4_u32(vec4<u32>(13542u, arg_1.x, u_input.c.x, u_input.c.x), vec4<u32>(var_0.c.x, u_input.b.x, 26128u, 0u)), 6u)]))));
    let var_2 = vec3<bool>(arg_0.a.x, true, true);
    global0 = _wgslsmith_sub_vec2_u32(vec2<u32>(~_wgslsmith_mult_u32(global0.x, u_input.a), 30240u) | vec2<u32>(~70980u, global0.x | (u_input.a >> (arg_0.c.x % 32u))), countOneBits(var_0.c.yy));
    return Struct_3(true);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>) -> vec2<u32> {
    let var_0 = global0.x;
    var var_1 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(abs(firstTrailingBit(global0.x)), _wgslsmith_sub_u32(global0.x, ~1u), abs(~u_input.a), _wgslsmith_dot_vec3_u32(select(u_input.c, u_input.c, vec3<bool>(arg_0.a, false, arg_0.a)), vec3<u32>(24870u, global0.x, global0.x))), ~vec4<u32>(0u, u_input.a & u_input.a, 57387u, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(1u, 1u))));
    var var_2 = Struct_1(select(vec2<bool>(true, true), vec2<bool>(all(select(vec3<bool>(true, arg_0.a, arg_0.a), vec3<bool>(false, true, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, true))), arg_0.a), select(vec2<bool>(false, true), vec2<bool>(true, true), arg_0.a)), select(true, true, !(~u_input.a <= ~80564u)), var_1.zww);
    var_2 = Struct_1(var_2.a, arg_0.a, _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.c, firstTrailingBit(vec3<u32>(4294967295u, 4294967295u, var_1.x))), var_1.xwx));
    var_1 = reverseBits(select(~countOneBits(vec4<u32>(6182u, 20414u, 0u, 0u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(27548u, var_1.x, var_1.x, global0.x), vec4<u32>(global0.x, global0.x, 2913u, global0.x)), vec4<bool>(all(vec3<bool>(true, arg_0.a, true)), var_2.b, func_2(Struct_1(vec2<bool>(true, false), arg_0.a, var_2.c), var_2.c, vec2<i32>(1i, 46415i)).a, var_2.b)) & (vec4<u32>(~global0.x, ~0u, _wgslsmith_mod_u32(4294967295u, var_2.c.x), ~95208u) & _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, global0.x, 59738u, u_input.a), vec4<u32>(var_1.x, var_2.c.x, 0u, 1u)), ~vec4<u32>(12119u, global0.x, global0.x, 9505u))));
    return vec2<u32>(~var_1.x, ~(16173u >> (_wgslsmith_mult_u32(u_input.b.x, 14409u) % 32u))) >> (countOneBits(~reverseBits(var_1.zw)) % vec2<u32>(32u));
}

fn func_1(arg_0: f32, arg_1: vec2<i32>) -> Struct_1 {
    global0 = ~(vec2<u32>(~u_input.c.x, 110015u) << ((max(u_input.b, u_input.b) & func_4(func_2(Struct_1(vec2<bool>(false, false), true, vec3<u32>(4294967295u, global0.x, 1u)), u_input.c, vec2<i32>(61458i, -1i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-370f, global1[_wgslsmith_index_u32(u_input.b.x, 6u)]) - vec2<f32>(arg_0, 2213f)))) % vec2<u32>(32u)));
    global1 = array<f32, 6>();
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(3010u, 6u)], 582f, global1[_wgslsmith_index_u32(global0.x, 6u)])) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(761f, -262f, global1[_wgslsmith_index_u32(64042u, 6u)]))))))))));
    let var_1 = Struct_1(vec2<bool>(true, true), !(true | !any(vec2<bool>(true, false))), vec3<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, 1u)), u_input.b), abs(0u >> (max(1u, 0u) % 32u))));
    global0 = vec2<u32>(_wgslsmith_mod_u32(abs(~7060u), var_1.c.x ^ global0.x) | ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_1.c.x), var_1.c.yx), abs(1u) >> (~global0.x % 32u));
    return var_1;
}

fn func_5(arg_0: Struct_1) -> f32 {
    var var_0 = u_input.c;
    let var_1 = _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.a, var_0.x, global0.x, 81303u) | ~vec4<u32>(arg_0.c.x, arg_0.c.x, 11567u, 57159u)) | vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 4294967295u, 1u), vec4<u32>(var_0.x, arg_0.c.x, 9060u, 1u)), arg_0.c.x, 1u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, arg_0.c.x, 72893u, 42733u), vec4<u32>(u_input.a, global0.x, u_input.c.x, u_input.c.x)), abs(1u), global0.x >> (~global0.x % 32u)), ~(~max(~vec4<u32>(u_input.c.x, 1u, 4294967295u, global0.x), ~vec4<u32>(var_0.x, u_input.b.x, 71963u, var_0.x))), vec4<u32>(~(~1u), ~(~4294967295u & global0.x), u_input.a, _wgslsmith_div_u32(var_0.x, select(var_0.x, global0.x, true))));
    var_0 = arg_0.c;
    let var_2 = Struct_4(vec2<bool>(false, arg_0.a.x), u_input.e.x, _wgslsmith_mod_i32(2147483647i, u_input.d.x), func_1(global1[_wgslsmith_index_u32(u_input.c.x, 6u)], select(u_input.d.zy, -vec2<i32>(u_input.d.x, 2147483647i), _wgslsmith_add_i32(-25348i, u_input.e.x) >= u_input.e.x)).c.x, func_2(arg_0, firstLeadingBit(vec3<u32>(_wgslsmith_mult_u32(4294967295u, global0.x), 1u, 4294967295u)), countOneBits(u_input.d.yz)));
    global0 = countOneBits(select(vec2<u32>(firstLeadingBit(~var_2.d), 1u), var_0.zy >> (arg_0.c.yy % vec2<u32>(32u)), var_2.e.a));
    return _wgslsmith_f_op_f32(abs(-1134f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 6>();
    var var_0 = Struct_2(Struct_1(vec2<bool>(false, true), any(vec2<bool>(select(false, false, false), true)), ~u_input.c));
    global0 = ~u_input.b << (vec2<u32>(44289u, ~_wgslsmith_mult_u32(firstTrailingBit(72801u), ~global0.x)) % vec2<u32>(32u));
    global1 = array<f32, 6>();
    var var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.a.c.x, 6u)]), global1[_wgslsmith_index_u32(23011u, 6u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_1(-136f, vec2<i32>(52982i, -2147483647i)))) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~7528u, 6u)]))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(~36451u, 6u)])) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(986f * global1[_wgslsmith_index_u32(4294967295u, 6u)])))), _wgslsmith_f_op_f32(f32(-1f) * -642f), -1169f), vec3<bool>(any(select(select(vec3<bool>(var_0.a.b, false, var_0.a.b), vec3<bool>(false, var_0.a.b, false), vec3<bool>(var_0.a.b, true, var_0.a.b)), select(vec3<bool>(true, true, true), vec3<bool>(var_0.a.b, true, true), vec3<bool>(var_0.a.b, false, var_0.a.b)), !vec3<bool>(false, var_0.a.b, var_0.a.a.x))), false, var_0.a.b)));
    let var_2 = func_1(global1[_wgslsmith_index_u32(0u, 6u)], _wgslsmith_div_vec2_i32(u_input.d.xx, u_input.e)).a;
    var_0 = Struct_2(func_1(global1[_wgslsmith_index_u32(~11680u, 6u)], -u_input.d.zz));
    var_0 = Struct_2(var_0.a);
    let var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2000f)) + -853f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, _wgslsmith_f_op_f32(var_1.x * global1[_wgslsmith_index_u32(4294967295u, 6u)]), _wgslsmith_f_op_f32(f32(-1f) * -529f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1312f, -636f, global1[_wgslsmith_index_u32(u_input.a, 6u)])) + vec3<f32>(var_1.x, var_1.x, var_1.x)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 6u)], 1019f, var_1.x), vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 6u)], 909f, 339f), vec3<bool>(true, var_0.a.b, false))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 176f, 319f)), !vec3<bool>(false, var_2.x, false)))), !vec3<bool>(var_2.x, any(vec3<bool>(false, false, false)), var_0.a.b))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~(vec4<i32>(2547i, 2147483647i, u_input.e.x, -70987i) >> (vec4<u32>(25144u, 4294967295u, u_input.c.x, u_input.c.x) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 6u)]), 1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-303f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-246f, -197f)) + _wgslsmith_div_f32(-510f, -268f)) - 1f))));
}

