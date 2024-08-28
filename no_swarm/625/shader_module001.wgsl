struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(703f, -946f);

var<private> global1: u32;

var<private> global2: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec3<f32>(1381f, 492f, 564f), vec2<bool>(true, false), -915f), Struct_1(vec3<f32>(-821f, 1777f, -1569f), vec2<bool>(true, false), -251f), Struct_1(vec3<f32>(-1616f, 172f, 477f), vec2<bool>(false, true), -697f), Struct_1(vec3<f32>(-763f, 772f, -480f), vec2<bool>(true, false), 425f), Struct_1(vec3<f32>(1777f, -1727f, -819f), vec2<bool>(true, true), -179f), Struct_1(vec3<f32>(-609f, -1830f, 727f), vec2<bool>(true, false), 194f), Struct_1(vec3<f32>(-2323f, -1536f, -831f), vec2<bool>(true, true), 608f), Struct_1(vec3<f32>(-415f, 645f, -485f), vec2<bool>(false, false), 1070f), Struct_1(vec3<f32>(-468f, 737f, -1479f), vec2<bool>(true, false), -2118f), Struct_1(vec3<f32>(-660f, -724f, -805f), vec2<bool>(false, true), -399f), Struct_1(vec3<f32>(-1103f, 1773f, -1742f), vec2<bool>(true, true), -346f));

var<private> global3: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = 1u;
    var var_1 = arg_3.c;
    let var_2 = Struct_2(any(vec4<bool>(arg_3.b.x, arg_3.b.x, any(!vec3<bool>(false, true, arg_3.b.x)), -1i > _wgslsmith_div_i32(-30817i, u_input.b))), -abs(-(~vec2<i32>(-19579i, u_input.b))));
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1000f, arg_0), _wgslsmith_f_op_f32(-arg_0)))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(global3.a.x)), 278f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1754f))))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, arg_3.a.x));
    return ~firstTrailingBit(~min(vec4<i32>(0i, 1009i, var_2.b.x, u_input.b), vec4<i32>(0i, 47929i, u_input.b, var_2.b.x)) ^ firstTrailingBit(select(vec4<i32>(var_2.b.x, -54505i, 11179i, u_input.b), vec4<i32>(-1i, var_2.b.x, var_2.b.x, var_2.b.x), false)));
}

fn func_2() -> vec2<bool> {
    var var_0 = ~_wgslsmith_clamp_vec4_i32(-(-vec4<i32>(-2147483647i, 6270i, u_input.b, u_input.b) ^ abs(vec4<i32>(-1i, 79476i, 2147483647i, u_input.b))), ~firstLeadingBit(min(vec4<i32>(2262i, 19422i, u_input.b, -2147483647i), vec4<i32>(0i, u_input.b, u_input.b, -34164i))), _wgslsmith_add_vec4_i32(abs(func_3(global0.x, global2[_wgslsmith_index_u32(u_input.a, 11u)], global3.a.zx, global2[_wgslsmith_index_u32(u_input.a, 11u)])), _wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.b, u_input.b, u_input.b, -2147483647i), firstLeadingBit(vec4<i32>(47226i, u_input.b, 0i, 2147483647i)))));
    var_0 = firstLeadingBit(-(-(vec4<i32>(-35470i, 2147483647i, u_input.b, -2147483647i) & vec4<i32>(34982i, 25002i, var_0.x, var_0.x)) & max(~vec4<i32>(u_input.b, var_0.x, -32180i, var_0.x), -vec4<i32>(var_0.x, 26916i, var_0.x, var_0.x))));
    var_0 = select((~(vec4<i32>(-25074i, var_0.x, -5219i, var_0.x) ^ vec4<i32>(var_0.x, 43138i, -22969i, u_input.b)) << (~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, 0u), vec4<u32>(50977u, u_input.a, 4294967295u, 0u)) % vec4<u32>(32u))) << (vec4<u32>(13232u, ~4294967295u, u_input.a, ~92707u) % vec4<u32>(32u)), ~_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(1i, var_0.x, u_input.b, u_input.b)), ~vec4<i32>(42961i, u_input.b, -1i, 0i)) ^ max(vec4<i32>(-u_input.b, max(var_0.x, var_0.x), abs(u_input.b), u_input.b | var_0.x), abs(-vec4<i32>(u_input.b, 0i, u_input.b, u_input.b))), vec4<bool>(_wgslsmith_f_op_f32(trunc(global3.a.x)) != global3.c, false, false, !global3.b.x));
    var var_1 = select(select(vec2<bool>(any(select(vec4<bool>(false, global3.b.x, false, true), vec4<bool>(global3.b.x, global3.b.x, false, global3.b.x), true)), 47051u > u_input.a), vec2<bool>(any(!vec3<bool>(global3.b.x, global3.b.x, true)), select(true, any(vec4<bool>(global3.b.x, false, global3.b.x, global3.b.x)), global3.b.x || true)), all(select(vec4<bool>(false, true, false, global3.b.x), vec4<bool>(global3.b.x, global3.b.x, true, true), !vec4<bool>(global3.b.x, false, false, global3.b.x)))), vec2<bool>(true, all(vec2<bool>(global3.b.x, true)) && true), global3.b);
    var_0 = vec4<i32>(-1i) * -((reverseBits(vec4<i32>(var_0.x, u_input.b, -2147483647i, u_input.b)) & func_3(-1441f, Struct_1(global3.a, vec2<bool>(var_1.x, global3.b.x), global3.a.x), vec2<f32>(global3.a.x, global3.a.x), global2[_wgslsmith_index_u32(94552u, 11u)])) ^ vec4<i32>(min(var_0.x, var_0.x), u_input.b, _wgslsmith_sub_i32(var_0.x, var_0.x), 14354i >> (0u % 32u)));
    return select(!global3.b, select(select(select(vec2<bool>(var_1.x, global3.b.x), global3.b, global3.b), select(select(vec2<bool>(true, true), global3.b, true), select(vec2<bool>(global3.b.x, true), vec2<bool>(global3.b.x, var_1.x), global3.b.x), true), vec2<bool>(u_input.a > u_input.a, var_1.x)), !vec2<bool>(global3.b.x | false, !var_1.x), select(global3.b, select(!global3.b, select(vec2<bool>(false, false), global3.b, global3.b), select(global3.b, global3.b, false)), vec2<bool>(true, global3.b.x))), select(global3.b, global3.b, all(!vec4<bool>(false, var_1.x, var_1.x, var_1.x)) || var_1.x));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_2) -> u32 {
    var var_0 = vec3<u32>(u_input.a, u_input.a & ~arg_0.x, 4294967295u);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -405f);
    let var_2 = select(global3.b, select(global3.b, func_2(), false), vec2<bool>(_wgslsmith_f_op_f32(global3.c * _wgslsmith_f_op_f32(global0.x - global3.c)) >= global0.x, arg_1.b.x > 25744i));
    global2 = array<Struct_1, 11>();
    global0 = global3.a.yz;
    return ~(~4294967295u);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec2<u32>(u_input.a, 63819u);
    var var_1 = ~_wgslsmith_sub_vec2_i32(countOneBits(-firstTrailingBit(vec2<i32>(0i, u_input.b))), min(vec2<i32>(-1i, u_input.b), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(4955i, u_input.b))) | vec2<i32>(u_input.b, u_input.b));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(392f)), _wgslsmith_f_op_f32(-arg_2.c)) - _wgslsmith_f_op_f32(1057f * -570f)))));
    var var_3 = !(!vec3<bool>(arg_0.b.x, func_2().x, all(global3.b)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.a.zz;
    global1 = u_input.a;
    global3 = func_4(Struct_1(global3.a, vec2<bool>(true & any(vec2<bool>(true, global3.b.x)), all(vec4<bool>(true, true, true, true))), var_0.x), vec3<u32>(~1u, ~(~u_input.a), u_input.a) | vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(u_input.a, 60070u, 58117u)), select(0u, u_input.a, global3.b.x) >> (func_1(vec3<u32>(4294967295u, u_input.a, u_input.a), Struct_2(global3.b.x, vec2<i32>(-2147483647i, 1i))) % 32u), min(_wgslsmith_mult_u32(1u, 1u), 33216u >> (1u % 32u))), Struct_1(vec3<f32>(var_0.x, -1000f, _wgslsmith_f_op_f32(global3.a.x - -785f)), select(vec2<bool>(global3.b.x & true, false), select(global3.b, !global3.b, vec2<bool>(true, global3.b.x)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(var_0.x - -1000f))))));
    global2 = array<Struct_1, 11>();
    var var_1 = vec3<i32>(-1i) * -(~abs(vec3<i32>(2147483647i, 1i, 2147483647i) << (vec3<u32>(u_input.a, 4294967295u, u_input.a) % vec3<u32>(32u))));
    global1 = u_input.a;
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(238f - global3.a.x), 569f) + global3.a.yz), global3.a.yy)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, global3.a.x) + vec2<f32>(var_0.x, global3.c)))), vec2<f32>(_wgslsmith_f_op_f32(trunc(-1645f)), _wgslsmith_f_op_f32(1000f * global3.a.x)), global3.b)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global3.a.yy * vec2<f32>(-1106f, var_0.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(global3.a.yz);
}

