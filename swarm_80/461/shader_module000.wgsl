struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: bool,
    d: f32,
    e: f32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11> = array<u32, 11>(4294967295u, 4294967295u, 4294967295u, 1u, 4267u, 0u, 20168u, 4294967295u, 24619u, 31499u, 1u);

var<private> global1: Struct_2 = Struct_2(vec3<f32>(826f, -1386f, -1000f));

var<private> global2: array<bool, 22>;

var<private> global3: array<vec3<u32>, 24> = array<vec3<u32>, 24>(vec3<u32>(18372u, 4294967295u, 4294967295u), vec3<u32>(0u, 17973u, 33258u), vec3<u32>(21679u, 1u, 1u), vec3<u32>(36698u, 25069u, 1u), vec3<u32>(13748u, 1u, 63254u), vec3<u32>(0u, 0u, 0u), vec3<u32>(36290u, 62710u, 11216u), vec3<u32>(4294967295u, 45019u, 0u), vec3<u32>(0u, 10087u, 1u), vec3<u32>(44927u, 0u, 4294967295u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(2976u, 43162u, 1u), vec3<u32>(4294967295u, 0u, 34451u), vec3<u32>(12090u, 13086u, 1u), vec3<u32>(2985u, 0u, 4294967295u), vec3<u32>(1u, 122330u, 1u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(16146u, 0u, 28628u), vec3<u32>(0u, 48708u, 4294967295u), vec3<u32>(1u, 46183u, 4294967295u), vec3<u32>(4294967295u, 8513u, 5393u), vec3<u32>(45967u, 0u, 1u), vec3<u32>(0u, 68751u, 14241u), vec3<u32>(1u, 8832u, 41406u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = arg_1.x;
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.d)));
    global3 = array<vec3<u32>, 24>();
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(sign(271f)), _wgslsmith_f_op_f32(arg_2.d.x - global1.a.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.d)))));
    var var_1 = -_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, u_input.a, u_input.c), vec3<i32>(u_input.c, -16103i, 48207i)), vec3<i32>(u_input.a, -1i, -58229i) ^ vec3<i32>(u_input.c, u_input.c, u_input.c)), reverseBits(max(u_input.a, 1i)), u_input.c, ~(-u_input.a)), min(vec4<i32>(-15416i, u_input.c, 2147483647i, u_input.c) & vec4<i32>(u_input.c, 15756i, u_input.a, u_input.c), abs(vec4<i32>(u_input.c, 2147483647i, 2147483647i, -2147483647i))) & countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, -10408i), vec4<i32>(22878i, u_input.c, u_input.c, -1i))), vec4<i32>(-1i) * -vec4<i32>(u_input.a, u_input.a, u_input.c, -54459i));
    return arg_2.b;
}

fn func_2(arg_0: vec3<u32>) -> Struct_4 {
    global0 = array<u32, 11>();
    let var_0 = Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1240f), func_3(~1490u, vec2<bool>(true, true), Struct_1(-720f, global3[_wgslsmith_index_u32(1u, 24u)], true, global1.a)), !(global2[_wgslsmith_index_u32(21657u, 22u)] | false), global1.a)), Struct_3(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-241f, 871f))), firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 32649u, arg_0.x), vec3<u32>(arg_0.x, 13615u, 62316u))), any(!vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 22u)], global2[_wgslsmith_index_u32(u_input.b, 22u)], global2[_wgslsmith_index_u32(1u, 22u)], global2[_wgslsmith_index_u32(arg_0.x, 22u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(706f, 143f, 307f), vec3<f32>(global1.a.x, -727f, global1.a.x), true)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, -1306f, global1.a.x))))), false, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1271f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-410f)) + _wgslsmith_f_op_f32(floor(1344f))))))), 1160f);
    var var_1 = Struct_3(var_0.b.a);
    var var_2 = var_0.a;
    var var_3 = firstLeadingBit(~vec2<i32>(1i, u_input.c));
    return var_0;
}

fn func_4(arg_0: Struct_4) -> Struct_4 {
    global2 = array<bool, 22>();
    var var_0 = _wgslsmith_f_op_f32(round(global1.a.x));
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(min(firstLeadingBit(u_input.b) << (firstLeadingBit(66156u) % 32u), global0[_wgslsmith_index_u32(~u_input.b, 11u)]), _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(63778u, 57112u)), arg_0.a.a.b.xx & ~vec2<u32>(arg_0.a.a.b.x, 1u)), 0u), select(~countOneBits(~arg_0.a.a.b), vec3<u32>(~1u, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(u_input.b, 11u)], 34718u, arg_0.a.a.b.x, arg_0.b.a.b.x), vec4<u32>(arg_0.b.a.b.x, arg_0.b.a.b.x, 1u, u_input.b))) << (arg_0.b.a.b % vec3<u32>(32u)), !vec3<bool>(global2[_wgslsmith_index_u32(1u, 22u)] || true, all(vec4<bool>(global2[_wgslsmith_index_u32(1u, 22u)], true, global2[_wgslsmith_index_u32(39871u, 22u)], false)), true)));
    var var_2 = false;
    var var_3 = select(vec3<bool>(all(!(!vec3<bool>(global2[_wgslsmith_index_u32(10537u, 22u)], arg_0.c, false))), global2[_wgslsmith_index_u32(func_3(48u, vec2<bool>(any(vec4<bool>(true, true, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 11u)], 22u)], false)), true), func_2(arg_0.b.a.b).b.a).x, 22u)], false), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 22u)], all(select(vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 22u)], true, false), vec4<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 11u)], 22u)], arg_0.a.a.c, false, global2[_wgslsmith_index_u32(4294967295u, 22u)]), vec4<bool>(true, true, false, global2[_wgslsmith_index_u32(arg_0.a.a.b.x, 22u)]))) || !arg_0.c, true), func_2(_wgslsmith_mult_vec3_u32(global3[_wgslsmith_index_u32(4294967295u, 24u)] ^ func_2(arg_0.b.a.b).a.a.b, ~vec3<u32>(0u, 4294967295u, 33842u))).b.a.c);
    return func_2(arg_0.b.a.b);
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    global3 = array<vec3<u32>, 24>();
    global1 = Struct_2(vec3<f32>(-476f, _wgslsmith_f_op_f32(round(-970f)), 1282f));
    let var_0 = Struct_2(global1.a);
    global1 = Struct_2(global1.a);
    var var_1 = func_4(func_2(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.b, 72203u), global3[_wgslsmith_index_u32(62543u, 24u)])) ^ vec3<u32>(~1u, ~u_input.b, u_input.b)));
    return func_2(var_1.b.a.b).b.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2147483647i;
    var var_1 = global1.a.x;
    var var_2 = global1.a.x;
    var var_3 = global2[_wgslsmith_index_u32(1u, 22u)] != global2[_wgslsmith_index_u32(1u, 22u)];
    var_1 = -465f;
    let var_4 = Struct_3(func_1(global1.a.yy));
    var var_5 = all(!vec3<bool>(true, global2[_wgslsmith_index_u32(func_2(_wgslsmith_sub_vec3_u32(vec3<u32>(11211u, u_input.b, 1u), vec3<u32>(41642u, u_input.b, u_input.b))).a.a.b.x, 22u)], _wgslsmith_f_op_f32(ceil(var_4.a.d.x)) >= global1.a.x));
    let var_6 = var_4.a;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_i32(_wgslsmith_add_i32(firstLeadingBit(-2147483647i), i32(-1i) * -6838i), 15498i), u_input.a, 2147483647i, ~_wgslsmith_add_vec4_u32(select(vec4<u32>(4294967295u, u_input.b, global0[_wgslsmith_index_u32(53649u, 11u)], var_4.a.b.x), vec4<u32>(var_6.b.x, u_input.b, global0[_wgslsmith_index_u32(var_4.a.b.x, 11u)], var_4.a.b.x), global2[_wgslsmith_index_u32(93000u, 22u)]) | _wgslsmith_div_vec4_u32(vec4<u32>(var_6.b.x, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 11u)], 11u)], 2710u), vec4<u32>(17722u, var_6.b.x, 62930u, u_input.b)), _wgslsmith_add_vec4_u32(vec4<u32>(var_6.b.x, 4294967295u, global0[_wgslsmith_index_u32(1u, 11u)], 52988u) >> (vec4<u32>(28581u, 58323u, global0[_wgslsmith_index_u32(1u, 11u)], 1u) % vec4<u32>(32u)), vec4<u32>(var_4.a.b.x, 4294967295u, 4294967295u, 52097u) ^ vec4<u32>(19806u, 48252u, u_input.b, 709u))));
}

