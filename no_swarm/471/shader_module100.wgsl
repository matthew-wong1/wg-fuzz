struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: Struct_1,
    d: i32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
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

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec4<u32>(4294967295u, 0u, 69510u, 1u), vec3<u32>(1u, 37835u, 1u), 4294967295u, vec2<bool>(true, false)), Struct_1(vec4<u32>(0u, 0u, 4294967295u, 67329u), vec3<u32>(0u, 44123u, 0u), 0u, vec2<bool>(false, false)), Struct_1(vec4<u32>(0u, 2524u, 1u, 1u), vec3<u32>(22241u, 0u, 0u), 1u, vec2<bool>(true, false)), Struct_1(vec4<u32>(18722u, 0u, 6305u, 61761u), vec3<u32>(1u, 1u, 7784u), 918u, vec2<bool>(true, false)), Struct_1(vec4<u32>(29862u, 11663u, 4294967295u, 1u), vec3<u32>(0u, 1u, 22901u), 27643u, vec2<bool>(false, true)), Struct_1(vec4<u32>(26224u, 59029u, 14879u, 37794u), vec3<u32>(42275u, 90700u, 6932u), 1168u, vec2<bool>(true, true)), Struct_1(vec4<u32>(11182u, 1u, 11367u, 1u), vec3<u32>(4294967295u, 11647u, 11758u), 4294967295u, vec2<bool>(false, true)), Struct_1(vec4<u32>(0u, 4294967295u, 32221u, 1u), vec3<u32>(107332u, 70326u, 46742u), 0u, vec2<bool>(false, false)), Struct_1(vec4<u32>(20668u, 4294967295u, 0u, 86472u), vec3<u32>(40496u, 1u, 4294967295u), 1u, vec2<bool>(true, false)), Struct_1(vec4<u32>(0u, 4294967295u, 10053u, 0u), vec3<u32>(50620u, 43214u, 6290u), 0u, vec2<bool>(false, true)), Struct_1(vec4<u32>(0u, 108948u, 0u, 4294967295u), vec3<u32>(11245u, 1u, 0u), 4294967295u, vec2<bool>(true, true)));

var<private> global1: Struct_2;

var<private> global2: array<Struct_1, 24>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = !arg_0.d;
    let var_1 = select(1u >> ((u_input.a.x | (26487u & max(global1.c.b.x, 13354u))) % 32u), firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(0u >> (0u % 32u), 35522u, 1u), ~global1.c.a.xzz)), var_0.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(-global1.e.yxy);
    var var_3 = !vec2<bool>(!(!any(vec3<bool>(global1.c.d.x, false, true))), !arg_0.d.x);
    global0 = array<Struct_1, 11>();
    return global1.e.x;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec3<f32>) -> Struct_2 {
    global2 = array<Struct_1, 24>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x));
    global1 = Struct_2(arg_2.yz | vec2<i32>(-global1.a.x, 0i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(vec4<u32>(1u, 16104u, 44028u, 94742u), global1.c.a.wzy, 255u, vec2<bool>(false, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) * _wgslsmith_f_op_f32(f32(-1f) * -913f)), _wgslsmith_f_op_f32(-var_0), global1.e.x)), Struct_1(vec4<u32>(_wgslsmith_clamp_u32(global1.c.b.x, u_input.a.x, reverseBits(4294967295u)), 82472u, arg_1.c, max(reverseBits(0u), _wgslsmith_div_u32(0u, 4294967295u))), _wgslsmith_mult_vec3_u32(global1.c.a.xzx, _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(global1.c.a.wwy, vec3<u32>(4294967295u, u_input.a.x, 0u), vec3<u32>(u_input.a.x, 1u, 22527u)), _wgslsmith_mod_vec3_u32(arg_1.a.xyy, arg_1.a.yyy))), _wgslsmith_dot_vec3_u32(~vec3<u32>(global1.c.c, 4294967295u, 73014u), ~_wgslsmith_div_vec3_u32(vec3<u32>(20741u, global1.c.a.x, u_input.a.x), global1.c.a.wxw)), select(vec2<bool>(global1.c.a.x > 19704u, select(arg_0.x, arg_1.d.x, arg_1.d.x)), select(select(global1.c.d, arg_1.d, arg_1.d.x), vec2<bool>(true, true), true), !(!global1.c.d.x))), _wgslsmith_mod_i32(-global1.a.x, -594i), global1.e);
    global0 = array<Struct_1, 11>();
    let var_1 = Struct_1(vec4<u32>(30844u, abs(1u >> (0u % 32u)), firstTrailingBit(1u), arg_1.c), reverseBits(firstTrailingBit(arg_1.a.zyy)), 40898u, vec2<bool>(global1.c.d.x, true));
    return Struct_2(arg_2.xx, global1.b, var_1, -2147483647i, global1.e);
}

fn func_4(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_2) -> vec3<u32> {
    var var_0 = ~_wgslsmith_add_vec4_i32((~vec4<i32>(arg_2.d, global1.d, 2147483647i, global1.a.x) << (arg_2.c.a % vec4<u32>(32u))) & vec4<i32>(-883i, 1i, -11026i, _wgslsmith_mod_i32(global1.d, 0i)), countOneBits(select(abs(vec4<i32>(0i, arg_2.d, arg_2.a.x, global1.d)), ~vec4<i32>(-62706i, -1i, 2147483647i, arg_2.d), true)));
    let var_1 = _wgslsmith_div_f32(-1007f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(select(1946f, arg_2.e.x, false))))))));
    global0 = array<Struct_1, 11>();
    global2 = array<Struct_1, 24>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.b.x, arg_2.b.x) - var_1);
    return (vec3<u32>(global1.c.c, ~_wgslsmith_dot_vec3_u32(vec3<u32>(global1.c.b.x, 11173u, arg_0.x), vec3<u32>(arg_2.c.c, 4294967295u, arg_0.x)), firstTrailingBit(~4294967295u)) & vec3<u32>((global1.c.c | 0u) & 1u, _wgslsmith_clamp_u32(0u, ~global1.c.a.x, _wgslsmith_mod_u32(68038u, arg_2.c.a.x)), (global1.c.a.x >> (0u % 32u)) << (_wgslsmith_dot_vec2_u32(arg_2.c.a.yy, vec2<u32>(u_input.a.x, 826u)) % 32u))) ^ ~(~func_2(!arg_2.c.d, func_2(vec2<bool>(global1.c.d.x, arg_2.c.d.x), global0[_wgslsmith_index_u32(global1.c.a.x, 11u)], vec4<i32>(arg_1, var_0.x, var_0.x, global1.d), vec3<f32>(global1.e.x, arg_2.e.x, -455f)).c, _wgslsmith_add_vec4_i32(vec4<i32>(-1511i, 28753i, 5361i, global1.d), vec4<i32>(arg_1, 0i, 55421i, global1.a.x)), _wgslsmith_f_op_vec3_f32(arg_2.e.zzw + arg_2.b.wxx)).c.b);
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec4<f32>, arg_3: u32) -> vec2<i32> {
    global1 = Struct_2(select(~countOneBits(select(global1.a, vec2<i32>(global1.d, 25265i), false)), min(vec2<i32>(global1.a.x & global1.d, 13868i), ~(-global1.a)), func_2(select(!vec2<bool>(arg_0.d.x, global1.c.d.x), arg_0.d, select(global1.c.d, vec2<bool>(global1.c.d.x, arg_0.d.x), global1.c.d.x)), global0[_wgslsmith_index_u32(arg_3, 11u)], vec4<i32>(global1.d, 2147483647i, -global1.d, ~0i), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global1.b.yzx, global1.e.xzz) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-567f, global1.b.x, 463f)))).c.d.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, 258f, -2080f, _wgslsmith_div_f32(1539f, _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(arg_3, 11u)])))) - arg_2), Struct_1(~min(arg_0.a, vec4<u32>(11034u, global1.c.b.x, 0u, arg_3)) | ~(global1.c.a | vec4<u32>(1u, arg_1, u_input.a.x, arg_0.c)), (func_2(vec2<bool>(arg_0.d.x, global1.c.d.x), arg_0, vec4<i32>(global1.d, global1.d, global1.d, global1.d), vec3<f32>(-1066f, global1.b.x, 668f)).c.b | global1.c.a.xxy) & global1.c.a.zxw, arg_1 | _wgslsmith_sub_u32(~u_input.a.x, ~global1.c.b.x), !vec2<bool>(any(vec4<bool>(true, true, global1.c.d.x, false)), true)), 1i, arg_2);
    let var_0 = 24301i;
    var var_1 = -1i;
    let var_2 = global1.c;
    let var_3 = func_2(func_2(!func_2(vec2<bool>(arg_0.d.x, false), global2[_wgslsmith_index_u32(2211u, 24u)], abs(vec4<i32>(16828i, 1i, global1.a.x, -35084i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, arg_2.x, 1000f))).c.d, func_2(vec2<bool>(global1.c.d.x, var_2.d.x), func_2(vec2<bool>(arg_0.d.x, var_2.d.x), arg_0, -vec4<i32>(var_0, 0i, -2147483647i, var_0), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(309f, arg_2.x, arg_2.x), arg_2.zyx))).c, _wgslsmith_sub_vec4_i32(vec4<i32>(global1.a.x, global1.d, -38177i, var_0), vec4<i32>(global1.a.x, var_0, -2147483647i, 30853i)) ^ abs(vec4<i32>(var_0, -1i, -7626i, global1.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, -569f, global1.e.x)))).c, ~min(-vec4<i32>(24015i, 1i, global1.d, global1.a.x), vec4<i32>(var_0, 1i, -1i, -13803i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global1.e.yzy)))).c.d, func_2(vec2<bool>(true, true), Struct_1(firstLeadingBit(var_2.a), ~arg_0.a.wxy & var_2.b, var_2.b.x, vec2<bool>(false, 2147483647i != global1.d)), vec4<i32>(var_0, 0i, var_0 >> (1u % 32u), _wgslsmith_mult_i32(-var_0, var_0)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.ywy) - global1.e.yww)))).c, vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.d, -48779i, global1.d, var_0), vec4<i32>(global1.d, -23164i, var_0, -2147483647i)), min(global1.d, global1.a.x)), ~firstTrailingBit(-2147483647i), 29696i, ~global1.a.x) << (~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 0u, 28958u, 0u) ^ arg_0.a, arg_0.a) % vec4<u32>(32u)), global1.b.xxx);
    return countOneBits(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0, var_3.a.x, global1.d), vec3<i32>(-2147483647i, var_0, var_3.a.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_3.d, var_3.d), global1.a)), _wgslsmith_mult_vec2_i32(vec2<i32>(-27631i, 0i), vec2<i32>(global1.d, var_3.a.x)) | var_3.a), abs(-21555i)));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: u32, arg_3: vec4<u32>) -> u32 {
    var var_0 = Struct_2(func_5(Struct_1(reverseBits(abs(vec4<u32>(arg_2, arg_1.c.a.x, arg_1.c.b.x, global1.c.a.x))), func_4(~vec3<u32>(4294967295u, u_input.a.x, 36126u), 1i, func_2(vec2<bool>(true, true), Struct_1(global1.c.a, vec3<u32>(1u, arg_0, u_input.a.x), u_input.a.x, vec2<bool>(false, false)), vec4<i32>(0i, global1.a.x, global1.d, global1.a.x), vec3<f32>(arg_1.b.x, arg_1.b.x, -365f))), abs(1u << (0u % 32u)), select(vec2<bool>(global1.c.d.x, global1.c.d.x), !global1.c.d, all(vec4<bool>(arg_1.c.d.x, global1.c.d.x, false, global1.c.d.x)))), func_2(!arg_1.c.d, global1.c, vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.a.x, -13479i, 103981i, global1.a.x), vec4<i32>(-3560i, arg_1.a.x, -1i, arg_1.d)), _wgslsmith_mult_i32(arg_1.d, arg_1.a.x), global1.a.x, max(global1.a.x, global1.a.x)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_1.e.zxw), _wgslsmith_f_op_vec3_f32(vec3<f32>(1483f, 585f, -886f) - vec3<f32>(1108f, 539f, global1.b.x))))).c.b.x, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.e.x, arg_1.e.x, arg_1.e.x, -729f) + vec4<f32>(arg_1.b.x, 1079f, -343f, 770f)), _wgslsmith_f_op_vec4_f32(max(global1.e, _wgslsmith_f_op_vec4_f32(-arg_1.e))))), _wgslsmith_clamp_u32(arg_2, ~_wgslsmith_sub_u32(arg_3.x, arg_1.c.b.x), arg_1.c.c)), vec4<f32>(_wgslsmith_f_op_f32(global1.e.x * 580f), arg_1.b.x, _wgslsmith_f_op_f32(global1.b.x * _wgslsmith_f_op_f32(-global1.b.x)), _wgslsmith_f_op_f32(round(-294f))), Struct_1(~(~vec4<u32>(4294967295u, 25543u, arg_2, arg_1.c.c)), _wgslsmith_div_vec3_u32(global1.c.b, arg_1.c.b), ~_wgslsmith_clamp_u32(u_input.a.x, 27722u, 3480u) << (~u_input.a.x % 32u), vec2<bool>(all(select(vec4<bool>(arg_1.c.d.x, false, true, global1.c.d.x), vec4<bool>(arg_1.c.d.x, true, arg_1.c.d.x, arg_1.c.d.x), false)), !(false & global1.c.d.x))), -2147483647i, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1491f, _wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(-876f + arg_1.b.x), arg_1.e.x) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), 1222f, global1.e.x, -1738f), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1082f), global1.e.x, _wgslsmith_f_op_f32(f32(-1f) * -1378f), _wgslsmith_f_op_f32(step(1785f, arg_1.b.x))))));
    var_0 = func_2(vec2<bool>(!(!global1.c.d.x) & (func_2(arg_1.c.d, global0[_wgslsmith_index_u32(arg_2, 11u)], vec4<i32>(1i, 62130i, global1.a.x, arg_1.a.x), vec3<f32>(var_0.e.x, arg_1.e.x, global1.b.x)).c.d.x == true), false), func_2(arg_1.c.d, var_0.c, _wgslsmith_div_vec4_i32(~vec4<i32>(arg_1.d, var_0.a.x, var_0.d, 2147483647i) | (vec4<i32>(var_0.d, var_0.a.x, var_0.d, arg_1.a.x) & vec4<i32>(-52375i, -2147483647i, -2147483647i, 1i)), abs(vec4<i32>(arg_1.a.x, 2147483647i, global1.d, 0i))), _wgslsmith_f_op_vec3_f32(arg_1.b.zxy + vec3<f32>(1023f, _wgslsmith_f_op_f32(abs(arg_1.b.x)), _wgslsmith_f_op_f32(floor(arg_1.b.x))))).c, vec4<i32>(-2147483647i, -(~(arg_1.d & -21972i)), i32(-1i) * -(~arg_1.d), (-1i >> (_wgslsmith_mod_u32(1u, arg_1.c.b.x) % 32u)) << (~71025u % 32u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-460f, -408f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2374f - var_0.e.x) - -1058f)) * _wgslsmith_f_op_vec3_f32(-global1.e.xzz)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(298f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -373f), 503f))))), _wgslsmith_f_op_f32(select(global1.b.x, _wgslsmith_f_op_f32(step(global1.e.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(629f, var_0.b.x) * -477f))), arg_1.c.d.x)), _wgslsmith_f_op_f32(-var_0.e.x));
    var_0 = arg_1;
    let var_2 = arg_1;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec3<bool>(global1.c.d.x, global1.c.d.x, true));
    global2 = array<Struct_1, 24>();
    var var_1 = ~(~(~vec4<u32>(~1u, 4294967295u, func_1(global1.c.b.x, Struct_2(vec2<i32>(0i, 60137i), global1.b, Struct_1(global1.c.a, global1.c.a.xyx, global1.c.a.x, global1.c.d), global1.a.x, global1.e), u_input.a.x, vec4<u32>(1u, 4294967295u, global1.c.c, u_input.a.x)), _wgslsmith_add_u32(0u, 19658u))));
    var var_2 = ~firstTrailingBit(min(1u, countOneBits(firstTrailingBit(global1.c.a.x))));
    let var_3 = Struct_2(vec2<i32>(1i, reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(25323i, 3318i), _wgslsmith_mod_vec2_i32(global1.a, vec2<i32>(1i, global1.a.x))))), vec4<f32>(553f, _wgslsmith_f_op_f32(-global1.e.x), global1.b.x, global1.b.x), global0[_wgslsmith_index_u32(var_1.x & (~97774u ^ global1.c.c), 11u)], global1.d, vec4<f32>(-994f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) + _wgslsmith_f_op_f32(trunc(global1.e.x))))), -1240f, global1.b.x));
    var var_4 = var_3.e.x;
    var_2 = ~var_1.x;
    let var_5 = var_3.c;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, (firstLeadingBit(-vec4<i32>(64262i, var_3.d, -1i, 44049i)) | vec4<i32>(var_3.a.x, 2147483647i, min(-23783i, -36894i), -66998i)) | vec4<i32>(-23785i, ~min(-9374i, var_3.a.x), 44928i, abs(17656i)));
}

