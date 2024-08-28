struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(12600u, 81347u);

var<private> global1: vec2<i32> = vec2<i32>(0i, 1i);

var<private> global2: array<u32, 18> = array<u32, 18>(4294967295u, 34828u, 1926u, 39280u, 93116u, 0u, 74041u, 4294967295u, 1u, 1u, 8541u, 127846u, 6900u, 1u, 1u, 4294967295u, 0u, 1u);

var<private> global3: array<vec2<f32>, 16> = array<vec2<f32>, 16>(vec2<f32>(-695f, -1661f), vec2<f32>(140f, 531f), vec2<f32>(-1636f, -783f), vec2<f32>(-247f, 1148f), vec2<f32>(271f, -1703f), vec2<f32>(-531f, -119f), vec2<f32>(859f, -2516f), vec2<f32>(-1043f, -127f), vec2<f32>(-853f, -708f), vec2<f32>(-1613f, 951f), vec2<f32>(224f, -931f), vec2<f32>(-330f, -1477f), vec2<f32>(382f, -2584f), vec2<f32>(288f, 229f), vec2<f32>(-188f, 256f), vec2<f32>(-293f, -1147f));

var<private> global4: Struct_1 = Struct_1(vec2<bool>(false, false), vec2<f32>(-1357f, 372f), vec2<i32>(-1i, 1i));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-204f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.b.x, -1552f)) * _wgslsmith_f_op_f32(min(-396f, global4.b.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global4.b.x, global4.b.x, global4.b.x), vec3<f32>(arg_2.b.b.x, arg_2.c.b.x, global4.b.x)))))))));
    let var_1 = global4.a.x;
    global2 = array<u32, 18>();
    global2 = array<u32, 18>();
    var var_2 = arg_0;
    return select(!vec2<bool>(select(true, arg_2.c.a.x, false), arg_2.c.a.x && true), select(vec2<bool>(true, true), vec2<bool>(!select(false, var_2.a.x, var_2.a.x), false), !var_2.a.x), global4.a);
}

fn func_2(arg_0: u32) -> i32 {
    var var_0 = Struct_2(_wgslsmith_clamp_u32(0u, global2[_wgslsmith_index_u32(global0.x, 18u)], 48358u), Struct_1(!func_3(Struct_1(global4.a, global3[_wgslsmith_index_u32(global0.x, 16u)], vec2<i32>(-1i, 22046i)), -1i, Struct_2(0u, Struct_1(global4.a, global3[_wgslsmith_index_u32(17997u, 16u)], u_input.a.zz), Struct_1(global4.a, vec2<f32>(-928f, global4.b.x), vec2<i32>(2147483647i, global4.c.x)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -575f)), _wgslsmith_f_op_f32(f32(-1f) * -249f)), vec2<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(global4.c.x, global4.c.x, u_input.a.x, global4.c.x), vec4<i32>(-27333i, 5367i, 10279i, -36565i)), u_input.a.x)), Struct_1(!(!select(global4.a, vec2<bool>(false, false), false)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-378f, global4.b.x) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global4.b.x, global4.b.x) + global4.b)), global4.b), ~vec2<i32>(u_input.a.x, u_input.a.x)));
    var var_1 = ~select(vec4<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(39116u, 0u, global0.x), vec3<u32>(28758u, u_input.b, var_0.a)), 18636u, global0.x), vec4<u32>(11357u, 19418u, min(abs(u_input.c), var_0.a), _wgslsmith_add_u32(arg_0, ~86858u)), func_3(Struct_1(vec2<bool>(false, false), _wgslsmith_f_op_vec2_f32(select(global4.b, global3[_wgslsmith_index_u32(u_input.b, 16u)], var_0.c.a)), _wgslsmith_div_vec2_i32(global4.c, vec2<i32>(31355i, u_input.a.x))), _wgslsmith_clamp_i32(var_0.c.c.x | 0i, -global4.c.x, ~(-2147483647i)), Struct_2(_wgslsmith_sub_u32(48455u, 1u), Struct_1(global4.a, vec2<f32>(-1282f, var_0.c.b.x), vec2<i32>(-43751i, global4.c.x)), var_0.c)).x);
    global1 = vec2<i32>(firstLeadingBit((firstTrailingBit(-1i) << (reverseBits(global2[_wgslsmith_index_u32(1u, 18u)]) % 32u)) & ((var_0.b.c.x | u_input.a.x) << (firstLeadingBit(var_0.a) % 32u))), global1.x);
    let var_2 = -1184f;
    var var_3 = Struct_2(arg_0, var_0.c, Struct_1(var_0.c.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b.b)), -_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(var_0.b.c, var_0.b.c, vec2<i32>(global1.x, global1.x)), vec2<i32>(1i, global1.x))));
    return 13242i;
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: u32, arg_3: vec3<f32>) -> vec2<u32> {
    global1 = -vec2<i32>(~countOneBits(global4.c.x), u_input.a.x);
    var var_0 = !select(vec3<bool>(false, 1i <= func_2(arg_2), !(!global4.a.x)), !vec3<bool>(any(vec4<bool>(true, false, false, false)), true, false == global4.a.x), select(select(select(vec3<bool>(global4.a.x, global4.a.x, false), vec3<bool>(false, false, global4.a.x), false), select(vec3<bool>(false, false, true), vec3<bool>(global4.a.x, global4.a.x, false), false), select(vec3<bool>(global4.a.x, global4.a.x, global4.a.x), vec3<bool>(global4.a.x, true, global4.a.x), global4.a.x)), select(select(vec3<bool>(global4.a.x, global4.a.x, true), vec3<bool>(false, global4.a.x, false), global4.a.x), select(vec3<bool>(true, global4.a.x, global4.a.x), vec3<bool>(false, true, false), true), !vec3<bool>(global4.a.x, false, global4.a.x)), !(!vec3<bool>(false, global4.a.x, global4.a.x))));
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) + -488f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(f32(-1f) * -753f), any(var_0.zx))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-697f - -1271f) - _wgslsmith_f_op_f32(-arg_1))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(arg_1, arg_1)), _wgslsmith_f_op_f32(-global4.b.x), -678f, -974f) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1200f, arg_3.x, arg_3.x, global4.b.x), vec4<f32>(arg_3.x, global4.b.x, 1530f, arg_3.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global4.b.x, arg_3.x, -136f, global4.b.x), vec4<f32>(arg_3.x, -218f, -180f, -392f)))))))));
    var var_2 = !vec3<bool>(!any(vec2<bool>(var_0.x, true)), global4.a.x, any(vec2<bool>(true, true)));
    var var_3 = Struct_1(!vec2<bool>(var_2.x, var_2.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(global4.b, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(31838u, 18u)], 16u)], vec2<bool>(var_2.x, var_0.x))))), var_1.zz, true)), vec2<f32>(-1045f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-386f + 1400f)))), vec2<i32>(-22026i, global1.x));
    return ~vec2<u32>(abs(~57737u) | (~global0.x | 1u), ~_wgslsmith_sub_u32(4294967295u, arg_2) << (0u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!global4.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.b.x * -572f)), -594f), u_input.a.zz);
    var_0 = Struct_1(!global4.a, _wgslsmith_div_vec2_f32(var_0.b, vec2<f32>(_wgslsmith_f_op_f32(ceil(-2689f)), var_0.b.x)), var_0.c);
    var var_1 = u_input.a.wzy;
    global1 = select(-(vec2<i32>(-35087i, global4.c.x) | -vec2<i32>(0i, -36972i)) << (_wgslsmith_sub_vec2_u32(func_1(var_1.xz, global4.b.x, global2[_wgslsmith_index_u32(u_input.c, 18u)], vec3<f32>(-503f, global4.b.x, var_0.b.x)) >> (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global0.x, 18u)], u_input.c) & vec2<u32>(u_input.c, u_input.b), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, global0.x), vec2<u32>(1u, 27289u)))) % vec2<u32>(32u)), vec2<i32>((global1.x << (u_input.b % 32u)) >> (~global0.x % 32u), global1.x) << (abs(~(~vec2<u32>(4294967295u, global0.x))) % vec2<u32>(32u)), !var_0.a.x);
    var_1 = select(u_input.a.xyy, u_input.a.wwy, ~u_input.a.x == countOneBits(9510i));
    global2 = array<u32, 18>();
    let var_2 = Struct_1(select(vec2<bool>(_wgslsmith_sub_i32(2147483647i, var_1.x) < -35389i, true), global4.a, true), vec2<f32>(1f, -1368f), var_1.xz);
    global0 = vec2<u32>(~25318u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(100038u, 4294967295u)), abs(vec2<u32>(global2[_wgslsmith_index_u32(global0.x, 18u)], 1u))), reverseBits(abs(abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 18u)], 18u)]))), 14467u));
    var_0 = Struct_1(!vec2<bool>(true, !any(global4.a)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) + _wgslsmith_f_op_f32(f32(-1f) * -149f))), var_0.b.x), global4.c);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(firstTrailingBit(firstTrailingBit(1i)), 1i, _wgslsmith_sub_i32(-1i | global4.c.x, 16578i), i32(-1i) * -global4.c.x), _wgslsmith_mult_vec2_u32(~((vec2<u32>(global0.x, global0.x) << (vec2<u32>(91279u, u_input.c) % vec2<u32>(32u))) >> (~vec2<u32>(global0.x, 0u) % vec2<u32>(32u))), max(~vec2<u32>(0u, 51417u), abs(max(vec2<u32>(global2[_wgslsmith_index_u32(5744u, 18u)], 0u), vec2<u32>(u_input.c, global2[_wgslsmith_index_u32(0u, 18u)]))))), 1000f);
}

