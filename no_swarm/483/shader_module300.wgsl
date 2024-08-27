struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: bool,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<f32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 9>;

var<private> global1: array<u32, 27> = array<u32, 27>(4294967295u, 1u, 67801u, 22823u, 51726u, 1u, 0u, 1u, 8477u, 0u, 1u, 22102u, 33773u, 68382u, 1u, 1u, 2473u, 0u, 4294967295u, 14773u, 65330u, 1u, 1u, 0u, 1u, 4294967295u, 12124u);

var<private> global2: Struct_3 = Struct_3(vec4<u32>(0u, 0u, 0u, 52372u), vec2<f32>(-1000f, 662f), 0i);

var<private> global3: vec2<bool> = vec2<bool>(false, false);

var<private> global4: array<vec4<bool>, 6>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec3<u32>) -> vec3<bool> {
    return select(!select(!select(vec3<bool>(global3.x, false, global3.x), vec3<bool>(global3.x, arg_0.c, arg_0.c), global3.x), select(vec3<bool>(false, global3.x, arg_0.e), select(vec3<bool>(arg_0.c, arg_0.e, arg_0.c), vec3<bool>(false, false, true), arg_0.e), vec3<bool>(true, true, arg_0.c)), arg_0.c), select(select(vec3<bool>(global2.b.x > arg_0.b.x, arg_0.c, true), !select(vec3<bool>(arg_0.e, true, false), vec3<bool>(arg_0.c, false, arg_0.e), vec3<bool>(global3.x, global3.x, false)), !arg_0.e), vec3<bool>(true, true, false), arg_0.e != !select(false, true, true)), vec3<bool>(!arg_0.c, true, global3.x));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: vec4<f32>) -> bool {
    var var_0 = ~(~global2.a);
    var var_1 = abs(0u);
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.x) + 514f))))));
    global4 = array<vec4<bool>, 6>();
    let var_3 = select(func_3(Struct_1(var_0.x, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, arg_2.x), _wgslsmith_f_op_vec2_f32(step(global2.b, arg_2.wx)))), all(vec3<bool>(arg_0.x, false, true)), vec3<u32>(global1[_wgslsmith_index_u32(var_0.x, 27u)] << (global1[_wgslsmith_index_u32(52699u, 27u)] % 32u), global2.a.x | u_input.c, firstLeadingBit(var_0.x)), arg_1.x), ~abs(1u), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, global1[_wgslsmith_index_u32(global2.a.x, 27u)], 47733u), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, var_0.x, 0u), u_input.b)), ~(~vec3<u32>(110714u, 2434u, 72078u)))), func_3(Struct_1(var_0.x, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2.b.x, 943f))), -2506f > _wgslsmith_f_op_f32(global2.b.x - global2.b.x), ~(global2.a.wyx ^ u_input.b), true), ~34436u, _wgslsmith_mult_vec3_u32(var_0.wxx, var_0.xxx)), select(select(vec3<bool>(all(vec4<bool>(arg_1.x, arg_0.x, true, global3.x)), select(false, global3.x, arg_0.x), true), vec3<bool>(true, global2.c >= 0i, !arg_0.x), func_3(Struct_1(global2.a.x, vec2<f32>(1525f, 397f), global3.x, vec3<u32>(4294967295u, 4294967295u, 17758u), false), var_0.x, _wgslsmith_add_vec3_u32(vec3<u32>(1u, 34610u, u_input.a.x), u_input.a.zxz))), !func_3(Struct_1(1u, vec2<f32>(-1218f, -1000f), true, u_input.a.xxx, true), global1[_wgslsmith_index_u32(0u, 27u)], var_0.xzz), global3.x || global3.x));
    return false;
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> bool {
    var var_0 = _wgslsmith_div_f32(arg_2.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.b.x), 436f));
    var var_1 = !select(func_3(arg_2, 11498u, arg_2.d).yy, vec2<bool>(true, all(!vec3<bool>(arg_0, arg_0, true))), !select(all(vec2<bool>(false, false)), false, arg_2.b.x > arg_2.b.x));
    let var_2 = Struct_2(arg_2.b, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a) & ~_wgslsmith_sub_u32(arg_2.d.x, 1u), 6u)], any(select(global4[_wgslsmith_index_u32(arg_2.d.x, 6u)], vec4<bool>(var_1.x, global3.x, false, func_3(Struct_1(arg_2.a, vec2<f32>(848f, global2.b.x), false, arg_2.d, var_1.x), arg_2.a, vec3<u32>(arg_2.a, u_input.b.x, 0u)).x), var_1.x)), max(_wgslsmith_sub_u32(~global1[_wgslsmith_index_u32(arg_2.d.x, 27u)], 1u), global2.a.x) & _wgslsmith_mult_u32(arg_2.d.x, arg_2.a));
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(global2.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(570f, _wgslsmith_div_f32(636f, 595f))))) + 252f)));
    let var_4 = arg_2;
    return true;
}

fn func_1() -> i32 {
    var var_0 = global3.x;
    var var_1 = -1372f;
    global3 = vec2<bool>(false, func_4(!func_2(!vec2<bool>(global3.x, false), select(vec4<bool>(global3.x, false, false, true), vec4<bool>(false, false, true, true), global4[_wgslsmith_index_u32(u_input.b.x, 6u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(303f, 307f, 784f, 1102f) - vec4<f32>(global2.b.x, -942f, global2.b.x, global2.b.x))), reverseBits((9218i << (u_input.a.x % 32u)) | _wgslsmith_clamp_i32(1i, global2.c, global2.c)), Struct_1(abs(19174u), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(global2.b, vec2<f32>(-529f, -366f)), _wgslsmith_f_op_vec2_f32(-global2.b), true)), func_2(!vec2<bool>(global3.x, global3.x), select(vec4<bool>(true, global3.x, global3.x, global3.x), global4[_wgslsmith_index_u32(0u, 6u)], vec4<bool>(global3.x, true, global3.x, global3.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-126f, global2.b.x, global2.b.x, 2340f) - vec4<f32>(global2.b.x, -959f, -365f, 701f))), select(~vec3<u32>(4294967295u, u_input.d, global1[_wgslsmith_index_u32(62516u, 27u)]), _wgslsmith_add_vec3_u32(global2.a.zyy, vec3<u32>(99866u, 14638u, 1u)), select(vec3<bool>(global3.x, false, global3.x), vec3<bool>(true, global3.x, false), global3.x)), true)));
    var var_2 = _wgslsmith_clamp_vec2_u32(vec2<u32>(81059u, ~(32276u & global1[_wgslsmith_index_u32(0u, 27u)])), _wgslsmith_div_vec2_u32(u_input.a.yz, select(~global2.a.yy, ~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2.a.x, 27u)], 27u)], global1[_wgslsmith_index_u32(global2.a.x, 27u)]), true) ^ select(u_input.b.xy, ~u_input.b.xx, func_3(Struct_1(1u, global2.b, global3.x, vec3<u32>(global2.a.x, 4294967295u, u_input.b.x), false), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5900u, 27u)], 27u)], 27u)], vec3<u32>(0u, global2.a.x, global1[_wgslsmith_index_u32(global2.a.x, 27u)])).zz)), abs(min(vec2<u32>(0u, 0u), ~vec2<u32>(u_input.d, 1u) >> ((vec2<u32>(global1[_wgslsmith_index_u32(0u, 27u)], 4294967295u) << (vec2<u32>(1u, u_input.b.x) % vec2<u32>(32u))) % vec2<u32>(32u)))));
    var var_3 = Struct_1(_wgslsmith_sub_u32(13833u, abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(22554u, u_input.d, global1[_wgslsmith_index_u32(1u, 27u)]), global2.a.zzw))), global2.b, ~6968u > (reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(43914u, 49148u, 1u), u_input.a.yxx)) & _wgslsmith_div_u32(~u_input.d, reverseBits(37035u))), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, global1[_wgslsmith_index_u32(36992u, 27u)], _wgslsmith_add_u32(global2.a.x, global1[_wgslsmith_index_u32(var_2.x, 27u)] & 1631u)), ~_wgslsmith_div_vec3_u32(global2.a.xwy, u_input.b)), true);
    return _wgslsmith_dot_vec2_i32(reverseBits(~firstTrailingBit(vec2<i32>(global2.c, -9025i)) | ~firstTrailingBit(vec2<i32>(u_input.e, u_input.e))), vec2<i32>(_wgslsmith_mult_i32(-(-31393i << (var_3.a % 32u)), 33960i), ~(-3900i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 9>();
    global2 = Struct_3(reverseBits(u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(global2.b))))), _wgslsmith_add_i32(func_1(), 60428i));
    var var_0 = -(~4925i) | _wgslsmith_mult_i32(u_input.e << (~_wgslsmith_dot_vec3_u32(global2.a.xzw, u_input.b) % 32u), global2.c);
    global1 = array<u32, 27>();
    let var_1 = firstTrailingBit(max(firstTrailingBit(~vec3<i32>(global2.c, global2.c, -47839i)), max(~vec3<i32>(24599i, -1i, global2.c), countOneBits(firstLeadingBit(vec3<i32>(-33587i, u_input.e, 38600i))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.zz, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global2.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-489f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 491f, global2.b.x, 132f) + vec4<f32>(global2.b.x, global2.b.x, -810f, global2.b.x)), vec4<f32>(global2.b.x, global2.b.x, global2.b.x, 1434f), vec4<bool>(global3.x, global3.x, global3.x, true))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(global2.b.x)), global2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -473f), -302f) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global2.b.x, global2.b.x, 2334f))))))), u_input.e | select(1i, _wgslsmith_mult_i32(global2.c, ~var_1.x), _wgslsmith_mult_i32(-1i, var_1.x) >= 1i), var_1.yy << ((u_input.b.zy & ((u_input.b.xx << (u_input.b.xz % vec2<u32>(32u))) << (vec2<u32>(19836u, global2.a.x) % vec2<u32>(32u)))) % vec2<u32>(32u)));
}

