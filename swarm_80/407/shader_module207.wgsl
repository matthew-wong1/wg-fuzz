struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21>;

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(0u), Struct_1(75058u), Struct_1(29200u), Struct_1(1944u), Struct_1(0u), Struct_1(43556u), Struct_1(1u), Struct_1(4294967295u), Struct_1(17832u), Struct_1(31998u), Struct_1(42903u), Struct_1(25242u), Struct_1(4294967295u), Struct_1(45762u), Struct_1(46107u), Struct_1(9145u), Struct_1(0u), Struct_1(72880u), Struct_1(101884u), Struct_1(0u), Struct_1(1u), Struct_1(14362u), Struct_1(1u), Struct_1(0u), Struct_1(0u), Struct_1(1u), Struct_1(1u), Struct_1(0u));

var<private> global2: Struct_1 = Struct_1(1u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(global2.a, 28u)];
    global1 = array<Struct_1, 28>();
    var var_1 = global1[_wgslsmith_index_u32(firstLeadingBit(min(u_input.c.x, ~4294967295u)), 28u)];
    var_0 = global1[_wgslsmith_index_u32(4294967295u, 28u)];
    global2 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_1.a, 6109u), 28u)];
    return Struct_1(14339u >> (~(~u_input.c.x) % 32u));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> u32 {
    var var_0 = func_2();
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-580f, -2134f) + vec2<f32>(arg_0, arg_0)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -756f))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_div_f32(-1000f, arg_0)) * arg_0), arg_0));
    var var_2 = vec3<bool>(true, true, true);
    var var_3 = _wgslsmith_f_op_f32(-var_1.x);
    let var_4 = global2.a;
    return ~_wgslsmith_sub_u32(reverseBits(countOneBits(u_input.c.x)), select(~countOneBits(var_0.a), select(~1u, _wgslsmith_clamp_u32(1u, arg_2, 1u), any(vec4<bool>(false, var_2.x, var_2.x, false))), true));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(2132f, _wgslsmith_f_op_f32(f32(-1f) * -2538f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-351f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(542f))))));
    global1 = array<Struct_1, 28>();
    var var_1 = arg_3;
    let var_2 = Struct_1(func_2().a);
    let var_3 = vec4<i32>(~(global0[_wgslsmith_index_u32(arg_1.a, 21u)] ^ -firstLeadingBit(u_input.b.x)), ~(-global0[_wgslsmith_index_u32(global2.a, 21u)]), u_input.a.x, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~min(69548u, firstTrailingBit(4121u)), arg_2.a & arg_1.a), 21u)]);
    return ~_wgslsmith_sub_i32(var_3.x << (0u % 32u), 32858i);
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(arg_0.a, 28u)];
    let var_1 = countOneBits(abs(abs(abs(abs(vec4<u32>(arg_0.a, var_0.a, 1u, arg_0.a))))));
    global2 = arg_0;
    global2 = arg_0;
    global0 = array<i32, 21>();
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> StorageBuffer {
    global1 = array<Struct_1, 28>();
    var var_0 = func_5(arg_0, ~_wgslsmith_mult_i32(func_4(any(vec4<bool>(false, true, false, false)), func_2(), global1[_wgslsmith_index_u32(func_3(arg_2.x, Struct_1(19459u), 32246u), 28u)], select(vec2<bool>(true, true), vec2<bool>(false, true), false)), countOneBits(global0[_wgslsmith_index_u32(abs(51829u), 21u)])), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, arg_2.x, arg_2.x) + vec3<f32>(arg_2.x, arg_2.x, arg_2.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, arg_2.x, 322f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, arg_2.x, arg_2.x)), vec3<f32>(-196f, arg_2.x, arg_2.x)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(-374f, -1000f), _wgslsmith_f_op_f32(abs(1260f)), _wgslsmith_f_op_f32(abs(-1223f))))))), global1[_wgslsmith_index_u32(func_2().a, 28u)]);
    let var_1 = !select(select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, true)), true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false))), select(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true)), vec2<bool>(true, true));
    var_0 = func_2();
    global2 = func_5(arg_0, 38193i, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1086f, 973f, arg_2.x)))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(2301f, 886f, -1042f), vec3<f32>(881f, 580f, -239f)))))), func_5(Struct_1(_wgslsmith_mod_u32(global2.a, arg_1.a) ^ select(4294967295u, 1u, var_1.x)), reverseBits(u_input.b.x), vec3<f32>(1f, arg_2.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2.x + arg_2.x), _wgslsmith_f_op_f32(ceil(1144f))))), Struct_1(~_wgslsmith_mult_u32(0u, arg_1.a))));
    return StorageBuffer(reverseBits(~(-2147483647i)), ~(~u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~_wgslsmith_mult_u32(global2.a, global2.a));
    global1 = array<Struct_1, 28>();
    var var_1 = ~vec2<u32>(~u_input.c.x, ~(~23371u) & u_input.c.x);
    global2 = Struct_1(var_1.x);
    var_1 = ~(~_wgslsmith_mult_vec2_u32(~u_input.c, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, var_1.x), vec2<u32>(var_1.x, global2.a), vec2<u32>(u_input.c.x, var_1.x))));
    let x = u_input.a;
    s_output = func_1(Struct_1(var_1.x), Struct_1(u_input.c.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1236f, -1433f) - vec2<f32>(-472f, -1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(455f, 1093f) - vec2<f32>(1143f, 1000f)), false)) + vec2<f32>(_wgslsmith_f_op_f32(-489f + -770f), _wgslsmith_f_op_f32(select(-1737f, 137f, true)))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1523f, 981f) + vec2<f32>(1032f, 253f)))))));
}

