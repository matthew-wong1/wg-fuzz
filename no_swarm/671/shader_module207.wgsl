struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(-11749i), Struct_2(-44722i), Struct_2(2436i), Struct_2(72i), Struct_2(i32(-2147483648)), Struct_2(0i), Struct_2(-13975i), Struct_2(-9625i), Struct_2(45953i), Struct_2(1i), Struct_2(884i));

var<private> global2: Struct_2 = Struct_2(1i);

var<private> global3: array<Struct_3, 31>;

var<private> global4: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: f32) -> i32 {
    global2 = Struct_2(global4.b.x);
    global4 = global0.a.a;
    var var_0 = global1[_wgslsmith_index_u32(global0.a.a.a.x, 11u)];
    var var_1 = 0i;
    let var_2 = u_input.b.x;
    return _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.e, 0i | global2.a, -(~global2.a) | var_0.a), -1i, _wgslsmith_mult_i32(2147483647i, countOneBits(0i) ^ select(45379i, 583i, true)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: i32, arg_3: f32) -> vec2<i32> {
    global1 = array<Struct_2, 11>();
    global1 = array<Struct_2, 11>();
    let var_0 = global0.a.a;
    return _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(global2.a, countOneBits(var_0.b.x | -2147483647i), func_3(arg_3 == arg_3, -487f)), -global4.b.x), countOneBits(max(reverseBits(global0.a.a.b), var_0.b)));
}

fn func_1() -> vec2<i32> {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(~(~global0.a.a.a.x), ~max(43632u, u_input.b.x)), vec2<u32>(~((global0.a.a.a.x ^ 1u) ^ ~0u), global4.a.x)), 11u)];
    global4 = global0.a.a;
    var_0 = Struct_2(-17187i);
    var_0 = Struct_2(_wgslsmith_dot_vec4_i32(countOneBits(~u_input.c), countOneBits(vec4<i32>(global2.a, 26139i, 2147483647i, 12099i))) << (abs(~(85391u << (0u % 32u))) % 32u));
    let var_1 = true;
    return func_2(global1[_wgslsmith_index_u32(~(~global4.a.x), 11u)], -select(vec4<i32>(_wgslsmith_div_i32(4612i, global4.b.x), 15972i, i32(-1i) * -1i, u_input.a.x), max(u_input.c, u_input.c) << (_wgslsmith_div_vec4_u32(global0.a.a.a, vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)) % vec4<u32>(32u)), vec4<bool>(all(vec3<bool>(var_1, false, true)), !var_1, false, var_1 | true)), -(~countOneBits(abs(var_0.a))), 888f);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    global4 = Struct_1(vec4<u32>(4294967295u, global4.a.x, ~(53728u >> (u_input.b.x % 32u)) | ~(~arg_2.a.x), _wgslsmith_div_u32(_wgslsmith_add_u32(max(global4.a.x, global0.a.a.a.x), firstLeadingBit(arg_0.a.x)), ~arg_0.a.x & u_input.b.x)), vec2<i32>(arg_0.b.x, -16478i));
    global0 = Struct_4(Struct_3(arg_2, 13607i));
    global4 = Struct_1(global0.a.a.a, arg_0.b);
    var var_0 = Struct_4(Struct_3(global0.a.a, 2147483647i));
    var var_1 = Struct_2(-1i);
    return abs(_wgslsmith_mod_i32((max(38404i, global4.b.x) << ((16998u << (u_input.b.x % 32u)) % 32u)) >> (var_0.a.a.a.x % 32u), 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_4(Struct_1(~global4.a, ~func_1()), Struct_2(~6200i), global0.a.a));
    var var_1 = u_input.c;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1896f, -1000f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-516f + -465f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1889f, _wgslsmith_f_op_f32(max(-1153f, 706f)), all(vec4<bool>(false, false, false, false)))))));
    var var_3 = vec2<bool>(!(!select(global4.b.x >= 1i, any(vec4<bool>(true, true, true, true)), false)), true);
    var var_4 = 1013f == _wgslsmith_f_op_f32(869f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2424f - _wgslsmith_f_op_f32(trunc(-620f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(483f + -266f) + _wgslsmith_f_op_f32(step(218f, 1238f)))));
    let var_5 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1109f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(491f + _wgslsmith_f_op_f32(floor(-111f)))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-2048f)), _wgslsmith_f_op_f32(-677f + 734f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1488f)))))));
    let var_6 = vec2<u32>(global4.a.x, 65632u);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x, vec2<i32>(select(1990i, i32(-1i) * -var_0.a, var_3.x), -u_input.d.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_5.x))) - var_5.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-559f, -2295f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1230f, 325f)))))), _wgslsmith_mult_vec2_i32(u_input.a.zy, vec2<i32>(global0.a.b, ~(u_input.c.x | 2147483647i))), 243f);
}

