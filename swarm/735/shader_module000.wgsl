struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<f32>,
    d: vec3<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27> = array<u32, 27>(4294967295u, 1u, 22070u, 58165u, 8548u, 19604u, 8059u, 36543u, 83406u, 5581u, 51097u, 82266u, 20368u, 27u, 31906u, 1u, 49626u, 4294967295u, 0u, 15879u, 1u, 1u, 75076u, 1u, 4294967295u, 4294967295u, 14530u);

var<private> global1: array<Struct_2, 17>;

var<private> global2: array<Struct_3, 2>;

var<private> global3: array<vec4<u32>, 31>;

var<private> global4: u32 = 28732u;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_3 {
    return global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_clamp_u32(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~42279u, 27u)], 27u)], 1678u)), 2u)];
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    let var_0 = Struct_1(~(-(vec4<i32>(-1i) * -vec4<i32>(52283i, 3750i, u_input.b.x, -10908i))), arg_0.a.wx, true, !vec3<bool>(select(arg_0.c, arg_0.d.x, true), true, !arg_0.d.x));
    let var_1 = arg_0.d.x;
    var var_2 = global2[_wgslsmith_index_u32(~(min(reverseBits(abs(61996u)), ~_wgslsmith_div_u32(42266u, u_input.c)) >> (~4294967295u % 32u)), 2u)];
    let var_3 = func_2(arg_0, !arg_0.d);
    global0 = array<u32, 27>();
    return global1[_wgslsmith_index_u32(~reverseBits(0u), 17u)];
}

fn func_3() -> f32 {
    global1 = array<Struct_2, 17>();
    let var_0 = -2147483647i;
    global2 = array<Struct_3, 2>();
    global1 = array<Struct_2, 17>();
    global1 = array<Struct_2, 17>();
    return _wgslsmith_f_op_f32(-1381f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-102f * 1000f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1000f, 267f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-910f)) * _wgslsmith_f_op_f32(f32(-1f) * -2037f)) - 1f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~((0i >> (global0[_wgslsmith_index_u32(u_input.a, 27u)] % 32u)) | 1i));
    global1 = array<Struct_2, 17>();
    global3 = array<vec4<u32>, 31>();
    var var_1 = Struct_1((vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, 1i, -1i, -1i), vec4<i32>(2147483647i, var_0, 2147483647i, var_0))) >> (abs(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(87529u, 27u)] ^ (u_input.a | u_input.c), 31u)]) % vec4<u32>(32u)), firstLeadingBit(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b.xy, u_input.b.yy) >> (~vec2<u32>(0u, 4294967295u) % vec2<u32>(32u)), vec2<i32>(min(u_input.b.x, var_0), _wgslsmith_add_i32(var_0, -2147483647i)))), any(vec2<bool>(true, true)), select(select(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, any(vec4<bool>(false, true, false, false)), true)), vec3<bool>(true, true, all(vec4<bool>(false, true, false, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-108f * -142f), -549f) > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -241f)))));
    let var_2 = select(all(var_1.d) & var_1.c, !(!var_1.d.x), var_1.c);
    let var_3 = func_1(Struct_1(firstLeadingBit((var_1.a | var_1.a) | var_1.a), u_input.b.zy, all(vec4<bool>(!var_1.d.x, var_2, true, true)), select(vec3<bool>(false, true, true), vec3<bool>(select(true, var_2, var_1.d.x), true, false), true)));
    global4 = 33861u;
    var var_4 = -var_0;
    var var_5 = select(vec3<bool>(false, _wgslsmith_f_op_f32(exp2(var_3.a.x)) == _wgslsmith_f_op_f32(func_3()), true), vec3<bool>(true, !any(vec4<bool>(var_2, false, var_1.c, true)) && false, !(~u_input.a > 61850u)), select(select(vec3<bool>(!var_1.c, true, all(vec2<bool>(true, false))), var_3.c.d, all(select(vec4<bool>(true, true, var_1.d.x, var_3.c.d.x), vec4<bool>(var_1.c, var_3.c.d.x, false, var_1.c), var_3.c.d.x))), select(!var_1.d, select(var_3.c.d, func_1(Struct_1(var_1.a, u_input.b.zx, var_1.c, vec3<bool>(var_2, var_1.d.x, true))).c.d, var_3.c.d), false), all(vec4<bool>(var_2 && var_2, all(vec2<bool>(var_2, true)), any(vec2<bool>(false, var_3.c.c)), !var_3.c.c))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1124f, 454f, -1070f, var_3.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(835f, 445f, 144f, var_3.a.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.x, var_3.a.x, 894f, 497f))), var_3.c.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -570f) * _wgslsmith_f_op_f32(f32(-1f) * -606f)) + var_3.a.x), _wgslsmith_div_vec2_f32(var_3.a.yx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1034f)))), vec3<u32>(countOneBits(4294967295u), 0u, _wgslsmith_div_u32(0u >> (global0[_wgslsmith_index_u32(40829u, 27u)] % 32u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 27u)] ^ 4294967295u, 27u)])) ^ countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(65120u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 27u)]), vec3<u32>(89938u, 0u, u_input.c) & vec3<u32>(4294967295u, u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 27u)], 27u)], 27u)], 27u)]))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(var_3.a, var_3.a), var_3.a)));
}

