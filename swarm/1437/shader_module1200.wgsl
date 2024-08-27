struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: bool,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: f32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32>;

var<private> global1: Struct_4 = Struct_4(Struct_3(Struct_2(vec3<bool>(true, false, true), -224f, Struct_1(i32(-2147483648))), vec3<bool>(true, false, true), false, vec3<u32>(77822u, 4294967295u, 1u)));

var<private> global2: i32 = 19466i;

var<private> global3: vec3<f32>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> f32 {
    let var_0 = vec2<u32>(0u, 45633u);
    global0 = array<u32, 32>();
    var var_1 = select(select(vec2<bool>(true, !global1.a.c), !(!global1.a.b.zy), select(global1.a.a.a.yz, select(global1.a.a.a.xz, !global1.a.a.a.yx, true), select(select(vec2<bool>(global1.a.c, false), global1.a.a.a.zy, global1.a.a.a.x), global1.a.b.xz, global1.a.c))), vec2<bool>(global1.a.c, global1.a.a.a.x), vec2<bool>(false, true));
    let var_2 = Struct_4(global1.a);
    var var_3 = var_2;
    return 882f;
}

fn func_3(arg_0: Struct_4, arg_1: bool) -> vec3<f32> {
    let var_0 = 14171u;
    global0 = array<u32, 32>();
    global0 = array<u32, 32>();
    var var_1 = arg_0.a;
    let var_2 = Struct_3(var_1.a, !select(var_1.b, select(var_1.b, select(vec3<bool>(false, var_1.b.x, arg_0.a.c), arg_0.a.b, var_1.a.a), select(false, arg_0.a.c, true)), true), arg_0.a.b.x, min(_wgslsmith_mult_vec3_u32(~vec3<u32>(global1.a.d.x, 19924u, 55839u) >> (~global1.a.d % vec3<u32>(32u)), min(arg_0.a.d, ~global1.a.d)), _wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(arg_0.a.d.x, var_0, var_0)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(var_1.d.x, 32u)], 0u, 87934u), vec3<u32>(1266u, global0[_wgslsmith_index_u32(4294967295u, 32u)], 0u)) % vec3<u32>(32u)), abs(countOneBits(arg_0.a.d)))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.a.a.b, global3.x, global3.x)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(417f, 412f, 988f), vec3<f32>(1125f, -792f, arg_0.a.a.b)), vec3<f32>(379f, var_1.a.b, -1410f), all(var_1.a.a.xy))))));
}

fn func_1() -> Struct_4 {
    let var_0 = global1.a.a;
    global3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-466f + var_0.b)) - _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1148f - -140f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.x))) + -1031f)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.a.b, global1.a.a.b, -1000f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.a.b, global1.a.a.b, -1000f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(784f, 340f, -1498f) - vec3<f32>(-1332f, -250f, global1.a.a.b)))), _wgslsmith_f_op_vec3_f32(func_3(Struct_4(global1.a), true))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1004f)) + global3.x);
    var var_2 = true;
    let var_3 = !(!var_0.a.x);
    return Struct_4(Struct_3(global1.a.a, select(select(global1.a.b, select(vec3<bool>(true, true, false), vec3<bool>(false, global1.a.a.a.x, var_0.a.x), false), !vec3<bool>(global1.a.a.a.x, false, var_3)), !var_0.a, var_0.a), global1.a.b.x, reverseBits(vec3<u32>(~global1.a.d.x, ~4294967295u, global1.a.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.a;
    var var_1 = var_0.a;
    global0 = array<u32, 32>();
    var var_2 = -(~countOneBits(var_1.c.a));
    global1 = func_1();
    let var_3 = firstLeadingBit(vec3<u32>(max(u_input.d, 25888u), _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 17760u), 32u)] << (_wgslsmith_mod_u32(var_0.d.x, 29332u) % 32u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 90163u), global1.a.d.xz)), ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(11129u, global1.a.d.x, 58744u), var_0.d), min(21728u, 0u), 1u)));
    let var_4 = global1.a.a;
    let var_5 = ~vec2<u32>(min(1u, ~0u), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_3.x ^ 0u, _wgslsmith_mod_u32(global1.a.d.x, global1.a.d.x), var_3.x), 54988u));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(abs(77374u), var_5.x & 19902u, 0u, var_5.x << (59349u % 32u)) >> (min(abs(firstLeadingBit(vec4<u32>(var_3.x, var_5.x, 0u, var_3.x))), reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(45312u, var_5.x, 4294967295u, var_0.d.x), vec4<u32>(global1.a.d.x, global0[_wgslsmith_index_u32(u_input.c, 32u)], 103793u, u_input.d)))) % vec4<u32>(32u)), select(vec3<u32>(64525u, global0[_wgslsmith_index_u32(10128u, 32u)], countOneBits(global0[_wgslsmith_index_u32(abs(var_5.x), 32u)])), ~vec3<u32>(~global1.a.d.x, 3828u, firstLeadingBit(var_5.x)), true), var_1.b, -vec4<i32>(var_0.a.c.a, ~(var_0.a.c.a << (global1.a.d.x % 32u)), -1i, _wgslsmith_div_i32(var_1.c.a, _wgslsmith_div_i32(17287i, u_input.a.x))), 1006f);
}

